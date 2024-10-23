#include "overlay062/ov62_02234A10.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208C06C.h"

#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"
#include "overlay062/ov62_const_funcptr_tables.h"
#include "overlay062/struct_ov62_02235008.h"

#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0208B284.h"

static void ov62_02234A10(UnkStruct_0208C06C *param0);
static void ov62_02234A90(UnkStruct_0208C06C *param0);
static BOOL ov62_02234AB4(UnkStruct_0208C06C *param0);
static BOOL ov62_02234CDC(UnkStruct_0208C06C *param0);
static BOOL ov62_02234EF8(UnkStruct_0208C06C *param0);
static BOOL ov62_02234FCC(UnkStruct_0208C06C *param0);
BOOL ov62_02235008(UnkStruct_0208C06C *param0);

static void ov62_02234A10(UnkStruct_0208C06C *param0)
{
    Strbuf *v0;
    int v1;
    Window *v2 = &param0->unk_8A4;

    Window_Init(v2);
    BGL_AddWindow(param0->unk_14.unk_10, v2, 2, 8, 16, 16, 2, 14, 300);
    BGL_FillWindow(v2, 0x0);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_14.unk_34, 192);
    v1 = ov62_0223429C(v2, v0);

    Text_AddPrinterWithParamsAndColor(v2, FONT_SYSTEM, v0, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 14, 0), NULL);
    Strbuf_Free(v0);
    sub_0201A9A4(v2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov62_02234A90(UnkStruct_0208C06C *param0)
{
    sub_0201ACF4(&param0->unk_8A4);
    BGL_DeleteWindow(&param0->unk_8A4);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static BOOL ov62_02234AB4(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        if (ov62_022300BC(param0) == 1) {
            ov62_0222FB60(param0, 1);
            break;
        }

        sub_0200F174(0, 1, 1, 0x0, 6, 1, 102);
        sub_02003A2C(param0->unk_14.unk_14, 2, 0xFFFE, 16, ov62_022316D0(param0));
        sub_02003A2C(param0->unk_14.unk_14, 0, 0xBFFF, 16, ov62_022316D0(param0));
        sub_02003A2C(param0->unk_14.unk_14, 3, 0x3FFE, 16, ov62_022316D0(param0));
        sub_02003A2C(param0->unk_14.unk_14, 1, 0xFFFF, 16, ov62_022316D0(param0));
        sub_0208BA30(param0->unk_6F4);
        sub_0208BA30(param0->unk_6F0);
        param0->unk_08++;
        break;
    case 1:
        if (ScreenWipe_Done() == 0) {
            break;
        }

        sub_0208B948(param0->unk_6F4, 256 / 2, 16);
        sub_0208B8B8(param0->unk_6F4, 256 / 2, 192 + 24);
        sub_0208B9E0(param0->unk_6F4, 1);
        sub_0208B8B0(param0->unk_6F4, 1);
        Sound_PlayEffect(1374);
        param0->unk_08++;
        break;
    case 2:
        if ((++param0->unk_0C) < 25) {
            break;
        }

        param0->unk_0C = 0;
        sub_0208B948(param0->unk_6F0, 256 / 2, -16);
        sub_0208B8B8(param0->unk_6F0, 256 / 2, 192 / 2);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208B8B0(param0->unk_6F0, 1);
        param0->unk_08++;
        break;
    case 3:
        if ((++param0->unk_0C) < 18) {
            break;
        }

        ov62_02234A10(param0);
        sub_0208B9E0(param0->unk_6F4, 0);

        param0->unk_0C = 0;
        param0->unk_08++;
        break;
    case 4:
        if (param0->unk_0C < 16) {
            param0->unk_0C += 4;
            sub_02003A2C(param0->unk_14.unk_14, 0, 0xF000, param0->unk_0C, 0xFFFF);
        } else {
            param0->unk_08++;
        }
        break;
    case 5:
        if (param0->unk_0C > 0) {
            param0->unk_0C -= 4;
            sub_02003A2C(param0->unk_14.unk_14, 0, 0xF000, param0->unk_0C, 0xFFFF);
        } else {
            param0->unk_08++;
        }
        break;
    case 6:
        if (TouchScreen_Touched() == 1) {
            ov62_02234A90(param0);
            sub_0208B9E0(param0->unk_6F0, 0);
            sub_0208BA54(param0->unk_6F4);
            sub_0208BA54(param0->unk_6F0);
            param0->unk_08++;
        }
        break;
    default:
        ov62_0222FB60(param0, 1);
        break;
    }

    return 0;
}

static BOOL ov62_02234CDC(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        ov62_02234540(param0, 1);
        ov62_02230330(param0);
        ov62_02230464(param0);
        ov62_022306B8(param0);
        ov62_0223088C(param0);
        ov62_02230E80(param0);
        ov62_02230A5C(param0);
        ov62_02230AF0(param0);
        ov62_02234540(param0, 0);

        if (ov62_022300BC(param0) == 1) {
            if (param0->unk_00 == 0) {
                sub_0200710C(param0->unk_14.unk_00, 69, param0->unk_14.unk_10, 5, 0, 0, 0, 102);
            } else {
                sub_0200710C(param0->unk_14.unk_00, 55, param0->unk_14.unk_10, 5, 0, 0, 0, 102);
            }

            sub_0208B948(param0->unk_6F0, 256 / 2, 192 + 32);
            sub_0208B8B8(param0->unk_6F0, 256 / 2, 192 + 32);
            sub_0208B9E0(param0->unk_6F0, 0);
            sub_0208B8B0(param0->unk_6F0, 1);
            ov62_0222FB44(param0, param0->unk_838.unk_04, 1, param0->unk_10);
            break;
        }

        Sound_PlayEffect(1371);

        param0->unk_0C = 16;
        param0->unk_08++;
        break;
    case 1:
        if (ov62_022300BC(param0) == 1) {
            if (ScreenWipe_Done() == 1) {
                param0->unk_08++;
            }
        } else {
            if (param0->unk_0C != 0) {
                param0->unk_0C -= 2;
                sub_02003A2C(param0->unk_14.unk_14, 2, 0xFFFE, param0->unk_0C, ov62_022316D0(param0));
                sub_02003A2C(param0->unk_14.unk_14, 0, 0xFFFF, param0->unk_0C, ov62_022316D0(param0));
                sub_02003A2C(param0->unk_14.unk_14, 3, 0x3FFE, param0->unk_0C, ov62_022316D0(param0));
                sub_02003A2C(param0->unk_14.unk_14, 1, 0xFFFF, param0->unk_0C, ov62_022316D0(param0));
            } else {
                sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, 16, param0->unk_14.unk_44);
                sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
                param0->unk_08++;
            }
        }
        break;
    case 2:
        if (param0->unk_00 == 0) {
            sub_0200710C(param0->unk_14.unk_00, 69, param0->unk_14.unk_10, 5, 0, 0, 0, 102);
        } else {
            sub_0200710C(param0->unk_14.unk_00, 55, param0->unk_14.unk_10, 5, 0, 0, 0, 102);
        }

        param0->unk_08++;
        break;
    default:
        if (param0->unk_6F8[0].unk_2C < 3) {
            break;
        }

        ov62_0222FB60(param0, 2);
        break;
    }

    return 0;
}

