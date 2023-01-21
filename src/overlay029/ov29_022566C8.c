#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay029/struct_ov29_022566C8_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay029/struct_ov29_022566C8_1.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_02099D44.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay029/ov29_022566C8.h"

struct UnkStruct_ov29_022566C8_t {
    const UnkStruct_ov29_022566C8_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[18];
    UnkStruct_ov25_022555E8 * unk_50;
    UnkStruct_ov25_02255958 unk_54;
    UnkStruct_ov25_022558C4 * unk_68[2];
    UnkStruct_0205AA50 * unk_70;
};

static BOOL ov29_02256728(UnkStruct_ov29_022566C8 * param0);
static void ov29_022567F0(UnkStruct_ov25_02255224 * param0);
static void ov29_02256804(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_02256908(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_02256950(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_022569DC(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_02256A7C(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_02256A94(UnkStruct_0201CD38 * param0, void * param1);
static void ov29_02256ABC(UnkStruct_ov29_022566C8 * param0);
static void ov29_02256B18(UnkStruct_ov29_022566C8 * param0);

BOOL ov29_022566C8 (UnkStruct_ov29_022566C8 ** param0, const UnkStruct_ov29_022566C8_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov29_022566C8 * v0 = (UnkStruct_ov29_022566C8 *)AllocFromHeap(8, sizeof(UnkStruct_ov29_022566C8));

    if (v0 != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(7));
        ov25_02255090(v0->unk_08, 16);

        GF_ASSERT(GF_heap_c_dummy_return_true(7));
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_50 = ov25_02254664();

        GF_ASSERT(GF_heap_c_dummy_return_true(7));
        *param0 = v0;
        return 1;
    }

    return 0;
}

static BOOL ov29_02256728 (UnkStruct_ov29_022566C8 * param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        7, 2, 2, 20, 19, 0, 12
    };

    param0->unk_70 = sub_0201A778(8, 1);

    if (param0->unk_70) {
        sub_0201A8D4(param0->unk_04, param0->unk_70, &v0);

        if (sub_02099DD0(param0->unk_00->unk_16E8, param0->unk_70->unk_0C, (20 * 19 * 0x20)) == 0) {
            sub_0201ADA4(param0->unk_70, 0x4);
        }

        return 1;
    }

    return 0;
}

void ov29_02256770 (UnkStruct_ov29_022566C8 * param0)
{
    if (param0 != NULL) {
        GF_ASSERT(GF_heap_c_dummy_return_true(7));

        if (param0->unk_70) {
            sub_02099DA8(param0->unk_00->unk_16E8, param0->unk_70->unk_0C, (20 * 19 * 0x20));
            sub_0201A8FC(param0->unk_70);
            FreeToHeap(param0->unk_70);
        }

        FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov29_02256BB0[] = {
    {0x0, ov29_02256804, 0x0},
    {0x1, ov29_02256908, 0x0},
    {0x2, ov29_02256950, 0x0},
    {0x3, ov29_022569DC, 0x0},
    {0x4, ov29_02256A7C, 0x0},
    {0x5, ov29_02256A94, 0x0},
    {0x0, NULL, 0x0}
};

void ov29_022567B4 (UnkStruct_ov29_022566C8 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov29_02256BB0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov29_022567D8 (UnkStruct_ov29_022566C8 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov29_022567E4 (UnkStruct_ov29_022566C8 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov29_022567F0 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov29_022566C8 * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov29_02256804 (UnkStruct_0201CD38 * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0,
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
    static const UnkStruct_ov97_0222DB78 v1 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7800,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        3,
        0,
        0,
        0
    };
    GXSDispCnt v2;
    UnkStruct_ov29_022566C8 * v3;

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    v3 = ov25_0225523C(param1);

    sub_020183C4(v3->unk_04, 6, &v0, 0);
    sub_020183C4(v3->unk_04, 7, &v1, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    sub_02006E3C(12, 30, v3->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 31, v3->unk_04, 6, 0, 0, 1, 8);
    ov25_022546B8(0, 0);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    ov29_02256728(v3);
    sub_0201A954(v3->unk_70);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    ov29_02256ABC(v3);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));

    sub_02019448(v3->unk_04, 7);

    v2 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v2.visiblePlane | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ);
    ov29_022567F0(param1);

    GF_ASSERT(GF_heap_c_dummy_return_true(8));
}

static void ov29_02256908 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov29_022566C8 * v0;

    v0 = ov25_0225523C(param1);

    if (v0->unk_00->unk_00 == 1) {
        ov25_022558C4(v0->unk_68[0], 0);
        ov25_022558C4(v0->unk_68[1], 3);
    } else {
        ov25_022558C4(v0->unk_68[0], 1);
        ov25_022558C4(v0->unk_68[1], 2);
    }

    ov25_02254424(1635);
    ov29_022567F0(param1);
}

static void ov29_02256950 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov29_022566C8 * v0;

    v0 = ov25_0225523C(param1);
    sub_0201ACCC(v0->unk_70);
    ov29_022567F0(param1);
}

static void ov29_02256968 (u8 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1, v2, v3, v4;

    param3--;
    param4--;

    v1 = param1 / 8;
    v3 = ((param1 + param3) / 8) - v1 + 1;
    v2 = param2 / 8;
    v4 = ((param2 + param4) / 8) - v2 + 1;
    v0 = (v2 * 20) + v1;

    while (v4--) {
        DC_FlushRange(param0 + (v0 * 0x20), v3 * 0x20);
        GXS_LoadBG3Char(param0 + (v0 * 0x20), (12 + v0) * 0x20, v3 * 0x20);
        v0 += 20;
    }
}

static void ov29_022569DC (UnkStruct_0201CD38 * param0, void * param1)
{
    s32 v0, v1;
    UnkStruct_ov29_022566C8 * v2;

    v2 = ov25_0225523C(param1);

    if (v2->unk_00->unk_00 == 0) {
        int v3, v4;

        v3 = v4 = 8;
        v0 = (v2->unk_00->unk_04 * 2) - (8 / 2);
        v1 = (v2->unk_00->unk_08 * 2) - (8 / 2);

        if (v0 < 0) {
            v3 += v0;
            v0 = 0;
        }

        if (v1 < 0) {
            v4 += v1;
            v1 = 0;
        }

        sub_0201AE78(v2->unk_70, 0x4, v0, v1, v3, v4);
        ov29_02256968((u8 *)v2->unk_70->unk_0C, v0, v1, v3, v4);
    } else {
        v0 = v2->unk_00->unk_04 * 2;
        v1 = v2->unk_00->unk_08 * 2;

        sub_0201AE78(v2->unk_70, 0x1, v0, v1, 2, 2);
        ov29_02256968((u8 *)v2->unk_70->unk_0C, v0, v1, 2, 2);
    }

    ov29_022567F0(param1);
}

static void ov29_02256A7C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov29_022566C8 * v0;

    v0 = ov25_0225523C(param1);

    sub_0201ACCC(v0->unk_70);
    ov29_022567F0(param1);
}

static void ov29_02256A94 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov29_022566C8 * v0 = ov25_0225523C(param1);

    ov29_02256B18(v0);
    sub_02019044(v0->unk_04, 6);
    sub_02019044(v0->unk_04, 7);
    ov29_022567F0(param1);
}

static void ov29_02256ABC (UnkStruct_ov29_022566C8 * param0)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            {192 << FX32_SHIFT, 56 << FX32_SHIFT},
            0,
            0,
            2,
            0,
            0
        },
        {
            {192 << FX32_SHIFT, 136 << FX32_SHIFT},
            3,
            0,
            2,
            0,
            0
        },
    };

    sub_02006EC0(12, 32, 1, 0, 0, 1, 8);

    if (ov25_02255958(&param0->unk_54, 12, 33, 34, 8)) {
        int v1;

        for (v1 = 0; v1 < 2; v1++) {
            param0->unk_68[v1] = ov25_02255810(param0->unk_50, &v0[v1], &param0->unk_54);
        }
    }
}

static void ov29_02256B18 (UnkStruct_ov29_022566C8 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        ov25_022558B0(param0->unk_50, param0->unk_68[v0]);
    }

    ov25_022559B0(&param0->unk_54);
}
