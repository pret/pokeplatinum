#include "overlay079/ov79_021D183C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_defs/struct_0203D9B8.h"
#include "struct_defs/struct_020989DC.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay079/struct_ov79_021D0E1C.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "cell_actor.h"
#include "font.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_020158A8.h"
#include "unk_02018340.h"
#include "unk_02098FFC.h"

static void ov79_021D1D88(BmpList *param0, u32 param1, u8 param2);
static void ov79_021D1D94(BmpList *param0, u32 param1, u8 param2);
static void ov79_021D1FA8(BmpList *param0, u32 param1, u8 param2);

static const UnkStruct_ov84_02240FA8 Unk_ov79_021D3BB0 = {
    NULL,
    ov79_021D1D94,
    ov79_021D1D88,
    NULL,
    0x0,
    0x6,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0x0,
    0x2,
    0x0,
    0x0,
    0x1,
    0x0,
    0x1,
    NULL
};

static const UnkStruct_ov84_02240FA8 Unk_ov79_021D3B90 = {
    NULL,
    ov79_021D1FA8,
    NULL,
    NULL,
    0x0,
    0x3,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    NULL
};

static void ov79_021D183C(UnkStruct_020989DC *param0)
{
    param0->unk_04_val1_5 = 0;
    param0->unk_07 = param0->unk_06 = 0xFF;
}

static void ov79_021D1850(UnkStruct_ov79_021D0E1C *param0, Strbuf *param1, u8 param2, u8 param3)
{
    u32 v0 = TEXT_COLOR(1, 2, 15);

    if (param3) {
        sub_0200E060(&param0->unk_E8[2], 1, 1, 14);
    }

    BGL_WindowColor(&(param0->unk_E8[2]), ((15 << 4) | 15), 0, 0, 27 * 8, 4 * 8);
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);

    param0->unk_1F = Text_AddPrinterWithParamsAndColor(&param0->unk_E8[2], FONT_MESSAGE, param1, 0, 0, param2, v0, NULL);
}

static u16 ov79_021D18B4(UnkStruct_0203D9B8 *param0, UnkStruct_ov79_021D0E1C *param1)
{
    u16 v0, v1 = 0;
    u8 v2, v3;
    UnkStruct_020989DC *v4;

    param1->unk_1D = param1->unk_1E = 0xFF;

    if (param1->unk_1B == 5) {
        v2 = 0x1F;
    } else {
        v2 = 1;

        for (v0 = 0; v0 < param1->unk_1B; v0++) {
            v2 <<= 1;
        }
    }

    for (v0 = 0; v0 < param0->unk_00; v0++) {
        v4 = &param0->unk_1C[v0];
        ov79_021D183C(v4);

        if ((!v4->unk_04_val1_7) || v4->unk_04_val1_6) {
            continue;
        }

        v3 = (v4->unk_20_val2 & 0x1F);

        if ((v3 & v2) == 0) {
            continue;
        }

        v4->unk_04_val1_5 = 1;

        if (param1->unk_1D == 0xFF) {
            param1->unk_1D = v4->unk_05;
        } else {
            param0->unk_1C[param1->unk_1E].unk_07 = v4->unk_05;
        }

        v4->unk_06 = param1->unk_1E;
        param1->unk_1E = v4->unk_05;
        ++v1;
    }

    v1 += 1;

    return v1;
}

