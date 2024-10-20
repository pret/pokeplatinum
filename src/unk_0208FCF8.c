#include "unk_0208FCF8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/pokemon_summary_app.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02090800.h"

#include "overlay061/struct_ov61_0222C884.h"

#include "font.h"
#include "heap.h"
#include "message.h"
#include "move_table.h"
#include "pokemon.h"
#include "pokemon_summary_app.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0207A274.h"
#include "unk_0208EA44.h"
#include "unk_020923C0.h"
#include "unk_02092494.h"
#include "unk_02094EDC.h"

static void sub_020900D8(PokemonSummaryApp *param0, Window *param1, TextColor param2, u32 param3);
static void sub_02090158(PokemonSummaryApp *param0, u32 param1, u32 param2, TextColor param3, u32 param4);
static void sub_020902B0(PokemonSummaryApp *param0);
static void sub_02091188(PokemonSummaryApp *param0, u32 param1);
static void sub_02090578(PokemonSummaryApp *param0);
static void sub_020908CC(PokemonSummaryApp *param0);
static void sub_0209093C(PokemonSummaryApp *param0);
static void sub_02090BDC(PokemonSummaryApp *param0);
static void sub_02090CD4(PokemonSummaryApp *param0);
static void sub_02090D90(PokemonSummaryApp *param0);
static void sub_02090E4C(PokemonSummaryApp *param0);
static void sub_02090EC8(PokemonSummaryApp *param0);

static const UnkStruct_ov61_0222C884 Unk_020F4ED0[] = {
    { 0x1, 0x1, 0x0, 0xD, 0x2, 0xF, 0x1 },
    { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1B },
    { 0x1, 0x1, 0x0, 0xE, 0x2, 0xF, 0x31 },
    { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x4D },
    { 0x1, 0x1, 0x0, 0x9, 0x2, 0xF, 0x63 },
    { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x75 },
    { 0x1, 0x1, 0x14, 0x6, 0x2, 0xF, 0x8B },
    { 0x1, 0xE, 0x5, 0x9, 0x2, 0xF, 0x97 },
    { 0x1, 0xE, 0x7, 0x5, 0x2, 0xF, 0xA9 },
    { 0x1, 0xE, 0x9, 0x5, 0x2, 0xF, 0xB3 },
    { 0x1, 0xE, 0xB, 0x5, 0x2, 0xF, 0xBD },
    { 0x1, 0xE, 0xD, 0x5, 0x2, 0xF, 0xC7 },
    { 0x1, 0xE, 0xF, 0xF, 0x2, 0xF, 0xD1 },
    { 0x1, 0xE, 0x13, 0xC, 0x2, 0xF, 0xEF },
    { 0x1, 0x13, 0x15, 0x3, 0x2, 0xF, 0x107 },
    { 0x1, 0x12, 0x4, 0x2, 0x2, 0xF, 0x10D },
    { 0x1, 0x10, 0x7, 0x6, 0x2, 0xF, 0x111 },
    { 0x1, 0x10, 0x9, 0x6, 0x2, 0xF, 0x11D },
    { 0x1, 0x10, 0xB, 0x6, 0x2, 0xF, 0x129 },
    { 0x1, 0x10, 0xD, 0x6, 0x2, 0xF, 0x135 },
    { 0x1, 0x10, 0xF, 0x6, 0x2, 0xF, 0x141 },
    { 0x1, 0xE, 0x12, 0x6, 0x2, 0xF, 0x14D },
    { 0x1, 0xE, 0x14, 0x5, 0x2, 0xF, 0x159 },
    { 0x1, 0x1, 0x16, 0x6, 0x2, 0xF, 0x163 },
    { 0x1, 0x15, 0x14, 0x5, 0x2, 0xF, 0x16F },
    { 0x1, 0x1, 0x8, 0x6, 0x2, 0xF, 0x179 },
    { 0x1, 0x1, 0xA, 0x6, 0x2, 0xF, 0x185 },
    { 0x1, 0x1, 0xC, 0x8, 0x2, 0xF, 0x191 },
    { 0x1, 0x12, 0xB, 0x9, 0x2, 0xF, 0x1A1 },
    { 0x1, 0x2, 0xD, 0xC, 0x2, 0xF, 0x1B3 },
    { 0x1, 0xE, 0x15, 0xC, 0x2, 0xF, 0x1CB },
    { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1E3 },
    { 0x1, 0x1, 0x16, 0xC, 0x2, 0xF, 0x1F9 },
    { 0x1, 0x1, 0x5, 0x6, 0x2, 0xF, 0x211 },
    { 0x1, 0x3, 0x3, 0x9, 0x2, 0xF, 0x21D },
    { 0x1, 0x1A, 0x0, 0x6, 0x2, 0xF, 0x22F }
};

