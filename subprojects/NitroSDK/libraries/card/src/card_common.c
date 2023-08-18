#include <nitro.h>
#include <nitro/mb.h>

#include "include/card_common.h"
#include "include/card_spi.h"

CARDiCommon cardi_common ATTRIBUTE_ALIGN(32);
static CARDiCommandArg cardi_arg ATTRIBUTE_ALIGN(32);

static u8 cardi_thread_stack[0x400] ATTRIBUTE_ALIGN(4);

static void CARDi_LockResource(CARDiOwner owner, CARDTargetMode target);
static void CARDi_UnlockResource(CARDiOwner owner, CARDTargetMode target);

void CARDi_SetTask (void (* task)(CARDiCommon *))
{
    CARDiCommon * const p = &cardi_common;

    (void)OS_SetThreadPriority(p->thread, p->priority);

    p->cur_th = p->thread;
    p->task_func = task;
    p->flag |= CARD_STAT_TASK;
    OS_WakeupThreadDirect(p->thread);
}

static void CARDi_LockResource (CARDiOwner owner, CARDTargetMode target)
{
    CARDiCommon * const p = &cardi_common;
    OSIntrMode bak_psr = OS_DisableInterrupts();
    if (p->lock_owner == owner) {
        if (p->lock_target != target) {
            OS_TPanic("card-lock : can not reuse same ID for locking without unlocking!");
        }
    } else {
        while (p->lock_owner != OS_LOCK_ID_ERROR) {
            OS_SleepThread(p->lock_queue);
        }
        p->lock_owner = owner;
        p->lock_target = target;
    }
    ++p->lock_ref;
    p->cmd->result = CARD_RESULT_SUCCESS;
    (void)OS_RestoreInterrupts(bak_psr);
}

static void CARDi_UnlockResource (CARDiOwner owner, CARDTargetMode target)
{
    CARDiCommon * p = &cardi_common;
    OSIntrMode bak_psr = OS_DisableInterrupts();
    if ((p->lock_owner != owner) || !p->lock_ref) {
        OS_Panic("card-unlock : specified ID for unlocking is not locking one!");
    } else {
        if (p->lock_target != target) {
            OS_Panic("card-unlock : locking target and unlocking one are different!");
        }
        if (!--p->lock_ref) {
            p->lock_owner = OS_LOCK_ID_ERROR;
            p->lock_target = CARD_TARGET_NONE;
            OS_WakeupThread(p->lock_queue);
        }
    }
    p->cmd->result = CARD_RESULT_SUCCESS;
    (void)OS_RestoreInterrupts(bak_psr);
}

void CARDi_InitCommon (void)
{
    CARDiCommon * p = &cardi_common;

    p->lock_owner = OS_LOCK_ID_ERROR;
    p->lock_ref = 0;
    p->lock_target = CARD_TARGET_NONE;

#if defined(SDK_ARM9)
    p->cmd = &cardi_arg;
    MI_CpuFillFast(&cardi_arg, 0x00, sizeof(cardi_arg));
    DC_FlushRange(&cardi_arg, sizeof(cardi_arg));
#else
    p->cmd = NULL;
    p->recv_step = 0;
#endif

#if defined(SDK_ARM9)
    p->flush_threshold_ic = 0xFFFFFFFF;
    p->flush_threshold_dc = 0xFFFFFFFF;
#endif

#if !defined(SDK_SMALL_BUILD) && defined(SDK_ARM9)
    if (!MB_IsMultiBootChild()) {
        MI_CpuCopy8((const void *)HW_ROM_HEADER_BUF, (void *)HW_CARD_ROM_HEADER,
                    HW_CARD_ROM_HEADER_SIZE);
    }
#endif

#if !defined(SDK_NO_THREAD)
    OS_InitThreadQueue(p->lock_queue);
    OS_InitThreadQueue(p->busy_q);
    p->priority = CARD_THREAD_PRIORITY_DEFAULT;
    OS_CreateThread(p->thread,
                    CARDi_TaskThread, NULL,
                    cardi_thread_stack + sizeof(cardi_thread_stack),
                    sizeof(cardi_thread_stack), p->priority);
    OS_WakeupThreadDirect(p->thread);
#endif

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_FS, CARDi_OnFifoRecv);

    if (!MB_IsMultiBootChild()) {
        CARD_Enable(TRUE);
    }
}

