#include "overlay013/ov13_02221A88.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0205AA50.h"

#include "battle/ov16_0223DF00.h"
#include "overlay013/struct_ov13_0221FC20.h"
#include "overlay013/struct_ov13_022213F0.h"
#include "overlay013/struct_ov13_02221ED0.h"
#include "overlay013/struct_ov13_022236B8.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "font.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "render_text.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

static void ov13_0222339C(UnkStruct_ov13_022213F0 *param0);
static void ov13_022234C8(UnkStruct_ov13_022213F0 *param0);
static void ov13_022237F8(UnkStruct_ov13_022213F0 *param0);
static void ov13_022236B8(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223A10(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223E68(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223B74(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223C9C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223F7C(UnkStruct_ov13_022213F0 *param0);
static void ov13_02223550(UnkStruct_ov13_022213F0 *param0, u32 param1);

static const UnkStruct_ov61_0222C884 Unk_ov13_02228EA0[] = {
    { 0x4, 0x2, 0x15, 0x16, 0x2, 0xF, 0x1F },
    { 0x4, 0x2, 0x13, 0x1B, 0x4, 0xF, 0x1F }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228F54[] = {
    { 0x5, 0x0, 0x0, 0xF, 0x5, 0x9, 0x85 },
    { 0x5, 0x10, 0x1, 0xF, 0x5, 0x9, 0xD0 },
    { 0x5, 0x0, 0x6, 0xF, 0x5, 0x9, 0x11B },
    { 0x5, 0x10, 0x7, 0xF, 0x5, 0x9, 0x166 },
    { 0x5, 0x0, 0xC, 0xF, 0x5, 0x9, 0x1B1 },
    { 0x5, 0x10, 0xD, 0xF, 0x5, 0x9, 0x1FC }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228EDC[] = {
    { 0x5, 0xA, 0x4, 0xC, 0x3, 0x9, 0x1 },
    { 0x5, 0xB, 0xC, 0xA, 0x3, 0x9, 0x25 },
    { 0x5, 0x1, 0x14, 0xB, 0x3, 0x9, 0x43 },
    { 0x5, 0xE, 0x14, 0xB, 0x3, 0x9, 0x64 }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228FBC[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x125 },
    { 0x5, 0x1, 0x6, 0xE, 0x5, 0x9, 0x149 },
    { 0x5, 0x11, 0x6, 0xE, 0x5, 0x9, 0x18F },
    { 0x5, 0x1, 0xC, 0xE, 0x5, 0x9, 0x1D5 },
    { 0x5, 0x11, 0xC, 0xE, 0x5, 0x9, 0x21B },
    { 0x5, 0xD, 0x14, 0xB, 0x3, 0x9, 0x104 },
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x137 },
    { 0x5, 0x1, 0x6, 0xE, 0x5, 0x9, 0x261 },
    { 0x5, 0x11, 0x6, 0xE, 0x5, 0x9, 0x2A7 },
    { 0x5, 0x1, 0xC, 0xE, 0x5, 0x9, 0x2ED },
    { 0x5, 0x11, 0xC, 0xE, 0x5, 0x9, 0x333 }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_022290FC[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x125 },
    { 0x5, 0x1, 0x9, 0xB, 0x2, 0xD, 0x149 },
    { 0x5, 0x1, 0xB, 0x12, 0x4, 0xD, 0x15F },
    { 0x5, 0x4, 0x10, 0xC, 0x2, 0xD, 0x1A7 },
    { 0x5, 0x18, 0x4, 0x7, 0x2, 0xD, 0x1BF },
    { 0x5, 0x1C, 0x7, 0x3, 0x2, 0xD, 0x1CD },
    { 0x5, 0x1C, 0x9, 0x3, 0x2, 0xD, 0x1D3 },
    { 0x5, 0x1C, 0xF, 0x3, 0x2, 0xD, 0x1D9 },
    { 0x5, 0x1C, 0xB, 0x3, 0x2, 0xD, 0x1DF },
    { 0x5, 0x1C, 0xD, 0x3, 0x2, 0xD, 0x1E5 },
    { 0x5, 0x19, 0x6, 0x6, 0x1, 0x9, 0x1EB },
    { 0x5, 0x5, 0x4, 0x3, 0x2, 0xD, 0x1F1 },
    { 0x5, 0xD, 0x6, 0x6, 0x2, 0xD, 0x1F7 },
    { 0x5, 0x15, 0x4, 0x2, 0x2, 0xD, 0x85 },
    { 0x5, 0x15, 0x7, 0x6, 0x2, 0xD, 0x89 },
    { 0x5, 0x15, 0x9, 0x6, 0x2, 0xD, 0x95 },
    { 0x5, 0x15, 0xF, 0x6, 0x2, 0xD, 0xA1 },
    { 0x5, 0x15, 0xB, 0x6, 0x2, 0xD, 0xAD },
    { 0x5, 0x15, 0xD, 0x6, 0x2, 0xD, 0xB9 },
    { 0x5, 0x1, 0x4, 0x4, 0x2, 0xD, 0xC5 },
    { 0x5, 0x1, 0x6, 0xB, 0x2, 0xD, 0xCD },
    { 0x5, 0xD, 0x14, 0xB, 0x3, 0x9, 0xE3 },
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x137 },
    { 0x5, 0x1, 0x9, 0xB, 0x2, 0xD, 0x261 },
    { 0x5, 0x1, 0xB, 0x12, 0x4, 0xD, 0x277 },
    { 0x5, 0x4, 0x10, 0xC, 0x2, 0xD, 0x2BF },
    { 0x5, 0x18, 0x4, 0x7, 0x2, 0xD, 0x2D7 },
    { 0x5, 0x1C, 0x7, 0x3, 0x2, 0xD, 0x2E5 },
    { 0x5, 0x1C, 0x9, 0x3, 0x2, 0xD, 0x2EB },
    { 0x5, 0x1C, 0xF, 0x3, 0x2, 0xD, 0x2F1 },
    { 0x5, 0x1C, 0xB, 0x3, 0x2, 0xD, 0x2F7 },
    { 0x5, 0x1C, 0xD, 0x3, 0x2, 0xD, 0x2FD },
    { 0x5, 0x19, 0x6, 0x6, 0x1, 0x9, 0x303 },
    { 0x5, 0x5, 0x4, 0x3, 0x2, 0xD, 0x309 },
    { 0x5, 0xD, 0x6, 0x6, 0x2, 0xD, 0x30F }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02229074[] = {
    { 0x4, 0x4, 0x5, 0xB, 0x2, 0xD, 0x9D },
    { 0x4, 0x17, 0x5, 0x5, 0x2, 0xD, 0xB7 },
    { 0x4, 0xA, 0x10, 0x3, 0x2, 0xD, 0xE1 },
    { 0x4, 0xA, 0xD, 0x3, 0x2, 0xD, 0xE7 },
    { 0x4, 0x10, 0x8, 0xF, 0xA, 0xD, 0xED },
    { 0x4, 0x6, 0xA, 0x8, 0x2, 0xD, 0x19B },
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x8B },
    { 0x4, 0x14, 0x5, 0x2, 0x2, 0xD, 0xB3 },
    { 0x4, 0x1, 0x10, 0x8, 0x2, 0xD, 0xC1 },
    { 0x4, 0x1, 0xD, 0x8, 0x2, 0xD, 0xD1 },
    { 0x4, 0x1, 0x8, 0xC, 0x2, 0xD, 0x183 },
    { 0x4, 0x4, 0x5, 0xB, 0x2, 0xD, 0x1AB },
    { 0x4, 0x17, 0x5, 0x5, 0x2, 0xD, 0x1C1 },
    { 0x4, 0xA, 0x10, 0x3, 0x2, 0xD, 0x1CB },
    { 0x4, 0xA, 0xD, 0x3, 0x2, 0xD, 0x1D1 },
    { 0x4, 0x10, 0x8, 0xF, 0xA, 0xD, 0x1D7 },
    { 0x4, 0x6, 0xA, 0x8, 0x2, 0xD, 0x26D }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228F24[] = {
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x85 },
    { 0x4, 0x1, 0x6, 0xE, 0x5, 0x9, 0x97 },
    { 0x4, 0x11, 0x6, 0xE, 0x5, 0x9, 0xDD },
    { 0x4, 0x1, 0xC, 0xE, 0x5, 0x9, 0x123 },
    { 0x4, 0x11, 0xC, 0xE, 0x5, 0x9, 0x169 },
    { 0x4, 0x9, 0x12, 0xE, 0x5, 0x9, 0x1AF }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02229014[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x1 },
    { 0x5, 0x4, 0x5, 0xB, 0x2, 0xD, 0x13 },
    { 0x5, 0x14, 0x5, 0x2, 0x2, 0xD, 0x29 },
    { 0x5, 0x17, 0x5, 0x5, 0x2, 0xD, 0x2D },
    { 0x5, 0x1, 0x10, 0x8, 0x2, 0xD, 0x5B },
    { 0x5, 0x1, 0xD, 0x8, 0x2, 0xD, 0x6B },
    { 0x5, 0xA, 0x10, 0x3, 0x2, 0xD, 0x7B },
    { 0x5, 0xA, 0xD, 0x3, 0x2, 0xD, 0x81 },
    { 0x5, 0x10, 0x8, 0xF, 0xA, 0xD, 0x87 },
    { 0x5, 0x1, 0x8, 0xC, 0x2, 0xD, 0x11D },
    { 0x5, 0x6, 0xA, 0x8, 0x2, 0xD, 0x135 },
    { 0x5, 0x7, 0x14, 0xC, 0x3, 0x9, 0x37 }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228EFC[] = {
    { 0x4, 0x5, 0x1, 0x9, 0x2, 0xD, 0x8B },
    { 0x4, 0x1, 0x6, 0xE, 0x5, 0x9, 0x9D },
    { 0x4, 0x11, 0x6, 0xE, 0x5, 0x9, 0xE3 },
    { 0x4, 0x1, 0xC, 0xE, 0x5, 0x9, 0x129 },
    { 0x4, 0x11, 0xC, 0xE, 0x5, 0x9, 0x16F }
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02228F84[] = {
    { 0x5, 0x5, 0x1, 0x9, 0x2, 0xD, 0x1 },
    { 0x5, 0x4, 0x8, 0xB, 0x2, 0xD, 0x13 },
    { 0x5, 0x14, 0x8, 0x2, 0x2, 0xD, 0x29 },
    { 0x5, 0x17, 0x8, 0x5, 0x2, 0xD, 0x2D },
    { 0x5, 0x2, 0xB, 0xC, 0x2, 0xD, 0x145 },
    { 0x5, 0x10, 0xB, 0xF, 0x6, 0xD, 0x15D },
    { 0x5, 0x7, 0x14, 0xC, 0x3, 0x9, 0x37 }
};

static const u32 Unk_ov13_02228EC4[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static const u32 Unk_ov13_02228EB0[] = {
    0x3D,
    0x40,
    0x43,
    0x46,
    0x49
};

void ov13_02221A88(UnkStruct_ov13_022213F0 *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0201A8D4(param0->unk_1E0, &param0->unk_204C[v0], &Unk_ov13_02228EA0[v0]);
    }

    ov13_02221AC4(param0, param0->unk_2076);
}

void ov13_02221AC4(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    const UnkStruct_ov61_0222C884 *v0;
    u8 v1;

    switch (param1) {
    case 0:
        v0 = Unk_ov13_02228F54;
        param0->unk_2070 = 6;
        break;
    case 1:
        v0 = Unk_ov13_02228EDC;
        param0->unk_2070 = 4;
        break;
    case 2:
        v0 = Unk_ov13_022290FC;
        param0->unk_2070 = 35;
        break;
    case 3:
        v0 = Unk_ov13_02228FBC;
        param0->unk_2070 = 11;
        break;
    case 4:
        v0 = Unk_ov13_02229074;
        param0->unk_2070 = 17;
        break;
    case 5:
        v0 = Unk_ov13_02228EFC;
        param0->unk_2070 = 5;
        break;
    case 6:
    case 8:
        v0 = Unk_ov13_02228F24;
        param0->unk_2070 = 6;
        break;
    case 7:
        v0 = Unk_ov13_02229014;
        param0->unk_2070 = 12;
        break;
    case 9:
        v0 = Unk_ov13_02228F84;
        param0->unk_2070 = 7;
        break;
    }

    param0->unk_206C = sub_0201A778(param0->unk_00->unk_0C, param0->unk_2070);

    for (v1 = 0; v1 < param0->unk_2070; v1++) {
        sub_0201A8D4(param0->unk_1E0, &param0->unk_206C[v1], &v0[v1]);
    }
}

void ov13_02221BB0(UnkStruct_ov13_022213F0 *param0)
{
    sub_0201A928(param0->unk_206C, param0->unk_2070);
}

void ov13_02221BC8(UnkStruct_ov13_022213F0 *param0)
{
    u32 v0;

    sub_0201A928(param0->unk_206C, param0->unk_2070);

    for (v0 = 0; v0 < 2; v0++) {
        BGL_DeleteWindow(&param0->unk_204C[v0]);
    }
}

void ov13_02221BF8(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov13_0222339C(param0);
        break;
    case 1:
        ov13_022234C8(param0);
        break;
    case 2:
        ov13_022237F8(param0);
        break;
    case 3:
        ov13_022236B8(param0);
        break;
    case 4:
        ov13_02223A10(param0);
        break;
    case 5:
        ov13_02223E68(param0);
        break;
    case 6:
    case 8:
        ov13_02223B74(param0);
        break;
    case 7:
        ov13_02223C9C(param0);
        break;
    case 9:
        ov13_02223F7C(param0);
        break;
    }
}

static void ov13_02221C54(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2, u16 param3, u8 param4, u8 param5)
{
    Window *v0;
    UnkStruct_ov13_02221ED0 *v1;
    Strbuf *v2;
    Strbuf *v3;
    u32 v4;

    v0 = &param0->unk_206C[param1];
    v1 = &param0->unk_04[param3];
    v2 = Strbuf_Init(12, param0->unk_00->unk_0C);
    v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, Unk_ov13_02228EC4[param3]);

    StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v1->unk_00));
    StringTemplate_Format(param0->unk_1FA8, v2, v3);

    if (param2 == 0) {
        Text_AddPrinterWithParamsAndColor(v0, param2, v2, param4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(v0, param2, v2, param4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    }

    Strbuf_Free(v3);
    Strbuf_Free(v2);

    if ((v1->unk_16_7 == 0) && (v1->unk_17_7 == 0)) {
        if (v1->unk_17_0 == 0) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 16);
            v4 = sub_0201C294(v0) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);

            if (param2 == 0) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
            }

            Strbuf_Free(v3);
        } else if (v1->unk_17_0 == 1) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 17);
            v4 = sub_0201C294(v0) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);

            if (param2 == 0) {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v3, v4, param5, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
            }

            Strbuf_Free(v3);
        }
    }

    sub_0201A9A4(v0);
}

