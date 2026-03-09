#include "battle_anim/ov12_02235E94.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/seal_case.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/battle_particle_util.h"
#include "battle_anim/ov12_02237E54.h"
#include "battle_anim/struct_ov12_02223764.h"
#include "battle_anim/struct_ov12_02236030.h"
#include "battle_anim/struct_ov12_02236690.h"
#include "battle_anim/struct_ov12_02237728.h"

#include "heap.h"
#include "math_util.h"
#include "narc.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "sound_playback.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0202C9F4.h"
#include "unk_02097B18.h"

#include "res/graphics/battle/sprites.naix"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BOOL *unk_0C;
    ParticleSystem *unk_10;
    BallSeal *unk_14;
    SPLEmitterCallback unk_18;
} UnkStruct_02236430;

typedef struct UnkStruct_ov12_02235FE0_t {
    enum HeapID heapID;
    UnkStruct_ov12_02236030 unk_04;
    int unk_10;
    ParticleSystem *unk_14[9];
    BallSeal *unk_38[9];
    BOOL unk_5C[9];
    SPLEmitter *unk_80;
    SysTask *unk_84;
    BOOL unk_88;
    NARC *unk_8C;
    int unk_90;
    int unk_94;
    int unk_98;
    int unk_9C;
    BallCapsule unk_A0;
} UnkStruct_ov12_02235FE0;

typedef struct UnkStruct_ov12_02236648_t {
    UnkStruct_ov12_02236690 unk_00;
    SPLEmitter *unk_14;
    ParticleSystem *unk_18;
    int unk_1C;
    int unk_20;
} UnkStruct_ov12_02236648;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov12_02237C54_sub1;

typedef struct BallRotation {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    BOOL unk_1C;
    u8 unk_20;
    u8 unk_21;
    s8 unk_22;
    BOOL unk_24;
    BOOL unk_28;
    SpriteManager *unk_2C;
    ManagedSprite *unk_30;
    ValueLerpContext unk_34;
    XYTransformContext unk_48[2];
    BallThrow unk_90;
    UnkStruct_ov12_02237C54_sub1 unk_B8;
    SysTask *unk_CC;
    UnkStruct_ov12_02236648 *unk_D0;
    PaletteFadeContext *unk_D4;
    UnkStruct_ov12_02223764 *unk_D8;
    int unk_DC;
} BallRotation;

static void ov12_022363CC(SysTask *param0, void *param1);
static void ov12_0223646C(UnkStruct_ov12_02235FE0 *param0, SPLEmitterCallback param1);
static void ov12_02236598(SPLEmitter *param0);
static void ov12_022365D4(SPLEmitter *param0);
static void ov12_02237C54(BallRotation *param0);
static void ov12_02237D8C(BallRotation *param0);
static void ov12_022378A0(BallRotation *param0);
static void ov12_02237B14(BallRotation *param0, s16 *param1, s16 *param2);
static BOOL ov12_02236F24(BallRotation *param0);
static BOOL ov12_022371E4(BallRotation *param0);
static BOOL ov12_02237608(BallRotation *param0);
static BOOL ov12_02236F10(BallRotation *param0);
static BOOL ov12_02237694(BallRotation *param0);
static BOOL ov12_02237474(BallRotation *param0);

// clang-format off
static const int sBallThrowGraphics[][4] = {
    { ball_throws_master_ball_NCGR_lz,  ball_throws_master_ball_NCLR,  ball_throws_shared_cell_NCER_lz_2,  ball_throws_shared_anim_NANR_lz_1          },
    { ball_throws_ultra_ball_NCGR_lz,   ball_throws_ultra_ball_NCLR,   ball_throws_shared_cell_NCER_lz_3,  ball_throws_shared_anim_NANR_lz_2          },
    { ball_throws_great_ball_NCGR_lz,   ball_throws_great_ball_NCLR,   ball_throws_shared_cell_NCER_lz_4,  ball_throws_shared_anim_NANR_lz_3          },
    { ball_throws_poke_ball_NCGR_lz,    ball_throws_poke_ball_NCLR,    ball_throws_shared_cell_NCER_lz_1,  ball_throws_shared_anim_NANR_lz            },
    { ball_throws_safari_ball_NCGR_lz,  ball_throws_safari_ball_NCLR,  ball_throws_shared_cell_NCER_lz_5,  ball_throws_shared_anim_NANR_lz_4          },
    { ball_throws_net_ball_NCGR_lz,     ball_throws_net_ball_NCLR,     ball_throws_shared_cell_NCER_lz_6,  ball_throws_shared_anim_NANR_lz_5          },
    { ball_throws_dive_ball_NCGR_lz,    ball_throws_dive_ball_NCLR,    ball_throws_shared_cell_NCER_lz_7,  ball_throws_shared_anim_NANR_lz_6          },
    { ball_throws_nest_ball_NCGR_lz,    ball_throws_nest_ball_NCLR,    ball_throws_shared_cell_NCER_lz_8,  ball_throws_shared_anim_NANR_lz_7          },
    { ball_throws_repeat_ball_NCGR_lz,  ball_throws_repeat_ball_NCLR,  ball_throws_shared_cell_NCER_lz_9,  ball_throws_shared_anim_NANR_lz_8          },
    { ball_throws_timer_ball_NCGR_lz,   ball_throws_timer_ball_NCLR,   ball_throws_shared_cell_NCER_lz_10, ball_throws_shared_anim_NANR_lz_9          },
    { ball_throws_luxury_ball_NCGR_lz,  ball_throws_luxury_ball_NCLR,  ball_throws_shared_cell_NCER_lz_11, ball_throws_shared_anim_NANR_lz_10         },
    { ball_throws_premier_ball_NCGR_lz, ball_throws_premier_ball_NCLR, ball_throws_shared_cell_NCER_lz_12, ball_throws_shared_anim_NANR_lz_11         },
    { ball_throws_dusk_ball_NCGR_lz,    ball_throws_dusk_ball_NCLR,    ball_throws_shared_cell_NCER_lz_14, ball_throws_quick_dusk_heal_anim_NANR_lz_1 },
    { ball_throws_heal_ball_NCGR_lz,    ball_throws_heal_ball_NCLR,    ball_throws_shared_cell_NCER_lz_15, ball_throws_quick_dusk_heal_anim_NANR_lz_2 },
    { ball_throws_quick_ball_NCGR_lz,   ball_throws_quick_ball_NCLR,   ball_throws_shared_cell_NCER_lz_13, ball_throws_quick_dusk_heal_anim_NANR_lz   },
    { ball_throws_cherish_ball_NCGR_lz, ball_throws_cherish_ball_NCLR, ball_throws_shared_cell_NCER_lz_16, ball_throws_shared_anim_NANR_lz_12         },
    { ball_throws_park_ball_NCGR_lz,    ball_throws_park_ball_NCLR,    ball_throws_shared_cell_NCER_lz_17, ball_throws_shared_anim_NANR_lz_13         },
    { ball_throws_mud_NCGR_lz,          ball_throws_mud_NCLR,          ball_throws_mud_cell_NCER_lz,       ball_throws_mud_anim_NANR_lz               },
    { ball_throws_bait_NCGR_lz,         ball_throws_bait_NCLR,         ball_throws_shared_cell_NCER_lz_18, ball_throws_bait_anim_NANR_lz              },
    { ball_throws_bait_NCGR_lz,         ball_throws_bait_NCLR,         ball_throws_shared_cell_NCER_lz_18, ball_throws_bait_anim_NANR_lz              },
};
// clang-format on

