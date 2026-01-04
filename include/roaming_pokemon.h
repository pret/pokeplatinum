#ifndef POKEPLATINUM_ROAMING_POKEMON_H
#define POKEPLATINUM_ROAMING_POKEMON_H

#include "struct_defs/special_encounter.h"

#include "savedata.h"

enum RoamerRouteIndex {
    RI_ROUTE_201 = 0,
    RI_ROUTE_202,
    RI_ROUTE_203,
    RI_ROUTE_204_SOUTH,
    RI_ROUTE_204_NORTH,
    RI_ROUTE_205_SOUTH,
    RI_ROUTE_205_NORTH,
    RI_ROUTE_206,
    RI_ROUTE_207,
    RI_ROUTE_208,
    RI_ROUTE_209,
    RI_ROUTE_210_SOUTH,
    RI_ROUTE_210_NORTH,
    RI_ROUTE_211_WEST,
    RI_ROUTE_211_EAST,
    RI_ROUTE_212_NORTH,
    RI_ROUTE_212_SOUTH,
    RI_ROUTE_213,
    RI_ROUTE_214,
    RI_ROUTE_215,
    RI_ROUTE_216,
    RI_ROUTE_217,
    RI_ROUTE_218,
    RI_ROUTE_219,
    RI_ROUTE_220,
    RI_ROUTE_221,
    RI_ROUTE_222,
    RI_VALLEY_WINDWORKS_OUTSIDE,
    RI_FUEGO_IRONWORKS_OUTSIDE,
    RI_MAX,
};

void RoamingPokemon_MoveToRandomMap(SpecialEncounter *speEnc, const u8 roamerSlot);
void RoamingPokemon_RandomizeAllLocations(SpecialEncounter *speEnc);
void RoamingPokemon_MoveAllLocations(SpecialEncounter *speEnc);
int RoamingPokemon_GetRouteFromId(const u8 id);
BOOL RoamingPokemon_AnyRoamersActive(SpecialEncounter *speEnc);
void RoamingPokemon_UpdatePlayerRecentRoutes(SpecialEncounter *speEnc, const int newMap);
void RoamingPokemon_ActivateSlot(SaveData *saveData, const u8 speciesID);

#endif // POKEPLATINUM_ROAMING_POKEMON_H