static BOOL CARDi_EnableFlag = FALSE;

BOOL CARD_IsEnabled (void)
{
    return CARDi_EnableFlag;
}

void CARD_CheckEnabled (void)
{
    if (!CARD_IsEnabled()) {
        OS_Panic("NITRO-CARD permission denied");
    }
}

void CARD_Enable (BOOL enable)
{
    CARDi_EnableFlag = enable;
}

BOOL CARDi_WaitAsync (void)
{
    CARDiCommon * const p = &cardi_common;
    SDK_ASSERT(CARD_IsAvailable());

    {
        OSIntrMode bak_psr = OS_DisableInterrupts();
        while ((p->flag & CARD_STAT_BUSY) != 0) {
            OS_SleepThread(p->busy_q);
        }
        (void)OS_RestoreInterrupts(bak_psr);
    }
    return (p->cmd->result == CARD_RESULT_SUCCESS);
}

BOOL CARDi_TryWaitAsync (void)
{
    CARDiCommon * const p = &cardi_common;
    SDK_ASSERT(CARD_IsAvailable());

    return !(p->flag & CARD_STAT_BUSY);
}

CARDResult CARD_GetResultCode (void)
{
    CARDiCommon * const p = &cardi_common;
    SDK_ASSERT(CARD_IsAvailable());

    return p->cmd->result;
}

void CARD_LockRom (u16 lock_id)
{
    SDK_ASSERT(CARD_IsAvailable());

    CARDi_LockResource(lock_id, CARD_TARGET_ROM);

#if defined(SDK_TEG)
    if (!CARDi_IsTrueRom()) {
        (void)OS_LockCartridge(lock_id);
    } else
#endif
    {
        (void)OS_LockCard(lock_id);
    }
}

void CARD_UnlockRom (u16 lock_id)
{
    SDK_ASSERT(CARD_IsAvailable());
    SDK_ASSERT(cardi_common.lock_target == CARD_TARGET_ROM);

#if defined(SDK_TEG)
    if (!CARDi_IsTrueRom()) {
        (void)OS_UnLockCartridge(lock_id);
    } else
#endif
    {
        (void)OS_UnlockCard(lock_id);
    }

    CARDi_UnlockResource(lock_id, CARD_TARGET_ROM);
}

void CARD_LockBackup (u16 lock_id)
{
    SDK_ASSERT(CARD_IsAvailable());

    CARDi_LockResource(lock_id, CARD_TARGET_BACKUP);

#if defined(SDK_ARM7)
    (void)OS_LockCard(lock_id);
#endif
}

void CARD_UnlockBackup (u16 lock_id)
{
    SDK_ASSERT(CARD_IsAvailable());
    SDK_ASSERT(cardi_common.lock_target == CARD_TARGET_BACKUP);

    if (!CARD_TryWaitBackupAsync()) {
        OS_TWarning("called CARD_UnlockBackup() during backup asynchronous operation. (force to wait)\n");
        (void)CARD_WaitBackupAsync();
    }

#if defined(SDK_ARM7)
    (void)OS_UnlockCard(lock_id);
#endif

    CARDi_UnlockResource(lock_id, CARD_TARGET_BACKUP);
}

void CARD_SetCacheFlushThreshold (u32 icache, u32 dcache)
{
#if defined(SDK_ARM9)
    SDK_ASSERT(CARD_IsAvailable());
    cardi_common.flush_threshold_ic = icache;
    cardi_common.flush_threshold_dc = dcache;
#else
    (void)icache;
    (void)dcache;
#endif
}
