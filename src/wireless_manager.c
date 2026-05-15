#include "wireless_manager.h"

#include <nitro.h>
#include <nitro/cht.h>
#include <nitro/wm.h>
#include <string.h>

#include "struct_defs/struct_0203330C.h"

#include "constants/communication/comm_error.h"

#include "unk_0203266C.h"
#include "comm_manager.h"

/**
 * @struct WirelessManager
 * @brief Wrapper struct for NitroSDK's wm.c
 *
 * WirelessManager is treated as a static class and
 * serves as a wrapper for the NitroSDK's wireless manager
 * (shortened to wm.c).
 */
typedef struct WirelessManager {
    WMpparam parentParam ATTRIBUTE_ALIGN(32);
    u8 nitroManagerBuffer[3840] ATTRIBUTE_ALIGN(32);
    u8 sendBuffer[224] ATTRIBUTE_ALIGN(32);
    u8 recvBuffer[512] ATTRIBUTE_ALIGN(32);
    WMbssDesc bssDesc ATTRIBUTE_ALIGN(32);
    WMscanParam scanParam ATTRIBUTE_ALIGN(32);
    WirelessManagerScanFunc scanCallback;
    s32 sendBufferSize;
    s32 recvBufferSize;
    u16 channel;
    u16 autoConnect;
    int state;
    int connectionType;
    WirelessManagerRecvFunc recvFunc;

    // clang-format off
    BOOL (* unusedCallback_1390)(WMStartParentCallback *);
    // clang-format on

    WirelessManagerGGIDScanFunc ggidScanCallback;
    WirelessManagerConnectFunc disconnectCallback;
    WirelessManagerConnectFunc connectCallback;
    u16 aid; // machine id. 0 for the server, 1~7 for clients
    u16 connectedBitmap; // bitmap of (1 << aid) for connected machines
    int errorCode;
    u8 numConnectionsMax;
    u8 pauseConnectionClient; // if this WirelessManager is a Client that has disconnected
    u32 rand;
    u16 measureChannel;
    u16 measureChannelBusyRatio;
    u16 leastUsedChannelBitmap;
    u8 pauseConnection;
    u8 pauseConnectSystem;
    u8 setEntry;
    u8 sentBeaconCount;
} WirelessManager;

void include_unk_021C07A8(void);
static void WirelessManager_InidcateCallback(void *callback);
static BOOL WirelessManager_InitializeWM(BOOL isNotListening);
static void WirelessManager_FinishInitializeWM(void *callback);
static u16 WirelessManager_MeasureChannel(u16 chanel);
static void WirelessManager_FinishMeasureChannel(void *callback);
static WMErrCode WirelessManager_MeasureChannelInternal(WMCallbackFunc callback, u16 port);
static s16 WirelessManager_GetRandomChannel(u16 bitmap);
static BOOL WirelessManager_SetParentParameter(void);
static void WirelessManager_FinishSetParentParameter(void *callback);
static BOOL WirelessManager_StartServer(void);
static void WirelessManager_FinishStartServer(void *callback);
static BOOL WirelessManager_StartMPServer(void);
static void WirelessManager_FinishStartMPServer(void *callback);
static BOOL WirelessManager_StartScan(void);
static void WirelessManager_FinishStartScan(void *callback);
static BOOL WirelessManager_EndScan(void);
static void WirelessManager_FinishEndScan(void *callback);
static BOOL WirelessManager_StartClient(void);
static void WirelessManager_FinishStartClient(void *callback);
static BOOL WirelessManager_StartMPClient(void);
static void WirelessManager_FinishStartMPClient(void *callback);
static BOOL WirelessManager_SendMPMessage(void *message, u16 size, int port, WirelessManagerSendFunc callback);
static void WirelessManager_FinishSendMPMessage(void *callback);
static void WirelessManager_RecvMessageCallback(void *callback);
static BOOL WirelessManager_EndMPServer(void);
static void WirelessManager_FinishEndMPServer(void *callback);
static BOOL WirelessManager_EndServer(void);
static void WirelessManager_FinishEndServer(void *callback);
static BOOL WirelessManager_EndMPClient(void);
static void WirelessManager_FinishEndMPClient(void *callback);
static BOOL WirelessManager_DisconnectClient(void);
static void WirelessManager_FinishDisconnectClient(void *callback);
static void WirelessManager_FinishEnd(void *callback);
static BOOL WirelessManager_ResetInternal(void);
static void WirelessManager_FinishResetInternal(void *callback);
static u16 WirelessManager_GetNumConnected(void);

static WirelessManager *sWirelessManager;
static void (*Unk_021C07A8)(const char *, ...) = NULL;

void include_unk_021C07A8(void)
{
    Unk_021C07A8;
}

/**
 * @param Sets WirelessManager's state to the given WirelessManagerState
 *
 * @param state
 */
static void WirelessManager_SetState(int state)
{
    sWirelessManager->state = state;
}

/**
 * @brief Sets WirelessManager's errorCode to the given NitroSDK WMErrCode or Pokeplatinum ExtendedWMErrCode enum
 *
 * @param errorCode
 */
static void WirelessManager_SetErrorCode(int errorCode)
{
    if (sWirelessManager->state == WIRELESS_STATE_ERROR || sWirelessManager->state == WIRELESS_STATE_FATAL_ERROR) {
        return;
    }

    sWirelessManager->errorCode = errorCode;
}

/**
 * @brief Sets the internal WM parent parameter before WirelessManager gets started as a server.
 *
 * @return TRUE if there is no error while setting the parent parameter
 */
static BOOL WirelessManager_SetParentParameter(void)
{
    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    WMErrCode errorCode = WM_SetParentParameter(WirelessManager_FinishSetParentParameter, &sWirelessManager->parentParam);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_SetParentParameter asynchronous process completes
 *
 * @param wm_callback
 */
static void WirelessManager_FinishSetParentParameter(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    }

    if (!WirelessManager_StartServer()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
    }
}

/**
 * @brief Starts the internal WM process as a parent/server
 *
 * @return TRUE if there is no issue starting the server
 */
