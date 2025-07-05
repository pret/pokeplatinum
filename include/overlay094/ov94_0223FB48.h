#ifndef POKEPLATINUM_OV94_0223FB48_H
#define POKEPLATINUM_OV94_0223FB48_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay094/gts_application_state.h"

#include "party.h"
#include "pokemon.h"

int ov94_0223FB48(GTSApplicationState *param0, int param1);
int ov94_0223FBBC(GTSApplicationState *param0, int param1);
int ov94_0223FBDC(GTSApplicationState *param0, int param1);
int ov94_022411D0(int param0);
BoxPokemon *ov94_022411DC(Party *param0, PCBoxes *pcBoxes, int param2, int param3);
BOOL Pokemon_HeldItemIsMail(Pokemon *param0);

#endif // POKEPLATINUM_OV94_0223FB48_H