void ov79_021D196C(UnkStruct_ov79_021D0E1C *param0)
{
    u8 v0 = 0, v1 = 0;
    UnkStruct_020989DC *v2;

    param0->unk_1C = ov79_021D18B4(param0->unk_20, param0);
    param0->unk_CC = sub_02013A04(param0->unk_1C, param0->unk_00);

    for (v0 = param0->unk_1E; v0 != 0xFF; v0 = v1) {
        v2 = &(param0->unk_20->unk_1C[v0]);
        v1 = v2->unk_06;

        StringTemplate_SetStrbuf(param0->unk_30.unk_00, 0, sub_02015918(param0->unk_28, v2->unk_02), 0, 0, GAME_LANGUAGE);
        StringTemplate_SetNumber(param0->unk_30.unk_00, 1, v2->unk_01, 2, 2, 1);
        StringTemplate_Format(param0->unk_30.unk_00, param0->unk_30.unk_04, param0->unk_30.unk_0C);
        sub_02013A6C(param0->unk_CC, param0->unk_30.unk_04, v2->unk_05);
    }

    sub_02013A6C(param0->unk_CC, param0->unk_30.unk_08, 0xFF);
    MI_CpuCopy8(&Unk_ov79_021D3BB0, &param0->unk_84, sizeof(UnkStruct_ov84_02240FA8));

    param0->unk_82 = param0->unk_20->unk_06;
    param0->unk_80 = param0->unk_20->unk_04;

    if (param0->unk_20->unk_02) {
        if (param0->unk_80 == 0) {
            if ((param0->unk_82 != 0) && (param0->unk_82 >= (param0->unk_1C - 1))) {
                --param0->unk_82;
            }
        } else {
            if (param0->unk_80 + 6 >= param0->unk_1C) {
                --param0->unk_80;
            }
        }

        param0->unk_20->unk_02 = 0;
    }

    param0->unk_84.unk_0C = &(param0->unk_E8[0]);
    param0->unk_84.unk_00 = param0->unk_CC;
    param0->unk_84.unk_1C = (void *)param0;
    param0->unk_84.unk_10 = param0->unk_1C;
    param0->unk_16 = 0;
    param0->unk_C4 = sub_0200112C(&param0->unk_84, param0->unk_80, param0->unk_82, param0->unk_00);
    param0->unk_16 = 1;
}

void ov79_021D1AB8(UnkStruct_ov79_021D0E1C *param0, BOOL param1)
{
    BGL_WindowColor(&(param0->unk_E8[0]), ((0 << 4) | 0), 0, 0, 22 * 8, 12 * 8);

    if (param1) {
        sub_0201ACF4(&param0->unk_E8[0]);
    }

    sub_02001384(param0->unk_C4, &(param0->unk_80), &(param0->unk_82));
    sub_02013A3C(param0->unk_CC);

    param0->unk_20->unk_04 = param0->unk_80;
    param0->unk_20->unk_06 = param0->unk_82;

    param0->unk_C4 = NULL;
    param0->unk_CC = NULL;
}

void ov79_021D1B24(UnkStruct_ov79_021D0E1C *param0, u8 param1, u8 param2)
{
    switch (param2) {
    case 0:
        CellActor_SetAnim(param0->unk_1E0[param1], param1 * 3);
        CellActor_SetAnimateFlag(param0->unk_1E0[param1], 0);
        sub_0201C04C(
            &param0->unk_E8[7 + param1], 1, 2, ((0 << 4) | 0));
        break;
    case 1:
        CellActor_RestartAnim(param0->unk_1E0[param1]);
        CellActor_SetAnimateFlag(param0->unk_1E0[param1], 1);
        sub_0201C04C(&param0->unk_E8[7 + param1], 0, 4, ((0 << 4) | 0));
        param0->unk_14 = 1;
        break;
    case 2:
        CellActor_SetAnim(param0->unk_1E0[param1], param1 * 3 + 1);
        sub_0201C04C(&param0->unk_E8[7 + param1], 1, 2, ((0 << 4) | 0));
        param0->unk_14 = 0;
        break;
    case 3:
        CellActor_SetAnim(param0->unk_1E0[param1], param1 * 3 + 2);
        sub_0201C04C(&param0->unk_E8[7 + param1], 0, 2, ((0 << 4) | 0));
        param0->unk_14 = 1;
        break;
    case 4:
        CellActor_SetAnim(param0->unk_1E0[param1], param1 * 3 + 1);
        CellActor_SetAnimateFlag(param0->unk_1E0[param1], 1);
        sub_0201C04C(&param0->unk_E8[7 + param1], 0, 2, ((0 << 4) | 0));
        param0->unk_14 = 0;
        break;
    }

    sub_0201A954(&param0->unk_E8[7 + param1]);
}