static BOOL WirelessManager_StartServer(void)
{
    if ((sWirelessManager->state == WIRELESS_STATE_CONNECTED) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_KEY) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_DATA)) {
        return TRUE;
    }

    WMStatus *status = (WMStatus *)WMi_GetStatusAddress();

    DC_InvalidateRange(&status->wep_flag, sizeof(status->wep_flag));
    status->wep_flag = 0;
    DC_FlushRange(&status->wep_flag, sizeof(status->wep_flag));

    WMErrCode errorCode = WM_StartParent(WirelessManager_FinishStartServer);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    sWirelessManager->aid = 0;
    sWirelessManager->connectedBitmap = 1;

    return TRUE;
}

/**
 * @brief Callback used when the WM_StartParent asynchronous process completes.
 *
 * @param wm_startparentcallback
 */
static void WirelessManager_FinishStartServer(void *wm_startparentcallback)
{
    WMStartParentCallback *callback = (WMStartParentCallback *)wm_startparentcallback;
    const u16 connected = (u16)(1 << callback->aid);

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    }

    switch (callback->state) {
    case WM_STATECODE_BEACON_SENT:
        sWirelessManager->sentBeaconCount++;
        break;
    case WM_STATECODE_CONNECTED:
        if (sWirelessManager->pauseConnectSystem == TRUE || sWirelessManager->pauseConnection == TRUE || WirelessManager_GetNumConnected() >= sWirelessManager->numConnectionsMax || callback->ssid[0] != CommManager_GetCommType() || 0 != memcmp("DP", &callback->ssid[1], sizeof("DP"))) {
            WMErrCode disconnectCode;

            disconnectCode = WM_Disconnect(NULL, callback->aid);

            if (disconnectCode != WM_ERRCODE_OPERATING) {
                WirelessManager_SetErrorCode(disconnectCode);
                WirelessManager_SetState(WIRELESS_STATE_ERROR);
            }
            break;
        }

        sWirelessManager->connectedBitmap |= connected;

        if (sWirelessManager->connectCallback) {
            sWirelessManager->connectCallback(callback->aid);
        }
        break;
    case WM_STATECODE_DISCONNECTED:
        sWirelessManager->connectedBitmap &= ~connected;

        if (sWirelessManager->disconnectCallback) {
            sWirelessManager->disconnectCallback(callback->aid);
        }
        break;
    case WM_STATECODE_DISCONNECTED_FROM_MYSELF:
        break;
    case WM_STATECODE_PARENT_START:
        if (!WirelessManager_StartMPServer()) {
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
        }
        break;
    default:
        break;
    }
}

/**
 * @brief Starts the internal MP_PARENT process
 *
 * @return TRUE if there is no error while starting the MP
 */
static BOOL WirelessManager_StartMPServer(void)
{
    if ((sWirelessManager->state == WIRELESS_STATE_CONNECTED) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_KEY) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_DATA)) {
        return TRUE;
    }

    WirelessManager_SetState(WIRELESS_STATE_CONNECTED);

    WMErrCode errorCode = WM_StartMP(WirelessManager_FinishStartMPServer, (u16 *)sWirelessManager->recvBuffer, (u16)sWirelessManager->recvBufferSize, (u16 *)sWirelessManager->sendBuffer, (u16)sWirelessManager->sendBufferSize, 1);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the server's WM_StartMP asynchronous process completes.
 *
 * @param wm_startmpcallback
 */
static void WirelessManager_FinishStartMPServer(void *wm_startmpcallback)
{
    WMstartMPCallback *callback = (WMstartMPCallback *)wm_startmpcallback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    }

    switch (callback->state) {
    case WM_STATECODE_MP_START:
        if (sWirelessManager->connectionType == WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER) {
            if (sWirelessManager->state != WIRELESS_STATE_CONNECTED && sWirelessManager->state == WIRELESS_STATE_TRANSMIT_KEY) {
                return;
            }
        }

        WirelessManager_SetState(WIRELESS_STATE_CONNECTED);
        break;
    case WM_STATECODE_MPEND_IND:
        break;
    case WM_STATECODE_MP_IND:
    case WM_STATECODE_MPACK_IND:
    default:
        break;
    }
}

/**
 * @brief Ends the internal MP_PARENT process
 *
 * @return TRUE if there is no error ending the MP
 */
static BOOL WirelessManager_EndMPServer(void)
{
    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    WMErrCode errorCode = WM_EndMP(WirelessManager_FinishEndMPServer);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the server's WM_EndMP asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishEndMPServer(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_Reset();
        return;
    }

    if (!WirelessManager_EndServer()) {
        WirelessManager_Reset();
        return;
    }
}

/**
 * @brief Ends the internal WM parent process
 *
 * @return TRUE if there is no error while ending the server
 */
static BOOL WirelessManager_EndServer(void)
{
    WMErrCode errorCode = WM_EndParent(WirelessManager_FinishEndServer);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_EndParent asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishEndServer(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_IDLE);
}

/**
 * @brief Initializes the Wireless Manager as a client and starts the scan process. Automatically connects to a Server when found.
 *
 * @param connectionType
 * @param macAddress
 * @param channel
 *
 * @return TRUE if there is no error while starting the scan
 */
