#ifndef POKEPLATINUM_ROAMING_POKEMON_H
#define POKEPLATINUM_ROAMING_POKEMON_H

#include "struct_defs/special_encounter.h"

#include "savedata.h"

void RoamingPokemon_MoveToRandomMap(SpecialEncounter *speEnc, const u8 roamerSlot);
void RoamingPokemon_RandomizeAllLocations(SpecialEncounter *speEnc);
void RoamingPokemon_MoveAllLocations(SpecialEncounter *speEnc);
int RoamingPokemon_GetRouteFromId(const u8 id);
BOOL RoamingPokemon_AnyRoamersActive(SpecialEncounter *speEnc);
void RoamingPokemon_UpdatePlayerRecentRoutes(SpecialEncounter *speEnc, const int newMap);
void RoamingPokemon_ActivateSlot(SaveData *saveData, const u8 speciesID);

#endif // POKEPLATINUM_ROAMING_POKEMON_H