static void ov13_02221E08(UnkStruct_ov13_022213F0 *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param2];

    sub_0200C648(param0->unk_1FA0, 1, v0->unk_16_0, 3, 0, &param0->unk_206C[param1], param3 + 8, param4);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_02221E50(UnkStruct_ov13_022213F0 *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    UnkStruct_ov13_02221ED0 *v0 = &param0->unk_04[param2];

    sub_0200C5BC(param0->unk_1FA0, v0->unk_10, 3, 1, &param0->unk_206C[param1], param3, param4);
    sub_0200C578(param0->unk_1FA0, 0, &param0->unk_206C[param1], param3 + 8 * 3, param4);
    sub_0200C5BC(param0->unk_1FA0, v0->unk_12, 3, 0, &param0->unk_206C[param1], param3 + 8 * 3 + 8, param4);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_02221ED0(UnkStruct_ov13_022213F0 *param0, u32 param1, u16 param2, u8 param3, u8 param4)
{
    UnkStruct_ov13_02221ED0 *v0;
    u8 v1 = 1;
    u8 v2;

    v0 = &param0->unk_04[param2];
    v1 = 1;
    v2 = App_PixelCount(v0->unk_10, v0->unk_12, 48);

    switch (HealthBar_Color(v0->unk_10, v0->unk_12, 48)) {
    case 0:
        sub_0201A9A4(&param0->unk_206C[param1]);
        return;
    case 4:
    case 3:
        v1 = 1;
        break;
    case 2:
        v1 = 3;
        break;
    case 1:
        v1 = 5;
        break;
    }

    BGL_WindowColor(&param0->unk_206C[param1], v1 + 1, param3, param4 + 1, v2, 1);
    BGL_WindowColor(&param0->unk_206C[param1], v1, param3, param4 + 2, v2, 2);
    BGL_WindowColor(&param0->unk_206C[param1], v1 + 1, param3, param4 + 4, v2, 1);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_02221FA8(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;

    v0 = &param0->unk_04[param2];
    v1 = Strbuf_Init(16, param0->unk_00->unk_0C);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 8);

    StringTemplate_SetAbilityName(param0->unk_1FA8, 0, v0->unk_18);
    StringTemplate_Format(param0->unk_1FA8, v1, v2);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_02222030(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;

    v0 = &param0->unk_04[param2];

    if (v0->unk_1A == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 20);
    } else {
        v1 = Strbuf_Init(18, param0->unk_00->unk_0C);
        v2 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 9);

        StringTemplate_SetItemName(param0->unk_1FA8, 0, v0->unk_1A);
        StringTemplate_Format(param0->unk_1FA8, v1, v2);
        Strbuf_Free(v2);
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_022220CC(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2, u32 param3, u16 param4, u16 param5, TextColor param6)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v1 = Strbuf_Init(16, param0->unk_00->unk_0C);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, param3);

    StringTemplate_SetMoveName(param0->unk_1FA8, 0, param1);
    StringTemplate_Format(param0->unk_1FA8, v1, v2);

    if (param4 == 2) {
        v3 = (sub_0201C294(v0) * 8 - Font_CalcStrbufWidth(param4, v1, 0)) / 2;
    } else {
        v3 = 0;
    }

    Text_AddPrinterWithParamsAndColor(v0, param4, v1, v3, param5, TEXT_SPEED_NO_TRANSFER, param6, NULL);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222170(UnkStruct_ov13_022213F0 *param0, u16 param1, u8 param2, u8 param3)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 14);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[param1], FONT_SYSTEM, v0, param2, param3, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v0);
    sub_0201A9A4(&param0->unk_206C[param1]);
}