static const int Unk_ov12_0223AD70[][2] = {
    { 0x1, 0x5 },
    { 0x2, 0x4 },
    { 0x3, 0x3 },
    { 0x4, 0x3 },
    { 0x5, 0x3 },
    { 0x6, 0x4 },
    { 0x7, 0x3 },
    { 0x8, 0x4 },
    { 0x9, 0x3 },
    { 0xA, 0x5 },
    { 0xB, 0x4 },
    { 0xC, 0x3 },
    { 0xD, 0x3 },
    { 0xE, 0x3 },
    { 0xF, 0x4 },
    { 0x10, 0x4 },
    { 0x11, 0x3 },
    { 0x1, 0x5 },
    { 0x1, 0x5 },
    { 0x24, 0x2 }
};

static const int Unk_ov12_0223AE10[][3] = {
    { 0x13, 0x0, 0x5 },
    { 0x14, 0x2, 0x5 },
    { 0x15, 0x1, 0x5 },
    { 0x16, 0x3, 0x5 },
    { 0x17, 0x1, 0x5 },
    { 0x18, 0x1, 0x6 },
    { 0x19, 0x1, 0x5 },
    { 0x1A, 0x1, 0x5 },
    { 0x1B, 0x2, 0x5 },
    { 0x1C, 0x3, 0x7 },
    { 0x1D, 0x1, 0x6 },
    { 0x1E, 0x0, 0x5 },
    { 0x1F, 0x1, 0x5 },
    { 0x20, 0x0, 0x5 },
    { 0x21, 0x1, 0x6 },
    { 0x22, 0x1, 0x6 },
    { 0x23, 0x3, 0x5 },
    { 0x13, 0x0, 0x5 },
    { 0x13, 0x0, 0x5 },
    { 0x24, 0xFF, 0x2 }
};

static int ov12_02235E94(int param0)
{
    int v0;

    if ((param0 < 1) || (param0 > (0xFF + 20))) {
        v0 = 4;
    } else if (param0 >= 0xFF) {
        v0 = param0 - 0xFF;
    } else {
        v0 = param0;
    }

    return v0 - 1;
}

static BOOL ov12_02235EB0(int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        15,
        16,
        17,
    };

    v1 = 0;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 1;
        break;
    }

    return v1;
}

static BOOL ov12_02235EF0(int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        6,
        7,
        8,
        9,
        10,
        11,
    };

    v1 = 0;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 1;
        break;
    }

    return v1;
}

static BOOL ov12_02235F2C(int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        3,
        5,
        1,
    };

    v1 = 1;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 0;
        break;
    }

    return v1;
}

static int ov12_02235F64(int param0)
{
    int v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AD70[v0][0];
}

static int ov12_02235F78(int param0)
{
    int v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AD70[v0][1];
}

static int ov12_02235F8C(int param0)
{
    int v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][0];
}

static int ov12_02235FA0(int param0)
{
    int v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][2];
}

static int ov12_02235FB4(int param0)
{
    int v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][1];
}

static int ov12_02235FC8(int param0, int param1)
{
    int v0 = ov12_02235E94(param0);
    return sBallThrowGraphics[v0][param1];
}

UnkStruct_ov12_02235FE0 *ov12_02235FE0(enum HeapID heapID)
{
    UnkStruct_ov12_02235FE0 *v0 = NULL;

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov12_02235FE0));

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    v0->heapID = heapID;
    v0->unk_88 = 0;

    return v0;
}

UnkStruct_ov12_02235FE0 *ov12_02236004(enum HeapID heapID, const UnkStruct_ov12_02236030 *param1)
{
    UnkStruct_ov12_02235FE0 *v0 = NULL;

    v0 = ov12_02235FE0(heapID);
    ov12_02236030(v0, param1);

    {
        int v1;

        v0->unk_10 = 0;

        for (v1 = 0; v1 < 9; v1++) {
            v0->unk_14[v1] = NULL;
            v0->unk_38[v1] = NULL;
            v0->unk_5C[v1] = 0;
        }
    }

    return v0;
}

void ov12_02236030(UnkStruct_ov12_02235FE0 *param0, const UnkStruct_ov12_02236030 *param1)
{
    param0->unk_04 = *param1;
    param0->unk_9C = Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_BALL_CAPSULE_ID, NULL);

    GF_ASSERT(param0->unk_9C < 12 + 1);

    if (param0->unk_9C == 0) {
        param0->unk_94 = 0;

        if (param0->unk_04.unk_04 != 0) {
            param0->unk_98 = param0->unk_04.unk_04;
        } else {
            param0->unk_98 = Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_POKEBALL, NULL);
        }
    } else {
        param0->unk_94 = 1;
        Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_BALL_CAPSULE, &param0->unk_A0);
    }
}

