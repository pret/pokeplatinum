#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay043/struct_ov43_02256544_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay043/struct_ov43_02256544_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_02023790.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay043/ov43_02256544.h"

struct UnkStruct_ov43_02256544_t {
    const UnkStruct_ov43_02256544_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[10];
    UnkStruct_ov25_022555E8 * unk_30;
    UnkStruct_ov25_022558C4 * unk_34[6];
    UnkStruct_ov25_022558C4 * unk_4C[5];
    UnkStruct_ov25_02255958 unk_60;
    UnkStruct_0205AA50 unk_74;
    UnkStruct_0205AA50 unk_84;
    UnkStruct_0205AA50 unk_94;
    UnkStruct_0205AA50 unk_A4;
    UnkStruct_0200B144 * unk_B4;
    UnkStruct_0200B144 * unk_B8;
    UnkStruct_02023790 * unk_BC;
};

static void ov43_022565B4(UnkStruct_ov43_02256544 * param0);
static void ov43_02256640(UnkStruct_ov43_02256544 * param0);
static void ov43_022566EC(UnkStruct_ov25_02255224 * param0);
static void ov43_02256700(UnkStruct_0201CD38 * param0, void * param1);
static void ov43_022567A4(UnkStruct_ov43_02256544 * param0, const UnkStruct_ov43_02256544_1 * param1, u32 param2);
static void ov43_02256870(UnkStruct_ov43_02256544 * param0);
static void ov43_02256894(UnkStruct_0201CD38 * param0, void * param1);
static void ov43_022568B4(UnkStruct_0201CD38 * param0, void * param1);
static void ov43_022568F0(UnkStruct_0201CD38 * param0, void * param1);
static void ov43_02256924(UnkStruct_0201CD38 * param0, void * param1);
static void ov43_02256948(UnkStruct_ov43_02256544 * param0, const UnkStruct_ov43_02256544_1 * param1);
static void ov43_02256988(UnkStruct_ov43_02256544 * param0, UnkStruct_0205AA50 * param1, u32 param2);
static void ov43_02256A00(UnkStruct_ov43_02256544 * param0, UnkStruct_0205AA50 * param1, u32 param2);
static void ov43_02256A4C(UnkStruct_ov43_02256544 * param0, u32 param1);

BOOL ov43_02256544 (UnkStruct_ov43_02256544 ** param0, const UnkStruct_ov43_02256544_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov43_02256544 * v0 = (UnkStruct_ov43_02256544 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov43_02256544));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 8);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_30 = ov25_02254664();
        v0->unk_B4 = sub_0200B144(1, 26, 624, 8);
        v0->unk_B8 = sub_0200B144(1, 26, 456, 8);
        v0->unk_BC = sub_02023790(128, 8);
        ov43_022565B4(v0);
        *param0 = v0;

        return 1;
    }

    return 0;
}

static void ov43_022565B4 (UnkStruct_ov43_02256544 * param0)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            {(28 << FX32_SHIFT), (128 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(116 << FX32_SHIFT), (128 << FX32_SHIFT)},
            2,
            0,
            2,
            0,
            0
        },
        {
            {(108 << FX32_SHIFT), (40 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(196 << FX32_SHIFT), (40 << FX32_SHIFT)},
            2,
            0,
            2,
            0,
            0
        },
        {
            {(108 << FX32_SHIFT), (72 << FX32_SHIFT)},
            0,
            0,
            2,
            0,
            0
        },
        {
            {(196 << FX32_SHIFT), (72 << FX32_SHIFT)},
            2,
            0,
            2,
            0,
            0
        },
    };
    static const UnkStruct_ov25_02255810 v1 = {
        {(44 << FX32_SHIFT), (48 << FX32_SHIFT)},
        5,
        0,
        2,
        0,
        0
    };
    int v2;

    sub_02006EC0(12, 64, 1, 0, 0, 1, 8);
    ov25_02255958(&param0->unk_60, 12, 62, 63, 8);

    for (v2 = 0; v2 < 6; v2++) {
        param0->unk_34[v2] = ov25_02255810(param0->unk_30, &v0[v2], &param0->unk_60);
    }

    for (v2 = 0; v2 < 5; v2++) {
        param0->unk_4C[v2] = ov25_02255810(param0->unk_30, &v1, &param0->unk_60);
        ov25_02255900(param0->unk_4C[v2], ((44 + 8 * v2) << FX32_SHIFT), 48 << FX32_SHIFT);
    }
}

static void ov43_02256640 (UnkStruct_ov43_02256544 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_34[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_34[v0]);
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_4C[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_4C[v0]);
        }
    }

    ov25_022559B0(&param0->unk_60);
}

