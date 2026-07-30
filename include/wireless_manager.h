#ifndef POKEPLATINUM_WIRELESS_MANAGER_H
#define POKEPLATINUM_WIRELESS_MANAGER_H

#include <nitro/wm.h>

enum WirelessManagerState {
    WIRELESS_STATE_STOP = 0,
    WIRELESS_STATE_IDLE,
    WIRELESS_STATE_SCAN,
    WIRELESS_STATE_BUSY,
    WIRELESS_STATE_CONNECTED,
    WIRELESS_STATE_TRANSMIT_DATA,
    WIRELESS_STATE_TRANSMIT_KEY,
    WIRELESS_STATE_CHECK_CHANNEL,
    WIRELESS_STATE_BAD_CONNECTION,
    WIRELESS_STATE_ERROR,
    WIRELESS_STATE_FATAL_ERROR,
    WIRELESS_STATE_COUNT
};

enum WirelessConnectionType {
    WIRELESS_CONNECTION_MP_SERVER = 0,
    WIRELESS_CONNECTION_MP_CLIENT,
    WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER,
    WIRELESS_CONNECTION_TRANSMIT_KEY_CLIENT,
    WIRELESS_CONNECTION_TRANSMIT_DATA_SERVER,
    WIRELESS_CONNECTION_TRANSMIT_DATA_CLIENT,
    WIRELESS_CONNECTION_COUNT
};

// Extention of the NitroSDK WMErrCode enum
enum ExtendedWMErrCode {
    WM_ERRCODE_DISCONNECTED = WM_ERRCODE_MAX, //=20
    WM_ERRCODE_NO_SERVER,
    WM_ERRCODE_DISCONNECTED_SERVER,
    WM_ERRCODE_NO_CHANNEL,
    WM_ERRCODE_FATAL,
    WM_ERRCODE_GF_MAX
};

typedef void (*WirelessManagerScanFunc)(WMBssDesc *);
typedef void (*WirelessManagerRecvFunc)(u16, u16 *, u16);
typedef void (*WirelessManagerSendFunc)(BOOL);
typedef void (*WirelessManagerGGIDScanFunc)(u32, int);
typedef void (*WirelessManagerConnectFunc)(int);

BOOL WirelessManager_ConnectClientAuto(int connectionType, const u8 *macAddress, u16 channel);
BOOL WirelessManager_ConnectClientScanCallback(WirelessManagerScanFunc scanCallback, const u8 *macAddress, u16 channel);
BOOL WirelessManager_StopScan(void);
void WirelessManager_SetParentParamGGID(u32 ggid);
void WirelessManager_SetParentParamGameInfoAndLength(u16 *userGameInfo, u16 size);
u16 WirelessManager_GetConnectedBitmap(void);
int WirelessManager_GetState(void);
int WirelessManager_GetErrorCode(void);
BOOL WirelessManager_StartMeasureChannel(void);
u16 WirelessManager_GetMeasureChannel(void);
BOOL WirelessManager_Initialize(void *heap, BOOL isNotListening);
int WirelessManager_GetHeapSize(void);
BOOL WirelessManager_ConnectServer(int connectionType, u16 tgid, u16 channel, u16 maxEntry, u16 beaconPeriod, BOOL entryFlag);
BOOL WirelessManager_ConnectClient(int connectionType, WMBssDesc *bssDesc);
void WirelessManager_SetRecvFunction(WirelessManagerRecvFunc recvFunction, int port);
BOOL WirelessManager_SendMessage(void *message, u16 size, int port, WirelessManagerSendFunc callback);
void WirelessManager_Reset(void);
void WirelessManager_Finalize(void);
BOOL WirelessManager_End(void);
u16 WirelessManager_GetAID(void);
void WirelessManager_SetMaxNumConnections(int numConnectionsMax);
BOOL WirelessManager_IsIdle(void);
BOOL WirelessManager_IsBusy(void);
BOOL WirelessManager_IsError(void);
BOOL WirelessManager_IsScanning(void);
void WirelessManager_SetGameInfo(void *buffer, int size, int ggid, int tgid);
BOOL WirelessManager_SetEntry(BOOL enable);
BOOL WirelessManager_ServerSentAllBeacons(void);
void WirelessManager_ResetBeaconSentCount(void);
void WirelessManager_SetGGIDScanCallback(WirelessManagerGGIDScanFunc callback);
void WirelessManager_SetDisconnectCallback(WirelessManagerConnectFunc callback);
void WirelessManager_SetConnectCallback(WirelessManagerConnectFunc callback);
void WirelessManager_SetPauseConnection(BOOL pause);
BOOL WirelessManager_GetPauseConnection(void);
void WirelessManager_SetPauseConnectionSystem(BOOL pause);
void WirelessManager_SetPauseClientConnection(BOOL pause);

#endif // POKEPLATINUM_WIRELESS_MANAGER_H
