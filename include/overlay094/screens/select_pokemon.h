#ifndef POKEPLATINUM_OV94_0223FB48_H
#define POKEPLATINUM_OV94_0223FB48_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay094/gts_application_state.h"

#include "party.h"
#include "pokemon.h"

int GTSApplication_SelectPokemon_Init(GTSApplicationState *param0, int param1);
int GTSApplication_SelectPokemon_Main(GTSApplicationState *param0, int param1);
int GTSApplication_SelectPokemon_Exit(GTSApplicationState *param0, int param1);
int IsBoxIDParty(int boxID);
BoxPokemon *ov94_022411DC(Party *party, PCBoxes *pcBoxes, int boxID, int pos);
BOOL Pokemon_IsHoldingMail(Pokemon *mon);

#endif // POKEPLATINUM_OV94_0223FB48_H
