#include "unk_0206F314.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202E8C0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0202EE10.h"
#include "struct_defs/struct_0202EE10_sub1.h"
#include "struct_defs/struct_0205AA50.h"

#include "field/field_system.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"
#include "overlay104/struct_ov104_02241308.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "unk_02018340.h"
#include "unk_0202E840.h"
#include "unk_020508D4.h"

typedef struct {
    MessageLoader *unk_00;
    StringTemplate *unk_04;
    Strbuf *unk_08;
    Strbuf *unk_0C;
    Strbuf *unk_10;
    Strbuf *unk_14;
    Strbuf *unk_18;
    Strbuf *unk_1C[7];
    Strbuf *unk_38[6];
    Strbuf *unk_50[6];
    Strbuf *unk_68[3];
} UnkStruct_0206F7F8_sub1;

typedef struct {
    UnkStruct_0202EE10_sub1 *unk_00;
    u16 unk_04;
    u8 unk_06;
} UnkStruct_0206F3A0;

typedef struct {
    int unk_00;
    UnkStruct_0206F3A0 unk_04[7];
} UnkStruct_02070050;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
} UnkStruct_020F02D0;

typedef struct {
    int unk_00;
    int *unk_04;
    int unk_08;
    int unk_0C;
    u16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u16 unk_1A;
    u16 unk_1C;
    u8 unk_1E;
    u8 unk_1F;
    u8 unk_20;
    u8 unk_21;
    u16 unk_22;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    UnkStruct_0206F7F8_sub1 unk_2C;
    UnkStruct_ov84_02240FA8 unk_A0;
    BmpList *unk_C0;
    ResourceMetadata *unk_C4;
    UIControlData *unk_C8;
    FieldSystem *fieldSystem;
    BGL *unk_D0;
    Window unk_D4;
    Window unk_E4;
    Window unk_F4;
    Window unk_104[3];
    UnkStruct_ov5_021D30A8 unk_134;
    CellActorData *unk_2FC[2];
    UnkStruct_0202E8C0 *unk_304;
    UnkStruct_0202EE10 *unk_308[7];
    UnkStruct_02070050 *unk_324;
    UnkStruct_0206F3A0 *unk_328;
    u8 unk_32C[6];
} UnkStruct_0206F7F8;

typedef struct {
    int unk_00;
    u16 unk_04;
    UnkStruct_0206F7F8 *unk_08;
} UnkStruct_0206F314;

static void sub_0206F7F8(UnkStruct_0206F7F8 *param0, SaveData *param1);
static void sub_0206F9D4(UnkStruct_0206F7F8 *param0);
static void sub_0206FA08(UnkStruct_0206F7F8 *param0);
static void sub_0206FAC0(UnkStruct_0206F7F8 *param0);
static void sub_0206FB38(UnkStruct_0206F7F8 *param0);
static void sub_0206FC4C(UnkStruct_0206F7F8 *param0);
static void sub_0206FCC4(UnkStruct_0206F7F8 *param0);
static void sub_0206FD94(UnkStruct_0206F7F8 *param0);
static void sub_0206FDC0(UnkStruct_0206F7F8 *param0, u16 param1, u16 param2);
static void sub_0206FF10(UnkStruct_0206F7F8 *param0);
static void sub_0206FF60(BmpList *param0, u32 param1, u8 param2);
static void sub_0206FFB4(UnkStruct_0206F7F8 *param0);
static void sub_0206FFE4(UnkStruct_0206F7F8 *param0);
static void sub_02070010(UnkStruct_0206F7F8 *param0);
static void sub_02070050(UnkStruct_0206F7F8 *param0, BOOL param1);
static void sub_020701DC(UnkStruct_0206F7F8 *param0, u16 param1);
static void sub_02070288(UnkStruct_0206F7F8 *param0);