static void ov12_022360A0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02235FE0 *v0 = param1;
    int i;
    int v2;
    int v3;
    int v4;
    BallSeal *v5;

    switch (v0->unk_90) {
    case 0:
        v0->unk_8C = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTDATA__BALL_PARTICLE, v0->heapID);

        for (i = 0; i < 2; i++) {
            v5 = BallCapsule_GetBallSeals(&v0->unk_A0, i);

            if (v5 == NULL) {
                continue;
            }

            v2 = BallSeal_GetSealType(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= SEAL_ID_MAX) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->heapID, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 1:
        for (i = 2; i < 4; i++) {
            v5 = BallCapsule_GetBallSeals(&v0->unk_A0, i);

            if (v5 == NULL) {
                continue;
            }

            v2 = BallSeal_GetSealType(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->heapID, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 2:
        for (i = 4; i < 6; i++) {
            v5 = BallCapsule_GetBallSeals(&v0->unk_A0, i);

            if (v5 == NULL) {
                continue;
            }

            v2 = BallSeal_GetSealType(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->heapID, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 3:
        for (i = 6; i < 8; i++) {
            v5 = BallCapsule_GetBallSeals(&v0->unk_A0, i);

            if (v5 == NULL) {
                continue;
            }

            v2 = BallSeal_GetSealType(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->heapID, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90 = 0xFF;

        NARC_dtor(v0->unk_8C);
        SysTask_Done(param0);
        break;
    default:
        break;
    }
}

void ov12_02236320(UnkStruct_ov12_02235FE0 *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    BallSeal *v4;

    if (param0->unk_94 == 0) {
        v3 = ov12_02235F64(param0->unk_98);

        param0->unk_10 = 1;
        param0->unk_14[0] = BattleParticleUtil_CreateParticleSystemEx(param0->heapID, 99, v3, 0);
        param0->unk_90 = 0xFF;
    } else {
        param0->unk_10 = 0;
        param0->unk_90 = 0;

        {
            SysTask *v5;

            v5 = SysTask_Start(ov12_022360A0, param0, 1000);
            ov12_022360A0(v5, param0);
        }
    }
}

BOOL ov12_02236374(UnkStruct_ov12_02235FE0 *param0)
{
    if (param0->unk_90 == 0xFF) {
        return 1;
    }

    return 0;
}

void ov12_02236384(UnkStruct_ov12_02235FE0 *param0, SPLEmitterCallback param1)
{
    param0->unk_88 = 1;

    BattleAnimSystem_SetDefaultAlphaBlending();
    ov12_0223646C(param0, param1);

    param0->unk_84 = SysTask_Start(ov12_022363CC, param0, 1000);
}

void ov12_022363B4(UnkStruct_ov12_02235FE0 *param0)
{
    ov12_02236384(param0, ov12_02236598);
}

BOOL ov12_022363C4(UnkStruct_ov12_02235FE0 *param0)
{
    return param0->unk_88;
}

static void ov12_022363CC(SysTask *param0, void *param1)
{
    int v0;
    BOOL v1;
    UnkStruct_ov12_02235FE0 *v2 = (UnkStruct_ov12_02235FE0 *)param1;

    v1 = 0;

    GF_ASSERT(v2->unk_10 <= 9);

    for (v0 = 0; v0 < v2->unk_10; v0++) {
        if (v2->unk_14[v0] == NULL) {
            continue;
        }

        if ((ParticleSystem_GetActiveEmitterCount(v2->unk_14[v0]) == 0) && (v2->unk_5C[v0] != 0)) {
            BattleParticleUtil_FreeParticleSystem(v2->unk_14[v0]);
            v2->unk_14[v0] = NULL;
            v2->unk_5C[v0] = 0;
            continue;
        }

        v1 = 1;
    }

    if (v1 == 0) {
        v2->unk_88 = 0;
        SysTask_Done(param0);
    }
}

void ov12_02236428(UnkStruct_ov12_02235FE0 *param0)
{
    Heap_Free(param0);
}

static void ov12_02236430(SysTask *param0, void *param1)
{
    UnkStruct_02236430 *v0 = (UnkStruct_02236430 *)param1;

    if (v0->unk_04 == 0) {
        *(v0->unk_0C) = 1;
        ParticleSystem_CreateEmitterWithCallback(v0->unk_10, 0, v0->unk_18, v0);
        ParticleSystem_SetCameraProjection(v0->unk_10, 1);
        SysTask_Done(param0);
        Heap_Free(v0);
    } else {
        v0->unk_04--;
    }
}

static void ov12_0223646C(UnkStruct_ov12_02235FE0 *param0, SPLEmitterCallback param1)
{
    int v0, v1;
    int v2;
    int v3;

    if (param0->unk_94 == 0) {
        v3 = ov12_02235F78(param0->unk_98);

        for (v0 = 0; v0 < v3; v0++) {
            ParticleSystem_CreateEmitterWithCallback(param0->unk_14[0], v0, param1, param0);
        }

        param0->unk_5C[0] = 1;
        ParticleSystem_SetCameraProjection(param0->unk_14[0], 1);
    } else {
        for (v0 = 0; v0 < param0->unk_10; v0++) {
            UnkStruct_02236430 *v4 = Heap_Alloc(param0->heapID, sizeof(UnkStruct_02236430));

            GF_ASSERT(v4 != NULL);

            v4->unk_00 = v0;
            v4->unk_08 = param0->unk_04.unk_00;
            v4->unk_18 = ov12_022365D4;

            param0->unk_5C[v0] = 0;

            v4->unk_0C = &param0->unk_5C[v0];
            v4->unk_10 = param0->unk_14[v0];
            v4->unk_14 = param0->unk_38[v0];

            GF_ASSERT(v4->unk_14 != NULL);
            v4->unk_04 = ov12_02237EA0(v4->unk_14);

            SysTask_Start(ov12_02236430, v4, 1001);
        }
    }
}

static void ov12_02236520(int param0, VecFx32 *param1)
{
    ov12_02235758(param0, param1, 0, 1);

    {
        int v0;
        int v1;
        s16 v2;
        s16 v3;
        VecFx32 v4;

        switch (param0) {
        case 0:
            v2 = 0;
            v3 = -16;
            break;
        case 1:
            v2 = -15;
            v3 = -25;
            break;
        case 2:
            v2 = -8;
            v3 = -12;
            break;
        case 3:
            v2 = -14;
            v3 = -25;
            break;
        case 4:
            v2 = -8;
            v3 = -12;
            break;
        case 5:
        default:
            v2 = -16;
            v3 = -29;
            break;
        }

        v0 = 172 * ((+10) + v2);
        v1 = 172 * (32 + v3);

        VEC_Set(&v4, v0, v1, 0);

        param1->x -= v4.x;
        param1->y -= v4.y;
    }
}

static void ov12_02236598(SPLEmitter *param0)
{
    int v0;
    UnkStruct_ov12_02235FE0 *v1 = ParticleSystem_GetEmitterCallbackParam();
    v0 = v1->unk_04.unk_00;

    {
        VecFx32 v2;

        ov12_02236520(v0, &v2);
        SPLEmitter_SetPos(param0, &v2);
    }
}

static void ov12_022365D4(SPLEmitter *param0)
{
    VecFx32 v0;
    int v1;
    UnkStruct_ov12_02235FE0 *v2;
    UnkStruct_02236430 *v3 = ParticleSystem_GetEmitterCallbackParam();
    v1 = v3->unk_08;

    ov12_02236520(v1, &v0);

    {
        u8 v4;
        u8 v5, v6;
        s16 v7, v8;
        int v9, v10;
        VecFx32 v11;

        v4 = BallSeal_GetSealType(v3->unk_14);

        if (sub_020981AC(v4) == 1) {
            v5 = BallSeal_GetX(v3->unk_14);
            v6 = BallSeal_GetY(v3->unk_14);
            v7 = (v5 - 190);
            v8 = (70 - v6 + (+30));
            v9 = v7 * 172;
            v10 = v8 * 172;

            VEC_Set(&v11, v9, v10, 0);

            v0.x += v11.x;
            v0.y += v11.y;
            v0.z += v11.z;
        } else {
            v5 = BallSeal_GetX(v3->unk_14);
            v6 = BallSeal_GetY(v3->unk_14);
            v7 = (v5 - 190);
            v8 = (70 - v6 + (+30));
            v9 = v7 * 172;
            v10 = v8 * 172;

            VEC_Set(&v11, v9, v10, 0);

            v0.x += v11.x;
            v0.y += v11.y;
            v0.z += v11.z;
        }
    }

    SPLEmitter_SetPos(param0, &v0);
}

static void ov12_02236648(SPLEmitter *param0)
{
    UnkStruct_ov12_02236648 *v0 = ParticleSystem_GetEmitterCallbackParam();

    {
        VecFx32 v1;
        int v2, v3;
        s16 v4, v5;

        v4 = (v0->unk_00.unk_00 - 190 + 61);
        v5 = (70 - v0->unk_00.unk_02 + (+30));
        v2 = v4 * 172;
        v3 = v5 * 172;

        VEC_Set(&v1, v2, v3, 0);
        SPLEmitter_SetPos(param0, &v1);
    }
}

UnkStruct_ov12_02236648 *ov12_02236690(UnkStruct_ov12_02236690 *param0)
{
    UnkStruct_ov12_02236648 *v0 = Heap_Alloc(param0->heapID, sizeof(UnkStruct_ov12_02236648));
    GF_ASSERT(v0 != NULL);

    v0->unk_00 = *param0;

    if (v0->unk_00.unk_10) {
        v0->unk_20 = ov12_02235F8C(0xFF + 20);
        v0->unk_1C = ov12_02235FA0(0xFF + 20);
    } else {
        v0->unk_20 = ov12_02235F8C(v0->unk_00.unk_04);
        v0->unk_1C = ov12_02235FA0(v0->unk_00.unk_04);
    }

    v0->unk_18 = BattleParticleUtil_CreateParticleSystemEx(v0->unk_00.heapID, 99, v0->unk_20, 0);

    return v0;
}

void ov12_022366F0(UnkStruct_ov12_02236648 *param0)
{
    int v0;
    int v1;
    UnkStruct_ov12_02236648 *v2 = param0;

    if (v2->unk_00.unk_0C == 0xFF) {
        if (v2->unk_00.unk_10) {
            for (v0 = 0; v0 < v2->unk_1C; v0++) {
                ParticleSystem_CreateEmitterWithCallback(v2->unk_18, v0, ov12_02236648, v2);
            }
        } else {
            for (v0 = 0; v0 < v2->unk_1C; v0++) {
                if (v0 == ov12_02235FB4(v2->unk_00.unk_04)) {
                    continue;
                }

                ParticleSystem_CreateEmitterWithCallback(v2->unk_18, v0, ov12_02236648, v2);
            }
        }
    } else {
        v1 = v2->unk_00.unk_0C;
        ParticleSystem_CreateEmitterWithCallback(v2->unk_18, v1, ov12_02236648, v2);
    }

    ParticleSystem_SetCameraProjection(v2->unk_18, 1);
}

BOOL ov12_02236764(UnkStruct_ov12_02236648 *param0)
{
    UnkStruct_ov12_02236648 *v0 = param0;

    if (ParticleSystem_GetActiveEmitterCount(v0->unk_18) == 0) {
        BattleParticleUtil_FreeParticleSystem(v0->unk_18);
        return 0;
    }

    return 1;
}

void ov12_02236780(UnkStruct_ov12_02236648 *param0)
{
    Heap_Free(param0);
}

static BOOL (*const Unk_ov12_0223AB84[])(BallRotation *) = {
    ov12_02236F24,
    ov12_022371E4,
    ov12_02237608,
    ov12_02236F10,
    ov12_02237694,
    ov12_02237474
};

static BOOL ov12_02236788(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 1);
    }

    v0 = ov12_0223782C(param0, 2);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022367B0(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 3);
    }

    v0 = ov12_0223782C(param0, 4);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022367D8(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 5);
    }

    v0 = ov12_0223782C(param0, 6);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236800(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 7);
    }

    v0 = ov12_0223782C(param0, 14);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236828(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 15);
    }

    v0 = ov12_0223782C(param0, 18);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236850(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 19);
    }

    v0 = ov12_0223782C(param0, 27);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236878(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 21);
    }

    v0 = ov12_0223782C(param0, 22);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022368A0(BallRotation *param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 23);
    }

    v0 = ov12_0223782C(param0, 27);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL (*const Unk_ov12_0223AB9C[])(BallRotation *) = {
    ov12_02236788,
    ov12_022367B0,
    ov12_022367D8,
    ov12_02236800,
    ov12_02236828,
    ov12_02236850,
    ov12_02236878,
    ov12_022368A0
};