static const UnkStruct_ov61_0222C884 Unk_020F4E20[] = {
    { 0x1, 0x18, 0x5, 0x6, 0x2, 0xF, 0x23B },
    { 0x1, 0x17, 0x7, 0x8, 0x2, 0xF, 0x247 },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0xF, 0x257 },
    { 0x1, 0x19, 0xD, 0x4, 0x2, 0xF, 0x267 },
    { 0x1, 0x18, 0x11, 0x6, 0x2, 0xF, 0x271 },
    { 0x1, 0x18, 0x15, 0x6, 0x2, 0xF, 0x27F }
};

static const UnkStruct_ov61_0222C884 Unk_020F4DB0[] = {
    { 0x1, 0xE, 0x5, 0x11, 0x12, 0xF, 0x23B }
};

static const UnkStruct_ov61_0222C884 Unk_020F4E50[] = {
    { 0x1, 0x17, 0x4, 0x7, 0x2, 0xF, 0x23B },
    { 0x1, 0x19, 0x7, 0x3, 0x2, 0xF, 0x249 },
    { 0x1, 0x19, 0x9, 0x3, 0x2, 0xF, 0x24F },
    { 0x1, 0x19, 0xB, 0x3, 0x2, 0xF, 0x255 },
    { 0x1, 0x19, 0xD, 0x3, 0x2, 0xF, 0x25B },
    { 0x1, 0x19, 0xF, 0x3, 0x2, 0xF, 0x261 },
    { 0x1, 0x15, 0x12, 0xB, 0x2, 0xF, 0x267 },
    { 0x1, 0xE, 0x14, 0x12, 0x4, 0xF, 0x27D }
};

static const UnkStruct_ov61_0222C884 Unk_020F4E90[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0xC, 0xA, 0x3, 0x2, 0xF, 0x317 },
    { 0x1, 0xC, 0xC, 0x3, 0x2, 0xF, 0x31D },
    { 0x1, 0x1, 0xE, 0xF, 0xA, 0xF, 0x323 }
};

static const UnkStruct_ov61_0222C884 Unk_020F4DF0[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0x1, 0x12, 0xF, 0x6, 0xF, 0x317 }
};

static const UnkStruct_ov61_0222C884 Unk_020F4DD0[] = {
    { 0x1, 0x1A, 0x15, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x18, 0xF, 0x7, 0x2, 0xF, 0x245 },
    { 0x1, 0x1, 0x12, 0x15, 0x2, 0xF, 0x253 },
    { 0x1, 0x1, 0x14, 0x1E, 0x4, 0xF, 0x27D }
};

static const UnkStruct_ov61_0222C884 Unk_020F4DB8[] = {
    { 0x1, 0x1A, 0x0, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x1, 0x14, 0xC, 0x4, 0xF, 0x24D },
    { 0x1, 0x2, 0x15, 0x1B, 0x2, 0xE, 0x27D }
};

void sub_0208FCF8(PokemonSummaryApp *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 36; v0++) {
        sub_0201A8D4(param0->bgl, &param0->staticWindows[v0], &Unk_020F4ED0[v0]);
        BGL_FillWindow(&param0->staticWindows[v0], 0);
    }

    sub_020902B0(param0);
    sub_0208FEA4(param0);
    sub_0208FF3C(param0);
    sub_0208FFE0(param0);
}

void sub_0208FD40(PokemonSummaryApp *param0)
{
    const UnkStruct_ov61_0222C884 *v0;
    u32 v1;

    switch (param0->page) {
    case 0:
        v0 = Unk_020F4E20;
        param0->numExtraWindows = 6;
        break;
    case 1:
        v0 = Unk_020F4DB0;
        param0->numExtraWindows = 1;
        break;
    case 2:
        v0 = Unk_020F4E50;
        param0->numExtraWindows = 8;
        break;
    case 3:
        v0 = Unk_020F4E90;
        param0->numExtraWindows = 8;
        break;
    case 5:
        v0 = Unk_020F4DF0;
        param0->numExtraWindows = 6;
        break;
    case 6:
        v0 = Unk_020F4DD0;
        param0->numExtraWindows = 4;
        break;
    case 4:
    case 7:
        if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
            return;
        }

        v0 = Unk_020F4DB8;
        param0->numExtraWindows = 3;
        break;
    default:
        return;
    }

    param0->extraWindows = sub_0201A778(19, param0->numExtraWindows);

    for (v1 = 0; v1 < param0->numExtraWindows; v1++) {
        sub_0201A8D4(param0->bgl, &param0->extraWindows[v1], &v0[v1]);
    }
}