static const UnkStruct_ov84_02240FA8 Unk_020F02B0 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x0,
    0x7,
    0x2,
    0x8,
    0x1,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x0,
    0x1,
    0x0,
    0x1,
    NULL
};

static const UnkStruct_020F02D0 Unk_020F02D0[] = {
    { 0x270F, 0x4, 0xF },
    { 0x270F, 0x4, 0xF },
    { 0x270F, 0x4, 0xF },
    { 0x270F, 0x4, 0xF },
    { 0x270F, 0x4, 0xF },
    { 0x7, 0x1, 0x10 }
};

static const UnkStruct_020F02D0 Unk_020F0290[] = {
    { 0xF423F, 0x6, 0x13 },
    { 0xF423F, 0x6, 0x13 },
    { 0xF423F, 0x6, 0x12 },
    { 0xF423F, 0x6, 0x13 }
};

static const UnkStruct_020F02D0 Unk_020F0278[] = {
    { 0x270F, 0x4, 0x15 },
    { 0x64, 0x4, 0x14 },
    { 0xFFFF, 0x5, 0x11 }
};

static const UnkStruct_020F02D0 *const Unk_020F0254[] = {
    Unk_020F02D0,
    Unk_020F0290,
    Unk_020F0278
};

static int sub_0206F314(UnkStruct_0206F314 *param0, FieldSystem *fieldSystem, u16 param2)
{
    UnkStruct_0206F7F8 *v0;
    SaveData *v1 = fieldSystem->saveData;

    Heap_Create(3, 80, 0x6000);

    v0 = Heap_AllocFromHeap(80, sizeof(UnkStruct_0206F7F8));
    MI_CpuClear8(v0, sizeof(UnkStruct_0206F7F8));

    v0->unk_00 = 80;
    v0->unk_16 = param2 % 3;
    v0->unk_17 = param2 / 3;
    v0->unk_18 = sub_0202E840(v0->unk_16);
    v0->unk_19 = sub_0202E84C(v0->unk_16);
    v0->fieldSystem = fieldSystem;
    v0->unk_D0 = fieldSystem->unk_08;
    v0->unk_304 = sub_0202E8C0(v1);
    v0->unk_1A = Options_TextFrameDelay(SaveData_Options(v1));
    v0->unk_1C = Options_Frame(SaveData_Options(v1));

    param0->unk_08 = v0;

    return 1;
}

static int sub_0206F3A0(UnkStruct_0206F314 *param0)
{
    int v0, v1, v2, v3;
    UnkStruct_0206F3A0 *v4;
    UnkStruct_0206F7F8 *v5 = param0->unk_08;

    for (v0 = 0; v0 < v5->unk_18; v0++) {
        v2 = 0;

        for (v1 = 0; v1 < v5->unk_324[v0].unk_00; v1++) {
            v4 = &(v5->unk_324[v0].unk_04[v1]);

            if ((v4->unk_06 == 0xFF) || v4->unk_04) {
                continue;
            }

            sub_0202E8D4(v5->unk_304, (v5->unk_17 * 13) + v5->unk_19 + v0, v4->unk_06 - v2);
            ++v2;
        }
    }

    v3 = v5->unk_00;

    Heap_FreeToHeap(v5);
    MI_CpuClear8(v5, sizeof(UnkStruct_0206F7F8));
    Heap_Destroy(v3);

    return 12;
}

static int sub_0206F448(UnkStruct_0206F7F8 *param0, SaveData *param1)
{
    sub_0206F7F8(param0, param1);
    sub_0206FA08(param0);
    sub_0206FB38(param0);
    sub_0206FCC4(param0);

    return 2;
}

static int sub_0206F468(UnkStruct_0206F7F8 *param0)
{
    sub_0206FD94(param0);
    sub_0206FC4C(param0);
    sub_0206FAC0(param0);
    sub_0206F9D4(param0);

    return 11;
}

static int sub_0206F488(UnkStruct_0206F7F8 *param0)
{
    sub_0206FDC0(param0, param0->unk_22, param0->unk_24);
    return 3;
}

