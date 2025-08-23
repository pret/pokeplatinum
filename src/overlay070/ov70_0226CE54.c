#include "overlay070/ov70_0226CE54.h"

#include <nitro.h>
#include <string.h>

#include "generated/species.h"

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/ov70_0225C858.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02261E10.h"
#include "overlay070/struct_ov70_0225C894_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_02261E10_decl.h"

#include "heap.h"
#include "math_util.h"
#include "sound_playback.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    union {
        struct {
            s16 unk_00;
            s16 unk_02;
            u16 unk_04;
            s16 unk_06;
            s16 unk_08;
        } val1;
    } unk_04;
} UnkStruct_ov70_0226D2A0;

typedef struct UnkStruct_ov70_0226CF38_t {
    UnkStruct_ov70_0225DEE8 *unk_00;
    UnkStruct_ov66_0222DFF8 *unk_04;
    UnkStruct_ov70_02261E10 *unk_08;
    UnkStruct_ov70_0225C894 *unk_0C;
    u8 unk_10[9][3];
    u8 unk_2B;
    UnkStruct_ov70_0226D2A0 unk_2C[9];
    UnkStruct_ov63_0222CC3C unk_AA[3];
    u16 unk_B6;
    u16 unk_B8;
    fx32 unk_BC;
    fx32 unk_C0;
} UnkStruct_ov70_0226CF38;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov70_0226E774;

static void ov70_0226D020(UnkStruct_ov70_0226CF38 *param0, u32 param1);
static void ov70_0226D46C(UnkStruct_ov70_0226CF38 *param0, u32 param1);
static void ov70_0226D0E8(UnkStruct_ov70_0226CF38 *param0, u32 param1, BOOL param2, BOOL param3, u32 param4);
static void ov70_0226D24C(BOOL param0, BOOL param1, BOOL param2, u32 seqID);
static void ov70_0226D27C(BOOL param0, BOOL param1, BOOL param2, u32 species);
static BOOL ov70_0226D2A0(UnkStruct_ov70_0226D2A0 *param0, u32 param1, UnkStruct_ov70_02261E10 *param2, u32 param3);
static BOOL ov70_0226D2D8(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2);
static void ov70_0226D31C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2);
static void ov70_0226D33C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2);
static BOOL ov70_0226D35C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2);

static const UnkStruct_ov70_0226E774 Unk_ov70_0226E774[5] = {
    {
        .unk_00 = SPECIES_TORCHIC,
        .unk_02 = SPECIES_CHARIZARD,
        .unk_04 = 0xFFFE,
        .unk_06 = SEQ_SE_PL_FLOAT10,
        .unk_08 = SEQ_SE_PL_FIRE,
        .unk_0A = SEQ_SE_PL_FLOAT03,
    },
    {
        .unk_00 = SPECIES_PIPLUP,
        .unk_02 = SPECIES_GYARADOS,
        .unk_04 = SEQ_SE_PL_FLOAT10,
        .unk_06 = SEQ_SE_PL_FLOAT12,
        .unk_08 = SEQ_SE_PL_WATER,
        .unk_0A = SEQ_SE_PL_FLOAT10,
    },
    {
        .unk_00 = SPECIES_PIKACHU,
        .unk_02 = SPECIES_MAGNEZONE,
        .unk_04 = 0xFFFE,
        .unk_06 = SEQ_SE_PL_FLOAT10,
        .unk_08 = 0xFFFE,
        .unk_0A = SEQ_SE_PL_ELECTRO,
    },
    {
        .unk_00 = SPECIES_BULBASAUR,
        .unk_02 = SPECIES_CARNIVINE,
        .unk_04 = SEQ_SE_PL_WHIP,
        .unk_06 = SEQ_SE_PL_FLOAT11,
        .unk_08 = SEQ_SE_PL_FLOAT03,
        .unk_0A = SEQ_SE_PL_FLOAT10,
    },
    {
        .unk_00 = SPECIES_MEW,
        .unk_02 = SPECIES_MEW,
        .unk_04 = 0xFFFE,
        .unk_06 = SEQ_SE_PL_FLOAT10,
        .unk_08 = SEQ_SE_PL_KIRAKIRA4,
        .unk_0A = SEQ_SE_PL_FLOAT10,
    },
};

UnkStruct_ov70_0226CF38 *ov70_0226CE54(UnkStruct_ov70_0225DEE8 *param0, u32 heapID)
{
    UnkStruct_ov70_0226CF38 *v0;
    int v1;
    u16 v2, v3;
    static const u8 v4[3] = {
        63,
        62,
        61,
    };

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov70_0226CF38));
    memset(v0, 0, sizeof(UnkStruct_ov70_0226CF38));

    v0->unk_00 = param0;
    v0->unk_04 = ov70_0225DEE8(param0);
    v0->unk_08 = ov70_0225DEF8(param0);
    v0->unk_0C = ov70_0225DF00(param0);
    v0->unk_BC = ov70_0225C8A8(v0->unk_0C) + 6;
    v0->unk_C0 = -8 - v0->unk_BC;
    v0->unk_BC = (v0->unk_BC) * 16 * (FX32_ONE);
    v0->unk_C0 = (v0->unk_C0) * 16 * (FX32_ONE);

    for (v1 = 0; v1 < 3; v1++) {
        ov70_0225C8D8(v0->unk_0C, v4[v1], &v2, &v3, 0);
        v0->unk_AA[v1].unk_00 = (v2) * 16;
        v0->unk_AA[v1].unk_02 = (v3) * 16;
    }

    for (v1 = 0; v1 < 9; v1++) {
        ov70_022622B0(v0->unk_08, v1, v0->unk_BC);

        if (ov66_0222EB7C(v0->unk_04, v1) == 1) {
            ov70_0226D020(v0, v1);
            ov70_0226D46C(v0, v1);
        }
    }

    return v0;
}

