#include <nitro.h>
#include "include/card_spi.h"
#include "include/card_common.h"

#if defined(SDK_ARM9)

#include <nitro/version_begin.h>
SDK_DEFINE_MIDDLEWARE(cardi_backup_assert, "NINTENDO", "BACKUP");
#include <nitro/version_end.h>
#define SDK_USING_BACKUP() SDK_USING_MIDDLEWARE(cardi_backup_assert)

static void CARDi_RequestStreamCommandCore (CARDiCommon * p) {
    const int req_type = p->req_type;
    const int req_mode = p->req_mode;
    const int retry_count = p->req_retry;
    u32 size = sizeof(p->backup_cache_page_buf);

    SDK_USING_BACKUP();

    if (req_type == CARD_REQ_ERASE_SECTOR_BACKUP) {
        size = CARD_GetBackupSectorSize();
    } else if (req_type == CARD_REQ_ERASE_SUBSECTOR_BACKUP) {
        size = cardi_common.cmd->spec.subsect_size;
    }
    do{
        const u32 len = (size < p->len) ? size : p->len;
        p->cmd->len = len;

        if ((p->flag & CARD_STAT_CANCEL) != 0) {
            p->flag &= ~CARD_STAT_CANCEL;
            p->cmd->result = CARD_RESULT_CANCELED;
            break;
        }
        switch (req_mode) {
        case CARD_REQUEST_MODE_RECV:

            DC_InvalidateRange(p->backup_cache_page_buf, len);
            p->cmd->src = (u32)p->src;
            p->cmd->dst = (u32)p->backup_cache_page_buf;
            break;
        case CARD_REQUEST_MODE_SEND:
        case CARD_REQUEST_MODE_SEND_VERIFY:

            MI_CpuCopy8((const void *)p->src, p->backup_cache_page_buf, len);
            DC_FlushRange(p->backup_cache_page_buf, len);
            DC_WaitWriteBufferEmpty();
            p->cmd->src = (u32)p->backup_cache_page_buf;
            p->cmd->dst = (u32)p->dst;
            break;
        case CARD_REQUEST_MODE_SPECIAL:

            p->cmd->src = (u32)p->src;
            p->cmd->dst = (u32)p->dst;
            break;
        }

        if (!CARDi_Request(p, req_type, retry_count)) {
            break;
        }

        if (req_mode == CARD_REQUEST_MODE_SEND_VERIFY) {
            if (!CARDi_Request(p, CARD_REQ_VERIFY_BACKUP, 1)) {
                break;
            }
        } else if (req_mode == CARD_REQUEST_MODE_RECV) {
            MI_CpuCopy8(p->backup_cache_page_buf, (void *)p->dst, len);
        }
        p->src += len;
        p->dst += len;
        p->len -= len;
    }while (p->len > 0);
    CARDi_EndTask(p, TRUE);
}

static void CARDi_RequestWriteSectorCommandCore (CARDiCommon * p) {
    const u32 sector_size = CARD_GetBackupSectorSize();
    SDK_USING_BACKUP();

    if ((((u32)p->dst | p->len) & (sector_size - 1)) != 0) {
        p->flag &= ~CARD_STAT_CANCEL;
        p->cmd->result = CARD_RESULT_INVALID_PARAM;
    } else {
        for (; p->len > 0; p->len -= sector_size) {
            u32 len = sector_size;

            if ((p->flag & CARD_STAT_CANCEL) != 0) {
                p->flag &= ~CARD_STAT_CANCEL;
                p->cmd->result = CARD_RESULT_CANCELED;
                break;
            }

            p->cmd->dst = (u32)p->dst;
            p->cmd->len = len;
            if (!CARDi_Request(p, CARD_REQ_ERASE_SECTOR_BACKUP, 1)) {
                break;
            }
            while (len > 0) {
                const u32 page = sizeof(p->backup_cache_page_buf);

                if ((p->flag & CARD_STAT_CANCEL) != 0) {
                    p->flag &= ~CARD_STAT_CANCEL;
                    p->cmd->result = CARD_RESULT_CANCELED;
                    break;
                }

                MI_CpuCopy8((const void *)p->src, p->backup_cache_page_buf, page);
                DC_FlushRange(p->backup_cache_page_buf, page);
                DC_WaitWriteBufferEmpty();
                p->cmd->src = (u32)p->backup_cache_page_buf;
                p->cmd->dst = (u32)p->dst;
                p->cmd->len = page;
                if (!CARDi_Request(p, CARD_REQ_PROGRAM_BACKUP, CARD_RETRY_COUNT_MAX)) {
                    break;
                }

                if (p->req_mode == CARD_REQUEST_MODE_SEND_VERIFY) {
                    if (!CARDi_Request(p, CARD_REQ_VERIFY_BACKUP, 1)) {
                        break;
                    }
                }
                p->src += page;
                p->dst += page;
                len -= page;
            }
        }
    }
    CARDi_EndTask(p, TRUE);
}