static int sub_0206F498(UnkStruct_0206F7F8 *param0)
{
    s32 v0;

    v0 = sub_02001288(param0->unk_C0);

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Sound_PlayEffect(1500);
        sub_0206FF10(param0);
        return 10;
    }

    if (!(gCoreSys.pressedKeys & PAD_BUTTON_A)) {
        return 3;
    }

    Sound_PlayEffect(1500);

    switch (v0) {
    case 0xffffffff:
    case 0xfffffffe:
    case 0xFFFF:
        sub_0206FF10(param0);
        return 10;
    default:
        param0->unk_1F = v0;
        param0->unk_28 = 0;
        sub_0206FF10(param0);
        return 4;
    }

    return 3;
}

static int sub_0206F508(UnkStruct_0206F7F8 *param0)
{
    sub_020701DC(param0, param0->unk_28);
    return 5;
}

static int sub_0206F514(UnkStruct_0206F7F8 *param0)
{
    if (gCoreSys.pressedKeys & (PAD_BUTTON_B | PAD_BUTTON_A)) {
        Sound_PlayEffect(1500);
        sub_02070288(param0);
        return 2;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_SELECT) {
        Sound_PlayEffect(1500);
        sub_0206FFE4(param0);
        return 6;
    }

    return 5;
}

static int sub_0206F554(UnkStruct_0206F7F8 *param0)
{
    UnkStruct_0206F3A0 *v0;

    if (gCoreSys.pressedKeys & (PAD_BUTTON_B)) {
        Sound_PlayEffect(1500);
        sub_02070010(param0);
        return 5;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);
        param0->unk_0C = 0;
        param0->unk_328 = &(param0->unk_324[param0->unk_1F].unk_04[param0->unk_32C[param0->unk_28]]);

        if (param0->unk_328->unk_06 == 0xFF) {
            return 8;
        }

        return 7;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_28 > 0) {
            Sound_PlayEffect(1500);
            --param0->unk_28;
            SpriteActor_SetSpritePositionXY(param0->unk_2FC[0], 126, 16 + 16 * param0->unk_28);
        }
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_28 < (param0->unk_21 - 1)) {
            Sound_PlayEffect(1500);
            ++param0->unk_28;
            SpriteActor_SetSpritePositionXY(param0->unk_2FC[0], 126, 16 + 16 * param0->unk_28);
        }
    }

    return 6;
}

static void sub_0206F62C(UnkStruct_0206F7F8 *param0)
{
    static const UnkStruct_ov61_0222C884 v0 = {
        0x3,
        0x19,
        0xD,
        0x6,
        0x4,
        0xD,
        0x355
    };

    param0->unk_C8 = sub_02002100(param0->unk_D0, &v0, (1024 - (18 + 12) - 9), 11, param0->unk_00);
}

static int sub_0206F658(UnkStruct_0206F7F8 *param0)
{
    int v0 = 0;

    switch (param0->unk_0C) {
    case 0:
        BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
        param0->unk_1E = Text_AddPrinterWithParamsAndColor(&param0->unk_E4, FONT_MESSAGE, param0->unk_2C.unk_68[1], 0, 0, param0->unk_1A, TEXT_COLOR(1, 2, 15), NULL);
        sub_0200D41C(param0->unk_2FC[0], 2);
        param0->unk_0C++;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_1E)) {
            break;
        }

        sub_0206F62C(param0);
        param0->unk_0C++;
        break;
    case 2:
        switch (sub_02002114(param0->unk_C8, param0->unk_00)) {
        case 0:
            param0->unk_0C++;
            break;
        case 0xfffffffe:
            param0->unk_0C = 0xFF;
            break;
        }
        break;
    case 3:
        param0->unk_328->unk_04 = 0;
        sub_02070050(param0, 1);
        sub_0200D41C(param0->unk_2FC[0], 1);
        param0->unk_0C = 0;
        return 6;
    case 0xFF:
        sub_0206FFB4(param0);
        sub_0200D41C(param0->unk_2FC[0], 1);
        param0->unk_0C = 0;
        return 6;
    }

    return 7;
}

