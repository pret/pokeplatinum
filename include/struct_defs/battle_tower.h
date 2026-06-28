#ifndef POKEPLATINUM_STRUCT_BATTLE_TOWER_H
#define POKEPLATINUM_STRUCT_BATTLE_TOWER_H

#include "constants/battle_tower.h"

#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/frontier_data_transfer.h"

#include "field_battle_data_transfer.h"
#include "location.h"

typedef struct BattleTower {
    int unk_00;
    enum HeapID heapID;
    u32 unk_08;
    u8 nextOpponentNum;
    u8 unk_0D;
    u8 partySize;
    u8 challengeMode;
    u8 defeatedSevenTrainers : 1;
    u8 beatPalmer : 2;
    u8 unk_10_3 : 1;
    u8 unk_10_4 : 1;
    u8 partnerID : 3;
    u8 playerGender;
    u8 partnerGender;
    u16 unk_14;
    u16 unk_16[2];
    u16 unk_1A;
    u16 roomNum;
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u8 unk_2A[4];
    u16 unk_2E[4];
    u16 unk_36[4];
    u16 trainerIDs[BT_OPPONENTS_COUNT * 2];
    Location unk_5C;
    WifiBattleTowerSave *wifiBattleTowerSave;
    WifiBattleTowerRecord *unk_74;
    FrontierDataDTO opponentsDataDTO[2];
    FrontierDataDTO partnersDataDTO[BT_PARTNERS_COUNT];
    BattleTowerPartnerData unk_7E8[BT_PARTNERS_COUNT];
    u8 unk_838[BT_PARTNERS_COUNT];
    u16 unk_83E[35];
    u16 unk_884[35];
    int wonBattle;
    FieldBattleDTO *dto;
    u8 unk_8D4;
    u8 unk_8D5;
    u8 unk_8D6;
    u8 unk_8D7;
    u16 unk_8D8;
    u16 unk_8DA;
} BattleTower;

#endif // POKEPLATINUM_STRUCT_BATTLE_TOWER_H
