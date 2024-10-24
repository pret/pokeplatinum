#include "overlay053/ov53_02256420.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay053/struct_ov53_02256420_1.h"
#include "overlay053/struct_ov53_02256420_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "pokemon_icon.h"
#include "sys_task_manager.h"
#include "unk_0201D15C.h"

struct UnkStruct_ov53_02256420_t {
    const UnkStruct_ov53_02256420_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24[16];
    UnkStruct_ov25_02255958 unk_64;
    UnkStruct_ov25_02255958 unk_78;
    u32 unk_8C[4];
    UnkStruct_ov25_022558C4 *unk_9C;
    fx32 unk_A0;
    fx32 unk_A4;
    fx32 unk_A8;
    u32 unk_AC;
};

static void ov53_0225649C(UnkStruct_ov25_02255224 *param0);
static void ov53_022564B0(SysTask *param0, void *param1);
static void ov53_02256548(SysTask *param0, void *param1);
static void ov53_02256568(SysTask *param0, void *param1);
static void ov53_022565E0(SysTask *param0, void *param1);
static void ov53_022566AC(UnkStruct_ov53_02256420 *param0, const UnkStruct_ov53_02256420_1 *param1);
static void ov53_02256840(UnkStruct_ov53_02256420 *param0);
static void ov53_02256874(UnkStruct_ov25_022558C4 **param0, u32 param1);

