#ifndef POKEPLATINUM_UNK_02030EE0_H
#define POKEPLATINUM_UNK_02030EE0_H

#include <nitro/wm.h>

#include "functypes/funcptr_020312B8.h"
#include "functypes/funcptr_02031E6C.h"
#include "functypes/funcptr_02031E9C.h"
#include "functypes/funcptr_020320FC.h"
#include "functypes/funcptr_02032110.h"

enum WirelessManagerState {
    WIRELESS_STATE_STOP,
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
    WIRELESS_CONNECTION_MP_SERVER,
    WIRELESS_CONNECTION_MP_CLIENT,
    WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER,
    WIRELESS_CONNECTION_TRANSMIT_KEY_CLIENT,
    WIRELESS_CONNECTION_TRANSMIT_DATA_SERVER,
    WIRELESS_CONNECTION_TRANSMIT_DATA_CLIENT,
    WIRELESS_CONNECTION_COUNT
};

//Extention of the NitroSDK WMErrCode enum 
enum ExtendedWMErrCode {
    WM_ERRCODE_DISCONNECTED = WM_ERRCODE_MAX, //=20
    WM_ERRCODE_NO_SERVER,
    WM_ERRCODE_DISCONNECTED_SERVER,
    WM_ERRCODE_NO_CHANNEL,
    WM_ERRCODE_FATAL,
    WM_ERRCODE_GF_MAX
};

BOOL WirelessManager_ConnectClientAuto(int param0, const u8 *param1, u16 param2);
BOOL WirelessManager_ConnectClientScanCallback(WirelessManagerScanFunc param0, const u8 *param1, u16 param2);
BOOL WirelessManager_StopScan(void);
void WirelessManager_SetParentParamGGID(u32 param0);
void WirelessManager_SetParentParamGameInfoAndLength(u16 *param0, u16 param1);
u16 WirelessManager_GetConnectedBitmap(void);
int WirelessManager_GetState(void);
int WirelessManager_GetErrorCode(void);
BOOL WirelessManager_StartMeasureChannel(void);
u16 WirelessManager_GetMeasureChannel(void);
BOOL WirelessManager_Initialize(void *param0, BOOL param1);
int WirelessManager_GetHeapSize(void);
BOOL WirelessManager_ConnectServer(int param0, u16 param1, u16 param2, u16 param3, u16 param4, BOOL param5);
BOOL WirelessManager_ConnectClient(int param0, WMBssDesc *param1);
void WirelessManager_SetRecvFunction(WirelessManagerRecvFunc param0, int param1);
BOOL WirelessManager_SendMessage(void *param0, u16 param1, int param2, WirelessManagerSendFunc param3);
void WirelessManager_Reset(void);
void WirelessManager_Finalize(void);
BOOL WirelessManager_End(void);
u16 WirelessManager_GetAID(void);
void WirelessManager_SetMaxNumConnections(int param0);
BOOL WirelessManager_IsIdle(void);
BOOL WirelessManager_IsBusy(void);
BOOL WirelessManager_IsError(void);
BOOL WirelessManager_IsScanning(void);
void WirelessManager_SetGameInfo(void *param0, int param1, int param2, int param3);
BOOL WirelessManager_SetEntry(BOOL param0);
BOOL WirelessManager_ServerSentAllBeacons(void);
void WirelessManager_ResetBeaconSentCount(void);
void WirelessManager_SetGGIDScanCallback(UnkFuncPtr_020320FC param0);
void sub_SetDisconnectCallback(UnkFuncPtr_02032110 param0);
void WirelessManager_SetConnectCallback(UnkFuncPtr_02032110 param0);
void WirelessManager_SetPauseConnection(BOOL param0);
BOOL WirelessManager_GetPauseConnection(void);
void WirelessManager_SetPauseConnectionSystem(BOOL param0);
void WirelessManager_SetPauseClientConnection(BOOL param0);

#endif // POKEPLATINUM_UNK_02030EE0_H
