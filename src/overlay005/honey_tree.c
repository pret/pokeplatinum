#include "overlay005/honey_tree.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"
#include "generated/map_headers.h"

#include "field/field_system.h"
#include "overlay005/land_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "heap.h"
#include "inlines.h"
#include "map_matrix.h"
#include "narc.h"
#include "player_avatar.h"
#include "save_player.h"
#include "special_encounter.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"

#include "res/field/props/models/prop_models.naix"

#define TREE_GROUP_NO_ENCOUNTER 0
#define TREE_GROUP_A            1
#define TREE_GROUP_B            2
#define TREE_GROUP_C            3

static void GetTreeEncounterGroup(const BOOL isMunchlaxTree, u8 *param1);
static void GetTreeEncounterSlot(u8 *slot);
static void DoTreeShakingAnimation(FieldSystem *fieldSystem, MapPropManager *param1, const int param2);
static u8 GetTreeIdFromMapId(const int param0);
static const int GetEncounterTableFromGroup(const u8 param0);
static const int GetShakesFromGroup(const u8 param0);
static const BOOL GetShakingValue(const int numShakes, u8 *value);
static const BOOL SixHoursSinceSlathered(const int param0);
static BOOL IsMunchlaxTree(const u32 param0, const u8 param1);

static const int sHoneyTreeMapIds[NUM_HONEY_TREES] = {
    MAP_HEADER_ROUTE_205_SOUTH,
    MAP_HEADER_ROUTE_205_NORTH,
    MAP_HEADER_ROUTE_206,
    MAP_HEADER_ROUTE_207,
    MAP_HEADER_ROUTE_208,
    MAP_HEADER_ROUTE_209,
    MAP_HEADER_ROUTE_210_SOUTH,
    MAP_HEADER_ROUTE_210_NORTH,
    MAP_HEADER_ROUTE_211_EAST,
    MAP_HEADER_ROUTE_212_NORTH,
    MAP_HEADER_ROUTE_212_SOUTH,
    MAP_HEADER_ROUTE_213,
    MAP_HEADER_ROUTE_214,
    MAP_HEADER_ROUTE_215,
    MAP_HEADER_ROUTE_218,
    MAP_HEADER_ROUTE_221,
    MAP_HEADER_ROUTE_222,
    MAP_HEADER_VALLEY_WINDWORKS_OUTSIDE,
    MAP_HEADER_ETERNA_FOREST_OUTSIDE,
    MAP_HEADER_FUEGO_IRONWORKS_OUTSIDE,
    MAP_HEADER_FLOAROMA_MEADOW
};

// Seems they considered having version exclusive Honey Tree encounters.
static const int sEncounterTableIndexes_DPt[] = {
    0x2,
    0x3,
    0x4
};

// These IDs ultimately point to the same encounters.
static const int sEncounterTableIndexes_P_Unused[] = {
    0x5,
    0x6,
    0x7
};

HoneyTreeShakeList *HoneyTree_ShakeDataInit(void)
{
    HoneyTreeShakeList *data = Heap_Alloc(HEAP_ID_FIELD1, sizeof(HoneyTreeShakeList));

    for (u8 i = 0; i < NUM_HONEY_TREES; i++) {
        data->trees[i].shakeValue = 0;
        data->trees[i].isShaking = FALSE;
    }

    return data;
}

void HoneyTree_FreeShakeData(HoneyTreeShakeList **data)
{
    Heap_Free(*data);
    *data = NULL;
}

BOOL HoneyTree_TryInteract(FieldSystem *fieldSystem, int *eventId)
{
    TerrainCollisionHitbox v0;
    int x, z;
    BOOL isFacingHoneyTree;

    *eventId = SCRIPT_ID(COMMON_SCRIPTS, 8);

    x = Player_GetXPos(fieldSystem->playerAvatar);
    z = Player_GetZPos(fieldSystem->playerAvatar);

    if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) == DIR_NORTH) { // Honey Trees can only be interacted with from below.
        TerrainCollisionHitbox_Init(x, z, 0, -1, 1, 1, &v0);
        isFacingHoneyTree = FieldSystem_FindCollidingLoadedMapPropByModelID(fieldSystem, honey_tree_nsbmd, &v0, NULL);
    } else {
        isFacingHoneyTree = FALSE;
    }

    return isFacingHoneyTree;
}