static void ov13_022221C8(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Strbuf *v0;

    sub_0200E060(&param0->unk_204C[0], 1, 1, 14);
    BGL_FillWindow(&param0->unk_204C[0], 15);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, param1);

    Text_AddPrinterWithParamsAndColor(&param0->unk_204C[0], FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
    sub_0201A9A4(&param0->unk_204C[0]);
}

static void ov13_0222222C(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, param2);
    v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v1, (sub_0201C294(v0) * 8 - v2) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222290(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_04[param1];
    v4 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 23);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[19], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 24);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_16_0, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[11 + v4], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 25);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[20], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 26);
    v2 = Strbuf_Init((6 + 1) * 2, param0->unk_00->unk_0C);

    if (v0->unk_16_0 < 100) {
        StringTemplate_SetNumber(
            param0->unk_1FA8, 0, v0->unk_24 - v0->unk_1C, 6, 1, 1);
    } else {
        StringTemplate_SetNumber(
            param0->unk_1FA8, 0, 0, 6, 1, 1);
    }

    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v3 = sub_0201C294(&param0->unk_206C[12 + v4]) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[12 + v4], FONT_SYSTEM, v2, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[19]);
    sub_0201A9A4(&param0->unk_206C[11 + v4]);
    sub_0201A9A4(&param0->unk_206C[20]);
    sub_0201A9A4(&param0->unk_206C[12 + v4]);
}