static int sub_0206F748(UnkStruct_0206F7F8 *param0)
{
    int v0 = 0;

    switch (param0->unk_0C) {
    case 0:
        Sound_PlayEffect(1522);
        BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
        param0->unk_1E = Text_AddPrinterWithParamsAndColor(&param0->unk_E4, FONT_MESSAGE, param0->unk_2C.unk_68[2], 0, 0, param0->unk_1A, TEXT_COLOR(1, 2, 15), NULL);
        sub_0200D41C(param0->unk_2FC[0], 2);
        param0->unk_0C++;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_1E)) {
            break;
        }

        param0->unk_0C++;
        break;
    case 2:
        if (!(gCoreSys.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B))) {
            break;
        }

        Sound_PlayEffect(1500);
        sub_0206FFB4(param0);
        sub_0200D41C(param0->unk_2FC[0], 1);
        param0->unk_0C = 0;
        return 6;
    }

    return 8;
}

static void sub_0206F7F8(UnkStruct_0206F7F8 *param0, SaveData *param1)
{
    int v0, v1, v2, v3;
    UnkStruct_0202EE10 *v4;

    param0->unk_324 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02070050) * param0->unk_18);
    MI_CpuClear8(param0->unk_324, sizeof(UnkStruct_02070050) * param0->unk_18);
    param0->unk_308[0] = sub_0202ED8C(param1, param0->unk_16, param0->unk_00);

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        param0->unk_308[v0 + 1] = sub_0202EE10(param0->unk_304, (param0->unk_17 * 13) + param0->unk_19 + v0, param0->unk_00);

        v4 = param0->unk_308[v0 + 1];
        v2 = 0;
        v3 = 0;

        if (v4->unk_00 == 0) {
            param0->unk_324[v0].unk_04[0].unk_00 = &(param0->unk_308[0]->unk_04[v0]);
            param0->unk_324[v0].unk_04[0].unk_04 = 1;
            param0->unk_324[v0].unk_04[0].unk_06 = 0xFF;
            param0->unk_324[v0].unk_00 = 1;
        } else {
            for (v1 = 0; v1 < v4->unk_00; v1++) {
                if ((v3 == 0) && (param0->unk_308[0]->unk_04[v0].unk_04 >= v4->unk_04[v1].unk_04)) {
                    param0->unk_324[v0].unk_04[v2].unk_00 = &(param0->unk_308[0]->unk_04[v0]);
                    param0->unk_324[v0].unk_04[v2].unk_04 = 1;
                    param0->unk_324[v0].unk_04[v2].unk_06 = 0xFF;
                    ++v2;
                    param0->unk_324[v0].unk_04[v2].unk_00 = &(v4->unk_04[v1]);
                    param0->unk_324[v0].unk_04[v2].unk_04 = 1;
                    param0->unk_324[v0].unk_04[v2].unk_06 = v1;
                    v3 = 1;
                } else {
                    param0->unk_324[v0].unk_04[v2].unk_00 = &(v4->unk_04[v1]);
                    param0->unk_324[v0].unk_04[v2].unk_04 = 1;
                    param0->unk_324[v0].unk_04[v2].unk_06 = v1;
                }

                ++v2;
            }

            if (!v3) {
                param0->unk_324[v0].unk_04[v2].unk_00 = &(param0->unk_308[0]->unk_04[v0]);
                param0->unk_324[v0].unk_04[v2].unk_04 = 1;
                param0->unk_324[v0].unk_04[v2].unk_06 = 0xFF;
            }

            param0->unk_324[v0].unk_00 = v4->unk_00 + 1;
        }
    }
}

