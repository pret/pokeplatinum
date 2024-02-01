#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_020508D4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0201CFEC.h"
#include "struct_defs/struct_0203CDB0.h"
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
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "pokeradar.h"
#include "unk_020711EC.h"
#include "unk_0207D3B8.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay006/ov6_022430C4.h"

#define NUM_GRASS_PATCHES 4
#define RADAR_BATTERY_STEPS 50

typedef struct {
    int unk_00;
    int unk_04;
    int shakeType;
    BOOL active;
    BOOL continueChain;
    BOOL shiny;
    UnkStruct_ov101_021D5D90 * unk_18;
    VecFx32 position;
} GrassPatch;

typedef struct RadarChain_t {
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

static BOOL CheckTileIsGrass(UnkStruct_0203CDB0 * param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch * patch);
static BOOL sub_020698AC(const RadarChain * chain, const int param1, const int param2, u8 * param3);
static void sub_020698E4(UnkStruct_0203CDB0 * param0, RadarChain * chain);
static u8 sub_0206994C(UnkStruct_0203CDB0 * param0);
static BOOL CheckPatchContinueChain(const u8 patchRing, const int battleResult);
static BOOL CheckPatchShiny(const int param0);
static void IncWithCap(int * param0);

RadarChain * CreateRadarChain (const int param0) {
    RadarChain * chain;

    chain = Heap_AllocFromHeap(param0, sizeof(RadarChain));

    sub_0201CFEC(FX32_ONE * 16, FX32_ONE * 8, FX32_ONE * 16, &chain->unk_BC);
    return chain;
}

void FreeRadarChain (RadarChain * chain) {
    Heap_FreeToHeap(chain);
}

void ClearRadarChain (RadarChain * chain) {
    u8 patchRing;

    chain->count = 0;
    chain->shakeType = 0;
    chain->species = 0;
    chain->level = 0;
    chain->active = FALSE;
    chain->unk_D0 = 0;
    chain->unk_14 = 1;
    chain->unk_18 = 0;

    MI_CpuClear8(&(chain->patch[0]), sizeof(GrassPatch) * 4);

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        chain->patch[patchRing].active = FALSE;
    }
}

BOOL RadarSpawnPatches (UnkStruct_0203CDB0 * param0, const int param1, const int param2, RadarChain * chain) {
    u8 patchRing;
    u8 v1, v2;
    u8 v3;
    u8 v4;
    int v5, v6;
    u8 v7;
    const VecFx32 * v8;
    u8 ringTileCount[4] = {  // Number of tiles in each ring of the radar. Lowest being the most outer ring
        32, 24, 16, 8
    };

    v8 = sub_0205EAFC(param0->unk_3C);

    v7 = 0;

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        BOOL v10;

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

        v10 = CheckTileIsGrass(param0, v8->y, param1, param2, v5, v6, &chain->patch[patchRing]);

        if (v10) {
            v7++;
        }
    }

    if (v7 == 0) {
        ClearRadarChain(chain);

        sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
    } else {
        chain->active = TRUE;
    }

    return chain->active;
}

void SetupGrassPatches (UnkStruct_0203CDB0 * param0, const int param1, RadarChain * chain) {
    u8 patchRing;

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            chain->patch[patchRing].continueChain = CheckPatchContinueChain(patchRing, param1);

            if (!chain->patch[patchRing].continueChain) {
                if (inline_020564D0(100) < 50) {  // If the patch will break the chain, it has a 50/50 chance of shaking the other type
                    chain->patch[patchRing].shakeType = 0;
                } else {
                    chain->patch[patchRing].shakeType = 1;
                }

                chain->patch[patchRing].shiny = FALSE;
            } else {
                chain->patch[patchRing].shakeType = chain->shakeType;  // A patch that continues the chain, shakes the type the chain is set to

                chain->patch[patchRing].shiny = CheckPatchShiny(param0->chain->count);
            }
        }
    }
}

