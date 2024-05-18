#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0201CFEC.h"
#include "field/field_system.h"
#include "struct_defs/struct_020698E4.h"

#include "unk_02005474.h"
#include "heap.h"
#include "unk_0201CED8.h"
#include "unk_0202D7A8.h"
#include "unk_02039C80.h"
#include "unk_0203E880.h"
#include "unk_020508D4.h"
#include "unk_02054D00.h"
#include "unk_020553DC.h"
#include "unk_0205DAC8.h"
#include "player_avatar.h"
#include "map_object.h"
#include "pokeradar.h"
#include "unk_020711EC.h"
#include "unk_0207D3B8.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay006/ov6_022430C4.h"

#include "constants/battle.h"
#include "constants/sdat.h"

typedef struct {
    int unk_00;
    int unk_04;
    int shakeType;
    BOOL active;
    BOOL continueChain;
    BOOL shiny;
    UnkStruct_ov101_021D5D90 *unk_18;
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
    UnkStruct_0201CFEC unk_BC;
    u8 unk_D0;
} RadarChain;

static BOOL CheckTileIsGrass(FieldSystem *param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch *patch);
static BOOL sub_020698AC(const RadarChain *chain, const int param1, const int param2, u8 *param3);
static void sub_020698E4(FieldSystem *param0, RadarChain *chain);
static u8 sub_0206994C(FieldSystem *param0);
static BOOL CheckPatchContinueChain(const u8 patchRing, const int battleResult);
static BOOL CheckPatchShiny(const int param0);
static void IncWithCap(int *param0);

RadarChain *RadarChain_Init (const int heapID) {
    RadarChain *chain = Heap_AllocFromHeap(heapID, sizeof(RadarChain));
    sub_0201CFEC(FX32_ONE * 16, FX32_ONE * 8, FX32_ONE * 16, &chain->unk_BC);
    return chain;
}

void RadarChain_Free (RadarChain *chain) {
    Heap_FreeToHeap(chain);
}

void RadarChain_Clear (RadarChain *chain) {
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

BOOL RadarSpawnPatches (FieldSystem *param0, const int param1, const int param2, RadarChain *chain) {
    u8 v1, v2;
    u8 v3;
    u8 v4;
    int v5, v6;
    u8 v7;
    u8 ringTileCount[NUM_GRASS_PATCHES] = {  // Number of tiles in each ring of the radar. Lowest being the most outer ring
        32, 24, 16, 8
    };

    const VecFx32 *v8 = PlayerAvatar_PosVector(param0->playerAvatar);
    v7 = 0;

    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        v3 = inline_020564D0(ringTileCount[patchRing]);
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

        BOOL v10 = CheckTileIsGrass(param0, v8->y, param1, param2, v5, v6, &chain->patch[patchRing]);
        if (v10) {
            v7++;
        }
    }

    if (v7 == 0) {
        RadarChain_Clear(chain);
        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
    } else {
        chain->active = TRUE;
    }

    return chain->active;
}

void SetupGrassPatches (FieldSystem *param0, const int param1, RadarChain *chain) {
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            chain->patch[patchRing].continueChain = CheckPatchContinueChain(patchRing, param1);
            if (!chain->patch[patchRing].continueChain) {
                if (inline_020564D0(100) < 50) {  // If the patch will break the chain, it has a 50/50 chance of shaking the other type
                    chain->patch[patchRing].shakeType = PATCH_SHAKE_SOFT;
                } else {
                    chain->patch[patchRing].shakeType = PATCH_SHAKE_HARD;
                }
                chain->patch[patchRing].shiny = FALSE;
            } else {
                chain->patch[patchRing].shakeType = chain->shakeType;  // A patch that continues the chain, shakes the type the chain is set to
                chain->patch[patchRing].shiny = CheckPatchShiny(param0->chain->count);
            }
        }
    }
}

void sub_02069638 (FieldSystem *param0, RadarChain *chain) {
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            int v1 = chain->patch[patchRing].unk_00;
            int v2 = chain->patch[patchRing].unk_04;
            if (chain->patch[patchRing].shiny) {
                chain->patch[patchRing].unk_18 = ov5_021F3154(param0, v1, v2, 2);
            } else {
                if (chain->patch[patchRing].shakeType == PATCH_SHAKE_SOFT) {
                    chain->patch[patchRing].unk_18 = ov5_021F3154(param0, v1, v2, 0);
                } else {
                    chain->patch[patchRing].unk_18 = ov5_021F3154(param0, v1, v2, 1);
                }
            }
        } else {
            chain->patch[patchRing].unk_18 = NULL;
        }
    }
}

