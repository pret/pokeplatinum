#include "overlay013/ov13_02227288.h"

#include <nitro.h>
#include <string.h>

#include "battle/ov16_0223DF00.h"
#include "overlay013/battle_bag.h"

#include "bg_window.h"
#include "font.h"
#include "item.h"
#include "message.h"
#include "render_text.h"
#include "render_window.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"

static void ov13_022273CC(BattleBag *param0);
static void ov13_02227888(BattleBag *param0);
static void ov13_02227974(BattleBag *param0);

static const WindowTemplate Unk_ov13_02229A60 = {
    0x4,
    0x2,
    0x13,
    0x1B,
    0x4,
    0xF,
    0x376
};

static const WindowTemplate Unk_ov13_02229A88[] = {
    { 0x4, 0x2, 0x4, 0xC, 0x5, 0x0, 0x2CE },
    { 0x4, 0x2, 0xD, 0xC, 0x5, 0x0, 0x30A },
    { 0x4, 0x12, 0x5, 0xC, 0x3, 0x0, 0x286 },
    { 0x4, 0x12, 0xE, 0xC, 0x3, 0x0, 0x2AA },
    { 0x4, 0x5, 0x14, 0x14, 0x3, 0x0, 0x24A }
};

static const WindowTemplate Unk_ov13_02229AE0[] = {
    { 0x5, 0x1, 0x1, 0xE, 0x3, 0x0, 0x1 },
    { 0x5, 0x8, 0x4, 0x4, 0x3, 0x4, 0x2B },
    { 0x5, 0x11, 0x1, 0xE, 0x3, 0x0, 0x37 },
    { 0x5, 0x18, 0x4, 0x4, 0x3, 0x4, 0x61 },
    { 0x5, 0x1, 0x7, 0xE, 0x3, 0x0, 0x6D },
    { 0x5, 0x8, 0xA, 0x4, 0x3, 0x4, 0x97 },
    { 0x5, 0x11, 0x7, 0xE, 0x3, 0x0, 0xA3 },
    { 0x5, 0x18, 0xA, 0x4, 0x3, 0x4, 0xCD },
    { 0x5, 0x1, 0xD, 0xE, 0x3, 0x0, 0xD9 },
    { 0x5, 0x8, 0x10, 0x4, 0x3, 0x4, 0x103 },
    { 0x5, 0x11, 0xD, 0xE, 0x3, 0x0, 0x10F },
    { 0x5, 0x18, 0x10, 0x4, 0x3, 0x4, 0x139 },
    { 0x5, 0x1, 0x1, 0xE, 0x3, 0x0, 0x145 },
    { 0x5, 0x8, 0x4, 0x4, 0x3, 0x4, 0x16F },
    { 0x5, 0x11, 0x1, 0xE, 0x3, 0x0, 0x17B },
    { 0x5, 0x18, 0x4, 0x4, 0x3, 0x4, 0x1A5 },
    { 0x5, 0x1, 0x7, 0xE, 0x3, 0x0, 0x1B1 },
    { 0x5, 0x8, 0xA, 0x4, 0x3, 0x4, 0x1DB },
    { 0x5, 0x11, 0x7, 0xE, 0x3, 0x0, 0x1E7 },
    { 0x5, 0x18, 0xA, 0x4, 0x3, 0x4, 0x211 },
    { 0x5, 0x1, 0xD, 0xE, 0x3, 0x0, 0x21D },
    { 0x5, 0x8, 0x10, 0x4, 0x3, 0x4, 0x247 },
    { 0x5, 0x11, 0xD, 0xE, 0x3, 0x0, 0x253 },
    { 0x5, 0x18, 0x10, 0x4, 0x3, 0x4, 0x27D },
    { 0x5, 0xB, 0x13, 0xA, 0x5, 0x4, 0x289 },
    { 0x5, 0x16, 0x14, 0x4, 0x3, 0x4, 0x2BB }
};

static const WindowTemplate Unk_ov13_02229A68[] = {
    { 0x5, 0x7, 0x4, 0xC, 0x2, 0x4, 0x2C7 },
    { 0x5, 0x14, 0x4, 0x4, 0x2, 0x4, 0x2DF },
    { 0x5, 0x2, 0x9, 0x1C, 0x6, 0x4, 0x2E7 },
    { 0x5, 0xA, 0x14, 0x6, 0x3, 0x0, 0x38F }
};

void ov13_02227288(BattleBag *param0)
{
    Window_AddFromTemplate(param0->background, &param0->messageBoxWindow, &Unk_ov13_02229A60);
    ov13_022272AC(param0, param0->currentScreen);
}

