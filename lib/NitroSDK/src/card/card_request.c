#if defined(SDK_ARM9)

#include <nitro.h>

#include "include/card_common.h"
#include "include/card_spi.h"

void CARDi_OnFifoRecv (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused(data)
    if ((tag == PXI_FIFO_TAG_FS) && err) {
        CARDiCommon * const p = &cardi_common;

        SDK_ASSERT(data == CARD_REQ_ACK);
        p->flag &= ~CARD_STAT_REQ;
        OS_WakeupThreadDirect(p->cur_th);
    }
}

void CARDi_TaskThread (void * arg) {
    CARDiCommon * const p = &cardi_common;
    (void)arg;

    for (;;) {
        OSIntrMode bak_psr = OS_DisableInterrupts();
        while ((p->flag & CARD_STAT_TASK) == 0) {
            OS_SleepThread(NULL);
        }
        (void)OS_RestoreInterrupts(bak_psr);
        (*p->task_func) (p);
    }
}

BOOL CARDi_Request (CARDiCommon * p, int req_type, int retry_count) {
    if ((p->flag & CARD_STAT_INIT_CMD) == 0) {
        p->flag |= CARD_STAT_INIT_CMD;
        while (!PXI_IsCallbackReady(PXI_FIFO_TAG_FS, PXI_PROC_ARM7)) {
            OS_SpinWait(100);
        }

        (void)CARDi_Request(p, CARD_REQ_INIT, 1);
    }

    DC_FlushRange(p->cmd, sizeof(*p->cmd));
    DC_WaitWriteBufferEmpty();

    do {
        p->command = req_type;
        p->flag |= CARD_STAT_REQ;
        CARDi_SendPxi((u32)req_type);

        switch (req_type) {
        case CARD_REQ_INIT:
            CARDi_SendPxi((u32)p->cmd);
            break;
        }
        {
            OSIntrMode bak_psr = OS_DisableInterrupts();
            while ((p->flag & CARD_STAT_REQ) != 0) {
                OS_SleepThread(NULL);
            }
            (void)OS_RestoreInterrupts(bak_psr);
        }
        DC_InvalidateRange(p->cmd, sizeof(*p->cmd));
    } while ((p->cmd->result == CARD_RESULT_TIMEOUT) && (--retry_count > 0));

    return (p->cmd->result == CARD_RESULT_SUCCESS);
}

#endif
