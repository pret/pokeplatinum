#include "overlay062/ov62_02235278.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0208C06C.h"

#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_02234A10.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_022354A4.h"
#include "overlay062/struct_ov62_02235580.h"

#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_0208B284.h"

static BOOL ov62_02235278(UnkStruct_0208C06C *param0);
static BOOL ov62_02235308(UnkStruct_0208C06C *param0);
static BOOL ov62_02235324(UnkStruct_0208C06C *param0);
static BOOL ov62_02235444(UnkStruct_0208C06C *param0);
static BOOL ov62_02235580(UnkStruct_0208C06C *param0);
static BOOL ov62_02235854(UnkStruct_0208C06C *param0);
static BOOL ov62_02235A80(UnkStruct_0208C06C *param0);
static BOOL ov62_02235C70(UnkStruct_0208C06C *param0);
static int ov62_022352DC(void);

static BOOL ov62_02235278(UnkStruct_0208C06C *param0)
{
    if (TouchScreen_Tapped() && (param0->unk_89C == 0)) {
        ov62_02231A1C(param0);
    }

    if (param0->unk_00 == 0) {
        int v0 = ov62_022352DC();

        switch (v0) {
        case 1:
            Sound_PlayEffect(SEQ_SE_PL_BREC57);
            ov62_0222FB60(param0, 7);
            return 0;
        case 2:
            Sound_PlayEffect(SEQ_SE_PL_BREC57);
            ov62_0222FB60(param0, 8);
            return 0;
        default:
            break;
        }
    }

    ov62_02230054(param0);

    return 0;
}

static int ov62_022352DC(void)
{
    static const TouchScreenHitTable v0[] = {
        { 0, 192, 0, 8 },
        { 0, 192, 248, 256 },
    };

    if (TouchScreen_LocationHeld(&v0[0])) {
        return 1;
    }

    if (TouchScreen_LocationHeld(&v0[1])) {
        return 2;
    }

    return 0;
}

static BOOL ov62_02235308(UnkStruct_0208C06C *param0)
{
    BOOL v0 = 0;

    GF_ASSERT(0);

    param0->unk_14.unk_30 = 1;
    ov62_0222FB60(param0, 0);

    return ov62_02235278(param0);
}

