#ifndef POKEPLATINUM_OV94_0223FB48_H
#define POKEPLATINUM_OV94_0223FB48_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay094/struct_ov94_0223FD4C_decl.h"

#include "party.h"
#include "pokemon.h"

int ov94_0223FB48(UnkStruct_ov94_0223FD4C *param0, int param1);
int ov94_0223FBBC(UnkStruct_ov94_0223FD4C *param0, int param1);
int ov94_0223FBDC(UnkStruct_ov94_0223FD4C *param0, int param1);
int IsBoxIDParty(int boxID);
BoxPokemon *ov94_022411DC(Party *party, PCBoxes *pcBoxes, int boxID, int pos);
BOOL Pokemon_IsHoldingMail(Pokemon *mon);

#endif // POKEPLATINUM_OV94_0223FB48_H