BOOL WirelessManager_ConnectClientAuto(int connectionType, const u8 *macAddress, u16 channel)
{
    sWirelessManager->recvBufferSize = WM_SIZE_MP_CHILD_RECEIVE_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);
    sWirelessManager->sendBufferSize = MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), WM_SIZE_MP_CHILD_SEND_BUFFER(38, 0)));

    WirelessManager_SetState(WIRELESS_STATE_SCAN);

    sWirelessManager->bssDesc.channel = 1;
    *(u16 *)(&sWirelessManager->scanParam.bssid[4]) = *(u16 *)(macAddress + 4);
    *(u16 *)(&sWirelessManager->scanParam.bssid[2]) = *(u16 *)(macAddress + 2);
    *(u16 *)(&sWirelessManager->scanParam.bssid[0]) = *(u16 *)(macAddress + 0);

    sWirelessManager->connectionType = connectionType;

    sWirelessManager->scanCallback = NULL;
    sWirelessManager->channel = channel;
    sWirelessManager->scanParam.channel = 0;
    sWirelessManager->autoConnect = TRUE;

    if (!WirelessManager_StartScan()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Initializes the Wireless Manager as a client and starts the scan process with a given callback.
 *
 * @param scanCallback
 * @param macAddress
 * @param channel
 *
 * @return TRUE if there is no error while starting the scan
 */
BOOL WirelessManager_ConnectClientScanCallback(WirelessManagerScanFunc scanCallback, const u8 *macAddress, u16 channel)
{
    WirelessManager_SetState(WIRELESS_STATE_SCAN);

    sWirelessManager->scanCallback = scanCallback;
    sWirelessManager->channel = channel;
    sWirelessManager->scanParam.channel = 0;
    sWirelessManager->autoConnect = FALSE;

    *(u16 *)(&sWirelessManager->scanParam.bssid[4]) = *(u16 *)(macAddress + 4);
    *(u16 *)(&sWirelessManager->scanParam.bssid[2]) = *(u16 *)(macAddress + 2);
    *(u16 *)(&sWirelessManager->scanParam.bssid[0]) = *(u16 *)(macAddress);

    if (!WirelessManager_StartScan()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Starts the internal WM scan process
 *
 * @return TRUE if there is no error while starting the scan
 */
static BOOL WirelessManager_StartScan(void)
{
    u16 channel = WM_GetAllowedChannel();

    if (channel == 0x8000) {
        WirelessManager_SetErrorCode(WM_ERRCODE_ILLEGAL_STATE);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
        return FALSE;
    }

    if (channel == 0) {
        WirelessManager_SetErrorCode(WM_ERRCODE_DISCONNECTED_SERVER);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
        return FALSE;
    }

    if (sWirelessManager->channel == 0) {
        while (TRUE) {
            sWirelessManager->scanParam.channel++;

            if (sWirelessManager->scanParam.channel > 16) {
                sWirelessManager->scanParam.channel = 1;
            }

            if (channel & (0x1 << (sWirelessManager->scanParam.channel - 1))) {
                break;
            }
        }
    } else {
        sWirelessManager->scanParam.channel = (u16)sWirelessManager->channel;
    }

    sWirelessManager->scanParam.maxChannelTime = WM_GetDispersionScanPeriod() / 3;
    sWirelessManager->scanParam.scanBuf = &sWirelessManager->bssDesc;

    WMErrCode errorCode = WM_StartScan(WirelessManager_FinishStartScan, &sWirelessManager->scanParam);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_StartScan asynchronous process completes. Restarts the scan if necessary.
 */
static void WirelessManager_FinishStartScan(void *wm_startscancallback)
{
    WMstartScanCallback *callback = (WMstartScanCallback *)wm_startscancallback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    }

    if (sWirelessManager->state != WIRELESS_STATE_SCAN) {
        sWirelessManager->autoConnect = FALSE;

        if (!WirelessManager_EndScan()) {
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
        }

        return;
    }

    switch (callback->state) {
    case WM_STATECODE_SCAN_START:
        return;
    case WM_STATECODE_PARENT_NOT_FOUND:
        break;
    case WM_STATECODE_PARENT_FOUND:

        DC_InvalidateRange(&sWirelessManager->bssDesc, sizeof(WMbssDesc));

        if ((sWirelessManager->ggidScanCallback != NULL) && (callback->gameInfoLength >= 8)) {
            UnkStruct_0203330C *v1 = (UnkStruct_0203330C *)callback->gameInfo.userGameInfo;

            sWirelessManager->ggidScanCallback(callback->gameInfo.ggid, v1->unk_04);
        }

        if ((callback->gameInfoLength < 8) || (callback->gameInfo.ggid != sWirelessManager->parentParam.ggid)) {
            break;
        }

        if ((callback->gameInfo.gameNameCount_attribute & (WM_ATTR_FLAG_ENTRY | WM_ATTR_FLAG_MB)) != WM_ATTR_FLAG_ENTRY) {
            break;
        }

        if (sWirelessManager->scanCallback != NULL) {
            sWirelessManager->scanCallback(&sWirelessManager->bssDesc);
        }

        if (sWirelessManager->autoConnect) {
            if (!WirelessManager_EndScan()) {
                WirelessManager_SetState(WIRELESS_STATE_ERROR);
            }

            return;
        }
        break;
    }

    if (!WirelessManager_StartScan()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
    }
}

/**
 * @brief Changes the WirelessManager state to stop scanning.
 *
 * @return TRUE if the WirelessManager was in WIRELESS_STATE_SCAN, FALSE otherwise.
 */
BOOL WirelessManager_StopScan(void)
{
    if (sWirelessManager->state != WIRELESS_STATE_SCAN) {
        return FALSE;
    }

    WirelessManager_SetState(WIRELESS_STATE_BUSY);
    return TRUE;
}

/**
 * @brief Ends the internal WM scan process.
 *
 * @return TRUE if there was no error while ending the scan
 */
static BOOL WirelessManager_EndScan(void)
{
    WMErrCode errorCode = WM_EndScan(WirelessManager_FinishEndScan);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_EndScan asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishEndScan(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_IDLE);

    if (!sWirelessManager->autoConnect) {
        return;
    }

    if (!WirelessManager_StartClient()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
    }
}

/**
 * @brief Starts the internal WM as a client/child
 *
 * @return TRUE if there was no issue starting the connection process or if the client is already connected
 */
static BOOL WirelessManager_StartClient(void)
{
    u8 ssid[32];

    if ((sWirelessManager->state == WIRELESS_STATE_CONNECTED) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_KEY) || (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_DATA)) {
        return TRUE;
    }

    WirelessManager_SetState(WIRELESS_STATE_BUSY);
    MI_CpuCopy8("DP", &ssid[1], sizeof("DP"));

    ssid[0] = CommManager_GetCommType();
    WMErrCode errorCode = WM_StartConnectEx(WirelessManager_FinishStartClient, &sWirelessManager->bssDesc, ssid, 1, WM_AUTHMODE_OPEN_SYSTEM);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the Client's WM_StartConnectEx asynchronous process completes.
 */
static void WirelessManager_FinishStartClient(void *wm_connectcallback)
{
    WMStartConnectCallback *callback = (WMStartConnectCallback *)wm_connectcallback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);

        if (callback->errcode == WM_ERRCODE_OVER_MAX_ENTRY) {
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
            return;
        } else if (callback->errcode == WM_ERRCODE_NO_ENTRY) {
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
            return;
        } else if (callback->errcode == WM_ERRCODE_FAILED) {
            if (CommManager_CheckError()) {
                WirelessManager_SetState(WIRELESS_STATE_ERROR);
            } else {
                WirelessManager_SetState(WIRELESS_STATE_BAD_CONNECTION);
            }

            return;
        } else {
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
        }

        return;
    }

    if (callback->state == WM_STATECODE_BEACON_LOST) {
        return;
    }

    if (callback->state == WM_STATECODE_CONNECTED) {
        if (sWirelessManager->pauseConnectionClient) {
            WirelessManager_SetErrorCode(WM_ERRCODE_DISCONNECTED);
            WirelessManager_SetState(WIRELESS_STATE_ERROR);
            return;
        } else {
            WirelessManager_SetState(WIRELESS_STATE_CONNECTED);

            if (!WirelessManager_StartMPClient()) {
                WirelessManager_SetState(WIRELESS_STATE_BUSY);
                return;
            }

            sWirelessManager->aid = callback->aid;
            return;
        }
    } else if (callback->state == WM_STATECODE_CONNECT_START) {
        return;
    } else if (callback->state == WM_STATECODE_DISCONNECTED) {
        WirelessManager_SetErrorCode(WM_ERRCODE_DISCONNECTED);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    } else if (callback->state == WM_STATECODE_DISCONNECTED_FROM_MYSELF) {
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_ERROR);
}

/**
 * @brief Starts the internal MP_CHILD process.
 *
 * @return TRUE if there was no error while starting the MP_CHILD process.
 */
static BOOL WirelessManager_StartMPClient(void)
{
    WMErrCode errorCode = WM_StartMP(WirelessManager_FinishStartMPClient, (u16 *)sWirelessManager->recvBuffer, (u16)sWirelessManager->recvBufferSize, (u16 *)sWirelessManager->sendBuffer, (u16)sWirelessManager->sendBufferSize, 1);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the Client's WM_StartMP asynchronous process completes.
 *
 * @param wm_startmpcallback
 */
static void WirelessManager_FinishStartMPClient(void *wm_startmpcallback)
{
    WMstartMPCallback *callback = (WMstartMPCallback *)wm_startmpcallback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        if (callback->errcode == WM_ERRCODE_SEND_FAILED) {
            return;
        } else if (callback->errcode == WM_ERRCODE_TIMEOUT) {
            return;
        } else if (callback->errcode == WM_ERRCODE_INVALID_POLLBITMAP) {
            return;
        }

        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);

        return;
    }

    switch (callback->state) {
    case WM_STATECODE_MP_START:
        if (sWirelessManager->connectionType == WIRELESS_CONNECTION_TRANSMIT_KEY_CLIENT) {
            if (sWirelessManager->state == WIRELESS_STATE_TRANSMIT_KEY) {
                return;
            }
        }

        WirelessManager_SetState(WIRELESS_STATE_CONNECTED);
        break;
    case WM_STATECODE_MP_IND:
        break;
    case WM_STATECODE_MPACK_IND:
        break;
    case WM_STATECODE_MPEND_IND:
    default:
        break;
    }
}

