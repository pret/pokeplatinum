#include "wifi_battle_tower/http.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/wifi_battle_tower_data.h"

#include "http/http.h"
#include "overlay096/struct_wifi_player_profile.h"
#include "overlay096/struct_world_exchange_trainer.h"
#include "overlay096/struct_world_exchange_trainer_error.h"
#include "wifi_battle_tower/screen.h"

#include "enums.h"

enum BattleTowerHttpRequestState {
    HTTP_STATE_INACTIVE,
    HTTP_STATE_IDLE,
    HTTP_STATE_AWAITING_ROOMNUM,
    HTTP_STATE_ERROR_ROOMNUM,
    HTTP_STATE_AWAITING_DOWNLOAD,
    HTTP_STATE_ERROR_DOWNLOAD,
    HTTP_STATE_AWAITING_UPLOAD,
    HTTP_STATE_ERROR_UPLOAD,
    HTTP_STATE_AWAITING_INFO,
    HTTP_STATE_ERROR_INFO,
    HTTP_STATE_AWAITING_SET_PROFILE,
    HTTP_STATE_ERROR_SET_PROFILE,
    HTTP_STATE_COMPLETE,
};

typedef struct BattleTowerHttpState {
    enum BattleTowerHttpRequestState requestState;
    s32 result;
    s32 profileId;
    u64 friendKey;
    u8 requestBody[239];
    u8 responseBuffer[2];
    u8 *responsePtr;
} BattleTowerHttpState;

static BOOL BattleTowerNetworking_PrepareRequest(const u8 *url, const void *data, int dataSize, void *response, int maxResponseLength);
static int BattleTowerHttp_GetPublicErrorCode(int errorCode);

static BattleTowerHttpState httpState;

void BattleTowerHttp_Init(s32 profileId, u64 friendKey)
{
    httpState.requestState = HTTP_STATE_IDLE;
    httpState.result = BT_CODE_SUCCESS;
    httpState.profileId = profileId;
    httpState.friendKey = friendKey;
}

void BattleTowerHttp_Update(void)
{
    switch (httpState.requestState) {
    case HTTP_STATE_INACTIVE:
        break;
    case HTTP_STATE_IDLE:
        break;
    case HTTP_STATE_AWAITING_ROOMNUM:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            httpState.requestState = HTTP_STATE_COMPLETE;
            httpState.result = BattleTowerHttp_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            httpState.requestState = HTTP_STATE_COMPLETE;

            if (HTTP_GetResponseLength() > 0) {
                httpState.result = httpState.responseBuffer[0];
            } else {
                httpState.result = BT_CODE_SERVER_MAINTENANCE;
            }

            HTTP_Shutdown();
            break;
        }
        break;
    case HTTP_STATE_AWAITING_DOWNLOAD:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            httpState.requestState = HTTP_STATE_COMPLETE;
            httpState.result = BattleTowerHttp_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            httpState.requestState = HTTP_STATE_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(WifiBattleTowerDownloadBuffer)) {
                httpState.result = BT_CODE_SUCCESS;
            } else {
                switch (httpState.responsePtr[0]) {
                case BT_DOWNLOAD_RESPONSE_ALREADY_CHALLENGED:
                    httpState.result = BT_CODE_ALREADY_CHALLENGED;
                    break;
                case BT_DOWNLOAD_RESPONSE_MAINTENANCE:
                    httpState.result = BT_CODE_SERVER_MAINTENANCE;
                    break;
                default:
                    httpState.result = BT_CODE_NETWORK_FAILURE;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case HTTP_STATE_AWAITING_UPLOAD:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            httpState.requestState = HTTP_STATE_COMPLETE;
            httpState.result = BattleTowerHttp_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            httpState.requestState = HTTP_STATE_COMPLETE;

            switch (httpState.responseBuffer[0]) {
            case BT_UPLOAD_RESPONSE_SUCCESS:
                httpState.result = BT_CODE_SUCCESS;
                break;
            case BT_UPLOAD_RESPONSE_ALREADY_CHALLENGED:
                httpState.result = BT_CODE_ALREADY_CHALLENGED;
                break;
            case BT_UPLOAD_RESPONSE_INVALID:
                httpState.result = BT_CODE_UPLOAD_REJECTED;
                break;
            case BT_UPLOAD_RESPONSE_MAINTENANCE:
                httpState.result = BT_CODE_SERVER_MAINTENANCE;
                break;
            default:
                httpState.result = BT_CODE_NETWORK_FAILURE;
                break;
            }

            HTTP_Shutdown();
            break;
        }
        break;
    case HTTP_STATE_AWAITING_INFO:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            httpState.requestState = HTTP_STATE_COMPLETE;
            httpState.result = BattleTowerHttp_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            httpState.requestState = HTTP_STATE_COMPLETE;

            switch (httpState.responseBuffer[0]) {
            case BT_INFO_RESPONSE_OK:
                httpState.result = BT_CODE_SUCCESS;
                break;
            case BT_INFO_RESPONSE_UPLOAD_NEEDED:
                httpState.result = BT_CODE_UPLOAD_NEEDED;
                break;
            case BT_INFO_RESPONSE_RANK_SELECT:
                httpState.result = BT_CODE_RANK_SELECT_NEEDED;
                break;
            case BT_INFO_RESPONSE_MAINTENANCE:
                httpState.result = BT_CODE_SERVER_MAINTENANCE;
                break;
            default:
                httpState.result = BT_CODE_NETWORK_FAILURE;
                break;
            }

            HTTP_Shutdown();
            break;
        }
        break;
    case HTTP_STATE_AWAITING_SET_PROFILE:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            httpState.requestState = HTTP_STATE_COMPLETE;
            httpState.result = BattleTowerHttp_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            httpState.requestState = HTTP_STATE_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(WorldExchangeTrainerError)) {
                httpState.result = BT_CODE_SUCCESS;
            } else {
                switch (httpState.responseBuffer[0]) {
                case BT_INFO_RESPONSE_OK:
                    httpState.result = BT_CODE_SUCCESS;
                    break;
                case BT_INFO_RESPONSE_UPLOAD_NEEDED:
                    httpState.result = BT_CODE_UPLOAD_NEEDED;
                    break;
                case BT_INFO_RESPONSE_RANK_SELECT:
                    httpState.result = BT_CODE_RANK_SELECT_NEEDED;
                    break;
                case BT_INFO_RESPONSE_MAINTENANCE:
                    httpState.result = BT_CODE_SERVER_MAINTENANCE;
                    break;
                default:
                    httpState.result = BT_CODE_NETWORK_FAILURE;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }
        break;
    case HTTP_STATE_ERROR_ROOMNUM:
    case HTTP_STATE_ERROR_DOWNLOAD:
    case HTTP_STATE_ERROR_UPLOAD:
    case HTTP_STATE_ERROR_INFO:
    case HTTP_STATE_ERROR_SET_PROFILE:
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_HTTP_ERROR;
        HTTP_Shutdown();
        break;
    case HTTP_STATE_COMPLETE:
        break;
    }
}