static BOOL ov62_02235324(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        param0->unk_14.unk_40 = 0;
        param0->unk_0C = 0;
        sub_0208B9E0(param0->unk_6F0, 0);
        sub_0208B9E0(param0->unk_6F4, 0);
        ov62_02234540(param0, 1);
        param0->unk_08++;
        break;
    case 1:
        if (param0->unk_0C != 16) {
            param0->unk_0C += 2;
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFE, param0->unk_0C, ov62_022316D0(param0));
            PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_0C, ov62_022316D0(param0));
            PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0x3FFE, param0->unk_0C, ov62_022316D0(param0));
            PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_0C, ov62_022316D0(param0));
        } else {
            param0->unk_0C = 16;
            param0->unk_08++;
        }

        break;

    case 2:
        if (param0->unk_0C != 0) {
            param0->unk_0C -= 4;
        } else {
            StartScreenTransition(0, 0, 0, 0, 6, 1, HEAP_ID_102);
            param0->unk_08++;
        }
        break;
    default:
        if (IsScreenTransitionDone() == 1) {
            ov62_02234540(param0, 0);
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov62_02235444(UnkStruct_0208C06C *param0)
{
    BOOL v0 = ov62_02235008(param0);

    if (v0) {
        if (param0->unk_14.unk_30 == 1) {
            sub_0208B9E0(param0->unk_6F0, 0);
            ov62_0222FB60(param0, 0);
        } else {
            ov62_0222FB60(param0, 1);
        }
    }

    return 0;
}

static BOOL ov62_02235478(UnkStruct_0208C06C *param0)
{
    BOOL v0;

    switch (param0->unk_818[param0->unk_534.unk_1B0].unk_10) {
    default:
        v0 = 1;
        break;
    }

    if (v0) {
        if (param0->unk_14.unk_30 == 1) {
            sub_0208B9E0(param0->unk_6F0, 0);
            ov62_0222FB60(param0, 0);
        } else {
            ov62_0222FB60(param0, 1);
        }
    }

    return 0;
}

void ov62_022354A4(SysTask *param0, void *param1)
{
    UnkStruct_ov62_022354A4 *v0 = param1;

    switch (v0->unk_1D) {
    case 0:
        v0->unk_08 = (v0->unk_04 - v0->unk_00) / v0->unk_1C;
        v0->unk_0A = (v0->unk_06 - v0->unk_02) / v0->unk_1C;
        v0->unk_1D++;
    case 1: {
        s16 v1, v2;

        ov62_02230E74(v0->unk_20, &v1, &v2);

        v0->unk_1C--;

        if (v0->unk_1C == 0) {
            v1 = v0->unk_04;
            v2 = v0->unk_06;
            v0->unk_1D++;
        } else {
            v1 += v0->unk_08;
            v2 += v0->unk_0A;
        }

        if (v0->unk_28) {
            sub_0208B8B8(v0->unk_28, v1 + (15 + 1), v2);
            if (v0->unk_1C == 2) {
                *(v0->unk_30) = 1;
            }
        }

        ov62_02230E68(v0->unk_20, v1, v2);
        sub_020128C4(v0->unk_24, 36, -8);

        *(v0->unk_2C) = 1;
    } break;
    default:
        Heap_FreeToHeap(v0);
        SysTask_Done(param0);
        break;
    }
}

static BOOL ov62_02235580(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02235580 *v0;

    switch (param0->unk_08) {
    case 0: {
        int v1;
        UnkStruct_ov62_022354A4 *v2;
        UnkStruct_ov62_02235580 *v3 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_02235580));

        MI_CpuFill8(v3, 0, sizeof(UnkStruct_ov62_02235580));
        param0->unk_860 = v3;
        v3->unk_08 = 0;

        for (v1 = 0; v1 < param0->unk_534.unk_1AC; v1++) {
            v2 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_022354A4));
            memset(v2, 0, sizeof(UnkStruct_ov62_022354A4));
            ov62_02230E74(param0->unk_534.unk_C8[v1].unk_00, &v2->unk_00, &v2->unk_02);

            v2->unk_20 = param0->unk_534.unk_C8[v1].unk_00;
            v2->unk_24 = param0->unk_534.unk_C8[v1].unk_14;
            v2->unk_2C = &v3->unk_04;
            v2->unk_30 = &v3->unk_0C;

            if (v1 == param0->unk_534.unk_1B0) {
                v2->unk_28 = param0->unk_6F0;
                v2->unk_04 = v2->unk_00;
                v2->unk_06 = -48;
                v2->unk_1C = 8;
            } else {
                v2->unk_28 = NULL;
                v2->unk_04 = v2->unk_00;
                v2->unk_06 = (25 + (36 * 5) + (16 * (5 - (param0->unk_534.unk_1AC))));

                if (v2->unk_06 >= (25 + (36 * 5) + (16 * (4 - 3)))) {
                    v2->unk_06 = (25 + (36 * 5) + (16 * (4 - 3)));
                }

                v2->unk_1C = 8;
            }

            SysTask_Start(ov62_022354A4, v2, 8192);
        }

        v3->unk_00 = 0;
    }
        param0->unk_08++;
        break;
    case 1:
        v0 = param0->unk_860;

        if (v0->unk_00 != 16) {
            v0->unk_00 += 2;
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
        }

        {
            int v4;
            UnkStruct_ov62_022354A4 *v5;

            if (v0->unk_0C == 1) {
                v4 = 0;

                if (v0->unk_08 == 0) {
                    v0->unk_08 = 1;

                    do {
                        v5 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_022354A4));
                        memset(v5, 0, sizeof(UnkStruct_ov62_022354A4));
                        ov62_02230E74(param0->unk_534.unk_00[v4].unk_00, &v5->unk_00, &v5->unk_02);

                        v5->unk_20 = param0->unk_534.unk_00[v4].unk_00;
                        v5->unk_24 = param0->unk_534.unk_00[v4].unk_14;
                        v5->unk_2C = &v0->unk_04;
                        v5->unk_28 = NULL;
                        v5->unk_04 = v5->unk_00;

                        if (param0->unk_534.unk_1A4 == v4) {
                            v5->unk_04 = v5->unk_00;
                            v5->unk_06 = (25 + (36 * (5 - 1)));

                            ManagedSprite_SetAnim(param0->unk_534.unk_00[v4].unk_00, param0->unk_818[param0->unk_534.unk_1B0].unk_0C);
                            ov62_02230FC8(param0, &param0->unk_534.unk_00[param0->unk_534.unk_1A4], param0->unk_818[param0->unk_534.unk_1B0].unk_08, &param0->unk_818[param0->unk_534.unk_1B0]);
                            sub_020129D0(param0->unk_534.unk_00[param0->unk_534.unk_1A4].unk_14, 1);
                            ManagedSprite_SetDrawFlag(param0->unk_534.unk_00[v4].unk_00, 1);
                        } else {
                            v5->unk_04 = v5->unk_00 - 4;
                            v5->unk_06 = (16 * (param0->unk_534.unk_1A4 - v4)) + (25 + (36 * (5 - (param0->unk_534.unk_1A4 - v4) - 1)));
                        }

                        v5->unk_1C = 4;
                        SysTask_Start(ov62_022354A4, v5, 8192);
                        v4++;
                    } while (v4 <= param0->unk_534.unk_1A4);
                }

                v0->unk_04 = v0->unk_0C;
                v0->unk_0C = 0;
            }

            for (v4 = 0; v4 < param0->unk_534.unk_1A4; v4++) {
                if (v4 == param0->unk_534.unk_1A4) {
                    ManagedSprite_SetExplicitPaletteOffset(param0->unk_534.unk_00[v4].unk_00, (2 - 1));
                } else {
                    ManagedSprite_SetExplicitPaletteOffset(param0->unk_534.unk_00[v4].unk_00, (3 - 1));
                }
            }
        }

        if (v0->unk_04 == 0) {
            param0->unk_08++;
        }

        v0->unk_04 = 0;
        break;
    case 2: {
        if (param0->unk_818[param0->unk_534.unk_1B0].unk_20 == NULL) {
            ov62_0222FC1C(param0);
        } else {
            ov62_0222FB60(param0, 5);
        }

        ov62_0222FB90(param0);
        v0 = param0->unk_860;
        Heap_FreeToHeap(v0);
    } break;
    default:
        break;
    }

    return 0;
}