static void sub_0206F9D4(UnkStruct_0206F7F8 *param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_18 + 1; v0++) {
        sub_0202EE8C(param0->unk_308[v0]);
    }

    Heap_FreeToHeap(param0->unk_324);
}

static void sub_0206FA08(UnkStruct_0206F7F8 *param0)
{
    int v0;

    param0->unk_2C.unk_00 = MessageLoader_Init(0, 26, 532, param0->unk_00);
    param0->unk_2C.unk_04 = StringTemplate_New(2, (38 * 2), param0->unk_00);
    param0->unk_2C.unk_08 = Strbuf_Init((38 * 2), param0->unk_00);
    param0->unk_2C.unk_0C = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 13);
    param0->unk_2C.unk_10 = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 22);
    param0->unk_2C.unk_14 = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 36);
    param0->unk_2C.unk_18 = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 14);

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        param0->unk_2C.unk_38[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 0 + param0->unk_19 + v0);
        param0->unk_2C.unk_50[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 23 + param0->unk_19 + v0);
    }

    for (v0 = 0; v0 < 7; v0++) {
        param0->unk_2C.unk_1C[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 15 + v0);
    }

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_2C.unk_68[v0] = MessageLoader_GetNewStrbuf(param0->unk_2C.unk_00, 37 + v0);
    }
}

static void sub_0206FAC0(UnkStruct_0206F7F8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Strbuf_Free(param0->unk_2C.unk_68[v0]);
    }

    for (v0 = 0; v0 < 7; v0++) {
        Strbuf_Free(param0->unk_2C.unk_1C[v0]);
    }

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        Strbuf_Free(param0->unk_2C.unk_38[v0]);
        Strbuf_Free(param0->unk_2C.unk_50[v0]);
    }

    Strbuf_Free(param0->unk_2C.unk_18);
    Strbuf_Free(param0->unk_2C.unk_14);
    Strbuf_Free(param0->unk_2C.unk_10);
    Strbuf_Free(param0->unk_2C.unk_0C);
    Strbuf_Free(param0->unk_2C.unk_08);
    StringTemplate_Free(param0->unk_2C.unk_04);
    MessageLoader_Free(param0->unk_2C.unk_00);
}

static void sub_0206FB38(UnkStruct_0206F7F8 *param0)
{
    sub_02019690(1, 32 * (24 * (12 + 2) + 9 + 1), 0, param0->unk_00);
    sub_02019CB8(param0->unk_D0, 1, 0x0, 0, 0, 32, 32, 17);
    sub_0201C3C0(param0->unk_D0, 1);
    sub_02019120(1, 1);

    param0->unk_10 = sub_0201A008(param0->unk_D0, 0);
    param0->unk_12 = sub_0201A008(param0->unk_D0, 1);

    BGL_SetPriority(0, 2);
    BGL_SetPriority(1, 1);
    sub_0200DD0C(param0->unk_D0, 3, (1024 - (18 + 12)), 10, param0->unk_1C, param0->unk_00);
    sub_0200DAA4(param0->unk_D0, 3, (1024 - (18 + 12) - 9), 11, 0, param0->unk_00);
    sub_0200DAA4(param0->unk_D0, 1, (1024 - (18 + 12) - 9), 11, 0, param0->unk_00);
    Font_LoadTextPalette(0, 13 * 32, param0->unk_00);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->unk_00);
    BGL_AddWindow(param0->unk_D0, &param0->unk_E4, 3, 2, 19, 27, 4, 12, ((1024 - (18 + 12) - 9) - 27 * 4));
    BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
}

static void sub_0206FC4C(UnkStruct_0206F7F8 *param0)
{
    sub_0200E084(&param0->unk_E4, 1);
    sub_0201ACF4(&param0->unk_E4);
    BGL_DeleteWindow(&param0->unk_E4);
    sub_02019690(1, 32 * (24 * (12 + 2) + 9 + 1), 0, param0->unk_00);
    sub_02019CB8(param0->unk_D0, 1, 0x0, 0, 0, 32, 32, 17);
    sub_0201C3C0(param0->unk_D0, 1);
    sub_02019120(1, 0);
    BGL_SetPriority(0, param0->unk_10);
    BGL_SetPriority(1, param0->unk_12);
}

