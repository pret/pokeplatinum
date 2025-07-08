#include "overlay071/ov71_0223C69C.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/struct_02072014.h"

#include "bg_window.h"
#include "font.h"
#include "message.h"
#include "play_time.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"

static void ov71_0223CD64(Window *param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7);
static void ov71_0223CDB0(Window *param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4);

static const WindowTemplate Unk_ov71_0223D670[] = {
    { 0x7, 0x2, 0x4, 0x11, 0x2, 0xF, 0x6F },
    { 0x7, 0x2, 0x6, 0x11, 0x2, 0xF, 0x91 },
    { 0x7, 0x2, 0x9, 0x11, 0x2, 0xF, 0xB3 },
    { 0x7, 0x2, 0xC, 0x11, 0x2, 0xF, 0xD5 },
    { 0x7, 0x2, 0xF, 0x11, 0x2, 0xF, 0xF7 },
    { 0x7, 0x2, 0x12, 0x1C, 0x2, 0xF, 0x119 },
    { 0x7, 0x2, 0x14, 0x1C, 0x2, 0xF, 0x151 },
    { 0x7, 0x2, 0x2, 0x1C, 0x4, 0xF, 0xC1 },
    { 0x7, 0x2, 0x7, 0x1C, 0x2, 0xF, 0x131 },
    { 0x7, 0x2, 0x9, 0x1C, 0x2, 0xF, 0x169 },
    { 0x7, 0x2, 0xB, 0x1C, 0x2, 0xF, 0x1A1 }
};

void ov71_0223C69C(BgConfig *param0, Window *param1)
{
    u8 v0;
    const WindowTemplate *v1 = Unk_ov71_0223D670;

    for (v0 = 0; v0 < 11; v0++) {
        Window_AddFromTemplate(param0, &param1[v0], &v1[v0]);
    }

    Bg_FillTilesRange(param0, 7, 0, 1, 0);
}

void ov71_0223C6D4(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        Window_Remove(&param0[v0]);
    }
}

static const int Unk_ov71_0223D644[] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA
};

