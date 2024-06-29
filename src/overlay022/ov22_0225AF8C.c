#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_0202A138_decl.h"
#include "struct_decls/struct_0202A150_decl.h"
#include "pokemon.h"

#include "struct_defs/archived_sprite.h"
#include "overlay022/struct_ov22_02254DE0.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_02255CB8.h"
#include "overlay022/struct_ov22_02257964.h"
#include "overlay022/struct_ov22_02259484.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225AF68.h"
#include "overlay022/struct_ov22_0225AF8C.h"
#include "overlay022/struct_ov22_0225B388.h"

#include "narc.h"
#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "resource_collection.h"
#include "unk_020298BC.h"
#include "pokemon.h"
#include "overlay022/ov22_02254DE0.h"
#include "overlay022/ov22_02255094.h"
#include "overlay022/ov22_022578F4.h"
#include "overlay022/ov22_02259098.h"
#include "overlay022/ov22_02259484.h"
#include "overlay022/ov22_0225AF44.h"
#include "overlay022/ov22_0225AF8C.h"

typedef struct UnkStruct_ov22_0225B1BC_t {
    UnkStruct_ov22_0225A0E4 unk_00;
    UnkStruct_ov22_02259484 unk_1E8;
    UnkStruct_ov22_02254DE0 * unk_1F0;
    UnkStruct_ov22_02257964 unk_1F4;
    UnkStruct_ov22_0225AF68 unk_27C;
    Pokemon * unk_298;
    int unk_29C;
    int unk_2A0;
    int unk_2A4;
    int unk_2A8;
    int unk_2AC;
    u16 unk_2B0;
    VecFx32 unk_2B4;
    GXRgb unk_2C0;
    BOOL unk_2C4;
    BOOL unk_2C8;
} UnkStruct_ov22_0225B1BC;

typedef struct {
    const UnkStruct_0202A138 * unk_00;
    const UnkStruct_0202A150 * unk_04[20];
    int unk_54;
    BGL * unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
} UnkStruct_ov22_0225B4E4;

static UnkStruct_ov22_0225B1BC * ov22_0225B1BC(const UnkStruct_ov22_0225B4E4 * param0);
static UnkStruct_ov22_0225B1BC * ov22_0225B258(const UnkStruct_ov22_0225B4E4 * param0);
static void ov22_0225B2D4(UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1);
static void ov22_0225B328(UnkStruct_ov22_0225B1BC * param0);
static void ov22_0225B35C(UnkStruct_ov22_0225B1BC * param0);
static void ov22_0225B388(UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1);
static void ov22_0225B450(UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1);
static void ov22_0225B464(UnkStruct_ov22_0225B1BC * param0);
static void ov22_0225B480(UnkStruct_ov22_0225B1BC * param0);
static void ov22_0225B490(UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1);
static void ov22_0225B4E4(UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_ov22_0225AF8C * param1);
static void ov22_0225B4F8(UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_02029C68 * param1);
static void ov22_0225B540(UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_02029C88 * param1);
static void ov22_0225B588(UnkStruct_ov22_0225A0E4 * param0, UnkStruct_ov22_02255CB8 * param1, const UnkStruct_ov22_0225B4E4 * param2, int param3);
static void ov22_0225B5A8(UnkStruct_ov22_0225A0E4 * param0, UnkStruct_ov22_02255CB8 * param1, const UnkStruct_ov22_0225B4E4 * param2, int param3);

UnkStruct_ov22_0225B1BC * ov22_0225AF8C (const UnkStruct_ov22_0225AF8C * param0, const UnkStruct_02029C68 * param1)
{
    UnkStruct_ov22_0225B4E4 v0;

    ov22_0225B4E4(&v0, param0);
    ov22_0225B4F8(&v0, param1);

    return ov22_0225B1BC(&v0);
}

UnkStruct_ov22_0225B1BC * ov22_0225AFB0 (const UnkStruct_ov22_0225AF8C * param0, const UnkStruct_02029C88 * param1)
{
    UnkStruct_ov22_0225B4E4 v0;

    ov22_0225B4E4(&v0, param0);
    ov22_0225B540(&v0, param1);

    return ov22_0225B1BC(&v0);
}

UnkStruct_ov22_0225B1BC * ov22_0225AFD4 (const UnkStruct_ov22_0225AF8C * param0, const UnkStruct_02029C88 * param1)
{
    UnkStruct_ov22_0225B4E4 v0;

    ov22_0225B4E4(&v0, param0);
    ov22_0225B540(&v0, param1);

    return ov22_0225B258(&v0);
}

