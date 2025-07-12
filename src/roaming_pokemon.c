#include "roaming_pokemon.h"

#include <nitro.h>
#include <string.h>

#include "generated/map_headers.h"
#include "generated/species.h"

#include "struct_defs/special_encounter.h"

#include "heap.h"
#include "inlines.h"
#include "pokemon.h"
#include "save_player.h"
#include "savedata.h"
#include "special_encounter.h"
#include "trainer_info.h"

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

typedef struct NearbyRoutes {
    u16 numPossibilities;
    u16 adjacentRouteIndexes[5];
} NearbyRoutes;

static void MoveRoamerRandom(SpecialEncounter *speEnc, const u8 roamerSlot, const int playerPreviousMap);
static void MoveRoamerNearby(SpecialEncounter *param0, const u8 roamerSlot, const int playerPreviousMap);
static void SetNewMapLocation(SpecialEncounter *speEnc, const u8 roamerSlot, const u8 newMapIndex, const int newMapId);

// Includes adjacent routes as well as routes connected to adjacent towns.
// e.g. Route 202's entry includes both routes connected to Sandgem Town and all 3 routes connected to Jubilife City.
static const NearbyRoutes sNearbyRoutes[RI_MAX] = {
    [RI_ROUTE_201] = {
        2,
        { RI_ROUTE_202, RI_ROUTE_219, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_202] = {
        5,
        { RI_ROUTE_201, RI_ROUTE_203, RI_ROUTE_204_SOUTH, RI_ROUTE_218, RI_ROUTE_219 },
    },
    [RI_ROUTE_203] = {
        4,
        { RI_ROUTE_202, RI_ROUTE_204_SOUTH, RI_ROUTE_207, RI_ROUTE_218, 0xFFFF },
    },
    [RI_ROUTE_204_SOUTH] = {
        4,
        { RI_ROUTE_202, RI_ROUTE_203, RI_ROUTE_204_NORTH, RI_ROUTE_218, 0xFFFF },
    },
    [RI_ROUTE_204_NORTH] = {
        2,
        { RI_ROUTE_204_SOUTH, RI_ROUTE_205_SOUTH, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_205_SOUTH] = {
        4,
        { RI_ROUTE_204_NORTH, RI_ROUTE_205_NORTH, RI_VALLEY_WINDWORKS_OUTSIDE, RI_FUEGO_IRONWORKS_OUTSIDE, 0xFFFF },
    },
    [RI_ROUTE_205_NORTH] = {
        3,
        { RI_ROUTE_205_SOUTH, RI_ROUTE_206, 9, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_206] = {
        3,
        { RI_ROUTE_205_NORTH, RI_ROUTE_207, RI_ROUTE_211_WEST, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_207] = {
        3,
        { RI_ROUTE_203, RI_ROUTE_206, RI_ROUTE_208, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_208] = {
        3,
        { RI_ROUTE_207, RI_ROUTE_209, RI_ROUTE_212_NORTH, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_209] = {
        3,
        { RI_ROUTE_208, RI_ROUTE_210_SOUTH, RI_ROUTE_212_NORTH, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_210_SOUTH] = {
        3,
        { RI_ROUTE_209, RI_ROUTE_210_NORTH, RI_ROUTE_215, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_210_NORTH] = {
        2,
        { RI_ROUTE_210_SOUTH, RI_ROUTE_211_EAST, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_211_WEST] = {
        4,
        { RI_ROUTE_205_NORTH, RI_ROUTE_206, RI_ROUTE_211_EAST, RI_ROUTE_216, 0xFFFF },
    },
    [RI_ROUTE_211_EAST] = {
        3,
        { RI_ROUTE_210_NORTH, RI_ROUTE_211_WEST, RI_ROUTE_216, 0xFFFF },
    },
    [RI_ROUTE_212_NORTH] = {
        3,
        { RI_ROUTE_208, RI_ROUTE_209, RI_ROUTE_212_SOUTH, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_212_SOUTH] = {
        2,
        { RI_ROUTE_212_NORTH, RI_ROUTE_213, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_213] = {
        3,
        { RI_ROUTE_212_SOUTH, RI_ROUTE_214, RI_ROUTE_222, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_214] = {
        3,
        { RI_ROUTE_213, RI_ROUTE_215, RI_ROUTE_222, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_215] = {
        2,
        { RI_ROUTE_210_SOUTH, RI_ROUTE_214, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_216] = {
        3,
        { RI_ROUTE_211_WEST, RI_ROUTE_211_EAST, RI_ROUTE_217, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_217] = {
        1,
        { RI_ROUTE_216, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_218] = {
        3,
        { RI_ROUTE_202, RI_ROUTE_203, RI_ROUTE_204_SOUTH, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_219] = {
        3,
        { RI_ROUTE_201, RI_ROUTE_202, RI_ROUTE_220, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_220] = {
        2,
        { RI_ROUTE_219, RI_ROUTE_221, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_221] = {
        1,
        { RI_ROUTE_220, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_ROUTE_222] = {
        2,
        { RI_ROUTE_213, RI_ROUTE_214, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_VALLEY_WINDWORKS_OUTSIDE] = {
        1,
        { RI_ROUTE_205_SOUTH, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF },
    },
    [RI_FUEGO_IRONWORKS_OUTSIDE] = {
        1,
        { RI_ROUTE_205_SOUTH, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF },
    },
};

// All outdoor areas with encounters on the mainland except Trophy Garden, Great Marsh, and the ones past Sunyshore City
static const int RoamingPokemonRoutes[RI_MAX] = {
    [RI_ROUTE_201] = MAP_HEADER_ROUTE_201,
    [RI_ROUTE_202] = MAP_HEADER_ROUTE_202,
    [RI_ROUTE_203] = MAP_HEADER_ROUTE_203,
    [RI_ROUTE_204_SOUTH] = MAP_HEADER_ROUTE_204_SOUTH,
    [RI_ROUTE_204_NORTH] = MAP_HEADER_ROUTE_204_NORTH,
    [RI_ROUTE_205_SOUTH] = MAP_HEADER_ROUTE_205_SOUTH,
    [RI_ROUTE_205_NORTH] = MAP_HEADER_ROUTE_205_NORTH,
    [RI_ROUTE_206] = MAP_HEADER_ROUTE_206,
    [RI_ROUTE_207] = MAP_HEADER_ROUTE_207,
    [RI_ROUTE_208] = MAP_HEADER_ROUTE_208,
    [RI_ROUTE_209] = MAP_HEADER_ROUTE_209,
    [RI_ROUTE_210_SOUTH] = MAP_HEADER_ROUTE_210_SOUTH,
    [RI_ROUTE_210_NORTH] = MAP_HEADER_ROUTE_210_NORTH,
    [RI_ROUTE_211_WEST] = MAP_HEADER_ROUTE_211_WEST,
    [RI_ROUTE_211_EAST] = MAP_HEADER_ROUTE_211_EAST,
    [RI_ROUTE_212_NORTH] = MAP_HEADER_ROUTE_212_NORTH,
    [RI_ROUTE_212_SOUTH] = MAP_HEADER_ROUTE_212_SOUTH,
    [RI_ROUTE_213] = MAP_HEADER_ROUTE_213,
    [RI_ROUTE_214] = MAP_HEADER_ROUTE_214,
    [RI_ROUTE_215] = MAP_HEADER_ROUTE_215,
    [RI_ROUTE_216] = MAP_HEADER_ROUTE_216,
    [RI_ROUTE_217] = MAP_HEADER_ROUTE_217,
    [RI_ROUTE_218] = MAP_HEADER_ROUTE_218,
    [RI_ROUTE_219] = MAP_HEADER_ROUTE_219,
    [RI_ROUTE_220] = MAP_HEADER_ROUTE_220,
    [RI_ROUTE_221] = MAP_HEADER_ROUTE_221,
    [RI_ROUTE_222] = MAP_HEADER_ROUTE_222,
    [RI_VALLEY_WINDWORKS_OUTSIDE] = MAP_HEADER_VALLEY_WINDWORKS_OUTSIDE,
    [RI_FUEGO_IRONWORKS_OUTSIDE] = MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
};

void RoamingPokemon_MoveToRandomMap(SpecialEncounter *speEnc, const u8 roamerSlot)
{
    int previousMap = SpecialEncounter_GetPlayerPreviousMap(speEnc);
    MoveRoamerRandom(speEnc, roamerSlot, previousMap);
}

// Used when Teleporting/Flying
void RoamingPokemon_RandomizeAllLocations(SpecialEncounter *speEnc)
{
    for (u8 i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (SpecialEncounter_IsRoamerActive(speEnc, i)) {
            RoamingPokemon_MoveToRandomMap(speEnc, i);
        }
    }
}

// Moves all Roamers. For each, it has a 1/16 chance to randomize its location. Otherwise, it will move to a nearby route.
void RoamingPokemon_MoveAllLocations(SpecialEncounter *specialEncounter)
{
    for (u8 i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (SpecialEncounter_IsRoamerActive(specialEncounter, i)) {
            if (LCRNG_RandMod(16) == 0) {
                RoamingPokemon_MoveToRandomMap(specialEncounter, i);
            } else {
                {
                    int previousMap = SpecialEncounter_GetPlayerPreviousMap(specialEncounter);
                    MoveRoamerNearby(specialEncounter, i, previousMap);
                }
            }
        }
    }
}

int RoamingPokemon_GetRouteFromId(const u8 routeId)
{
    GF_ASSERT(routeId < RI_MAX);
    return RoamingPokemonRoutes[routeId];
}

BOOL RoamingPokemon_AnyRoamersActive(SpecialEncounter *speEnc)
{

    for (u8 i = 0; i < ROAMING_SLOT_MAX; i++) {
        if (SpecialEncounter_IsRoamerActive(speEnc, i)) {
            return TRUE;
        }
    }

    return FALSE;
}

// Runs when the player changes maps. Roamers cannot move to the map the player just left.
void RoamingPokemon_UpdatePlayerRecentRoutes(SpecialEncounter *speEnc, const int newMap)
{
    if (RoamingPokemon_AnyRoamersActive(speEnc)) {
        SpecialEncounter_UpdateRecentRoutes(speEnc, newMap);
    }
}

void RoamingPokemon_ActivateSlot(SaveData *saveData, const u8 slot)
{
    Pokemon *roamerMonData;
    Roamer *newRoamer;
    SpecialEncounter *speEnc;
    int previouslyVisitedMap;
    TrainerInfo *trainer;
    int species;
    u8 level;

    speEnc = SaveData_GetSpecialEncounters(saveData);
    newRoamer = SpecialEncounter_GetRoamer(speEnc, slot);

    switch (slot) {
    case ROAMING_SLOT_MESPRIT:
        species = SPECIES_MESPRIT;
        level = 50;
        break;
    case ROAMING_SLOT_CRESSELIA:
        species = SPECIES_CRESSELIA;
        level = 50;
        break;
    case ROAMING_SLOT_DARKRAI:
        species = SPECIES_DARKRAI;
        level = 40;
        break;
    case ROAMING_SLOT_MOLTRES:
        species = SPECIES_MOLTRES;
        level = 60;
        break;
    case ROAMING_SLOT_ZAPDOS:
        species = SPECIES_ZAPDOS;
        level = 60;
        break;
    case ROAMING_SLOT_ARTICUNO:
        species = SPECIES_ARTICUNO;
        level = 60;
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    Roamer_SetData(newRoamer, ROAMER_DATA_SPECIES, species);
    Roamer_SetData(newRoamer, ROAMER_DATA_LEVEL, level);

    trainer = SaveData_GetTrainerInfo(saveData);
    roamerMonData = Pokemon_New(HEAP_ID_FIELD);

    Pokemon_Init(roamerMonData);
    Pokemon_InitWith(roamerMonData, species, level, INIT_IVS_RANDOM, FALSE, 0, OTID_SET, TrainerInfo_ID_LowHalf(trainer));
    Roamer_SetData(newRoamer, ROAMER_DATA_STATUS, 0);
    Roamer_SetData(newRoamer, ROAMER_DATA_ACTIVE, 1);
    Roamer_SetData(newRoamer, ROAMER_DATA_IVS, Pokemon_GetValue(roamerMonData, MON_DATA_COMBINED_IVS, NULL));
    Roamer_SetData(newRoamer, ROAMER_DATA_PERSONALITY, Pokemon_GetValue(roamerMonData, MON_DATA_PERSONALITY, NULL));
    Roamer_SetData(newRoamer, ROAMER_DATA_CURRENT_HP, Pokemon_GetValue(roamerMonData, MON_DATA_MAX_HP, NULL));
    Heap_FreeToHeap(roamerMonData);

    previouslyVisitedMap = SpecialEncounter_GetPlayerPreviousMap(speEnc);
    MoveRoamerRandom(speEnc, slot, previouslyVisitedMap);
}

static void MoveRoamerRandom(SpecialEncounter *specialEncounter, const u8 roamerSlot, const int playerPreviousMap)
{
    u8 newIndex;
    int currentRoute;
    int newRoute;

    currentRoute = RoamingPokemonRoutes[SpecialEncounter_GetRoamerRouteIndex(specialEncounter, roamerSlot)];

    while (TRUE) {
        newIndex = LCRNG_RandMod(RI_MAX);
        newRoute = RoamingPokemonRoutes[newIndex];

        if ((newRoute != playerPreviousMap) && (newRoute != currentRoute)) {
            SetNewMapLocation(specialEncounter, roamerSlot, newIndex, newRoute);
            break;
        }
    }
}

static void MoveRoamerNearby(SpecialEncounter *specialEncounter, const u8 roamerSlot, const int playerPreviousMap)
{
    const NearbyRoutes *possibleNewRoutes;
    u8 newMapIndex;
    int newMapId;

    possibleNewRoutes = &(sNearbyRoutes[SpecialEncounter_GetRoamerRouteIndex(specialEncounter, roamerSlot)]);

    if (possibleNewRoutes->numPossibilities == 1) {
        newMapIndex = possibleNewRoutes->adjacentRouteIndexes[0];
        newMapId = RoamingPokemonRoutes[newMapIndex];

        if (newMapId == playerPreviousMap) {
            MoveRoamerRandom(specialEncounter, roamerSlot, playerPreviousMap);
        } else {
            SetNewMapLocation(specialEncounter, roamerSlot, newMapIndex, newMapId);
        }
    } else {
        u8 nearbyIndex;

        while (TRUE) {
            nearbyIndex = LCRNG_RandMod(possibleNewRoutes->numPossibilities);
            newMapIndex = possibleNewRoutes->adjacentRouteIndexes[nearbyIndex];
            newMapId = RoamingPokemonRoutes[newMapIndex];

            if (newMapId != playerPreviousMap) {
                SetNewMapLocation(specialEncounter, roamerSlot, newMapIndex, newMapId);
                break;
            }
        }
    }
}

static void SetNewMapLocation(SpecialEncounter *specialEncounter, const u8 roamerSlot, const u8 newMapIndex, const int newMapId)
{
    Roamer *roamer = SpecialEncounter_GetRoamer(specialEncounter, roamerSlot);

    SpecialEncounter_SetRoamerRouteIndex(specialEncounter, roamerSlot, newMapIndex);
    Roamer_SetData(roamer, ROAMER_DATA_MAP_ID, newMapId);
}