/**
 * @brief Ends the internal MP_CHILD process
 *
 * @return TRUE if there is no error while ending the MP
 */
static BOOL WirelessManager_EndMPClient(void)
{
    WirelessManager_SetState(WIRELESS_STATE_BUSY);
    WMErrCode errorCode = WM_EndMP(WirelessManager_FinishEndMPClient);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the Client's WM_EndMP asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishEndMPClient(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        WirelessManager_Finalize();
        return;
    }

    if (!WirelessManager_DisconnectClient()) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
    }
}

/**
 * @brief Disconnects the internal wm client.
 *
 * @return TRUE if there was no error while disconnecting
 */
static BOOL WirelessManager_DisconnectClient(void)
{
    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    WMErrCode errorCode = WM_Disconnect(WirelessManager_FinishDisconnectClient, 0);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        WirelessManager_Reset();
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the Client's WM_Disconnect asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishDisconnectClient(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_IDLE);
}

/**
 * @brief Resets the internal WM
 *
 * @return TRUE if there were no errors while reseting.
 */
static BOOL WirelessManager_ResetInternal(void)
{
    WirelessManager_SetState(WIRELESS_STATE_BUSY);
    WMErrCode errorCode = WM_Reset(WirelessManager_FinishResetInternal);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_Reset asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishResetInternal(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        WirelessManager_SetErrorCode(callback->errcode);

        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_IDLE);
}

/**
 * @brief Send a message to a given port with a send callback functions
 *
 * @return TRUE if there was no error while sending the message
 */
static BOOL WirelessManager_SendMPMessage(void *message, u16 size, int port, WirelessManagerSendFunc sendCallback)
{
    DC_FlushRange(sWirelessManager->sendBuffer, (u32)sWirelessManager->sendBufferSize);

    WMErrCode errorCode = WM_SetMPDataToPortEx(WirelessManager_FinishSendMPMessage, (void *)sendCallback, message, size, 0xFFFF, port, WM_PRIORITY_NORMAL);

    return errorCode == WM_ERRCODE_OPERATING;
}

/**
 * @brief Callback used when the WM_SetMPDataToPortEx asynchronous process completes.
 *
 * @param wm_portsendcallback
 */
static void WirelessManager_FinishSendMPMessage(void *wm_portsendcallback)
{
    WMPortSendCallback *callback = (WMPortSendCallback *)wm_portsendcallback;

    if ((callback->errcode != WM_ERRCODE_SUCCESS) && (callback->errcode != WM_ERRCODE_SEND_FAILED)) {
        WirelessManager_SetErrorCode(callback->errcode);
        return;
    }

    if (callback->arg != NULL) {
        WirelessManagerSendFunc sendFunc = (WirelessManagerSendFunc)callback->arg;

        (*sendFunc)(callback->errcode == WM_ERRCODE_SUCCESS);
    }
}

