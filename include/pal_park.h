#ifndef POKEPLATINUM_PAL_PARK_H
#define POKEPLATINUM_PAL_PARK_H

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"

typedef struct PalParkPokemon{
    u16 unk_00;
    u8 encounterType;
    u8 unk_03;
    u16 unk_04;
    u8 type1;
    u8 type2;
} PalParkPokemon;

typedef struct PalParkCatchingShowData {
    PalParkPokemon palParkPokemon[6];
    u8 unk_30[6];
    int steps;
    int unk_3C;
    s64 unk_40;
    int timePoints;
} PalParkCatchingShowData;

void PalPark_InitCatchingShowData(FieldSystem *fieldSystem);
void sub_02056328(FieldSystem *fieldSystem);
BOOL PalPark_CheckWildEncounter(FieldSystem *fieldSystem, int param1, int param2);
FieldBattleDTO *sub_0205639C(FieldSystem *fieldSystem);
void sub_020563AC(FieldSystem *fieldSystem, FieldBattleDTO *param1);
int PalPark_GetParkBallCount(FieldSystem *fieldSystem);
int PalPark_GetCatchingPoints(FieldSystem *fieldSystem);
int PalPark_GetTimePoints(FieldSystem *fieldSystem);
int PalPark_GetTypePoints(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_PAL_PARK_H