void sub_0208FE34(PokemonSummaryApp *param0)
{
    switch (param0->page) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
        break;
    case 4:
    case 7:
        if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
            return;
        }
        break;
    default:
        return;
    }

    sub_0201A928(param0->extraWindows, param0->numExtraWindows);
}

void sub_0208FE88(PokemonSummaryApp *param0)
{
    u32 v0;

    sub_0208FE34(param0);

    for (v0 = 0; v0 < 36; v0++) {
        BGL_DeleteWindow(&param0->staticWindows[v0]);
    }
}

void sub_0208FEA4(PokemonSummaryApp *param0)
{
    Window *v0;
    u32 v1;

    v0 = &param0->staticWindows[34];

    BGL_FillWindow(v0, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->monData.nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (param0->monData.showGender == 0) {
        if (param0->monData.gender == 0) {
            MessageLoader_GetStrbuf(param0->msgLoader, 1, param0->strbuf);
            sub_020900D8(param0, v0, TEXT_COLOR(3, 4, 0), 1);
        } else if (param0->monData.gender == 1) {
            MessageLoader_GetStrbuf(param0->msgLoader, 2, param0->strbuf);
            sub_020900D8(param0, v0, TEXT_COLOR(5, 6, 0), 1);
        }
    }

    sub_0201A9A4(v0);
}

void sub_0208FF3C(PokemonSummaryApp *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->staticWindows[33];

    BGL_FillWindow(v0, 0);

    if (param0->monData.isEgg == 0) {
        sub_0200C578(param0->unk_684, 1, v0, 0, 5);

        v1 = MessageLoader_GetNewStrbuf(param0->msgLoader, 3);

        StringTemplate_SetNumber(param0->strFormatter, 0, param0->monData.level, 3, 0, 1);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v1);
        Strbuf_Free(v1);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, 16, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    sub_0201A9A4(v0);
}

void sub_0208FFE0(PokemonSummaryApp *param0)
{
    Strbuf *v0;

    BGL_FillWindow(&param0->staticWindows[32], 0);

    if (param0->monData.heldItem != 0) {
        StringTemplate_SetItemName(param0->strFormatter, 0, param0->monData.heldItem);
        v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, 5);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v0);
        Strbuf_Free(v0);
    } else {
        MessageLoader_GetStrbuf(param0->msgLoader, 6, param0->strbuf);
    }

    sub_020900D8(param0, &param0->staticWindows[32], TEXT_COLOR(1, 2, 0), 0);
    sub_0201A9A4(&param0->staticWindows[6]);
    sub_0201A9A4(&param0->staticWindows[32]);
}

void sub_02090064(PokemonSummaryApp *param0, u32 param1)
{
    BGL_FillWindow(&param0->staticWindows[35], 0);
    sub_02090158(param0, 35, param1, TEXT_COLOR(15, 14, 0), 0);
    sub_0201A9A4(&param0->staticWindows[35]);
}

static BOOL sub_02090098(PokemonSummaryApp *param0)
{
    if ((param0->monData.OTID == param0->data->OTID) && (param0->monData.OTGender == param0->data->OTGender) && (Strbuf_Compare(param0->monData.OTName, param0->playerName) == 0)) {
        return 1;
    }

    return 0;
}

static void sub_020900D8(PokemonSummaryApp *param0, Window *param1, TextColor param2, u32 param3)
{
    u8 v0;
    u8 v1;
    u8 v2;

    switch (param3) {
    case 0:
        v2 = 0;
        break;
    case 1:
        v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
        v1 = sub_0201C294(param1) * 8;
        v2 = v1 - v0;
        break;
    case 2:
        v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
        v1 = sub_0201C294(param1) * 8;
        v2 = (v1 - v0) / 2;
        break;
    }

    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->strbuf, v2, 0, TEXT_SPEED_NO_TRANSFER, param2, NULL);
}

static void sub_02090158(PokemonSummaryApp *param0, u32 param1, u32 param2, TextColor param3, u32 param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    MessageLoader_GetStrbuf(param0->msgLoader, param2, param0->strbuf);
    sub_020900D8(param0, &param0->staticWindows[param1], param3, param4);
}