/**
 * @brief Callback set with WM_SetPortCallback to receive messages
 *
 * @param wm_portrecvcallback
 */
static void WirelessManager_RecvMessageCallback(void *wm_portrecvcallback)
{
    WMPortRecvCallback *callback = (WMPortRecvCallback *)wm_portrecvcallback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);
    } else if (sWirelessManager->recvFunc != NULL) {
        if (callback->state == WM_STATECODE_PORT_INIT) {
            ;
        } else if (callback->state == WM_STATECODE_PORT_RECV) {
            (*sWirelessManager->recvFunc)(callback->aid, callback->data, callback->length);
        } else if (callback->state == WM_STATECODE_DISCONNECTED) {
            (*sWirelessManager->recvFunc)(callback->aid, NULL, 0);
        }
    }
}

/**
 * @brief Callback used when the WM_End asynchronous process completes
 *
 * @param wm_callback
 */
static void WirelessManager_FinishEnd(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetState(WIRELESS_STATE_FATAL_ERROR);
        return;
    }

    WVR_TerminateAsync(NULL, NULL);
    WirelessManager_SetState(WIRELESS_STATE_STOP);
}

/**
 * @brief Sets the WirelessManager's parentParam.ggid
 */
void WirelessManager_SetParentParamGGID(u32 ggid)
{
    sWirelessManager->parentParam.ggid = ggid;
}

/**
 * @brief Sets the WirelessManager's parentParam userGameInfo and userGameInfoLength
 *
 * @param userGameInfo
 * @param size
 */
void WirelessManager_SetParentParamGameInfoAndLength(u16 *userGameInfo, u16 size)
{
    sWirelessManager->parentParam.userGameInfo = userGameInfo;
    sWirelessManager->parentParam.userGameInfoLength = size;
}

/**
 * @brief Gets the connectedBitmap
 *
 * @return sWirelessManager->connectedBitmap
 */
u16 WirelessManager_GetConnectedBitmap(void)
{
    return sWirelessManager->connectedBitmap;
}

/**
 * @brief Gets the number of connected machines
 *
 * @return Number of 1s in sWirelessManager->connectedBitmap
 */
static u16 WirelessManager_GetNumConnected(void)
{
    int cnt = 0, i;
    u16 connected = sWirelessManager->connectedBitmap;

    for (i = 0; i < 16; i++) {
        if (connected & 0x1) {
            cnt++;
        }

        connected = connected >> 1;
    }

    return cnt;
}

/**
 * @brief Gets the current WirelessManagerState
 *
 * @return sWirelessManager->state, using the enum WirelessManagerState
 */
int WirelessManager_GetState(void)
{
    return sWirelessManager->state;
}

/**
 * @brief Gets the current error code
 *
 * @return sWirelessManager->errorCode, using either the enum WMErrCode or ExtendedWMErrCode
 */
int WirelessManager_GetErrorCode(void)
{
    return sWirelessManager->errorCode;
}

/**
 * @brief Starts the internal process to measure the signal strength of each channel, starting a channel 1
 *
 * @return TRUE if there were no issues while measuring the channels
 */
BOOL WirelessManager_StartMeasureChannel(void)
{
    u8 macAddress[6];

    OS_GetMacAddress(macAddress);

    sWirelessManager->rand = (u32)(OS_GetVBlankCount() + *(u16 *)&macAddress[0] + *(u16 *)&macAddress[2] + *(u16 *)&macAddress[4]);
    sWirelessManager->rand = sWirelessManager->rand * 69069UL + 12345;
    sWirelessManager->measureChannel = 0;
    sWirelessManager->measureChannelBusyRatio = 100 + 1;

    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    u16 errorCode = WirelessManager_MeasureChannel(1);

    if (errorCode == WM_ERRCODE_FATAL) {
        WirelessManager_SetErrorCode(WM_ERRCODE_FATAL);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
        return FALSE;
    }

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Measures the signal strength of the given channel
 *
 * @return errorCode as returned by WM_MeasureChannel
 */
static u16 WirelessManager_MeasureChannel(u16 channel)
{
    u16 allowedChannel = WM_GetAllowedChannel();

    if (allowedChannel == 0x8000) {
        WirelessManager_SetErrorCode(WM_ERRCODE_ILLEGAL_STATE);

        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);

        return WM_ERRCODE_ILLEGAL_STATE;
    }

    if (allowedChannel == 0) {
        WirelessManager_SetErrorCode(WM_ERRCODE_DISCONNECTED_SERVER);

        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);

        return WM_ERRCODE_FATAL;
    }

    while (((1 << (channel - 1)) & allowedChannel) == 0) {
        channel++;

        if (channel > 16) {
            return WM_ERRCODE_FATAL;
        }
    }

    u16 errorCode = WirelessManager_MeasureChannelInternal(WirelessManager_FinishMeasureChannel, channel);

    return errorCode;
}

/**
 * @brief Callbacked used when the WM_MeasureChannel asynchronous process completes
 *
 * @param wm_measurechannelcallback
 */
static void WirelessManager_FinishMeasureChannel(void *wm_measurechannelcallback)
{
    WMMeasureChannelCallback *measureChannelCallback = (WMMeasureChannelCallback *)wm_measurechannelcallback;

    if (measureChannelCallback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(measureChannelCallback->errcode);

        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);

        return;
    }

    u16 channel = measureChannelCallback->channel;

    if (sWirelessManager->measureChannelBusyRatio > measureChannelCallback->ccaBusyRatio) {
        sWirelessManager->measureChannelBusyRatio = measureChannelCallback->ccaBusyRatio;
        sWirelessManager->leastUsedChannelBitmap = (u16)(1 << (channel - 1));
    } else if (sWirelessManager->measureChannelBusyRatio == measureChannelCallback->ccaBusyRatio) {
        sWirelessManager->leastUsedChannelBitmap |= 1 << (channel - 1);
    }

    u16 errorCode = WirelessManager_MeasureChannel(++channel);

    if (errorCode == WM_ERRCODE_FATAL) {
        WirelessManager_SetState(WIRELESS_STATE_CHECK_CHANNEL);
        return;
    }

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        return;
    }
}