static void sub_0206FCC4(UnkStruct_0206F7F8 *param0)
{
    int v0;
    UnkStruct_ov104_02241308 v1 = {
        1, 1, 1, 1, 0, 0
    };
    static const SpriteTemplate v2[] = {
        {
            0x7E,
            0x10,
            0x0,
            0x0,
            0x0,
            0x1,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
            0x1,
            0x0,
        },
        {
            0x4A,
            0x78,
            0x0,
            0x1,
            0x1,
            0x0,
            NNS_G2D_VRAM_TYPE_2DMAIN,
            { 0x34D8, 0x34D8, 0x34D8, 0x34D8, 0x0, 0x0 },
            0x1,
            0x0,
        },
    };

    ov5_021D3190(&param0->unk_134, &v1, 2, param0->unk_00);

    {
        NARC *v3;

        v3 = NARC_ctor(NARC_INDEX_GRAPHIC__RANKING, param0->unk_00);

        ov5_021D32E8(&param0->unk_134, v3, 0, 0, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);
        ov5_021D3374(&param0->unk_134, v3, 2, 0, 13528);
        ov5_021D339C(&param0->unk_134, v3, 3, 0, 13528);
        ov5_021D3414(&param0->unk_134, v3, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 13528);

        NARC_dtor(v3);
    }

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_2FC[v0] = ov5_021D3584(&param0->unk_134, &v2[v0]);
    }

    SpriteActor_EnableObject(param0->unk_2FC[1], 0);
}

static void sub_0206FD94(UnkStruct_0206F7F8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_2FC[v0] != NULL) {
            sub_0200D0F4(param0->unk_2FC[v0]);
        }
    }

    ov5_021D375C(&param0->unk_134);
}

static void sub_0206FDC0(UnkStruct_0206F7F8 *param0, u16 param1, u16 param2)
{
    int v0, v1;

    v1 = param0->unk_18 + 1;
    param0->unk_C4 = sub_02013A04(v1, param0->unk_00);

    BGL_AddWindow(param0->unk_D0, &param0->unk_D4, 1, 4, 1, 24, v1 * 2, 13, 1);
    BGL_FillWindow(&param0->unk_D4, ((15 << 4) | 15));

    for (v0 = 0; v0 < param0->unk_18; v0++) {
        sub_02013A6C(param0->unk_C4, param0->unk_2C.unk_38[v0], v0);
    }

    sub_02013A6C(param0->unk_C4, param0->unk_2C.unk_0C, 0xFFFF);

    MI_CpuCopy8((void *)&Unk_020F02B0, (void *)&(param0->unk_A0), sizeof(UnkStruct_ov84_02240FA8));

    param0->unk_A0.unk_0C = &(param0->unk_D4);
    param0->unk_A0.unk_00 = param0->unk_C4;
    param0->unk_A0.unk_1C = (void *)param0;
    param0->unk_A0.unk_10 = v1;
    param0->unk_A0.unk_17_0 = 0;
    param0->unk_A0.unk_04 = sub_0206FF60;
    param0->unk_A0.unk_08 = NULL;
    param0->unk_C0 = sub_0200112C(&(param0->unk_A0), param1, param2, param0->unk_00);

    Window_Show(&param0->unk_D4, 0, (1024 - (18 + 12) - 9), 11);
    sub_0200E060(&param0->unk_E4, 1, (1024 - (18 + 12)), 10);
    BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&param0->unk_E4, FONT_MESSAGE, param0->unk_2C.unk_10, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    SpriteActor_EnableObject(param0->unk_2FC[0], 1);
    sub_0201C3C0(param0->unk_D0, 3);
}