static void sub_02090184(PokemonSummaryApp *param0, u32 param1, u32 param2, u8 param3, u8 param4)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, param1);
    StringTemplate_SetNumber(param0->strFormatter, 0, param2, param3, param4, 1);
    StringTemplate_Format(param0->strFormatter, param0->strbuf, v0);
    Strbuf_Free(v0);
}

static void sub_020901D0(PokemonSummaryApp *param0, u32 param1, u32 param2, u32 param3, u32 param4, u16 param5, u16 param6, u8 param7, u8 param8, u8 param9)
{
    Window *v0;
    u32 v1;
    u16 v2;
    u16 v3;

    v0 = &param0->extraWindows[param1];

    MessageLoader_GetStrbuf(param0->msgLoader, param2, param0->strbuf);
    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    v2 = param8 - v1 / 2;
    v3 = v2 + v1;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, v2, param9, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_02090184(param0, param3, param5, param7, 0);

    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, v2 - v1, param9, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_02090184(param0, param4, param6, param7, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, v3, param9, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

static void sub_020902B0(PokemonSummaryApp *param0)
{
    sub_02090158(param0, 0, 7, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 1, 23, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 2, 109, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 3, 126, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 4, 128, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 5, 157, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 6, 4, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 7, 8, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 8, 10, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 9, 12, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 10, 13, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 11, 15, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 12, 17, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 13, 19, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 15, 110, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 16, 111, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 17, 112, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 18, 113, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 19, 114, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 20, 115, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 21, 116, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 22, 127, TEXT_COLOR(15, 14, 0), 0);

    {
        MessageLoader_GetStrbuf(param0->msgLoader, 146, param0->strbuf);
        Text_AddPrinterWithParamsAndColor(&param0->staticWindows[24], FONT_SYSTEM, param0->strbuf, 0, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    sub_02090158(param0, 25, 149, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 26, 147, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 27, 148, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 28, 162, TEXT_COLOR(15, 14, 0), 2);
    sub_02090158(param0, 29, 160, TEXT_COLOR(1, 2, 0), 2);
    sub_02090158(param0, 30, 182, TEXT_COLOR(1, 2, 0), 0);
    sub_02090158(param0, 31, 179, TEXT_COLOR(15, 14, 0), 0);
}

void sub_020904C4(PokemonSummaryApp *param0)
{
    sub_02019CB8(param0->bgl, 1, 0, 0, 0, 32, 2, 16);
    sub_02019CB8(param0->bgl, 1, 0, 14, 2, 18, 22, 16);

    switch (param0->page) {
    case 0:
        sub_02090578(param0);
        break;
    case 1:
        sub_020908CC(param0);
        break;
    case 2:
        sub_0209093C(param0);
        break;
    case 4:
        sub_02090BDC(param0);
        break;
    case 3:
        sub_02090CD4(param0);
        break;
    case 5:
        sub_02090D90(param0);
        break;
    case 6:
        sub_02090E4C(param0);
        break;
    case 7:
        sub_02090EC8(param0);
        break;
    }
}

static void sub_02090578(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[0]);
    sub_0201A9A4(&param0->staticWindows[7]);
    sub_0201A9A4(&param0->staticWindows[8]);
    sub_0201A9A4(&param0->staticWindows[9]);
    sub_0201A9A4(&param0->staticWindows[10]);
    sub_0201A9A4(&param0->staticWindows[11]);
    sub_0201A9A4(&param0->staticWindows[12]);
    sub_0201A9A4(&param0->staticWindows[13]);
    sub_0201A9A4(&param0->staticWindows[14]);

    BGL_FillWindow(&param0->extraWindows[0], 0);
    BGL_FillWindow(&param0->extraWindows[1], 0);
    BGL_FillWindow(&param0->extraWindows[2], 0);
    BGL_FillWindow(&param0->extraWindows[3], 0);
    BGL_FillWindow(&param0->extraWindows[4], 0);
    BGL_FillWindow(&param0->extraWindows[5], 0);

    {
        u32 v0 = sub_0207A294(param0->data->dexMode, param0->monData.species);

        if (v0 != 0) {
            sub_02090184(param0, 9, v0, 3, 2);
        } else {
            MessageLoader_GetStrbuf(param0->msgLoader, 22, param0->strbuf);
        }
    }

    if (param0->monData.isShiny == 0) {
        sub_020900D8(param0, &param0->extraWindows[0], TEXT_COLOR(1, 2, 0), 2);
    } else {
        sub_020900D8(param0, &param0->extraWindows[0], TEXT_COLOR(5, 6, 0), 2);
    }

    {
        u32 v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->monData.speciesName, 0);
        u32 v2 = (param0->extraWindows[1].unk_07 * 8 - v1) / 2;

        Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->monData.speciesName, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    {
        u32 v3 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->monData.OTName, 0);
        u32 v4 = (param0->extraWindows[2].unk_07 * 8 - v3) / 2;

        if (param0->monData.OTGender == 0) {
            Text_AddPrinterWithParamsAndColor(
                &param0->extraWindows[2], FONT_SYSTEM, param0->monData.OTName, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                &param0->extraWindows[2], FONT_SYSTEM, param0->monData.OTName, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
        }
    }

    sub_02090184(param0, 16, (param0->monData.OTID & 0xffff), 5, 2);
    sub_020900D8(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), 2);
    sub_02090184(param0, 18, param0->monData.curExp, 7, 1);
    sub_020900D8(param0, &param0->extraWindows[4], TEXT_COLOR(1, 2, 0), 2);

    if (param0->monData.level < 100) {
        sub_02090184(param0, 21, param0->monData.nextLevelExp - param0->monData.curExp, 7, 1);
    } else {
        sub_02090184(param0, 21, 0, 7, 1);
    }

    sub_020900D8(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), 2);
    sub_0201A9A4(&param0->extraWindows[0]);
    sub_0201A9A4(&param0->extraWindows[1]);
    sub_0201A9A4(&param0->extraWindows[2]);
    sub_0201A9A4(&param0->extraWindows[3]);
    sub_0201A9A4(&param0->extraWindows[4]);
    sub_0201A9A4(&param0->extraWindows[5]);
}

static void sub_02090800(Window *param0, Pokemon *param1, BOOL param2)
{
    PokemonInfoDisplayStruct *v0 = sub_02092494(param1, param2, 19);

    if (v0->unk_14.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_14.unk_04, 0, 0 + (v0->unk_14.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_1C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_1C.unk_04, 0, 0 + (v0->unk_1C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_24.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_24.unk_04, 0, 0 + (v0->unk_24.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_2C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_2C.unk_04, 0, 0 + (v0->unk_2C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_34.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_34.unk_04, 0, 0 + (v0->unk_34.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    sub_0209282C(v0);
}

static void sub_020908CC(PokemonSummaryApp *param0)
{
    Strbuf *v0;

    sub_0201A9A4(&param0->staticWindows[1]);
    BGL_FillWindow(&param0->extraWindows[0], 0);

    {
        void *v1 = PokemonSummary_MonData(param0);
        BOOL v2 = sub_02090098(param0);

        if (param0->data->dataType == 2) {
            {
                Pokemon *v3 = Pokemon_New(19);

                Pokemon_FromBoxPokemon(v1, v3);
                sub_02090800(&param0->extraWindows[0], v3, v2);
                Heap_FreeToHeap(v3);
            }
        } else {
            sub_02090800(&param0->extraWindows[0], v1, v2);
        }
    }

    sub_0201A9A4(&param0->extraWindows[0]);
}

static void sub_0209093C(PokemonSummaryApp *param0)
{
    u32 v0;

    sub_0201A9A4(&param0->staticWindows[2]);
    sub_0201A9A4(&param0->staticWindows[15]);
    sub_0201A9A4(&param0->staticWindows[16]);
    sub_0201A9A4(&param0->staticWindows[17]);
    sub_0201A9A4(&param0->staticWindows[18]);
    sub_0201A9A4(&param0->staticWindows[19]);
    sub_0201A9A4(&param0->staticWindows[20]);
    sub_0201A9A4(&param0->staticWindows[21]);

    BGL_FillWindow(&param0->extraWindows[0], 0);
    BGL_FillWindow(&param0->extraWindows[1], 0);
    BGL_FillWindow(&param0->extraWindows[2], 0);
    BGL_FillWindow(&param0->extraWindows[3], 0);
    BGL_FillWindow(&param0->extraWindows[4], 0);
    BGL_FillWindow(&param0->extraWindows[5], 0);
    BGL_FillWindow(&param0->extraWindows[6], 0);
    BGL_FillWindow(&param0->extraWindows[7], 0);

    v0 = sub_0201C294(&param0->extraWindows[0]) * 8;

    sub_020901D0(param0, 0, 117, 119, 118, param0->monData.curHP, param0->monData.maxHP, 3, v0 / 2, 0);
    sub_02090184(param0, 120, param0->monData.attack, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[1], TEXT_COLOR(1, 2, 0), 1);
    sub_02090184(param0, 121, param0->monData.defense, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[2], TEXT_COLOR(1, 2, 0), 1);
    sub_02090184(param0, 122, param0->monData.spAttack, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), 1);
    sub_02090184(param0, 123, param0->monData.spDefense, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[4], TEXT_COLOR(1, 2, 0), 1);
    sub_02090184(param0, 124, param0->monData.speed, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), 1);

    {
        MessageLoader *v1;
        Strbuf *v2;

        StringTemplate_SetAbilityName(param0->strFormatter, 0, param0->monData.ability);

        v2 = MessageLoader_GetNewStrbuf(param0->msgLoader, 125);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v2);
        Strbuf_Free(v2);
        sub_020900D8(param0, &param0->extraWindows[6], TEXT_COLOR(1, 2, 0), 0);

        v1 = MessageLoader_Init(1, 26, 612, 19);
        MessageLoader_GetStrbuf(v1, param0->monData.ability, param0->strbuf);
        MessageLoader_Free(v1);
        sub_020900D8(param0, &param0->extraWindows[7], TEXT_COLOR(1, 2, 0), 0);
    }

    sub_0201A9A4(&param0->extraWindows[0]);
    sub_0201A9A4(&param0->extraWindows[1]);
    sub_0201A9A4(&param0->extraWindows[2]);
    sub_0201A9A4(&param0->extraWindows[3]);
    sub_0201A9A4(&param0->extraWindows[4]);
    sub_0201A9A4(&param0->extraWindows[5]);
    sub_0201A9A4(&param0->extraWindows[6]);
    sub_0201A9A4(&param0->extraWindows[7]);
}

static void sub_02090BDC(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[3]);
    sub_0201A9A4(&param0->staticWindows[22]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    BGL_FillWindow(&param0->extraWindows[1], 0);
    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    sub_020900D8(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), 0);
    MessageLoader_GetStrbuf(param0->msgLoader, 166 + param0->monData.preferredFlavor, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A9A4(&param0->extraWindows[1]);

    if (param0->data->mode == 3) {
        BGL_FillWindow(&param0->extraWindows[0], 0);
        MessageLoader_GetStrbuf(param0->msgLoader, 163, param0->strbuf);
        sub_020900D8(param0, &param0->extraWindows[0], TEXT_COLOR(15, 14, 0), 0);
        sub_0201A9A4(&param0->extraWindows[0]);
        sub_0208F6DC(param0, &param0->extraWindows[0]);
    }
}

static void sub_02090CD4(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[4]);

    if (param0->data->mode == 2) {
        sub_02090064(param0, 155);
    } else {
        sub_02090064(param0, 129);
    }

    sub_0208F6DC(param0, &param0->staticWindows[35]);

    BGL_FillWindow(&param0->extraWindows[0], 0);
    BGL_FillWindow(&param0->extraWindows[1], 0);
    BGL_FillWindow(&param0->extraWindows[2], 0);
    BGL_FillWindow(&param0->extraWindows[3], 0);

    sub_02091188(param0, 0);
    sub_02091188(param0, 1);
    sub_02091188(param0, 2);
    sub_02091188(param0, 3);

    sub_0201A9A4(&param0->extraWindows[0]);
    sub_0201A9A4(&param0->extraWindows[1]);
    sub_0201A9A4(&param0->extraWindows[2]);
    sub_0201A9A4(&param0->extraWindows[3]);
}

static void sub_02090D90(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[5]);

    if (param0->data->mode == 2) {
        sub_02090064(param0, 159);
    } else {
        sub_02090064(param0, 158);
    }

    sub_0208F6DC(param0, &param0->staticWindows[35]);

    BGL_FillWindow(&param0->extraWindows[0], 0);
    BGL_FillWindow(&param0->extraWindows[1], 0);
    BGL_FillWindow(&param0->extraWindows[2], 0);
    BGL_FillWindow(&param0->extraWindows[3], 0);

    sub_02091188(param0, 0);
    sub_02091188(param0, 1);
    sub_02091188(param0, 2);
    sub_02091188(param0, 3);

    sub_0201A9A4(&param0->extraWindows[0]);
    sub_0201A9A4(&param0->extraWindows[1]);
    sub_0201A9A4(&param0->extraWindows[2]);
    sub_0201A9A4(&param0->extraWindows[3]);
}

static void sub_02090E4C(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[31]);
    sub_0201A9A4(&param0->staticWindows[30]);

    BGL_FillWindow(&param0->extraWindows[0], 0);
    sub_02090184(param0, 183, param0->ribbonMax, 3, 0);
    sub_020900D8(param0, &param0->extraWindows[0], TEXT_COLOR(1, 2, 0), 0);
    sub_0201A9A4(&param0->extraWindows[0]);

    if (param0->ribbonMax != 0) {
        sub_02090064(param0, 180);
        sub_0208F6DC(param0, &param0->staticWindows[35]);
    }
}

static void sub_02090EC8(PokemonSummaryApp *param0)
{
    sub_0201A9A4(&param0->staticWindows[28]);
    sub_02090064(param0, 161);
    sub_0208F6DC(param0, &param0->staticWindows[35]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    BGL_FillWindow(&param0->extraWindows[1], 0);

    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    sub_020900D8(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), 0);

    MessageLoader_GetStrbuf(param0->msgLoader, 166 + param0->monData.preferredFlavor, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    sub_0201A9A4(&param0->extraWindows[1]);
}

void sub_02090F84(PokemonSummaryApp *param0)
{
    Strbuf *v0;
    u8 v1;
    u8 v2;

    BGL_FillWindow(&param0->extraWindows[1], 0);

    v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, 186);

    StringTemplate_SetNumber(param0->strFormatter, 0, param0->ribbonMax, 3, 0, 1);
    StringTemplate_Format(param0->strFormatter, param0->strbuf, v0);
    Strbuf_Free(v0);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    v1 = 7 * 8 - v2;

    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, 185);
    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);
    v1 -= v2;

    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, v0, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);

    v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, 184);

    StringTemplate_SetNumber(param0->strFormatter, 0, param0->ribbonPos + param0->ribbonState * 4 + 1, 3, 0, 1);
    StringTemplate_Format(param0->strFormatter, param0->strbuf, v0);
    Strbuf_Free(v0);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    v1 -= v2;

    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, v1, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    sub_0201A9A4(&param0->extraWindows[1]);
}

