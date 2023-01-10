#include <nitro/wm.h>

#include "include/wm_arm9_private.h"

WMErrCode WM_SetIndCallback (WMCallbackFunc callback) {
    WMErrCode result;
    OSIntrMode e;

    e = OS_DisableInterrupts();

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS) {
        (void)OS_RestoreInterrupts(e);
        return result;
    }

    WMi_GetSystemWork()->indCallback = callback;

    (void)OS_RestoreInterrupts(e);

    return WM_ERRCODE_SUCCESS;
}

WMErrCode WM_SetPortCallback (u16 port, WMCallbackFunc callback, void * arg) {
    WMErrCode result;
    OSIntrMode e;
    WMPortRecvCallback cb_Port;

#ifdef SDK_DEBUG
    if (port >= WM_NUM_OF_PORT) {
        WM_WARNING("Parameter \"port\" must be less than 16.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }
#endif

    if (callback != NULL) {
        MI_CpuClear8(&cb_Port, sizeof(WMPortRecvCallback));
        cb_Port.apiid = WM_APIID_PORT_RECV;
        cb_Port.errcode = WM_ERRCODE_SUCCESS;
        cb_Port.state = WM_STATECODE_PORT_INIT;
        cb_Port.port = port;
        cb_Port.recvBuf = NULL;
        cb_Port.data = NULL;
        cb_Port.length = 0;
        cb_Port.seqNo = 0xffff;
        cb_Port.arg = arg;
        cb_Port.aid = 0;
        OS_GetMacAddress(cb_Port.macAddress);
    }

    e = OS_DisableInterrupts();

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS) {
        (void)OS_RestoreInterrupts(e);
        return result;
    }

    {
        WMArm9Buf * p = WMi_GetSystemWork();

        p->portCallbackTable[port] = callback;
        p->portCallbackArgument[port] = arg;
    }

    if (callback != NULL) {
        cb_Port.connectedAidBitmap = WM_GetConnectedAIDs();
        cb_Port.myAid = WM_GetAID();
        (*callback) ((void *)&cb_Port);
    }

    (void)OS_RestoreInterrupts(e);

    return WM_ERRCODE_SUCCESS;
}

WMErrCode WM_ReadStatus (WMStatus * statusBuf) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckInitialized();
    WM_CHECK_RESULT(result);

    if (statusBuf == NULL) {
        WM_WARNING("Parameter \"statusBuf\" must not be NULL.\n");
        return WM_ERRCODE_INVALID_PARAM;
    }

    DC_InvalidateRange(p->status, sizeof(WMStatus));
    MI_CpuCopyFast(p->status, statusBuf, sizeof(WMStatus));

    return WM_ERRCODE_SUCCESS;
}

int WM_GetMPSendBufferSize (void) {
    WMErrCode result;
    int maxSendSize;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_CHILD);
    if (result != WM_ERRCODE_SUCCESS) {
        return 0;
    }

    DC_InvalidateRange(&(p->status->mp_flag), 4);
    if (p->status->mp_flag == TRUE) {
        WM_WARNING("Already started MP protocol. So can't execute request.\n");
        return 0;
    }

    DC_InvalidateRange(&(p->status->mp_maxSendSize), 4);
    maxSendSize = p->status->mp_maxSendSize;

    return ((maxSendSize + 31) & ~0x1f);
}

int WM_GetMPReceiveBufferSize (void) {
    WMErrCode result;
    BOOL isParent;
    int maxReceiveSize;
    int maxEntry;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckStateEx(2, WM_STATE_PARENT, WM_STATE_CHILD);
    if (result != WM_ERRCODE_SUCCESS) {
        return 0;
    }

    DC_InvalidateRange(&(p->status->mp_flag), 4);
    if (p->status->mp_flag == TRUE) {
        WM_WARNING("Already started MP protocol. So can't execute request.\n");
        return 0;
    }

    DC_InvalidateRange(&(p->status->aid), 2);
    isParent = (p->status->aid == 0) ? TRUE : FALSE;
    DC_InvalidateRange(&(p->status->mp_maxRecvSize), 2);
    maxReceiveSize = p->status->mp_maxRecvSize;
    if (isParent == TRUE) {
        DC_InvalidateRange(&(p->status->pparam.maxEntry), 2);
        maxEntry = p->status->pparam.maxEntry;
        return (int)((sizeof(WMmpRecvHeader) - sizeof(WMmpRecvData) +
                      ((sizeof(WMmpRecvData) + maxReceiveSize - 2 + 2) * maxEntry)
                      + 31) & ~0x1f) * 2;
    } else {
        return (int)((sizeof(WMMpRecvBuf) + maxReceiveSize - 4 + 31) & ~0x1f) * 2;
    }
}

WMMpRecvData * WM_ReadMPData (const WMMpRecvHeader * header, u16 aid) {
    int i;
    WMErrCode result;
    WMMpRecvData * recvdata_p[WM_NUM_MAX_CHILD];
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS) {
        return NULL;
    }

    if ((aid < 1) || (aid > WM_NUM_MAX_CHILD)) {
        WM_WARNING("Parameter \"aid\" must be between 1 and %d.\n", WM_NUM_MAX_CHILD);
        return NULL;
    }

    DC_InvalidateRange(&(p->status->child_bitmap), 2);
    if (0 == (p->status->child_bitmap & (0x0001 << aid))) {
        return NULL;
    }

    if (header->count == 0) {
        return NULL;
    }

    recvdata_p[0] = (WMMpRecvData *)(header->data);

    i = 0;
    do{
        if (recvdata_p[i]->aid == aid) {
            return recvdata_p[i];
        }

        ++i;
        recvdata_p[i] = (WMMpRecvData *)((u32)(recvdata_p[i - 1]) + header->length);
    }while (i < header->count);

    return NULL;
}