static void ov13_02222464(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 32);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[14], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 33);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_06, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = sub_0201C294(&param0->unk_206C[5 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[5 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[14]);
    sub_0201A9A4(&param0->unk_206C[5 + v3]);
}

static void ov13_02222560(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 34);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[15], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 35);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_08, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = sub_0201C294(&param0->unk_206C[6 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[6 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[15]);
    sub_0201A9A4(&param0->unk_206C[6 + v3]);
}

static void ov13_0222265C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 40);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[16], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 41);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_0A, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = sub_0201C294(&param0->unk_206C[7 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[7 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    sub_0201A9A4(&param0->unk_206C[16]);
    sub_0201A9A4(&param0->unk_206C[7 + v3]);
}

static void ov13_0222275C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 36);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[17], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 37);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_0C, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = sub_0201C294(&param0->unk_206C[8 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[8 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[17]);
    sub_0201A9A4(&param0->unk_206C[8 + v3]);
}

static void ov13_0222285C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u8 v4;
    u8 v5;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 38);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[18], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 39);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_0E, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
    v5 = sub_0201C294(&param0->unk_206C[9 + v3]) * 8 - v4;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[9 + v3], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[18]);
    sub_0201A9A4(&param0->unk_206C[9 + v3]);
}

static void ov13_0222295C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3, v4;
    u16 v5;
    u16 v6;

    v0 = &param0->unk_04[param1];
    v6 = 22 * param0->unk_2071;
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 28);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[13], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 31);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v5 = (sub_0201C294(&param0->unk_206C[4]) * 8 - v3) / 2;

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v1, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 29);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_10, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v2, v5 - v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 30);
    v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, v0->unk_12, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);
    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4 + v6], FONT_SYSTEM, v2, v5 + v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(&param0->unk_206C[13]);
    sub_0201A9A4(&param0->unk_206C[4 + v6]);
}

static void ov13_02222AF4(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    UnkStruct_ov13_02221ED0 *v0;
    MessageLoader *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_04[param1];
    v3 = 22 * param0->unk_2071;
    v1 = MessageLoader_Init(1, 26, 612, param0->unk_00->unk_0C);
    v2 = MessageLoader_GetNewStrbuf(v1, v0->unk_18);

    Text_AddPrinterWithParamsAndColor(&param0->unk_206C[2 + v3], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);
    MessageLoader_Free(v1);
    sub_0201A9A4(&param0->unk_206C[2 + v3]);
}

static void ov13_02222B6C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 51);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222BB4(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_206C[param1];

    if (param2 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 50);
        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
        v4 = sub_0201C294(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 52);
        v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

        StringTemplate_SetNumber(param0->unk_1FA8, 0, param2, 3, 0, 1);
        StringTemplate_Format(param0->unk_1FA8, v2, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
        v4 = sub_0201C294(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
        Strbuf_Free(v2);
    }

    sub_0201A9A4(v0);
}

static void ov13_02222C9C(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 48);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222CE4(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;
    u16 v4;

    v0 = &param0->unk_206C[param1];

    if (param2 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 50);
        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
        v4 = sub_0201C294(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 49);
        v2 = Strbuf_Init((3 + 1) * 2, param0->unk_00->unk_0C);

        StringTemplate_SetNumber(param0->unk_1FA8, 0, param2, 3, 0, 1);
        StringTemplate_Format(param0->unk_1FA8, v2, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
        v4 = sub_0201C294(v0) * 8 - v3;

        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
        Strbuf_Free(v2);
    }

    sub_0201A9A4(v0);
}

static void ov13_02222DCC(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    MessageLoader *v0;
    Window *v1;
    Strbuf *v2;

    v1 = &param0->unk_206C[param1];
    v0 = MessageLoader_Init(1, 26, 646, param0->unk_00->unk_0C);
    v2 = MessageLoader_GetNewStrbuf(v0, param2);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);
    MessageLoader_Free(v0);
    sub_0201A9A4(v1);
}