/**
 * @brief Wrapper for WM_MeasureChannel
 *
 * @param wm_callback
 * @param channel
 *
 * @return WMErrCode as returned by WM_MeasureChannel
 */
static WMErrCode WirelessManager_MeasureChannelInternal(WMCallbackFunc callback, u16 channel)
{
    return WM_MeasureChannel(callback, 3, 17, channel, 30);
}
/**
 * @brief Sets the measured channel to a least utilized channel and returns the value
 *
 * @return sWirelessManager->measureChannel, after settting it
 */
u16 WirelessManager_GetMeasureChannel(void)
{
    WirelessManager_SetState(WIRELESS_STATE_IDLE);
    sWirelessManager->measureChannel = (u16)WirelessManager_GetRandomChannel(sWirelessManager->leastUsedChannelBitmap);

    return sWirelessManager->measureChannel;
}

/**
 * @brief Gets a random channel from among channels in the bitmap
 *
 * @return A random channel in the bitmap. 0 if none is found.
 */
static s16 WirelessManager_GetRandomChannel(u16 bitmap)
{
    s16 i;
    s16 channel = 0;
    u16 cnt = 0;
    u16 randChannel;

    for (i = 0; i < 16; i++) {
        if (bitmap & (1 << i)) {
            channel = (s16)(i + 1);
            cnt++;
        }
    }

    if (cnt <= 1) {
        return channel;
    }

    randChannel = (u16)((((sWirelessManager->rand = sWirelessManager->rand * 69069UL + 12345) & 0xFF) * cnt) / 0x100);
    channel = 1;

    for (i = 0; i < 16; i++) {
        if (bitmap & 1) {
            if (randChannel == 0) {
                return (s16)(i + 1);
            }

            randChannel--;
        }

        bitmap >>= 1;
    }

    return 0;
}

/**
 * @brief Initializes sWirelessManager with default params
 *
 * @param heap
 * @param isNotListening
 *
 * @return TRUE if initialization is successful
 */
BOOL WirelessManager_Initialize(void *heap, BOOL isNotListening)
{
    u32 heapAddress = (u32)heap;

    if (heapAddress % 32) {
        heapAddress += 32 - (heapAddress % 32);
    }

    sWirelessManager = (WirelessManager *)heapAddress;
    sWirelessManager->recvBufferSize = 0;
    sWirelessManager->sendBufferSize = 0;
    sWirelessManager->recvFunc = NULL;
    sWirelessManager->aid = 0;
    sWirelessManager->connectedBitmap = 1;
    sWirelessManager->errorCode = WM_ERRCODE_SUCCESS;
    sWirelessManager->state = WIRELESS_STATE_STOP;
    sWirelessManager->parentParam.userGameInfo = NULL;
    sWirelessManager->parentParam.userGameInfoLength = 0;
    sWirelessManager->unusedCallback_1390 = NULL;
    sWirelessManager->numConnectionsMax = (7 + 1);
    sWirelessManager->pauseConnectionClient = FALSE;
    sWirelessManager->pauseConnection = 0;

    if (!WirelessManager_InitializeWM(isNotListening)) {
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Gets allocated heap size for sWirelessManager
 *
 * @return sizeof(WirelessManager) + 32
 */
int WirelessManager_GetHeapSize(void)
{
    return sizeof(WirelessManager) + 32;
}

/**
 * @brief WM indicator callback for WM_SetIndCallback
 *
 * @param wm_callback
 */
static void WirelessManager_InidcateCallback(void *wm_callback)
{
    WMindCallback *callback = (WMindCallback *)wm_callback;

    if (callback->errcode == WM_ERRCODE_FIFO_ERROR) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);
        WirelessManager_SetErrorCode(WM_ERRCODE_GF_MAX);
    }
}

/**
 * @brief Initializes the internal WM (for listening if isNotListening is FALSE)
 *
 * @param isNotListening
 *
 * @return TRUE if there was no error while running WM_Initialize or WM_InitializeForListening
 */