void ov22_0225AFF8 (UnkStruct_ov22_0225B1BC * param0)
{
    if (param0->unk_2C4 == 1) {
        ov22_0225AF68(&param0->unk_27C);
    }

    if (param0->unk_2C8 == 1) {
        ov22_0225B328(param0);
    }
}

void ov22_0225B020 (UnkStruct_ov22_0225B1BC * param0)
{
    if (param0->unk_2C4) {
        ov22_0225B480(param0);
    }

    ov22_0225B464(param0);
    ov22_02254E0C(param0->unk_1F0);

    param0->unk_1F0 = NULL;

    ov22_022594AC(&param0->unk_1E8);
    ov22_0225B35C(param0);

    Heap_FreeToHeap(param0->unk_298);
    Heap_FreeToHeap(param0);
}

void ov22_0225B06C (UnkStruct_ov22_0225B1BC * param0)
{
    ov22_02255530(&param0->unk_00);
}

void ov22_0225B074 (UnkStruct_ov22_0225B1BC * param0, BOOL param1)
{
    param0->unk_2C8 = param1;
}

void ov22_0225B07C (UnkStruct_ov22_0225B1BC * param0, BOOL param1)
{
    param0->unk_00.unk_1C = param1;
}

void ov22_0225B080 (UnkStruct_ov22_0225B1BC * param0, int param1, int param2)
{
    ov22_02257AD8(&param0->unk_1F4, param0->unk_2A0, param0->unk_2A4, param1, param2);

    if (param0->unk_2C4) {
        sub_02019184(param0->unk_00.unk_40, 2, 0, 136 - param1);
        sub_02019184(param0->unk_00.unk_40, 2, 3, 16 - param2);
    }

    param0->unk_2A0 = param1;
    param0->unk_2A4 = param2;
}

void ov22_0225B0D8 (UnkStruct_ov22_0225B1BC * param0, int param1, int param2)
{
    param0->unk_2A8 = param1;
    param0->unk_2AC = param2;
}

void ov22_0225B0E4 (UnkStruct_ov22_0225B1BC * param0, u16 param1)
{
    param0->unk_2B0 = param1;
}

void ov22_0225B0EC (UnkStruct_ov22_0225B1BC * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_2B4.x = param1;
    param0->unk_2B4.y = param2;
    param0->unk_2B4.z = param3;
}

void ov22_0225B100 (UnkStruct_ov22_0225B1BC * param0, int param1, int param2)
{
    int v0, v1;
    int v2, v3;
    int v4, v5;
    int v6, v7;
    int v8, v9;

    ov22_02259270(&param0->unk_1F4.unk_2C.unk_4C, &v4, &v5);
    ov22_02257CE0(&param0->unk_1F4, &v0, &v1);

    v2 = param1 - v0;
    v3 = param2 - v1;

    v6 = param0->unk_2A0 + v2;
    v7 = param0->unk_2A4 + v3;

    ov22_0225B080(param0, v6, v7);

    v8 = param1 - v6;
    v9 = param2 - v7;

    ov22_0225B0D8(param0, v8, v9);
}

void ov22_0225B158 (UnkStruct_ov22_0225B1BC * param0, int param1, int param2, int param3)
{
    int v0;
    fx32 v1;

    param3 = (80 / 2) - param3;

    v1 = FX_Mul(param3 * FX32_ONE, param0->unk_2B4.y);
    v0 = v1 >> FX32_SHIFT;

    ov22_0225B100(param0, param1, param2 - v0);
}

void ov22_0225B198 (UnkStruct_ov22_0225B1BC * param0, GXRgb param1)
{
    param0->unk_2C0 = param1;
    ov22_02257D70(&param0->unk_1F4, param1);
}

void ov22_0225B1AC (UnkStruct_ov22_0225B1BC * param0, int param1)
{
    ov22_02257B74(&param0->unk_1F4, param1);
}