void ov12_022368C8(BallRotation *param0, int param1)
{
    param0->unk_00 = param1;
    param0->unk_04 = 0;
}

BOOL ov12_022368D0(BallRotation *param0, int param1)
{
    BOOL v0 = Unk_ov12_0223AB9C[param0->unk_00](param0);
    return v0;
}

static void ov12_022368E4(BallRotation *param0, int param1)
{
    param0->unk_14 = param1;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
}

static BOOL ov12_022368F0(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_022368F4(BallRotation *param0)
{
    BOOL v0 = ov12_02236F24(param0);

    if (v0 == 0) {
        ov12_022368E4(param0, 2);
    }

    return 1;
}

static BOOL ov12_0223690C(BallRotation *param0)
{
    ov12_022368E4(param0, 3);
    return 1;
}

static BOOL ov12_02236918(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        ManagedSprite_SetAnim(param0->unk_30, 1);
        {
            UnkStruct_ov12_02236690 v0;

            v0.unk_04 = param0->unk_90.ballID;
            v0.heapID = param0->unk_90.heapID;
            v0.unk_0C = 0xFF;
            v0.unk_10 = 0;

            ManagedSprite_GetPositionXY(param0->unk_30, &v0.unk_00, &v0.unk_02);

            param0->unk_D8 = ov12_02223764(param0->unk_90.battleSys, param0->unk_90.heapID);
            param0->unk_D0 = ov12_02236690(&v0);
        }
        param0->unk_08++;
        break;
    case 1: {
        int v1 = ManagedSprite_GetAnimationFrame(param0->unk_30);

        if (v1 >= 2) {
            param0->unk_24 = 0;
            param0->unk_08++;
        }
    } break;
    case 2:
        ov12_022366F0(param0->unk_D0);
        ov12_02223770(param0->unk_D8);
        param0->unk_08++;
        break;
    case 3: {
        if (ov12_02236764(param0->unk_D0) == 0) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, 0);
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
    } break;
    default:
        ov12_022368E4(param0, 4);
        break;
    }

    return 1;
}

static BOOL ov12_022369F8(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_022369FC(BallRotation *param0)
{
    BOOL v0;

    switch (param0->unk_0C) {
    case 0:
        ManagedSprite_GetPositionXY(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
        param0->unk_B8.unk_04 = 60;
        param0->unk_B8.unk_06 = 180;
        param0->unk_B8.unk_08 = 10;
        param0->unk_B8.unk_10 = 12;
        param0->unk_0C++;
        break;
    default: {
        v0 = ov12_02236F24(param0);

        if (v0 == 0) {
            ov12_022368E4(param0, 6);
        }
    } break;
    }

    return 1;
}

static BOOL ov12_02236A50(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_02236A54(BallRotation *param0)
{
    ov12_022368E4(param0, 8);
    return 1;
}

static BOOL ov12_02236A60(BallRotation *param0)
{
    ov12_022368E4(param0, 9);
    return 1;
}

static BOOL ov12_02236A6C(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:

    {
        int v0;

        v0 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
        PaletteData_StartFade(param0->unk_90.paletteSys, 0x4, 1 << v0, -1, 0, 12, 0x37F);

        param0->unk_08++;
    } break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_90.paletteSys) != 0) {
            break;
        }

        {
            int v1;

            v1 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
            PaletteData_StartFade(param0->unk_90.paletteSys, 0x4, 1 << v1, -1, 12, 0, 0x37F);
        }

        param0->unk_08++;
        break;
    default:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_90.paletteSys) != 0) {
            break;
        }

        ov12_022368E4(param0, 10);
        break;
    }

    return 1;
}

