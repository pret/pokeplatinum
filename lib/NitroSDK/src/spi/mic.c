#include <nitro/spi.h>

typedef enum MICLock {
    MIC_LOCK_OFF = 0,
    MIC_LOCK_ON,
    MIC_LOCK_MAX
} MICLock;

typedef struct MICWork {
    MICLock lock;
    MICCallback callback;
    void * callbackArg;
    MICResult commonResult;
    MICCallback full;
    void * fullArg;
    void * dst_buf;
} MICWork;

static u16 micInitialized;
static MICWork micWork;

static void MicCommonCallback(PXIFifoTag tag, u32 data, BOOL err);
static BOOL MicDoSampling(u16 type);
static BOOL MicStartAutoSampling(void * buf, u32 size, u32 span, u8 flags);
static BOOL MicStopAutoSampling(void);
static BOOL MicAdjustAutoSampling(u32 span);
static void MicGetResultCallback(MICResult result, void * arg);
static void MicWaitBusy(void);

void MIC_Init (void) {
    if (micInitialized) {
        return;
    }
    micInitialized = 1;

    micWork.lock = MIC_LOCK_OFF;
    micWork.callback = NULL;

    PXI_Init();
    while (!PXI_IsCallbackReady(PXI_FIFO_TAG_MIC, PXI_PROC_ARM7)) {
    }

    OS_GetSystemWork()->mic_last_address = 0;

    PXI_SetFifoRecvCallback(PXI_FIFO_TAG_MIC, MicCommonCallback);
}

MICResult MIC_DoSamplingAsync (MICSamplingType type, void * buf, MICCallback callback, void * arg) {
    OSIntrMode enabled;
    u16 wtype;

    SDK_NULL_ASSERT(buf);
    SDK_NULL_ASSERT(callback);

    if (type >= MIC_SAMPLING_TYPE_MAX) {
        return MIC_RESULT_ILLEGAL_PARAMETER;
    }
    switch (type) {
    case MIC_SAMPLING_TYPE_8BIT:
        wtype = SPI_MIC_SAMPLING_TYPE_8BIT;
        break;
    case MIC_SAMPLING_TYPE_12BIT:
        wtype = SPI_MIC_SAMPLING_TYPE_12BIT;
        break;
    case MIC_SAMPLING_TYPE_SIGNED_8BIT:
        wtype = SPI_MIC_SAMPLING_TYPE_S8BIT;
        break;
    case MIC_SAMPLING_TYPE_SIGNED_12BIT:
        wtype = SPI_MIC_SAMPLING_TYPE_S12BIT;
        break;
    default:
        return MIC_RESULT_ILLEGAL_PARAMETER;
    }

    enabled = OS_DisableInterrupts();
    if (micWork.lock != MIC_LOCK_OFF) {
        (void)OS_RestoreInterrupts(enabled);
        return MIC_RESULT_BUSY;
    }
    micWork.lock = MIC_LOCK_ON;
    (void)OS_RestoreInterrupts(enabled);

    micWork.callback = callback;
    micWork.callbackArg = arg;
    micWork.dst_buf = buf;
    if (MicDoSampling(wtype)) {
        return MIC_RESULT_SUCCESS;
    }
    return MIC_RESULT_SEND_ERROR;
}

MICResult MIC_DoSampling (MICSamplingType type, void * buf) {
    micWork.commonResult = MIC_DoSamplingAsync(type, buf, MicGetResultCallback, NULL);
    if (micWork.commonResult == MIC_RESULT_SUCCESS) {
        MicWaitBusy();
    }
    return micWork.commonResult;
}