BOOL CARDi_RequestStreamCommand (u32 src, u32 dst, u32 len, MIDmaCallback callback, void * arg, BOOL is_async, CARDRequest req_type, int req_retry, CARDRequestMode req_mode) {
    CARDiCommon * const p = &cardi_common;

    SDK_USING_BACKUP();

    SDK_ASSERT(CARD_IsAvailable());
    SDK_ASSERT(CARD_GetCurrentBackupType() != CARD_BACKUP_TYPE_NOT_USE);
    SDK_ASSERTMSG(
        CARDi_GetTargetMode() == CARD_TARGET_BACKUP,
        "[CARD] current locking target is not backup."
    );

    CARDi_WaitTask(p, callback, arg);
    p->src = src;
    p->dst = dst;
    p->len = len;
    p->req_type = req_type;
    p->req_retry = req_retry;
    p->req_mode = req_mode;
    if (is_async) {
        CARDi_SetTask(CARDi_RequestStreamCommandCore);
        return TRUE;
    } else {
        cardi_common.cur_th = OS_GetCurrentThread();
        CARDi_RequestStreamCommandCore(p);
        return (p->cmd->result == CARD_RESULT_SUCCESS);
    }
}

int CARDi_AccessStatus (CARDRequest command, u8 value) {
    CARDiCommon * const p = &cardi_common;

    SDK_USING_BACKUP();

    SDK_ASSERT(CARD_IsAvailable());
    SDK_ASSERT(CARD_GetCurrentBackupType() != CARD_BACKUP_TYPE_NOT_USE);
    SDK_ASSERTMSG(
        CARDi_GetTargetMode() == CARD_TARGET_BACKUP,
        "[CARD] current locking target is not backup."
    );

    CARDi_WaitTask(p, NULL, NULL);
    cardi_common.cur_th = OS_GetCurrentThread();
    p->backup_cache_page_buf[0] = value;
    DC_FlushRange(p->backup_cache_page_buf, 1);
    p->cmd->src = (u32)p->backup_cache_page_buf;
    p->cmd->dst = (u32)p->backup_cache_page_buf;
    (void)CARDi_Request(p, command, 1);
    DC_InvalidateRange(p->backup_cache_page_buf, 1);
    CARDi_EndTask(p, TRUE);
    return (p->cmd->result == CARD_RESULT_SUCCESS) ? p->backup_cache_page_buf[0] : -1;
}

BOOL CARDi_RequestWriteSectorCommand (u32 src, u32 dst, u32 len, BOOL verify, MIDmaCallback callback, void * arg, BOOL is_async) {
    CARDiCommon * const p = &cardi_common;

    SDK_USING_BACKUP();

    SDK_ASSERT(CARD_IsAvailable());
    SDK_ASSERT(CARD_GetCurrentBackupType() != CARD_BACKUP_TYPE_NOT_USE);
    SDK_ASSERTMSG(
        CARDi_GetTargetMode() == CARD_TARGET_BACKUP,
        "[CARD] current locking target is not backup."
    );

    CARDi_WaitTask(p, callback, arg);
    p->src = src;
    p->dst = dst;
    p->len = len;
    p->req_mode = verify ? CARD_REQUEST_MODE_SEND_VERIFY : CARD_REQUEST_MODE_SEND;
    if (is_async) {
        CARDi_SetTask(CARDi_RequestWriteSectorCommandCore);
        return TRUE;
    } else {
        cardi_common.cur_th = OS_GetCurrentThread();
        CARDi_RequestWriteSectorCommandCore(p);
        return (p->cmd->result == CARD_RESULT_SUCCESS);
    }
}

CARDBackupType CARD_GetCurrentBackupType (void) {
    SDK_ASSERT(CARD_IsAvailable());

    return cardi_common.cmd->type;
}

u32 CARD_GetBackupTotalSize (void) {
    SDK_ASSERT(CARD_IsAvailable());

    return cardi_common.cmd->spec.total_size;
}

u32 CARD_GetBackupSectorSize (void) {
    SDK_ASSERT(CARD_IsAvailable());

    return cardi_common.cmd->spec.sect_size;
}

u32 CARD_GetBackupPageSize (void) {
    SDK_ASSERT(CARD_IsAvailable());

    return cardi_common.cmd->spec.page_size;
}

BOOL CARD_IdentifyBackup (CARDBackupType type) {
    CARDiCommon * const p = &cardi_common;

    SDK_USING_BACKUP();
    if (type == CARD_BACKUP_TYPE_NOT_USE) {
        OS_TPanic("cannot specify CARD_BACKUP_TYPE_NOT_USE.");
    }

    SDK_ASSERT(CARD_IsAvailable());

    SDK_ASSERTMSG(
        (CARDi_GetTargetMode() == CARD_TARGET_BACKUP),
        "CARD_IdentifyBackup() must be called with CARD locked by CARD_LockBackup()!"
    );

    CARD_CheckEnabled();

    CARDi_WaitTask(p, NULL, NULL);
    CARDi_IdentifyBackupCore(type);
    cardi_common.cur_th = OS_GetCurrentThread();
    (void)CARDi_Request(p, CARD_REQ_IDENTIFY, 1);

    p->cmd->src = 0;
    p->cmd->dst = (u32)p->backup_cache_page_buf;
    p->cmd->len = 1;
    (void)CARDi_Request(p, CARD_REQ_READ_BACKUP, 1);
    CARDi_EndTask(p, TRUE);
    return (p->cmd->result == CARD_RESULT_SUCCESS);
}

BOOL CARD_WaitBackupAsync (void) {
    return CARDi_WaitAsync();
}

BOOL CARD_TryWaitBackupAsync (void) {
    return CARDi_TryWaitAsync();
}

void CARD_CancelBackupAsync (void) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    cardi_common.flag |= CARD_STAT_CANCEL;
    (void)OS_RestoreInterrupts(bak_cpsr);
}

#endif
