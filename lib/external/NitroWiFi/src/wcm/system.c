#include "include/wcm_private.h"
#include "include/wcm_cpsif.h"

const u8 WCM_Essid_Any[WCM_ESSID_SIZE] = {
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff
};

const u8 WCM_Bssid_Any[WCM_BSSID_SIZE] = {
    0xff, 0xff, 0xff, 0xff, 0xff, 0xff
};

#if WCM_DEBUG
static const char wcmWarningText_AlreadyInit[] = {"WCM library is already initialized.\n"};
static const char wcmWarningText_IllegalParam[] = {"Illegal parameter ( %s )\n"};
static const char wcmWarningText_NotInit[] = {"WCM library is not initialized yet.\n"};
static const char wcmWarningText_IllegalPhase[] = {"Could not accept request now. ( PHASE: %d )\n"};
static const char wcmWarningText_InvalidWmState[] = {"Invalid state of WM library. Don't use WM or WVR library while using WCM library.\n"};
static const char wcmWarningText_UnsuitableArm7[] = {"Unsuitable ARM7 component. Could not drive wireless module.\n"};
static const char wcmWarningText_WirelessForbidden[] = {"Forbidden to use wireless module."};

static const char wcmReportText_WmSyncError[] = {"%s failed syncronously. ( ERRCODE: 0x%02x )\n"};
static const char wcmReportText_WmAsyncError[] = {"%s failed asyncronously. ( ERRCODE: 0x%02x - 0x%04x - 0x%04x )\n"};
static const char wcmReportText_WmDisconnected[] = {"%s succeeded asyncronously , but already disconnected from AP.\n"};
static const char wcmReportText_InvalidAid[] = {"%s succeeded asyncronously , but given Auth-ID is invalid.\n"};
static const char wcmReportText_SupportRateset[] = {"Failed association to \"%s\" because of illegal support rate set.\n  So retry with camouflage 5.5M and 11M automatically.\n"};
#endif

static WCMWork * wcmw = NULL;

static void WcmConfigure(WCMConfig * config, WCMNotify notify);
static void WcmEditScanExParam(void * bssid, void * essid, u32 option);
static void WcmInitOption(void);
static u16 WcmGetNextScanChannel(u16 channel);
static void WcmNotify(s16 result, void * para0, void * para1, s32 para2);
static void WcmNotifyEx(s16 notify, s16 result, void * para0, void * para1, s32 para2);
static void WcmSetPhase(u32 phase);
static void WcmKeepAliveAlarm(void * arg);
static u32 WcmCountBits(u32 arg);
static u32 WcmCountLeadingZero(u32 arg);

static void WcmWmReset(void);

static void WcmWmcbIndication(void * arg);
static void WcmWmcbCommon(void * arg);
static void WcmWmcbScanEx(void * arg);
static void WcmWmcbEndScan(void * arg);
static void WcmWmcbConnect(void * arg);
static void WcmWmcbDisconnect(void * arg);
static void WcmWmcbStartDCF(void * arg);
static void WcmWmcbEndDCF(void * arg);
static void WcmWmcbReset(void * arg);

#ifndef SDK_ASSERT_ON_COMPILE
#define SDK_ASSERT_ON_COMPILE(expr) extern assert_on_compile ## #__LINE__(char a[(expr) ? 1 : -1])
#endif