BOOL ov53_02256420(UnkStruct_ov53_02256420 **param0, const UnkStruct_ov53_02256420_1 *param1, BgConfig *param2)
{
    UnkStruct_ov53_02256420 *v0 = (UnkStruct_ov53_02256420 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov53_02256420));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov53_02256454(UnkStruct_ov53_02256420 *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov53_02256914[] = {
    { 0x0, ov53_022564B0, 0x0 },
    { 0x1, ov53_02256548, 0x0 },
    { 0x2, ov53_02256568, 0x0 },
    { 0x3, ov53_022565E0, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov53_02256460(UnkStruct_ov53_02256420 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov53_02256914, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov53_02256484(UnkStruct_ov53_02256420 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov53_02256490(UnkStruct_ov53_02256420 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov53_0225649C(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov53_02256420 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov53_022564B0(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0,
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
    GXSDispCnt v1;
    UnkStruct_ov53_02256420 *v2;
    const UnkStruct_ov53_02256420_1 *v3;

    v2 = ov25_0225523C(param1);
    v3 = ov25_02255240(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 122, v2->unk_04, 6, 0, 0, 1, 8);
    Graphics_LoadTilemapToBgLayer(12, 121, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    ov53_022566AC(v2, v3);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);
    ov53_0225649C(param1);
}

static void ov53_02256548(SysTask *param0, void *param1)
{
    UnkStruct_ov53_02256420 *v0 = ov25_0225523C(param1);

    ov53_02256840(v0);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov53_0225649C(param1);
}

static void ov53_02256568(SysTask *param0, void *param1)
{
    UnkStruct_ov53_02256420 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov53_02256420_1 *v1 = ov25_02255240(param1);

    if (v1->unk_00) {
        u32 v2 = PokeIconSpriteIndex(v1->unk_00, 0, 0);

        ov25_022553A0(v0->unk_AC, &v2, 1, 1);
        ov25_02255938(v0->unk_24[0], 1 + PokeIconPaletteIndex(v1->unk_00, 0, 0));
        ov53_02256874(&(v0->unk_24[4]), v1->unk_04);
    } else {
        int v3;

        ov25_02255914(v0->unk_24[0], 1);

        for (v3 = 0; v3 < 3; v3++) {
            ov25_02255914(v0->unk_24[4 + v3], 1);
        }
    }

    ov53_0225649C(param1);
}

static void ov53_022565E0(SysTask *param0, void *param1)
{
    UnkStruct_ov53_02256420 *v0;
    const UnkStruct_ov53_02256420_1 *v1;
    int v2;

    v0 = ov25_0225523C(param1);
    v1 = ov25_02255240(param1);
    v2 = ov25_02255248(param1);

    switch (v2) {
    case 0: {
        v0->unk_9C = v0->unk_24[1 + v1->unk_24];
        ov25_02255908(v0->unk_9C, &(v0->unk_A4), &(v0->unk_A0));
    }

        ov25_02254444(v1->unk_08[v1->unk_24], 0);
        ov25_022558C4(v0->unk_9C, 6);
        ov25_0225524C(param1);
        v2++;
    default: {
        int v3;
        fx32 v4;

        v3 = ((((180 << FX32_SHIFT) / 16) * v2) + FX32_HALF) >> FX32_SHIFT;
        v4 = sub_0201D15C(v3) * 24;
        ov25_02255900(v0->unk_9C, v0->unk_A4, v0->unk_A0 - v4);
    }
        ov25_0225524C(param1);
        break;
    case 16:
        ov25_02255900(v0->unk_9C, v0->unk_A4, v0->unk_A0);
        ov25_022558C4(v0->unk_9C, 4);
        ov53_0225649C(param1);
        break;
    }
}

static void ov53_022566AC(UnkStruct_ov53_02256420 *param0, const UnkStruct_ov53_02256420_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { (96 << FX32_SHIFT), (32 << FX32_SHIFT) },
            4,
            0,
            2,
            10,
            1,
        },
        {
            { (112 << FX32_SHIFT), (80 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            1,
        },
        {
            { (176 << FX32_SHIFT), (96 << FX32_SHIFT) },
            4,
            0,
            2,
            1,
            1,
        },
        {
            { (48 << FX32_SHIFT), (104 << FX32_SHIFT) },
            4,
            0,
            2,
            2,
            1,
        },
        {
            { ((144 + 8 * 0) << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((144 + 8 * 1) << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((144 + 8 * 2) << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((100 + 8 * 0) << FX32_SHIFT), (144 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((100 + 8 * 1) << FX32_SHIFT), (144 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((100 + 8 * 2) << FX32_SHIFT), (144 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((164 + 8 * 0) << FX32_SHIFT), (160 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((164 + 8 * 1) << FX32_SHIFT), (160 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((164 + 8 * 2) << FX32_SHIFT), (160 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((36 + 8 * 0) << FX32_SHIFT), (168 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((36 + 8 * 1) << FX32_SHIFT), (168 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
        {
            { ((36 + 8 * 2) << FX32_SHIFT), (168 << FX32_SHIFT) },
            0,
            0,
            2,
            3,
            0,
        },
    };
    u32 v1;
    u32 v2[4];
    int v3, v4, v5;

    ov25_02255958(&param0->unk_78, 12, 5, 6, 8);
    ov25_02255958(&param0->unk_64, 12, 123, 124, 8);

    v1 = Graphics_LoadObjectTiles(12, 125, 1, 0, 0, 1, 8);
    v1 /= 0x20;
    param0->unk_AC = v1;

    v2[0] = param1->unk_00;

    for (v3 = 0; v3 < 3; v3++) {
        v2[1 + v3] = param1->unk_08[v3];
    }

    for (v3 = 0; v3 < 4; v3++) {
        param0->unk_8C[v3] = PokeIconSpriteIndex(((v2[v3]) ? v2[v3] : 1), 0, 0);
    }

    ov25_022553A0(v1, param0->unk_8C, NELEMS(param0->unk_8C), 1);
    ov25_02255360(1);

    for (v3 = 0; v3 < 16; v3++) {
        param0->unk_24[v3] = NULL;
    }

    for (v3 = 0; v3 < 4; v3++) {
        param0->unk_24[0 + v3] = ov25_02255810(param0->unk_20, &v0[v3], &param0->unk_78);
        ov25_02255940(param0->unk_24[0 + v3], v1 + v3 * 32);

        for (v4 = 0; v4 < 3; v4++) {
            v5 = 4 + v3 * 3 + v4;
            param0->unk_24[v5] = ov25_02255810(param0->unk_20, &v0[v5], &param0->unk_64);
        }

        if (v2[v3] == 0) {
            ov25_02255914(param0->unk_24[0 + v3], 1);

            for (v4 = 0; v4 < 3; v4++) {
                v5 = 4 + v3 * 3 + v4;
                ov25_02255914(param0->unk_24[v5], 1);
            }
        } else {
            ov25_02255938(param0->unk_24[0 + v3], 1 + PokeIconPaletteIndex(v2[v3], 0, 0));
            ov53_02256874(&(param0->unk_24[4 + v3 * 3]), (v3 == 0) ? param1->unk_04 : param1->unk_14[v3 - 1]);
        }
    }
}

static void ov53_02256840(UnkStruct_ov53_02256420 *param0)
{
    int v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (param0->unk_24[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_24[v0]);
            param0->unk_24[v0] = NULL;
        }
    }

    ov25_022559B0(&param0->unk_78);
    ov25_022559B0(&param0->unk_64);
}

static void ov53_02256874(UnkStruct_ov25_022558C4 **param0, u32 param1)
{
    int v0, v1, v2;
    BOOL v3 = 0;

    if (param1 > 999) {
        param1 = 999;
    }

    for (v0 = 0, v2 = 100; v0 < 3; v0++, v2 /= 10) {
        v1 = param1 / v2;

        if ((v3 == 1) || (v1 != 0) || (v0 == 2)) {
            ov25_022558C4(*param0, v1);
            v3 = 1;
        } else {
            ov25_02255914(*param0, 1);
        }

        param1 -= (v1 * v2);
        param0++;
    }
}
