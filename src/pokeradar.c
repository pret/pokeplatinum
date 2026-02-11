#include "pokeradar.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"

#include "struct_defs/radar_chain_records.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay006/radar_chain_records.h"

#include "bag.h"
#include "field_task.h"
#include "gfx_box_test.h"
#include "heap.h"
#include "inlines.h"
#include "map_matrix.h"
#include "map_object.h"
#include "map_tile_behavior.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "scrcmd.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "special_encounter.h"
#include "terrain_collision_manager.h"
#include "unk_020553DC.h"

typedef struct {
    int x;
    int z;
    int shakeType;
    BOOL active;
    BOOL continueChain;
    BOOL shiny;
    OverworldAnimManager *unk_18;
    VecFx32 position;
} GrassPatch;

typedef struct RadarChain {
    int shakeType;
    int count;
    int species;
    int level;
    BOOL active;
    BOOL unk_14;
    BOOL unk_18;
    GrassPatch patch[NUM_GRASS_PATCHES];
    GFXTestBox grassPatchVolume;
    u8 unk_D0;
} RadarChain;

static BOOL CheckTileIsGrass(FieldSystem *fieldSystem, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch *patch);
static BOOL PlayerStandingInPatch(const RadarChain *chain, const int x, const int z, u8 *patchMatch);
static void TryReplaceLowestChainRecord(FieldSystem *fieldSystem, RadarChain *chain);
static u8 GetLowestChainRecordSlot(FieldSystem *fieldSystem);
static BOOL CheckPatchContinueChain(const u8 patchRing, const int battleResult);
static BOOL CheckPatchShiny(const int param0);
static void IncWithCap(int *param0);

RadarChain *RadarChain_Init(const enum HeapID heapID)
{
    RadarChain *chain = Heap_Alloc(heapID, sizeof(RadarChain));
    GFXBoxTest_MakeBox(FX32_ONE * 16, FX32_ONE * 8, FX32_ONE * 16, &chain->grassPatchVolume);
    return chain;
}

void RadarChain_Free(RadarChain *chain)
{
    Heap_Free(chain);
}

void RadarChain_Clear(RadarChain *chain)
{
    chain->count = 0;
    chain->shakeType = PATCH_SHAKE_SOFT;
    chain->species = 0;
    chain->level = 0;
    chain->active = FALSE;
    chain->unk_D0 = 0;
    chain->unk_14 = 1;
    chain->unk_18 = 0;
    MI_CpuClear8(chain->patch, sizeof(GrassPatch) * NUM_GRASS_PATCHES);
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        chain->patch[patchRing].active = FALSE;
    }
}

BOOL RadarSpawnPatches(FieldSystem *fieldSystem, const int param1, const int param2, RadarChain *chain)
{
    u8 v1, v2;
    u8 v3;
    u8 v4;
    int v5, v6;
    u8 v7;
    u8 ringTileCount[NUM_GRASS_PATCHES] = { // Number of tiles in each ring of the radar. Lowest being the most outer ring
        32,
        24,
        16,
        8
    };

    const VecFx32 *v8 = PlayerAvatar_PosVector(fieldSystem->playerAvatar);
    v7 = 0;

    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        v3 = LCRNG_RandMod(ringTileCount[patchRing]);
        v1 = 9 - (patchRing * 2);
        v2 = 9 - (patchRing * 2);
        v4 = v3 / v1;

        if (v4 == 0) {
            v5 = patchRing + v3 % v1;
            v6 = patchRing;
        } else if (v4 == 1) {
            v5 = patchRing + v3 % v1;
            v6 = patchRing + v2 - 1;
        } else {
            GF_ASSERT(v3 >= (v1 * 2));
            v4 = v3 - (v1 * 2);
            v6 = patchRing + (v4 / 2) + 1;
            if (v4 % 2 == 0) {
                v5 = patchRing;
            } else {
                v5 = patchRing + v1 - 1;
            }
        }

        BOOL v10 = CheckTileIsGrass(fieldSystem, v8->y, param1, param2, v5, v6, &chain->patch[patchRing]);
        if (v10) {
            v7++;
        }
    }

    if (v7 == 0) {
        RadarChain_Clear(chain);
        Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
    } else {
        chain->active = TRUE;
    }

    return chain->active;
}