s32 WCM_Init (void * buf, s32 len) {
    OSIntrMode e = OS_DisableInterrupts();

    SDK_ASSERT_ON_COMPILE(sizeof(WCMWork) <= WCM_WORK_SIZE);

    if (wcmw != NULL) {
        WCMi_Warning(wcmWarningText_AlreadyInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if (buf == NULL) {
        WCMi_Warning(wcmWarningText_IllegalParam, "buf");
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if ((u32)buf & 0x01f) {
        WCMi_Warning(wcmWarningText_IllegalParam, "buf");
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if (len < sizeof(WCMWork)) {
        WCMi_Warning(wcmWarningText_IllegalParam, "len");
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_NOT_ENOUGH_MEM;
    }

    wcmw = (WCMWork *)buf;
    wcmw->phase = WCM_PHASE_WAIT;
    wcmw->notifyId = WCM_NOTIFY_COMMON;
    wcmw->maxScanTime = 0;
    wcmw->apListLock = WCM_APLIST_UNLOCK;
    wcmw->resetting = WCM_RESETTING_OFF;
    wcmw->authId = 0;
    wcmw->wlStatusOnConnectFail = 0x0000;
    WcmInitOption();
    WCMi_InitCpsif();

    if (!OS_IsTickAvailable()) {
        OS_InitTick();
    }

    if (!OS_IsAlarmAvailable()) {
        OS_InitAlarm();
    }

    OS_CreateAlarm(&(wcmw->keepAliveAlarm));

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_SUCCESS;
}

s32 WCM_Finish (void) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if (wcmw->phase != WCM_PHASE_WAIT) {
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    wcmw = NULL;

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_SUCCESS;
}

s32 WCM_StartupAsync (WCMConfig * config, WCMNotify notify) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_WAIT:
        WcmConfigure(config, notify);
        break;

    case WCM_PHASE_WAIT_TO_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    {
        WMErrCode wmResult;

        wmResult = WM_Init(wcmw->wmWork, (u16)wcmw->config.dmano);
        switch (wmResult) {
        case WM_ERRCODE_SUCCESS:
            break;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;

        case WM_ERRCODE_WM_DISABLE:
            WCMi_Warning(wcmWarningText_UnsuitableArm7);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_WMDISABLE;

        case WM_ERRCODE_INVALID_PARAM:
        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }

        if (0 == WM_GetAllowedChannel()) {
            if (WM_ERRCODE_SUCCESS != WM_Finish()) {
                WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                (void)OS_RestoreInterrupts(e);
                return WCM_RESULT_FATAL_ERROR;
            }

            WCMi_Warning(wcmWarningText_WirelessForbidden);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_WMDISABLE;
        }

        wmResult = WM_SetIndCallback(WcmWmcbIndication);
        if (wmResult != WM_ERRCODE_SUCCESS) {
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }

        wmResult = WM_Enable(WcmWmcbCommon);
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_WAIT_TO_IDLE);
            wcmw->notifyId = WCM_NOTIFY_STARTUP;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_Enable", wmResult);
            WcmSetPhase(WCM_PHASE_IRREGULAR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FAILURE;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_CleanupAsync (void) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_IDLE:
        break;

    case WCM_PHASE_IDLE_TO_WAIT:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_WAIT:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    {
        WMErrCode wmResult;

        wmResult = WM_PowerOff(WcmWmcbCommon);
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_IDLE_TO_WAIT);
            wcmw->notifyId = WCM_NOTIFY_CLEANUP;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_PowerOff", wmResult);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_REJECT;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_SearchAsync (void * bssid, void * essid, u32 option) {
    if ((bssid == NULL) || (essid == NULL)) {
        return WCM_EndSearchAsync();
    }

    return WCM_BeginSearchAsync(bssid, essid, option);
}

s32 WCM_BeginSearchAsync (void * bssid, void * essid, u32 option) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    {
        WMErrCode wmResult;

        switch (wcmw->phase) {
        case WCM_PHASE_IDLE:
            break;

        case WCM_PHASE_IDLE_TO_SEARCH:
            WcmEditScanExParam(bssid, essid, option);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_PROGRESS;

        case WCM_PHASE_SEARCH:
            WcmEditScanExParam(bssid, essid, option);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_SUCCESS;

        default:
            WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FAILURE;
        }

        WcmEditScanExParam(bssid, essid, option);
        DC_InvalidateRange(wcmw->scanExParam.scanBuf, wcmw->scanExParam.scanBufSize);
        wcmw->scanCount++;
        wmResult = WM_StartScanEx(WcmWmcbScanEx, &(wcmw->scanExParam));
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_IDLE_TO_SEARCH);
            wcmw->notifyId = WCM_NOTIFY_BEGIN_SEARCH;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_StartScanEx", wmResult);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_REJECT;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_EndSearchAsync (void) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_SEARCH:
        WcmSetPhase(WCM_PHASE_SEARCH_TO_IDLE);
        wcmw->notifyId = WCM_NOTIFY_END_SEARCH;
        break;

    case WCM_PHASE_SEARCH_TO_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_ConnectAsync (void * bssDesc, void * wepDesc, u32 option) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_IDLE:

        if (bssDesc == NULL) {
            WCMi_Warning(wcmWarningText_IllegalParam, "bssDesc");
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FAILURE;
        }

        if (((WMBssDesc *)bssDesc)->gameInfoLength > 0) {
            WCMi_Warning(wcmWarningText_IllegalParam, "bssDesc");
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FAILURE;
        }

        if (wepDesc != NULL) {
            if ((((WCMWepDesc *)wepDesc)->mode >= 4) || (((WCMWepDesc *)wepDesc)->keyId >= 4)) {
                WCMi_Warning(wcmWarningText_IllegalParam, "wepDesc");
                (void)OS_RestoreInterrupts(e);
                return WCM_RESULT_FAILURE;
            }

            wcmw->wepDesc.mode = ((WCMWepDesc *)wepDesc)->mode;
            wcmw->wepDesc.keyId = ((WCMWepDesc *)wepDesc)->keyId;
            if (wcmw->wepDesc.mode == WCM_WEPMODE_NONE) {
                MI_CpuClear8(wcmw->wepDesc.key, WM_SIZE_WEPKEY);
            } else {
                MI_CpuCopy8(((WCMWepDesc *)wepDesc)->key, wcmw->wepDesc.key, WM_SIZE_WEPKEY);
            }
        } else {
            MI_CpuClear8(&(wcmw->wepDesc), sizeof(WCMWepDesc));
        }

        MI_CpuCopy8(bssDesc, &(wcmw->bssDesc), sizeof(WMBssDesc));
#if 0

        {
            int i;
            u8 * pDump = (u8 *)(&(wcmw->bssDesc));

            for (i = 0; i < 192; i++) {
                if (i % 16) {
                    OS_TPrintf(" ");
                }

                OS_TPrintf("%02X", pDump[i]);
                if ((i % 16) == 15) {
                    OS_TPrintf("\n");
                }
            }
        }
#endif

        wcmw->bssDesc.rateSet.support = (u16)(WCM_ADDITIONAL_RATESET | wcmw->bssDesc.rateSet.basic);
        (void)WCM_UpdateOption(option);
        break;

    case WCM_PHASE_IDLE_TO_DCF:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_DCF:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    {
        WMErrCode wmResult;

        wmResult = WM_SetLifeTime(WcmWmcbCommon, 0xffff, WCM_CAM_LIFETIME, 0xffff, 0xffff);
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_IDLE_TO_DCF);
            wcmw->notifyId = WCM_NOTIFY_CONNECT;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_SetLifeTime", wmResult);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_REJECT;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_DisconnectAsync (void) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_DCF:
        break;

    case WCM_PHASE_DCF_TO_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_IDLE:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if (wcmw->resetting == WCM_RESETTING_ON) {
        WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
        wcmw->notifyId = WCM_NOTIFY_DISCONNECT;
    } else {
        WMErrCode wmResult;

        wmResult = WM_EndDCF(WcmWmcbEndDCF);
        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
            wcmw->notifyId = WCM_NOTIFY_DISCONNECT;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_EndDCF", wmResult);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_REJECT;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_TerminateAsync (void) {
    OSIntrMode e = OS_DisableInterrupts();

    if (wcmw == NULL) {
        WCMi_Warning(wcmWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    switch (wcmw->phase) {
    case WCM_PHASE_IDLE:
    case WCM_PHASE_DCF:
    case WCM_PHASE_IRREGULAR:
        break;

    case WCM_PHASE_TERMINATING:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_PROGRESS;

    case WCM_PHASE_WAIT:
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_SUCCESS;

    case WCM_PHASE_SEARCH:
        WcmSetPhase(WCM_PHASE_TERMINATING);
        wcmw->notifyId = WCM_NOTIFY_TERMINATE;
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_ACCEPT;

    case WCM_PHASE_WAIT_TO_IDLE:
    case WCM_PHASE_IDLE_TO_WAIT:
    case WCM_PHASE_IDLE_TO_SEARCH:
    case WCM_PHASE_SEARCH_TO_IDLE:
    case WCM_PHASE_IDLE_TO_DCF:
    case WCM_PHASE_DCF_TO_IDLE:
    case WCM_PHASE_FATAL_ERROR:
    default:
        WCMi_Warning(wcmWarningText_IllegalPhase, wcmw->phase);
        (void)OS_RestoreInterrupts(e);
        return WCM_RESULT_FAILURE;
    }

    if (wcmw->resetting == WCM_RESETTING_ON) {
        WcmSetPhase(WCM_PHASE_TERMINATING);
        wcmw->notifyId = WCM_NOTIFY_TERMINATE;
    } else {
        WMStatus * ws;
        u16 wmState;
        WMErrCode wmResult;

        ws = (WMStatus *)WMi_GetStatusAddress();
        DC_InvalidateRange(ws, 2);
        wmState = ws->state;

        switch (wmState) {
        case WM_STATE_READY:

            wmResult = WM_Finish();
            if (wmResult == WM_ERRCODE_SUCCESS) {
                WcmSetPhase(WCM_PHASE_WAIT);
                wcmw->notifyId = WCM_NOTIFY_COMMON;
                (void)OS_RestoreInterrupts(e);
                return WCM_RESULT_SUCCESS;
            }
            break;

        case WM_STATE_STOP:

            wmResult = WM_Disable(WcmWmcbCommon);
            break;

        case WM_STATE_IDLE:

            wmResult = WM_PowerOff(WcmWmcbCommon);
            break;

        default:

            wcmw->resetting = WCM_RESETTING_ON;

            wmResult = WM_Reset(WcmWmcbReset);
        }

        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            WcmSetPhase(WCM_PHASE_TERMINATING);
            wcmw->notifyId = WCM_NOTIFY_TERMINATE;
            break;

        case WM_ERRCODE_FIFO_ERROR:
            WCMi_Printf(wcmReportText_WmSyncError, "WM_***", wmResult);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_REJECT;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            (void)OS_RestoreInterrupts(e);
            return WCM_RESULT_FATAL_ERROR;
        }
    }

    (void)OS_RestoreInterrupts(e);
    return WCM_RESULT_ACCEPT;
}

s32 WCM_GetPhase (void) {
    OSIntrMode e = OS_DisableInterrupts();
    s32 phase = WCM_PHASE_NULL;

    if (wcmw != NULL) {
        phase = (s32)(wcmw->phase);
    }

    (void)OS_RestoreInterrupts(e);
    return phase;
}

u32 WCM_UpdateOption (u32 option) {
    OSIntrMode e = OS_DisableInterrupts();
    u32 filter = 0;
    u32 old_option = wcmw->option;

    if (wcmw == NULL) {
        (void)OS_RestoreInterrupts(e);
        return 0;
    }

    if (option & WCM_OPTION_TEST_CHANNEL) {
        filter |= WCM_OPTION_FILTER_CHANNEL;
        if (!(option & WCM_OPTION_FILTER_CHANNEL)) {
            option |= WCM_OPTION_CHANNEL_RDC;
        }
    }

    if (option & WCM_OPTION_TEST_POWER) {
        filter |= WCM_OPTION_FILTER_POWER;
    }

    if (option & WCM_OPTION_TEST_AUTH) {
        filter |= WCM_OPTION_FILTER_AUTH;
    }

    if (option & WCM_OPTION_TEST_SCANTYPE) {
        filter |= WCM_OPTION_FILTER_SCANTYPE;
    }

    if (option & WCM_OPTION_TEST_ROUNDSCAN) {
        filter |= WCM_OPTION_FILTER_ROUNDSCAN;
    }

    wcmw->option = (u32)((old_option & ~filter) | option);

    (void)OS_RestoreInterrupts(e);
    return old_option;
}

void WCM_SetChannelScanTime (u16 msec) {
    if (wcmw != NULL) {
        if ((msec >= 10) && (msec <= 1000)) {
            wcmw->maxScanTime = msec;
        } else {
            wcmw->maxScanTime = 0;
        }
    }
}

WCMWork * WCMi_GetSystemWork (void) {
    return wcmw;
}

static void WcmConfigure (WCMConfig * config, WCMNotify notify) {
    if (config == NULL) {
        wcmw->config.dmano = 3;
        wcmw->config.pbdbuffer = NULL;
        wcmw->config.nbdbuffer = 0;
        wcmw->config.nbdmode = 0;
    } else {
        if (config->dmano & ~(0x03)) {
            WCMi_Warning(wcmWarningText_IllegalParam, "config->dmano");
        }

        wcmw->config.dmano = (config->dmano & 0x03);

        if ((((4 - ((u32)(config->pbdbuffer) & 0x03)) % 4) + sizeof(WCMApListHeader)) > config->nbdbuffer) {
            wcmw->config.pbdbuffer = NULL;
            wcmw->config.nbdbuffer = 0;
        } else {
            wcmw->config.pbdbuffer = (void *)WCM_ROUNDUP4((u32)(config->pbdbuffer));
            wcmw->config.nbdbuffer = config->nbdbuffer - (s32)((4 - ((u32)(config->pbdbuffer) & 0x03)) % 4);
            MI_CpuClear8(wcmw->config.pbdbuffer, (u32)(wcmw->config.nbdbuffer));
        }

        wcmw->config.nbdmode = config->nbdmode;
    }

    wcmw->notify = notify;
}

static void WcmEditScanExParam (void * bssid, void * essid, u32 option) {
    (void)WCM_UpdateOption(option);
    wcmw->scanExParam.scanBuf = (WMBssDesc *)wcmw->recvBuf;
    wcmw->scanExParam.scanBufSize = WM_SIZE_SCAN_EX_BUF;
    wcmw->scanExParam.channelList = (u16)((0x0001 << WcmGetNextScanChannel(0)) >> 1);
    wcmw->scanExParam.maxChannelTime = ((wcmw->maxScanTime != 0) ? wcmw->maxScanTime : WM_GetDispersionScanPeriod());
    wcmw->scanExParam.scanType = (u16)(((wcmw->option & WCM_OPTION_MASK_SCANTYPE) == WCM_OPTION_SCANTYPE_ACTIVE) ? WM_SCANTYPE_ACTIVE : WM_SCANTYPE_PASSIVE);
    if (bssid == NULL) {
        MI_CpuCopy8(WCM_Bssid_Any, wcmw->scanExParam.bssid, WCM_BSSID_SIZE);
    } else {
        MI_CpuCopy8(bssid, wcmw->scanExParam.bssid, WCM_BSSID_SIZE);
    }

    if ((essid == NULL) || (essid == (void *)WCM_Essid_Any)) {
        MI_CpuCopy8(WCM_Essid_Any, wcmw->scanExParam.ssid, WCM_ESSID_SIZE);
        wcmw->scanExParam.ssidLength = 0;
    } else {
        s32 len;

        MI_CpuCopy8(essid, wcmw->scanExParam.ssid, WCM_ESSID_SIZE);
        for (len = 0; len < WCM_ESSID_SIZE; len++) {
            if (((u8 *)essid)[len] == '\0') {
                break;
            }
        }

        wcmw->scanExParam.ssidLength = (u16)len;
    }

    wcmw->scanCount = 0;
}

static void WcmInitOption (void) {
    wcmw->option = WCM_OPTION_CHANNEL_RDC |
                   WCM_OPTION_POWER_SAVE |
                   WCM_OPTION_AUTH_OPENSYSTEM |
                   WCM_OPTION_SCANTYPE_PASSIVE |
                   WCM_OPTION_ROUNDSCAN_IGNORE;
}

static u16 WcmGetNextScanChannel (u16 channel) {
    s32 i;

    for (i = 0; i < 13; i++) {
        if (wcmw->option & (0x0001 << (((channel + i) % 13) + 1))) {
            break;
        }
    }

    return (u16)(((channel + i) % 13) + 1);
}

static void WcmNotify (s16 result, void * para0, void * para1, s32 para2) {
    s16 notifyId = wcmw->notifyId;

    wcmw->notifyId = WCM_NOTIFY_COMMON;
    WcmNotifyEx(notifyId, result, para0, para1, para2);
}

static void WcmNotifyEx (s16 notify, s16 result, void * para0, void * para1, s32 para2) {
    if (wcmw->notify) {
        WCMNotice notice;

        notice.notify = notify;
        notice.result = result;
        notice.parameter[0].p = para0;
        notice.parameter[1].p = para1;
        notice.parameter[2].n = para2;
        wcmw->notify(&notice);
    }
}

static void WcmSetPhase (u32 phase) {
    OSIntrMode e = OS_DisableInterrupts();

    if ((wcmw->phase == WCM_PHASE_DCF) && (phase != WCM_PHASE_DCF)) {
        OS_CancelAlarm(&(wcmw->keepAliveAlarm));
    }

    if (wcmw->phase != WCM_PHASE_FATAL_ERROR) {
        wcmw->phase = phase;
    }

    if (phase == WCM_PHASE_DCF) {
        OS_SetAlarm(&(wcmw->keepAliveAlarm), OS_SecondsToTicks(WCM_KEEP_ALIVE_SPAN), WcmKeepAliveAlarm, NULL);
    }
    (void)OS_RestoreInterrupts(e);
}

void WCMi_ResetKeepAliveAlarm (void) {
    OSIntrMode e = OS_DisableInterrupts();

    OS_CancelAlarm(&(wcmw->keepAliveAlarm));
    if (wcmw->phase == WCM_PHASE_DCF) {
        OS_SetAlarm(&(wcmw->keepAliveAlarm), OS_SecondsToTicks(WCM_KEEP_ALIVE_SPAN), WcmKeepAliveAlarm, NULL);
    }
    (void)OS_RestoreInterrupts(e);
}

static void WcmKeepAliveAlarm (void * arg) {
#pragma unused(arg)

    WCMi_CpsifSendNullPacket();
    WCMi_ResetKeepAliveAlarm();
}

#include <nitro/code32.h>

static asm u32 WcmCountBits (u32 arg) {
    mov r1, r0
    mov r0, #0
    mov r3, #1
 @loop:
    clz r2, r1
    rsbs r2, r2, #31
    bcc @bxcc1
    b @bxcc2
 @bxcc1:
    bx lr
 @bxcc2:
    bic r1, r1, r3, LSL r2
    add r0, r0, #1
    b @loop
}

static asm u32 WcmCountLeadingZero (u32 arg) {
    clz r0, r0
    bx lr
}
#include <nitro/codereset.h>

static void WcmWmReset (void) {
    WMErrCode wmResult;

    if (wcmw->resetting == WCM_RESETTING_OFF) {
        wcmw->resetting = WCM_RESETTING_ON;

        wmResult = WM_Reset(WcmWmcbReset);
        if (wmResult != WM_ERRCODE_OPERATING) {
            WCMi_Printf(wcmReportText_WmSyncError, "WM_Reset", wmResult);
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 1552);
        }
    }
}

static void WcmWmcbIndication (void * arg) {
    WMIndCallback * cb = (WMIndCallback *)arg;

    if (cb->errcode == WM_ERRCODE_FIFO_ERROR) {
        if ((cb->state == WM_STATECODE_FIFO_ERROR) && (cb->reason == WM_APIID_AUTO_DISCONNECT)) {
            switch (wcmw->phase) {
            case WCM_PHASE_IDLE_TO_DCF:
                WcmSetPhase(WCM_PHASE_IRREGULAR);
                break;

            case WCM_PHASE_DCF:
            case WCM_PHASE_IRREGULAR:
                WcmWmReset();
                break;

            case WCM_PHASE_DCF_TO_IDLE:
                WcmSetPhase(WCM_PHASE_IRREGULAR);
                break;
            }
        }
    }
}

static void WcmWmcbCommon (void * arg) {
    WMCallback * cb = (WMCallback *)arg;
    WMErrCode wmResult = WM_ERRCODE_MAX;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:

        switch (cb->apiid) {
        case WM_APIID_ENABLE:

            wmResult = WM_PowerOn(WcmWmcbCommon);
            break;

        case WM_APIID_DISABLE:

            wmResult = WM_Finish();
            switch (wmResult) {
            case WM_ERRCODE_SUCCESS:
                WcmSetPhase(WCM_PHASE_WAIT);
                WcmNotify(WCM_RESULT_SUCCESS, 0, 0, 1635);
                break;

            case WM_ERRCODE_WM_DISABLE:
                WCMi_Warning(wcmWarningText_InvalidWmState);

            default:
                WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 1644);
            }

            return;

        case WM_APIID_POWER_ON:
            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_SUCCESS, 0, 0, 1651);
            return;

        case WM_APIID_POWER_OFF:

            wmResult = WM_Disable(WcmWmcbCommon);
            break;

        case WM_APIID_SET_LIFETIME:

            wmResult = WM_SetBeaconIndication(WcmWmcbCommon, 0);
            break;

        case WM_APIID_SET_BEACON_IND:

            wmResult = WM_SetWEPKeyEx(
                WcmWmcbCommon, (u16)(wcmw->wepDesc.mode), (u16)(wcmw->wepDesc.keyId),
                (const u8 *)(wcmw->wepDesc.key)
            );
            break;

        case WM_APIID_SET_WEPKEY_EX:

            wmResult = WM_StartConnectEx(
                WcmWmcbConnect, &(wcmw->bssDesc), NULL,
                ((wcmw->option & WCM_OPTION_MASK_POWER) == WCM_OPTION_POWER_ACTIVE ? FALSE : TRUE),
                ((wcmw->option & WCM_OPTION_MASK_AUTH) == WCM_OPTION_AUTH_SHAREDKEY ? (u16)WM_AUTHMODE_SHARED_KEY :
                 (u16)WM_AUTHMODE_OPEN_SYSTEM)
            );
            break;
        }

        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            break;

        case WM_ERRCODE_FIFO_ERROR:
#if WCM_DEBUG
            switch (cb->apiid) {
            case WM_APIID_ENABLE:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_PowerOn", wmResult);
                break;

            case WM_APIID_POWER_OFF:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_Disable", wmResult);
                break;

            case WM_APIID_SET_LIFETIME:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_SetBeaconIndication", wmResult);
                break;

            case WM_APIID_SET_BEACON_IND:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_SetWEPKeyEx", wmResult);
                break;

            case WM_APIID_SET_WEPKEY_EX:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_StartConnectEx", wmResult);
                break;
            }
#endif
            WcmSetPhase(WCM_PHASE_IRREGULAR);
            WcmNotify(WCM_RESULT_FAILURE, (wcmw->notifyId == WCM_NOTIFY_CONNECT ? &(wcmw->bssDesc) : 0), 0, 1711);
            break;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, (wcmw->notifyId == WCM_NOTIFY_CONNECT ? &(wcmw->bssDesc) : 0), 0, 1720);
        }
        break;

    case WM_ERRCODE_FAILED:
#if WCM_DEBUG
        switch (cb->apiid) {
        case WM_APIID_ENABLE:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_Enable", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_DISABLE:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_Disable", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_POWER_ON:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_PowerOn", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_POWER_OFF:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_PowerOff", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_SET_LIFETIME:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_SetLifeTime", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_SET_BEACON_IND:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_SetBeaconIndication", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;

        case WM_APIID_SET_WEPKEY_EX:
            WCMi_Printf(wcmReportText_WmAsyncError, "WM_SetWEPKeyEx", cb->errcode, cb->wlCmdID, cb->wlResult);
            break;
        }
#endif
        WcmSetPhase(WCM_PHASE_IRREGULAR);
        WcmNotify(WCM_RESULT_FAILURE, (wcmw->notifyId == WCM_NOTIFY_CONNECT ? &(wcmw->bssDesc) : 0), 0, 1758);
        break;

    case WM_ERRCODE_ILLEGAL_STATE:
    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, (wcmw->notifyId == WCM_NOTIFY_CONNECT ? &(wcmw->bssDesc) : 0), 0, 1768);
    }
}

