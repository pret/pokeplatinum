#include "unk_0202D7A8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202D7B0.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#include "math.h"
#include "roaming_pokemon.h"
#include "savedata.h"

int SpecialEncounter_SaveSize(void)
{
    return sizeof(SpecialEncounter);
}

void SpecialEncounter_Init(SpecialEncounter *param0)
{
    memset(param0, 0, sizeof(SpecialEncounter));

    param0->marshDaily = MTRNG_Next();
    param0->swarmDaily = MTRNG_Next();
    param0->trophyGarden.unused = 0;
    param0->trophyGarden.slot1 = TROPHY_GARDEN_SLOT_NONE;
    param0->trophyGarden.slot2 = TROPHY_GARDEN_SLOT_NONE;

    {
        int i;
        HoneyTreeData *v1 = &(param0->treeData);

        v1->lastSlatheredTree = NUM_HONEY_TREES;

        for (i = 0; i < NUM_HONEY_TREES; i++) {
            v1->honeyTrees[i].minutesRemaining = 0;
            v1->honeyTrees[i].encounterSlot = 0;
            v1->honeyTrees[i].encounterTableIndex = 0;
            v1->honeyTrees[i].encounterGroup = 0;
            v1->honeyTrees[i].numShakes = 0;
        }
    }

    param0->swarmEnabled = 0;
    param0->repelSteps = 0;
    param0->radarCharge = 0;
    param0->fluteFactor = FLUTE_FACTOR_NONE;
}

void SpecialEncounter_SetMixedRecordDailies(SpecialEncounter *speEnc, const u32 mixedRecord)
{
    speEnc->marshDaily = mixedRecord;
    speEnc->swarmDaily = mixedRecord;
}

u32 SpecialEncounter_GetDailyMon(SpecialEncounter *param0, const u8 dailyType)
{
    switch (dailyType) {
    case DAILY_MARSH:
        return param0->marshDaily;
    case DAILY_SWARM:
        return param0->swarmDaily;
    default:
        GF_ASSERT(0);
        return 0;
    }
}

UnkStruct_020698E4 *sub_0202D830(SpecialEncounter *param0)
{
    return &(param0->unk_BC);
}

SpecialEncounter *SaveData_GetSpecialEncounters(SaveData *speEnc)
{
    return SaveData_SaveTable(speEnc, SAVE_TABLE_ENTRY_ENCOUNTERS);
}

// This is exclusively used in combination with SpecialEncounter_GetHoneyTree, so they could've just been one function...
HoneyTreeData *SpecialEncounter_GetHoneyTreeData(SpecialEncounter *speEnc)
{
    return &(speEnc->treeData);
}

const int SpecialEncounter_GetLastSlatheredTreeId(HoneyTreeData *treeDat)
{
    return treeDat->lastSlatheredTree;
}

void SpecialEncounter_SetLastSlatheredTreeId(const u8 treeId, HoneyTreeData *treeDat)
{
    treeDat->lastSlatheredTree = treeId;
}

// Inconsistency: Roamers have bounds checking on the IDs used, but Honey Trees don't
HoneyTree *SpecialEncounter_GetHoneyTree(const u8 treeId, HoneyTreeData *treeDat)
{
    HoneyTree *tree;

    tree = &treeDat->honeyTrees[treeId];
    return tree;
}

void SpecialEncounter_DecrementHoneyTreeTimers(SaveData *save, const int decrement)
{
    int i;
    HoneyTreeData *treeDat;
    SpecialEncounter *speEnc;
    HoneyTree *tree;

    speEnc = SaveData_GetSpecialEncounters(save);
    treeDat = &(speEnc->treeData);

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
    SpecialEncounter *speEnc;

    speEnc = SaveData_GetSpecialEncounters(saveData);
    speEnc->swarmEnabled = 1;
}

u8 SpecialEncounter_IsSwarmEnabled(SpecialEncounter *speEnc)
{
    return speEnc->swarmEnabled;
}

void sub_0202D8A4(SpecialEncounter *param0, const int param1)
{
    if (param0->unk_C8.unk_00 != param1) {
        param0->unk_C8.unk_04 = param0->unk_C8.unk_00;
        param0->unk_C8.unk_00 = param1;
    }
}

int sub_0202D8BC(SpecialEncounter *param0)
{
    return param0->unk_C8.unk_04;
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
    u32 data;

    switch (dataType) {
    case 1:
        data = roamer->unk_00;
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
    u32 v0;

    switch (dataType) {
    case 1:
        roamer->unk_00 = data;
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

u8 *SpecialEncounter_GetRadarCharge(SpecialEncounter *param0)
{
    return &(param0->radarCharge);
}

u8 *SpecialEncounter_GetRepelSteps(SpecialEncounter *param0)
{
    return &(param0->repelSteps);
}

BOOL SpecialEncounter_RepelStepsEmpty(SpecialEncounter *param0)
{
    if (!param0->repelSteps) {
        return 1;
    } else {
        return 0;
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