static BOOL ov62_02234EF8(UnkStruct_0208C06C *param0)
{
    switch (param0->unk_08) {
    case 0:
        sub_0208B948(param0->unk_6F0, 256 / 2, 192 / 2);
        sub_0208B8B8(param0->unk_6F0, 256 / 2, 192 / 2);
        sub_0208B9E0(param0->unk_6F0, 1);
        sub_0208B8B0(param0->unk_6F0, 1);
        param0->unk_0C++;
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, 16 - param0->unk_0C, param0->unk_14.unk_44);

        if (param0->unk_0C == 2) {
            param0->unk_0C = 15;
            param0->unk_08++;
        }
        break;
    case 1:
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, param0->unk_0C, param0->unk_14.unk_44);
        param0->unk_08++;
        break;
    case 2:
        param0->unk_0C--;
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, param0->unk_0C, param0->unk_14.unk_44);

        if (param0->unk_0C == 0) {
            param0->unk_08++;
        }
        break;
    default:
        ov62_0222FB60(param0, 3);
        break;
    }

    return 0;
}

static BOOL ov62_02234FCC(UnkStruct_0208C06C *param0)
{
    BOOL v0 = ov62_02235008(param0);

    {
        s16 v1, v2;

        ov62_02230E74(param0->unk_534.unk_C8[0].unk_00, &v1, &v2);
        sub_0208B8B8(param0->unk_6F0, v1 + (15 + 1), v2);
    }

    return v0;
}