static void WcmWmcbScanEx (void * arg) {
    WMStartScanExCallback * cb = (WMStartScanExCallback *)arg;
    WMErrCode wmResult = WM_ERRCODE_MAX;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:

        if (wcmw->phase == WCM_PHASE_IDLE_TO_SEARCH) {
            WcmSetPhase(WCM_PHASE_SEARCH);

            WcmNotify(WCM_RESULT_SUCCESS, 0, 0, 1796);
        }

        switch (wcmw->phase) {
        case WCM_PHASE_SEARCH:
            wcmw->notifyId = WCM_NOTIFY_FOUND_AP;
            if (cb->state == WM_STATECODE_PARENT_FOUND) {
                s32 i;

                DC_InvalidateRange(wcmw->scanExParam.scanBuf, wcmw->scanExParam.scanBufSize);
                for (i = 0; i < cb->bssDescCount; i++) {
                    WCMi_EntryApList(cb->bssDesc[i], cb->linkLevel[i]);

                    WcmNotifyEx(WCM_NOTIFY_FOUND_AP, WCM_RESULT_SUCCESS, cb->bssDesc[i], (void *)cb, 1818);
                }
            }

            if ((wcmw->option & WCM_OPTION_MASK_ROUNDSCAN) == WCM_OPTION_ROUNDSCAN_NOTIFY) {
                u32 channels = WcmCountBits(wcmw->option & WCM_OPTION_FILTER_CHANNEL);

                if (channels > 0) {
                    if ((wcmw->scanCount % channels) == 0) {
                        WcmNotifyEx(WCM_NOTIFY_SEARCH_AROUND, WCM_RESULT_SUCCESS, (void *)(wcmw->scanCount), 0, 1832);
                    }
                }
            }

            wcmw->scanExParam.channelList = (u16)((0x0001 << WcmGetNextScanChannel((u16)(32 - WcmCountLeadingZero(cb->channelList)))) >> 1);
            DC_InvalidateRange(wcmw->scanExParam.scanBuf, wcmw->scanExParam.scanBufSize);
            wcmw->scanCount++;
            wmResult = WM_StartScanEx(WcmWmcbScanEx, &(wcmw->scanExParam));
            break;

        case WCM_PHASE_SEARCH_TO_IDLE:

            wmResult = WM_EndScan(WcmWmcbEndScan);
            break;

        case WCM_PHASE_TERMINATING:

            WcmWmReset();
            return;
        }

        switch (wmResult) {
        case WM_ERRCODE_OPERATING:
            break;

        case WM_ERRCODE_FIFO_ERROR:
#if WCM_DEBUG
            switch (wcmw->phase) {
            case WCM_PHASE_SEARCH:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_StartScanEx", wmResult);
                break;

            case WCM_PHASE_SEARCH_TO_IDLE:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_EndScan", wmResult);
                break;
            }
#endif
            WcmSetPhase(WCM_PHASE_IRREGULAR);
            WcmNotify(WCM_RESULT_FAILURE, 0, 0, 1875);
            break;

        case WM_ERRCODE_ILLEGAL_STATE:
            WCMi_Warning(wcmWarningText_InvalidWmState);

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 1884);
        }
        break;

    case WM_ERRCODE_FAILED:

        WCMi_Printf(wcmReportText_WmAsyncError, "WM_StartScanEx", cb->errcode, cb->wlCmdID, cb->wlResult);
        WcmWmReset();
        break;

    case WM_ERRCODE_ILLEGAL_STATE:
    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 1901);
    }
}

