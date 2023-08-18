#include "wcm_private.h"
#include "wcm_cpsif.h"

#if WCM_DEBUG
static const char cpsifWarningText_NotInit[] = {"WCM library is not initialized yet.\n"};
static const char cpsifWarningText_IllegalParam[] = {"Illegal parameter ( %s )\n"};
static const char cpsifWarningText_InIrqMode[] = {"Processor mode is IRQ mode now.\n"};

static const char cpsifReportText_WmSyncError[] = {"%s failed syncronously. ( ERRCODE: 0x%02x )\n"};
static const char cpsifReportText_WmAsyncError[] = {"%s failed asyncronously. ( ERRCODE: 0x%02x )\n"};
#endif

#define WCMCPSIF_DUMMY_IRQ_THREAD ((OSThread *)OS_IrqHandler)

typedef struct WCMCpsifWork {
    u8 initialized;
    u8 reserved[3];
    OSThreadQueue sendQ;
    OSMutex sendMutex;
    WMErrCode sendResult;
    WCMRecvInd recvCallback;
} WCMCpsifWork;

static WCMCpsifWork wcmCpsifw;

static void WcmCpsifWmCallback(void * arg);
static void WcmCpsifKACallback(void * arg);
static BOOL WcmCpsifTryLockMutexInIRQ(OSMutex * mutex);
static void WcmCpsifUnlockMutexInIRQ(OSMutex * mutex);

void WCMi_InitCpsif (void) {
    if (wcmCpsifw.initialized == 0) {
        wcmCpsifw.initialized = 1;
        wcmCpsifw.sendResult = WM_ERRCODE_SUCCESS;

        OS_InitThreadQueue(&(wcmCpsifw.sendQ));
        OS_InitMutex(&(wcmCpsifw.sendMutex));
    }
}

void WCMi_CpsifRecvCallback (WMDcfRecvBuf * recv) {
    if (wcmCpsifw.recvCallback != NULL) {
        wcmCpsifw.recvCallback((u8 *)(recv->srcAdrs), (u8 *)(recv->destAdrs), (u8 *)(recv->data), (s32)(recv->length));
    }
}

void WCMi_CpsifSendNullPacket (void) {
    volatile WCMWork * w = WCMi_GetSystemWork();

    if (w == NULL) {
        return;
    }

    if ((w->phase != WCM_PHASE_DCF) || (w->resetting == WCM_RESETTING_ON)) {
        return;
    }

    if (FALSE == WcmCpsifTryLockMutexInIRQ(&(wcmCpsifw.sendMutex))) {
        return;
    }

    if (WM_ERRCODE_OPERATING != WM_SetDCFData(
            WcmCpsifKACallback, (const u8 *)w->bssDesc.bssid, (const u16 *)(w->sendBuf),
            0
        )) {
        WcmCpsifUnlockMutexInIRQ(&(wcmCpsifw.sendMutex));
    }
}

u8 * WCM_GetApMacAddress (void) {
    u8 * mac = NULL;
    WCMWork * w = WCMi_GetSystemWork();
    OSIntrMode e = OS_DisableInterrupts();

    if (w != NULL) {
        if ((w->phase == WCM_PHASE_DCF) && (w->resetting == WCM_RESETTING_OFF)) {
            mac = w->bssDesc.bssid;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return mac;
}

u8 * WCM_GetApEssid (u16 * length) {
    u8 * essid = NULL;
    u16 len = 0;
    WCMWork * w = WCMi_GetSystemWork();
    OSIntrMode e = OS_DisableInterrupts();

    if (w != NULL) {
        if ((w->phase == WCM_PHASE_DCF) && (w->resetting == WCM_RESETTING_OFF)) {
            essid = &(w->bssDesc.ssid[0]);
            len = w->bssDesc.ssidLength;
        }
    }

    (void)OS_RestoreInterrupts(e);
    if (length != NULL) {
        *length = len;
    }

    return essid;
}

void WCM_SetRecvDCFCallback (WCMRecvInd callback) {
    OSIntrMode e = OS_DisableInterrupts();

    wcmCpsifw.recvCallback = callback;

    (void)OS_RestoreInterrupts(e);
}

s32 WCM_SendDCFData (const u8 * dstAddr, const u8 * buf, s32 len) {
    OSIntrMode e = OS_DisableInterrupts();
    volatile WCMWork * w = WCMi_GetSystemWork();

    if (w == NULL) {
        WCMi_Warning(cpsifWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_BEFORE_INIT;
    }

#if WCM_DEBUG

    if ((dstAddr == NULL) || (buf == NULL)) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "dstAddr or buf");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (len <= 0) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "len");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (len > WCM_ROUNDUP32(WM_DCF_MAX_SIZE)) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "len");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if ((u32)buf & 0x01) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "buf");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (OS_GetProcMode() == HW_PSR_IRQ_MODE) {
        WCMi_Warning(cpsifWarningText_InIrqMode);
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_IN_IRQ_MODE;
    }