static BOOL ov12_02236B14(BallRotation *param0)
{
    ov12_022368E4(param0, 11);
    return 1;
}

static BOOL ov12_02236B20(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        if ((++param0->unk_0C) < 1) {
            break;
        }

        {
            s16 v0, v1;

            ManagedSprite_GetPositionXY(param0->unk_30, &v0, &v1);
            PosLerpContext_Init(&param0->unk_48[0], v0, v0, v1, v1 + 32, 32 / 3);

            param0->unk_08++;
        }
        break;
    case 1:
        if (PosLerpContext_UpdateAndApplyToSprite(&param0->unk_48[0], param0->unk_30) == 0) {
            param0->unk_08++;

            ov12_022368E4(param0, 13);
        }
        break;
    default:
        break;
    }

    return 1;
}

static BOOL ov12_02236B94(BallRotation *param0)
{
    return 1;
}

static const s16 Unk_ov12_0223ACF0[][3] = {
    { 0x0, -7, 0x1 },
    { 0x1, -5, 0x0 },
    { 0x0, -3, 0x0 },
    { 0x1, -2, 0x0 },
    { 0x1, 0x2, 0x0 },
    { 0x1, 0x3, 0x0 },
    { 0x0, 0x5, 0x0 },
    { 0x1, 0x7, 0x1 },
    { 0x0, -5, 0x1 },
    { 0x0, -3, 0x0 },
    { 0x1, -2, 0x0 },
    { 0x1, 0x2, 0x0 },
    { 0x0, 0x3, 0x0 },
    { 0x0, 0x5, 0x1 },
    { 0x0, -2, 0x0 },
    { 0x1, -1, 0x0 },
    { 0x0, 0x1, 0x0 },
    { 0x0, 0x2, 0x0 },
    { 0x0, -2, 0x1 },
    { 0x0, 0x2, 0x1 },
    { 0xFF, 0xFF, 0x0 }
};

static const int Unk_ov12_0223ABE4[][2] = {
    { 0x1, SEQ_SE_DP_KON },
    { 0x8, SEQ_SE_DP_KON },
    { 0xE, SEQ_SE_DP_KON2 },
    { 0x12, SEQ_SE_DP_KON3 },
    { 0x14, SEQ_SE_DP_KON4 }
};

static BOOL ov12_02236B98(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        ManagedSprite_SetAnim(param0->unk_30, 1);
        ManagedSprite_SetAnimationFrame(param0->unk_30, 0);
        param0->unk_08++;
    case 1: {
        s16 v0, v1;
        int v2;

        v0 = 0;
        v1 = Unk_ov12_0223ACF0[param0->unk_0C][1];
        v2 = Unk_ov12_0223ACF0[param0->unk_0C][2];

        ManagedSprite_SetAnimationFrame(param0->unk_30, v2);

        param0->unk_0C++;

        {
            int v3;

            for (v3 = 0; v3 < 5; v3++) {
                if (Unk_ov12_0223ABE4[v3][0] == param0->unk_0C) {
                    Sound_PlayPannedEffect(Unk_ov12_0223ABE4[v3][1], 117);
                }
            }
        }

        if ((param0->unk_0C > 20) || (v0 == 0xFF) || (v1 == 0xFF)) {
            param0->unk_08++;
        } else {
            ManagedSprite_OffsetPositionXY(param0->unk_30, v0, v1);
        }
    } break;
    default:
        ov12_022368E4(param0, 14);
        break;
    }

    return 1;
}

static BOOL ov12_02236C34(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_02236C38(BallRotation *param0)
{
    param0->unk_0C++;

    if (param0->unk_0C >= 14) {
        param0->unk_08++;
        param0->unk_0C = 0;
        ov12_022368E4(param0, 16);
    }

    return 1;
}

static BOOL ov12_02236C58(BallRotation *param0)
{
    ov12_022368E4(param0, 17);
    return 1;
}

static const s16 Unk_ov12_0223AC38[][12] = {
    { -2, -0, 0x2, 0x2, 0x0, -2, 0xFF, 0xFF, 0xFF },
    { -1, -0, 0x1, 0x1, 0x0, -1, 0xFF, 0xFF, 0xFF },
    { -1, 0x0, 0x1, 0x1, 0x0, -1, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF }
};

static BOOL ov12_02236C64(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        GF_ASSERT(param0->unk_18 < 3);
        param0->unk_08++;
    case 1: {
        s16 v0;

        v0 = Unk_ov12_0223AC38[param0->unk_18][param0->unk_0C];
        param0->unk_0C++;

        if ((param0->unk_0C > 11) || (v0 == 0xFF)) {
            param0->unk_08++;
            param0->unk_18++;
            ManagedSprite_SetAffineZRotation(param0->unk_30, 0);
            ov12_022368E4(param0, 18);
            return 1;
        } else {
            if (param0->unk_0C == 5) {
                Sound_PlayPannedEffect(SEQ_SE_DP_BOWA, 117);
            }

            ManagedSprite_OffsetPositionXY(param0->unk_30, v0, 0);
            ManagedSprite_OffsetAffineZRotation(param0->unk_30, (((v0) * 2) * 0xffff) / 360);
        }
    } break;
    default:
        break;
    }

    return 1;
}

static BOOL ov12_02236CFC(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_02236D00(BallRotation *param0)
{
    ov12_022368E4(param0, 20);
    return 1;
}

static BOOL ov12_02236D0C(BallRotation *param0)
{
    ov12_022368E4(param0, 27);
    return 1;
}

static BOOL ov12_02236D18(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:

    {
        int v0;

        v0 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
        PaletteData_StartFade(param0->unk_90.paletteSys, 0x4, 1 << v0, -5, 0, 10, 0x0);

        param0->unk_08++;
    } break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_90.paletteSys) != 0) {
            break;
        }

        {
            UnkStruct_ov12_02236690 v1;

            v1.unk_04 = param0->unk_90.ballID;
            v1.heapID = param0->unk_90.heapID;
            v1.unk_0C = ov12_02235FB4(v1.unk_04);
            v1.unk_10 = 0;

            ManagedSprite_GetPositionXY(param0->unk_30, &v1.unk_00, &v1.unk_02);
            param0->unk_D0 = ov12_02236690(&v1);
        }
        param0->unk_08++;
        break;
    case 2:
        ov12_022366F0(param0->unk_D0);
        param0->unk_08++;
        break;
    case 3: {
        if (ov12_02236764(param0->unk_D0) == 0) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, 0);
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
    } break;
    default:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_90.paletteSys) != 0) {
            break;
        }

        ov12_022368E4(param0, 22);
        break;
    }

    return 1;
}