static void WcmWmcbEndScan (void * arg) {
    WMCallback * cb = (WMCallback *)arg;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:
        WcmSetPhase(WCM_PHASE_IDLE);
        WcmNotify(WCM_RESULT_SUCCESS, 0, 0, 1923);
        break;

    case WM_ERRCODE_FAILED:

        WCMi_Printf(wcmReportText_WmAsyncError, "WM_EndScan", cb->errcode, cb->wlCmdID, cb->wlResult);
        WcmWmReset();
        break;

    case WM_ERRCODE_ILLEGAL_STATE:
    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 1939);
    }
}

static void WcmWmcbConnect (void * arg) {
    WMStartConnectCallback * cb = (WMStartConnectCallback *)arg;
    WMErrCode wmResult = WM_ERRCODE_MAX;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:
        switch (cb->state) {
        case WM_STATECODE_DISCONNECTED:
        case WM_STATECODE_BEACON_LOST:
            switch (wcmw->phase) {
            case WCM_PHASE_DCF_TO_IDLE:

                wcmw->authId = 0;

            case WCM_PHASE_IDLE_TO_DCF:
                WcmSetPhase(WCM_PHASE_IRREGULAR);
                break;

            case WCM_PHASE_DCF:

                wcmw->authId = 0;

                wcmw->notifyId = WCM_NOTIFY_DISCONNECT;

            case WCM_PHASE_IRREGULAR:
                WcmWmReset();
                break;
            }
            break;

#if SDK_VERSION_MAJOR > 3 || (SDK_VERSION_MAJOR == 3 && SDK_VERSION_MINOR > 0) || \
            (SDK_VERSION_MAJOR == 3 && SDK_VERSION_MINOR == 0 && SDK_VERSION_RELSTEP >= 20100)

        case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
            break;
#endif

        case WM_STATECODE_CONNECT_START:
            break;

        case WM_STATECODE_CONNECTED:
            if (wcmw->phase == WCM_PHASE_IRREGULAR) {
                WCMi_Printf(wcmReportText_WmDisconnected, "WM_StartConnectEx");
                WcmSetPhase(WCM_PHASE_IDLE_TO_DCF);
                WcmWmReset();
            } else {
                if ((WCM_AID_MIN <= cb->aid) && (cb->aid <= WCM_AID_MAX)) {
                    wcmw->authId = cb->aid;

                    wmResult = WM_StartDCF(WcmWmcbStartDCF, (WMDcfRecvBuf *)(wcmw->recvBuf), WCM_DCF_RECV_BUF_SIZE);
                    switch (wmResult) {
                    case WM_ERRCODE_OPERATING:
                        break;

                    case WM_ERRCODE_FIFO_ERROR:
                        WCMi_Printf(wcmReportText_WmSyncError, "WM_StartDCF", wmResult);
                        WcmSetPhase(WCM_PHASE_IRREGULAR);
                        WcmNotify(WCM_RESULT_FAILURE, &(wcmw->bssDesc), 0, 2029);
                        break;

                    case WM_ERRCODE_ILLEGAL_STATE:
                        WCMi_Warning(wcmWarningText_InvalidWmState);

                    default:
                        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2038);
                    }
                } else {
                    WCMi_Printf(wcmReportText_InvalidAid, "WM_StartConnectEx");
                    WcmWmReset();
                }
            }
            break;

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), (void *)(cb->state), 2052);
        }
        break;

    case WM_ERRCODE_FAILED:
        wcmw->wlStatusOnConnectFail = cb->wlStatus;

    case WM_ERRCODE_NO_ENTRY:
    case WM_ERRCODE_INVALID_PARAM:
    case WM_ERRCODE_OVER_MAX_ENTRY:

        WCMi_Printf(wcmReportText_WmAsyncError, "WM_StartConnectEx", cb->errcode, cb->wlCmdID, cb->wlResult);
        WcmSetPhase(WCM_PHASE_IDLE_TO_DCF);
        WcmWmReset();
        break;

    case WM_ERRCODE_ILLEGAL_STATE:
    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2075);
    }
}