BOOL sub_02069690 (RadarChain *chain) {
    u8 v0 = 0;

    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].unk_18 != NULL) {
            if (ov5_021F31A8(chain->patch[patchRing].unk_18)) {
                sub_0207136C(chain->patch[patchRing].unk_18);
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

BOOL sub_020696DC (const int param0, const int param1, FieldSystem *param2, RadarChain *chain, int *param4, BOOL *param5, BOOL *param6) {
    u8 patchRing;
    *param5 = 0;
    *param6 = 0;

    if (!sub_020698AC(chain, param0, param1, &patchRing)) {
        return FALSE;
    }

    chain->unk_18 = 1;
    BOOL continueChain = chain->patch[patchRing].continueChain;
    int shakeType = chain->patch[patchRing].shakeType;

    if (chain->unk_14 == 0) {
        if (continueChain) {
            IncWithCap(&(chain->count));
            *param4 = shakeType;
            *param5 = 1;
            sub_020698E4(param2, chain);
            *param6 = chain->patch[patchRing].shiny;
            return TRUE;
        } else {
            *param4 = shakeType;
        }
    } else {
        *param4 = shakeType;
        chain->unk_14 = 0;
        chain->unk_D0 = sub_0206994C(param2);
    }

    chain->shakeType = *param4;
    return TRUE;
}

void SetRadarMon (RadarChain *chain, const int species, const int level) {
    GF_ASSERT(species != 0);
    chain->species = species;
    chain->level = level;
}

void GetRadarMon (RadarChain *chain, int *species, int *level) {
    *species = chain->species;
    *level = chain->level;
}

const BOOL sub_02069798 (const RadarChain *chain) {
    return chain->unk_18;
}

void sub_0206979C (FieldSystem *param0) {
    BOOL v0;
    GrassPatch *patch;
    int patchRing;

    if (!param0->chain->active || param0->unk_10 != NULL) {
        return;
    }

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        patch = &(param0->chain->patch[patchRing]);
        v0 = sub_0201CF7C(&(patch->position), &(param0->chain->unk_BC));
        if (patch->active && !v0) {
            patch->active = FALSE;
        }
    }

    int v3 = 0;
    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        patch = &(param0->chain->patch[patchRing]);
        if (patch->active == 0) {
            v3++;
        }
    }

    if (v3 == 4) {
        RadarChain_Clear(param0->chain);
        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
    }
}

BOOL GetRadarChainActive (const RadarChain *chain) {
    return chain->active;
}