static void sub_0206FF10(UnkStruct_0206F7F8 *param0)
{
    sub_02001384(param0->unk_C0, &(param0->unk_22), &(param0->unk_24));
    sub_02013A3C(param0->unk_C4);
    sub_0201ACF4(&(param0->unk_D4));
    Window_Clear(&(param0->unk_D4), 0);
    BGL_DeleteWindow(&(param0->unk_D4));
    SpriteActor_EnableObject(param0->unk_2FC[0], 0);
    sub_0201C3C0(param0->unk_D0, 3);
}

static void sub_0206FF60(BmpList *param0, u32 param1, u8 param2)
{
    u16 v0, v1, v2;
    UnkStruct_0206F7F8 *v3 = (UnkStruct_0206F7F8 *)sub_02001504(param0, 19);

    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }

    sub_020014DC(param0, &v0, &v1);
    v2 = sub_02001504(param0, 2);

    SpriteActor_SetSpritePositionXY(v3->unk_2FC[0], 126, 16 + 16 * (v1 + v0));
}

static void sub_0206FFB4(UnkStruct_0206F7F8 *param0)
{
    BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&param0->unk_E4, FONT_MESSAGE, param0->unk_2C.unk_68[0], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
}

static void sub_0206FFE4(UnkStruct_0206F7F8 *param0)
{
    sub_0206FFB4(param0);
    SpriteActor_SetSpritePositionXY(param0->unk_2FC[0], 126, 16 + param0->unk_28 * 16);
    SpriteActor_EnableObject(param0->unk_2FC[0], 1);
}