BOOL BattleTowerHttp_IsDone(void)
{
    switch (httpState.requestState) {
    case HTTP_STATE_IDLE:
        return TRUE;
        break;
    case HTTP_STATE_COMPLETE:
        httpState.requestState = HTTP_STATE_IDLE;
        return TRUE;
        break;
    }

    return FALSE;
}

s32 BattleTowerHttp_GetResult(void)
{
    return httpState.result;
}

void BattleTowerHttp_RequestRoomCount(s32 rank)
{
    HTTP_Init();

    httpState.requestBody[0] = (u8)(rank - 1);

    if (BattleTowerNetworking_PrepareRequest((const u8 *)(BT_URL_ROOMNUM),
            httpState.requestBody,
            1,
            httpState.responseBuffer,
            2)) {
        httpState.requestState = HTTP_STATE_AWAITING_ROOMNUM;
    } else {
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_NETWORK_FAILURE;
        HTTP_Shutdown();
    }
}

void BattleTowerHttp_RequestDownload(s32 rank, s32 opponentIdx, WifiBattleTowerDownloadBuffer *buffer)
{
    httpState.responsePtr = (u8 *)buffer;

    HTTP_Init();

    httpState.requestBody[0] = (u8)(rank - 1);
    httpState.requestBody[1] = (u8)(opponentIdx - 1);

    if (BattleTowerNetworking_PrepareRequest((const u8 *)(BT_URL_DOWNLOAD),
            httpState.requestBody,
            2,
            buffer,
            sizeof(WifiBattleTowerDownloadBuffer))) {
        httpState.requestState = HTTP_STATE_AWAITING_DOWNLOAD;
    } else {
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_NETWORK_FAILURE;
        HTTP_Shutdown();
    }
}

void BattleTowerHttp_RequestUpload(s32 rank, s32 opponentIdx, s32 ratingTier, const WifiPlayerProfile *profile)
{
    HTTP_Init();

    memcpy(&httpState.requestBody[0], profile, sizeof(WifiPlayerProfile));

    httpState.requestBody[sizeof(WifiPlayerProfile)] = (u8)(rank - 1);
    httpState.requestBody[sizeof(WifiPlayerProfile) + 1] = (u8)(opponentIdx - 1);
    httpState.requestBody[sizeof(WifiPlayerProfile) + 2] = (u8)ratingTier;

    memcpy(&httpState.requestBody[sizeof(WifiPlayerProfile) + 3], &httpState.friendKey, sizeof(httpState.friendKey));

    if (BattleTowerNetworking_PrepareRequest((const u8 *)(BT_URL_UPLOAD),
            httpState.requestBody,
            sizeof(WifiPlayerProfile) + 3 + sizeof(httpState.friendKey),
            httpState.responseBuffer,
            2)) {
        httpState.requestState = HTTP_STATE_AWAITING_UPLOAD;
    } else {
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_NETWORK_FAILURE;
        HTTP_Shutdown();
    }
}