static BOOL ov62_02235854(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02235580 *v0;

    switch (param0->unk_08) {
    case 0: {
        int v1;
        UnkStruct_ov62_022354A4 *v2;

        v0 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_02235580));
        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov62_02235580));
        param0->unk_860 = v0;
        v1 = 0;

        do {
            v2 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_022354A4));

            memset(v2, 0, sizeof(UnkStruct_ov62_022354A4));
            ov62_02230E74(param0->unk_534.unk_00[v1].unk_00, &v2->unk_00, &v2->unk_02);

            v2->unk_20 = param0->unk_534.unk_00[v1].unk_00;
            v2->unk_24 = param0->unk_534.unk_00[v1].unk_14;
            v2->unk_2C = &v0->unk_04;
            v2->unk_30 = &v0->unk_0C;
            v2->unk_28 = NULL;
            v2->unk_04 = v2->unk_00;

            if (param0->unk_534.unk_1A4 - 1 == v1) {
                v2->unk_28 = param0->unk_6F0;
                v2->unk_04 = v2->unk_00;
                v2->unk_06 = (25 + (36 * (5 - 1))) + 48;
            } else {
                v2->unk_04 = v2->unk_00 + 4;
                v2->unk_06 = (25 + (36 * (5 - (param0->unk_534.unk_1A4 - v1)))) + (16 * (param0->unk_534.unk_1A4 - v1)) + 4;
            }

            v2->unk_1C = 4;
            SysTask_Start(ov62_022354A4, v2, 8192);
            v1++;
        } while (v1 <= (param0->unk_534.unk_1A4 - 1));
    }
        param0->unk_08++;
        break;
    case 1:
        v0 = param0->unk_860;
        {
            int v3;
            UnkStruct_ov62_022354A4 *v4;

            if (v0->unk_0C == 1) {
                for (v3 = 0; v3 < param0->unk_534.unk_1AC; v3++) {
                    v4 = Heap_AllocFromHeap(HEAP_ID_102, sizeof(UnkStruct_ov62_022354A4));
                    memset(v4, 0, sizeof(UnkStruct_ov62_022354A4));
                    ov62_02230E74(param0->unk_534.unk_C8[v3].unk_00, &v4->unk_00, &v4->unk_02);

                    v4->unk_20 = param0->unk_534.unk_C8[v3].unk_00;
                    v4->unk_24 = param0->unk_534.unk_C8[v3].unk_14;
                    v4->unk_2C = &v0->unk_04;
                    v4->unk_30 = &v0->unk_0C;
                    v4->unk_28 = NULL;
                    v4->unk_04 = v4->unk_00;
                    v4->unk_06 = (25 + (36 * 5) + (16 * (5 - (param0->unk_534.unk_1AC))));

                    if (v4->unk_06 >= (25 + (36 * 5) + (16 * (4 - 3)))) {
                        v4->unk_06 = (25 + (36 * 5) + (16 * (4 - 3)));
                    }

                    v4->unk_1C = 8;
                    SysTask_Start(ov62_022354A4, v4, 8192);
                }

                v0->unk_00 = 0;
                param0->unk_08++;
                param0->unk_534.unk_1A4--;

                for (v3 = 0; v3 < param0->unk_534.unk_1A4; v3++) {
                    if (v3 == param0->unk_534.unk_1A4 - 1) {
                        ManagedSprite_SetExplicitPaletteOffset(param0->unk_534.unk_00[v3].unk_00, (2 - 1));
                    } else {
                        ManagedSprite_SetExplicitPaletteOffset(param0->unk_534.unk_00[v3].unk_00, (3 - 1));
                    }
                }
            }
        }
        break;

    case 2:
        v0 = param0->unk_860;

        if (v0->unk_00 != 16) {
            v0->unk_00 += 2;
            PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
        }

        if (v0->unk_04 == 0) {
            param0->unk_08++;
        }

        v0->unk_04 = 0;
        break;
    default: {
        BOOL v5;

        v5 = ov62_0222FBF8(param0);
        v0 = param0->unk_860;

        Heap_FreeToHeap(v0);
        ov62_0222FB60(param0, 5);
    } break;
    }

    return 0;
}