static void ov13_02222E2C(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    MessageLoader *v0;
    Window *v1;
    Strbuf *v2;
    u32 v3;
    u32 v4;

    v1 = &param0->unk_206C[param1];
    v3 = MoveTable_LoadParam(param2, MOVEATTRIBUTE_CONTEST_EFFECT);
    v4 = sub_0209577C(v3);
    v0 = MessageLoader_Init(0, 26, 210, param0->unk_00->unk_0C);
    v2 = MessageLoader_GetNewStrbuf(v0, v4);

    Text_AddPrinterWithParamsAndColor(v1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v2);

    MessageLoader_Free(v0);
    sub_0201A9A4(v1);
}

static void ov13_02222E94(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;
    u16 v2;
    u16 v3;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 53);
    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v3 = (sub_0201C294(v0) * 8 - v2) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222EF8(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->unk_206C[param1];

    switch (param2) {
    case 0:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 54);
        break;
    case 1:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 56);
        break;
    case 2:
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 55);
    }

    {
        u32 v2 = Font_CalcCenterAlignment(FONT_SYSTEM, v1, 0, 7 * 8);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02222F74(UnkStruct_ov13_022213F0 *param0, u32 param1, u32 param2, u32 param3)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3, v4;
    u32 v5;

    v0 = &param0->unk_206C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 46);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v5 = (sub_0201C294(v0) * 8 - v3) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v5, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 44);
    v2 = Strbuf_Init((2 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, param2, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v5 - v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 45);
    v2 = Strbuf_Init((2 + 1) * 2, param0->unk_00->unk_0C);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, param3, 3, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, v5 + v3, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(v0);
}

static void ov13_022230A8(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_206C[param1];

    if (param0->unk_00->unk_34 == 4) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 59);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 58);
    }

    v2 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v1, (12 * 8 - v2) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

void ov13_02223118(UnkStruct_ov13_022213F0 *param0)
{
    Window *v0;
    Strbuf *v1;

    if (param0->unk_2076 == 7) {
        v0 = &param0->unk_206C[8];
    } else {
        v0 = &param0->unk_206C[5];
    }

    BGL_FillWindow(v0, 0);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 60);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_0222317C(UnkStruct_ov13_022213F0 *param0, UnkStruct_ov13_022236B8 *param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v2 = Strbuf_Init((2 + 1) * 2, param0->unk_00->unk_0C);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 43);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 40, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 46);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 80, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 45);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, param1->unk_03, 2, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 + v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 44);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, param1->unk_02, 2, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 - v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(v0);
}

static void ov13_022232C8(UnkStruct_ov13_022213F0 *param0, UnkStruct_ov13_022236B8 *param1, u32 param2)
{
    Window *v0;
    Strbuf *v1;
    Strbuf *v2;
    u32 v3;

    v0 = &param0->unk_206C[param2];
    v2 = Strbuf_Init((2 + 1) * 2, param0->unk_00->unk_0C);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 43);
    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

    Strbuf_Free(v1);
    BGL_WindowColor(v0, 0, 40 + v3, 24, 80 - (40 + v3), 16);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 44);

    StringTemplate_SetNumber(param0->unk_1FA8, 0, param1->unk_02, 2, 0, 1);
    StringTemplate_Format(param0->unk_1FA8, v2, v1);

    v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v2, 80 - v3, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v2);
    sub_0201A9A4(v0);
}

static void ov13_0222339C(UnkStruct_ov13_022213F0 *param0)
{
    s32 v0;

    for (v0 = 0; v0 < Party_GetCurrentCount(param0->unk_00->unk_00); v0++) {
        BGL_FillWindow(&param0->unk_206C[0 + v0], 0);

        if (param0->unk_04[v0].unk_04 == 0) {
            continue;
        }

        ov13_02221C54(param0, 0 + v0, 2, v0, 32, 8);

        if (param0->unk_04[v0].unk_17_7 == 0) {
            ov13_02223448(param0, v0);
        }

        if (PokemonSummary_StatusIconAnimIdx(param0->unk_04[v0].unk_00) != 7) {
            continue;
        }

        ov13_022234A8(param0, v0);
    }

    if (param0->unk_00->unk_35 == 2) {
        ov13_022221C8(param0, 7);
    } else {
        ov13_022221C8(param0, 6);
    }
}

void ov13_02223448(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    BGL_WindowColor(&param0->unk_206C[0 + param1], 0, 56, 32, 24, 8);
    BGL_WindowColor(&param0->unk_206C[0 + param1], 0, (48 + 16), 24, 64, 8);

    ov13_02221E50(param0, 0 + param1, param1, 56, 32);
    ov13_02221ED0(param0, 0 + param1, param1, (48 + 16), 24);
}

void ov13_022234A8(UnkStruct_ov13_022213F0 *param0, u8 param1)
{
    if (param0->unk_04[param1].unk_17_7 == 0) {
        ov13_02221E08(param0, 0 + param1, param1, 0, 32);
    }
}

static void ov13_022234C8(UnkStruct_ov13_022213F0 *param0)
{
    BGL_FillWindow(&param0->unk_206C[0], 0);
    BGL_FillWindow(&param0->unk_206C[1], 0);
    BGL_FillWindow(&param0->unk_206C[2], 0);
    BGL_FillWindow(&param0->unk_206C[3], 0);

    ov13_02223550(param0, param0->unk_00->unk_11);

    ov13_0222222C(param0, 1, 15);

    if (param0->unk_04[param0->unk_00->unk_11].unk_17_7 == 0) {
        ov13_0222222C(param0, 2, 18);
        ov13_0222222C(param0, 3, 19);
    } else {
        sub_0201A9A4(&param0->unk_206C[2]);
        sub_0201A9A4(&param0->unk_206C[3]);
    }
}

