#ifndef POKEPLATINUM_GTS_SCREENS_SELECT_POKEMON_H
#define POKEPLATINUM_GTS_SCREENS_SELECT_POKEMON_H

#include "struct_decls/pc_boxes_decl.h"

#include "overlay094/gts_application_state.h"

#include "party.h"
#include "pokemon.h"

int GTSApplication_SelectPokemon_Init(GTSApplicationState *param0, int param1);
int GTSApplication_SelectPokemon_Main(GTSApplicationState *param0, int param1);
int GTSApplication_SelectPokemon_Exit(GTSApplicationState *param0, int param1);
BOOL GTSApplication_IsBoxIDParty(int boxID);
BoxPokemon *ov94_022411DC(Party *party, PCBoxes *pcBoxes, int boxID, int pos);
BOOL Pokemon_IsHoldingMail(Pokemon *mon);

#endif // POKEPLATINUM_GTS_SCREENS_SELECT_POKEMON_H
