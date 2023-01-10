#include <nitro/wm.h>

#include "include/wm_arm9_private.h"

#define     WM_SIZE_TEMP_USR_GAME_INFO_BUF 128

static u32 tmpUserGameInfoBuf[WM_SIZE_TEMP_USR_GAME_INFO_BUF / sizeof(u32)] ATTRIBUTE_ALIGN(32);

#ifdef  WM_ENABLE_TESTMODE

WMErrCode WM_StartTestMode (WMCallbackFunc callback, u16 signal, u16 rate, u16 channel) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_START_TESTMODE, callback);

    {
        WMStartTestModeReq Req;

        Req.apiid = WM_APIID_START_TESTMODE;
        Req.signal = signal;
        Req.rate = rate;
        Req.channel = channel;

        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        if (result != WM_ERRCODE_SUCCESS) {
            return result;
        }
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StopTestMode (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_TESTMODE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_STOP_TESTMODE, callback);

    result = WMi_SendCommand(WM_APIID_STOP_TESTMODE, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StartTestRxMode (WMCallbackFunc callback, u16 channel) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_START_TESTRXMODE, callback);

    {
        WMStartTestRxModeReq Req;

        Req.apiid = WM_APIID_START_TESTRXMODE;
        Req.channel = channel;

        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        if (result != WM_ERRCODE_SUCCESS) {
            return result;
        }
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_StopTestRxMode (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_TESTMODE_RX);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_STOP_TESTRXMODE, callback);

    result = WMi_SendCommand(WM_APIID_STOP_TESTRXMODE, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}
#endif

WMErrCode WM_SetWEPKey (WMCallbackFunc callback, u16 wepmode, const u16 * wepkey) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    if (wepmode > 3) {
        WM_WARNING("Parameter \"wepmode\" must be less than %d.\n", 3);
        return WM_ERRCODE_INVALID_PARAM;
    }

    if (wepmode != WM_WEPMODE_NO) {
        if (wepkey == NULL) {
            WM_WARNING("Parameter \"wepkey\" must not be NULL.\n");
            return WM_ERRCODE_INVALID_PARAM;
        }
        if ((u32)wepkey & 0x01f) {
            WM_WARNING("Parameter \"wepkey\" is not 32-byte aligned.\n");
        }

        DC_StoreRange((void *)wepkey, WM_SIZE_WEPKEY);
    }

    WMi_SetCallbackTable(WM_APIID_SET_WEPKEY, callback);

    result = WMi_SendCommand(WM_APIID_SET_WEPKEY, 2, (u32)wepmode, (u32)wepkey);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetWEPKeyEx (WMCallbackFunc callback, u16 wepmode, u16 wepkeyid, const u8 * wepkey) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    if (wepmode > 3) {
        WM_WARNING("Parameter \"wepmode\" must be less than %d.\n", 3);
        return WM_ERRCODE_INVALID_PARAM;
    }

    if (wepmode != WM_WEPMODE_NO) {
        if (wepkey == NULL) {
            WM_WARNING("Parameter \"wepkey\" must not be NULL.\n");
            return WM_ERRCODE_INVALID_PARAM;
        }
        if (wepkeyid > 3) {
            WM_WARNING("Parameter \"wepkeyid\" must be less than %d.\n", 3);
        }
        if ((u32)wepkey & 0x01f) {
            WM_WARNING("Parameter \"wepkey\" is not 32-byte aligned.\n");
        }

        DC_StoreRange((void *)wepkey, WM_SIZE_WEPKEY);
    }

    WMi_SetCallbackTable(WM_APIID_SET_WEPKEY_EX, callback);

    result = WMi_SendCommand(WM_APIID_SET_WEPKEY_EX, 3, (u32)wepmode, (u32)wepkey, (u32)wepkeyid);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetGameInfo (WMCallbackFunc callback, const u16 * userGameInfo, u16 userGameInfoSize, u32 ggid, u16 tgid, u8 attr) {
    WMErrCode result;

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_MP_PARENT);
    WM_CHECK_RESULT(result);

    if (userGameInfo == NULL) {
        WM_WARNING("Parameter \"userGameInfo\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (userGameInfoSize > WM_SIZE_USER_GAMEINFO) {
        WM_WARNING("Parameter \"userGameInfoSize\" must be less than %d.\n", WM_SIZE_USER_GAMEINFO);
        return WM_ERRCODE_INVALID_PARAM;
    }

    MI_CpuCopy16((void *)userGameInfo, (void *)tmpUserGameInfoBuf, userGameInfoSize);
    DC_StoreRange((void *)tmpUserGameInfoBuf, userGameInfoSize);

    WMi_SetCallbackTable(WM_APIID_SET_GAMEINFO, callback);

    result = WMi_SendCommand(
        WM_APIID_SET_GAMEINFO, 5,
        (u32)tmpUserGameInfoBuf,
        (u32)userGameInfoSize, (u32)ggid, (u32)tgid, (u32)attr
    );
    if (result != WM_ERRCODE_SUCCESS) {
        return result;
    }

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetBeaconIndication (WMCallbackFunc callback, u16 flag) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    if ((0 != flag) && (1 != flag)) {
        WM_WARNING("Parameter \"flag\" must be \"0\" of \"1\".\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    WMi_SetCallbackTable(WM_APIID_SET_BEACON_IND, callback);

    result = WMi_SendCommand(WM_APIID_SET_BEACON_IND, 1, (u32)flag);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetLifeTime (WMCallbackFunc callback, u16 tableNumber, u16 camLifeTime, u16 frameLifeTime, u16 mpLifeTime) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_SET_LIFETIME, callback);

    result = WMi_SendCommand(
        WM_APIID_SET_LIFETIME, 4,
        (u32)tableNumber,
        (u32)camLifeTime, (u32)frameLifeTime, (u32)mpLifeTime
    );
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_MeasureChannel (WMCallbackFunc callback, u16 ccaMode, u16 edThreshold, u16 channel, u16 measureTime) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckState(WM_STATE_IDLE);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_MEASURE_CHANNEL, callback);

    {
        WMMeasureChannelReq Req;

        Req.apiid = WM_APIID_MEASURE_CHANNEL;
        Req.ccaMode = ccaMode;
        Req.edThreshold = edThreshold;
        Req.channel = channel;
        Req.measureTime = measureTime;

        result = WMi_SendCommandDirect(&Req, sizeof(Req));
        WM_CHECK_RESULT(result);
    }
    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_InitWirelessCounter (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_INIT_W_COUNTER, callback);

    result = WMi_SendCommand(WM_APIID_INIT_W_COUNTER, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_GetWirelessCounter (WMCallbackFunc callback) {
    WMErrCode result;

    result = WMi_CheckIdle();
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_GET_W_COUNTER, callback);

    result = WMi_SendCommand(WM_APIID_GET_W_COUNTER, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetEntry (WMCallbackFunc callback, BOOL enabled) {
    WMErrCode result;

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_MP_PARENT);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_SET_ENTRY, callback);

    result = WMi_SendCommand(WM_APIID_SET_ENTRY, 1, (u32)enabled);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WMi_SetBeaconPeriod (WMCallbackFunc callback, u16 beaconPeriod) {
    WMErrCode result;

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_MP_PARENT);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_SET_BEACON_PERIOD, callback);

    result = WMi_SendCommand(WM_APIID_SET_BEACON_PERIOD, 1, (u32)beaconPeriod);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetPowerSaveMode (WMCallbackFunc callback, BOOL powerSave) {
    WMErrCode result;

    result = WMi_CheckState(WM_STATE_DCF_CHILD);
    WM_CHECK_RESULT(result);

    WMi_SetCallbackTable(WM_APIID_SET_PS_MODE, callback);

    result = WMi_SendCommand(WM_APIID_SET_PS_MODE, 1, (u32)powerSave);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}