void ov79_021D1C44(UnkStruct_ov79_021D0E1C *param0, u8 param1)
{
    int v0;
    TextColor v1 = TEXT_COLOR(1, 2, 0);

    Sound_PlayEffect(1508);

    if (param0->unk_14 != 0xFFFF) {
        if (param1 == param0->unk_1B) {
            ov79_021D1B24(param0, param1, 3);
            return;
        }

        ov79_021D1B24(param0, param0->unk_1B, 0);
    }

    ov79_021D1B24(param0, param1, 1);
    param0->unk_1B = param1;

    ov79_021D1AB8(param0, 0);
    param0->unk_80 = param0->unk_82 = 0;
    param0->unk_20->unk_04 = param0->unk_20->unk_06 = 0;

    ov79_021D196C(param0);
    BGL_WindowColor(&(param0->unk_E8[6]), ((0 << 4) | 0), 0, 0, 20 * 8, 3 * 8);

    if (param0->unk_1B == 5) {
        sub_0201A954(&param0->unk_E8[6]);
        return;
    }

    v0 = (20 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_30.unk_38[param0->unk_1B], 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_E8[6], FONT_SYSTEM, param0->unk_30.unk_38[param0->unk_1B], v0 / 2, 3, TEXT_SPEED_INSTANT, v1, NULL);
}

static void ov79_021D1D20(UnkStruct_ov79_021D0E1C *param0, UnkStruct_020989DC *param1)
{
    u8 v0 = 0, v1 = 0x1;

    if (param1 == NULL) {
        for (v0 = 0; v0 < 5; v0++) {
            CellActor_SetDrawFlag(param0->unk_1CC[v0], 0);
        }
        return;
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param1->unk_20_val2 & v1) {
            CellActor_SetDrawFlag(param0->unk_1CC[v0], 1);
        } else {
            CellActor_SetDrawFlag(param0->unk_1CC[v0], 0);
        }

        v1 <<= 1;
    }
}

static void ov79_021D1D88(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov79_021D0E1C *v0 = (UnkStruct_ov79_021D0E1C *)sub_02001504(param0, 19);
    TextColor v1;

    v1 = TEXT_COLOR(1, 2, 0);
}

static void ov79_021D1D94(BmpList *param0, u32 param1, u8 param2)
{
    UnkStruct_ov79_021D0E1C *v0 = (UnkStruct_ov79_021D0E1C *)sub_02001504(param0, 19);
    TextColor v1;
    u16 v2, v3;
    u8 v4 = 0;

    v1 = TEXT_COLOR(1, 2, 0);

    if (!param2) {
        Sound_PlayEffect(1500);
    }

    sub_020014DC(param0, &v2, &v3);
    SpriteActor_SetPositionXY(v0->unk_1C0[0], 105, v3 * 16 + 40);

    if (v2 == 0) {
        CellActor_SetDrawFlag(v0->unk_1C0[1], 0);
    } else {
        CellActor_SetDrawFlag(v0->unk_1C0[1], 1);
    }

    if (v2 < (v0->unk_1C - 6)) {
        CellActor_SetDrawFlag(v0->unk_1C0[2], 1);
    } else {
        CellActor_SetDrawFlag(v0->unk_1C0[2], 0);
    }

    BGL_WindowColor(&(v0->unk_E8[1]), ((0 << 4) | 0), 0, 0, 10 * 8, 2 * 8);

    if (param1 == 0xFF) {
        ov79_021D1D20(v0, NULL);
        sub_0201A954(&v0->unk_E8[1]);
        SpriteActor_EnableObject(v0->unk_1FC->unk_04, 0);
        return;
    }

    ov79_021D1D20(v0, &v0->unk_20->unk_1C[param1]);
    Strbuf_Clear(v0->unk_30.unk_04);

    v4 = v0->unk_20->unk_1C[param1].unk_03;

    if (v4 > 99) {
        v4 = 99;
    }

    StringTemplate_SetNumber(v0->unk_30.unk_00, 0, v4, 2, 0, 1);
    StringTemplate_Format(v0->unk_30.unk_00, v0->unk_30.unk_04, v0->unk_30.unk_10);
    Text_AddPrinterWithParamsAndColor(&v0->unk_E8[1], FONT_SYSTEM, v0->unk_30.unk_04, 8, 0, TEXT_SPEED_INSTANT, v1, NULL);
    sub_0209933C(v0->unk_1F8, v0->unk_1FC, v0->unk_20->unk_1C[param1].unk_02);
    SpriteActor_EnableObject(v0->unk_1FC->unk_04, 1);
}