MICResult MIC_StartAutoSamplingAsync (const MICAutoParam * param, MICCallback callback, void * arg) {
    OSIntrMode enabled;
    u8 flags;

    SDK_NULL_ASSERT(callback);
    SDK_NULL_ASSERT(param->buffer);

    {
        if ((u32)(param->buffer) & 0x01f) {
#ifdef  SDK_DEBUG
            OS_TWarning("Parameter param->buffer must be 32-byte aligned.\n");
#endif
            return MIC_RESULT_ILLEGAL_PARAMETER;
        }

        if (param->size & 0x01f) {
#ifdef  SDK_DEBUG
            OS_TWarning("Parameter param->size must be a multiple of 32-byte.\n");
#endif
            return MIC_RESULT_ILLEGAL_PARAMETER;
        }

        if (param->size <= 0) {
            return MIC_RESULT_ILLEGAL_PARAMETER;
        }

        if (param->rate < MIC_SAMPLING_RATE_LIMIT) {
            return MIC_RESULT_ILLEGAL_PARAMETER;
        }

        switch (param->type) {
        case MIC_SAMPLING_TYPE_8BIT:
            flags = SPI_MIC_SAMPLING_TYPE_8BIT;
            break;
        case MIC_SAMPLING_TYPE_12BIT:
            flags = SPI_MIC_SAMPLING_TYPE_12BIT;
            break;
        case MIC_SAMPLING_TYPE_SIGNED_8BIT:
            flags = SPI_MIC_SAMPLING_TYPE_S8BIT;
            break;
        case MIC_SAMPLING_TYPE_SIGNED_12BIT:
            flags = SPI_MIC_SAMPLING_TYPE_S12BIT;
            break;
        case MIC_SAMPLING_TYPE_12BIT_FILTER_OFF:
            flags = (SPI_MIC_SAMPLING_TYPE_12BIT | SPI_MIC_SAMPLING_TYPE_FILTER_OFF);
            break;
        case MIC_SAMPLING_TYPE_SIGNED_12BIT_FILTER_OFF:
            flags = (SPI_MIC_SAMPLING_TYPE_S12BIT | SPI_MIC_SAMPLING_TYPE_FILTER_OFF);
            break;
        default:
            return MIC_RESULT_ILLEGAL_PARAMETER;
        }

        if (param->loop_enable) {
            flags = (u8)(flags | SPI_MIC_SAMPLING_TYPE_LOOP_ON);
        } else {
            flags = (u8)(flags | SPI_MIC_SAMPLING_TYPE_LOOP_OFF);
        }

        flags = (u8)(flags | SPI_MIC_SAMPLING_TYPE_CORRECT_OFF);
    }

    enabled = OS_DisableInterrupts();
    if (micWork.lock != MIC_LOCK_OFF) {
        (void)OS_RestoreInterrupts(enabled);
        return MIC_RESULT_BUSY;
    }
    micWork.lock = MIC_LOCK_ON;
    (void)OS_RestoreInterrupts(enabled);

    micWork.callback = callback;
    micWork.callbackArg = arg;
    micWork.full = param->full_callback;
    micWork.fullArg = param->full_arg;
    if (MicStartAutoSampling(param->buffer, param->size, param->rate, flags)) {
        return MIC_RESULT_SUCCESS;
    }
    return MIC_RESULT_SEND_ERROR;
}

MICResult MIC_StartAutoSampling (const MICAutoParam * param) {
    micWork.commonResult = MIC_StartAutoSamplingAsync(param, MicGetResultCallback, NULL);
    if (micWork.commonResult == MIC_RESULT_SUCCESS) {
        MicWaitBusy();
    }
    return micWork.commonResult;
}

MICResult MIC_StopAutoSamplingAsync (MICCallback callback, void * arg) {
    OSIntrMode enabled;

    SDK_NULL_ASSERT(callback);

    enabled = OS_DisableInterrupts();
    if (micWork.lock != MIC_LOCK_OFF) {
        (void)OS_RestoreInterrupts(enabled);
        return MIC_RESULT_BUSY;
    }
    micWork.lock = MIC_LOCK_ON;
    (void)OS_RestoreInterrupts(enabled);

    micWork.callback = callback;
    micWork.callbackArg = arg;
    if (MicStopAutoSampling()) {
        return MIC_RESULT_SUCCESS;
    }
    return MIC_RESULT_SEND_ERROR;
}

MICResult MIC_StopAutoSampling (void) {
    micWork.commonResult = MIC_StopAutoSamplingAsync(MicGetResultCallback, NULL);
    if (micWork.commonResult == MIC_RESULT_SUCCESS) {
        MicWaitBusy();
    }
    return micWork.commonResult;
}

MICResult MIC_AdjustAutoSamplingAsync (u32 rate, MICCallback callback, void * arg) {
    OSIntrMode enabled;

    SDK_NULL_ASSERT(callback);

    if (rate < MIC_SAMPLING_RATE_LIMIT) {
        return MIC_RESULT_ILLEGAL_PARAMETER;
    }

    enabled = OS_DisableInterrupts();
    if (micWork.lock != MIC_LOCK_OFF) {
        (void)OS_RestoreInterrupts(enabled);
        return MIC_RESULT_BUSY;
    }
    micWork.lock = MIC_LOCK_ON;
    (void)OS_RestoreInterrupts(enabled);

    micWork.callback = callback;
    micWork.callbackArg = arg;
    if (MicAdjustAutoSampling(rate)) {
        return MIC_RESULT_SUCCESS;
    }
    return MIC_RESULT_SEND_ERROR;
}

MICResult MIC_AdjustAutoSampling (u32 rate) {
    micWork.commonResult = MIC_AdjustAutoSamplingAsync(rate, MicGetResultCallback, NULL);
    if (micWork.commonResult == MIC_RESULT_SUCCESS) {
        MicWaitBusy();
    }
    return micWork.commonResult;
}