void ov13_022272AC(BattleBag *param0, u32 param1)
{
    const WindowTemplate *v0;
    u8 v1;

    switch (param1) {
    case 0:
        v0 = Unk_ov13_02229A88;
        param0->numWindows = 5;
        break;
    case 1:
        v0 = Unk_ov13_02229AE0;
        param0->numWindows = 26;
        break;
    case 2:
        v0 = Unk_ov13_02229A68;
        param0->numWindows = 4;
        break;
    }

    param0->windows = Window_New(param0->context->heapID, param0->numWindows);

    for (v1 = 0; v1 < param0->numWindows; v1++) {
        Window_AddFromTemplate(param0->background, &param0->windows[v1], &v0[v1]);
    }
}

void ov13_02227324(BattleBag *param0)
{
    Windows_Delete(param0->windows, param0->numWindows);
}

void ov13_02227334(BattleBag *param0)
{
    u32 v0;

    Windows_Delete(param0->windows, param0->numWindows);
    Window_Remove(&param0->messageBoxWindow);
}

void ov13_02227350(BattleBag *param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov13_022273CC(param0);
        break;
    case 1:
        ov13_02227888(param0);
        break;
    case 2:
        ov13_02227974(param0);
        break;
    }
}

static void ov13_02227374(BattleBag *param0, u32 param1, u32 param2, u32 param3, u32 param4, TextColor param5)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;
    u32 v3;

    v0 = &param0->windows[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, param2);
    v2 = Font_CalcStrbufWidth(param3, v1, 0);
    v3 = (Window_GetWidth(v0) * 8 - v2) / 2;

    Text_AddPrinterWithParamsAndColor(v0, param3, v1, v3, param4, TEXT_SPEED_NO_TRANSFER, param5, NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_022273CC(BattleBag *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        Window_FillTilemap(&param0->windows[v0], 0);
    }

    ov13_02227374(param0, 0, 0, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    ov13_02227374(param0, 0, 1, FONT_SUBSCREEN, 24, TEXT_COLOR(3, 2, 1));
    ov13_02227374(param0, 1, 2, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    ov13_02227374(param0, 1, 3, FONT_SUBSCREEN, 24, TEXT_COLOR(3, 2, 1));
    ov13_02227374(param0, 2, 7, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    ov13_02227374(param0, 3, 6, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));

    if (param0->context->lastUsedItem != ITEM_NONE) {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 8); // Possibly TRAINER_NAME_LEN + 1

        Text_AddPrinterWithParamsAndColor(&param0->windows[4], FONT_SUBSCREEN, v1, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
        Strbuf_Free(v1);
        Window_ScheduleCopyToVRAM(&param0->windows[4]);
    }
}

static const u32 Unk_ov13_02229AB0[][2] = {
    { 0x9, 0xA },
    { 0xB, 0xC },
    { 0xD, 0xE },
    { 0xF, 0x10 },
    { 0x11, 0x12 },
    { 0x13, 0x14 }
};

static void ov13_022274A8(BattleBag *param0, u32 param1, u32 param2, u32 param3, u32 param4, TextColor param5)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;
    u32 v3;

    v0 = &param0->windows[param3];

    Window_FillTilemap(v0, 0);

    if (param0->items[param0->currentBattlePocket][param1].item != 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_ov13_02229AB0[param2][0]);

        StringTemplate_SetItemName(param0->stringTemplate, 0, param0->items[param0->currentBattlePocket][param1].item);
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v1);

        v2 = Font_CalcStrbufWidth(param4, param0->strbuf, 0);
        v3 = (Window_GetWidth(v0) * 8 - v2) / 2;

        Text_AddPrinterWithParamsAndColor(v0, param4, param0->strbuf, v3, 8, TEXT_SPEED_NO_TRANSFER, param5, NULL);
        Strbuf_Free(v1);
    }

    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_0222754C(BattleBag *param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, TextColor param6)
{
    Strbuf *v0;
    Window *v1 = &param0->windows[param3];

    Window_FillTilemap(v1, 0);

    if (param0->items[param0->currentBattlePocket][param1].quantity != 0) {
        v0 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_ov13_02229AB0[param2][1]);

        StringTemplate_SetNumber(param0->stringTemplate, 0, param0->items[param0->currentBattlePocket][param1].quantity, 3, 0, 1);
        StringTemplate_Format(param0->stringTemplate, param0->strbuf, v0);
        Text_AddPrinterWithParamsAndColor(v1, param4, param0->strbuf, 0, param5, TEXT_SPEED_NO_TRANSFER, param6, NULL);
        Strbuf_Free(v0);
    }

    Window_ScheduleCopyToVRAM(v1);
}