void sub_020910E4(PokemonSummaryApp *param0)
{
    BGL_FillWindow(&param0->extraWindows[2], 0);
    BGL_FillWindow(&param0->extraWindows[3], 0);

    MessageLoader_GetStrbuf(param0->ribbonLoader, sub_020923C0(param0->ribbonNum, 3), param0->strbuf);
    sub_020900D8(param0, &param0->extraWindows[2], TEXT_COLOR(15, 14, 0), 0);

    MessageLoader_GetStrbuf(param0->ribbonLoader, sub_02092424(param0->data->ribbons, param0->ribbonNum), param0->strbuf);
    sub_020900D8(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), 0);

    sub_0201A9A4(&param0->extraWindows[2]);
    sub_0201A9A4(&param0->extraWindows[3]);
}

static void sub_02091188(PokemonSummaryApp *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;
    u16 v3;
    u8 v4, v5;

    v0 = &param0->extraWindows[0 + param1];

    if (param1 != 4) {
        v3 = param0->monData.moves[param1];
        v4 = param0->monData.curPP[param1];
        v5 = param0->monData.maxPP[param1];
    } else {
        v3 = param0->data->move;
        v4 = MoveTable_CalcMaxPP(v3, 0);
        v5 = v4;
    }

    MessageLoader_GetStrbuf(param0->moveNameLoader, v3, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, 1, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (v3 != 0) {
        MessageLoader_GetStrbuf(param0->msgLoader, 135, param0->strbuf);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, 16, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        sub_020901D0(param0, 0 + param1, 117, 136 + param1, 141 + param1, v4, v5, 2, (40 + 20), 16);
    } else {
        MessageLoader_GetStrbuf(param0->msgLoader, 153, param0->strbuf);
        v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, (40 + 20) - v2 / 2, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

void sub_020912A4(PokemonSummaryApp *param0, u32 param1)
{
    MessageLoader *v0;
    u32 v1;
    u32 v2;

    sub_0201A9A4(&param0->staticWindows[25]);
    sub_0201A9A4(&param0->staticWindows[26]);
    sub_0201A9A4(&param0->staticWindows[27]);

    BGL_FillWindow(&param0->extraWindows[5], 0);
    BGL_FillWindow(&param0->extraWindows[6], 0);
    BGL_FillWindow(&param0->extraWindows[7], 0);

    v2 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_POWER);

    if (v2 <= 1) {
        MessageLoader_GetStrbuf(param0->msgLoader, 154, param0->strbuf);
    } else {
        sub_02090184(param0, 150, v2, 3, 1);
    }

    sub_020900D8(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), 2);

    v2 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_ACCURACY);

    if (v2 == 0) {
        MessageLoader_GetStrbuf(param0->msgLoader, 154, param0->strbuf);
    } else {
        sub_02090184(param0, 151, v2, 3, 1);
    }

    sub_020900D8(param0, &param0->extraWindows[6], TEXT_COLOR(1, 2, 0), 2);

    v0 = MessageLoader_Init(1, 26, 646, 19);

    MessageLoader_GetStrbuf(v0, param1, param0->strbuf);
    sub_020900D8(param0, &param0->extraWindows[7], TEXT_COLOR(1, 2, 0), 0);
    MessageLoader_Free(v0);

    sub_0201A9A4(&param0->extraWindows[5]);
    sub_0201A9A4(&param0->extraWindows[6]);
    sub_0201A9A4(&param0->extraWindows[7]);
}

