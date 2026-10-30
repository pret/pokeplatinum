#ifndef POKEPLATINUM_STRUCT_BATTLE_TOWER_H
#define POKEPLATINUM_STRUCT_BATTLE_TOWER_H

#include "constants/battle_tower.h"

#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/frontier_opponents.h"

#include "field_battle_data_transfer.h"
#include "location.h"

typedef struct BattleTower {
    int sentinel;
    enum HeapID heapID;
    u32 rng;
    u8 nextOpponentNum;
    u8 currentBattle;
    u8 partySize;
    u8 challengeMode;
    u8 defeatedSevenTrainers : 1;
    u8 beatPalmer : 2;
    u8 isRetiring : 1;
    u8 ribbonsEarned : 1;
    u8 partnerID : 3;
    u8 playerGender;
    u8 partnerGender;
    u16 unk_14;
    u16 unk_16[2];
    u16 startingStreak;
    u16 roomNum;
    u32 victoryRecord;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u8 partySlots[4];
    u16 selectedSpecies[4];
    u16 selectedItems[4];
    u16 trainerIDs[BT_OPPONENTS_COUNT * 2];
    Location unused;
    BattleTowerSave *towerSave;
    WifiBattleTowerRecord *wifiRecord;
    FrontierOpponent opponents[2];
    FrontierOpponent partners[BT_PARTNERS_COUNT];
    BattleTowerPartnerData unk_7E8[BT_PARTNERS_COUNT];
    u8 partnerConflicts[BT_PARTNERS_COUNT];
    u16 commPayload[35];
    u16 commBuffer[35];
    int wonBattle;
    FieldBattleDTO *dto;
    u8 msgsReceived;
    u8 unk_8D5;
    u8 unk_8D6;
    u8 unused2;
    u16 unk_8D8;
    u16 unk_8DA;
} BattleTower;

#endif // POKEPLATINUM_STRUCT_BATTLE_TOWER_H