#endif

    OS_LockMutex(&(wcmCpsifw.sendMutex));

    w = WCMi_GetSystemWork();
    if (w == NULL) {
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_BEFORE_INIT;
    }

    if ((w->phase != WCM_PHASE_DCF) || (w->resetting == WCM_RESETTING_ON)) {
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_NO_CONNECTION;
    }

    MI_CpuCopy8(buf, (void *)(w->sendBuf), (u32)len);

    {
        WMErrCode wmResult;

        wmResult = WM_SetDCFData(WcmCpsifWmCallback, (const u8 *)dstAddr, (const u16 *)(w->sendBuf), (u16)len);
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            break;

        case WM_ERRCODE_ILLEGAL_STATE:
        case WM_ERRCODE_INVALID_PARAM:
        case WM_ERRCODE_FIFO_ERROR:
        default:

            WCMi_Printf(cpsifReportText_WmSyncError, "WM_SetDCFData", wmResult);
            OS_UnlockMutex(&(wcmCpsifw.sendMutex));
            (void)OS_RestoreInterrupts(e);
            return WCM_CPSIF_RESULT_SEND_FAILURE;
        }
    }

    OS_SleepThread(&(wcmCpsifw.sendQ));

    switch (wcmCpsifw.sendResult) {
    case WM_ERRCODE_SUCCESS:
        break;

    case WM_ERRCODE_FAILED:
    default:

        WCMi_Printf(cpsifReportText_WmAsyncError, "WCM_SendDCFData", wcmCpsifw.sendResult);
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_SEND_FAILURE;
    }

    OS_UnlockMutex(&(wcmCpsifw.sendMutex));
    (void)OS_RestoreInterrupts(e);
    return len;
}

s32 WCM_SendDCFDataEx (const u8 * dstAddr, const u8 * header, s32 headerLen, const u8 * body, s32 bodyLen) {
    OSIntrMode e = OS_DisableInterrupts();
    volatile WCMWork * w = WCMi_GetSystemWork();

    if (w == NULL) {
        WCMi_Warning(cpsifWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_BEFORE_INIT;
    }

#if WCM_DEBUG

    if ((dstAddr == NULL) || (header == NULL)) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "dstAddr or header");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (headerLen <= 0 || (body != NULL && bodyLen < 0) || (body == NULL && bodyLen != 0)) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "headerLen or bodyLen");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (headerLen + bodyLen > WCM_ROUNDUP32(WM_DCF_MAX_SIZE)) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "headerLen + bodyLen");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if ((u32)header & 0x01 || ((body != NULL) && ((u32)body & 0x01))) {
        WCMi_Warning(cpsifWarningText_IllegalParam, "header or body");
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_ILLEGAL_PARAM;
    }

    if (OS_GetProcMode() == HW_PSR_IRQ_MODE) {
        WCMi_Warning(cpsifWarningText_InIrqMode);
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_IN_IRQ_MODE;
    }