static void WcmWmcbDisconnect (void * arg) {
    WMCallback * cb = (WMCallback *)arg;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:
        if (wcmw->phase == WCM_PHASE_IRREGULAR) {
            WCMi_Printf(wcmReportText_WmDisconnected, "WM_Disconnect");
            WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
            WcmWmReset();
        } else {
            wcmw->authId = 0;

            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_SUCCESS, &(wcmw->bssDesc), 0, 2109);
        }
        break;

    case WM_ERRCODE_FAILED:
    case WM_ERRCODE_ILLEGAL_STATE:

        WCMi_Printf(wcmReportText_WmAsyncError, "WM_Disconnect", cb->errcode, cb->wlCmdID, cb->wlResult);
        WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
        WcmWmReset();
        break;

    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2127);
    }
}

static void WcmWmcbStartDCF (void * arg) {
    WMStartDCFCallback * cb = (WMStartDCFCallback *)arg;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:
        switch (cb->state) {
        case WM_STATECODE_DCF_START:
            if (wcmw->phase == WCM_PHASE_IRREGULAR) {
                WCMi_Printf(wcmReportText_WmDisconnected, "WM_StartDCF");
                WcmSetPhase(WCM_PHASE_IDLE_TO_DCF);
                WcmWmReset();
            } else {
                WcmSetPhase(WCM_PHASE_DCF);
                WcmNotify(WCM_RESULT_SUCCESS, &(wcmw->bssDesc), 0, 2162);
            }
            break;

        case WM_STATECODE_DCF_IND:

            WCMi_ShelterRssi((u8)(cb->recvBuf->rate_rssi >> 8));

            DC_InvalidateRange(cb->recvBuf, WCM_DCF_RECV_BUF_SIZE);
            WCMi_CpsifRecvCallback(cb->recvBuf);
            break;

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), (void *)(cb->state), 2177);
        }
        break;

    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2188);
    }
}

