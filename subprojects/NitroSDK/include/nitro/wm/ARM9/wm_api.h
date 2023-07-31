#ifndef NITRO_WM_ARM9_WM_API_H_
#define NITRO_WM_ARM9_WM_API_H_

#ifdef __cplusplus
extern "C" {
#endif

#define WM_DEFAULT_BEACON_PERIOD 200
#define WM_DEFAULT_SCAN_PERIOD 30
#define WM_MAX_MP_PACKET_TIME 5600

WMErrCode WM_Init(void * wmSysBuf, u16 dmaNo);

WMErrCode WM_Finish(void);

WMErrCode WM_Enable(WMCallbackFunc callback);

WMErrCode WM_EnableForListening(WMCallbackFunc callback, BOOL blink);

WMErrCode WMi_EnableEx(WMCallbackFunc callback, u32 miscFlags);

WMErrCode WM_Disable(WMCallbackFunc callback);

WMErrCode WM_PowerOn(WMCallbackFunc callback);

WMErrCode WM_PowerOff(WMCallbackFunc callback);

WMErrCode WM_Initialize(void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo);

WMErrCode WM_InitializeForListening(void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo, BOOL blink);

WMErrCode WMi_InitializeEx(void * wmSysBuf, WMCallbackFunc callback, u16 dmaNo, u32 miscFlags);

WMErrCode WM_SetIndCallback(WMCallbackFunc callback);

WMErrCode WM_SetPortCallback(u16 port, WMCallbackFunc callback, void * arg);

WMErrCode WM_Reset(WMCallbackFunc callback);

WMErrCode WM_End(WMCallbackFunc callback);

WMErrCode WM_ReadStatus(WMStatus * statusBuf);

WMErrCode WM_SetParentParameter(WMCallbackFunc callback, const WMParentParam * pparaBuf);

WMErrCode WMi_StartParentEx(WMCallbackFunc callback, BOOL powerSave);

WMErrCode WM_StartParent(WMCallbackFunc callback);

WMErrCode WM_EndParent(WMCallbackFunc callback);

WMErrCode WM_StartScan(WMCallbackFunc callback, const WMScanParam * param);

WMErrCode WM_StartScanEx(WMCallbackFunc callback, const WMScanExParam * param);

WMErrCode WM_EndScan(WMCallbackFunc callback);

WMErrCode WM_StartConnectEx(WMCallbackFunc callback, const WMBssDesc * pInfo, const u8 * ssid,
                            BOOL powerSave, u16 authMode);

static inline WMErrCode WM_StartConnect (WMCallbackFunc callback, const WMBssDesc * pInfo, const u8 * ssid)
{
    return WM_StartConnectEx(callback, pInfo, ssid, TRUE, WM_AUTHMODE_OPEN_SYSTEM);
}

WMErrCode WM_Disconnect(WMCallbackFunc callback, u16 aid);

WMErrCode WM_DisconnectChildren(WMCallbackFunc callback, u16 aidBitmap);

int WM_GetMPSendBufferSize(void);

int WM_GetMPReceiveBufferSize(void);

WMErrCode WM_StartMPEx(WMCallbackFunc callback,
                       u16 * recvBuf,
                       u16 recvBufSize,
                       u16 * sendBuf,
                       u16 sendBufSize,
                       u16 mpFreq,
                       u16 defaultRetryCount,
                       BOOL minPollBmpMode,
                       BOOL singlePacketMode, BOOL fixFreqMode, BOOL ignoreFatalError);

WMErrCode WM_StartMP(WMCallbackFunc callback,
                     u16 * recvBuf, u16 recvBufSize, u16 * sendBuf, u16 sendBufSize, u16 mpFreq);

WMErrCode WM_SetMPParameter(WMCallbackFunc callback, const WMMPParam * param);

WMErrCode WM_SetMPChildSize(WMCallbackFunc callback, u16 childSize);

WMErrCode WM_SetMPParentSize(WMCallbackFunc callback, u16 parentSize);

WMErrCode WM_SetMPFrequency(WMCallbackFunc callback, u16 mpFreq);

WMErrCode WM_SetMPInterval(WMCallbackFunc callback, u16 parentInterval, u16 childInterval);

WMErrCode WM_SetMPTiming(WMCallbackFunc callback, u16 parentVCount, u16 childVCount);

WMErrCode WM_SetMPDataToPortEx(WMCallbackFunc callback,
                               void * arg,
                               const u16 * sendData,
                               u16 sendDataSize, u16 destBitmap, u16 port, u16 prio);

static inline WMErrCode WM_SetMPDataToPort (WMCallbackFunc callback, const u16 * sendData, u16 sendDataSize, u16 destBitmap,
                                            u16 port, u16 prio)
{
    return WM_SetMPDataToPortEx(callback, NULL, sendData, sendDataSize, destBitmap, port, prio);
}

static inline WMErrCode WM_SetMPData (WMCallbackFunc callback, const u16 * sendData, u16 sendDataSize, u16 tmptt, u16 pollbmp)
{
#pragma unused( tmptt )
    return WM_SetMPDataToPortEx(callback, NULL, sendData, sendDataSize, pollbmp, WM_PORT_RAWDATA,
                                WM_PRIORITY_NORMAL);
}

WMErrCode WM_EndMP(WMCallbackFunc callback);

WMErrCode WM_StartDCF(WMCallbackFunc callback, WMDcfRecvBuf * recvBuf, u16 recvBufSize);

WMErrCode WM_SetDCFData(WMCallbackFunc callback,
                        const u8 * destAdr, const u16 * sendData, u16 sendDataSize);

WMErrCode WM_EndDCF(WMCallbackFunc callback);

WMErrCode WM_SetWEPKey(WMCallbackFunc callback, u16 wepmode, const u16 * wepkey);

WMErrCode WM_SetWEPKeyEx(WMCallbackFunc callback, u16 wepmode, u16 wepkeyid, const u8 * wepkey);

WMMpRecvData * WM_ReadMPData(const WMMpRecvHeader * header, u16 aid);

WMErrCode WM_StartDataSharing(WMDataSharingInfo * dsInfo,
                              u16 port, u16 aidBitmap, u16 dataLength, BOOL doubleMode);

WMErrCode WM_EndDataSharing(WMDataSharingInfo * dsInfo);

WMErrCode WM_StepDataSharing(WMDataSharingInfo * dsInfo,
                             const u16 * sendData, WMDataSet * receiveData);

u16 * WM_GetSharedDataAddress(WMDataSharingInfo * dsInfo, WMDataSet * receiveData, u16 aid);

WMErrCode WM_StartKeySharing(WMKeySetBuf * buf, u16 port);

WMErrCode WM_EndKeySharing(WMKeySetBuf * buf);

WMErrCode WM_GetKeySet(WMKeySetBuf * buf, WMKeySet * keySet);

WMErrCode WM_SetGameInfo(WMCallbackFunc callback,
                         const u16 * userGameInfo, u16 userGameInfoSize,
                         u32 ggid, u16 tgid, u8 attr);

WMErrCode WM_SetBeaconIndication(WMCallbackFunc callback, u16 flag);

#ifdef WM_ENABLE_TESTMODE

WMErrCode WM_StartTestMode(WMCallbackFunc callback, u16 signal, u16 rate, u16 channel);

WMErrCode WM_StopTestMode(WMCallbackFunc callback);

WMErrCode WM_StartTestRxMode(WMCallbackFunc callback, u16 channel);

WMErrCode WM_StopTestRxMode(WMCallbackFunc callback);

#endif

WMErrCode WM_SetLifeTime(WMCallbackFunc callback,
                         u16 tableNumber, u16 camLifeTime, u16 frameLifeTime, u16 mpLifeTime);

WMErrCode WM_MeasureChannel(WMCallbackFunc callback,
                            u16 ccaMode, u16 edThreshold, u16 channel, u16 measureTime);

WMErrCode WM_InitWirelessCounter(WMCallbackFunc callback);

WMErrCode WM_GetWirelessCounter(WMCallbackFunc callback);

u16 WM_GetAllowedChannel(void);

#ifdef WM_PRECALC_ALLOWEDCHANNEL

BOOL WM_IsExistAllowedChannel(void);
#endif

WMErrCode WM_SetEntry(WMCallbackFunc callback, BOOL enabled);

WMLinkLevel WM_GetLinkLevel(void);

WMErrCode WMi_SetBeaconPeriod(WMCallbackFunc callback, u16 beaconPeriod);

u16 WM_GetDispersionBeaconPeriod(void);

u16 WM_GetDispersionScanPeriod(void);

WMOtherElements WM_GetOtherElements(WMBssDesc * bssDesc);

u16 WM_GetNextTgid(void);

WMErrCode WM_SetPowerSaveMode(WMCallbackFunc callback, BOOL powerSave);

BOOL WMi_IsMP(void);

u16 WM_GetAID(void);

u16 WM_GetConnectedAIDs(void);

u16 WMi_GetMPReadyAIDs(void);

void WMi_DebugPrintSendQueue(WMPortSendQueue * queue);
void WMi_DebugPrintAllSendQueue(void);
const WMStatus * WMi_GetStatusAddress(void);
BOOL WMi_CheckMpPacketTimeRequired(u16 parentSize, u16 childSize, u8 childs);

#define WM_SIZE_MP_PARENT_RECEIVE_BUFFER(childMaxSize, maxEntry, ksFlag) \
    (((sizeof(WMMpRecvHeader) - sizeof(WMMpRecvData) + \
       ((sizeof(WMMpRecvData) + (childMaxSize) + WM_HEADER_CHILD_MAX_SIZE - 2 + 2 + ((ksFlag) ? WM_SIZE_KS_CHILD_DATA + WM_SIZE_MP_CHILD_PADDING : 0)) * (maxEntry)) \
       + 31) & ~0x1f) * 2)

#define WM_SIZE_MP_CHILD_RECEIVE_BUFFER(parentMaxSize, ksFlag) \
    (((sizeof(WMMpRecvBuf) + (parentMaxSize) + WM_HEADER_PARENT_MAX_SIZE - 4 + ((ksFlag) ? WM_SIZE_KS_PARENT_DATA + WM_SIZE_MP_PARENT_PADDING : 0) + 31) & ~0x1f) * 2)

#define WM_SIZE_MP_PARENT_SEND_BUFFER(parentMaxSize, ksFlag) \
    (((parentMaxSize) + WM_HEADER_PARENT_MAX_SIZE + ((ksFlag) ? WM_SIZE_KS_PARENT_DATA + WM_SIZE_MP_PARENT_PADDING : 0) + 31) & ~0x1f)

#define WM_SIZE_MP_CHILD_SEND_BUFFER(childMaxSize, ksFlag) \
    (((childMaxSize) + WM_HEADER_CHILD_MAX_SIZE + ((ksFlag) ? WM_SIZE_KS_CHILD_DATA + WM_SIZE_MP_CHILD_PADDING : 0) + 31) & ~0x1f)

#define WM_SIZE_DCF_CHILD_SEND_BUFFER(childMaxSize) \
    (((childMaxSize) + WM_SIZE_MADATA_HEADER + 31) & ~0x1f)

#define WM_SIZE_CHILD_SEND_BUFFER WM_SIZE_MP_CHILD_SEND_BUFFER
#define WM_SIZE_CHILD_RECEIVE_BUFFER WM_SIZE_MP_CHILD_RECEIVE_BUFFER
#define WM_SIZE_PARENT_SEND_BUFFER WM_SIZE_MP_PARENT_SEND_BUFFER
#define WM_SIZE_PARENT_RECEIVE_BUFFER WM_SIZE_MP_PARENT_RECEIVE_BUFFER

static inline void WM_ConvGgid32to16 (u32 * src, u16 * dst)
{
    dst[0] = (u16)(*src & 0x0000ffff);
    dst[1] = (u16)(*src >> 16);
}

static inline void WM_ConvGgid16to32 (u16 * src, u32 * dst)
{
    *dst = ((u32)src[1] << 16) | src[0];
}

static inline BOOL WM_IsBssidEqual (const u8 * idp1, const u8 * idp2)
{
    return ((*idp1 == *idp2) &&
            (*(idp1 + 1) == *(idp2 + 1)) &&
            (*(idp1 + 2) == *(idp2 + 2)) &&
            (*(idp1 + 3) == *(idp2 + 3)) &&
            (*(idp1 + 4) == *(idp2 + 4)) && (*(idp1 + 5) == *(idp2 + 5)));
}

static inline BOOL WM_IsBssidEqual16 (const u8 * idp1, const u8 * idp2)
{
    SDK_ALIGN2_ASSERT(idp1);
    SDK_ALIGN2_ASSERT(idp2);

    return ((*(u16 *)idp1 == *(u16 *)idp2) &&
            (*(u16 *)(idp1 + 2) == *(u16 *)(idp2 + 2)) &&
            (*(u16 *)(idp1 + 4) == *(u16 *)(idp2 + 4)));
}

static inline void WM_CopyBssid (const u8 * src, u8 * dst)
{
    *dst = *src;
    *(dst + 1) = *(src + 1);
    *(dst + 2) = *(src + 2);
    *(dst + 3) = *(src + 3);
    *(dst + 4) = *(src + 4);
    *(dst + 5) = *(src + 5);
}

static inline void WM_CopyBssid16 (const u8 * src, u8 * dst)
{
    SDK_ALIGN2_ASSERT(src);
    SDK_ALIGN2_ASSERT(dst);

    *(u16 *)dst = *(u16 *)src;
    *(u16 *)(dst + 2) = *(u16 *)(src + 2);
    *(u16 *)(dst + 4) = *(u16 *)(src + 4);
}

static inline BOOL WM_IsValidGameInfo (const WMGameInfo * gameInfo, u16 gameInfoLength)
{
    return (gameInfoLength >= WM_GAMEINFO_LENGTH_MIN
            && gameInfo->magicNumber == WM_GAMEINFO_MAGIC_NUMBER);
}

static inline BOOL WM_IsValidGameBeacon (const WMBssDesc * bssDesc)
{
    return WM_IsValidGameInfo(&bssDesc->gameInfo, bssDesc->gameInfoLength);
}

static inline BOOL WMi_IsDisconnectReasonFromMyself (u16 reason)
{
    return (reason >= WM_DISCONNECT_REASON_FROM_MYSELF);
}

#ifdef __cplusplus
}
#endif

#endif
