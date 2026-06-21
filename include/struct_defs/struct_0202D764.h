#ifndef POKEPLATINUM_STRUCT_0202D764_H
#define POKEPLATINUM_STRUCT_0202D764_H

#include "struct_defs/struct_0202D63C.h"

#include "constants/battle_tower.h"

#include "overlay090/struct_ov90_021D1750.h"

typedef struct WifiBattleTowerDownloadData_t {
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

#endif // POKEPLATINUM_STRUCT_0202D764_H