static void ov13_02223550(UnkStruct_ov13_022213F0 *param0, u32 param1)
{
    Window *v0;
    UnkStruct_ov13_02221ED0 *v1;
    Strbuf *v2;
    Strbuf *v3;
    u8 v4;
    u8 v5;
    u8 v6;
    u8 v7;

    v0 = &param0->unk_206C[0];
    v1 = &param0->unk_04[param1];
    v2 = Strbuf_Init(12, param0->unk_00->unk_0C);
    v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, Unk_ov13_02228EC4[param1]);

    StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v1->unk_00));
    StringTemplate_Format(param0->unk_1FA8, v2, v3);
    Strbuf_Free(v3);

    v3 = NULL;

    if ((v1->unk_16_7 == 0) && (v1->unk_17_7 == 0)) {
        if (v1->unk_17_0 == 0) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 16);
        } else if (v1->unk_17_0 == 1) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 17);
        }
    }

    v4 = Font_CalcStrbufWidth(FONT_SUBSCREEN, v2, 0);

    if (v3 == NULL) {
        v5 = 0;
        v6 = 0;
    } else {
        v5 = Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
        v6 = 8;
    }

    v7 = (sub_0201C294(v0) * 8 - v4 - v5 - v6) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SUBSCREEN, v2, v7, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(v2);

    if (v3 != NULL) {
        if (v1->unk_17_0 == 0) {
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, v3, v7 + v4 + v6, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                v0, FONT_SYSTEM, v3, v7 + v4 + v6, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
        }

        Strbuf_Free(v3);
    }

    sub_0201A9A4(v0);
}

static void ov13_022236B8(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_022236B8 *v0;
    u16 v1, v2;

    v2 = 6 * param0->unk_2071;

    BGL_FillWindow(&param0->unk_206C[0 + v2], 0);
    BGL_FillWindow(&param0->unk_206C[1 + v2], 0);
    BGL_FillWindow(&param0->unk_206C[2 + v2], 0);
    BGL_FillWindow(&param0->unk_206C[3 + v2], 0);
    BGL_FillWindow(&param0->unk_206C[4 + v2], 0);
    BGL_FillWindow(&param0->unk_206C[5], 0);

    ov13_02221C54(param0, 0 + v2, 0, param0->unk_00->unk_11, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[v1];

        if (v0->unk_00 == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->unk_00, 1 + v2 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v2 + v1);
    }

    ov13_0222222C(param0, 5, 18);

    sub_0201A9A4(&param0->unk_206C[1 + v2]);
    sub_0201A9A4(&param0->unk_206C[2 + v2]);
    sub_0201A9A4(&param0->unk_206C[3 + v2]);
    sub_0201A9A4(&param0->unk_206C[4 + v2]);

    param0->unk_2071 ^= 1;
}

