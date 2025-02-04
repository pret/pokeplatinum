#ifndef POKEPLATINUM_ROAMING_POKEMON_H
#define POKEPLATINUM_ROAMING_POKEMON_H

#include "struct_defs/struct_0202D7B0.h"

#include "savedata.h"

void sub_0206C33C(SpecialEncounter *param0, const u8 param1);
void sub_0206C354(SpecialEncounter *param0);
void sub_0206C37C(SpecialEncounter *param0);
int RoamingPokemon_GetRouteFromId(const u8 param0);
BOOL sub_0206C3E0(SpecialEncounter *param0);
void sub_0206C404(SpecialEncounter *param0, const int param1);
void RoamingPokemon_ActivateSlot(SaveData *saveData, const u8 speciesID);

#endif // POKEPLATINUM_ROAMING_POKEMON_H
