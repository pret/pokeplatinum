#include "unk_02015F84.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_defs/poke_animation_settings.h"

#include "heap.h"
#include "narc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0200762C.h"

typedef struct PokemonAnimationSys PokemonAnimationSys;
typedef struct UnkStruct_02016DAC_t UnkStruct_02016DAC;
typedef struct UnkStruct_02016E64_t UnkStruct_02016E64;

typedef void (*UnkFuncPtr_020E55D4)(UnkStruct_02016E64 *);
typedef void (*UnkFuncPtr_02016DAC)(UnkStruct_02016DAC *, UnkStruct_02016E64 *);

typedef struct UnkStruct_02016DAC_t {
    BOOL unk_00;
    int unk_04[8];
    int *unk_24;
    int *unk_28;
    u8 unk_2C;
    u8 unk_2D;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    UnkFuncPtr_02016DAC unk_50;
} UnkStruct_02016DAC;

typedef struct UnkStruct_02016E64_t {
    PokemonSprite *unk_00;
    SysTask *unk_04;
    void *unk_08;
    u32 *unk_0C;
    BOOL unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    BOOL unk_20;
    int unk_24[8];
    int unk_44;
    int unk_48;
    int unk_4C;
    u32 *unk_50;
    int unk_54;
    int unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
    int unk_78;
    UnkStruct_02016DAC unk_7C[4];
    u8 unk_1C4;
    u8 unk_1C5;
    u8 unk_1C6;
    u8 unk_1C7;
} UnkStruct_02016E64;

typedef struct PokemonAnimationSys {
    UnkStruct_02016E64 *pokeAnimation;
    int heapID;
    u8 reverse;
    u8 animation;
} PokemonAnimationSys;

typedef struct {
    UnkFuncPtr_02016DAC unk_00;
    int unk_04;
    int unk_08;
} UnkStruct_020E5598;

static int sub_02016280(u32 *param0, u8 param1, u8 param2);
static int sub_02016294(u32 *param0, u8 param1);
static int sub_020162A0(u32 *param0);
static void sub_02016D04(UnkStruct_02016E64 *param0, const int param1);
static void sub_02016150(SysTask *param0, void *param1);
static void sub_02016188(UnkStruct_02016E64 *param0);
static void sub_02016530(UnkStruct_02016E64 *param0);
static void sub_02016540(UnkStruct_02016E64 *param0);
static void sub_02016548(UnkStruct_02016E64 *param0);
static void sub_02016678(UnkStruct_02016E64 *param0);
static void sub_02016758(UnkStruct_02016E64 *param0);
static void sub_02016590(UnkStruct_02016E64 *param0);
static void sub_020165B8(UnkStruct_02016E64 *param0);
static void sub_020165DC(UnkStruct_02016E64 *param0);
static void sub_02016604(UnkStruct_02016E64 *param0);
static void sub_02016628(UnkStruct_02016E64 *param0);
static void sub_02016650(UnkStruct_02016E64 *param0);
static void sub_0201677C(UnkStruct_02016E64 *param0);
static void sub_020167A0(UnkStruct_02016E64 *param0);
static void sub_020167BC(UnkStruct_02016E64 *param0);
static void sub_020167E8(UnkStruct_02016E64 *param0);
static void sub_02016814(UnkStruct_02016E64 *param0);
static void sub_02016894(UnkStruct_02016E64 *param0);
static void sub_020168C8(UnkStruct_02016E64 *param0);
static void sub_02016900(UnkStruct_02016E64 *param0);
static void sub_02016948(UnkStruct_02016E64 *param0);
static void sub_02016998(UnkStruct_02016E64 *param0);
static void sub_02016A60(UnkStruct_02016E64 *param0);
static void sub_02016AA8(UnkStruct_02016E64 *param0);
static void sub_02016B10(UnkStruct_02016E64 *param0);
static void sub_02016B64(UnkStruct_02016E64 *param0);
static void sub_02016B78(UnkStruct_02016E64 *param0);
static void sub_02016BB8(UnkStruct_02016E64 *param0);
static void sub_02016BD4(UnkStruct_02016E64 *param0);
static void sub_02016BE0(UnkStruct_02016E64 *param0);
static void sub_02016C18(UnkStruct_02016E64 *param0);
static void sub_02016C24(UnkStruct_02016E64 *param0);
static void sub_02016C30(UnkStruct_02016E64 *param0);
static void sub_02016C3C(UnkStruct_02016E64 *param0);
static void sub_02016C48(UnkStruct_02016E64 *param0);
static void sub_02016DAC(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1);
static void sub_02016E64(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1);
static void sub_02016F24(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1);
static void sub_02016F60(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1);
static void sub_02016F9C(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1);