static BOOL ov12_02236E08(BallRotation *param0)
{
    return 1;
}

static BOOL ov12_02236E0C(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0: {
        int v0;

        v0 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
        PaletteData_StartFade(param0->unk_90.paletteSys, 0x4, 1 << v0, -5, 10, 0, 0x0);
    }
        param0->unk_08++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(param0->unk_90.paletteSys) != 0) {
            break;
        }

        param0->unk_08++;
        break;
    default:
        ov12_022368E4(param0, 24);
        break;
    }

    return 1;
}

static BOOL ov12_02236E70(BallRotation *param0)
{
    ov12_022368E4(param0, 25);
    return 1;
}

static BOOL ov12_02236E7C(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        ManagedSprite_SetExplicitOamMode(param0->unk_30, GX_OAM_MODE_XLU);
        param0->unk_08++;
    case 1:
        if (param0->unk_20 > 0) {
            param0->unk_20--;
            param0->unk_21++;
        } else {
            param0->unk_20 = 0;
            param0->unk_21 = 15;
            ManagedSprite_SetDrawFlag(param0->unk_30, 0);
            param0->unk_08++;
        }

        G2_ChangeBlendAlpha(param0->unk_20, param0->unk_21);
        break;
    default:
        ov12_022368E4(param0, 26);
        break;
    }

    return 1;
}

static BOOL ov12_02236F00(BallRotation *param0)
{
    ov12_022368E4(param0, 27);
    return 1;
}

static BOOL ov12_02236F0C(BallRotation *param0)
{
    return 0;
}

static BOOL (*const Unk_ov12_0223AC80[])(BallRotation *) = {
    ov12_022368F0,
    ov12_022368F4,
    ov12_0223690C,
    ov12_02236918,
    ov12_022369F8,
    ov12_022369FC,
    ov12_02236A50,
    ov12_02236A54,
    ov12_02236A60,
    ov12_02236A6C,
    ov12_02236B14,
    ov12_02236B20,
    ov12_02236B94,
    ov12_02236B98,
    ov12_02236C34,
    ov12_02236C38,
    ov12_02236C58,
    ov12_02236C64,
    ov12_02236CFC,
    ov12_02236D00,
    ov12_02236D0C,
    ov12_02236D18,
    ov12_02236E08,
    ov12_02236E0C,
    ov12_02236E70,
    ov12_02236E7C,
    ov12_02236F00,
    ov12_02236F0C
};

static BOOL ov12_02236F10(BallRotation *param0)
{
    BOOL v0 = Unk_ov12_0223AC80[param0->unk_14](param0);
    return v0;
}

