#ifndef POKEPLATINUM_OV94_0223FB48_H
#define POKEPLATINUM_OV94_0223FB48_H

#include "struct_defs/pc_boxes.h"

#include "overlay094/struct_ov94_0223FD4C_decl.h"

#include "party.h"
#include "pokemon.h"

int ov94_0223FB48(UnkStruct_ov94_0223FD4C *param0, int param1);
int ov94_0223FBBC(UnkStruct_ov94_0223FD4C *param0, int param1);
int ov94_0223FBDC(UnkStruct_ov94_0223FD4C *param0, int param1);
int ov94_022411D0(int param0);
BoxPokemon *ov94_022411DC(Party *param0, PCBoxes *param1, int param2, int param3);
BOOL ov94_02241498(Pokemon *param0);

#endif // POKEPLATINUM_OV94_0223FB48_H
