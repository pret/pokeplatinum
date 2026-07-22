#include "overlay094/networking.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/world_exchange.h"

#include "http/http.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA24.h"

#include "enums.h"

typedef enum GTSNetworkStatus {
    NETWORK_STATUS_INACTIVE,
    NETWORK_STATUS_IDLE,
    NETWORK_STATUS_POST_PENDING,
    NETWORK_STATUS_POST_PENDING_ABORTED,
    NETWORK_STATUS_POST_FINISH_PENDING,
    NETWORK_STATUS_POST_FINISH_PENDING_ABORTED,
    NETWORK_STATUS_GET_LISTED_POKEMON_PENDING,
    NETWORK_STATUS_GET_LISTED_POKEMON_PENDING_ABORTED,
    NETWORK_STATUS_GET_LISTING_STATUS_PENDING,
    NETWORK_STATUS_GET_LISTING_STATUS_PENDING_ABORTED,
    NETWORK_STATUS_DELETE_PENDING,
    NETWORK_STATUS_DELETE_PENDING_ABORTED,
    NETWORK_STATUS_RETURN_PENDING,
    NETWORK_STATUS_RETURN_PENDING_ABORTED,
    NETWORK_STATUS_SEARCH_PENDING,
    NETWORK_STATUS_SEARCH_PENDING_ABORTED,
    NETWORK_STATUS_EXCHANGE_PENDING,
    NETWORK_STATUS_EXCHANGE_PENDING_ABORTED,
    NETWORK_STATUS_EXCHANGE_FINISH_PENDING,
    NETWORK_STATUS_EXCHANGE_FINISH_PENDING_ABORTED,
    NETWORK_STATUS_INIT_PENDING,
    NETWORK_STATUS_INIT_PENDING_ABORTED,
    NETWORK_STATUS_SET_PROFILE_PENDING,
    NETWORK_STATUS_SET_PROFILE_PENDING_ABORTED,
    NETWORK_STATUS_COMPLETE
} GTSNetworkStatus;

typedef struct GTSNetworkingState {
    GTSNetworkStatus status;
    s32 result;
    s32 dwcProfileId;
    u64 friendKey;
    u8 requestData[296];
    u8 responseStatus[4];
    u8 *responseData;
} GTSNetworkingState;

static BOOL GTSNetworking_PrepareRequest(const u8 *url, const void *data, int dataSize, void *response, int maxResponseLength);
static int GTSNetworking_GetPublicErrorCode(int errCode);

static GTSNetworkingState sGTSNetworkingState;

void GTSNetworking_InitCredentials(s32 dwcProfileId, u64 friendKey)
{
    sGTSNetworkingState.status = NETWORK_STATUS_IDLE;
    sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
    sGTSNetworkingState.dwcProfileId = dwcProfileId;
    sGTSNetworkingState.friendKey = friendKey;
}