void SetupGrassPatches(FieldSystem *fieldSystem, const int param1, RadarChain *chain)
{
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            chain->patch[patchRing].continueChain = CheckPatchContinueChain(patchRing, param1);
            if (!chain->patch[patchRing].continueChain) {
                if (LCRNG_RandMod(100) < 50) { // If the patch will break the chain, it has a 50/50 chance of shaking the other type
                    chain->patch[patchRing].shakeType = PATCH_SHAKE_SOFT;
                } else {
                    chain->patch[patchRing].shakeType = PATCH_SHAKE_HARD;
                }
                chain->patch[patchRing].shiny = FALSE;
            } else {
                chain->patch[patchRing].shakeType = chain->shakeType; // A patch that continues the chain, shakes the type the chain is set to
                chain->patch[patchRing].shiny = CheckPatchShiny(fieldSystem->chain->count);
            }
        }
    }
}

void FieldSystem_CreateShakingRadarPatches(FieldSystem *fieldSystem, RadarChain *chain)
{
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            int v1 = chain->patch[patchRing].x;
            int v2 = chain->patch[patchRing].z;
            if (chain->patch[patchRing].shiny) {
                chain->patch[patchRing].unk_18 = ov5_021F3154(fieldSystem, v1, v2, 2);
            } else {
                if (chain->patch[patchRing].shakeType == PATCH_SHAKE_SOFT) {
                    chain->patch[patchRing].unk_18 = ov5_021F3154(fieldSystem, v1, v2, 0);
                } else {
                    chain->patch[patchRing].unk_18 = ov5_021F3154(fieldSystem, v1, v2, 1);
                }
            }
        } else {
            chain->patch[patchRing].unk_18 = NULL;
        }
    }
}

BOOL sub_02069690(RadarChain *chain)
{
    u8 v0 = 0;

    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].unk_18 != NULL) {
            if (ov5_021F31A8(chain->patch[patchRing].unk_18)) {
                OverworldAnimManager_Finish(chain->patch[patchRing].unk_18);
                chain->patch[patchRing].unk_18 = NULL;
                v0++;
            }
        } else {
            v0++;
        }
    }

    if (v0 >= 4) {
        return TRUE;
    }

    return FALSE;
}

BOOL PokeRadar_ShouldDoRadarEncounter(const int playerX, const int playerZ, FieldSystem *fieldSystem, RadarChain *chain, int *shake, BOOL *preserveChain, BOOL *isShiny)
{
    u8 patchRing;
    *preserveChain = 0;
    *isShiny = 0;

    if (!PlayerStandingInPatch(chain, playerX, playerZ, &patchRing)) {
        return FALSE;
    }

    chain->unk_18 = 1;
    BOOL continueChain = chain->patch[patchRing].continueChain;
    int shakeType = chain->patch[patchRing].shakeType;

    if (chain->unk_14 == 0) {
        if (continueChain) {
            IncWithCap(&(chain->count));
            *shake = shakeType;
            *preserveChain = 1;
            TryReplaceLowestChainRecord(fieldSystem, chain);
            *isShiny = chain->patch[patchRing].shiny;
            return TRUE;
        } else {
            *shake = shakeType;
        }
    } else {
        *shake = shakeType;
        chain->unk_14 = 0;
        chain->unk_D0 = GetLowestChainRecordSlot(fieldSystem);
    }

    chain->shakeType = *shake;
    return TRUE;
}

void SetRadarMon(RadarChain *chain, const int species, const int level)
{
    GF_ASSERT(species != 0);
    chain->species = species;
    chain->level = level;
}

void GetRadarMon(RadarChain *chain, int *species, int *level)
{
    *species = chain->species;
    *level = chain->level;
}

const BOOL sub_02069798(const RadarChain *chain)
{
    return chain->unk_18;
}