static BOOL WirelessManager_InitializeWM(BOOL isNotListening)
{
    WMErrCode errorCode;

    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    if (isNotListening == 1) {
        errorCode = WM_Initialize(&sWirelessManager->nitroManagerBuffer, WirelessManager_FinishInitializeWM, 2);
    } else {
        errorCode = WM_InitializeForListening(&sWirelessManager->nitroManagerBuffer, WirelessManager_FinishInitializeWM, 2, 0);
    }

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetErrorCode(errorCode);
        WirelessManager_SetState(WIRELESS_STATE_FATAL_ERROR);
        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Callback used when the WM_Initialize(ForListening) asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishInitializeWM(void *wm_callback)
{
    WMCallback *callback = (WMCallback *)wm_callback;

    if (callback->errcode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(callback->errcode);

        WirelessManager_SetState(WIRELESS_STATE_FATAL_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);

        return;
    }

    WMErrCode errorCode = WM_SetIndCallback(WirelessManager_InidcateCallback);

    if (errorCode != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetErrorCode(errorCode);

        WirelessManager_SetState(WIRELESS_STATE_FATAL_ERROR);
        CommManager_SetCommError(COMM_ERROR_RESET_SAVEPOINT);
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_IDLE);
}

/**
 * @brief Deadstripped. Callback used when the WM_SetLifeTime asynchronous process completes.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishSetLifeTime(void *wm_callback)
{
}

/**
 * @brief Initializes the WirelessManager as a server and broadcasts a beacon for clients to connect to.
 *
 * @param connectionType
 * @param tgid
 * @param channel
 * @param maxEntry
 * @param beaconPeriod
 * @param entryFlag
 *
 * @return TRUE if the initialization process begins without error
 */
BOOL WirelessManager_ConnectServer(int connectionType, u16 tgid, u16 channel, u16 maxEntry, u16 beaconPeriod, BOOL entryFlag)
{
    if (sub_0203276C(CommManager_GetCommType())) {
        WM_SetLifeTime(WirelessManager_FinishSetLifeTime, 0xFFFF, 100, 5, 100);
    }

    sWirelessManager->recvBufferSize = MATH_MAX(WM_SIZE_MP_PARENT_RECEIVE_BUFFER(12, 7, 0), MATH_MAX(WM_SIZE_MP_PARENT_RECEIVE_BUFFER(12, 7, 0), WM_SIZE_MP_PARENT_RECEIVE_BUFFER(38, (5 - 1), 0)));
    sWirelessManager->sendBufferSize = WM_SIZE_MP_PARENT_SEND_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);

    sWirelessManager->connectionType = connectionType;
    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    sWirelessManager->parentParam.tgid = tgid;
    sWirelessManager->parentParam.channel = channel;
    sWirelessManager->parentParam.beaconPeriod = beaconPeriod;

    switch (connectionType) {
    case WIRELESS_CONNECTION_MP_SERVER:
        sWirelessManager->parentParam.parentMaxSize = 192;

        if (maxEntry >= 5) {
            sWirelessManager->parentParam.childMaxSize = 12;
        } else {
            sWirelessManager->parentParam.childMaxSize = 38;
        }

        break;
    case WIRELESS_CONNECTION_TRANSMIT_DATA_SERVER:
        sWirelessManager->parentParam.parentMaxSize = (12 * (1 + 7) + 4);
        sWirelessManager->parentParam.childMaxSize = 12;
        break;
    }

    sWirelessManager->parentParam.maxEntry = maxEntry;
    sWirelessManager->parentParam.CS_Flag = 0;
    sWirelessManager->parentParam.multiBootFlag = 0;
    sWirelessManager->parentParam.entryFlag = entryFlag;
    sWirelessManager->parentParam.KS_Flag = (u16)((connectionType == WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER) ? 1 : 0);

    switch (connectionType) {
    case WIRELESS_CONNECTION_MP_SERVER:
    case WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER:
    case WIRELESS_CONNECTION_TRANSMIT_DATA_SERVER:
        return WirelessManager_SetParentParameter();
    default:
        break;
    }

    return FALSE;
}

/**
 * @brief Initializes the WirelessManager as a client and begins scanning for servers using the data in bssDesc as a parameter.
 *
 * @param connectionType
 * @param bssDesc
 *
 * @return TRUE if the initialization process begins without error
 */
BOOL WirelessManager_ConnectClient(int connectionType, WMBssDesc *bssDesc)
{
    if (sub_0203276C(CommManager_GetCommType())) {
        WM_SetLifeTime(WirelessManager_FinishSetLifeTime, 0xFFFF, 100, 5, 100);
    }

    sWirelessManager->recvBufferSize = WM_SIZE_MP_CHILD_RECEIVE_BUFFER(MATH_MAX((12 * (1 + 7) + 4), 192), 0);
    sWirelessManager->sendBufferSize = MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), MATH_MAX(WM_SIZE_MP_CHILD_SEND_BUFFER(12, 0), WM_SIZE_MP_CHILD_SEND_BUFFER(38, 0)));

    sWirelessManager->connectionType = connectionType;
    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    switch (connectionType) {
    case WIRELESS_CONNECTION_MP_CLIENT:
    case WIRELESS_CONNECTION_TRANSMIT_KEY_CLIENT:
    case WIRELESS_CONNECTION_TRANSMIT_DATA_CLIENT:
        MI_CpuCopy8(bssDesc, &sWirelessManager->bssDesc, sizeof(sWirelessManager->bssDesc));
        DC_FlushRange(&sWirelessManager->bssDesc, sizeof(sWirelessManager->bssDesc));
        DC_WaitWriteBufferEmpty();
        return WirelessManager_StartClient();
    default:
        break;
    }

    return FALSE;
}

/**
 * @brief Sets the receive function on a given port
 *
 * @param recvFunction
 * @param port
 */
void WirelessManager_SetRecvFunction(WirelessManagerRecvFunc recvFunction, int port)
{
    sWirelessManager->recvFunc = recvFunction;

    if (WM_SetPortCallback(port, WirelessManager_RecvMessageCallback, NULL) != WM_ERRCODE_SUCCESS) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);

        while (TRUE) {
            ;
        }
    }
}

/**
 * @brief Sends a message to a given port
 *
 * @param message
 * @param size
 * @param port
 * @param sendCallback
 *
 * @return TRUE if there were no issues in the SendMPMessage process
 */
BOOL WirelessManager_SendMessage(void *message, u16 size, int port, WirelessManagerSendFunc callback)
{
    if ((WirelessManager_GetAID() == 0) && !(0xFE & WirelessManager_GetConnectedBitmap())) {
        return FALSE;
    }

    return WirelessManager_SendMPMessage(message, size, port, callback);
}

/**
 * @brief Resets the internal WM. Hangs if scanning.
 */
void WirelessManager_Reset(void)
{
    if (WIRELESS_STATE_SCAN == sWirelessManager->state) {
        while (TRUE) {
        }
    }

    if (!WirelessManager_ResetInternal()) {
        WirelessManager_SetState(WIRELESS_STATE_FATAL_ERROR);
    }
}

/**
 * @brief Ends the internal MP process and resets the WirelessManager
 */
void WirelessManager_Finalize(void)
{
    if (sWirelessManager->state == WIRELESS_STATE_IDLE) {
        return;
    }

    if ((sWirelessManager->state != WIRELESS_STATE_TRANSMIT_KEY) && (sWirelessManager->state != WIRELESS_STATE_TRANSMIT_DATA) && (sWirelessManager->state != WIRELESS_STATE_CONNECTED)) {
        WirelessManager_SetState(WIRELESS_STATE_BUSY);
        WirelessManager_Reset();
        return;
    }

    WirelessManager_SetState(WIRELESS_STATE_BUSY);

    switch (sWirelessManager->connectionType) {
    case WIRELESS_CONNECTION_TRANSMIT_KEY_CLIENT:
        break;
    case WIRELESS_CONNECTION_TRANSMIT_DATA_CLIENT:
    case WIRELESS_CONNECTION_MP_CLIENT:
        if (!WirelessManager_EndMPClient()) {
            WirelessManager_Reset();
        }
        break;
    case WIRELESS_CONNECTION_TRANSMIT_KEY_SERVER:
        break;
    case WIRELESS_CONNECTION_TRANSMIT_DATA_SERVER:
    case WIRELESS_CONNECTION_MP_SERVER:
        if (!WirelessManager_EndMPServer()) {
            WirelessManager_Reset();
        }
    }
}