void GTSNetworking_ProcessCurrentRequest(void)
{
    switch (sGTSNetworkingState.status) {
    case NETWORK_STATUS_INACTIVE:
        break;
    case NETWORK_STATUS_IDLE:
        break;
    case NETWORK_STATUS_POST_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case GTS_SERVER_STATUS_SUCCESS:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_ALREADY_DEPOSITED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_DEPOSITED;
                break;
            case GTS_SERVER_STATUS_NOT_FOUND:
                sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                break;
            case GTS_SERVER_STATUS_CROWDED:
                sGTSNetworkingState.result = GTS_RESULT_GTS_CROWDED;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_5:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_1;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_6:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_2;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_1:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_3;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_2:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_4;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_3:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_5;
                break;
            case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_4:
                sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_6;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            default:
                sGTSNetworkingState.result = GTS_RESULT_ERROR;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_POST_FINISH_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case GTS_SERVER_STATUS_SUCCESS:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_ALREADY_DEPOSITED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_DEPOSITED;
                break;
            case GTS_SERVER_STATUS_NOT_FOUND:
                sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                break;
            case GTS_SERVER_STATUS_ALREADY_TRADED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_TRADED;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            default:
                sGTSNetworkingState.result = GTS_RESULT_ERROR;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_GET_LISTED_POKEMON_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
            } else {
                switch (sGTSNetworkingState.responseData[0]) {
                case GTS_SERVER_STATUS_ALREADY_TRADED:
                    sGTSNetworkingState.result = GTS_RESULT_ALREADY_TRADED;
                    break;
                case GTS_SERVER_STATUS_NOT_FOUND:
                    sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                    break;
                case GTS_SERVER_STATUS_MAINTENANCE:
                    sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                    break;
                default:
                    sGTSNetworkingState.result = GTS_RESULT_ERROR;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_GET_LISTING_STATUS_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                sGTSNetworkingState.result = 1;
            } else {
                switch (sGTSNetworkingState.responseData[0]) {
                case GTS_SERVER_STATUS_ALREADY_TRADED:
                    sGTSNetworkingState.result = GTS_RESULT_ALREADY_TRADED;
                    break;
                case GTS_SERVER_STATUS_NOT_FOUND:
                    sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                    break;
                case GTS_SERVER_STATUS_NO_MATCH_YET:
                    sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                    break;
                case GTS_SERVER_STATUS_MAINTENANCE:
                    sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                    break;
                default:
                    sGTSNetworkingState.result = GTS_RESULT_ERROR;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_DELETE_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case GTS_SERVER_STATUS_SUCCESS:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_ALREADY_TRADED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_TRADED;
                break;
            case GTS_SERVER_STATUS_NOT_FOUND:
                sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            default:
                sGTSNetworkingState.result = GTS_RESULT_ERROR;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_RETURN_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case GTS_SERVER_STATUS_SUCCESS:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_ALREADY_TRADED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_TRADED;
                break;
            case GTS_SERVER_STATUS_ALREADY_DEPOSITED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_DEPOSITED;
                break;
            case GTS_SERVER_STATUS_NOT_FOUND:
                sGTSNetworkingState.result = GTS_RESULT_NOT_FOUND;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            default:
                sGTSNetworkingState.result = GTS_RESULT_ERROR;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_SEARCH_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            {
                int v0 = HTTP_GetResponseLength();

                if (v0 >= sizeof(GTSPokemonListing)) {
                    sGTSNetworkingState.result = (s32)(HTTP_GetResponseLength() / sizeof(GTSPokemonListing));
                } else if (v0 == 0) {
                    sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                } else {
                    switch (sGTSNetworkingState.responseData[0]) {
                    case GTS_SERVER_STATUS_MAINTENANCE:
                        sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                        break;
                    default:
                        sGTSNetworkingState.result = GTS_RESULT_ERROR;
                        break;
                    }
                }
            }
            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_EXCHANGE_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(GTSPokemonListing)) {
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
            } else {
                switch (sGTSNetworkingState.responseData[0]) {
                case GTS_SERVER_STATUS_ALREADY_DEPOSITED:
                    sGTSNetworkingState.result = GTS_RESULT_ALREADY_DEPOSITED;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_5:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_1;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_6:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_2;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_1:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_3;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_2:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_4;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_3:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_5;
                    break;
                case GTS_SERVER_STATUS_CANNOT_BE_OFFERED_4:
                    sGTSNetworkingState.result = GTS_RESULT_CANNOT_BE_OFFERED_6;
                    break;
                case GTS_SERVER_STATUS_MAINTENANCE:
                    sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                    break;
                default:
                    sGTSNetworkingState.result = GTS_RESULT_ERROR;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_EXCHANGE_FINISH_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case GTS_SERVER_STATUS_SUCCESS:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            case GTS_SERVER_STATUS_ALREADY_DEPOSITED:
                sGTSNetworkingState.result = GTS_RESULT_ALREADY_DEPOSITED;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_INIT_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            switch (sGTSNetworkingState.responseStatus[0]) {
            case 1:
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                break;
            case GTS_SERVER_STATUS_PROFILE_EXISTS:
                sGTSNetworkingState.result = 1;
                break;
            case GTS_SERVER_STATUS_CROWDED:
                sGTSNetworkingState.result = 2;
                break;
            case GTS_SERVER_STATUS_MAINTENANCE:
                sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                break;
            default:
                sGTSNetworkingState.result = GTS_RESULT_ERROR;
                break;
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_SET_PROFILE_PENDING:
        switch (HTTP_GetRequestStatus()) {
        case HTTP_STATUS_IDLE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
            sGTSNetworkingState.result = GTSNetworking_GetPublicErrorCode(HTTP_GetErrorCode());
            HTTP_Shutdown();
            break;
        case HTTP_STATUS_COMPLETE:
            sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;

            if (HTTP_GetResponseLength() == sizeof(WorldExchangeTrainerError)) {
                sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
            } else {
                switch (sGTSNetworkingState.responseStatus[0]) {
                case GTS_SERVER_STATUS_SUCCESS:
                    sGTSNetworkingState.result = GTS_SERVER_STATUS_NONE;
                    break;
                case GTS_SERVER_STATUS_PROFILE_EXISTS:
                    sGTSNetworkingState.result = 1;
                    break;
                case GTS_SERVER_STATUS_CROWDED:
                    sGTSNetworkingState.result = 2;
                    break;
                case GTS_SERVER_STATUS_MAINTENANCE:
                    sGTSNetworkingState.result = GTS_RESULT_SERVER_MAINTENANCE;
                    break;
                default:
                    sGTSNetworkingState.result = GTS_RESULT_ERROR;
                    break;
                }
            }

            HTTP_Shutdown();
            break;
        }

        break;
    case NETWORK_STATUS_POST_PENDING_ABORTED:
    case NETWORK_STATUS_POST_FINISH_PENDING_ABORTED:
    case NETWORK_STATUS_GET_LISTED_POKEMON_PENDING_ABORTED:
    case NETWORK_STATUS_GET_LISTING_STATUS_PENDING_ABORTED:
    case NETWORK_STATUS_DELETE_PENDING_ABORTED:
    case NETWORK_STATUS_RETURN_PENDING_ABORTED:
    case NETWORK_STATUS_SEARCH_PENDING_ABORTED:
    case NETWORK_STATUS_EXCHANGE_PENDING_ABORTED:
    case NETWORK_STATUS_EXCHANGE_FINISH_PENDING_ABORTED:
    case NETWORK_STATUS_INIT_PENDING_ABORTED:
    case NETWORK_STATUS_SET_PROFILE_PENDING_ABORTED:
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ABORTED;
        HTTP_Shutdown();
        break;
    case NETWORK_STATUS_COMPLETE:
        break;
    }
}

void GTSNetworking_Reset(void)
{
    sGTSNetworkingState.status = NETWORK_STATUS_INACTIVE;
}

BOOL GTSNetworking_RequestComplete(void)
{
    switch (sGTSNetworkingState.status) {
    case NETWORK_STATUS_IDLE:
        return TRUE;
        break;
    case NETWORK_STATUS_COMPLETE:
        sGTSNetworkingState.status = NETWORK_STATUS_IDLE;
        return TRUE;
        break;
    default:
        break;
    }

    return FALSE;
}

s32 GTSNetworking_GetErrorCode(void)
{
    return sGTSNetworkingState.result;
}

void GTSNetworking_Post(const GTSPokemonListing *listing)
{
    memcpy(&sGTSNetworkingState.requestData[0], listing, sizeof(GTSPokemonListing));

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_POST), sGTSNetworkingState.requestData, sizeof(GTSPokemonListing), sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_POST_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_PostFinish(void)
{
    memcpy(&sGTSNetworkingState.requestData[0], &sGTSNetworkingState.friendKey, 8);

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_POST_FINISH), sGTSNetworkingState.requestData, 8, sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_POST_FINISH_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_GetListedPokemon(GTSPokemonListing *listing)
{
    sGTSNetworkingState.responseData = (u8 *)listing;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_GET), sGTSNetworkingState.requestData, 0, listing, sizeof(GTSPokemonListing))) {
        sGTSNetworkingState.status = NETWORK_STATUS_GET_LISTED_POKEMON_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_GetListingStatus(GTSPokemonListing *listing)
{
    sGTSNetworkingState.responseData = (u8 *)listing;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_RESULT), sGTSNetworkingState.requestData, 0, listing, sizeof(GTSPokemonListing))) {
        sGTSNetworkingState.status = NETWORK_STATUS_GET_LISTING_STATUS_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_Delete(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_DELETE), sGTSNetworkingState.requestData, 0, sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_DELETE_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_Return(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_RETURN), sGTSNetworkingState.requestData, 0, sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_RETURN_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_SearchGlobal(const GTSPokemonRequirements *requirements, s32 maxResults, GTSPokemonListing *listing)
{
    sGTSNetworkingState.responseData = (u8 *)listing;

    HTTP_Init();

    memcpy(&sGTSNetworkingState.requestData[0], requirements, sizeof(GTSPokemonRequirements));
    sGTSNetworkingState.requestData[sizeof(GTSPokemonRequirements)] = (u8)maxResults;

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_SEARCH), sGTSNetworkingState.requestData, sizeof(GTSPokemonRequirements) + 1, listing, (int)sizeof(GTSPokemonListing) * maxResults)) {
        sGTSNetworkingState.status = NETWORK_STATUS_SEARCH_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_SearchByCountry(const GTSCountrySearchRequest *req, GTSPokemonListing *listing)
{
    sGTSNetworkingState.responseData = (u8 *)listing;

    HTTP_Init();

    memcpy(&sGTSNetworkingState.requestData[0], req, sizeof(GTSCountrySearchRequest));

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_SEARCH), sGTSNetworkingState.requestData, sizeof(GTSCountrySearchRequest), listing, (int)sizeof(GTSPokemonListing) * req->count)) {
        sGTSNetworkingState.status = NETWORK_STATUS_SEARCH_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_Exchange(s32 param0, const GTSPokemonListing *listing1, GTSPokemonListing *listing2)
{
    sGTSNetworkingState.responseData = (u8 *)listing2;

    HTTP_Init();

    memcpy(&sGTSNetworkingState.requestData[0], listing1, sizeof(GTSPokemonListing));

    *(s32 *)(&sGTSNetworkingState.requestData[sizeof(GTSPokemonListing)]) = param0;

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_EXCHANGE), sGTSNetworkingState.requestData, sizeof(GTSPokemonListing) + 4, listing2, sizeof(GTSPokemonListing))) {
        sGTSNetworkingState.status = NETWORK_STATUS_EXCHANGE_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_ExchangeFinish(void)
{
    memcpy(&sGTSNetworkingState.requestData[0], &sGTSNetworkingState.friendKey, 8);

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_EXCHANGE_FINISH), sGTSNetworkingState.requestData, 8, sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_EXCHANGE_FINISH_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_InitConnection(void)
{
    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_WE_INFO), sGTSNetworkingState.requestData, 0, sGTSNetworkingState.responseStatus, 2)) {
        sGTSNetworkingState.status = NETWORK_STATUS_INIT_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

void GTSNetworking_SetProfile(const WorldExchangeTrainer *trainer, WorldExchangeTrainerError *err)
{
    OS_GetMacAddress((u8 *)trainer->macAddress);

    memcpy(sGTSNetworkingState.requestData, trainer, sizeof(WorldExchangeTrainer));
    sGTSNetworkingState.responseData = (u8 *)err;

    HTTP_Init();

    if (GTSNetworking_PrepareRequest(((const u8 *)GTS_URL_SET_PROFILE), sGTSNetworkingState.requestData, sizeof(WorldExchangeTrainer), sGTSNetworkingState.responseData, sizeof(WorldExchangeTrainerError))) {
        sGTSNetworkingState.status = NETWORK_STATUS_SET_PROFILE_PENDING;
    } else {
        sGTSNetworkingState.status = NETWORK_STATUS_COMPLETE;
        sGTSNetworkingState.result = GTS_RESULT_ERROR;
        HTTP_Shutdown();
    }
}

static BOOL GTSNetworking_PrepareRequest(const u8 *url, const void *data, int dataSize, void *response, int maxResponseLength)
{
    switch (HTTP_PrepareRequest(url, sGTSNetworkingState.dwcProfileId, data, dataSize, (u8 *)response, maxResponseLength)) {
    case HTTP_PREPARE_STATUS_SUCCESS:
        return TRUE;
        break;
    case HTTP_PREPARE_STATUS_NOT_READY:
        break;
    case HTTP_PREPARE_STATUS_ALLOC_FAILED:
        break;
    }

    return FALSE;
}

static int GTSNetworking_GetPublicErrorCode(int errCode)
{
    int result;

    switch (errCode) {
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
        result = GTS_RESULT_ERROR;
        break;
    case DWC_ERROR_GHTTP_INSUFFICIENT_MEMORY:
    case DWC_ERROR_GHTTP_OUT_OF_MEMORY:
    case DWC_ERROR_GHTTP_MEMORY_ERROR:
        result = GTS_RESULT_ERROR;
        break;
    case DWC_ERROR_GHTTP_HOST_LOOKUP_FAILED:
        result = GTS_RESULT_CONNECTION_FAILED;
        break;
    case DWC_ERROR_GHTTP_SOCKET_FAILED:
    case DWC_ERROR_GHTTP_CONNECT_FAILED:
        result = GTS_RESULT_CONNECTION_FAILED;
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
        result = GTS_RESULT_SERVER_MAINTENANCE;
        break;
    case DWC_ERROR_GHTTP_REQUEST_REJECTED:
    case DWC_ERROR_GHTTP_30:
        result = GTS_RESULT_SERVER_MAINTENANCE;
        break;
    default:
        result = GTS_RESULT_ERROR;
        break;
    }

    if (result != GTS_RESULT_ERROR) {
        if (WCM_GetPhase() != WCM_PHASE_DCF) {
            result = GTS_RESULT_NOT_IN_DCF_PHASE;
        }

        DWC_ClearError();
    }

    return result;
}