void PokeRadar_ClearIfAllOutOfView(FieldSystem *fieldSystem)
{
    BOOL patchInView;
    GrassPatch *patch;
    int patchRing;

    if (!fieldSystem->chain->active || fieldSystem->task != NULL) {
        return;
    }

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        patch = &(fieldSystem->chain->patch[patchRing]);
        patchInView = GFXBoxTest_IsBoxAtPositionInView(&patch->position, &fieldSystem->chain->grassPatchVolume);
        if (patch->active && !patchInView) {
            patch->active = FALSE;
        }
    }

    int inactiveRadarRings = 0;
    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        patch = &(fieldSystem->chain->patch[patchRing]);
        if (patch->active == 0) {
            inactiveRadarRings++;
        }
    }

    if (inactiveRadarRings == 4) {
        RadarChain_Clear(fieldSystem->chain);
        Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
    }
}

BOOL GetRadarChainActive(const RadarChain *chain)
{
    return chain->active;
}

static BOOL CheckTileIsGrass(FieldSystem *fieldSystem, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch *patch)
{
    int v0 = (param2 - (9 / 2)) + param4;
    int v1 = (param3 - (9 / 2)) + param5;
    patch->x = v0;
    patch->z = v1;
    u8 v2 = TerrainCollisionManager_GetTileBehavior(fieldSystem, v0, v1);

    if (TileBehavior_IsTallGrass(v2)) {
        u8 v3;
        patch->position.x = FX32_ONE * 16 * v0;
        patch->position.z = FX32_ONE * 16 * v1;
        patch->position.y = TerrainCollisionManager_GetHeight(fieldSystem, 0, patch->position.x, patch->position.z, &v3);

        if (param1 != patch->position.y) {
            patch->active = FALSE;
            return FALSE;
        }

        int v5 = v0 / 32;
        int v6 = v1 / 32;
        int v4 = MapMatrix_GetMapHeaderIDAtCoords(fieldSystem->mapMatrix, v5, v6);
        if (fieldSystem->location->mapId != v4) {
            patch->active = FALSE;
            return FALSE;
        }
        patch->active = TRUE;
        return TRUE;
    } else {
        patch->active = FALSE;
        return FALSE;
    }
}

// Checks if the player is standing in any of the shaking patches.
static BOOL PlayerStandingInPatch(const RadarChain *chain, const int x, const int z, u8 *patchMatch)
{
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            if ((chain->patch[patchRing].x == x) && (chain->patch[patchRing].z == z)) {
                *patchMatch = patchRing;
                return TRUE;
            }
        }
    }
    return FALSE;
}

static void TryReplaceLowestChainRecord(FieldSystem *fieldSystem, RadarChain *chain)
{
    RadarChainRecords *chainRecordData = SpecialEncounter_GetRadarChainRecords(SaveData_GetSpecialEncounters(fieldSystem->saveData));
    int lowestRecord = chainRecordData->records[chain->unk_D0].chainCount;

    if (lowestRecord < chain->count) {
        chainRecordData->records[chain->unk_D0].chainCount = chain->count;
        chainRecordData->records[chain->unk_D0].species = chain->species;
        RadarChainRecords_SortSavedRecords(chainRecordData);
        if (chainRecordData->records[chain->unk_D0].chainCount <= chain->count) {
            for (int v2 = 0; v2 < NUM_RADAR_RECORDS; v2++) {
                if (chainRecordData->records[((NUM_RADAR_RECORDS - 1) - v2)].chainCount == chain->count) {
                    chain->unk_D0 = ((NUM_RADAR_RECORDS - 1) - v2);
                    return;
                }
            }
            GF_ASSERT(FALSE);
        }
    }
}

// Returns the index of the record with the lowest chain, or the first empty slot if there is one.
static u8 GetLowestChainRecordSlot(FieldSystem *fieldSystem)
{
    u8 slotToReplace;
    BOOL lowerChain;
    RadarChainRecords *recordsData = SpecialEncounter_GetRadarChainRecords(SaveData_GetSpecialEncounters(fieldSystem->saveData));

    for (slotToReplace = 0; slotToReplace < NUM_RADAR_RECORDS; slotToReplace++) {
        if (recordsData->records[slotToReplace].species == 0) {
            return slotToReplace;
        }
    }

    lowerChain = recordsData->records[0].chainCount < recordsData->records[1].chainCount ? 1 : 0;
    if (lowerChain) {
        slotToReplace = 0;
    } else {
        slotToReplace = 1;
    }

    lowerChain = recordsData->records[slotToReplace].chainCount < recordsData->records[2].chainCount ? 1 : 0;
    if (!lowerChain) {
        slotToReplace = 2;
    }

    return slotToReplace;
}