static void WcmWmcbEndDCF (void * arg) {
    WMCallback * cb = (WMCallback *)arg;
    WMErrCode wmResult = WM_ERRCODE_MAX;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:
        if (wcmw->phase == WCM_PHASE_IRREGULAR) {
            WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
            WcmWmReset();
        } else {
            wmResult = WM_Disconnect(WcmWmcbDisconnect, 0);
            switch (wmResult) {
            case WM_ERRCODE_OPERATING:
                break;

            case WM_ERRCODE_FIFO_ERROR:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_Disconnect", wmResult);
                WcmSetPhase(WCM_PHASE_IRREGULAR);
                WcmNotify(WCM_RESULT_FAILURE, &(wcmw->bssDesc), 0, 2228);
                break;

            case WM_ERRCODE_ILLEGAL_STATE:

                WCMi_Printf(wcmReportText_WmSyncError, "WM_Disconnect", wmResult);
                WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
                WcmWmReset();
                break;

            default:
                WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2240);
            }
        }
        break;

    case WM_ERRCODE_FAILED:
    case WM_ERRCODE_ILLEGAL_STATE:

        WCMi_Printf(wcmReportText_WmAsyncError, "WM_EndDCF", cb->errcode, cb->wlCmdID, cb->wlResult);
        WcmSetPhase(WCM_PHASE_DCF_TO_IDLE);
        WcmWmReset();
        break;

    case WM_ERRCODE_WM_DISABLE:
        WCMi_Warning(wcmWarningText_InvalidWmState);

    default:
        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), 0, 2259);
    }
}

