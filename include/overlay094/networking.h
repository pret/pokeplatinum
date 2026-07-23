#ifndef POKEPLATINUM_GTS_NETWORKING_H
#define POKEPLATINUM_GTS_NETWORKING_H

#include "struct_defs/world_exchange.h"

#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA24.h"

void GTSNetworking_InitCredentials(s32 dwcProfileId, u64 friendKey);
void GTSNetworking_ProcessCurrentRequest(void);
void GTSNetworking_Reset(void);
BOOL GTSNetworking_RequestComplete(void);
s32 GTSNetworking_GetErrorCode(void);
void GTSNetworking_Post(const GTSPokemonListing *listing);
void GTSNetworking_PostFinish(void);
void GTSNetworking_GetListedPokemon(GTSPokemonListing *listing);
void GTSNetworking_GetListingStatus(GTSPokemonListing *listing);
void GTSNetworking_Delete(void);
void GTSNetworking_Return(void);
void GTSNetworking_SearchGlobal(const GTSPokemonRequirements *param0, s32 param1, GTSPokemonListing *param2);
void GTSNetworking_SearchByCountry(const GTSCountrySearchRequest *param0, GTSPokemonListing *param1);
void GTSNetworking_Exchange(s32 param0, const GTSPokemonListing *param1, GTSPokemonListing *param2);
void GTSNetworking_ExchangeFinish(void);
void GTSNetworking_InitConnection(void);
void GTSNetworking_SetProfile(const WorldExchangeTrainer *param0, WorldExchangeTrainerError *param1);

#define GTS_SERVER_BASE_URL "http://gamestats2.gs.nintendowifi.net/pokemondpds/"

#define GTS_URL_WE_POST            GTS_SERVER_BASE_URL "worldexchange/post.asp"
#define GTS_URL_WE_POST_FINISH     GTS_SERVER_BASE_URL "worldexchange/post_finish.asp"
#define GTS_URL_WE_GET             GTS_SERVER_BASE_URL "worldexchange/get.asp"
#define GTS_URL_WE_RESULT          GTS_SERVER_BASE_URL "worldexchange/result.asp"
#define GTS_URL_WE_DELETE          GTS_SERVER_BASE_URL "worldexchange/delete.asp"
#define GTS_URL_WE_RETURN          GTS_SERVER_BASE_URL "worldexchange/return.asp"
#define GTS_URL_WE_SEARCH          GTS_SERVER_BASE_URL "worldexchange/search.asp"
#define GTS_URL_WE_EXCHANGE        GTS_SERVER_BASE_URL "worldexchange/exchange.asp"
#define GTS_URL_WE_EXCHANGE_FINISH GTS_SERVER_BASE_URL "worldexchange/exchange_finish.asp"
#define GTS_URL_WE_INFO            GTS_SERVER_BASE_URL "worldexchange/info.asp"
#define GTS_URL_SET_PROFILE        GTS_SERVER_BASE_URL "common/setProfile.asp"

enum GTSNetworkResponseStatus {
    GTS_SERVER_STATUS_NONE,
    GTS_SERVER_STATUS_SUCCESS,
    GTS_SERVER_STATUS_ALREADY_DEPOSITED,
    GTS_SERVER_STATUS_NOT_FOUND,
    GTS_SERVER_STATUS_NO_MATCH_YET,
    GTS_SERVER_STATUS_ALREADY_TRADED,
    GTS_SERVER_STATUS_PROFILE_EXISTS,
    GTS_SERVER_STATUS_CROWDED,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_1,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_2,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_3,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_4,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_5,
    GTS_SERVER_STATUS_CANNOT_BE_OFFERED_6,
    GTS_SERVER_STATUS_MAINTENANCE,
};

enum GTSNetworkResult {
    GTS_RESULT_SUCCESS = 0,
    GTS_RESULT_PROFILE_EXISTS = 1,
    GTS_RESULT_BANNED = 2,

    GTS_RESULT_GTS_CROWDED = -1,
    GTS_RESULT_SERVER_MAINTENANCE = -2,
    GTS_RESULT_ALREADY_TRADED = -3,
    GTS_RESULT_NOT_FOUND = -4,
    GTS_RESULT_ALREADY_DEPOSITED = -5,
    GTS_RESULT_CANNOT_BE_OFFERED_1 = -6,
    GTS_RESULT_CANNOT_BE_OFFERED_2 = -7,
    GTS_RESULT_CANNOT_BE_OFFERED_3 = -8,
    GTS_RESULT_CANNOT_BE_OFFERED_4 = -9,
    GTS_RESULT_CANNOT_BE_OFFERED_5 = -10,
    GTS_RESULT_CANNOT_BE_OFFERED_6 = -11,
    GTS_RESULT_ABORTED = -12,
    GTS_RESULT_ERROR = -13,
    GTS_RESULT_NOT_IN_DCF_PHASE = -14,
    GTS_RESULT_CONNECTION_FAILED = -15,
};

#endif // POKEPLATINUM_GTS_NETWORKING_H