static void sub_02070010(UnkStruct_0206F7F8 *param0)
{
    BGL_FillWindow(&param0->unk_E4, ((15 << 4) | 15));
    Text_AddPrinterWithParamsAndColor(&param0->unk_E4, FONT_MESSAGE, param0->unk_2C.unk_50[param0->unk_1F], 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    SpriteActor_EnableObject(param0->unk_2FC[0], 0);
}

static void sub_02070050(UnkStruct_0206F7F8 *param0, BOOL param1)
{
    int v0, v1, v2, v3, v4, v5;
    UnkStruct_02070050 *v6;
    const UnkStruct_020F02D0 *v7;

    v6 = &(param0->unk_324[param0->unk_1F]);
    v7 = &(Unk_020F0254[param0->unk_16][param0->unk_1F]);

    BGL_FillWindow(&param0->unk_D4, ((15 << 4) | 15));

    v1 = v6->unk_00;
    v2 = 1;
    v3 = 0;
    v5 = 0;

    for (v0 = 0; v0 < v6->unk_00; v0++) {
        if (!v6->unk_04[v0].unk_04) {
            continue;
        }

        v4 = v6->unk_04[v0].unk_00->unk_04;

        if (v4 > v7->unk_00) {
            v4 = v7->unk_00;
        }

        if (v4 < v5) {
            ++v2;
        }

        StringTemplate_SetNumber(param0->unk_2C.unk_04, 0, v2, 1, 1, 1);
        StringTemplate_SetStrbuf(param0->unk_2C.unk_04, 1, v6->unk_04[v0].unk_00->unk_08, 2, 1, GAME_LANGUAGE);
        StringTemplate_Format(param0->unk_2C.unk_04, param0->unk_2C.unk_08, param0->unk_2C.unk_18);
        Text_AddPrinterWithParamsAndColor(&param0->unk_D4, FONT_SYSTEM, param0->unk_2C.unk_08, 8, v3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
        StringTemplate_SetNumber(param0->unk_2C.unk_04, 0, v4, v7->unk_04, 1, 1);
        StringTemplate_Format(param0->unk_2C.unk_04, param0->unk_2C.unk_08, param0->unk_2C.unk_1C[v7->unk_06 - 15]);
        Text_AddPrinterWithParamsAndColor(&param0->unk_D4, FONT_SYSTEM, param0->unk_2C.unk_08, (24 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_2C.unk_08, 0) - 8, v3 * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);

        param0->unk_32C[v3] = v0;
        v5 = v4;

        if (++v3 >= 6) {
            break;
        }
    }

    sub_0201A954(&param0->unk_D4);

    param0->unk_21 = v3;

    if ((param0->unk_28 > 0) && (param0->unk_28 >= param0->unk_21)) {
        param0->unk_28--;
    }

    if (param1) {
        sub_0206FFE4(param0);
    } else {
        sub_02070010(param0);
    }
}

static void sub_020701DC(UnkStruct_0206F7F8 *param0, u16 param1)
{
    BGL_AddWindow(param0->unk_D0, &param0->unk_D4, 1, 4, 1, 24, 12, 13, 1);
    Window_Show(&param0->unk_D4, 1, (1024 - (18 + 12) - 9), 11);
    sub_02070050(param0, 0);
    SpriteActor_EnableObject(param0->unk_2FC[1], 1);
    BGL_AddWindow(param0->unk_D0, &param0->unk_F4, 3, 8, 14, 8, 2, 13, ((((1024 - (18 + 12) - 9) - 27 * 4) - 6 * 4) - (8 * 2)));
    BGL_FillWindow(&param0->unk_F4, ((0 << 4) | 0));
    Text_AddPrinterWithParamsAndColor(&param0->unk_F4, FONT_SYSTEM, param0->unk_2C.unk_14, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201C3C0(param0->unk_D0, 3);
}

static void sub_02070288(UnkStruct_0206F7F8 *param0)
{
    sub_0201ACF4(&param0->unk_D4);
    Window_Clear(&param0->unk_D4, 0);
    BGL_DeleteWindow(&param0->unk_D4);
    sub_0201ACF4(&param0->unk_F4);
    BGL_DeleteWindow(&param0->unk_F4);
    SpriteActor_EnableObject(param0->unk_2FC[0], 0);
    SpriteActor_EnableObject(param0->unk_2FC[1], 0);
}

static BOOL sub_020702D0(TaskManager *param0)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0206F314 *v1 = TaskManager_Environment(param0);
    UnkStruct_0206F7F8 *v2 = v1->unk_08;

    switch (v1->unk_00) {
    case 0:
        v1->unk_00 = sub_0206F314(v1, fieldSystem, v1->unk_04);
        break;
    case 1:
        v1->unk_00 = sub_0206F448(v1->unk_08, fieldSystem->saveData);
        break;
    case 2:
        v1->unk_00 = sub_0206F488(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 3:
        v1->unk_00 = sub_0206F498(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 4:
        v1->unk_00 = sub_0206F508(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 5:
        v1->unk_00 = sub_0206F514(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 6:
        v1->unk_00 = sub_0206F554(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 7:
        v1->unk_00 = sub_0206F658(v1->unk_08);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 8:
        v1->unk_00 = sub_0206F748(v2);
        CellActorCollection_Update(v1->unk_08->unk_134.unk_00);
        break;
    case 9:
        if (!(gCoreSys.pressedKeys & PAD_BUTTON_A)) {
            return 0;
        }

        v1->unk_00 = 10;
        break;
    case 10:
        v1->unk_00 = sub_0206F468(v1->unk_08);
        break;
    case 11:
        v1->unk_00 = sub_0206F3A0(v1);
        break;
    case 12:
        Heap_FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_020703FC(TaskManager *param0, u16 param1)
{
    FieldSystem *fieldSystem = TaskManager_FieldSystem(param0);
    UnkStruct_0206F314 *v1 = Heap_AllocFromHeap(11, sizeof(UnkStruct_0206F314));

    v1->unk_00 = 0;
    v1->unk_04 = param1;
    v1->unk_08 = NULL;

    FieldTask_Start(fieldSystem->unk_10, sub_020702D0, v1);
}