void ov71_0223C6F0(Window *param0, const TrainerCard *param1)
{
    u8 v0;
    MessageLoader *v1;
    Strbuf *v2;

    Window_FillRectWithColor(&param0[0], 0, 0, 0, 17 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[1], 0, 0, 0, 17 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[2], 0, 0, 0, 17 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[3], 0, 0, 0, 17 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[4], 0, 0, 0, 17 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[5], 0, 0, 0, 28 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[6], 0, 0, 0, 28 * 8, 2 * 8);

    v1 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0616, HEAP_ID_25);
    v2 = Strbuf_Init(32, HEAP_ID_25);

    for (v0 = 0; v0 < 7; v0++) {
        if ((v0 != 3) || (v0 == 3) && (param1->unk_04_3)) {
            MessageLoader_GetStrbuf(v1, Unk_ov71_0223D644[v0], v2);
            Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }
    }

    {
        Strbuf *v3 = Strbuf_Init(32, HEAP_ID_25);
        StringTemplate *v4 = StringTemplate_New(6, 32, HEAP_ID_25);

        ov71_0223CD64(&param0[0], (8 * 17), 0, 0, v2, param1->unk_28, 5, 2);
        Strbuf_CopyChars(v2, param1->unk_08);
        ov71_0223CDB0(&param0[1], (8 * 17), 0, 0, v2);

        {
            u32 v5;

            StringTemplate_SetNumber(v4, 5, param1->unk_1C, 6, 0, 1);
            MessageLoader_GetStrbuf(v1, 14, v3);
            StringTemplate_Format(v4, v2, v3);

            v5 = (8 * 17) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[2], FONT_SYSTEM, v2, v5, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        if (param1->unk_04_3) {
            u32 v6;

            StringTemplate_SetNumber(v4, 5, param1->unk_20, 3, 0, 1);
            MessageLoader_GetStrbuf(v1, 21, v3);
            StringTemplate_Format(v4, v2, v3);

            v6 = (8 * 17) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[3], FONT_SYSTEM, v2, v6, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        ov71_0223CD64(&param0[4], (8 * 17), 0, 0, v2, param1->unk_24, 9, 1);

        {
            u32 v7;

            if (param1->unk_04_1) {
                StringTemplate_SetNumber(v4, 0, PlayTime_GetHours(param1->playTime), 3, 1, 1);
                StringTemplate_SetNumber(v4, 1, PlayTime_GetMinutes(param1->playTime), 2, 2, 1);
                MessageLoader_GetStrbuf(v1, 16, v3);
            } else {
                StringTemplate_SetNumber(v4, 0, param1->playTimeHours, 3, 1, 1);
                StringTemplate_SetNumber(v4, 1, param1->playTimeMinutes, 2, 2, 1);
                MessageLoader_GetStrbuf(v1, 15, v3);
            }

            StringTemplate_Format(v4, v2, v3);
            v7 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);
            Text_AddPrinterWithParamsAndColor(&param0[5], FONT_SYSTEM, v2, v7, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        {
            u32 v8;

            StringTemplate_SetNumber(v4, 2, param1->unk_2F, 2, 2, 1);
            StringTemplate_SetMonthName(v4, 3, param1->unk_30);
            StringTemplate_SetNumber(v4, 4, param1->unk_31, 2, 2, 1);
            MessageLoader_GetStrbuf(v1, 17, v3);
            StringTemplate_Format(v4, v2, v3);

            v8 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v2, 0);

            Text_AddPrinterWithParamsAndColor(&param0[6], FONT_SYSTEM, v2, v8, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        Strbuf_Free(v3);
        StringTemplate_Free(v4);
    }

    Strbuf_Free(v2);
    MessageLoader_Free(v1);
}

void ov71_0223CA28(Window *param0, const TrainerCard *param1)
{
    u8 i;

    Window_FillRectWithColor(&param0[7], 0, 0, 0, 28 * 8, 4 * 8);
    Window_FillRectWithColor(&param0[8], 0, 0, 0, 28 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[9], 0, 0, 0, 28 * 8, 2 * 8);
    Window_FillRectWithColor(&param0[10], 0, 0, 0, 28 * 8, 2 * 8);
    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0616, HEAP_ID_25);
    Strbuf *strbuf = Strbuf_Init(32, HEAP_ID_25);

    for (i = 7; i < 11; i++) {
        MessageLoader_GetStrbuf(messageLoader, Unk_ov71_0223D644[i], strbuf);
        Text_AddPrinterWithParamsAndColor(&param0[i], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf *strbuf2 = Strbuf_Init(32, HEAP_ID_25);
    StringTemplate *template = StringTemplate_New(6, 32, HEAP_ID_25);

    if (param1->unk_33 != 0) {
        StringTemplate_SetNumber(template, 2, param1->unk_32, 2, 2, 1);
        StringTemplate_SetMonthName(template, 3, param1->unk_33);
        StringTemplate_SetNumber(template, 4, param1->unk_34, 2, 2, 1);
        StringTemplate_SetNumber(template, 0, param1->unk_2C, 3, 1, 1);
        StringTemplate_SetNumber(template, 1, param1->unk_35, 2, 2, 1);
        MessageLoader_GetStrbuf(messageLoader, 17, strbuf2);
        StringTemplate_Format(template, strbuf, strbuf2);
    } else {
        MessageLoader_GetStrbuf(messageLoader, 12, strbuf2);
        StringTemplate_SetStrbuf(template, 0, strbuf2, 0, FALSE, GAME_LANGUAGE);
        StringTemplate_SetStrbuf(template, 1, strbuf2, 0, FALSE, GAME_LANGUAGE);
        MessageLoader_GetStrbuf(messageLoader, 20, strbuf);
    }

    u32 xOffset = 28 * 8 - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&param0[7], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    MessageLoader_GetStrbuf(messageLoader, 15, strbuf2);
    StringTemplate_Format(template, strbuf, strbuf2);
    xOffset = 28 * 8 - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&param0[7], FONT_SYSTEM, strbuf, xOffset, 16, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    StringTemplate_SetNumber(template, 5, param1->unk_38, 6, 0, 1);
    MessageLoader_GetStrbuf(messageLoader, 22, strbuf2);
    StringTemplate_Format(template, strbuf, strbuf2);
    xOffset = 28 * 8 - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&param0[8], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    MessageLoader_GetStrbuf(messageLoader, 18, strbuf);
    Text_AddPrinterWithParamsAndColor(&param0[9], FONT_SYSTEM, strbuf, 14 * 8, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    ov71_0223CD64(&param0[9], 28 * 8, 0, 0, strbuf, param1->unk_40, 4, 1);
    MessageLoader_GetStrbuf(messageLoader, 19, strbuf);
    Text_AddPrinterWithParamsAndColor(&param0[9], FONT_SYSTEM, strbuf, 22 * 8, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    ov71_0223CD64(&param0[9], 28 * 8, 8 * 8, 0, strbuf, param1->unk_3C, 4, 1);
    StringTemplate_SetNumber(template, 5, param1->unk_44, 6, 0, 1);
    MessageLoader_GetStrbuf(messageLoader, 22, strbuf2);
    StringTemplate_Format(template, strbuf, strbuf2);
    xOffset = 28 * 8 - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&param0[10], FONT_SYSTEM, strbuf, xOffset, 0, 0, TEXT_COLOR(1, 2, 0), NULL);

    Strbuf_Free(strbuf2);
    StringTemplate_Free(template);
    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
}

void ov71_0223CD44(Window *param0, const u8 param1, const u8 param2)
{
    u8 v0;

    for (v0 = param1; v0 <= param2; v0++) {
        Window_ClearAndCopyToVRAM(&param0[v0]);
    }
}

static void ov71_0223CD64(Window *param0, const u32 param1, const u32 param2, const u32 param3, Strbuf *param4, const u32 param5, const u8 param6, const int param7)
{
    u32 v0;

    Strbuf_FormatInt(param4, param5, param6, param7, 1);
    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param4, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param4, param1 - (v0 + param2), param3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

static void ov71_0223CDB0(Window *param0, const u32 param1, const u32 param2, const u32 param3, const Strbuf *param4)
{
    u32 v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param4, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param4, param1 - (v0 + param2), param3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

void ov71_0223CDE8(Window *param0, const TrainerCard *param1, Strbuf *param2)
{
    int v0;

    GF_ASSERT(param1->playTime != NULL);

    v0 = PlayTime_GetHours(param1->playTime);

    if (v0 > 999) {
        v0 = 999;
    }

    Window_FillRectWithColor(&param0[5], 0, 184, 0, 40, 2 * 8);

    {
        u32 v1;
        MessageLoader *v2 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0616, HEAP_ID_25);
        Strbuf *v3 = Strbuf_Init(32, HEAP_ID_25);
        Strbuf *v4 = Strbuf_Init(32, HEAP_ID_25);
        StringTemplate *v5 = StringTemplate_New((1 + 1), 32, HEAP_ID_25);

        StringTemplate_SetNumber(v5, 0, PlayTime_GetHours(param1->playTime), 3, 1, 1);
        StringTemplate_SetNumber(v5, 1, PlayTime_GetMinutes(param1->playTime), 2, 2, 1);
        MessageLoader_GetStrbuf(v2, 16, v4);
        StringTemplate_Format(v5, v3, v4);
        v1 = (8 * 28) - Font_CalcStrbufWidth(FONT_SYSTEM, v3, 0);
        Text_AddPrinterWithParamsAndColor(&param0[5], FONT_SYSTEM, v3, v1, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

        MessageLoader_Free(v2);
        Strbuf_Free(v3);
        Strbuf_Free(v4);
        StringTemplate_Free(v5);
    }
}

void ov71_0223CECC(Window *param0, const BOOL param1, Strbuf *param2)
{
    if (param1) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param2, (207 - 2), 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        Window_FillRectWithColor(param0, 0, (207 - 2), 0, 5, 2 * 8);
        Window_CopyToVRAM(param0);
    }
}