static void ov13_022237F8(UnkStruct_ov13_022213F0 *param0)
{
    u32 v0;

    v0 = 22 * param0->unk_2071;

    BGL_FillWindow(&param0->unk_206C[19], 0);
    BGL_FillWindow(&param0->unk_206C[20], 0);
    BGL_FillWindow(&param0->unk_206C[14], 0);
    BGL_FillWindow(&param0->unk_206C[15], 0);
    BGL_FillWindow(&param0->unk_206C[16], 0);
    BGL_FillWindow(&param0->unk_206C[17], 0);
    BGL_FillWindow(&param0->unk_206C[18], 0);
    BGL_FillWindow(&param0->unk_206C[13], 0);
    BGL_FillWindow(&param0->unk_206C[21], 0);

    BGL_FillWindow(&param0->unk_206C[0 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[10 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[11 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[12 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[5 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[6 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[7 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[8 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[9 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[4 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[1 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[2 + v0], 0);
    BGL_FillWindow(&param0->unk_206C[3 + v0], 0);

    ov13_02221C54(param0, 0 + v0, 0, param0->unk_00->unk_11, 0, 0);
    ov13_0222295C(param0, param0->unk_00->unk_11);
    ov13_02221ED0(param0, 10 + v0, param0->unk_00->unk_11, 0, 0);
    ov13_02222290(param0, param0->unk_00->unk_11);
    ov13_02222464(param0, param0->unk_00->unk_11);
    ov13_02222560(param0, param0->unk_00->unk_11);
    ov13_0222265C(param0, param0->unk_00->unk_11);
    ov13_0222275C(param0, param0->unk_00->unk_11);
    ov13_0222285C(param0, param0->unk_00->unk_11);
    ov13_02221FA8(param0, 1 + v0, param0->unk_00->unk_11);
    ov13_02222030(param0, 3 + v0, param0->unk_00->unk_11);
    ov13_02222AF4(param0, param0->unk_00->unk_11);
    ov13_0222222C(param0, 21, 19);

    param0->unk_2071 ^= 1;
}

static void ov13_02223A10(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_022236B8 *v0;
    u32 v1;

    v1 = 11 * param0->unk_2071;

    BGL_FillWindow(&param0->unk_206C[6], 0);
    BGL_FillWindow(&param0->unk_206C[7], 0);
    BGL_FillWindow(&param0->unk_206C[8], 0);
    BGL_FillWindow(&param0->unk_206C[9], 0);
    BGL_FillWindow(&param0->unk_206C[10], 0);
    BGL_FillWindow(&param0->unk_206C[1 + v1], 0);
    BGL_FillWindow(&param0->unk_206C[0 + v1], 0);
    BGL_FillWindow(&param0->unk_206C[2 + v1], 0);
    BGL_FillWindow(&param0->unk_206C[3 + v1], 0);
    BGL_FillWindow(&param0->unk_206C[5 + v1], 0);
    BGL_FillWindow(&param0->unk_206C[4 + v1], 0);

    v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[param0->unk_00->unk_34];

    ov13_02221C54(param0, 6, 0, param0->unk_00->unk_11, 0, 0);
    ov13_02222170(param0, 7, 0, 0);
    ov13_022220CC(param0, v0->unk_00, 0 + v1, Unk_ov13_02228EB0[param0->unk_00->unk_34], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
    ov13_02222B6C(param0, 8);
    ov13_02222BB4(param0, 2 + v1, v0->unk_06);
    ov13_02222C9C(param0, 9);
    ov13_02222CE4(param0, 3 + v1, v0->unk_07);
    ov13_02222DCC(param0, 4 + v1, v0->unk_00);
    ov13_02222E94(param0, 10);
    ov13_02222EF8(param0, 5 + v1, v0->unk_05);
    ov13_02222F74(param0, 1 + v1, v0->unk_02, v0->unk_03);

    param0->unk_2071 ^= 1;
}

static void ov13_02223B74(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_022236B8 *v0;
    u32 v1;

    BGL_FillWindow(&param0->unk_206C[0], 0);
    BGL_FillWindow(&param0->unk_206C[1], 0);
    BGL_FillWindow(&param0->unk_206C[2], 0);
    BGL_FillWindow(&param0->unk_206C[3], 0);
    BGL_FillWindow(&param0->unk_206C[4], 0);
    BGL_FillWindow(&param0->unk_206C[5], 0);

    ov13_02221C54(param0, 0, 0, param0->unk_00->unk_11, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[v1];

        if (v0->unk_00 == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->unk_00, 1 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v1);
    }

    ov13_022220CC(param0, param0->unk_00->unk_24, 5, Unk_ov13_02228EB0[4], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
    {
        UnkStruct_ov13_022236B8 v2;

        v2.unk_02 = MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_PP);
        v2.unk_03 = v2.unk_02;

        ov13_0222317C(param0, &v2, 5);
    }

    sub_0201A9A4(&param0->unk_206C[1]);
    sub_0201A9A4(&param0->unk_206C[2]);
    sub_0201A9A4(&param0->unk_206C[3]);
    sub_0201A9A4(&param0->unk_206C[4]);
    sub_0201A9A4(&param0->unk_206C[5]);
}

static void ov13_02223C9C(UnkStruct_ov13_022213F0 *param0)
{
    BGL_FillWindow(&param0->unk_206C[0], 0);
    BGL_FillWindow(&param0->unk_206C[2], 0);
    BGL_FillWindow(&param0->unk_206C[3], 0);
    BGL_FillWindow(&param0->unk_206C[1], 0);
    BGL_FillWindow(&param0->unk_206C[4], 0);
    BGL_FillWindow(&param0->unk_206C[6], 0);
    BGL_FillWindow(&param0->unk_206C[5], 0);
    BGL_FillWindow(&param0->unk_206C[7], 0);
    BGL_FillWindow(&param0->unk_206C[9], 0);
    BGL_FillWindow(&param0->unk_206C[10], 0);
    BGL_FillWindow(&param0->unk_206C[8], 0);
    BGL_FillWindow(&param0->unk_206C[11], 0);

    ov13_02221C54(param0, 0, 0, param0->unk_00->unk_11, 0, 0);
    ov13_02222170(param0, 2, 0, 0);
    ov13_02222B6C(param0, 4);
    ov13_02222C9C(param0, 5);
    ov13_02222E94(param0, 9);

    if (param0->unk_00->unk_34 < 4) {
        UnkStruct_ov13_022236B8 *v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[param0->unk_00->unk_34];

        ov13_022220CC(param0, v0->unk_00, 1, Unk_ov13_02228EB0[param0->unk_00->unk_34], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222BB4(param0, 6, v0->unk_06);
        ov13_02222CE4(param0, 7, v0->unk_07);
        ov13_02222DCC(param0, 8, v0->unk_00);
        ov13_02222EF8(param0, 10, v0->unk_05);
        ov13_02222F74(param0, 3, v0->unk_02, v0->unk_03);
    } else {
        u32 v1 = MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_PP);

        ov13_022220CC(param0, param0->unk_00->unk_24, 1, Unk_ov13_02228EB0[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222DCC(param0, 8, param0->unk_00->unk_24);
        ov13_02222BB4(param0, 6, MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_ACCURACY));
        ov13_02222CE4(param0, 7, MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_POWER));
        ov13_02222EF8(param0, 10, MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_CLASS));
        ov13_02222F74(param0, 3, v1, v1);
    }

    ov13_022230A8(param0, 11);
}

static void ov13_02223E68(UnkStruct_ov13_022213F0 *param0)
{
    UnkStruct_ov13_022236B8 *v0;
    u32 v1;

    BGL_FillWindow(&param0->unk_206C[0], 0);
    BGL_FillWindow(&param0->unk_206C[1], 0);
    BGL_FillWindow(&param0->unk_206C[2], 0);
    BGL_FillWindow(&param0->unk_206C[3], 0);
    BGL_FillWindow(&param0->unk_206C[4], 0);

    ov13_02221C54(param0, 0, 0, param0->unk_00->unk_11, 0, 0);

    for (v1 = 0; v1 < 4; v1++) {
        v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[v1];

        if (v0->unk_00 == 0) {
            continue;
        }

        ov13_022220CC(param0, v0->unk_00, 1 + v1, Unk_ov13_02228EB0[v1], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        ov13_0222317C(param0, v0, 1 + v1);
    }

    if (Item_LoadParam(param0->unk_00->unk_22, 37, param0->unk_00->unk_0C) == 0) {
        ov13_022221C8(param0, 94);
    }

    sub_0201A9A4(&param0->unk_206C[1]);
    sub_0201A9A4(&param0->unk_206C[2]);
    sub_0201A9A4(&param0->unk_206C[3]);
    sub_0201A9A4(&param0->unk_206C[4]);
}

void ov13_02223F5C(UnkStruct_ov13_022213F0 *param0, u16 param1, u16 param2)
{
    UnkStruct_ov13_022236B8 *v0 = &param0->unk_04[param0->unk_00->unk_11].unk_30[param2];
    ov13_022232C8(param0, v0, param1);
}

static void ov13_02223F7C(UnkStruct_ov13_022213F0 *param0)
{
    BGL_FillWindow(&param0->unk_206C[0], 0);
    BGL_FillWindow(&param0->unk_206C[2], 0);
    BGL_FillWindow(&param0->unk_206C[3], 0);
    BGL_FillWindow(&param0->unk_206C[1], 0);
    BGL_FillWindow(&param0->unk_206C[4], 0);
    BGL_FillWindow(&param0->unk_206C[5], 0);
    BGL_FillWindow(&param0->unk_206C[6], 0);

    ov13_02221C54(param0, 0, 0, param0->unk_00->unk_11, 0, 0);
    ov13_02222170(param0, 2, 0, 0);

    {
        Strbuf *v0;

        v0 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 57);

        {
            u32 v1 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, 12 * 8);
            Text_AddPrinterWithParamsAndColor(&param0->unk_206C[4], FONT_SYSTEM, v0, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        }

        Strbuf_Free(v0);
        sub_0201A9A4(&param0->unk_206C[4]);
    }

    if (param0->unk_00->unk_34 < 4) {
        UnkStruct_ov13_022236B8 *v2 = &param0->unk_04[param0->unk_00->unk_11].unk_30[param0->unk_00->unk_34];

        ov13_022220CC(param0, v2->unk_00, 1, Unk_ov13_02228EB0[param0->unk_00->unk_34], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222E2C(param0, 5, v2->unk_00);
        ov13_02222F74(param0, 3, v2->unk_02, v2->unk_03);
    } else {
        u32 v3 = MoveTable_LoadParam(param0->unk_00->unk_24, MOVEATTRIBUTE_PP);

        ov13_022220CC(param0, param0->unk_00->unk_24, 1, Unk_ov13_02228EB0[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        ov13_02222E2C(param0, 5, param0->unk_00->unk_24);
        ov13_02222F74(param0, 3, v3, v3);
    }

    ov13_022230A8(param0, 6);
}

void ov13_022240E0(UnkStruct_ov13_022213F0 *param0)
{
    sub_0200E060(&param0->unk_204C[1], 1, 1, 14);
    BGL_FillWindow(&param0->unk_204C[1], 15);
    ov13_02224108(param0);
}

void ov13_02224108(UnkStruct_ov13_022213F0 *param0)
{
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    param0->unk_2077 = Text_AddPrinterWithParams(&param0->unk_204C[1], FONT_MESSAGE, param0->unk_1FAC, 0, 0, BattleSystem_TextSpeed(param0->unk_00->unk_08), NULL);
}

void ov13_02224144(UnkStruct_ov13_022213F0 *param0)
{
    Pokemon *v0;
    UnkStruct_ov13_0221FC20 *v1;
    void *v2;
    Strbuf *v3;
    u16 v4;
    u8 v5;
    u8 v6;

    v1 = param0->unk_00;
    v2 = Item_Load(v1->unk_22, 0, v1->unk_0C);
    v0 = BattleSystem_PartyPokemon(v1->unk_08, v1->unk_28, v1->unk_2C[v1->unk_11]);
    v4 = Pokemon_GetValue(v0, MON_DATA_CURRENT_HP, NULL);
    v5 = 0;

    if (Item_Get(v2, 15) != 0) {
        v5 |= 0x1;
    }

    if (Item_Get(v2, 16) != 0) {
        v5 |= 0x2;
    }

    if (Item_Get(v2, 17) != 0) {
        v5 |= 0x4;
    }

    if (Item_Get(v2, 18) != 0) {
        v5 |= 0x8;
    }

    if (Item_Get(v2, 19) != 0) {
        v5 |= 0x10;
    }

    if (Item_Get(v2, 20) != 0) {
        v5 |= 0x20;
    }

    if (Item_Get(v2, 21) != 0) {
        v5 |= 0x40;
    }

    if ((param0->unk_04[v1->unk_11].unk_10 == 0) && (v4 != 0)) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 88);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (param0->unk_04[v1->unk_11].unk_10 != v4) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 82);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_SetNumber(param0->unk_1FA8, 1, v4 - param0->unk_04[v1->unk_11].unk_10, 3, 0, 1);
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if ((Item_Get(v2, 36) != 0) || (Item_Get(v2, 37) != 0)) {
        MessageLoader_GetStrbuf(param0->unk_1FA4, 87, param0->unk_1FAC);
    } else if (v5 == 0x1) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 92);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x2) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 83);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x4) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 85);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x8) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 86);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x10) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 84);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x20) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 90);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else if (v5 == 0x40) {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 91);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    } else {
        v3 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 89);
        StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
        StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v3);
        Strbuf_Free(v3);
    }

    Heap_FreeToHeap(v2);
}

void ov13_0222449C(UnkStruct_ov13_022213F0 *param0)
{
    Pokemon *v0;
    UnkStruct_ov13_0221FC20 *v1;
    Strbuf *v2;

    v1 = param0->unk_00;
    v0 = BattleSystem_PartyPokemon(v1->unk_08, v1->unk_28, v1->unk_2C[v1->unk_11]);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_1FA4, 95);

    StringTemplate_SetNickname(param0->unk_1FA8, 0, Pokemon_GetBoxPokemon(v0));
    StringTemplate_SetMoveName(param0->unk_1FA8, 1, 373);
    StringTemplate_Format(param0->unk_1FA8, param0->unk_1FAC, v2);
    Strbuf_Free(v2);
}