void sub_02069638 (UnkStruct_0203CDB0 * param0, RadarChain * chain)
{
    u8 patchRing;

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            int v1 = chain->patch[patchRing].unk_00;
            int v2 = chain->patch[patchRing].unk_04;

            if (chain->patch[patchRing].shiny) {
                chain->patch[patchRing].unk_18 = ov5_021F3154(param0, v1, v2, 2);
            } else {
                if (chain->patch[patchRing].shakeType == 0) {
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

BOOL sub_02069690 (RadarChain * chain)
{
    u8 v0;
    u8 patchRing;

    v0 = 0;

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
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
        return 1;
    }

    return 0;
}

BOOL sub_020696DC (const int param0, const int param1, UnkStruct_0203CDB0 * param2, RadarChain * chain, int * param4, BOOL * param5, BOOL * param6)
{
    u8 patchRing;
    BOOL continueChain;
    int shakeType;

    *param5 = 0;
    *param6 = 0;

    if (!sub_020698AC(chain, param0, param1, &patchRing)) {
        return 0;
    }

    chain->unk_18 = 1;

    continueChain = chain->patch[patchRing].continueChain;
    shakeType = chain->patch[patchRing].shakeType;

    if (chain->unk_14 == 0) {
        if (continueChain) {
            IncWithCap(&(chain->count));

            *param4 = shakeType;
            *param5 = 1;

            sub_020698E4(param2, chain);

            (*param6) = chain->patch[patchRing].shiny;

            return 1;
        } else {
            *param4 = shakeType;
        }
    } else {
        *param4 = shakeType;
        chain->unk_14 = 0;

        chain->unk_D0 = sub_0206994C(param2);
    }

    chain->shakeType = *param4;

    return 1;
}

void SetRadarMon (RadarChain * chain, const int species, const int level) {
    GF_ASSERT(species != 0);
    chain->species = species;
    chain->level = level;
}

void GetRadarMon (RadarChain * chain, int * species, int * level) {
    (*species) = chain->species;
    (*level) = chain->level;
}

const BOOL sub_02069798 (const RadarChain * chain)
{
    return chain->unk_18;
}

void sub_0206979C (UnkStruct_0203CDB0 * param0)
{
    BOOL v0;
    GrassPatch * patch;
    int patchRing;

    if ((!param0->chain->active) || (param0->unk_10 != NULL)) {
        return;
    }

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        patch = &(param0->chain->patch[patchRing]);
        v0 = sub_0201CF7C(&(patch->position), &(param0->chain->unk_BC));

        if ((patch->active) && (!v0)) {
            patch->active = FALSE;
        }
    }

    {
        int v3;

        v3 = 0;

        for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
            patch = &(param0->chain->patch[patchRing]);

            if (patch->active == 0) {
                v3++;
            }
        }

        if (v3 == 4) {
            ClearRadarChain(param0->chain);

            sub_02055554(param0, sub_02055428(param0, param0->unk_1C->unk_00), 1);
        }
    }
}

BOOL GetRadarChainActive (const RadarChain * chain) {
    return chain->active;
}

static BOOL CheckTileIsGrass (UnkStruct_0203CDB0 * param0, const fx32 param1, const int param2, const int param3, const u8 param4, const u8 param5, GrassPatch * patch) {
    int v0, v1;
    u8 v2;

    v0 = (param2 - (9 / 2)) + param4;
    v1 = (param3 - (9 / 2)) + param5;

    patch->unk_00 = v0;
    patch->unk_04 = v1;

    v2 = sub_02054F94(param0, v0, v1);

    if (sub_0205DAC8(v2)) {
        u8 v3;

        patch->position.x = FX32_ONE * 16 * v0;
        patch->position.z = FX32_ONE * 16 * v1;
        patch->position.y = sub_02054FBC(param0, 0, patch->position.x, patch->position.z, &v3);

        if (param1 != patch->position.y) {
            patch->active = FALSE;
            return FALSE;
        }

        {
            int v4;
            int v5, v6;

            v5 = v0 / 32;
            v6 = v1 / 32;
            v4 = sub_02039E30(param0->unk_2C, v5, v6);

            if (param0->unk_1C->unk_00 != v4) {
                patch->active = FALSE;
                return 0;
            }
        }

        patch->active = TRUE;

        return TRUE;
    } else {
        patch->active = FALSE;
        return FALSE;
    }
}

static BOOL sub_020698AC (const RadarChain * chain, const int param1, const int param2, u8 * param3)
{
    u8 patchRing;

    for (patchRing = 0; patchRing < NUM_GRASS_PATCHES; patchRing++) {
        if (chain->patch[patchRing].active) {
            if ((chain->patch[patchRing].unk_00 == param1) && (chain->patch[patchRing].unk_04 == param2)) {
                *param3 = patchRing;
                return 1;
            }
        }
    }

    return 0;
}