static const UnkFuncPtr_020E55D4 Unk_020E55D4[34] = {
    sub_02016530,
    sub_02016540,
    sub_02016548,
    sub_02016678,
    sub_02016758,
    sub_02016590,
    sub_020165B8,
    sub_020165DC,
    sub_02016604,
    sub_02016628,
    sub_02016650,
    sub_0201677C,
    sub_020167A0,
    sub_020167BC,
    sub_020167E8,
    sub_02016814,
    sub_02016894,
    sub_020168C8,
    sub_02016900,
    sub_02016948,
    sub_02016998,
    sub_02016A60,
    sub_02016AA8,
    sub_02016B10,
    sub_02016BD4,
    sub_02016BE0,
    sub_02016C18,
    sub_02016C24,
    sub_02016C30,
    sub_02016C3C,
    sub_02016C48,
    sub_02016B64,
    sub_02016B78,
    sub_02016BB8
};

static const UnkStruct_020E5598 Unk_020E5598[] = {
    { sub_02016DAC, 0x6, 0x1 },
    { sub_02016E64, 0x6, 0x1 },
    { sub_02016F24, 0x4, 0x0 },
    { sub_02016F60, 0x3, 0x0 },
    { sub_02016F9C, 0x4, 0x0 }
};

PokemonAnimationSys *sub_02015F84(const int param0, const int param1, const u8 param2)
{
    PokemonAnimationSys *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(PokemonAnimationSys));
    v0->reverse = param2;
    v0->animation = param1;
    v0->heapID = param0;
    v0->pokeAnimation = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02016E64) * param1);

    MI_CpuClear8(v0->pokeAnimation, sizeof(UnkStruct_02016E64) * param1);

    return v0;
}

void sub_02015FB8(PokemonAnimationSys *param0)
{
    Heap_FreeToHeap(param0->pokeAnimation);
    Heap_FreeToHeap(param0);
}

void PokeAnimation_Init(PokemonAnimationSys *param0, PokemonSprite *param1, const PokeAnimationSettings *param2, const u8 param3)
{
    u8 v0 = param3;
    int v1 = param2->animation;
    int v2 = param2->startDelay;

    GF_ASSERT(v0 < param0->animation);
    GF_ASSERT(param0->pokeAnimation[v0].unk_10 == 0);

    MI_CpuClear8(&param0->pokeAnimation[v0], sizeof(UnkStruct_02016E64));

    param0->pokeAnimation[v0].unk_10 = 1;
    param0->pokeAnimation[v0].unk_00 = param1;

    if (v1 >= (50 + 84 + 9)) {
        v1 = 0;
        v2 = 0;
    }

    param0->pokeAnimation[v0].unk_14 = v1;

    if (param0->reverse) {
        param0->pokeAnimation[v0].unk_1C4 = param2->reverse;
    } else {
        param0->pokeAnimation[v0].unk_1C4 = 0;
    }

    param0->pokeAnimation[v0].unk_08 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_POKEANIME__PL_POKE_ANM, param0->pokeAnimation[v0].unk_14, param0->heapID);
    param0->pokeAnimation[v0].unk_0C = (u32 *)param0->pokeAnimation[v0].unk_08;
    param0->pokeAnimation[v0].unk_1C = 0;
    param0->pokeAnimation[v0].unk_20 = 0;
    param0->pokeAnimation[v0].unk_1C5 = 0;
    param0->pokeAnimation[v0].unk_1C6 = 28;
    param0->pokeAnimation[v0].unk_1C7 = 0;
    param0->pokeAnimation[v0].unk_04 = SysTask_Start(sub_02016150, &param0->pokeAnimation[v0], 0);
    param0->pokeAnimation[v0].unk_54 = v2;
    param0->pokeAnimation[v0].unk_58 = sub_020080C0(param1, 0);
    param0->pokeAnimation[v0].unk_5C = sub_020080C0(param1, 1);
    param0->pokeAnimation[v0].unk_60 = 0;
    param0->pokeAnimation[v0].unk_64 = 0;
    param0->pokeAnimation[v0].unk_68 = 0;
    param0->pokeAnimation[v0].unk_6C = 0;
    param0->pokeAnimation[v0].unk_70 = 0;
    param0->pokeAnimation[v0].unk_74 = 0;
    param0->pokeAnimation[v0].unk_78 = 0;
}