#endif

    OS_LockMutex(&(wcmCpsifw.sendMutex));

    w = WCMi_GetSystemWork();
    if (w == NULL) {
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_BEFORE_INIT;
    }

    if ((w->phase != WCM_PHASE_DCF) || (w->resetting == WCM_RESETTING_ON)) {
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_NO_CONNECTION;
    }

    MI_CpuCopy8(header, (void *)(w->sendBuf), (u32)headerLen);
    if (bodyLen > 0) {
        MI_CpuCopy8(body, (void *)(((u8 *)w->sendBuf) + headerLen), (u32)bodyLen);
    }

    {
        WMErrCode wmResult;

        wmResult = WM_SetDCFData(WcmCpsifWmCallback, (const u8 *)dstAddr, (const u16 *)(w->sendBuf), (u16)(headerLen + bodyLen));
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            break;

        case WM_ERRCODE_ILLEGAL_STATE:
        case WM_ERRCODE_INVALID_PARAM:
        case WM_ERRCODE_FIFO_ERROR:
        default:

            WCMi_Printf(cpsifReportText_WmSyncError, "WM_SetDCFData", wmResult);
            OS_UnlockMutex(&(wcmCpsifw.sendMutex));
            (void)OS_RestoreInterrupts(e);
            return WCM_CPSIF_RESULT_SEND_FAILURE;
        }
    }

    OS_SleepThread(&(wcmCpsifw.sendQ));

    switch (wcmCpsifw.sendResult) {
    case WM_ERRCODE_SUCCESS:
        break;

    case WM_ERRCODE_FAILED:
    default:

        WCMi_Printf(cpsifReportText_WmAsyncError, "WCM_SendDCFData", wcmCpsifw.sendResult);
        OS_UnlockMutex(&(wcmCpsifw.sendMutex));
        (void)OS_RestoreInterrupts(e);
        return WCM_CPSIF_RESULT_SEND_FAILURE;
    }

    OS_UnlockMutex(&(wcmCpsifw.sendMutex));
    (void)OS_RestoreInterrupts(e);
    return headerLen + bodyLen;
}

static void WcmCpsifWmCallback (void * arg) {
    WMCallback * cb = (WMCallback *)arg;

    switch (cb->apiid) {
    case WM_APIID_SET_DCF_DATA:
        wcmCpsifw.sendResult = (WMErrCode)(cb->errcode);
        if (cb->errcode == WM_ERRCODE_SUCCESS) {
            WCMi_ResetKeepAliveAlarm();
        }

        OS_WakeupThread(&(wcmCpsifw.sendQ));
        break;
    }
}

static void WcmCpsifKACallback (void * arg) {
#if WCM_DEBUG
    if (((WMCallback *)arg)->errcode == WM_ERRCODE_SUCCESS) {
        WCMi_Printf("Send NULL packet for KeepAlive.\n");
    }

#else
#pragma unused(arg)
#endif

    WcmCpsifUnlockMutexInIRQ(&(wcmCpsifw.sendMutex));
}

static BOOL WcmCpsifTryLockMutexInIRQ (OSMutex * mutex) {
#if WCM_DEBUG
    if ((mutex == NULL) || (OS_GetProcMode() != HW_PSR_IRQ_MODE)) {
        return FALSE;
    }
#endif
    if (mutex->thread == NULL) {
        mutex->thread = WCMCPSIF_DUMMY_IRQ_THREAD;
        mutex->count++;
        return TRUE;
    } else if (mutex->thread == WCMCPSIF_DUMMY_IRQ_THREAD) {
        mutex->count++;
        return TRUE;
    }

    return FALSE;
}

static void WcmCpsifUnlockMutexInIRQ (OSMutex * mutex) {
#if WCM_DEBUG
    if ((mutex == NULL) || (OS_GetProcMode() != HW_PSR_IRQ_MODE)) {
        return;
    }
#endif
    if (mutex->thread == WCMCPSIF_DUMMY_IRQ_THREAD) {
        if (--(mutex->count) == 0) {
            mutex->thread = NULL;
            OS_WakeupThread(&(mutex->queue));
        }
    }
}