void sub_020913D8(PokemonSummaryApp *param0)
{
    sub_0201AD10(&param0->staticWindows[25]);
    sub_0201AD10(&param0->staticWindows[26]);
    sub_0201AD10(&param0->staticWindows[27]);
    sub_0201AD10(&param0->extraWindows[5]);
    sub_0201AD10(&param0->extraWindows[6]);
    sub_0201AD10(&param0->extraWindows[7]);
}

void sub_02091420(PokemonSummaryApp *param0)
{
    if (param0->data->move != 0) {
        BGL_FillWindow(&param0->extraWindows[4], 0);
        sub_02091188(param0, 4);
        sub_0201A9A4(&param0->extraWindows[4]);
    } else {
        sub_0201A9A4(&param0->staticWindows[24]);
    }
}

void sub_0209145C(PokemonSummaryApp *param0)
{
    sub_0201AD10(&param0->staticWindows[24]);
    sub_0201C3C0(param0->bgl, 1);
}

void sub_02091474(PokemonSummaryApp *param0)
{
    BGL_FillWindow(&param0->extraWindows[0 + param0->cursor], 0);
    BGL_FillWindow(&param0->extraWindows[0 + param0->cursorTmp], 0);

    sub_02091188(param0, param0->cursor);
    sub_02091188(param0, param0->cursorTmp);

    sub_0201A9A4(&param0->extraWindows[0 + param0->cursor]);
    sub_0201A9A4(&param0->extraWindows[0 + param0->cursorTmp]);
}