BOOL sub_020160F4(PokemonAnimationSys *param0, const u8 param1)
{
    GF_ASSERT(param1 < param0->animation);
    return param0->pokeAnimation[param1].unk_20;
}

void sub_02016114(PokemonAnimationSys *param0, const u8 param1)
{
    if (param0->pokeAnimation[param1].unk_04 != NULL) {
        SysTask_Done(param0->pokeAnimation[param1].unk_04);

        param0->pokeAnimation[param1].unk_04 = NULL;
        param0->pokeAnimation[param1].unk_20 = 1;
        param0->pokeAnimation[param1].unk_10 = 0;

        Heap_FreeToHeap(param0->pokeAnimation[param1].unk_08);
    }
}

static void sub_02016150(SysTask *param0, void *param1)
{
    UnkStruct_02016E64 *v0 = (UnkStruct_02016E64 *)(param1);

    if (v0->unk_54 == 0) {
        sub_02016188(v0);
    } else {
        v0->unk_54--;
    }

    if (v0->unk_1C) {
        v0->unk_20 = 1;
        v0->unk_10 = 0;

        SysTask_Done(param0);
        v0->unk_04 = NULL;
        Heap_FreeToHeap(v0->unk_08);
    }
}

static void sub_02016188(UnkStruct_02016E64 *param0)
{
    UnkFuncPtr_020E55D4 v0;

    param0->unk_18 = 0;
    param0->unk_44 = 0;

    {
        u8 v1;
        u8 v2;
        UnkStruct_02016DAC *v3;

        v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v3 = &(param0->unk_7C[v1]);

            if (v3->unk_00) {
                if (v3->unk_2D == 0) {
                    v3->unk_50(v3, param0);
                } else {
                    v3->unk_2D--;
                }
            } else {
                v2++;
            }
        }

        if (v2 == 4) {
            param0->unk_1C5 = 0;
        }
    }

    if (param0->unk_1C5) {
        sub_02016A60(param0);
        sub_02016AA8(param0);
        return;
    }

    if (param0->unk_1C7) {
        if (!sub_020087B4(param0->unk_00)) {
            param0->unk_1C7 = 0;
        } else {
            return;
        }
    }

    while (TRUE) {
        param0->unk_44++;

        GF_ASSERT((u32) * (param0->unk_0C) < 34);

        v0 = Unk_020E55D4[(u32) * (param0->unk_0C)];
        v0(param0);

        if (param0->unk_1C) {
            break;
        } else {
            param0->unk_0C += 1;

            if (param0->unk_18) {
                break;
            } else if (param0->unk_1C5) {
                sub_02016A60(param0);
                sub_02016AA8(param0);
                break;
            }
        }

        if (param0->unk_44 >= 256) {
            GF_ASSERT(FALSE);

            param0->unk_1C = 1;
            break;
        }
    }
}

static int sub_02016280(u32 *param0, u8 param1, u8 param2)
{
    int v0 = param0[param1];

    if (param2 != 1) {
        GF_ASSERT(0);
    }

    return v0;
}

static int sub_02016294(u32 *param0, u8 param1)
{
    int v0;

    v0 = sub_02016280(param0, 0, param1);
    return v0;
}

static int sub_020162A0(u32 *param0)
{
    return sub_02016294(param0, 1);
}