static BOOL ov12_02236F24(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        XYTransformContext_InitParabolic(&param0->unk_48[0], &param0->unk_48[1], param0->unk_B8.unk_00, param0->unk_B8.unk_04, param0->unk_B8.unk_02, param0->unk_B8.unk_06, param0->unk_B8.unk_08, param0->unk_B8.unk_10 * FX32_ONE);

        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        param0->unk_D4 = NULL;

        {
            int v0;

            if (ov12_02235EB0(param0->unk_90.type) == 1) {
                v0 = (LCRNG_Next() % 20) + 10;

                ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000 * v0);
            }
        }
        break;
    case 1:
        if (ov12_02235EB0(param0->unk_90.type) == 1) {
            ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000);

            if (param0->unk_B8.unk_0C > ((param0->unk_B8.unk_08 / 2) + 10)) {
                ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000);
            }

            if (ov12_02235EF0(param0->unk_90.type) == 1) {
                if (param0->unk_B8.unk_0C == ((param0->unk_B8.unk_08 / 2) + 10)) {
                    int v1;

                    v1 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
                    param0->unk_D4 = PaletteFadeContext_New(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v1 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
        }

        param0->unk_B8.unk_0C++;

        if ((param0->unk_90.type >= 6) && (param0->unk_90.type <= 8)) {
            if ((param0->unk_B8.unk_0C > (param0->unk_B8.unk_08 / 2)) && (param0->unk_B8.unk_0C < ((param0->unk_B8.unk_08 / 2) + 5))) {
                break;
            }
        }

        if (ov12_02225D2C(&param0->unk_48[0], &param0->unk_48[1], param0->unk_30) == 0) {
            ov12_02237E24(param0, 0);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((ov12_02235EF0(param0->unk_90.type) == 1) && (param0->unk_D4 != NULL)) {
            if (PaletteFadeContext_IsActive(param0->unk_D4) == 1) {
                break;
            }

            PaletteFadeContext_Free(param0->unk_D4);
            param0->unk_28 = 1;

            return 0;
        } else {
            if (param0->unk_90.type >= 15) {
                param0->unk_28 = 1;
                return 0;
            }

            if (param0->unk_90.ballID == (0xFF + 18)) {
                Sound_PlayPannedEffect(SEQ_SE_DP_W202B, 117);
            }

            param0->unk_08++;
        }
        break;
    case 3:
        ManagedSprite_SetAnim(param0->unk_30, 1);
        ov12_02237E30(param0, 1);
        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        break;
    default:
        if (param0->unk_B8.unk_0C == 5) {
            {
                int v2;

                if ((param0->unk_90.type != 12) && (param0->unk_90.type != 13)) {
                    v2 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
                    param0->unk_D4 = PaletteFadeContext_New(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v2 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
            param0->unk_28 = 1;
        }

        if ((++param0->unk_B8.unk_0C) <= 15) {
            break;
        }

        if ((param0->unk_90.type != 12) && (param0->unk_90.type != 13)) {
            if (PaletteFadeContext_IsActive(param0->unk_D4) == 1) {
                break;
            }

            PaletteFadeContext_Free(param0->unk_D4);
        }

        return 0;
    }

    return 1;
}

static BOOL ov12_022371E4(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        XYTransformContext_InitParabolic(&param0->unk_48[0], &param0->unk_48[1], param0->unk_B8.unk_00, param0->unk_B8.unk_04, param0->unk_B8.unk_02, param0->unk_B8.unk_06, param0->unk_B8.unk_08, param0->unk_B8.unk_10 * FX32_ONE);

        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        param0->unk_D4 = NULL;

        {
            int v0;

            if (ov12_02235EB0(param0->unk_90.type) == 1) {
                v0 = (LCRNG_Next() % 20) + 10;

                ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000 * v0);
            }
        }
        break;
    case 1:
        if (ov12_02235EB0(param0->unk_90.type) == 1) {
            ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000);

            if (param0->unk_B8.unk_0C > ((param0->unk_B8.unk_08 / 2) + 10)) {
                ManagedSprite_OffsetAffineZRotation(param0->unk_30, 0x2000);
            }

            if (ov12_02235EF0(param0->unk_90.type) == 1) {
                if (param0->unk_B8.unk_0C == ((param0->unk_B8.unk_08 / 2) + 10)) {
                    int v1;

                    v1 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
                    param0->unk_D4 = PaletteFadeContext_New(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v1 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
        }

        param0->unk_B8.unk_0C++;

        if ((param0->unk_90.type >= 6) && (param0->unk_90.type <= 8)) {
            if ((param0->unk_B8.unk_0C > (param0->unk_B8.unk_08 / 2)) && (param0->unk_B8.unk_0C < ((param0->unk_B8.unk_08 / 2) + 5))) {
                break;
            }
        }

        if (ov12_02225D2C(&param0->unk_48[0], &param0->unk_48[1], param0->unk_30) == 0) {
            ov12_02237E24(param0, 0);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((ov12_02235EF0(param0->unk_90.type) == 1) && (param0->unk_D4 != NULL)) {
            if (PaletteFadeContext_IsActive(param0->unk_D4) == 1) {
                break;
            }

            PaletteFadeContext_Free(param0->unk_D4);
            param0->unk_28 = 1;

            return 0;
        } else {
            if (param0->unk_90.type >= 15) {
                param0->unk_28 = 1;

                return 0;
            }

            param0->unk_08++;
        }
        break;
    case 3:
        ManagedSprite_SetAnim(param0->unk_30, 1);
        ov12_02237E30(param0, 0);
        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        break;
    default:
        if (param0->unk_B8.unk_0C == 5) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, 2);

            {
                int v2;

                v2 = ManagedSprite_GetExplicitPaletteOffset(param0->unk_30);
                param0->unk_D4 = PaletteFadeContext_New(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v2 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
            }

            param0->unk_28 = 1;
        }

        if ((++param0->unk_B8.unk_0C) <= 15) {
            break;
        }

        if (PaletteFadeContext_IsActive(param0->unk_D4) == 1) {
            break;
        }

        PaletteFadeContext_Free(param0->unk_D4);

        return 0;
    }

    return 1;
}

static const int Unk_ov12_0223ABBC[][2] = {
    { 0x0, 0x2 },
    { 0x2, 0x2 },
    { 0x2, 0x6 },
    { 0x1, 0x6 },
    { 0x0, 0x6 }
};

static BOOL ov12_02237474(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0:
        ov12_02237E30(param0, 0);
        ManagedSprite_SetAnim(param0->unk_30, 1);
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[0][1]) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, Unk_ov12_0223ABBC[0][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[1][1]) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, Unk_ov12_0223ABBC[1][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 2: {
        UnkStruct_ov12_02236690 v0;

        v0.unk_04 = param0->unk_90.ballID;
        v0.heapID = param0->unk_90.heapID;
        v0.unk_0C = 0xFF;
        v0.unk_10 = 1;

        ManagedSprite_GetPositionXY(param0->unk_30, &v0.unk_00, &v0.unk_02);
        param0->unk_D0 = ov12_02236690(&v0);
    }
        param0->unk_08++;
        break;
    case 3:
        ov12_022366F0(param0->unk_D0);
        param0->unk_08++;
        break;
    case 4:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[2][1]) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, Unk_ov12_0223ABBC[2][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 5:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[3][1]) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, Unk_ov12_0223ABBC[3][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 6:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[4][1]) {
            ManagedSprite_SetAnimationFrame(param0->unk_30, Unk_ov12_0223ABBC[4][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 7:
        if (ov12_02236764(param0->unk_D0) == 0) {
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
        break;
    default:
        return 0;
        break;
    }

    return 1;
}

static BOOL ov12_02237608(BallRotation *param0)
{
    switch (param0->unk_08) {
    case 0: {
        if (param0->unk_10 == 0) {
            ValueLerpContext_Init(&param0->unk_34, -((45 * 0xffff) / 360), +((45 * 0xffff) / 360), 10);
        } else {
            ValueLerpContext_Init(&param0->unk_34, +((45 * 0xffff) / 360), -((45 * 0xffff) / 360), 10);
        }

        param0->unk_10 ^= 1;
    }
        param0->unk_08++;
        break;
    case 1:
        ManagedSprite_SetAffineZRotation(param0->unk_30, param0->unk_34.value);

        if (ValueLerpContext_Update(&param0->unk_34) == 0) {
            if (param0->unk_0C >= 1) {
                param0->unk_08++;
            } else {
                param0->unk_0C++;
                param0->unk_08--;
            }
        }
        break;
    default:
        param0->unk_B8.unk_0C = 0;
        return 0;
        break;
    }

    return 1;
}

static BOOL ov12_02237694(BallRotation *param0)
{
    if (param0->unk_08 == 0xFF) {
        return 0;
    }

    if (param0->unk_30 != NULL) {
        s16 v0, v1;

        ManagedSprite_GetPositionXY(param0->unk_30, &v0, &v1);

        param0->unk_B8.unk_00 = v0;
        param0->unk_B8.unk_02 = v1;
    }

    return 1;
}

static void ov12_022376D0(SysTask *param0, void *param1)
{
    BOOL v0;
    BallRotation *v1 = (BallRotation *)param1;

    if (v1->unk_1C == 0) {
        return;
    }

    if (v1->unk_DC > 0) {
        v1->unk_DC--;
        SpriteSystem_DrawSprites(v1->unk_2C);
        return;
    }

    v0 = Unk_ov12_0223AB84[v1->unk_90.mode](v1);

    if (v0 == 0) {
        v1->unk_1C = 0;
    }

    if (v1->unk_24 == 1) {
        ManagedSprite_TickFrame(v1->unk_30);
    }

    SpriteSystem_DrawSprites(v1->unk_2C);
}

BallRotation *ov12_02237728(BallThrow *param0)
{
    BallRotation *v0 = NULL;

    v0 = Heap_Alloc(param0->heapID, sizeof(BallRotation));
    MI_CpuClear8(v0, sizeof(BallRotation));

    GF_ASSERT(v0 != NULL);

    v0->unk_90 = (*param0);
    v0->unk_08 = 0;
    v0->unk_10 = 0;
    v0->unk_0C = 0;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_2C = SpriteManager_New(v0->unk_90.cellActorSys);
    v0->unk_DC = 0;
    v0->unk_24 = ov12_02235F2C(v0->unk_90.type);
    v0->unk_B8.unk_0C = 0;
    v0->unk_20 = 16;
    v0->unk_21 = 0;

    BattleAnimSystem_SetDefaultAlphaBlending();

    {
        int v1;

        v1 = LCRNG_Next() % 2;

        if (v1) {
            v0->unk_22 = +1;
        } else {
            v0->unk_22 = -1;
        }
    }

    ov12_02237C54(v0);
    ov12_02237D8C(v0);
    ov12_022378A0(v0);

    v0->unk_1C = 1;
    v0->unk_28 = 0;
    v0->unk_CC = SysTask_Start(ov12_022376D0, v0, 1000);

    return v0;
}

BOOL ov12_022377F8(BallRotation *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_1C ? 1 : 0;
}

BOOL ov12_02237810(BallRotation *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_28 ? 1 : 0;
}

void ov12_02237828(BallRotation *param0, int param1)
{
    param0->unk_14 = param1;
}

BOOL ov12_0223782C(BallRotation *param0, int param1)
{
    return (param0->unk_14 == param1) ? 1 : 0;
}

void ov12_0223783C(BallRotation *param0)
{
    int v0 = param0->unk_90.heapID;

    GF_ASSERT(param0 != NULL);

    SpriteSystem_FreeResourcesAndManager(param0->unk_90.cellActorSys, param0->unk_2C);
    Sprite_DeleteAndFreeResources(param0->unk_30);
    SysTask_Done(param0->unk_CC);
    Heap_Free(param0);
}

void ov12_0223786C(BallRotation *param0, int param1)
{
    param0->unk_90.mode = param1;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_1C = 1;

    ManagedSprite_GetPositionXY(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
}

int ov12_02237890(BallRotation *param0)
{
    GF_ASSERT(param0 != NULL);

    return param0->unk_90.mode;
}

static void ov12_022378A0(BallRotation *param0)
{
    ManagedSprite_GetPositionXY(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);

    switch (param0->unk_90.type) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        ManagedSprite_GetPositionXY(param0->unk_30, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 0;
        param0->unk_B8.unk_08 = 12;
        return;
    case 6:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 7:
        ManagedSprite_GetPositionXY(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 4, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 8:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 2, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 9:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 10:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 3, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 11:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 5, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 12:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 16;
        param0->unk_B8.unk_06 += 16;
        param0->unk_B8.unk_08 = 12;
        return;
    case 13:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 32;
        param0->unk_B8.unk_04 -= 20;
        param0->unk_B8.unk_06 += 38;
        param0->unk_B8.unk_08 = 16;
        return;
    case 14:
        param0->unk_B8.unk_04 = 128;
        param0->unk_B8.unk_06 = (96 - 32);
        param0->unk_B8.unk_10 = 32;
        param0->unk_B8.unk_06 += 32;
        break;
    case 15:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    case 16:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 3, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    case 17:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 5, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    default:
        break;
    }

    param0->unk_B8.unk_08 = 20;
}

static void ov12_02237B14(BallRotation *param0, s16 *param1, s16 *param2)
{
    switch (param0->unk_90.type) {
    case 0:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 1:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 1, param1, param2);
        (*param2) += 38;
        break;
    case 2:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 2, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 4:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 4, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 3:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 3, param1, param2);
        (*param2) += 38;
        break;
    case 5:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(1, 5, param1, param2);
        (*param2) += 38;
        break;
    case 6:
        *param1 = 10;
        *param2 = 100;
        break;
    case 7:
        *param1 = 10;
        *param2 = 100;
        break;
    case 8:
        *param1 = 10;
        *param2 = 100;
        break;
    case 9:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        break;
    case 10:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        break;
    case 11:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        break;
    case 12:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        break;
    case 13:
        BattleAnimUtil_GetBattlerTypeDefaultPos2(0, 0, param1, param2);
        break;
    case 14:
        *param1 = 230;
        *param2 = 32;
        break;
    case 15:
    case 16:
    case 17:
        *param1 = -30;
        *param2 = 160;
        break;
    default:
        break;
    }
}

static void ov12_02237C54(BallRotation *param0)
{
    int v0;
    int v1;
    int v2;
    int v3;

    SpriteSystem_InitSprites(param0->unk_90.cellActorSys, param0->unk_2C, 10);

    if (param0->unk_90.surface == 0) {
        SetSubScreenViewRect(SpriteSystem_GetRenderer(param0->unk_90.cellActorSys), 0, (192 + 80) << FX32_SHIFT);
    }

    {
        int v4;
        SpriteResourceCapacities v5;

        for (v4 = 0; v4 < 6; v4++) {
            v5.asArray[v4] = 10;
        }

        v5.asArray[4] = 0;
        v5.asArray[5] = 0;

        SpriteSystem_InitManagerWithCapacities(param0->unk_90.cellActorSys, param0->unk_2C, &v5);
    }

    v0 = ov12_02235FC8(param0->unk_90.ballID, 0);
    v1 = ov12_02235FC8(param0->unk_90.ballID, 1);
    v2 = ov12_02235FC8(param0->unk_90.ballID, 2);
    v3 = ov12_02235FC8(param0->unk_90.ballID, 3);

    {
        NARC *v6;

        v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param0->unk_90.heapID);

        SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_90.cellActorSys, param0->unk_2C, v6, v0, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_90.target + 6000);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_90.paletteSys, 2, param0->unk_90.cellActorSys, param0->unk_2C, v6, v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param0->unk_90.target + 6000);
        SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_90.cellActorSys, param0->unk_2C, v6, v2, TRUE, param0->unk_90.target + 6000);
        SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_90.cellActorSys, param0->unk_2C, v6, v3, TRUE, param0->unk_90.target + 6000);
        NARC_dtor(v6);
    }
}

static void ov12_02237D8C(BallRotation *param0)
{
    int v0;
    SpriteTemplate v1;
    int v2;

    ov12_02237B14(param0, &v1.x, &v1.y);

    v1.z = 0;
    v1.animIdx = 0;
    v1.priority = 0;
    v1.plttIdx = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.bgPriority = param0->unk_90.bgPrio;
    v1.vramTransfer = FALSE;

    for (v0 = 0; v0 < 6; v0++) {
        v1.resources[v0] = param0->unk_90.target + 6000;
    }

    param0->unk_30 = SpriteSystem_NewSprite(param0->unk_90.cellActorSys, param0->unk_2C, &v1);

    ManagedSprite_SetDrawFlag(param0->unk_30, TRUE);
    ManagedSprite_SetAffineOverwriteMode(param0->unk_30, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAnimationFrame(param0->unk_30, 0);
    ManagedSprite_SetAnim(param0->unk_30, 0);
    ManagedSprite_TickFrame(param0->unk_30);

    BattleAnimSystem_SetDefaultAlphaBlending();
}

void ov12_02237E0C(BallRotation *param0, int param1)
{
    ManagedSprite_SetDrawFlag(param0->unk_30, param1);
}

void ov12_02237E18(BallRotation *param0, s16 param1, s16 param2)
{
    ManagedSprite_SetPositionXY(param0->unk_30, param1, param2);
}

void ov12_02237E24(BallRotation *param0, u16 param1)
{
    ManagedSprite_SetAffineZRotation(param0->unk_30, param1);
}

void ov12_02237E30(BallRotation *param0, BOOL param1)
{
    param0->unk_24 = param1;
}

void ov12_02237E34(BallRotation *param0, int param1)
{
    ManagedSprite_SetPriority(param0->unk_30, param1);
}

void ov12_02237E40(BallRotation *param0, int param1)
{
    ManagedSprite_SetExplicitPriority(param0->unk_30, param1);
}

void ov12_02237E4C(BallRotation *param0, int param1)
{
    param0->unk_DC = param1;
}