void sub_020914F8(PokemonSummaryApp *param0)
{
    Window *v0;

    if (param0->page == 3) {
        sub_0201AD10(&param0->extraWindows[5]);
        sub_0201AD10(&param0->extraWindows[6]);
        sub_0201AD10(&param0->extraWindows[7]);
        v0 = &param0->extraWindows[7];
    } else {
        v0 = &param0->extraWindows[5];
    }

    BGL_FillWindow(v0, 0);
    MessageLoader_GetStrbuf(param0->msgLoader, 156, param0->strbuf);
    sub_020900D8(param0, v0, TEXT_COLOR(1, 2, 0), 0);
    sub_0201A9A4(v0);
}

void sub_02091570(PokemonSummaryApp *param0, u32 param1)
{
    MessageLoader *v0;
    u32 v1;
    u32 v2;

    BGL_FillWindow(&param0->extraWindows[5], 0);

    v1 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
    v2 = sub_0209577C(v1);
    v0 = MessageLoader_Init(0, 26, 210, 19);

    MessageLoader_GetStrbuf(v0, v2, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[5], FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_Free(v0);

    sub_0201A9A4(&param0->staticWindows[29]);
    sub_0201A9A4(&param0->extraWindows[5]);
}

void sub_020915F4(PokemonSummaryApp *param0)
{
    sub_0201AD10(&param0->staticWindows[29]);
    sub_0201AD10(&param0->extraWindows[5]);
}

void sub_02091610(PokemonSummaryApp *param0, u8 param1)
{
    Window *v0;
    u32 v1;

    switch (param1) {
    case 0:
        v1 = 172;
        break;
    case 1:
        v1 = 174;
        break;
    case 2:
        v1 = 175;
        break;
    case 3:
        v1 = 176;
        break;
    case 4:
        v1 = 173;
        break;
    case 0xfe:
        v1 = 177;
        break;
    default:
        v1 = 178;
    }

    v0 = &param0->extraWindows[2];

    sub_0200E060(v0, 1, (1024 - (18 + 12)), 13);
    BGL_FillWindow(v0, 15);
    MessageLoader_GetStrbuf(param0->msgLoader, v1, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(v0, FONT_MESSAGE, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    sub_0201A9A4(v0);
}