/**
 * @brief Ends the internal WM
 *
 * @return TRUE if there is no issue in the ending process.
 */
BOOL WirelessManager_End(void)
{
    int errorCode;

    WirelessManager_SetState(WIRELESS_STATE_BUSY);
    errorCode = WM_End(WirelessManager_FinishEnd);

    if (errorCode != WM_ERRCODE_OPERATING) {
        WirelessManager_SetState(WIRELESS_STATE_ERROR);

        return FALSE;
    }

    return TRUE;
}

/**
 * @brief Gets the WirelessManager's AID
 *
 * @return sWirelessManager->aid
 */
u16 WirelessManager_GetAID(void)
{
    return sWirelessManager->aid;
}

/**
 * @brief Sets the max number of connections
 *
 * @param numConnectionsMax
 */
void WirelessManager_SetMaxNumConnections(int numConnectionsMax)
{
    if (sWirelessManager) {
        sWirelessManager->numConnectionsMax = numConnectionsMax;
    }
}

/**
 * @brief Checks if the WirelessManager is idle.
 *
 * @return sWirelessManager->state == WIRELESS_STATE_IDLE
 */
BOOL WirelessManager_IsIdle(void)
{
    return sWirelessManager->state == WIRELESS_STATE_IDLE;
}

/**
 * @brief Checks if the WirelessManager is busy.
 *
 * @return sWirelessManager->state == WIRELESS_STATE_BUSY
 */
BOOL WirelessManager_IsBusy(void)
{
    return sWirelessManager->state == WIRELESS_STATE_BUSY;
}

/**
 * @brief Checks if the WirelessManager is erroring.
 *
 * @return sWirelessManager->state == WIRELESS_STATE_ERROR
 */
BOOL WirelessManager_IsError(void)
{
    return sWirelessManager->state == WIRELESS_STATE_ERROR;
}

/**
 * @brief Checks if the WirelessManager is scanning.
 *
 * @return sWirelessManager->state == WIRELESS_STATE_SCAN
 */
BOOL WirelessManager_IsScanning(void)
{
    if (sWirelessManager) {
        return sWirelessManager->state == WIRELESS_STATE_SCAN;
    }

    return FALSE;
}

/**
 * @brief Sets the internal WM GameInfo
 *
 * @param buffer
 * @param size
 * @param ggid
 * @param tgid
 */
void WirelessManager_SetGameInfo(void *buffer, int size, int ggid, int tgid)
{
    if (sWirelessManager->state == WIRELESS_STATE_CONNECTED) {
        WM_SetGameInfo(NULL, buffer, size, ggid, tgid, WM_ATTR_FLAG_ENTRY);
    }
}

/**
 * @brief Callback used when the WM_SetEntry asynchronous process completes. Sets setEntry to TRUE on success.
 *
 * @param wm_callback
 */
static void WirelessManager_FinishSetEntry(void *wm_callback)
{
    WMCallback *callback = wm_callback;

    if (callback->errcode == WM_ERRCODE_SUCCESS) {
        sWirelessManager->setEntry = TRUE;
    }
}

/**
 * @brief Sets whether or not the WirelessManager can connect to clients
 *
 * @param enable
 *
 * @return TRUE if WM_SetEntry has no errors.
 */
BOOL WirelessManager_SetEntry(BOOL enable)
{
    sWirelessManager->setEntry = 0;

    if (sWirelessManager->state == WIRELESS_STATE_CONNECTED) {
        if (WM_ERRCODE_OPERATING == WM_SetEntry(WirelessManager_FinishSetEntry, enable)) {
            return TRUE;
        }
    }

    return FALSE;
}

/**
 * @brief Checks if all beacons have been sent by the server.
 *
 * @return sWirelessManager->sentBeaconCount >= 6
 */
BOOL WirelessManager_ServerSentAllBeacons(void)
{
    if (sWirelessManager) {
        return sWirelessManager->sentBeaconCount >= 6;
    }

    return FALSE;
}

/**
 * @brief Resets the beacon sent count used by the Server
 */
void WirelessManager_ResetBeaconSentCount(void)
{
    sWirelessManager->sentBeaconCount = 0;
}

/**
 * @brief Sets the ggidScanCallback
 *
 * @param callback
 */
void WirelessManager_SetGGIDScanCallback(WirelessManagerGGIDScanFunc callback)
{
    sWirelessManager->ggidScanCallback = callback;
}

/**
 * @brief Sets the disconnectCallback
 *
 * @param callback
 */
void WirelessManager_SetDisconnectCallback(WirelessManagerConnectFunc callback)
{
    sWirelessManager->disconnectCallback = callback;
}

/**
 * @brief Sets the connectCallback
 *
 * @param callback
 */
void WirelessManager_SetConnectCallback(WirelessManagerConnectFunc callback)
{
    sWirelessManager->connectCallback = callback;
}

/**
 * @brief Pauses or unpauses the connection
 *
 * @param pause
 */
void WirelessManager_SetPauseConnection(BOOL pause)
{
    sWirelessManager->pauseConnection = pause;
}

/**
 * @brief Gets whether the connection is currently paused
 *
 * @return sWirelessManager->pauseConnection
 */
BOOL WirelessManager_GetPauseConnection(void)
{
    return sWirelessManager->pauseConnection;
}

/**
 * @brief Sets whether the system is paused
 *
 * @param pause
 */
void WirelessManager_SetPauseConnectionSystem(BOOL pause)
{
    sWirelessManager->pauseConnectSystem = pause;
}

/**
 * @brief Sets whether the client is paused. WirelessManager must be initialized as a client for this to do anything.
 *
 * @param pause
 */
void WirelessManager_SetPauseClientConnection(BOOL pause)
{
    sWirelessManager->pauseConnectionClient = pause;
}