static void ov13_022275E0(BattleBag *param0, u32 param1)
{
    u32 v0;
    u32 v1 = param0->context->pocketCurrentPages[param0->currentBattlePocket] * 6 + param1;

    if (param0->unk_31 == 0) {
        v0 = 0;
    } else {
        v0 = 12;
    }

    ov13_022274A8(param0, v1, param1, v0 + param1 * 2, FONT_SUBSCREEN, TEXT_COLOR(3, 2, 1));
    ov13_0222754C(param0, v1, param1, v0 + 1 + param1 * 2, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
}

void ov13_02227650(BattleBag *param0)
{
    u16 v0;

    Bg_FillTilemapRect(param0->background, 5, 0, 0, 0, 32, 19, 17);

    for (v0 = 0; v0 < 6; v0++) {
        ov13_022275E0(param0, v0);
    }

    param0->unk_31 ^= 1;
}

void ov13_02227698(BattleBag *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;
    u32 v3;

    Window_FillTilemap(&param0->windows[25], 0);

    v0 = &param0->windows[25];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 28);
    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);
    v3 = (Window_GetWidth(v0) * 8 - v2) / 2;

    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, v3, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 29);
    StringTemplate_SetNumber(param0->stringTemplate, 0, param0->numBattlePocketPages[param0->currentBattlePocket] + 1, 2, 0, 1);
    StringTemplate_Format(param0->stringTemplate, param0->strbuf, v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, v3 + v2, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, 30);
    StringTemplate_SetNumber(param0->stringTemplate, 0, param0->context->pocketCurrentPages[param0->currentBattlePocket] + 1, 2, 0, 1);
    StringTemplate_Format(param0->stringTemplate, param0->strbuf, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strbuf, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, v3 - v2, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_022277C8(BattleBag *param0)
{
    Window_FillTilemap(&param0->windows[24], 0);

    switch (param0->currentBattlePocket) {
    case ITEM_BATTLE_CATEGORY_RECOVER_HP:
        ov13_02227374(param0, 24, 22, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
        ov13_02227374(param0, 24, 23, FONT_SYSTEM, (4 + 16), TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_RECOVER_STATUS:
        ov13_02227374(param0, 24, 24, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
        ov13_02227374(param0, 24, 25, FONT_SYSTEM, (4 + 16), TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_POKE_BALLS:
        ov13_02227374(param0, 24, 26, FONT_SYSTEM, 12, TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_BATTLE_ITEMS:
        ov13_02227374(param0, 24, 27, FONT_SYSTEM, 12, TEXT_COLOR(1, 2, 0));
        break;
    }
}

static void ov13_02227888(BattleBag *param0)
{
    ov13_02227650(param0);
    ov13_022277C8(param0);
    ov13_02227698(param0);
}

static void ov13_022278A0(BattleBag *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->windows[0];
    v1 = MessageLoader_GetNewStrbuf(param0->messageLoader, Unk_ov13_02229AB0[0][0]);

    StringTemplate_SetItemName(param0->stringTemplate, 0, param0->items[param0->currentBattlePocket][param1].item);
    StringTemplate_Format(param0->stringTemplate, param0->strbuf, v1);
    Window_FillTilemap(v0, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02227910(BattleBag *param0, u32 param1)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->windows[2];
    v1 = Strbuf_Init(130, param0->context->heapID);

    Item_LoadDescription(v1, param0->items[param0->currentBattlePocket][param1].item, param0->context->heapID);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v1);
    Window_ScheduleCopyToVRAM(v0);
}

static void ov13_02227974(BattleBag *param0)
{
    u32 v0;
    u32 v1;

    for (v0 = 0; v0 < 4; v0++) {
        Window_FillTilemap(&param0->windows[v0], 0);
    }

    v1 = param0->context->pocketCurrentPages[param0->currentBattlePocket] * 6 + param0->context->pocketCurrentPagePositions[param0->currentBattlePocket];

    ov13_022278A0(param0, v1);
    ov13_0222754C(param0, v1, 0, 1, FONT_SYSTEM, 0, TEXT_COLOR(1, 2, 0));
    ov13_02227910(param0, v1);
    ov13_02227374(param0, 3, 31, FONT_SUBSCREEN, 6, TEXT_COLOR(3, 2, 1));
}

void DisplayBattleBagMessage(BattleBag *battleBag)
{
    Window_DrawMessageBoxWithScrollCursor(&battleBag->messageBoxWindow, 1, 1024 - (18 + 12), 14);
    Window_FillTilemap(&battleBag->messageBoxWindow, 15);
    ov13_02227A1C(battleBag);
}

void ov13_02227A1C(BattleBag *param0)
{
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    param0->textPrinterID = Text_AddPrinterWithParams(&param0->messageBoxWindow, FONT_MESSAGE, param0->strbuf, 0, 0, BattleSystem_TextSpeed(param0->context->battleSystem), NULL);
}
