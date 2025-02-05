#include "special_encounter.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/radar_chain_records.h"
#include "struct_defs/special_encounter.h"

#include "math.h"
#include "roaming_pokemon.h"
#include "savedata.h"

int SpecialEncounter_SaveSize(void)
{
    return sizeof(SpecialEncounter);
}

void SpecialEncounter_Init(SpecialEncounter *specialEncounter)
{
    memset(specialEncounter, 0, sizeof(SpecialEncounter));

    specialEncounter->marshDaily = MTRNG_Next();
    specialEncounter->swarmDaily = MTRNG_Next();
    specialEncounter->trophyGarden.unused = 0;
    specialEncounter->trophyGarden.slot1 = TROPHY_GARDEN_SLOT_NONE;
    specialEncounter->trophyGarden.slot2 = TROPHY_GARDEN_SLOT_NONE;

    int i;
    PlayerHoneyTreeStates *v1 = &(specialEncounter->treeStates);

    v1->lastSlatheredTree = NUM_HONEY_TREES;

    for (i = 0; i < NUM_HONEY_TREES; i++) {
        v1->honeyTrees[i].minutesRemaining = 0;
        v1->honeyTrees[i].encounterSlot = 0;
        v1->honeyTrees[i].encounterTableIndex = 0;
        v1->honeyTrees[i].encounterGroup = 0;
        v1->honeyTrees[i].numShakes = 0;
    }

    specialEncounter->swarmEnabled = 0;
    specialEncounter->repelSteps = 0;
    specialEncounter->radarCharge = 0;
    specialEncounter->fluteFactor = FLUTE_FACTOR_NONE;
}

void SpecialEncounter_SetMixedRecordDailies(SpecialEncounter *speEnc, const u32 mixedRecord)
{
    speEnc->marshDaily = mixedRecord;
    speEnc->swarmDaily = mixedRecord;
}

u32 SpecialEncounter_GetDailyMon(SpecialEncounter *speEnc, const u8 dailyType)
{
    switch (dailyType) {
    case DAILY_MARSH:
        return speEnc->marshDaily;
    case DAILY_SWARM:
        return speEnc->swarmDaily;
    default:
        GF_ASSERT(0);
        return 0;
    }
}

RadarChainRecords *SpecialEncounter_GetRadarChainRecords(SpecialEncounter *speEnc)
{
    return &(speEnc->chainRecords);
}

SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *speEnc)
{
    return SaveData_SaveTable(speEnc, SAVE_TABLE_ENTRY_ENCOUNTERS);
}

// This is exclusively used in combination with SpecialEncounter_GetHoneyTree, so they could've just been one function...
PlayerHoneyTreeStates *SpecialEncounter_GetPlayerHoneyTreeStates(SpecialEncounter *speEnc)
{
    return &(speEnc->treeStates);
}

const int SpecialEncounter_GetLastSlatheredTreeId(PlayerHoneyTreeStates *treeDat)
{
    return treeDat->lastSlatheredTree;
}

void SpecialEncounter_SetLastSlatheredTreeId(const u8 treeId, PlayerHoneyTreeStates *treeDat)
{
    treeDat->lastSlatheredTree = treeId;
}

// Inconsistency: Roamers have bounds checking on the IDs used, but Honey Trees don't
HoneyTree *SpecialEncounter_GetHoneyTree(const u8 treeId, PlayerHoneyTreeStates *treeDat)
{
    HoneyTree *tree = &treeDat->honeyTrees[treeId];
    return tree;
}

// These are minute timers. They start at 24 hours'worth of minutes
void SpecialEncounter_DecrementHoneyTreeTimers(SaveData *save, const int decrement)
{
    int i;
    PlayerHoneyTreeStates *treeDat;
    SpecialEncounter *speEnc;
    HoneyTree *tree;

    speEnc = SaveData_GetSpecialEncounters(save);
    treeDat = &(speEnc->treeStates);

    for (i = 0; i < NUM_HONEY_TREES; i++) {
        tree = SpecialEncounter_GetHoneyTree(i, treeDat);

        if (tree->minutesRemaining != 0) {
            tree->minutesRemaining -= decrement;

            if (tree->minutesRemaining < 0) {
                tree->minutesRemaining = 0;
            }
        }
    }
}

void SpecialEncounter_EnableSwarms(SaveData *saveData)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(saveData);
    speEnc->swarmEnabled = 1;
}

u8 SpecialEncounter_IsSwarmEnabled(SpecialEncounter *speEnc)
{
    return speEnc->swarmEnabled;
}

void SpecialEncounter_UpdateRecentRoutes(SpecialEncounter *speEnc, const int newMap)
{
    if (speEnc->recentRoutes.currentMapId != newMap) {
        speEnc->recentRoutes.previousMapId = speEnc->recentRoutes.currentMapId;
        speEnc->recentRoutes.currentMapId = newMap;
    }
}

