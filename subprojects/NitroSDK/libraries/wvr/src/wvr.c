#include <nitro/wvr/common/wvr_common.h>
#include <nitro/wvr/ARM9/wvr.h>
#include <nitro/pxi.h>
#include <nitro/os/ARM9/vramExclusive.h>
#include <nitro/gx/gx_vramcnt.h>
#include <nitro/wm.h>

static void WvrReceiveCallback(PXIFifoTag tag, u32 data, BOOL err);
static void WvrDummyAsyncCallback(void * arg, WVRResult result);

static WVRCallbackFunc wvrCallback = NULL;
static void * wvrArg = NULL;
static vu16 wvrVRam = 0;
static vu16 wvrLockId = 0;

WVRResult WVR_StartUpAsync (GXVRamARM7 vram, WVRCallbackFunc callback, void * arg) {
    OSIntrMode e;

    PXI_Init();
    if (!PXI_IsCallbackReady(PXI_FIFO_TAG_WVR, PXI_PROC_ARM7)) {
        return WVR_RESULT_DISABLE;
    }

    while (wvrLockId == 0) {
        s32 result = OS_GetLockID();

        if (result == OS_LOCK_ID_ERROR) {
            return WVR_RESULT_FATAL_ERROR;
        }
        wvrLockId = (u16)result;
    }

    e = OS_DisableInterrupts();

    if (wvrCallback != NULL) {
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_ILLEGAL_STATUS;
    }

    if (wvrVRam) {
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_ILLEGAL_STATUS;
    }
    switch (vram) {
    case GX_VRAM_ARM7_128_C:

        if (!OSi_TryLockVram(OS_VRAM_BANK_ID_C, wvrLockId)) {
            (void)OS_RestoreInterrupts(e);
            return WVR_RESULT_VRAM_LOCKED;
        }
        wvrVRam = OS_VRAM_BANK_ID_C;

        reg_GX_VRAMCNT_C = ((2 << REG_GX_VRAMCNT_C_MST_SHIFT) |
                            (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 << REG_GX_VRAMCNT_C_E_SHIFT));
        break;
    case GX_VRAM_ARM7_128_D:

        if (!OSi_TryLockVram(OS_VRAM_BANK_ID_D, wvrLockId)) {
            (void)OS_RestoreInterrupts(e);
            return WVR_RESULT_VRAM_LOCKED;
        }
        wvrVRam = OS_VRAM_BANK_ID_D;

        reg_GX_VRAMCNT_D = ((2 << REG_GX_VRAMCNT_D_MST_SHIFT) |
                            (0 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 << REG_GX_VRAMCNT_D_E_SHIFT));
        break;
    case GX_VRAM_ARM7_256_CD:

        if (!OSi_TryLockVram((OS_VRAM_BANK_ID_C | OS_VRAM_BANK_ID_D), wvrLockId)) {
            (void)OS_RestoreInterrupts(e);
            return WVR_RESULT_VRAM_LOCKED;
        }
        wvrVRam = OS_VRAM_BANK_ID_C | OS_VRAM_BANK_ID_D;

        reg_GX_VRAMCNT_C = ((2 << REG_GX_VRAMCNT_C_MST_SHIFT) |
                            (0 << REG_GX_VRAMCNT_C_OFS_SHIFT) | (1 << REG_GX_VRAMCNT_C_E_SHIFT));
        reg_GX_VRAMCNT_D = ((2 << REG_GX_VRAMCNT_D_MST_SHIFT) |
                            (1 << REG_GX_VRAMCNT_D_OFS_SHIFT) | (1 << REG_GX_VRAMCNT_D_E_SHIFT));
        break;
    default:
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_INVALID_PARAM;
    }

    if (!PXI_IsCallbackReady(PXI_FIFO_TAG_WVR, PXI_PROC_ARM9)) {
        PXI_SetFifoRecvCallback(PXI_FIFO_TAG_WVR, WvrReceiveCallback);
    }

    if (callback == NULL) {
        wvrCallback = WvrDummyAsyncCallback;
    } else {
        wvrCallback = callback;
    }
    wvrArg = arg;

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_WVR, WVR_PXI_COMMAND_STARTUP, FALSE)) {
        OSi_UnlockVram(wvrVRam, wvrLockId);
        wvrVRam = 0;
        wvrCallback = NULL;
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_FIFO_ERROR;
    }

    (void)OS_RestoreInterrupts(e);
    return WVR_RESULT_OPERATING;
}

WVRResult WVR_TerminateAsync (WVRCallbackFunc callback, void * arg) {
    OSIntrMode e;

    PXI_Init();
    if (!PXI_IsCallbackReady(PXI_FIFO_TAG_WVR, PXI_PROC_ARM7)) {
        return WVR_RESULT_DISABLE;
    }

    e = OS_DisableInterrupts();

    if (wvrCallback != NULL) {
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_ILLEGAL_STATUS;
    }

    if (!PXI_IsCallbackReady(PXI_FIFO_TAG_WVR, PXI_PROC_ARM9)) {
        PXI_SetFifoRecvCallback(PXI_FIFO_TAG_WVR, WvrReceiveCallback);
    }

    if (callback == NULL) {
        wvrCallback = WvrDummyAsyncCallback;
    } else {
        wvrCallback = callback;
    }
    wvrArg = arg;

    if (0 > PXI_SendWordByFifo(PXI_FIFO_TAG_WVR, WVR_PXI_COMMAND_TERMINATE, FALSE)) {
        wvrCallback = NULL;
        (void)OS_RestoreInterrupts(e);
        return WVR_RESULT_FIFO_ERROR;
    }

    (void)OS_RestoreInterrupts(e);
    return WVR_RESULT_OPERATING;
}

static void WvrReceiveCallback (PXIFifoTag tag, u32 data, BOOL err) {
#pragma unused( tag , err )

    WVRCallbackFunc cb = wvrCallback;
    void * cbArg = wvrArg;
    WVRResult result = (WVRResult)(data & 0x000000ff);

    switch (data & 0xffff0000) {
    case WVR_PXI_COMMAND_STARTUP:
        switch (result) {
        case WVR_RESULT_FATAL_ERROR:

            if ((wvrVRam != 0) && (wvrLockId != 0)) {
                OSi_UnlockVram(wvrVRam, wvrLockId);
                wvrVRam = 0;
            }
            break;
        }
        break;
    case WVR_PXI_COMMAND_TERMINATE:
        switch (result) {
        case WVR_RESULT_SUCCESS:

            if ((wvrVRam != 0) && (wvrLockId != 0)) {
                OSi_UnlockVram(wvrVRam, wvrLockId);
                wvrVRam = 0;
            }
            break;
        }

        PXI_SetFifoRecvCallback(PXI_FIFO_TAG_WVR, NULL);
        break;
    }

    if (cb != NULL) {
        wvrCallback = NULL;
        wvrArg = NULL;
        cb(cbArg, result);
    }
}

static void WvrDummyAsyncCallback (void * arg, WVRResult result) {
#pragma unused( arg , result )
}
