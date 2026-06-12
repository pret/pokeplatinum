#ifndef POKEPLATINUM_STRUCT_BATTLE_ARCADE_H
#define POKEPLATINUM_STRUCT_BATTLE_ARCADE_H

#include "struct_decls/struct_020304A0_decl.h"

#include "overlay104/frontier_data_transfer.h"

#include "field_battle_data_transfer.h"
#include "party.h"
#include "savedata.h"
#include "sprite.h"

typedef struct BattleArcade {
    int unk_00;
    SaveData *saveData;
    UnkStruct_020304A0 *unk_08;
    FieldBattleDTO *dto;
    u8 challengeType;
    u8 unk_11;
    u8 unk_12;
    u8 activeEffect;
    int weather;
    u16 currentStreak;
    u16 unk_1A;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    u8 unk_1F;
    u16 unk_20;
    u16 unk_22;
    u32 unk_24;
    int wonBattle;
    u8 unk_2C[3];
    u8 unk_2F;
    ManagedSprite *unk_30[4];
    ManagedSprite *unk_40[4];
    ManagedSprite *unk_50[4];
    ManagedSprite *unk_60[4];
    Party *playersParty;
    Party *opponentsParty;
    u16 trainerIDs[14];
    u32 monHP[4];
    u32 monAtk[4];
    u32 monDef[4];
    u32 monSpeed[4];
    u32 monSpAtk[4];
    u32 monSpDef[4];
    FrontierDataDTO unk_F4[2];
    u16 unk_314[4];
    u8 unk_31C[4];
    u32 unk_320[4];
    FrontierPokemonDataDTO unk_330[4];
    u16 unk_410;
    u16 unk_412[3];
    u16 appCursorPos[6];
    u16 unk_424[40];
    u8 unk_474[512];
    u8 unk_674[2][512];
    u8 unk_A74;
    u8 unk_A75;
    u16 unk_A76;
    u16 unk_A78;
    u8 unk_A7A;
    u8 unk_A7B;
    u8 unk_A7C;
    u8 unk_A7D;
    u16 *unk_A80;
    u32 unk_A84;
} BattleArcade;

#endif // POKEPLATINUM_STRUCT_BATTLE_ARCADE_H