BOOL ov62_02235008(UnkStruct_0208C06C *param0)
{
    UnkStruct_ov62_02235008 *v0;

    switch (param0->unk_08) {
    case 0:

        v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02235008));
        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov62_02235008));
        param0->unk_860 = v0;
        v0->unk_50 = 16;

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_50, param0->unk_14.unk_44);

        {
            int v1;
            fx32 v2;

            for (v1 = 0; v1 < param0->unk_534.unk_1AC; v1++) {
                v0->unk_00[v1].unk_00 = (4 / 1) * v1;
                v0->unk_00[v1].unk_04 = 90;
                v0->unk_00[v1].unk_08 = (25 + (36 * (v1)) + (16 * (5 - (param0->unk_534.unk_1AC))));

                ov62_02230E68(param0->unk_534.unk_C8[v1].unk_00, 42, (25 + (36 * (5 - 1)) + (16 * (5 - (param0->unk_534.unk_1AC)))));
                sub_0200D638(param0->unk_534.unk_C8[v1].unk_00, &v0->unk_00[v1].unk_0C, &v2);
                sub_0200D614(param0->unk_534.unk_C8[v1].unk_00, v0->unk_00[v1].unk_0C, (25 + (36 * (5 - 1)) + (16 * (5 - (param0->unk_534.unk_1AC)))) * FX32_ONE);
                sub_020128C4(param0->unk_534.unk_C8[v1].unk_14, 36, -8);
                sub_020129D0(param0->unk_534.unk_C8[v1].unk_14, 1);
            }

            param0->unk_08++;
        }
        break;
    case 1:
        v0 = param0->unk_860;

        if (v0->unk_50 != 0) {
            v0->unk_50 -= (1 * 1);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_50, param0->unk_14.unk_44);
        }

        {
            int v3;
            int v4 = 0;
            s16 v5, v6;
            fx32 v7, v8;

            for (v3 = 0; v3 < param0->unk_534.unk_1AC; v3++) {
                if (v0->unk_00[v3].unk_00 != 0) {
                    v0->unk_00[v3].unk_00--;
                    continue;
                }

                ov62_02230E74(param0->unk_534.unk_C8[v3].unk_00, &v5, &v6);

                if (v6 == v0->unk_00[v3].unk_08) {
                    v4++;
                    continue;
                } else if (v6 - (8 * 1) > v0->unk_00[v3].unk_08) {
                    v6 -= (8 * 1);
                } else {
                    v6 = v0->unk_00[v3].unk_08;
                }

                v8 = v6 * FX32_ONE;
                v7 = v0->unk_00[v3].unk_0C + (sub_0201D250((v0->unk_00[v3].unk_04 * 0xffff) / 360) * 16);
                v0->unk_00[v3].unk_04 += (-4 * 1);

                sub_0200D614(param0->unk_534.unk_C8[v3].unk_00, v7, v8);
                sub_020128C4(param0->unk_534.unk_C8[v3].unk_14, 36, -8);
            }
            if (v4 == param0->unk_534.unk_1AC) {
                param0->unk_08++;
            }
        }
        break;
    default:
        v0 = param0->unk_860;
        {
            s16 v9, v10;

            ov62_02230E74(param0->unk_534.unk_C8[param0->unk_534.unk_1B0].unk_00, &v9, &v10);
            sub_0208B948(param0->unk_6F0, v9 + (15 + 1), v10);
            sub_0208B8B8(param0->unk_6F0, v9 + (15 + 1), v10);
            sub_0208B9E0(param0->unk_6F0, 0);
            ov62_0222FF7C(param0);
            Heap_FreeToHeap(v0);
        }
        return 1;
    }

    return 0;
}

// clang-format off
BOOL(*const Unk_ov62_02248BD8[])(UnkStruct_0208C06C *) = {
    ov62_02234AB4,
    ov62_02234CDC,
    ov62_02234EF8,
    ov62_02234FCC,
};
// clang-format on
