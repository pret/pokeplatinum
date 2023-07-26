#ifndef __NITRO_CARD_COMMON_H__
#define __NITRO_CARD_COMMON_H__

#include <nitro.h>
#include <nitro/pxi.h>

#define COUNT_OF_(array) (sizeof(array) / sizeof(*array))

#define BIT_MASK(n) ((1 << (n)) - 1)
#define ALIGN_MASK(a) ((a) - 1)
#define ALIGN_BYTE(n, a) (((u32)(n) + ALIGN_MASK(a)) & ~ALIGN_MASK(a))
#define CARD_ALIGN_HI_BIT(n) (((u32)(n)) & ~ALIGN_MASK(CARD_ROM_PAGE_SIZE))
#define CARD_ALIGN_LO_BIT(n) (((u32)(n)) & ALIGN_MASK(CARD_ROM_PAGE_SIZE))

enum {
    CARD_STAT_INIT = (1 << 0),
    CARD_STAT_INIT_CMD = (1 << 1),
    CARD_STAT_BUSY = (1 << 2),
    CARD_STAT_TASK = (1 << 3),
    CARD_STAT_RECV = (1 << 4),
    CARD_STAT_REQ = (1 << 5),
    CARD_STAT_CANCEL = (1 << 6)
};

typedef enum {
    CARD_TARGET_NONE,
    CARD_TARGET_ROM,
    CARD_TARGET_BACKUP
} CARDTargetMode;

#define CARD_BACKUP_CAPS_AVAILABLE (u32)(CARD_BACKUP_CAPS_READ - 1)
#define CARD_BACKUP_CAPS_READ (u32)(1 << CARD_REQ_READ_BACKUP)
#define CARD_BACKUP_CAPS_WRITE (u32)(1 << CARD_REQ_WRITE_BACKUP)
#define CARD_BACKUP_CAPS_PROGRAM (u32)(1 << CARD_REQ_PROGRAM_BACKUP)
#define CARD_BACKUP_CAPS_VERIFY (u32)(1 << CARD_REQ_VERIFY_BACKUP)
#define CARD_BACKUP_CAPS_ERASE_PAGE (u32)(1 << CARD_REQ_ERASE_PAGE_BACKUP)
#define CARD_BACKUP_CAPS_ERASE_SECTOR (u32)(1 << CARD_REQ_ERASE_SECTOR_BACKUP)
#define CARD_BACKUP_CAPS_ERASE_CHIP (u32)(1 << CARD_REQ_ERASE_CHIP_BACKUP)
#define CARD_BACKUP_CAPS_READ_STATUS (u32)(1 << CARD_REQ_READ_STATUS)
#define CARD_BACKUP_CAPS_WRITE_STATUS (u32)(1 << CARD_REQ_WRITE_STATUS)
#define CARD_BACKUP_CAPS_ERASE_SUBSECTOR (u32)(1 << CARD_REQ_ERASE_SUBSECTOR_BACKUP)

typedef s32 CARDiOwner;

typedef struct CARDiCommandArg {
    CARDResult result;
    CARDBackupType type;
    u32 id;
    u32 src;
    u32 dst;
    u32 len;

    struct {
        u32 total_size;
        u32 sect_size;
        u32 subsect_size;
        u32 page_size;
        u32 addr_width;

        u32 program_page;
        u32 write_page;
        u32 write_page_total;
        u32 erase_chip;
        u32 erase_chip_total;
        u32 erase_sector;
        u32 erase_sector_total;
        u32 erase_subsector;
        u32 erase_subsector_total;
        u32 erase_page;

        u8 initial_status;
        u8 padding1[3];
        u32 caps;
        u8 padding2[4];
    } spec;
} CARDiCommandArg;

typedef struct CARDiCommon {
    CARDiCommandArg * cmd;

    int command;
#if defined(SDK_ARM7)
    u32 recv_step;
#endif

    volatile CARDiOwner lock_owner;
    volatile int lock_ref;
#ifndef SDK_THREAD_INFINITY
    OSThreadQueue lock_queue[4 / sizeof(OSThreadQueue)];
#else
    OSThreadQueue lock_queue[1];
#endif
    CARDTargetMode lock_target;

    u32 src;
    u32 dst;
    u32 len;
    u32 dma;
    CARDRequest req_type;
    int req_retry;
    CARDRequestMode req_mode;
    MIDmaCallback callback;
    void * callback_arg;
    void (* task_func)(struct CARDiCommon *);

    OSThread thread[1];
    OSThread * cur_th;

    u32 priority;
#ifndef SDK_THREAD_INFINITY
    OSThreadQueue busy_q[4 / sizeof(OSThreadQueue)];
#else
    OSThreadQueue busy_q[1];
#endif

    volatile u32 flag;

#if defined(SDK_ARM9)
    u32 flush_threshold_ic;
    u32 flush_threshold_dc;
#endif

#ifndef SDK_THREAD_INFINITY
    u8 dummy[20];
#endif

    u8 backup_cache_page_buf[256] ATTRIBUTE_ALIGN(32);
} CARDiCommon;

SDK_COMPILER_ASSERT(sizeof(CARDiCommandArg) % 32 == 0);

SDK_COMPILER_ASSERT(sizeof(CARDiCommon) % 32 == 0);

extern CARDiCommon cardi_common;

static inline void CARDi_SendPxi (u32 data)
{
    while (PXI_SendWordByFifo(PXI_FIFO_TAG_FS, data, TRUE) < 0) {
        ;
    }
}

void CARDi_OnFifoRecv(PXIFifoTag tag, u32 data, BOOL err);

static inline CARDTargetMode CARDi_GetTargetMode (void)
{
    return cardi_common.lock_target;
}

BOOL CARDi_WaitAsync(void);

BOOL CARDi_TryWaitAsync(void);

static inline void CARDi_WaitTask (CARDiCommon * p, MIDmaCallback callback, void * callback_arg)
{
    OSIntrMode bak_psr = OS_DisableInterrupts();
    while ((p->flag & CARD_STAT_BUSY) != 0) {
        OS_SleepThread(p->busy_q);
    }
    p->flag |= CARD_STAT_BUSY;
    p->callback = callback;
    p->callback_arg = callback_arg;
    (void)OS_RestoreInterrupts(bak_psr);
}

void CARDi_SetTask(void (* task)(CARDiCommon *));

static inline void CARDi_EndTask (CARDiCommon * p, BOOL is_own_task)
{
    const MIDmaCallback func = p->callback;
    void * const arg = p->callback_arg;

    {
        OSIntrMode bak_psr = OS_DisableInterrupts();

        p->flag &= ~(CARD_STAT_BUSY | CARD_STAT_TASK | CARD_STAT_CANCEL);
        OS_WakeupThread(p->busy_q);
        if ((p->flag & CARD_STAT_RECV) != 0) {
            OS_WakeupThreadDirect(p->thread);
        }
        (void)OS_RestoreInterrupts(bak_psr);
    }

    if (is_own_task && func) {
        (*func)(arg);
    }
}

void CARDi_TaskThread(void * arg);

void CARDi_InitCommon(void);

#if defined(SDK_ARM9)

BOOL CARDi_Request(CARDiCommon * p, int req_type, int retry_max);

#endif

#endif