void ov79_021D1ED8(UnkStruct_ov79_021D0E1C *param0)
{
    u8 v0 = 0;

    param0->unk_D0 = sub_02013A04(3, param0->unk_00);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02013A4C(param0->unk_D0, param0->unk_2C, 1 + v0, v0);
    }

    MI_CpuCopy8(&Unk_ov79_021D3B90, &param0->unk_A4, sizeof(UnkStruct_ov84_02240FA8));

    param0->unk_A4.unk_0C = &(param0->unk_E8[3]);
    param0->unk_A4.unk_00 = param0->unk_D0;
    param0->unk_A4.unk_1C = (void *)param0;
    param0->unk_A4.unk_10 = 3;

    Window_Show(&param0->unk_E8[3], 1, 1 + 18 + 12, 15);

    param0->unk_C8 = sub_0200112C(&param0->unk_A4, 0, 0, param0->unk_00);
}

void ov79_021D1F60(UnkStruct_ov79_021D0E1C *param0)
{
    u16 v0, v1;

    Window_Clear(&(param0->unk_E8[3]), 0);
    sub_0201ACF4(&param0->unk_E8[3]);

    sub_02001384(param0->unk_C8, &v1, &v0);
    sub_02013A3C(param0->unk_D0);

    param0->unk_C8 = NULL;
    param0->unk_D0 = NULL;
}

static void ov79_021D1FA8(BmpList *param0, u32 param1, u8 param2)
{
    if (!param2) {
        Sound_PlayEffect(1500);
    }
}

void ov79_021D1FBC(UnkStruct_ov79_021D0E1C *param0)
{
    Strbuf_Clear(param0->unk_30.unk_04);
    StringTemplate_SetStrbuf(param0->unk_30.unk_00, 0, sub_02015918(param0->unk_28, param0->unk_20->unk_1C[param0->unk_1A].unk_02), 2, 1, GAME_LANGUAGE);
    StringTemplate_Format(param0->unk_30.unk_00, param0->unk_30.unk_04, param0->unk_30.unk_14);

    ov79_021D1850(param0, param0->unk_30.unk_04, param0->unk_30.unk_4C, 1);
}

void ov79_021D2008(UnkStruct_ov79_021D0E1C *param0)
{
    Strbuf_Clear(param0->unk_30.unk_04);
    StringTemplate_SetStrbuf(param0->unk_30.unk_00, 0, sub_02015918(param0->unk_28, param0->unk_20->unk_1C[param0->unk_1A].unk_02), 2, 1, GAME_LANGUAGE);
    StringTemplate_Format(param0->unk_30.unk_00, param0->unk_30.unk_04, param0->unk_30.unk_18);

    ov79_021D1850(param0, param0->unk_30.unk_04, param0->unk_30.unk_4C, 0);
}

void ov79_021D2054(UnkStruct_ov79_021D0E1C *param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        1, 26, 13, 5, 4, 13, 463
    };

    param0->unk_D4 = sub_02002100(param0->unk_24, &v0, 1 + 18 + 12, 15, param0->unk_00);
}

void ov79_021D2078(UnkStruct_ov79_021D0E1C *param0)
{
    int v0, v1;
    TextColor v2 = TEXT_COLOR(1, 2, 0);
    TextColor v3 = TEXT_COLOR(2, 3, 1);

    Text_AddPrinterWithParamsAndColor(&param0->unk_E8[5], FONT_SYSTEM, param0->unk_30.unk_1C, 4, 0, TEXT_SPEED_INSTANT, v2, NULL);

    for (v1 = 0; v1 < 6; v1++) {
        static const u8 v4[] = { 2, 10, 4, 6, 10, 6 };

        v0 = (8 * 8) - Font_CalcStrbufWidth(FONT_SUBSCREEN, param0->unk_30.unk_20[v1], 0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_E8[7 + v1], FONT_SUBSCREEN, param0->unk_30.unk_20[v1], v0 / 2, v4[v1], TEXT_SPEED_INSTANT, v3, NULL);
    }
}