void BattleTowerHttp_RequestInfo(void)
{
    HTTP_Init();

    if (BattleTowerNetworking_PrepareRequest((const u8 *)(BT_URL_INFO),
            httpState.requestBody,
            0,
            httpState.responseBuffer,
            2)) {
        httpState.requestState = HTTP_STATE_AWAITING_INFO;
    } else {
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_NETWORK_FAILURE;
        HTTP_Shutdown();
    }
}

void WorldExchange_SetProfile(const WorldExchangeTrainer *weTrainer, WorldExchangeTrainerError *errPtr)
{
    OS_GetMacAddress((u8 *)weTrainer->macAddress);

    memcpy(httpState.requestBody, weTrainer, sizeof(WorldExchangeTrainer));
    httpState.responsePtr = (u8 *)errPtr;

    HTTP_Init();

    if (BattleTowerNetworking_PrepareRequest((const u8 *)(COMMON_URL_SET_PROFILE),
            httpState.requestBody,
            sizeof(WorldExchangeTrainer),
            httpState.responsePtr,
            sizeof(WorldExchangeTrainerError))) {
        httpState.requestState = HTTP_STATE_AWAITING_SET_PROFILE;
    } else {
        httpState.requestState = HTTP_STATE_COMPLETE;
        httpState.result = BT_CODE_NETWORK_FAILURE;
        HTTP_Shutdown();
    }
}

static BOOL BattleTowerNetworking_PrepareRequest(const u8 *url, const void *data, int dataSize, void *response, int maxResponseLength)
{
    switch (HTTP_PrepareRequest(url, httpState.profileId, data, dataSize, (u8 *)response, maxResponseLength)) {
    case 0:
        return TRUE;
        break;
    case 1:
        break;
    case 2:
        break;
    }

    return FALSE;
}

static int BattleTowerHttp_GetPublicErrorCode(int errorCode)
{
    int result;

    switch (errorCode) {
    case DWC_ERROR_GHTTP_IN_ERROR:
    case DWC_ERROR_GHTTP_INVALID_POST:
    case DWC_ERROR_GHTTP_INVALID_FILE_NAME:
    case DWC_ERROR_GHTTP_INVALID_BUFFER_SIZE:
    case DWC_ERROR_GHTTP_INVALID_URL:
    case DWC_ERROR_GHTTP_UNSPECIFIED_ERROR:
    case DWC_ERROR_GHTTP_BUFFER_OVERFLOW:
    case DWC_ERROR_GHTTP_PARSE_URL_FAILED:
    case DWC_ERROR_GHTTP_FILE_TOO_BIG:
    case DWC_ERROR_GHTTP_FILE_INCOMPLETE:
    case DWC_ERROR_GHTTP_20:
    case DWC_ERROR_GHTTP_21:
    case DWC_ERROR_GHTTP_BAD_RESPONSE:
    case DWC_ERROR_GHTTP_32:
        result = BT_CODE_NETWORK_FAILURE;
        break;
    case DWC_ERROR_GHTTP_INSUFFICIENT_MEMORY:
    case DWC_ERROR_GHTTP_OUT_OF_MEMORY:
    case DWC_ERROR_GHTTP_MEMORY_ERROR:
        result = BT_CODE_NETWORK_FAILURE;
        break;
    case DWC_ERROR_GHTTP_HOST_LOOKUP_FAILED:
        result = BT_CODE_CONNECTION_FAILED;
        break;
    case DWC_ERROR_GHTTP_SOCKET_FAILED:
    case DWC_ERROR_GHTTP_CONNECT_FAILED:
        result = BT_CODE_CONNECTION_FAILED;
        break;
    case DWC_ERROR_GHTTP_UNAUTHORIZED:
    case DWC_ERROR_GHTTP_FORBIDDEN:
    case DWC_ERROR_GHTTP_FILE_NOT_FOUND:
    case DWC_ERROR_GHTTP_SERVER_ERROR:
    case DWC_ERROR_GHTTP_26:
    case DWC_ERROR_GHTTP_27:
    case DWC_ERROR_GHTTP_28:
    case DWC_ERROR_GHTTP_29:
    case DWC_ERROR_GHTTP_31:
        result = BT_CODE_SERVER_MAINTENANCE;
        break;
    case DWC_ERROR_GHTTP_REQUEST_REJECTED:
    case DWC_ERROR_GHTTP_30:
        result = BT_CODE_SERVER_MAINTENANCE;
        break;
    default:
        result = BT_CODE_NETWORK_FAILURE;
        break;
    }

    if (result != BT_CODE_NETWORK_FAILURE) {
        if (WCM_GetPhase() != WCM_PHASE_DCF) {
            result = BT_CODE_NOT_IN_DCF_PHASE;
        }
        DWC_ClearError();
    }

    return result;
}