void * MIC_GetLastSamplingAddress (void) {
    return (void *)(OS_GetSystemWork()->mic_last_address);
}

static void MicCommonCallback (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused( tag )

    u16 command;
    u16 pxiresult;
    MICResult result;
    MICCallback cb;

    if (err) {
        if (micWork.lock != MIC_LOCK_OFF) {
            micWork.lock = MIC_LOCK_OFF;
        }
        if (micWork.callback) {
            cb = micWork.callback;
            micWork.callback = NULL;
            cb(MIC_RESULT_FATAL_ERROR, micWork.callbackArg);
        }
    }

    command = (u16)((data & SPI_PXI_RESULT_COMMAND_MASK) >> SPI_PXI_RESULT_COMMAND_SHIFT);
    pxiresult = (u16)((data & SPI_PXI_RESULT_DATA_MASK) >> SPI_PXI_RESULT_DATA_SHIFT);

    switch (pxiresult) {
    case SPI_PXI_RESULT_SUCCESS:
        result = MIC_RESULT_SUCCESS;
        break;
    case SPI_PXI_RESULT_INVALID_COMMAND:
        result = MIC_RESULT_INVALID_COMMAND;
        break;
    case SPI_PXI_RESULT_INVALID_PARAMETER:
        result = MIC_RESULT_ILLEGAL_PARAMETER;
        break;
    case SPI_PXI_RESULT_ILLEGAL_STATUS:
        result = MIC_RESULT_ILLEGAL_STATUS;
        break;
    case SPI_PXI_RESULT_EXCLUSIVE:
        result = MIC_RESULT_BUSY;
        break;
    default:
        result = MIC_RESULT_FATAL_ERROR;
    }

    if (command == SPI_PXI_COMMAND_MIC_BUFFER_FULL) {
        if (micWork.full) {
            micWork.full(result, micWork.fullArg);
        }
    } else {
        if (command == SPI_PXI_COMMAND_MIC_SAMPLING) {
            if (micWork.dst_buf) {
                *(u16 *)(micWork.dst_buf) = OS_GetSystemWork()->mic_sampling_data;
            }
        }

        if (micWork.lock != MIC_LOCK_OFF) {
            micWork.lock = MIC_LOCK_OFF;
        }

        if (micWork.callback) {
            cb = micWork.callback;
            micWork.callback = NULL;
            cb(result, micWork.callbackArg);
        }
    }
}

static BOOL MicDoSampling (u16 type) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_MIC_SAMPLING << 8) | (u32)type, 0
        )) {
        return FALSE;
    }

    return TRUE;
}

static BOOL MicStartAutoSampling (void * buf, u32 size, u32 span, u8 flags) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_MIC_AUTO_ON << 8) | (u32)flags, 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (1 << SPI_PXI_INDEX_SHIFT) | ((u32)buf >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            (2 << SPI_PXI_INDEX_SHIFT) | ((u32)buf & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (3 << SPI_PXI_INDEX_SHIFT) | (size >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            (4 << SPI_PXI_INDEX_SHIFT) | (size & 0x0000ffff), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (5 << SPI_PXI_INDEX_SHIFT) | (span >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_END_BIT |
            (6 << SPI_PXI_INDEX_SHIFT) | (span & 0x0000ffff), 0
        )) {
        return FALSE;
    }
    return TRUE;
}

static BOOL MicStopAutoSampling (void) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            SPI_PXI_END_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) | (SPI_PXI_COMMAND_MIC_AUTO_OFF << 8), 0
        )) {
        return FALSE;
    }
    return TRUE;
}

static BOOL MicAdjustAutoSampling (u32 span) {
    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_START_BIT |
            (0 << SPI_PXI_INDEX_SHIFT) |
            (SPI_PXI_COMMAND_MIC_AUTO_ADJUST << 8), 0
        )) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_MIC, (1 << SPI_PXI_INDEX_SHIFT) | (span >> 16), 0)) {
        return FALSE;
    }

    if (0 > PXI_SendWordByFifo(
            PXI_FIFO_TAG_MIC,
            SPI_PXI_END_BIT |
            (2 << SPI_PXI_INDEX_SHIFT) | (span & 0x0000ffff), 0
        )) {
        return FALSE;
    }
    return TRUE;
}

static void MicGetResultCallback (MICResult result, void * arg) {
#pragma unused( arg )

    micWork.commonResult = result;
}

#include    <nitro/code32.h>

static asm void MicWaitBusy (void) {
    ldr r12, = micWork.lock
 loop:
               ldr r0, [r12, #0]
    cmp r0, #MIC_LOCK_ON
    beq loop
    bx lr
}
#include    <nitro/codereset.h>
