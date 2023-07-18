#include <nitro/wm.h>

#include "include/wm_arm9_private.h"

static BOOL WmCheckParentParameter(const WMParentParam * param);

WMErrCode WM_Enable (WMCallbackFunc callback) {
    return WMi_EnableEx(callback, 0);
}

WMErrCode WM_EnableForListening (WMCallbackFunc callback, BOOL blink) {
    u32 miscFlags = WM_MISC_FLAG_LISTEN_ONLY;

    if (!blink) {
        miscFlags |= WM_MISC_FLAG_NO_BLINK;
    }

    return WMi_EnableEx(callback, miscFlags);
}

WMErrCode WMi_EnableEx (WMCallbackFunc callback, u32 miscFlags) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_READY);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_ENABLE, callback);

    {
        WMArm9Buf * p = WMi_GetSystemWork();

        result = WMi_SendCommand(
            WM_APIID_ENABLE, 4,
            (u32)(p->WM7), (u32)(p->status), (u32)(p->fifo7to9), miscFlags
        );
        WM_CHECK_RESULT(result);
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_Disable (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_STOP);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_DISABLE, callback);

    result = WMi_SendCommand(WM_APIID_DISABLE, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_PowerOn (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_STOP);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_POWER_ON, callback);

    result = WMi_SendCommand(WM_APIID_POWER_ON, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_PowerOff (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_POWER_OFF, callback);

    result = WMi_SendCommand(WM_APIID_POWER_OFF, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_Initialize (void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo) {
    return WMi_InitializeEx(wmSysBuf, callback, dmaNo, 0);
}

WMErrCode WM_InitializeForListening (void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo, BOOL blink) {
    u32 miscFlags = WM_MISC_FLAG_LISTEN_ONLY;

    if (!blink) {
        miscFlags |= WM_MISC_FLAG_NO_BLINK;
    }

    return WMi_InitializeEx(wmSysBuf, callback, dmaNo, miscFlags);
}

WMErrCode WMi_InitializeEx (void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo, u32 miscFlags) {
    WMErrCode result;

    result = WM_Init(wmSysBuf, dmaNo);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_INITIALIZE, callback);

    {
        WMArm9Buf * p = WMi_GetSystemWork();

        result = WMi_SendCommand(
            WM_APIID_INITIALIZE, 4,
            (u32)(p->WM7), (u32)(p->status), (u32)(p->fifo7to9), miscFlags
        );
        WM_CHECK_RESULT(result);
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_Reset (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_RESET, callback);

    result = WMi_SendCommand(WM_APIID_RESET, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_End (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_END, callback);

    result = WMi_SendCommand(WM_APIID_END, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetParentParameter (WMCallbackFunc callback, const WMParentParam * pparaBuf) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    if (pparaBuf == NULL) {
        WM_WARNING("Parameter \"pparaBuf\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)pparaBuf & 0x01f) {
        WM_WARNING("Parameter \"pparaBuf\" is not 32-byte aligned.\n");
    }
    if (pparaBuf->userGameInfoLength > 0) {
        if (pparaBuf->userGameInfo == NULL) {
            WM_WARNING("Parameter \"pparaBuf->userGameInfo\" must not be NULL.\n");
            return WM_ERRCODE_INVALID_PARAM;
        }
        if ((u32)(pparaBuf->userGameInfo) & 0x01f) {
            WM_WARNING("Parameter \"pparaBuf->userGameInfo\" is not 32-byte aligned.\n");
        }
    }

    if ((pparaBuf->parentMaxSize +
         (pparaBuf->KS_Flag ? WM_SIZE_KS_PARENT_DATA + WM_SIZE_MP_PARENT_PADDING : 0) >
         WM_SIZE_MP_DATA_MAX)
        || (pparaBuf->childMaxSize +
            (pparaBuf->KS_Flag ? WM_SIZE_KS_CHILD_DATA + WM_SIZE_MP_CHILD_PADDING : 0) >
            WM_SIZE_MP_DATA_MAX)) {
        WM_WARNING("Transfer data size is over %d byte.\n", WM_SIZE_MP_DATA_MAX);
        return WM_ERRCODE_INVALID_PARAM;
    }
    (void)WmCheckParentParameter(pparaBuf);

    WMi_SetCallbackTable(WM_APIID_SET_P_PARAM, callback);

    DC_StoreRange((void *)pparaBuf, WM_PARENT_PARAM_SIZE);
    if (pparaBuf->userGameInfoLength > 0) {
        DC_StoreRange(pparaBuf->userGameInfo, pparaBuf->userGameInfoLength);
    }

    result = WMi_SendCommand(WM_APIID_SET_P_PARAM, 1, (u32)pparaBuf);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

static BOOL WmCheckParentParameter (const WMParentParam * param) {
    if (param->userGameInfoLength > WM_SIZE_USER_GAMEINFO) {
        OS_TWarning("User gameInfo length must be less than %d .\n", WM_SIZE_USER_GAMEINFO);
        return FALSE;
    }

    if ((param->beaconPeriod < 10) || (param->beaconPeriod > 1000)) {
        OS_TWarning("Beacon send period must be between 10 and 1000 .\n");
        return FALSE;
    }

    if ((param->channel < 1) || (param->channel > 14)) {
        OS_TWarning("Channel must be between 1 and 14 .\n");
        return FALSE;
    }
    return TRUE;
}

WMErrCode WMi_StartParentEx (WMCallbackFunc callback, BOOL powerSave) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    {
        WMArm9Buf * w9b = WMi_GetSystemWork();
#ifdef WM_DEBUG
        if (w9b->connectedAidBitmap != 0) {
            WM_DPRINTF(
                "Warning: connectedAidBitmap should be 0, but %04x",
                w9b->connectedAidBitmap
            );
        }
#endif
        w9b->myAid = 0;
        w9b->connectedAidBitmap = 0;
    }

    WMi_SetCallbackTable(WM_APIID_START_PARENT, callback);

    result = WMi_SendCommand(WM_APIID_START_PARENT, 1, (u32)powerSave);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StartParent (WMCallbackFunc callback) {
    return WMi_StartParentEx(callback, TRUE);
}

WMErrCode WM_EndParent (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_PARENT);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_END_PARENT, callback);

    result = WMi_SendCommand(WM_APIID_END_PARENT, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StartScan (WMCallbackFunc callback, const WMScanParam * param) {
    WMErrCode result;

    result = WMi_CheckStateEx(3, WM_STATE_IDLE, WM_STATE_CLASS1, WM_STATE_SCAN);
    WM_CHECK_RESULT(result);

    if (param == NULL) {
        WM_WARNING("Parameter \"param\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (param->scanBuf == NULL) {
        WM_WARNING("Parameter \"param->scanBuf\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((param->channel < 1) || (param->channel > 14)) {
        WM_WARNING("Parameter \"param->channel\" must be between 1 and 14.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)(param->scanBuf) & 0x01f) {
        WM_WARNING("Parameter \"param->scanBuf\" is not 32-byte aligned.\n");
    }

    WMi_SetCallbackTable(WM_APIID_START_SCAN, callback);

    {
        WMStartScanReq Req;

        Req.apiid = WM_APIID_START_SCAN;
        Req.channel = param->channel;
        Req.scanBuf = param->scanBuf;
        Req.maxChannelTime = param->maxChannelTime;
        Req.bssid[0] = param->bssid[0];
        Req.bssid[1] = param->bssid[1];
        Req.bssid[2] = param->bssid[2];
        Req.bssid[3] = param->bssid[3];
        Req.bssid[4] = param->bssid[4];
        Req.bssid[5] = param->bssid[5];
        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        WM_CHECK_RESULT(result);
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StartScanEx (WMCallbackFunc callback, const WMScanExParam * param) {
    WMErrCode result;

    result = WMi_CheckStateEx(3, WM_STATE_IDLE, WM_STATE_CLASS1, WM_STATE_SCAN);
    WM_CHECK_RESULT(result);

    if (param == NULL) {
        WM_WARNING("Parameter \"param\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (param->scanBuf == NULL) {
        WM_WARNING("Parameter \"param->scanBuf\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (param->scanBufSize > WM_SIZE_SCAN_EX_BUF) {
        WM_WARNING
            ("Parameter \"param->scanBufSize\" must be less than or equal to WM_SIZE_SCAN_EX_BUF.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)(param->scanBuf) & 0x01f) {
        WM_WARNING("Parameter \"param->scanBuf\" is not 32-byte aligned.\n");
    }
    if (param->ssidLength > WM_SIZE_SSID) {
        WM_WARNING("Parameter \"param->ssidLength\" must be less than or equal to WM_SIZE_SSID.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (param->scanType != WM_SCANTYPE_ACTIVE && param->scanType != WM_SCANTYPE_PASSIVE
        && param->scanType != WM_SCANTYPE_ACTIVE_CUSTOM
        && param->scanType != WM_SCANTYPE_PASSIVE_CUSTOM) {
        WM_WARNING
            ("Parameter \"param->scanType\" must be WM_SCANTYPE_PASSIVE or WM_SCANTYPE_ACTIVE.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((param->scanType == WM_SCANTYPE_ACTIVE_CUSTOM
         || param->scanType == WM_SCANTYPE_PASSIVE_CUSTOM) && param->ssidMatchLength > WM_SIZE_SSID) {
        WM_WARNING
            ("Parameter \"param->ssidMatchLength\" must be less than or equal to WM_SIZE_SSID.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    WMi_SetCallbackTable(WM_APIID_START_SCAN_EX, callback);

    {
        WMStartScanExReq Req;

        Req.apiid = WM_APIID_START_SCAN_EX;
        Req.channelList = param->channelList;
        Req.scanBuf = param->scanBuf;
        Req.scanBufSize = param->scanBufSize;
        Req.maxChannelTime = param->maxChannelTime;
        MI_CpuCopy8(param->bssid, Req.bssid, WM_SIZE_MACADDR);
        Req.scanType = param->scanType;
        Req.ssidMatchLength = param->ssidMatchLength;
        Req.ssidLength = param->ssidLength;
        MI_CpuCopy8(param->ssid, Req.ssid, WM_SIZE_SSID);

        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        WM_CHECK_RESULT(result);
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_EndScan (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_SCAN);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_END_SCAN, callback);

    result = WMi_SendCommand(WM_APIID_END_SCAN, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StartConnectEx (WMCallbackFunc callback, const WMBssDesc * pInfo, const u8 * ssid, BOOL powerSave, const u16 authMode) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    if (pInfo == NULL) {
        WM_WARNING("Parameter \"pInfo\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)pInfo & 0x01f) {
        WM_WARNING("Parameter \"pInfo\" is not 32-byte aligned.\n");
    }
    if ((authMode != WM_AUTHMODE_OPEN_SYSTEM) && (authMode != WM_AUTHMODE_SHARED_KEY)) {
        WM_WARNING
            ("Parameter \"authMode\" must be WM_AUTHMODE_OPEN_SYSTEM or WM_AUTHMODE_SHARED_KEY.\n");
    }

    DC_StoreRange((void *)pInfo, (u32)(pInfo->length * 2));

    {
        WMArm9Buf * w9b = WMi_GetSystemWork();
#ifdef WM_DEBUG
        if (w9b->connectedAidBitmap != 0) {
            WM_DPRINTF(
                "Warning: connectedAidBitmap should be 0, but %04x",
                w9b->connectedAidBitmap
            );
        }
#endif
        w9b->myAid = 0;
        w9b->connectedAidBitmap = 0;
    }

    WMi_SetCallbackTable(WM_APIID_START_CONNECT, callback);

    {
        WMStartConnectReq Req;

        Req.apiid = WM_APIID_START_CONNECT;
        Req.pInfo = (WMBssDesc *)pInfo;
        if (ssid != NULL) {
            MI_CpuCopy8(ssid, Req.ssid, WM_SIZE_CHILD_SSID);
        } else {
            MI_CpuClear8(Req.ssid, WM_SIZE_CHILD_SSID);
        }
        Req.powerSave = powerSave;
        Req.authMode = authMode;

        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        WM_CHECK_RESULT(result);
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_Disconnect (WMCallbackFunc callback, u16 aid) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckStateEx(
        5,
        WM_STATE_PARENT, WM_STATE_MP_PARENT,
        WM_STATE_CHILD, WM_STATE_MP_CHILD, WM_STATE_DCF_CHILD
    );
    WM_CHECK_RESULT(result);

    if (
        (p->status->state == WM_STATE_PARENT) || (p->status->state == WM_STATE_MP_PARENT)) {
        if ((aid < 1) || (aid > WM_NUM_MAX_CHILD)) {
            WM_WARNING("Parameter \"aid\" must be between 1 and %d.\n", WM_NUM_MAX_CHILD);
            return WM_ERRCODE_INVALID_PARAM;
        }
        DC_InvalidateRange(&(p->status->child_bitmap), 2);
        if (!(p->status->child_bitmap & (0x0001 << aid))) {
            WM_WARNING("There is no child that have aid %d.\n", aid);
            return WM_ERRCODE_NO_CHILD;
        }
    } else {
        if (aid != 0) {
            WM_WARNING("Now child mode , so aid must be 0.\n");
            return WM_ERRCODE_INVALID_PARAM;
        }
    }

    WMi_SetCallbackTable(WM_APIID_DISCONNECT, callback);

    result = WMi_SendCommand(WM_APIID_DISCONNECT, 1, (u32)(0x0001 << aid));
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_DisconnectChildren (WMCallbackFunc callback, u16 aidBitmap) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_MP_PARENT);
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(p->status->child_bitmap), 2);
    if (!(p->status->child_bitmap & aidBitmap & 0xfffe)) {
        WM_WARNING("There is no child that is included in \"aidBitmap\" %04x_.\n", aidBitmap);
        return WM_ERRCODE_NO_CHILD;
    }

    WMi_SetCallbackTable(WM_APIID_DISCONNECT, callback);

    result = WMi_SendCommand(WM_APIID_DISCONNECT, 1, (u32)aidBitmap);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}