static void sub_020698E4 (UnkStruct_0203CDB0 * param0, RadarChain * chain)
{
    UnkStruct_020698E4 * v0;
    int v1;
    int v2;

    v0 = sub_0202D830(sub_0202D834(param0->unk_0C));
    v1 = v0->unk_00[chain->unk_D0].unk_02;

    if (v1 < chain->count) {
        v0->unk_00[chain->unk_D0].unk_02 = chain->count;
        v0->unk_00[chain->unk_D0].unk_00 = chain->species;

        ov6_02243160(v0);

        if (v0->unk_00[chain->unk_D0].unk_02 <= chain->count) {
            for (v2 = 0; v2 < 3; v2++) {
                if (v0->unk_00[(2 - v2)].unk_02 == chain->count) {
                    chain->unk_D0 = (2 - v2);
                    return;
                }
            }

            GF_ASSERT(0);
        }
    }
}

static u8 sub_0206994C (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020698E4 * v0;
    u8 v1;
    BOOL v2;

    v0 = sub_0202D830(sub_0202D834(param0->unk_0C));

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
    u8 * rates;
    u8 ratesNormal[4] = {88, 68, 48, 28};
    u8 ratesBoosted[4] = {98, 78, 58, 38};

    if (battleResult == 0x1) {  // If the battle resulted in fainting the mon, use the regular rates
        rates = ratesNormal;
    } else if (battleResult == 0x4) {  // If the battle resulted in a capture, use the boosted rates
        rates = ratesBoosted;
    }

    if (inline_020564D0(100) < rates[patchRing]) {  // Check if random number falls within the rates
        return TRUE;  // Patch will continue the chain
    } else {
        return FALSE;  // Patch will break the chain
    }
}

BOOL RefreshRadarChain (UnkStruct_020508D4 * param0) {
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    int * v1 = sub_02050A64(param0);

    switch (*v1) {
    case 0:
    {
        u8 * v2;

        sub_02062C48(v0->unk_38);

        v2 = sub_0202D9C4(sub_0202D834(v0->unk_0C));

        if ((*v2) < RADAR_BATTERY_STEPS) {
            sub_0203E8E0(param0, 8970, NULL, NULL);
            *(u16 *)(sub_0203F098(v0, 41)) = RADAR_BATTERY_STEPS - (*v2);
            (*v1) = 4;
        } else {
            int v3, v4;

            (*v2) = 0;

            v3 = sub_0205EABC(v0->unk_3C);
            v4 = sub_0205EAC8(v0->unk_3C);

            RadarSpawnPatches(v0, v3, v4, v0->chain);

            if (v0->chain->active) {
                SetupGrassPatches(v0, 0x1, v0->chain);

                sub_02069638(v0, v0->chain);
                (*v1) = 1;
            } else {
                (*v1) = 3;
            }
        }
    }
    break;
    case 1:
        Sound_PlayBGM(1150);
        (*v1) = 2;
        break;
    case 2:
        if (sub_02069690(v0->chain)) {
            (*v1) = 4;
        }
        break;
    case 4:
        Heap_FreeToHeap(v1);
        sub_02062C78(v0->unk_38);
        return 1;
        break;
    case 3:
        sub_0203E8E0(param0, 8971, NULL, NULL);
        (*v1) = 4;
        break;
    }

    return 0;
}

static BOOL CheckPatchShiny (const int chianCount) {
    int rate;

    if (chianCount == 0) {
        return FALSE;
    }

    rate = 8200 - (chianCount * 200);

    if (rate < 200) {
        rate = 200;
    }

    if (inline_020564D0(rate) == 0) {
        return TRUE;
    } else {
        return FALSE;
    }
}

void sub_02069B74 (UnkStruct_0203CDB0 * param0)
{
    IncWithCap(&(param0->chain->count));
    sub_020698E4(param0, param0->chain);
}

int GetChainCount (UnkStruct_0203CDB0 * param0) {
    return param0->chain->count;
}

void RadarChargeStep (UnkStruct_0203CDB0 * param0) {
    u8 * v0;

    if (sub_0207D688(sub_0207D990(param0->unk_0C), 431, 1, 4) == 1) {
        v0 = sub_0202D9C4(sub_0202D834(param0->unk_0C));

        if ((*v0) < RADAR_BATTERY_STEPS) {
            (*v0)++;
        }
    }
}

static void IncWithCap (int * param0) {
    (*param0)++;

    if ((*param0) > 999) {
        (*param0) = 999;
    }
}