void ov43_02256680 (UnkStruct_ov43_02256544 * param0)
{
    if (param0 != NULL) {
        sub_020237BC(param0->unk_BC);
        sub_0200B190(param0->unk_B4);
        sub_0200B190(param0->unk_B8);
        ov43_02256640(param0);
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov43_02256C34[] = {
    {0x0, ov43_02256700, 0x0},
    {0x1, ov43_02256894, 0x0},
    {0x2, ov43_022568B4, 0x0},
    {0x3, ov43_022568F0, 0x0},
    {0x4, ov43_02256924, 0x0},
    {0x0, NULL, 0x0}
};

void ov43_022566B0 (UnkStruct_ov43_02256544 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov43_02256C34, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov43_022566D4 (UnkStruct_ov43_02256544 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov43_022566E0 (UnkStruct_ov43_02256544 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov43_022566EC (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov43_02256544 * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov43_02256700 (UnkStruct_0201CD38 * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov43_02256544 * v2;
    const UnkStruct_ov43_02256544_1 * v3;
    void * v4;
    NNSG2dPaletteData * v5;
    u32 v6;

    v2 = ov25_0225523C(param1);
    v3 = ov25_02255240(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);

    v6 = sub_02006E3C(12, 61, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 60, v2->unk_04, 6, 0, 0, 1, 8);
    ov25_022546B8(0, 0);

    v6 /= 0x20;
    ov43_022567A4(v2, v3, v6);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov43_022566EC(param1);
}

static void ov43_022567A4 (UnkStruct_ov43_02256544 * param0, const UnkStruct_ov43_02256544_1 * param1, u32 param2)
{
    sub_0201A7E8(param0->unk_04, &(param0->unk_74), 6, 6, 15, 6, 2, 0, param2);
    param2 += 12;

    sub_0201A7E8(param0->unk_04, &(param0->unk_84), 6, 16, 4, 6, 2, 0, param2);
    param2 += 12;

    sub_0201A7E8(param0->unk_04, &(param0->unk_94), 6, 16, 8, 6, 2, 0, param2);
    param2 += 12;

    sub_0201A7E8(param0->unk_04, &(param0->unk_A4), 6, 3, 19, 22, 2, 0, param2);

    sub_0201A9F4(&(param0->unk_74));
    sub_0201A9F4(&(param0->unk_84));
    sub_0201A9F4(&(param0->unk_94));
    sub_0201A9F4(&(param0->unk_A4));

    ov43_02256948(param0, param1);
}

static void ov43_02256870 (UnkStruct_ov43_02256544 * param0)
{
    sub_0201A8FC(&(param0->unk_74));
    sub_0201A8FC(&(param0->unk_84));
    sub_0201A8FC(&(param0->unk_94));
    sub_0201A8FC(&(param0->unk_A4));
}

static void ov43_02256894 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov43_02256544 * v0 = ov25_0225523C(param1);

    ov43_02256870(v0);
    sub_02019044(v0->unk_04, 6);
    ov43_022566EC(param1);
}

static void ov43_022568B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov43_02256544 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov43_02256544_1 * v1 = ov25_02255240(param1);
    u32 v2;

    v2 = (v1->unk_00 & 1) ?  3 : 1;

    ov25_022558C4(v0->unk_34[v1->unk_00], v2);
    ov25_02254424(1635);
    ov43_022566EC(param1);
}

static void ov43_022568F0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov43_02256544 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov43_02256544_1 * v1 = ov25_02255240(param1);
    u32 v2;

    v2 = (v1->unk_00 & 1) ?  2 : 0;

    ov25_022558C4(v0->unk_34[v1->unk_00], v2);
    ov43_022566EC(param1);
}

static void ov43_02256924 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov43_02256544 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov43_02256544_1 * v1 = ov25_02255240(param1);

    ov43_02256948(v0, v1);
    ov43_022566EC(param1);
}

static void ov43_02256948 (UnkStruct_ov43_02256544 * param0, const UnkStruct_ov43_02256544_1 * param1)
{
    ov43_02256988(param0, &(param0->unk_74), param1->unk_06);
    ov43_02256988(param0, &(param0->unk_84), param1->unk_08);
    ov43_02256988(param0, &(param0->unk_94), param1->unk_0A);
    ov43_02256A00(param0, &(param0->unk_A4), param1->unk_04);
    ov43_02256A4C(param0, param1->unk_04);
}

static void ov43_02256988 (UnkStruct_ov43_02256544 * param0, UnkStruct_0205AA50 * param1, u32 param2)
{
    u32 v0;

    sub_0201ADA4(param1, 4);

    if (param2 == 18) {
        sub_0200B1B8(param0->unk_B8, 6, param0->unk_BC);
    } else {
        sub_0200B1B8(param0->unk_B4, param2, param0->unk_BC);
    }

    v0 = sub_02002D7C(0, param0->unk_BC, 0);

    sub_0201D78C(param1, 0, param0->unk_BC, ((6 * 8) - v0) / 2, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    sub_0201ACCC(param1);
}

static void ov43_02256A00 (UnkStruct_ov43_02256544 * param0, UnkStruct_0205AA50 * param1, u32 param2)
{
    sub_0201ADA4(param1, 4);
    sub_0200B1B8(param0->unk_B8, param2, param0->unk_BC);
    sub_0201D78C(param1, 0, param0->unk_BC, 0, 0, 0xff, (u32)(((1 & 0xff) << 16) | ((8 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
    sub_0201ACCC(param1);
}

static void ov43_02256A4C (UnkStruct_ov43_02256544 * param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param1; v0++) {
        ov25_022558C4(param0->unk_4C[v0], 4);
    }

    for ( ; v0 < 5; v0++) {
        ov25_022558C4(param0->unk_4C[v0], 5);
    }
}
