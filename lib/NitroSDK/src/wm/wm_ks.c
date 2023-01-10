#include <nitro/wm.h>

#include "include/wm_arm9_private.h"

WMErrCode WM_StartKeySharing (WMKeySetBuf * buf, u16 port) {
    return WM_StartDataSharing(buf, port, 0xffff, WM_KEYDATA_SIZE, TRUE);
}

WMErrCode WM_EndKeySharing (WMKeySetBuf * buf) {
    return WM_EndDataSharing(buf);
}

WMErrCode WM_GetKeySet (WMKeySetBuf * buf, WMKeySet * keySet) {
    WMErrCode result;
    u16 sendData[WM_KEYDATA_SIZE / sizeof(u16)];
    WMDataSet ds;
    WMArm9Buf * p = WMi_GetSystemWork();

    {
        sendData[0] = (u16)PAD_Read();
        result = WM_StepDataSharing(buf, sendData, &ds);
        if (result == WM_ERRCODE_SUCCESS) {
            keySet->seqNum = buf->currentSeqNum;

            {
                u16 iAid;
                for (iAid = 0; iAid < 16; iAid++) {
                    u16 * keyData;
                    keyData = WM_GetSharedDataAddress(buf, &ds, iAid);
                    if (keyData != NULL) {
                        keySet->key[iAid] = keyData[0];
                    } else {
                        keySet->key[iAid] = 0;
                    }
                }
            }
            return WM_ERRCODE_SUCCESS;
        } else {
            return result;
        }
    }
}