u16 WM_GetAllowedChannel (void) {
#ifdef WM_PRECALC_ALLOWEDCHANNEL
    WMErrCode result;

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS) {
        return WM_GET_ALLOWED_CHANNEL_BEFORE_INIT;
    }

    return *((u16 *)((u32)(OS_GetSystemWork()->nvramUserInfo) +
                     ((sizeof(NVRAMConfig) + 3) & ~0x00000003) + 6));
#else
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckIdle();
    if (result != WM_ERRCODE_SUCCESS) {
        return WM_GET_ALLOWED_CHANNEL_BEFORE_INIT;
    }

    DC_InvalidateRange(&(p->status->allowedChannel), 2);
    return p->status->allowedChannel;
#endif
}

#ifdef  WM_PRECALC_ALLOWEDCHANNEL

BOOL WM_IsExistAllowedChannel (void) {
    u16 allowedChannel;

    allowedChannel = *((u16 *)((u32)(OS_GetSystemWork()->nvramUserInfo) +
                               ((sizeof(NVRAMConfig) + 3) & ~0x00000003) + 6));
    if (allowedChannel) {
        return TRUE;
    }
    return FALSE;
}
#endif

WMLinkLevel WM_GetLinkLevel (void) {
    WMErrCode result;
    WMArm9Buf * p = WMi_GetSystemWork();

    result = WMi_CheckInitialized();
    if (result != WM_ERRCODE_SUCCESS) {
        return WM_LINK_LEVEL_0;
    }

    DC_InvalidateRange(&(p->status->state), 2);
    switch (p->status->state) {
    case WM_STATE_MP_PARENT:

        DC_InvalidateRange(&(p->status->child_bitmap), 2);
        if (p->status->child_bitmap == 0) {
            return WM_LINK_LEVEL_0;
        }
    case WM_STATE_MP_CHILD:
    case WM_STATE_DCF_CHILD:

        DC_InvalidateRange(&(p->status->linkLevel), 2);
        return (WMLinkLevel)(p->status->linkLevel);
    }

    return WM_LINK_LEVEL_0;
}

u16 WM_GetDispersionBeaconPeriod (void) {
    u8 mac[6];
    u16 ret;
    s32 i;

    OS_GetMacAddress(mac);
    for (i = 0, ret = 0; i < 6; i++) {
        ret += mac[i];
    }
    ret += OS_GetVBlankCount();
    ret *= 7;
    return (u16)(WM_DEFAULT_BEACON_PERIOD + (ret % 20));
}

u16 WM_GetDispersionScanPeriod (void) {
    u8 mac[6];
    u16 ret;
    s32 i;

    OS_GetMacAddress(mac);
    for (i = 0, ret = 0; i < 6; i++) {
        ret += mac[i];
    }
    ret += OS_GetVBlankCount();
    ret *= 13;
    return (u16)(WM_DEFAULT_SCAN_PERIOD + (ret % 10));
}

WMOtherElements WM_GetOtherElements (WMBssDesc * bssDesc) {
    WMOtherElements elems;
    u8 * p_elem;
    int i;
    u8 curr_elem_len;
    u8 elems_len;
    u8 elems_len_counter;

    if (bssDesc->gameInfoLength != 0) {
        elems.count = 0;
        return elems;
    }

    elems.count = (u8)(bssDesc->otherElementCount);
    if (elems.count == 0) {
        return elems;
    }

    if (elems.count > WM_SCAN_OTHER_ELEMENT_MAX) {
        elems.count = WM_SCAN_OTHER_ELEMENT_MAX;
    }

    p_elem = (u8 *)&(bssDesc->gameInfo);

    elems_len = (u8)((bssDesc->length * sizeof(u16)) - 64);
    elems_len_counter = 0;

    for (i = 0; i < elems.count; ++i) {
        elems.element[i].id = p_elem[0];
        elems.element[i].length = p_elem[1];
        elems.element[i].body = (u8 *)&(p_elem[2]);

        curr_elem_len = (u8)(elems.element[i].length + 2);
        elems_len_counter += curr_elem_len;

        if (elems_len_counter > elems_len) {
            WM_WARNING("Elements length error.\n");
            elems.count = 0;
            return elems;
        }

        p_elem = (u8 *)(p_elem + curr_elem_len);
    }

    return elems;
}

u16 WM_GetNextTgid (void) {
    enum
    { TGID_DEFAULT = (1 << 16) };
    static u32 tgid_bak = (u32)TGID_DEFAULT;

    if (tgid_bak == (u32)TGID_DEFAULT) {
        RTCTime rt[1];
        RTC_Init();
        if (RTC_GetTime(rt) == RTC_RESULT_SUCCESS) {
            tgid_bak = (u16)(rt->second + (rt->minute << 8));
        } else {
            OS_Warning("failed to get RTC-data to create unique TGID!\n");
        }
    }

    tgid_bak = (u16)(tgid_bak + 1);
    return (u16)tgid_bak;
}