int SpecialEncounter_GetPlayerPreviousMap(SpecialEncounter *speEnc)
{
    return speEnc->recentRoutes.previousMapId;
}

u8 SpecialEncounter_GetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 roamerId)
{
    GF_ASSERT(roamerId < ROAMING_SLOT_MAX);
    return speEnc->roamerRouteIndexes[roamerId];
}

void SpecialEncounter_SetRoamerRouteIndex(SpecialEncounter *speEnc, const u8 roamerId, const u8 routeIndex)
{
    GF_ASSERT(roamerId < ROAMING_SLOT_MAX);
    speEnc->roamerRouteIndexes[roamerId] = routeIndex;
}

u8 SpecialEncounter_IsRoamerActive(SpecialEncounter *speEnc, const u8 slot)
{
    GF_ASSERT(slot < ROAMING_SLOT_MAX);
    return speEnc->roamers[slot].active;
}

void SpecialEncounter_ZeroRoamerData(Roamer **roamer)
{
    memset((*roamer), 0, sizeof(Roamer));
}

Roamer *SpecialEncounter_GetRoamer(SpecialEncounter *speEnc, const u8 slot)
{
    GF_ASSERT(slot < ROAMING_SLOT_MAX);
    return &(speEnc->roamers[slot]);
}

u32 Roamer_GetData(const Roamer *roamer, const u8 dataType)
{
    u32 data; // awesome uninitialized variable with no default case

    switch (dataType) {
    case ROAMER_DATA_MAP_ID:
        data = roamer->currentMapId;
        break;
    case ROAMER_DATA_IVS:
        data = roamer->ivs;
        break;
    case ROAMER_DATA_PERSONALITY:
        data = roamer->personality;
        break;
    case ROAMER_DATA_SPECIES:
        data = roamer->species;
        break;
    case ROAMER_DATA_CURRENT_HP:
        data = roamer->currentHP;
        break;
    case ROAMER_DATA_LEVEL:
        data = roamer->level;
        break;
    case ROAMER_DATA_STATUS:
        data = roamer->status;
        break;
    case ROAMER_DATA_ACTIVE:
        data = roamer->active;
        break;
    }

    return data;
}

void Roamer_SetData(Roamer *roamer, const u8 dataType, const u32 data)
{
    switch (dataType) {
    case ROAMER_DATA_MAP_ID:
        roamer->currentMapId = data;
        break;
    case ROAMER_DATA_IVS:
        roamer->ivs = data;
        break;
    case ROAMER_DATA_PERSONALITY:
        roamer->personality = data;
        break;
    case ROAMER_DATA_SPECIES:
        roamer->species = data;
        break;
    case ROAMER_DATA_CURRENT_HP:
        roamer->currentHP = data;
        break;
    case ROAMER_DATA_LEVEL:
        roamer->level = data;
        break;
    case ROAMER_DATA_STATUS:
        roamer->status = data;
        break;
    case ROAMER_DATA_ACTIVE:
        roamer->active = data;
        break;
    }
}

u8 *SpecialEncounter_GetRadarCharge(SpecialEncounter *speEnc)
{
    return &(speEnc->radarCharge);
}

u8 *SpecialEncounter_GetRepelSteps(SpecialEncounter *speEnc)
{
    return &(speEnc->repelSteps);
}

BOOL SpecialEncounter_RepelStepsEmpty(SpecialEncounter *speEnc)
{
    if (!speEnc->repelSteps) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void SpecialEncounter_SetFluteFactor(SpecialEncounter *speEnc, const u8 flute)
{
    GF_ASSERT((flute == FLUTE_FACTOR_USED_BLACK) || (flute == FLUTE_FACTOR_USED_WHITE) || (flute == FLUTE_FACTOR_NONE));
    speEnc->fluteFactor = flute;
}

u8 SpecialEncounter_GetFluteFactor(SpecialEncounter *speEnc)
{
    return speEnc->fluteFactor;
}

void SpecialEncounter_GetTrophyGardenMons(SaveData *saveData, u16 *slot1, u16 *slot2)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(saveData);

    (*slot1) = speEnc->trophyGarden.slot1;
    (*slot2) = speEnc->trophyGarden.slot2;
}

// Assigns slot1 mon to slot2 and newMon to slot1
void TrophyGarden_ShiftSlotsForNewMon(SaveData *saveData, const u16 newMon)
{
    SpecialEncounter *speEnc = SaveData_GetSpecialEncounters(saveData);

    GF_ASSERT(newMon < NUM_TROPHY_GARDEN_SPECIAL_MONS);

    speEnc->trophyGarden.slot2 = speEnc->trophyGarden.slot1;
    speEnc->trophyGarden.slot1 = newMon;
}
