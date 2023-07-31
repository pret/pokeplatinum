#include <nitro/wm.h>

#include "wm_arm9_private.h"

WMErrCode WM_StartDCF (WMCallbackFunc callback, WMDcfRecvBuf * recvBuf, u16 recvBufSize) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckState(WM_STATE_CHILD);
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(p->status->dcf_flag), 4);
    if (p->status->dcf_flag == TRUE) {
        WM_WARNING("Already DCF mode. So can't start DCF again.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    if (recvBufSize < 16) {
        WM_WARNING("Parameter \"recvBufSize\" must not be less than %d.\n", 16);
        return WM_ERRCODE_INVALID_PARAM;
    }
    if (recvBuf == NULL) {
        WM_WARNING("Parameter \"recvBuf\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)recvBuf & 0x01f) {
        WM_WARNING("Parameter \"recvBuf\" is not 32-byte aligned.\n");
    }

    DC_StoreRange(recvBuf, recvBufSize);

    WMi_SetCallbackTable(WM_APIID_START_DCF, callback);

    result = WMi_SendCommand(WM_APIID_START_DCF, 2, (u32)recvBuf, (u32)recvBufSize);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_SetDCFData (WMCallbackFunc callback, const u8 * destAdr, const u16 * sendData, u16 sendDataSize) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();
    u32 wMac[2];

    result = WMi_CheckState(WM_STATE_DCF_CHILD);
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(p->status->dcf_flag), 4);
    if (p->status->dcf_flag == FALSE) {
        WM_WARNING("It is not DCF mode now.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    if (sendDataSize > WM_DCF_MAX_SIZE) {
        WM_WARNING("Parameter \"sendDataSize\" is over %d.\n", WM_DCF_MAX_SIZE);
        return WM_ERRCODE_INVALID_PARAM;
    }
    if ((u32)sendData & 0x01f) {
        WM_WARNING("Parameter \"sendData\" is not 32-byte aligned.\n");
    }

    DC_StoreRange((void *)sendData, sendDataSize);

    WMi_SetCallbackTable(WM_APIID_SET_DCF_DATA, callback);

    MI_CpuCopy8(destAdr, wMac, 6);

    result = WMi_SendCommand(
        WM_APIID_SET_DCF_DATA, 4,
        (u32)wMac[0], (u32)wMac[1], (u32)sendData, (u32)sendDataSize
    );
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}

WMErrCode WM_EndDCF (WMCallbackFunc callback) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckState(WM_STATE_DCF_CHILD);
    WM_CHECK_RESULT(result);

    DC_InvalidateRange(&(p->status->dcf_flag), 4);
    if (p->status->dcf_flag == FALSE) {
        WM_WARNING("It is not DCF mode now.\n");
        return WM_ERRCODE_ILLEGAL_STATE;
    }

    WMi_SetCallbackTable(WM_APIID_END_DCF, callback);

    result = WMi_SendCommand(WM_APIID_END_DCF, 0);
    WM_CHECK_RESULT(result);

    return WM_ERRCODE_OPERATING;
}