void ov70_0226CF38(UnkStruct_ov70_0226CF38 *param0)
{
    Heap_Free(param0);
}

void ov70_0226CF40(UnkStruct_ov70_0226CF38 *param0)
{
    int v0;
    BOOL v1;
    u32 v2;
    u32 v3;
    u32 v4;
    BOOL v5;
    BOOL v6;

    v4 = ov66_0222E338(param0->unk_04);
    v2 = ov66_0222EBA4(param0->unk_04, v4);

    if (v2 == 0xffffffff) {
        v5 = 0;
    } else {
        ov66_0222EC04(v2, &v2, &v3);
        v5 = 1;
    }

    for (v0 = 0; v0 < 9; v0++) {
        if (ov66_0222EB7C(param0->unk_04, v0) == 1) {
            ov70_022623C4(param0->unk_08, v0, 1);
            ov70_0226D020(param0, v0);
            ov70_0226D46C(param0, v0);

            if (v5) {
                if (v2 == v0) {
                    v6 = 1;
                } else {
                    v6 = 0;
                }
            }

            ov70_0226D0E8(param0, v0, v5, v6, v3);
        } else {
            ov70_022623C4(param0->unk_08, v0, 0);
        }
    }

    for (v0 = 0; v0 < 9; v0++) {
        v1 = ov70_0226241C(param0->unk_08, v0);
        param0->unk_10[v0][0] = v1;

        v1 = ov70_0226D2D8(&param0->unk_2C[v0], param0->unk_08, v0);
        param0->unk_10[v0][1] = v1;

        v1 = ov70_02262444(param0->unk_08, v0);
        param0->unk_10[v0][2] = v1;
    }
}

BOOL ov70_0226CFFC(const UnkStruct_ov70_0226CF38 *param0, u32 param1, int param2)
{
    GF_ASSERT(param1 < 9);
    GF_ASSERT(param2 < 3);
    return param0->unk_10[param1][param2];
}

static void ov70_0226D020(UnkStruct_ov70_0226CF38 *param0, u32 param1)
{
    s32 v0;
    s32 v1;
    fx32 v2;
    fx32 v3;

    v0 = ov66_0222EB8C(param0->unk_04, param1);
    v1 = ov66_0222EB9C(param0->unk_04);
    v3 = FX_Div(param0->unk_C0, FX32_CONST(2));
    v2 = FX_Div(FX_Mul(FX32_CONST(v0), v3), FX32_CONST(v1));
    v2 = FX_Mul(v2, FX32_CONST(2));
    v2 += param0->unk_BC;

    ov70_022622B0(param0->unk_08, param1, v2);
}

static void ov70_0226D0E8(UnkStruct_ov70_0226CF38 *param0, u32 param1, BOOL param2, BOOL param3, u32 param4)
{
    int v0;
    BOOL v1;
    BOOL v2 = 0;
    u32 v3;
    u32 v4;
    BOOL v5;

    v4 = ov66_0222EB38(param0->unk_04);
    v3 = ov66_0222EB28(param0->unk_04);

    for (v0 = 0; v0 < 3; v0++) {
        v1 = ov66_0222EBE4(param0->unk_04, (param1 * 3) + v0);
        v5 = 0;

        if (param3 == 1) {
            if (v0 == param4) {
                v5 = 1;
            }
        }

        if (v1 == 1) {
            switch (v0) {
            case 0:
                v2 = ov70_02262374(param0->unk_08, param1);

                if (v2 == 1) {
                    if ((param1 % 3) == 2) {
                        ov70_0226D27C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_02);

                        if (Unk_ov70_0226E774[v4].unk_08 != 0xfffe) {
                            ov70_0226D24C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_08);
                        }
                    } else {
                        ov70_0226D27C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_00);

                        if (Unk_ov70_0226E774[v4].unk_04 != 0xfffe) {
                            ov70_0226D24C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_04);
                        }
                    }

                    ov66_0222EBF4(param0->unk_04, (param1 * 3) + v0);
                }
                break;
            case 1: {
                u32 v6;

                if ((param1 % 3) == 2) {
                    v6 = 1;
                } else {
                    v6 = 0;
                }

                v2 = ov70_0226D2A0(&param0->unk_2C[param1], v6, param0->unk_08, param1);

                if (v2 == 1) {
                    ov66_0222EBF4(param0->unk_04, (param1 * 3) + v0);
                    ov70_0226D24C(param2, param3, v5, SEQ_SE_PL_FLOAT13);
                }
            } break;
            case 2:
                v2 = ov70_0226239C(param0->unk_08, param1);

                if (v2 == 1) {
                    ov66_0222EBF4(param0->unk_04, (param1 * 3) + v0);

                    if ((param1 % 3) == 2) {
                        ov70_0226D24C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_0A);
                    } else {
                        ov70_0226D24C(param2, param3, v5, Unk_ov70_0226E774[v4].unk_06);
                    }
                }
                break;
            }
        }
    }
}

