#ifndef POKEPLATINUM_WIFI_BATTLE_TOWER_HTTP_H
#define POKEPLATINUM_WIFI_BATTLE_TOWER_HTTP_H

#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay096/struct_wifi_player_profile.h"
#include "overlay096/struct_world_exchange_trainer.h"
#include "overlay096/struct_world_exchange_trainer_error.h"

void BattleTowerHttp_Init(s32 profileId, u64 friendKey);
void BattleTowerHttp_Update(void);
BOOL BattleTowerHttp_IsDone(void);
s32 BattleTowerHttp_GetResult(void);
void BattleTowerHttp_RequestRoomCount(s32 rank);
void BattleTowerHttp_RequestDownload(s32 rank, s32 opponentIdx, WifiBattleTowerDownloadBuffer *buffer);
void BattleTowerHttp_RequestUpload(s32 rank, s32 opponentIdx, s32 ratingTier, const WifiPlayerProfile *profile);
void BattleTowerHttp_RequestInfo(void);
void WorldExchange_SetProfile(const WorldExchangeTrainer *weTrainer, WorldExchangeTrainerError *errPtr);

#define BT_SERVER_BASE_URL "http://gamestats2.gs.nintendowifi.net/pokemondpds/"

#define BT_URL_ROOMNUM         BT_SERVER_BASE_URL "battletower/roomnum.asp"
#define BT_URL_DOWNLOAD        BT_SERVER_BASE_URL "battletower/download.asp"
#define BT_URL_UPLOAD          BT_SERVER_BASE_URL "battletower/upload.asp"
#define BT_URL_INFO            BT_SERVER_BASE_URL "battletower/info.asp"
#define COMMON_URL_SET_PROFILE BT_SERVER_BASE_URL "common/setProfile.asp"

enum BattleTowerUploadResponse {
    BT_UPLOAD_RESPONSE_SUCCESS = 1,
    BT_UPLOAD_RESPONSE_ALREADY_CHALLENGED = 2,
    BT_UPLOAD_RESPONSE_INVALID = 4,
    BT_UPLOAD_RESPONSE_MAINTENANCE = 5,
};

enum BattleTowerInfoResponse {
    BT_INFO_RESPONSE_OK = 1,
    BT_INFO_RESPONSE_UPLOAD_NEEDED = 3,
    BT_INFO_RESPONSE_RANK_SELECT = 4,
    BT_INFO_RESPONSE_MAINTENANCE = 5,
};

enum BattleTowerDownloadResponse {
    BT_DOWNLOAD_RESPONSE_ALREADY_CHALLENGED = 2,
    BT_DOWNLOAD_RESPONSE_MAINTENANCE = 5,
};

enum BattleTowerHttpResult {
    BT_CODE_SUCCESS,
    BT_CODE_UPLOAD_NEEDED,
    BT_CODE_RANK_SELECT_NEEDED,

    BT_CODE_UPLOAD_REJECTED = -1,
    BT_CODE_SERVER_MAINTENANCE = -2,
    BT_CODE_ALREADY_CHALLENGED = -3,
    BT_CODE_HTTP_ERROR = -4,
    BT_CODE_NETWORK_FAILURE = -5,
    BT_CODE_NOT_IN_DCF_PHASE = -6,
    BT_CODE_CONNECTION_FAILED = -7,
};

#endif // POKEPLATINUM_WIFI_BATTLE_TOWER_HTTP_H