static UnkStruct_ov22_0225B1BC * ov22_0225B1BC (const UnkStruct_ov22_0225B4E4 * param0)
{
    UnkStruct_ov22_0225B1BC * v0;
    BOOL v1;

    v0 = Heap_AllocFromHeap(param0->unk_68, sizeof(UnkStruct_ov22_0225B1BC));
    memset(v0, 0, sizeof(UnkStruct_ov22_0225B1BC));

    v0->unk_29C = param0->unk_68;
    v0->unk_298 = Pokemon_New(param0->unk_68);
    sub_0202A61C(param0->unk_00, v0->unk_298);

    ov22_0225B2D4(v0, param0);
    ov22_022554A8(&v0->unk_00, param0->unk_58, param0->unk_68);
    ov22_02259484(&v0->unk_1E8, 21, param0->unk_68);

    v0->unk_1F0 = ov22_02254DE0(20, param0->unk_68);

    ov22_0225B388(v0, param0);
    ov22_0225B450(v0, param0);
    ov22_0225AF44(&v0->unk_27C, &v0->unk_1F4, param0->unk_68);

    v0->unk_2C4 = 1;
    v0->unk_2C8 = 1;

    ov22_0225B490(v0, param0);

    return v0;
}

static UnkStruct_ov22_0225B1BC * ov22_0225B258 (const UnkStruct_ov22_0225B4E4 * param0)
{
    UnkStruct_ov22_0225B1BC * v0;
    BOOL v1;

    v0 = Heap_AllocFromHeap(param0->unk_68, sizeof(UnkStruct_ov22_0225B1BC));
    memset(v0, 0, sizeof(UnkStruct_ov22_0225B1BC));

    v0->unk_29C = param0->unk_68;
    v0->unk_298 = Pokemon_New(param0->unk_68);

    sub_0202A61C(param0->unk_00, v0->unk_298);

    ov22_0225B2D4(v0, param0);
    ov22_02259484(&v0->unk_1E8, 21, param0->unk_68);

    v0->unk_1F0 = ov22_02254DE0(20, param0->unk_68);

    ov22_0225B388(v0, param0);

    v0->unk_2C4 = 0;
    v0->unk_2C8 = 1;

    ov22_0225B490(v0, param0);

    return v0;
}

static void ov22_0225B2D4 (UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1)
{
    UnkStruct_ov22_02255CB8 v0;
    UnkStruct_ov22_022550D4 v1;

    param0->unk_00.unk_5C = NARC_ctor(NARC_INDEX_GRAPHIC__IMAGECLIP, param1->unk_68);

    v1.unk_00 = (700 + 18);
    v1.unk_04 = (100 + 18);
    v1.unk_08 = (1 + 18);
    v1.unk_0C = param1->unk_68;

    ov22_0225547C(&param0->unk_00, &v1, param1->unk_68);
    ov22_0225B588(&param0->unk_00, &v0, param1, param1->unk_68);
    ov22_022551B4(&param0->unk_00, &v0);
    ov22_02255338(&v0);
}

static void ov22_0225B328 (UnkStruct_ov22_0225B1BC * param0)
{
    ov22_0225553C(&param0->unk_00, param0->unk_2A0 + param0->unk_2A8, param0->unk_2A4 + param0->unk_2AC, param0->unk_2B0, &param0->unk_2B4);
}

static void ov22_0225B35C (UnkStruct_ov22_0225B1BC * param0)
{
    ov22_022551D0(&param0->unk_00);
    ov22_022554F8(&param0->unk_00);

    if (param0->unk_2C4) {
        ov22_02255524(&param0->unk_00);
    }

    NARC_dtor(param0->unk_00.unk_5C);
}

static void ov22_0225B388 (UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1)
{
    UnkStruct_ov22_0225B388 v0;
    int v1, v2, v3;

    memset(&v0, 0, sizeof(UnkStruct_ov22_0225B388));

    v0.unk_00 = param0->unk_00.unk_00;
    v0.unk_04 = param0->unk_00.unk_04;
    v0.unk_08 = param0->unk_00.unk_10;
    v0.unk_0C = param0->unk_00.unk_30;
    v0.unk_10 = param0->unk_00.unk_20;
    v0.unk_14 = param0->unk_00.unk_40;
    v0.unk_18 = param0->unk_1F0;
    v0.unk_1C = &param0->unk_1E8;
    v0.unk_20 = 21;

    ov22_022578F4(&param0->unk_1F4, &v0);

    {
        ArchivedSprite v4;

        v1 = sub_0202A60C(param1->unk_00);
        v2 = sub_0202A614(param1->unk_00);
        v3 = sub_0202A604(param1->unk_00);

        ov22_02257964(&param0->unk_1F4, param0->unk_298, &v4, v1, v2, v3, param1->unk_68);
    }

    {
        int v5;
        int v6, v7;
        int v8;
        s8 v9;

        for (v5 = 0; v5 < param1->unk_54; v5++) {
            v8 = sub_0202A624(param1->unk_04[v5]);
            v6 = sub_0202A628(param1->unk_04[v5]);
            v7 = sub_0202A62C(param1->unk_04[v5]);
            v9 = sub_0202A630(param1->unk_04[v5]);

            ov22_022579FC(&param0->unk_1F4, v8, v6, v7, v9);
        }
    }
}