// clang-format off
BOOL(*const Unk_ov62_02248BF0[])(UnkStruct_0208C06C * wk) = {
    ov62_02235278,
    ov62_02235308,
    ov62_02235324,
    ov62_02235580,
    ov62_02235854,
    ov62_02235444,
    ov62_02235478,
    ov62_02235A80,
    ov62_02235C70,
};
// clang-format on

static BOOL ov62_02235A80(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        param0->unk_14.unk_40 = 0;

        if (param0->unk_14.unk_48 > 0) {
            param0->unk_14.unk_48--;
        } else {
            param0->unk_14.unk_48 = 7 - 1;
        }

        param0->unk_14.unk_44 = ov62_022316A0(param0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02231664(&param0->unk_14.unk_40, 1)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        break;
    case 2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
        ov62_022317CC(param0, param0->unk_14.unk_48);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        param0->unk_08++;
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        param0->unk_08++;
        break;
    case 4:
        if (ov62_02231664(&param0->unk_14.unk_40, 0)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        break;
    default:
        ov62_0222FB60(param0, 0);
        break;
    }

    return 0;
}

static BOOL ov62_02235C70(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        param0->unk_14.unk_40 = 0;
        param0->unk_14.unk_48++;
        param0->unk_14.unk_48 %= 7;
        param0->unk_14.unk_44 = ov62_022316A0(param0);
        param0->unk_08++;
        break;
    case 1:
        if (ov62_02231664(&param0->unk_14.unk_40, 1)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        break;
    case 2:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
        ov62_022317CC(param0, param0->unk_14.unk_48);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        param0->unk_08++;
        break;
    case 3:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
        param0->unk_08++;
        break;
    case 4:
        if (ov62_02231664(&param0->unk_14.unk_40, 0)) {
            param0->unk_08++;
        }

        PaletteData_BlendMulti(param0->unk_14.unk_14, 2, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 3, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        PaletteData_BlendMulti(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_14.unk_40, param0->unk_14.unk_44);
        break;
    default:
        param0->unk_14.unk_40 = 0;
        ov62_0222FB60(param0, 0);
        break;
    }

    return 0;
}