static BOOL CheckTileIsGrass (FieldSystem *param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch *patch) {
    int v0 = (param2 - (9 / 2)) + param4;
    int v1 = (param3 - (9 / 2)) + param5;
    patch->unk_00 = v0;
    patch->unk_04 = v1;
    u8 v2 = sub_02054F94(param0, v0, v1);

    if (sub_0205DAC8(v2)) {
        u8 v3;
        patch->position.x = FX32_ONE * 16 * v0;
        patch->position.z = FX32_ONE * 16 * v1;
        patch->position.y = sub_02054FBC(param0, 0, patch->position.x, patch->position.z, &v3);

        if (param1 != patch->position.y) {
            patch->active = FALSE;
            return FALSE;
        }

        int v5 = v0 / 32;
        int v6 = v1 / 32;
        int v4 = sub_02039E30(param0->unk_2C, v5, v6);
        if (param0->unk_1C->unk_00 != v4) {
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

static BOOL sub_020698AC (const RadarChain *chain, const int param1, const int param2, u8 *param3) {
    for (u8 patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            if ((chain->patch[patchRing].unk_00 == param1) && (chain->patch[patchRing].unk_04 == param2)) {
                *param3 = patchRing;
                return TRUE;
            }
        }
    }
    return FALSE;
}

static void sub_020698E4 (FieldSystem *param0, RadarChain *chain) {
    UnkStruct_020698E4 *v0 = sub_0202D830(sub_0202D834(param0->saveData));
    int v1 = v0->unk_00[chain->unk_D0].unk_02;

    if (v1 < chain->count) {
        v0->unk_00[chain->unk_D0].unk_02 = chain->count;
        v0->unk_00[chain->unk_D0].unk_00 = chain->species;
        ov6_02243160(v0);
        if (v0->unk_00[chain->unk_D0].unk_02 <= chain->count) {
            for (int v2 = 0; v2 < 3; v2++) {
                if (v0->unk_00[(2 - v2)].unk_02 == chain->count) {
                    chain->unk_D0 = (2 - v2);
                    return;
                }
            }
            GF_ASSERT(FALSE);
        }
    }
}

static u8 sub_0206994C (FieldSystem *fieldSystem) {
    u8 v1;
    BOOL v2;
    UnkStruct_020698E4 *v0 = sub_0202D830(sub_0202D834(fieldSystem->saveData));

    for (v1 = 0; v1 < 3; v1++) {
        if (v0->unk_00[v1].unk_00 == 0) {
            return v1;
        }
    }

    (v0->unk_00[0].unk_02 < v0->unk_00[1].unk_02) ? (v2 = 1) : (v2 = 0);
    if (v2) {
        v1 = 0;
    } else {
        v1 = 1;
    }

    (v0->unk_00[v1].unk_02 < v0->unk_00[2].unk_02) ? (v2 = 1) : (v2 = 0);
    if (!v2) {
        v1 = 2;
    }

    return v1;
}

static BOOL CheckPatchContinueChain (const u8 patchRing, const int battleResult) {
    u8 *rates;
    u8 ratesNormal[4] = {88, 68, 48, 28};
    u8 ratesBoosted[4] = {98, 78, 58, 38};

    if (battleResult == BATTLE_RESULT_WIN) {  // If the battle resulted in fainting the mon, use the regular rates
        rates = ratesNormal;
    } else if (battleResult == BATTLE_RESULT_CAPTURED_MON) {  // If the battle resulted in a capture, use the boosted rates
        rates = ratesBoosted;
    }

    if (inline_020564D0(100) < rates[patchRing]) {  // Check if random number falls within the rates
        return TRUE;  // Patch will continue the chain
    } else {
        return FALSE;  // Patch will break the chain
    }
}

BOOL RefreshRadarChain (TaskManager *taskMan) {
    FieldSystem *fieldSystem = TaskManager_FieldSystem(taskMan);
    int *v1 = TaskManager_Environment(taskMan);

    switch (*v1) {
    case 0:
        MapObjectMan_PauseAllMovement(fieldSystem->mapObjMan);
        u8 *v2 = sub_0202D9C4(sub_0202D834(fieldSystem->saveData));

        if (*v2 < RADAR_BATTERY_STEPS) {
            sub_0203E8E0(taskMan, 8970, NULL, NULL);
            *(u16 *)(sub_0203F098(fieldSystem, 41)) = RADAR_BATTERY_STEPS - (*v2);
            *v1 = 4;
        } else {
            *v2 = 0;
            int v3 = Player_XPos(fieldSystem->playerAvatar);
            int v4 = Player_ZPos(fieldSystem->playerAvatar);
            RadarSpawnPatches(fieldSystem, v3, v4, fieldSystem->chain);
            if (fieldSystem->chain->active) {
                SetupGrassPatches(fieldSystem, 0x1, fieldSystem->chain);
                sub_02069638(fieldSystem, fieldSystem->chain);
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
        Heap_FreeToHeap(v1);
        MapObjectMan_UnpauseAllMovement(fieldSystem->mapObjMan);
        return TRUE;
        break;
    case 3:
        sub_0203E8E0(taskMan, 8971, NULL, NULL);
        *v1 = 4;
        break;
    }

    return FALSE;
}

static BOOL CheckPatchShiny (const int chainCount) {
    if (!chainCount) {
        return FALSE;
    }

    int rate = 8200 - (chainCount * 200);
    if (rate < 200) {
        rate = 200;
    }

    if (!inline_020564D0(rate)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_02069B74 (FieldSystem *fieldSystem) {
    IncWithCap(&(fieldSystem->chain->count));
    sub_020698E4(fieldSystem, fieldSystem->chain);
}

int GetChainCount (FieldSystem *fieldSystem) {
    return fieldSystem->chain->count;
}

void RadarChargeStep (FieldSystem *fieldSystem) {
    u8 *v0;

    if (sub_0207D688(sub_0207D990(fieldSystem->saveData), 431, 1, 4) == 1) {
        v0 = sub_0202D9C4(sub_0202D834(fieldSystem->saveData));
        if ((*v0) < RADAR_BATTERY_STEPS) {
            (*v0)++;
        }
    }
}

static void IncWithCap (int *param0) {
    (*param0)++;
    if ((*param0) > 999) {
        (*param0) = 999;
    }
}
