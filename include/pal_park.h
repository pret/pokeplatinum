#ifndef POKEPLATINUM_PAL_PARK_H
#define POKEPLATINUM_PAL_PARK_H

#include "field/field_system_decl.h"

#include "field_battle_data_transfer.h"

void sub_020562F8(FieldSystem *fieldSystem);
void sub_02056328(FieldSystem *fieldSystem);
BOOL sub_02056374(FieldSystem *fieldSystem, int param1, int param2);
FieldBattleDTO *sub_0205639C(FieldSystem *fieldSystem);
void sub_020563AC(FieldSystem *fieldSystem, FieldBattleDTO *param1);
int PalPark_GetParkBallCount(FieldSystem *fieldSystem);
int PalPark_GetCatchingPoints(FieldSystem *fieldSystem);
int PalPark_GetTimePoints(FieldSystem *fieldSystem);
int PalPark_GetTypePoints(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_PAL_PARK_H