static void ov22_0225B450 (UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1)
{
    ov22_02257C88(&param0->unk_1F4, param1->unk_5C, param1->unk_68);
}

static void ov22_0225B464 (UnkStruct_ov22_0225B1BC * param0)
{
    ov22_02257A98(&param0->unk_1F4);
    ov22_02257948(&param0->unk_1F4);
}

static void ov22_0225B480 (UnkStruct_ov22_0225B1BC * param0)
{
    ov22_02257CD4(&param0->unk_1F4);
}

static void ov22_0225B490 (UnkStruct_ov22_0225B1BC * param0, const UnkStruct_ov22_0225B4E4 * param1)
{
    param0->unk_2A0 = (136 - (8 * 8));
    param0->unk_2A4 = (16 + (5 * 8));
    param0->unk_2A8 = (112 / 2);
    param0->unk_2AC = (129 / 2);
    param0->unk_2B4.x = FX32_ONE;
    param0->unk_2B4.y = FX32_ONE;
    param0->unk_2B4.z = FX32_ONE;
    param0->unk_2B0 = 0;

    ov22_0225B080(param0, param1->unk_60, param1->unk_64);

    param0->unk_2C0 = GX_RGB(31, 31, 31);
}

static void ov22_0225B4E4 (UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_ov22_0225AF8C * param1)
{
    param0->unk_58 = param1->unk_00;
    param0->unk_60 = param1->unk_04;
    param0->unk_64 = param1->unk_08;
    param0->unk_68 = param1->unk_0C;
}

static void ov22_0225B4F8 (UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_02029C68 * param1)
{
    int v0;

    param0->unk_00 = sub_0202A138(param1);
    param0->unk_54 = 0;

    for (v0 = 0; v0 < (11 - 1); v0++) {
        if (sub_0202A110(param1, v0)) {
            param0->unk_04[param0->unk_54] = sub_0202A150(param1, v0);
            param0->unk_54++;
        }
    }

    param0->unk_5C = sub_0202A1DC(param1);
}

static void ov22_0225B540 (UnkStruct_ov22_0225B4E4 * param0, const UnkStruct_02029C88 * param1)
{
    int v0;

    param0->unk_00 = sub_0202A4D8(param1);
    param0->unk_54 = 0;

    for (v0 = 0; v0 < (21 - 1); v0++) {
        if (sub_0202A488(param1, v0)) {
            param0->unk_04[param0->unk_54] = sub_0202A4F0(param1, v0);
            param0->unk_54++;
        }
    }

    param0->unk_5C = sub_0202A5B8(param1);
}

static void ov22_0225B588 (UnkStruct_ov22_0225A0E4 * param0, UnkStruct_ov22_02255CB8 * param1, const UnkStruct_ov22_0225B4E4 * param2, int param3)
{
    ov22_02255410(param1, param3);
    ov22_0225B5A8(param0, param1, param2, param3);
}

static void ov22_0225B5A8 (UnkStruct_ov22_0225A0E4 * param0, UnkStruct_ov22_02255CB8 * param1, const UnkStruct_ov22_0225B4E4 * param2, int param3)
{
    int v0;
    int v1;
    void * v2;
    int v3;

    for (v0 = 0; v0 < param2->unk_54; v0++) {
        v3 = sub_0202A624(param2->unk_04[v0]);
        v1 = v3;

        if (ResourceCollection_IsIDUnused(param1->unk_10, v1) == 1) {
            v2 = sub_0200723C(param0->unk_5C, v3 + 1, 0, param3, 1);

            ResourceCollection_AddResource(param1->unk_10, v2, v1);
            NNS_G2dGetUnpackedCharacterData(v2, &param1->unk_00[v1].unk_04);

            param1->unk_00[v1].unk_00 = param0->unk_00;
        }
    }

    v2 = sub_0200723C(param0->unk_5C, 0, 0, param3, 1);

    ResourceCollection_AddResource(param1->unk_14, v2, 0);
    NNS_G2dGetUnpackedPaletteData(v2, &param1->unk_08[0].unk_04);

    param1->unk_08[0].unk_00 = param0->unk_00;
    param1->unk_08[0].unk_08 = 3;
}
