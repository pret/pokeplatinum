#ifndef POKEPLATINUM_STRUCT_WIFI_BATTLE_TOWER_DATA_H
#define POKEPLATINUM_STRUCT_WIFI_BATTLE_TOWER_DATA_H

#include "constants/battle_tower.h"

#include "struct_defs/struct_0202D63C.h"

#include "overlay096/struct_wifi_player_profile.h"
#include "overlay104/frontier_data_transfer.h"

typedef struct WifiBattleTowerIndices {
    u8 rank;
    u8 opponentIdx;
} WifiBattleTowerIndices;

typedef struct WifiBattleTowerMatchCandidate {
    u16 trainerName[8];
    u8 padding_10[2];
    u8 country;
    u8 region;
    u8 padding_14[4];
    u16 trainerKey[4];
    union {
        struct {
            u8 isAnonymous : 1;
            u8 anonymousNameIdx : 1;
            u8 : 6;
        };
        u8 unk_20_val2;
    };
    u8 padding_21;
} WifiBattleTowerMatchCandidate;

typedef struct WifiBattleTowerDownloadBuffer {
    WifiPlayerProfile wifiPlayerProfile[7];
    WifiBattleTowerMatchCandidate matchCandidates[30];
} WifiBattleTowerDownloadBuffer;

typedef struct WifiBattleTowerDownloadData {
    u32 lastDownloadDate;
    u8 downloadedOpponents[250];
    u8 hasOpponentData;
    u8 hasMatchListData;
    u8 storedOpponentIdx;
    u8 storedRank;
    u8 storedMatchOpponentIdx;
    u8 storedMatchRank;
    WifiTrainerRecord trainerRecords[BT_OPPONENTS_COUNT];
    WifiBattleTowerMatchCandidate matchCandidates[30];
} WifiBattleTowerDownloadData;

typedef struct WifiBattleTowerRecord {
    u16 battlePoints;
    u8 lossStreak;
    u8 rank;
    u32 rngState;
    union {
        struct {
            u16 reward2Given : 1;
            u16 reward3Given : 1;
            u16 reward2FullPC : 1;
            u16 reward3FullPC : 1;
            u16 lossStreakInitialized : 1;
            u16 unk_08_val1_unk_00_5 : 1;
            u16 unk_08_val1_unk_00_6 : 1;
            u16 hasRegisteredTeam : 1;
            u16 challengeActiveFlag_1 : 1;
            u16 challengeActiveFlag_2 : 1;
            u16 challengeActiveFlag_3 : 1;
            u16 challengeActiveFlag_4 : 1;
            u16 challengeActiveFlag_5 : 1;
            u16 reward1Given : 1;
            u16 reward1FullPC : 1;
        };
        u16 flags;
    };
    u16 roomNums[6];
    u16 ratingScore;
    FrontierPokemonDataDTO team1[3];
    FrontierPokemonDataDTO team0[3];
} WifiBattleTowerRecord;

typedef struct BattleTowerPartnerData {
    u32 otID;
    u16 monSetIDs[2];
    u32 personalities[2];
} BattleTowerPartnerData;

typedef struct WifiBattleTowerSave {
    u8 unk_00_0 : 1;
    u8 isInProgress : 1;
    u8 challengeMode : 3;
    u8 partnerID : 3;
    u8 unused_01;
    u8 nextOpponentNum;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    u8 partySlots[4];
    u16 trainerIDs[BT_OPPONENTS_COUNT * 2];
    u32 rngSeed;
    BattleTowerPartnerData unk_2C;
} WifiBattleTowerSave;

#endif // POKEPLATINUM_STRUCT_WIFI_BATTLE_TOWER_DATA_H