u16 HoneyTree_GetTreeSlatherStatus(FieldSystem *fieldSystem)
{
    u8 treeId;
    PlayerHoneyTreeStates *treeDat;
    HoneyTree *tree;

    treeId = GetTreeIdFromMapId(fieldSystem->location->mapId);
    GF_ASSERT(treeId != NUM_HONEY_TREES);

    treeDat = SpecialEncounter_GetPlayerHoneyTreeStates(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    tree = SpecialEncounter_GetHoneyTree(treeId, treeDat);

    if (SixHoursSinceSlathered(tree->minutesRemaining)) {
        return TREE_STATUS_ENCOUNTER; // tree can have Pokemon
    } else if (tree->minutesRemaining != 0) {
        return TREE_STATUS_SLATHERED; // tree is slathered
    } else {
        return TREE_STATUS_BARE; // tree is bare
    }
}

void HoneyTree_SlatherTree(FieldSystem *fieldSystem)
{
    u8 treeId;
    PlayerHoneyTreeStates *treeDat;
    HoneyTree *tree;
    BOOL munchlaxTree;

    treeId = GetTreeIdFromMapId(fieldSystem->location->mapId);
    GF_ASSERT(treeId != NUM_HONEY_TREES);

    treeDat = SpecialEncounter_GetPlayerHoneyTreeStates(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    tree = SpecialEncounter_GetHoneyTree(treeId, treeDat);

    tree->minutesRemaining = (24 * 60); // slathering lasts for one day

    TrainerInfo *trainer = SaveData_GetTrainerInfo(fieldSystem->saveData);
    munchlaxTree = IsMunchlaxTree(TrainerInfo_ID(trainer), treeId);

    // Slathering the same tree twice in succession has a 90% chance to give the same group again.
    if (SpecialEncounter_GetLastSlatheredTreeId(treeDat) == treeId) {
        if ((LCRNG_RandMod(100)) < 90) {
            GetTreeEncounterSlot(&tree->encounterSlot);
            tree->numShakes = GetShakesFromGroup(tree->encounterGroup);
            return;
        }
    }

    GetTreeEncounterGroup(munchlaxTree, &tree->encounterGroup);

    if (tree->encounterGroup != TREE_GROUP_NO_ENCOUNTER) {
        GetTreeEncounterSlot(&tree->encounterSlot);

        tree->encounterTableIndex = GetEncounterTableFromGroup(tree->encounterGroup);
    } else {
        tree->encounterTableIndex = 0;
        tree->encounterSlot = 0;
        tree->minutesRemaining = 0;
    }

    tree->numShakes = GetShakesFromGroup(tree->encounterGroup);

    SpecialEncounter_SetLastSlatheredTreeId(treeId, treeDat);
}

void HoneyTree_StopShaking(FieldSystem *fieldSystem)
{
    u8 treeId = GetTreeIdFromMapId(fieldSystem->location->mapId);
    GF_ASSERT(treeId != NUM_HONEY_TREES);

    if (fieldSystem->unk_A8->trees[treeId].isShaking) {
        u8 v1;
        MapProp *v2;
        MapPropManager *v3;
        NNSG3dRenderObj *v4;

        v1 = LandDataManager_GetTrackedTargetLoadedMapsQuadrant(fieldSystem->landDataMan);

        LandDataManager_GetLoadedMapPropManager(v1, fieldSystem->landDataMan, &v3);

        v2 = MapPropManager_FindLoadedPropByModelID(v3, honey_tree_nsbmd);
        v4 = MapProp_GetRenderObj(v2);

        if (v2 != NULL) {
            MapPropAnimationManager_RemoveAnimationFromRenderObj(fieldSystem->mapPropAnimMan, v4, honey_tree_nsbmd, fieldSystem->unk_A8->trees[treeId].shakeValue);
        }

        fieldSystem->unk_A8->trees[treeId].isShaking = FALSE;
    }
}

// Group 0 is no encounter. Group 3 is Munchlax.
// For munchlax trees the rates are 9/20/70/1.
// For normal trees the rates are 10/70/20/0.
static void GetTreeEncounterGroup(const BOOL isMunchlaxTree, u8 *group)
{
    int roll = LCRNG_RandMod(100);

    if (isMunchlaxTree) {
        if (roll < 1) {
            *group = TREE_GROUP_C;
        } else if (roll < 10) {
            *group = TREE_GROUP_NO_ENCOUNTER;
        } else if (roll < 30) {
            *group = TREE_GROUP_A;
        } else {
            *group = TREE_GROUP_B;
        }
    } else {
        if (roll < 10) {
            *group = TREE_GROUP_NO_ENCOUNTER;
        } else if (roll < 30) {
            *group = TREE_GROUP_B;
        } else {
            *group = TREE_GROUP_A;
        }
    }
}

// Rates per slot are 40, 20, 20, 10, 5, 5
static void GetTreeEncounterSlot(u8 *slot)
{
    int roll = LCRNG_RandMod(100);

    if (roll < 5) {
        *slot = 5;
    } else if (roll < 10) {
        *slot = 4;
    } else if (roll < 20) {
        *slot = 3;
    } else if (roll < 40) {
        *slot = 2;
    } else if (roll < 60) {
        *slot = 1;
    } else {
        *slot = 0;
    }
}

// Return value is used to read from the encounter table NARC. This is effectively group - 1.
static const int GetEncounterTableFromGroup(const u8 group)
{
    int table;

    if (group == TREE_GROUP_C) {
        table = 2;
    } else if (group == TREE_GROUP_B) {
        table = 1;
    } else {
        table = 0;
    }

    return table;
}

static const int GetShakesFromGroup(const u8 group)
{
    int numShakes;
    int roll = LCRNG_RandMod(100);

    if (group == TREE_GROUP_C) {
        if (roll < 5) {
            numShakes = 2;
        } else if (roll < 6) {
            numShakes = 1;
        } else if (roll < 7) {
            numShakes = 0;
        } else {
            numShakes = 3;
        }
    } else if (group == TREE_GROUP_B) {
        if (roll < 75) {
            numShakes = 2;
        } else if (roll < 95) {
            numShakes = 1;
        } else if (roll < 96) {
            numShakes = 0;
        } else {
            numShakes = 3;
        }
    } else if (group == TREE_GROUP_A) {
        if (roll < 19) {
            numShakes = 2;
        } else if (roll < 79) {
            numShakes = 1;
        } else if (roll < 99) {
            numShakes = 0;
        } else {
            numShakes = 3;
        }
    } else {
        if (roll < 1) {
            numShakes = 2;
        } else if (roll < 19) {
            numShakes = 1;
        } else if (roll < 99) {
            numShakes = 0;
        } else {
            numShakes = 3;
        }
    }

    return numShakes;
}

// Related to the Honey Tree shaking animation. Not sure what exactly this value represents. Number of times the anim repeats, maybe?
static const BOOL GetShakingValue(const int numShakes, u8 *value)
{
    u8 unused;
    BOOL isShaking = TRUE;

    if (numShakes == 3) {
        *value = 2;
    } else if (numShakes == 2) {
        *value = 1;
    } else if (numShakes == 1) {
        *value = 0;
    } else {
        isShaking = FALSE;
    }

    return isShaking;
}

static void DoTreeShakingAnimation(FieldSystem *fieldSystem, MapPropManager *param1, const int param2)
{
    u16 mapId;
    u8 treeId;

    mapId = MapMatrix_GetMapHeaderIDAtIndex(fieldSystem->mapMatrix, param2);
    treeId = GetTreeIdFromMapId(mapId);

    if (treeId != NUM_HONEY_TREES) {
        PlayerHoneyTreeStates *treeDat;
        HoneyTree *tree;
        MapProp *v4;

        treeDat = SpecialEncounter_GetPlayerHoneyTreeStates(SaveData_GetSpecialEncounters(fieldSystem->saveData));
        tree = SpecialEncounter_GetHoneyTree(treeId, treeDat);

        if (SixHoursSinceSlathered(tree->minutesRemaining)) {
            BOOL isShaking;
            u8 shakeValue;

            isShaking = GetShakingValue(tree->numShakes, &shakeValue);

            if (!isShaking) {
                return;
            }

            v4 = MapPropManager_FindLoadedPropByModelID(param1, honey_tree_nsbmd);

            if (v4 != NULL) {
                NNSG3dRenderObj *v7;

                v7 = MapProp_GetRenderObj(v4);

                MapPropAnimationManager_RemoveAnimationFromRenderObj(fieldSystem->mapPropAnimMan, v7, honey_tree_nsbmd, fieldSystem->unk_A8->trees[treeId].shakeValue);

                fieldSystem->unk_A8->trees[treeId].shakeValue = shakeValue;
                fieldSystem->unk_A8->trees[treeId].isShaking = isShaking;

                MapPropAnimationManager_AddAnimationToRenderObj(honey_tree_nsbmd, shakeValue, 1, v7, fieldSystem->mapPropAnimMan);
            }
        }
    }
}

// Returns NUM_HONEY_TREES if map does not have a Honey Tree.
static u8 GetTreeIdFromMapId(const int mapId)
{
    u8 i;
    for (i = 0; i < NUM_HONEY_TREES; i++) {
        if (mapId == sHoneyTreeMapIds[i]) {
            return i;
        }
    }

    return i;
}

static const BOOL SixHoursSinceSlathered(const int minutesLeft)
{
    if ((0 < minutesLeft) && (minutesLeft <= (18 * 60))) {
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL IsMunchlaxTree(const u32 trainerId, const u8 treeId)
{
    u8 i, j;
    u8 munchlaxTreeIds[4];

    munchlaxTreeIds[0] = (trainerId >> 24) & 0xff;
    munchlaxTreeIds[1] = (trainerId >> 16) & 0xff;
    munchlaxTreeIds[2] = (trainerId >> 8) & 0xff;
    munchlaxTreeIds[3] = trainerId & 0xff;

    munchlaxTreeIds[0] %= NUM_HONEY_TREES;
    munchlaxTreeIds[1] %= NUM_HONEY_TREES;
    munchlaxTreeIds[2] %= NUM_HONEY_TREES;
    munchlaxTreeIds[3] %= NUM_HONEY_TREES;

    // Increments tree IDs if they are equal, so the player will always have 4 possible Munchlax trees.
    for (i = 1; i < 4; i++) {
        for (j = 0; j < i; j++) {
            if (munchlaxTreeIds[j] == munchlaxTreeIds[i]) {
                munchlaxTreeIds[i]++;

                if (munchlaxTreeIds[i] >= NUM_HONEY_TREES) {
                    munchlaxTreeIds[i] = 0;
                }
            }
        }
    }

    for (i = 0; i < 4; i++) {
        if (treeId == munchlaxTreeIds[i]) {
            return TRUE;
        }
    }

    return FALSE;
}

int HoneyTree_GetSpecies(FieldSystem *fieldSystem)
{
    u8 treeId = GetTreeIdFromMapId(fieldSystem->location->mapId);
    GF_ASSERT(treeId != NUM_HONEY_TREES);

    int *narcData;
    int species;
    PlayerHoneyTreeStates *treeDat = SpecialEncounter_GetPlayerHoneyTreeStates(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    HoneyTree *tree = SpecialEncounter_GetHoneyTree(treeId, treeDat);

    if ((GAME_VERSION == VERSION_DIAMOND) || (GAME_VERSION == VERSION_PLATINUM)) {
        narcData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, sEncounterTableIndexes_DPt[tree->encounterTableIndex], HEAP_ID_FIELD1);
    } else {
        narcData = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_ARC__ENCDATA_EX, sEncounterTableIndexes_P_Unused[tree->encounterTableIndex], HEAP_ID_FIELD1);
    }

    species = narcData[tree->encounterSlot];
    Heap_Free(narcData);

    return species;
}

void ov5_021F0030(void *param0, const int param1, MapPropManager *const mapPropManager)
{
    FieldSystem *fieldSystem;

    if (param1 < 0) {
        return;
    }

    fieldSystem = (FieldSystem *)param0;
    DoTreeShakingAnimation(fieldSystem, mapPropManager, param1);
}

void HoneyTree_Unslather(FieldSystem *fieldSystem)
{
    PlayerHoneyTreeStates *treeDat;
    HoneyTree *tree;
    u8 treeId = GetTreeIdFromMapId(fieldSystem->location->mapId);
    GF_ASSERT(treeId != NUM_HONEY_TREES);

    fieldSystem->unk_A8->trees[treeId].isShaking = FALSE;

    treeDat = SpecialEncounter_GetPlayerHoneyTreeStates(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    tree = SpecialEncounter_GetHoneyTree(treeId, treeDat);

    tree->minutesRemaining = 0;
}
