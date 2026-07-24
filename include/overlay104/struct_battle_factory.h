#ifndef POKEPLATINUM_STRUCT_BATTLE_FACTORY_H
#define POKEPLATINUM_STRUCT_BATTLE_FACTORY_H

#include "overlay104/frontier_data_transfer.h"

#include "battle_factory_save.h"
#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"
#include "sys_task_manager.h"

typedef struct BattleFactory {
    int unk_00;
    u8 challengeType;
    u8 isOpenLevel;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    u16 currentStreak;
    u16 unk_0E;
    u32 unk_10;
    int wonBattle;
    u16 trainerIDs[14];
    FrontierDataDTO unk_34[2];
    u16 unk_254[6];
    u8 unk_260[6];
    u32 unk_268[6];
    FrontierPokemonDataDTO unk_280[6];
    u16 unk_3D0;
    u16 unk_3D2[4];
    u8 unk_3DA[4];
    u32 unk_3E0[4];
    FrontierPokemonDataDTO unk_3F0[4];
    u16 unk_4D0;
    Party *playersParty;
    Party *opponentsParty;
    u16 unk_4DC[6];
    u16 unk_4E8[6];
    BattleFactorySave *factorySave;
    SaveData *saveData;
    FieldBattleDTO *dto;
    SysTask *unk_500;
    u16 unk_504[60];
    u8 unk_57C;
    u8 unk_57D;
    u16 unk_57E;
    u16 unk_580;
    u16 unk_582;
    u16 unk_584[6];
    u8 unk_590[6];
    u32 unk_598[6];
    FrontierPokemonDataDTO unk_5B0[6];
    u16 unk_700;
    u8 unk_702;
    u32 unk_704;
} BattleFactory;

#endif // POKEPLATINUM_STRUCT_BATTLE_FACTORY_H