static BOOL CheckPatchContinueChain(const u8 patchRing, const int battleResult)
{
    u8 *rates;
    u8 ratesNormal[4] = { 88, 68, 48, 28 };
    u8 ratesBoosted[4] = { 98, 78, 58, 38 };

    if (battleResult == BATTLE_RESULT_WIN) { // If the battle resulted in fainting the mon, use the regular rates
        rates = ratesNormal;
    } else if (battleResult == BATTLE_RESULT_CAPTURED_MON) { // If the battle resulted in a capture, use the boosted rates
        rates = ratesBoosted;
    }

    if (LCRNG_RandMod(100) < rates[patchRing]) { // Check if random number falls within the rates
        return TRUE; // Patch will continue the chain
    } else {
        return FALSE; // Patch will break the chain
    }
}

BOOL RefreshRadarChain(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    int *v1 = FieldTask_GetEnv(taskMan);

    switch (*v1) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        u8 *v2 = SpecialEncounter_GetRadarCharge(SaveData_GetSpecialEncounters(fieldSystem->saveData));

        if (*v2 < RADAR_BATTERY_STEPS) {
            ScriptManager_Start(taskMan, SCRIPT_ID(POKE_RADAR, 0), NULL, NULL);
            *(u16 *)FieldSystem_GetScriptMemberPtr(fieldSystem, SCRIPT_DATA_PARAMETER_0) = RADAR_BATTERY_STEPS - (*v2);
            *v1 = 4;
        } else {
            *v2 = 0;
            int v3 = Player_GetXPos(fieldSystem->playerAvatar);
            int v4 = Player_GetZPos(fieldSystem->playerAvatar);
            RadarSpawnPatches(fieldSystem, v3, v4, fieldSystem->chain);
            if (fieldSystem->chain->active) {
                SetupGrassPatches(fieldSystem, 0x1, fieldSystem->chain);
                FieldSystem_CreateShakingRadarPatches(fieldSystem, fieldSystem->chain);
                *v1 = 1;
            } else {
                *v1 = 3;
            }
        }
        break;
    case 1:
        Sound_PlayBGM(SEQ_POKERADAR);
        *v1 = 2;
        break;
    case 2:
        if (sub_02069690(fieldSystem->chain)) {
            *v1 = 4;
        }
        break;
    case 4:
        Heap_Free(v1);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
        break;
    case 3:
        ScriptManager_Start(taskMan, SCRIPT_ID(POKE_RADAR, 1), NULL, NULL);
        *v1 = 4;
        break;
    }

    return FALSE;
}

static BOOL CheckPatchShiny(const int chainCount)
{
    if (!chainCount) {
        return FALSE;
    }

    int rate = 8200 - (chainCount * 200);
    if (rate < 200) {
        rate = 200;
    }

    if (!LCRNG_RandMod(rate)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void RadarChain_Increment(FieldSystem *fieldSystem)
{
    IncWithCap(&(fieldSystem->chain->count));
    TryReplaceLowestChainRecord(fieldSystem, fieldSystem->chain);
}

int GetChainCount(FieldSystem *fieldSystem)
{
    return fieldSystem->chain->count;
}

void RadarChargeStep(FieldSystem *fieldSystem)
{
    u8 *v0;

    if (Bag_CanRemoveItem(SaveData_GetBag(fieldSystem->saveData), ITEM_POKE_RADAR, 1, HEAP_ID_FIELD1) == TRUE) {
        v0 = SpecialEncounter_GetRadarCharge(SaveData_GetSpecialEncounters(fieldSystem->saveData));
        if ((*v0) < RADAR_BATTERY_STEPS) {
            (*v0)++;
        }
    }
}

static void IncWithCap(int *param0)
{
    (*param0)++;
    if ((*param0) > 999) {
        (*param0) = 999;
    }
}