static void ov70_0226D24C(BOOL param0, BOOL param1, BOOL param2, u32 seqID)
{
    if (param0) {
        if (param1) {
            if (param2) {
                Sound_PlayEffectOnPlayer(seqID, 5);
            } else {
                Sound_PlayEffect(seqID);
            }
        }
    } else {
        Sound_PlayEffect(seqID);
    }
}

static void ov70_0226D27C(BOOL param0, BOOL param1, BOOL param2, u32 species)
{
    if (param0) {
        if (param1) {
            Sound_PlayPokemonCry(species, 0);
        }
    } else {
        Sound_PlayPokemonCry(species, 0);
    }
}

static BOOL ov70_0226D2A0(UnkStruct_ov70_0226D2A0 *param0, u32 param1, UnkStruct_ov70_02261E10 *param2, u32 param3)
{
    static void (*const v0[])(UnkStruct_ov70_0226D2A0 *, UnkStruct_ov70_02261E10 *, u32) = {
        ov70_0226D31C,
        ov70_0226D33C
    };
    GF_ASSERT(param1 < 2);

    if (param0->unk_00 == 1) {
        return 0;
    }

    param0->unk_02 = param1;
    param0->unk_00 = 1;
    v0[param1](param0, param2, param3);

    return 1;
}

static BOOL ov70_0226D2D8(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2)
{
    BOOL v0;

    static BOOL (*const v1[])(UnkStruct_ov70_0226D2A0 *, UnkStruct_ov70_02261E10 *, u32) = {
        ov70_0226D35C,
        ov70_0226D35C
    };

    if (param0->unk_00) {
        v0 = v1[param0->unk_02](param0, param1, param2);

        if (v0 == 1) {
            memset(param0, 0, sizeof(UnkStruct_ov70_0226D2A0));
        }

        return 1;
    }

    return 0;
}

static void ov70_0226D31C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2)
{
    param0->unk_04.val1.unk_00 = 0;
    param0->unk_04.val1.unk_02 = 8;
    param0->unk_04.val1.unk_04 = (CalcAngleRotationIdx_Wraparound(5));
    param0->unk_04.val1.unk_06 = 2;
    param0->unk_04.val1.unk_08 = 4;
}

static void ov70_0226D33C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2)
{
    param0->unk_04.val1.unk_00 = 0;
    param0->unk_04.val1.unk_02 = 16;
    param0->unk_04.val1.unk_04 = (CalcAngleRotationIdx_Wraparound(10));
    param0->unk_04.val1.unk_06 = 4;
    param0->unk_04.val1.unk_08 = 2;
}

static BOOL ov70_0226D35C(UnkStruct_ov70_0226D2A0 *param0, UnkStruct_ov70_02261E10 *param1, u32 param2)
{
    VecFx32 v0 = { 0 };
    u16 v1;
    u16 v2;
    BOOL v3 = 0;

    if ((param0->unk_04.val1.unk_00 + 1) < param0->unk_04.val1.unk_02) {
        param0->unk_04.val1.unk_00++;
    } else {
        param0->unk_04.val1.unk_00 = 0;

        if ((param0->unk_04.val1.unk_08 - 1) > 0) {
            param0->unk_04.val1.unk_08--;
        } else {
            v3 = 1;
        }
    }

    v2 = (param0->unk_04.val1.unk_00 * 0xffff) / param0->unk_04.val1.unk_02;
    v1 = FX_Mul(FX_SinIdx(v2), FX32_CONST(param0->unk_04.val1.unk_04)) >> FX32_SHIFT;

    v0.y = FX_Mul(FX_SinIdx(v2), FX32_CONST(param0->unk_04.val1.unk_06));

    ov70_022623F0(param1, param2, v1);
    ov70_022622EC(param1, param2, &v0);

    return v3;
}

static void ov70_0226D46C(UnkStruct_ov70_0226CF38 *param0, u32 param1)
{
    int v0, v1;
    u32 v2;
    u32 v3;
    VecFx32 v4;
    fx32 v5;

    for (v0 = 0; v0 < 3; v0++) {
        v2 = (param1 * 3) + v0;
        v3 = ov66_0222EC30(param0->unk_04, v2);

        ov70_02262318(param0->unk_08, param1, v0, &v4);

        for (v1 = v3; v1 < 3; v1++) {
            v5 = ((param0->unk_AA[v1].unk_00 + 16) * (FX32_ONE));

            if (v5 > v4.x) {
                ov66_0222EC20(param0->unk_04, v2, v1);
            }
        }
    }
}