static UnkStruct_02016DAC *sub_020162AC(UnkStruct_02016E64 *param0, const u8 param1)
{
    UnkStruct_02016DAC *v0;
    u8 v1;

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &(param0->unk_7C[v1]);

        if (v0->unk_00 == 0) {
            MI_CpuClear8(v0, sizeof(UnkStruct_02016DAC));

            v0->unk_00 = 1;
            v0->unk_50 = Unk_020E5598[param1].unk_00;

            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void sub_020162F8(UnkStruct_02016E64 *param0, int *param1)
{
    param0->unk_0C += 1;
    (*param1) = (int)sub_020162A0(param0->unk_0C);
}

static void sub_0201630C(UnkStruct_02016E64 *param0, u8 *param1)
{
    param0->unk_0C += 1;
    (*param1) = (u8)sub_020162A0(param0->unk_0C);
}

static void sub_02016320(UnkStruct_02016E64 *param0, u8 *param1)
{
    param0->unk_0C += 1;
    (*param1) = (u8)sub_020162A0(param0->unk_0C);
    GF_ASSERT((*param1) < 8);
}

static void sub_02016340(UnkStruct_02016E64 *param0, u8 *param1, u8 *param2)
{
    sub_02016320(param0, param1);
    sub_02016320(param0, param2);
}

static void sub_02016354(UnkStruct_02016E64 *param0, u8 *param1, int *param2, int *param3)
{
    u8 v0, v1;
    u8 v2;

    sub_02016320(param0, param1);
    sub_0201630C(param0, &v2);

    if (v2 == 18) {
        sub_02016320(param0, &v0);
        (*param2) = param0->unk_24[v0];
        sub_020162F8(param0, param3);
    } else if (v2 == 19) {
        sub_02016340(param0, &v0, &v1);
        (*param2) = param0->unk_24[v0];
        (*param3) = param0->unk_24[v1];
    } else {
        GF_ASSERT(0);
    }
}

static void sub_020163C8(UnkStruct_02016E64 *param0, u8 *param1, int *param2, int *param3)
{
    u8 v0, v1;
    u8 v2, v3;

    sub_02016320(param0, param1);
    sub_0201630C(param0, &v2);
    sub_0201630C(param0, &v3);

    if (v2 == 18) {
        sub_020162F8(param0, param2);
    } else if (v2 == 19) {
        sub_02016320(param0, &v0);
        (*param2) = param0->unk_24[v0];
    } else {
        GF_ASSERT(0);
    }

    if (v3 == 18) {
        sub_020162F8(param0, param3);
    } else if (v3 == 19) {
        sub_02016320(param0, &v1);
        (*param3) = param0->unk_24[v1];
    } else {
        GF_ASSERT(0);
    }
}

static void sub_02016454(UnkStruct_02016E64 *param0, u8 *param1, int *param2, int *param3)
{
    u8 v0, v1, v2;
    int v3;
    int v4;
    u8 v5;

    sub_02016340(param0, param1, &v0);
    v3 = param0->unk_24[v0];
    sub_0201630C(param0, &v5);

    if (v5 == 20) {
        sub_020162F8(param0, param3);
    } else if (v5 == 21) {
        sub_02016320(param0, &v1);
        (*param3) = param0->unk_24[v1];
    } else {
        GF_ASSERT(0);
    }

    sub_0201630C(param0, &v5);

    if (v5 == 20) {
        sub_020162F8(param0, &v4);
    } else if (v5 == 21) {
        sub_02016320(param0, &v2);
        v4 = param0->unk_24[v2];
    } else {
        GF_ASSERT(0);
    }

    (*param2) = v3 + v4;
    (*param2) %= 0x10000;
}

static u8 sub_020164FC(const int *param0, const int *param1)
{
    int v0;

    v0 = (*param0) - (*param1);

    if (v0 < 0) {
        return 15;
    } else if (v0 > 0) {
        return 16;
    } else {
        return 17;
    }
}

static void sub_02016514(UnkStruct_02016E64 *param0)
{
    int v0;

    v0 = (-param0->unk_74) / 8;
    sub_02008274(param0->unk_00, 1, v0);
}

static void sub_02016530(UnkStruct_02016E64 *param0)
{
    sub_02016548(param0);

    param0->unk_18 = 1;
    param0->unk_1C = 1;
}

static void sub_02016540(UnkStruct_02016E64 *param0)
{
    param0->unk_18 = 1;
}

static void sub_02016548(UnkStruct_02016E64 *param0)
{
    sub_02007DEC(param0->unk_00, 0, param0->unk_58);
    sub_02007DEC(param0->unk_00, 1, param0->unk_5C);

    sub_02007DEC(param0->unk_00, 9, 0);
    sub_02007DEC(param0->unk_00, 10, 0);

    sub_02007DEC(param0->unk_00, 12, 0x100);
    sub_02007DEC(param0->unk_00, 13, 0x100);
}

static void sub_02016590(UnkStruct_02016E64 *param0)
{
    u8 v0, v1;

    sub_02016340(param0, &v0, &v1);
    param0->unk_24[v0] = param0->unk_24[v1];
}

static void sub_020165B8(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1, v2;

    sub_02016354(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = v1 + v2;
}

static void sub_020165DC(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1, v2;

    sub_02016354(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = v1 * v2;
}

static void sub_02016604(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1, v2;

    sub_020163C8(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = v1 - v2;
}

static void sub_02016628(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1, v2;

    sub_020163C8(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = v1 / v2;
}

static void sub_02016650(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1, v2;

    sub_020163C8(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = v1 % v2;
}

static void sub_02016678(UnkStruct_02016E64 *param0)
{
    u8 v0, v1;
    u8 v2, v3;
    u8 v4;

    {
        int v5, v6;

        sub_0201630C(param0, &v4);

        if (v4 == 20) {
            sub_02016320(param0, &v0);
            v5 = param0->unk_24[v0];
            sub_020162F8(param0, &v6);
        } else if (v4 == 21) {
            sub_02016340(param0, &v0, &v1);
            v5 = param0->unk_24[v0];
            v6 = param0->unk_24[v1];
        } else {
            GF_ASSERT(0);
        }

        sub_0201630C(param0, &v2);
        GF_ASSERT(v2 <= 17);

        v3 = sub_020164FC(&v5, &v6);
    }

    {
        int v7;

        sub_0201630C(param0, &v4);

        if (v4 == 20) {
            sub_02016320(param0, &v0);
            sub_020162F8(param0, &v7);
        } else if (v4 == 21) {
            sub_02016340(param0, &v0, &v1);
            v7 = param0->unk_24[v1];
        } else {
            GF_ASSERT(0);
        }

        if (v2 == v3) {
            param0->unk_24[v0] = v7;
        }
    }
}

static void sub_02016758(UnkStruct_02016E64 *param0)
{
    u8 v0;

    sub_02016320(param0, &v0);

    param0->unk_0C += 1;
    param0->unk_24[v0] = (int)sub_020162A0(param0->unk_0C);
}

static void sub_0201677C(UnkStruct_02016E64 *param0)
{
    GF_ASSERT(param0->unk_50 == NULL);

    param0->unk_0C += 1;
    param0->unk_50 = param0->unk_0C;
    param0->unk_48 = (int)sub_020162A0(param0->unk_0C);
    param0->unk_4C = 0;
}

static void sub_020167A0(UnkStruct_02016E64 *param0)
{
    param0->unk_4C++;

    if (param0->unk_4C >= param0->unk_48) {
        param0->unk_50 = NULL;
        param0->unk_4C = 0;
        param0->unk_48 = 0;
    } else {
        param0->unk_0C = param0->unk_50;
    }
}

static void sub_020167BC(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1;

    sub_020162F8(param0, &v1);
    sub_02016320(param0, &v0);
    sub_02007DEC(param0->unk_00, v1, param0->unk_24[v0]);
}

static void sub_020167E8(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1;

    sub_020162F8(param0, &v1);
    sub_02016320(param0, &v0);
    sub_02008274(param0->unk_00, v1, param0->unk_24[v0]);
}

static void sub_02016814(UnkStruct_02016E64 *param0)
{
    int v0;
    int v1;

    sub_020162F8(param0, &v0);

    {
        u8 v2;
        u8 v3;

        sub_0201630C(param0, &v3);

        if (v3 == 20) {
            sub_020162F8(param0, &v1);
        } else if (v3 == 21) {
            sub_02016320(param0, &v2);
            v1 = param0->unk_24[v2];
        } else {
            GF_ASSERT(0);
        }
    }

    {
        u8 v4;

        sub_0201630C(param0, &v4);

        if (v4 == 22) {
            sub_02007DEC(param0->unk_00, v0, v1);
        } else if (v4 == 23) {
            sub_02008274(param0->unk_00, v0, v1);
        } else {
            GF_ASSERT(0);
        }
    }
}

static void sub_02016894(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1;
    int v2;

    sub_02016454(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = FX_Whole(FX_SinIdx(v1) * v2);
}

static void sub_020168C8(UnkStruct_02016E64 *param0)
{
    u8 v0;
    int v1;
    int v2;

    sub_02016454(param0, &v0, &v1, &v2);
    param0->unk_24[v0] = FX_Whole(FX_CosIdx(v1) * v2);
}

static void sub_02016900(UnkStruct_02016E64 *param0)
{
    u8 v0;
    u8 v1;

    sub_02016320(param0, &v0);
    sub_0201630C(param0, &v1);

    if (v1 == 8) {
        param0->unk_60 = param0->unk_24[v0];
    } else if (v1 == 9) {
        param0->unk_64 = param0->unk_24[v0];
    } else {
        GF_ASSERT(0);
    }
}

static void sub_02016948(UnkStruct_02016E64 *param0)
{
    u8 v0;
    u8 v1;

    sub_02016320(param0, &v0);
    sub_0201630C(param0, &v1);

    if (v1 == 8) {
        param0->unk_60 += param0->unk_24[v0];
    } else if (v1 == 9) {
        param0->unk_64 += param0->unk_24[v0];
    } else {
        GF_ASSERT(0);
    }
}

static void sub_02016998(UnkStruct_02016E64 *param0)
{
    int *v0;
    int v1;

    {
        u8 v2;

        sub_0201630C(param0, &v2);

        if (v2 == 8) {
            v0 = &param0->unk_60;
        } else if (v2 == 9) {
            v0 = &param0->unk_64;
        } else if (v2 == 10) {
            v0 = &param0->unk_68;
        } else if (v2 == 11) {
            v0 = &param0->unk_6C;
        } else if (v2 == 12) {
            v0 = &param0->unk_70;
        } else if (v2 == 13) {
            v0 = &param0->unk_74;
        } else if (v2 == 14) {
            v0 = &param0->unk_78;
        } else {
            GF_ASSERT(0);
        }
    }

    {
        u8 v3;
        u8 v4;

        sub_0201630C(param0, &v4);

        if (v4 == 20) {
            sub_020162F8(param0, &v1);
        } else if (v4 == 21) {
            sub_02016320(param0, &v3);
            v1 = param0->unk_24[v3];
        } else {
            GF_ASSERT(0);
        }
    }

    {
        u8 v5;

        sub_0201630C(param0, &v5);

        if (v5 == 22) {
            (*v0) = v1;
        } else if (v5 == 23) {
            (*v0) += v1;
        } else {
            GF_ASSERT(0);
        }
    }
}

static void sub_02016A60(UnkStruct_02016E64 *param0)
{
    if (param0->unk_1C4) {
        sub_02007DEC(param0->unk_00, 0, param0->unk_58 - (param0->unk_60 + param0->unk_68));
    } else {
        sub_02007DEC(param0->unk_00, 0, param0->unk_58 + param0->unk_60 + param0->unk_68);
    }

    sub_02007DEC(param0->unk_00, 1, param0->unk_5C + param0->unk_64 + param0->unk_6C);
}

static void sub_02016AA8(UnkStruct_02016E64 *param0)
{
    sub_02007DEC(param0->unk_00, 12, 0x100 + param0->unk_70);
    sub_02007DEC(param0->unk_00, 13, 0x100 + param0->unk_74);
    sub_02007DEC(param0->unk_00, 9, (u16)param0->unk_78);

    {
        int v0;

        if (param0->unk_1C6 == 27) {
            if (param0->unk_74 < 0) {
                sub_02016514(param0);
            }
        } else if (param0->unk_1C6 == 29) {
            if (param0->unk_74 != 0) {
                sub_02016514(param0);
            }
        } else if (param0->unk_1C6 == 28) {
            return;
        } else {
            GF_ASSERT(0);
        }
    }
}

static void sub_02016B10(UnkStruct_02016E64 *param0)
{
    u8 v0;
    u8 v1;

    sub_02016320(param0, &v0);

    param0->unk_0C += 1;
    v1 = (int)sub_020162A0(param0->unk_0C);

    if ((v1 == 8) || (v1 == 10)) {
        param0->unk_68 = param0->unk_24[v0];
    } else if ((v1 == 9) || (v1 == 11)) {
        param0->unk_6C = param0->unk_24[v0];
    } else {
        GF_ASSERT(0);
    }
}

static void sub_02016B64(UnkStruct_02016E64 *param0)
{
    sub_020162F8(param0, &param0->unk_54);
    param0->unk_18 = 1;
}

static void sub_02016B78(UnkStruct_02016E64 *param0)
{
    u8 v0, v1, v2;
    int v3;

    sub_0201630C(param0, &v0);
    sub_0201630C(param0, &v1);
    sub_0201630C(param0, &v2);
    sub_020162F8(param0, &v3);
    sub_020086FC(param0->unk_00, v0, v1, v2, v3);
}

static void sub_02016BB8(UnkStruct_02016E64 *param0)
{
    u8 v0, v1, v2;

    if (sub_020087B4(param0->unk_00)) {
        param0->unk_1C7 = 1;
        param0->unk_18 = 1;
    }
}

static void sub_02016BD4(UnkStruct_02016E64 *param0)
{
    param0->unk_1C5 = 1;
}

static void sub_02016BE0(UnkStruct_02016E64 *param0)
{
    sub_0201630C(param0, &param0->unk_1C6);
    GF_ASSERT((param0->unk_1C6 == 27) || (param0->unk_1C6 == 29) || ((param0->unk_1C6 == 28) && TRUE));
}

static void sub_02016C18(UnkStruct_02016E64 *param0)
{
    sub_02016D04(param0, 0);
}

static void sub_02016C24(UnkStruct_02016E64 *param0)
{
    sub_02016D04(param0, 1);
}

static void sub_02016C30(UnkStruct_02016E64 *param0)
{
    sub_02016D04(param0, 2);
}

static void sub_02016C3C(UnkStruct_02016E64 *param0)
{
    sub_02016D04(param0, 3);
}

static void sub_02016C48(UnkStruct_02016E64 *param0)
{
    sub_02016D04(param0, 4);
}

static void sub_02016C54(const u8 param0, const int *param1, const int *param2, int *param3)
{
    if (param0 == 24) {
        (*param3) = (*param2);
    } else if (param0 == 25) {
        (*param3) = (*param1) + (*param2);
    } else if (param0 == 26) {
        (*param3) += (*param2);
    } else {
        GF_ASSERT(0);
    }
}

static void sub_02016C84(const u8 param0, UnkStruct_02016DAC *param1, UnkStruct_02016E64 *param2)
{
    switch (param0) {
    case 35:
        param1->unk_24 = &param1->unk_3C;
        param1->unk_28 = &param2->unk_68;
        param1->unk_30 = param2->unk_68;
        break;
    case 36:
        param1->unk_24 = &param1->unk_40;
        param1->unk_28 = &param2->unk_6C;
        param1->unk_30 = param2->unk_6C;
        break;
    case 37:
        param1->unk_24 = &param1->unk_44;
        param1->unk_28 = &param2->unk_70;
        param1->unk_30 = param2->unk_70;
        break;
    case 38:
        param1->unk_24 = &param1->unk_48;
        param1->unk_28 = &param2->unk_74;
        param1->unk_30 = param2->unk_74;
        break;
    case 39:
        param1->unk_24 = &param1->unk_4C;
        param1->unk_28 = &param2->unk_78;
        param1->unk_30 = param2->unk_78;
        break;
    default:
        GF_ASSERT(FALSE);
    }
}

static void sub_02016D04(UnkStruct_02016E64 *param0, const int param1)
{
    u8 v0;
    UnkStruct_02016DAC *v1;

    v1 = sub_020162AC(param0, param1);

    sub_0201630C(param0, &v1->unk_2C);
    sub_0201630C(param0, &v1->unk_2D);

    for (v0 = 0; v0 < Unk_020E5598[param1].unk_04; v0++) {
        sub_020162F8(param0, &v1->unk_04[v0]);
    }

    {
        int v2;

        v2 = Unk_020E5598[param1].unk_08;
        sub_02016C84(v1->unk_04[v2], v1, param0);
    }

    if (v1->unk_2D == 0) {
        v1->unk_50(v1, param0);
    } else {
        v1->unk_2D--;
    }
}

static void sub_02016DAC(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1)
{
    u16 v0;
    int *v1;

    v1 = param0->unk_04;
    v0 = (v1[3] * (v1[6] + 1)) + v1[4];

    switch (v1[0]) {
    case 30:
        (*param0->unk_24) = FX_Whole(FX_SinIdx(v0) * v1[2]);
        break;
    case 31:
        (*param0->unk_24) = FX_Whole(FX_CosIdx(v0) * v1[2]);
        break;
    case 32:
        (*param0->unk_24) = -FX_Whole(FX_SinIdx(v0) * v1[2]);
        break;
    case 33:
        (*param0->unk_24) = -FX_Whole(FX_CosIdx(v0) * v1[2]);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    sub_02016C54(param0->unk_2C, &(param0->unk_30), param0->unk_24, param0->unk_28);

    v1[6]++;

    if (v1[6] >= v1[5]) {
        param0->unk_00 = 0;
    }
}

static void sub_02016E64(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1)
{
    u16 v0;
    int *v1;

    v1 = param0->unk_04;
    v0 = ((v1[3] * (v1[6] + 1)) / v1[5]) + v1[4];

    switch (v1[0]) {
    case 30:
        (*param0->unk_24) = FX_Whole(FX_SinIdx(v0) * v1[2]);
        break;
    case 31:
        (*param0->unk_24) = FX_Whole(FX_CosIdx(v0) * v1[2]);
        break;
    case 32:
        (*param0->unk_24) = -FX_Whole(FX_SinIdx(v0) * v1[2]);
        break;
    case 33:
        (*param0->unk_24) = -FX_Whole(FX_CosIdx(v0) * v1[2]);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    sub_02016C54(param0->unk_2C, &(param0->unk_30), param0->unk_24, param0->unk_28);

    v1[6]++;

    if (v1[6] >= v1[5]) {
        param0->unk_00 = 0;
    }
}

static void sub_02016F24(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1)
{
    int v0;
    int *v1;

    v1 = param0->unk_04;
    v0 = v1[1] + (v1[2] * v1[4]);

    (*param0->unk_24) += v0;

    sub_02016C54(param0->unk_2C, &(param0->unk_30), param0->unk_24, param0->unk_28);

    v1[4]++;

    if (v1[4] >= v1[3]) {
        param0->unk_00 = 0;
    }
}

static void sub_02016F60(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1)
{
    int v0;
    int *v1;

    v1 = param0->unk_04;
    v0 = ((v1[3] + 1) * v1[1]) / v1[2];

    (*param0->unk_24) = v0;

    sub_02016C54(param0->unk_2C, &(param0->unk_30), param0->unk_24, param0->unk_28);

    v1[3]++;

    if (v1[3] >= v1[2]) {
        param0->unk_00 = 0;
    }
}

static void sub_02016F9C(UnkStruct_02016DAC *param0, UnkStruct_02016E64 *param1)
{
    int v0;
    int *v1;

    v1 = param0->unk_04;
    v0 = v1[1] + (v1[2] * v1[4]);

    (*param0->unk_24) += v0;

    if ((param0->unk_2C == 24) || (param0->unk_2C == 26)) {
        if (v0 < 0) {
            if ((*param0->unk_24) <= v1[3]) {
                (*param0->unk_24) = v1[3];
                param0->unk_00 = 0;
            }
        } else {
            if ((*param0->unk_24) >= v1[3]) {
                (*param0->unk_24) = v1[3];
                param0->unk_00 = 0;
            }
        }
    } else if (param0->unk_2C == 25) {
        int v2 = param0->unk_30 + (*param0->unk_24);

        if (v0 < 0) {
            if (v2 <= v1[3]) {
                (*param0->unk_24) += (v1[3] - v2);
                param0->unk_00 = 0;
            }
        } else {
            if (v2 >= v1[3]) {
                (*param0->unk_24) -= (v2 - v1[3]);
                param0->unk_00 = 0;
            }
        }
    } else {
        GF_ASSERT(0);
    }

    sub_02016C54(param0->unk_2C, &(param0->unk_30), param0->unk_24, param0->unk_28);

    v1[4]++;
}