static void WcmWmcbReset (void * arg) {
    WMCallback * cb = (WMCallback *)arg;
    WMErrCode wmResult = WM_ERRCODE_MAX;

    switch (cb->errcode) {
    case WM_ERRCODE_SUCCESS:

        wcmw->resetting = WCM_RESETTING_OFF;

        wcmw->authId = 0;

        switch (wcmw->phase) {
        case WCM_PHASE_IDLE_TO_SEARCH:
        case WCM_PHASE_SEARCH:

            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_FAILURE, 0, 0, 2293);
            break;

        case WCM_PHASE_SEARCH_TO_IDLE:

            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_SUCCESS, 0, 0, 2299);
            break;

        case WCM_PHASE_IDLE_TO_DCF:

        {
            u16 wlStatus = wcmw->wlStatusOnConnectFail;

            wcmw->wlStatusOnConnectFail = 0x0000;
#ifdef WCM_CAMOUFLAGE_RATESET

            if (wlStatus == WCM_CONNECT_STATUSCODE_ILLEGAL_RATESET) {
                if ((wcmw->bssDesc.rateSet.support & WCM_CAMOUFLAGE_RATESET) != WCM_CAMOUFLAGE_RATESET) {
                    WCMi_Printf(wcmReportText_SupportRateset, wcmw->bssDesc.ssid);
                    wcmw->bssDesc.rateSet.support |= WCM_CAMOUFLAGE_RATESET;

                    wmResult = WM_StartConnectEx(
                        WcmWmcbConnect, &(wcmw->bssDesc), NULL,
                        ((wcmw->option & WCM_OPTION_MASK_POWER) == WCM_OPTION_POWER_ACTIVE ? FALSE : TRUE),
                        ((wcmw->option & WCM_OPTION_MASK_AUTH) == WCM_OPTION_AUTH_SHAREDKEY ?
                         (u16)WM_AUTHMODE_SHARED_KEY : (u16)WM_AUTHMODE_OPEN_SYSTEM
                        )
                    );

                    switch (wmResult) {
                    case WM_ERRCODE_OPERATING:
                        break;

                    case WM_ERRCODE_FIFO_ERROR:
                        WcmSetPhase(WCM_PHASE_IRREGULAR);
                        WcmNotify(WCM_RESULT_FAILURE, &(wcmw->bssDesc), (void *)wlStatus, 2332);
                        break;

                    case WM_ERRCODE_ILLEGAL_STATE:
                        WCMi_Warning(wcmWarningText_InvalidWmState);

                    default:
                        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                        WcmNotify(WCM_RESULT_FATAL_ERROR, &(wcmw->bssDesc), (void *)wlStatus, 2341);
                    }

                    return;
                }
            }
#endif
            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_FAILURE, &(wcmw->bssDesc), (void *)wlStatus, 2349);
        }
        break;

        case WCM_PHASE_DCF:
        case WCM_PHASE_IRREGULAR:

            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_SUCCESS, &(wcmw->bssDesc), (void *)1, 2357);

            break;

        case WCM_PHASE_DCF_TO_IDLE:

            WcmSetPhase(WCM_PHASE_IDLE);
            WcmNotify(WCM_RESULT_SUCCESS, &(wcmw->bssDesc), 0, 2364);
            break;

        case WCM_PHASE_TERMINATING:

            wmResult = WM_PowerOff(WcmWmcbCommon);
            switch (wmResult) {
            case WM_ERRCODE_OPERATING:
                break;

            case WM_ERRCODE_FIFO_ERROR:
                WCMi_Printf(wcmReportText_WmSyncError, "WM_Reset", wmResult);
                WcmSetPhase(WCM_PHASE_IRREGULAR);
                WcmNotify(WCM_RESULT_FAILURE, 0, 0, 2378);
                break;

            case WM_ERRCODE_ILLEGAL_STATE:
                WCMi_Warning(wcmWarningText_InvalidWmState);

            default:
                WcmSetPhase(WCM_PHASE_FATAL_ERROR);
                WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 2387);
            }
            break;

        default:
            WcmSetPhase(WCM_PHASE_FATAL_ERROR);
            WcmNotify(WCM_RESULT_FATAL_ERROR, 0, (void *)(wcmw->phase), 2393);
        }
        break;

    default:

        WcmSetPhase(WCM_PHASE_FATAL_ERROR);
        WcmNotify(WCM_RESULT_FATAL_ERROR, 0, 0, 2400);
    }
}
