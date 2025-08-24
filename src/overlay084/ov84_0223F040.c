#include "overlay084/ov84_0223F040.h"

#include <nitro.h>
#include <string.h>

#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_022403F4.h"

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "poffin.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

static void ov84_0223F9B0(BagController *param0, u32 param1);
static BOOL ov84_022400E0(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate Unk_ov84_02241150 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0x3,
    0x31B
};

void ov84_0223F040(BagController *param0)
{
    Window_Add(param0->bgConfig, &param0->windows[0], 2, 14, 0, 17, 18, 3, 1);
    Window_Add(param0->bgConfig, &param0->windows[1], 0, 0, 18, 32, 6, 3, 1 + 17 * 18);
    Window_Add(param0->bgConfig, &param0->windows[2], 2, 0, 13, 12 * 3, 3, 3, 499);
    Window_Add(param0->bgConfig, &param0->windows[3], 0, 6, 19, 14, 4, 11, 607);
    Window_Add(param0->bgConfig, &param0->windows[4], 0, 6, 19, 13, 4, 11, 607);
    Window_Add(param0->bgConfig, &param0->windows[5], 0, 0, 11, 12, 2, 13, 663);
    Window_Add(param0->bgConfig, &param0->windows[6], 0, 2, 19, 27, 4, 11, 687);
    Window_Add(param0->bgConfig, &param0->windows[7], 0, 19, 13, 12, 4, 3, 823);
    Window_Add(param0->bgConfig, &param0->windows[8], 0, 1, 1, 10, 4, 3, 871);
    Window_Add(param0->bgConfig, &param0->windows[9], 0, 24, 19, 7, 4, 3, 903);
    Window_Add(param0->bgConfig, &param0->windows[10], 0, 1, 12, 11, 4, 3, 903);
}

void ov84_0223F1DC(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        Window_Remove(&param0[v0]);
    }
}

void ov84_0223F1F8(BagController *param0)
{
    MessageLoader *v0;
    u16 v1;

    v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_6);

    for (v1 = 0; v1 < 8; v1++) {
        param0->pocketNames[v1] = MessageLoader_GetNewStrbuf(v0, v1);
    }

    MessageLoader_Free(v0);
}

void ov84_0223F238(BagController *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 8; v0++) {
        Strbuf_Free(param0->pocketNames[v0]);
    }
}

void ov84_0223F25C(BagController *param0)
{
    u16 v0;
    u16 v1 = (12 * 3) / 3;

    for (v0 = 0; v0 < v1; v0++) {
        Bg_FillTilemapRect(param0->bgConfig, 2, ((1 + 17 * 18) + 32 * 6) + v1 + v0, 0 + v0, 13, 1, 1, 3);
        Bg_FillTilemapRect(param0->bgConfig, 2, ((1 + 17 * 18) + 32 * 6) + (12 * 3) + v1 + v0, 0 + v0, 13 + 1, 1, 1, 3);
    }
}

static void ov84_0223F2C0(BagController *param0, Strbuf *param1, u16 param2)
{
    u32 v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
    Text_AddPrinterWithParamsAndColor(&param0->windows[2], FONT_SYSTEM, param1, param2 - v0 / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void ov84_0223F2FC(BagController *param0)
{
    BagPocketSelector *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_FillTilemap(&param0->windows[2], 0);

    v0 = &param0->pocketSelector;
    v2 = param0->pocketNames[param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType];
    v1 = param0->pocketNames[param0->bagCtx->accessiblePockets[v0->nextPocketIdx].pocketType];

    if (v0->nextPocketDirection == 0) {
        v3 = 96 + 50 + 12 * v0->animFrame;
        ov84_0223F2C0(param0, v1, v3 - 96);
    } else {
        v3 = 96 + 50 - 12 * v0->animFrame;
        ov84_0223F2C0(param0, v1, 96 + v3);
    }

    ov84_0223F2C0(param0, v2, v3);
    Window_LoadTiles(&param0->windows[2]);
}

static void *ov84_0223F390(BagController *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 21, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

void ov84_0223F3AC(BagController *param0, u8 param1, u8 param2)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F390(param0, &v0);
    if (param2 == 1) {
        v2 = param0->bagCtx->accessiblePockets[param1].pocketType * 32 + 16;
    } else {
        v2 = param0->bagCtx->accessiblePockets[param1].pocketType * 32;
    }

    Window_BlitBitmapRect(&param0->windows[5], v0->pRawData, v2, 0, 32 * 8, 16, param0->pocketSelectorIconsX + param0->pocketSelectorIconsSpacing * param1, 3, 10, 10);
    Window_ScheduleCopyToVRAM(&param0->windows[5]);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void ov84_0223F438(BagController *param0)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;
    u8 v3;

    v1 = ov84_0223F390(param0, &v0);
    Window_FillTilemap(&param0->windows[5], 0);

    for (v2 = 0; v2 < param0->numPockets; v2++) {
        if (v2 == param0->bagCtx->currPocketIdx) {
            v3 = param0->bagCtx->accessiblePockets[v2].pocketType * 32 + 16;
        } else {
            v3 = param0->bagCtx->accessiblePockets[v2].pocketType * 32;
        }

        Window_BlitBitmapRect(&param0->windows[5], v0->pRawData, v3, 0, 32 * 8, 16, param0->pocketSelectorIconsX + param0->pocketSelectorIconsSpacing * v2, 3, 10, 10);
    }

    Window_ScheduleCopyToVRAM(&param0->windows[5]);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

static void ov84_0223F4E8(BagController *param0, u32 param1, u32 param2)
{
    StringTemplate_SetItemName(param0->strTemplate, param2, ov84_0223BE5C(param0, param1, 0));
}

static void ov84_0223F508(BagController *param0, u32 param1, u32 param2)
{
    StringTemplate_SetItemNamePlural(param0->strTemplate, param2, ov84_0223BE5C(param0, param1, 0));
}

void ov84_0223F528(BagController *param0, u16 param1)
{
    Strbuf *v0;

    if (param1 != 0xffff) {
        v0 = Strbuf_Init(130, HEAP_ID_6);
        Item_LoadDescription(v0, param1, 6);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 94);
    }

    Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, v0, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v0);
}

void ov84_0223F584(BagController *param0, u16 param1)
{
    Window *v0;
    Strbuf *v1;
    u16 v2;
    u16 v3;

    v0 = &param0->windows[1];
    v2 = Item_MoveForTMHM(param1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 98);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 86);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 89);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 87);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 88);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v3 = MoveTable_CalcMaxPP(v2, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 90);
    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 2, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_POWER);

    if (v3 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 24);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 91);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_ACCURACY);

    if (v3 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 24);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 91);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void ov84_0223F7D4(BagController *param0)
{
    param0->itemCountX = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 38);
    param0->itemCountNumberFmt = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 37);
}

void ov84_0223F800(BagController *param0)
{
    Strbuf_Free(param0->itemCountX);
    Strbuf_Free(param0->itemCountNumberFmt);
}

void ov84_0223F81C(BagController *param0, u16 param1, u16 param2, u32 param3)
{
    Strbuf *v0;
    u32 v1;

    if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 3) {
        Text_AddPrinterWithParamsAndColor(&param0->windows[0], FONT_SYSTEM, param0->itemCountX, (((17 * 8 - 2) - 6 - 1 - 6 * 3) + 6), param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->windows[0], FONT_SYSTEM, param0->itemCountX, ((17 * 8 - 2) - 6 - 1 - 6 * 3), param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    }

    v0 = Strbuf_Init(10, HEAP_ID_6);

    StringTemplate_SetNumber(param0->strTemplate, 0, param1, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, v0, param0->itemCountNumberFmt);

    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&param0->windows[0], FONT_SYSTEM, v0, (17 * 8 - 2) - v1, param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    Strbuf_Free(v0);
}

void ov84_0223F8D0(BagController *param0, BagItem *param1, u32 param2)
{
    u16 v0 = param1->item;

    if (v0 < 420) {
        v0 = v0 - 328 + 1;
        FontSpecialChars_DrawPartyScreenText(param0->specialChars, 2, v0, 2, 2, &param0->windows[0], 0, param2 + 5);
        ov84_0223F81C(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
    } else {
        v0 = v0 - 420 + 1;
        FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, v0, 2, 1, &param0->windows[0], 16, param2 + 5);
        ov84_0223F9B0(param0, param2);
    }
}

void ov84_0223F94C(BagController *param0, BagItem *param1, u32 param2)
{
    FontSpecialChars_DrawPartyScreenText(param0->specialChars, 2, Item_BerryNumber(param1->item) + 1, 2, 2, &param0->windows[0], 0, param2 + 5);
    ov84_0223F81C(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
}

static void *ov84_0223F994(BagController *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 38, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

static void ov84_0223F9B0(BagController *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    Window_BlitBitmapRect(&param0->windows[0], v0->pRawData, 40, 0, 64, 16, 0, param1, 24, 16);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void ov84_0223F9F0(BagController *param0, u32 param1)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 41);

    Window_FillRectWithColor(&param0->windows[0], 0, 0, param1, 17 * 8, 16);
    Text_AddPrinterWithParamsAndColor(&param0->windows[0], FONT_SYSTEM, v0, 0, param1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

void ov84_0223FA44(BagController *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    Window_BlitBitmapRect(&param0->windows[0], v0->pRawData, 0, 0, 64, 16, 96, param1, 40, 16);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void ov84_0223FA88(BagController *param0)
{
    param0->itemActionStrings[0] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 0);
    param0->itemActionStrings[1] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 6);
    param0->itemActionStrings[2] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 16);
    param0->itemActionStrings[3] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 95);
    param0->itemActionStrings[4] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 96);
    param0->itemActionStrings[5] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 1);
    param0->itemActionStrings[6] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 2);
    param0->itemActionStrings[7] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 18);
    param0->itemActionStrings[8] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 3);
    param0->itemActionStrings[9] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 4);
    param0->itemActionStrings[10] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 5);
    param0->itemActionStrings[11] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 8);
}

void ov84_0223FB50(BagController *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 12; v0++) {
        Strbuf_Free(param0->itemActionStrings[v0]);
    }
}

void ov84_0223FB70(BagController *param0, u8 *param1, u8 param2)
{
    MenuTemplate v0;
    BagApplicationPocket *v1;
    Strbuf *v2;
    Strbuf *v3;
    u16 v4;
    u16 v5;

    if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 4) {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, 0, 23, 23 - param2 * 2, 8, param2 * 2, 3, 823);
        v5 = 4;
    } else {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, 0, 23 + 1, 23 - param2 * 2, 8 - 1, param2 * 2, 3, 823);
        v5 = 3;
    }

    param0->itemActionChoices = StringList_New(param2, HEAP_ID_6);

    for (v4 = 0; v4 < param2; v4++) {
        StringList_AddFromStrbuf(param0->itemActionChoices, param0->itemActionStrings[param1[v4]], ov84_0223D84C(param1[v4]));
    }

    v0.choices = param0->itemActionChoices;
    v0.window = &param0->itemActionsWindow;
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = param2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;

    if (param2 >= 4) {
        v0.loopAround = TRUE;
    } else {
        v0.loopAround = FALSE;
    }

    param0->menu = Menu_New(&v0, 8, 0, 0, HEAP_ID_6, PAD_BUTTON_B);

    if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 3) {
        Window_FillTilemap(&param0->windows[1], 0);
        ov84_0223F584(param0, param0->bagCtx->selectedItem);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        BagUI_UpdateTypeAndCategoryIcons(param0, param0->bagCtx->selectedItem, 1);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[v5], 1, 1024 - 9 - (18 + 12), 12);
        Window_FillTilemap(&param0->windows[v5], 15);

        v2 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 42);
        v3 = Strbuf_Init((14 * 2 * 2), HEAP_ID_6);
        v1 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

        ov84_0223F4E8(param0, v1->cursorScroll + v1->cursorPos - 1, 0);
        StringTemplate_Format(param0->strTemplate, v3, v2);
        Text_AddPrinterWithParams(&param0->windows[v5], FONT_MESSAGE, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v3);
        Strbuf_Free(v2);
        Window_ScheduleCopyToVRAM(&param0->windows[v5]);
    }

    Window_DrawStandardFrame(&param0->itemActionsWindow, 1, 1024 - 9, 14);
    Window_ScheduleCopyToVRAM(&param0->itemActionsWindow);
}

void ov84_0223FD84(BagController *param0)
{
    u32 v0;

    if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType == 4) {
        v0 = 4;
    } else {
        v0 = 3;
    }

    if (param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx].pocketType != 3) {
        Window_EraseMessageBox(&param0->windows[v0], 1);
        Window_ClearAndScheduleCopyToVRAM(&param0->windows[v0]);
    }

    Window_EraseStandardFrame(&param0->itemActionsWindow, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->itemActionsWindow);
    Menu_Free(param0->menu, NULL);
    StringList_Free(param0->itemActionChoices);
    Window_Remove(&param0->itemActionsWindow);
    Window_FillTilemap(&param0->windows[1], 0);
    ov84_0223F528(param0, param0->bagCtx->selectedItem);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
    BagUI_UpdateTypeAndCategoryIcons(param0, 0, 0);
}

void ov84_0223FE18(BagController *param0)
{
    Strbuf *v0;
    Strbuf *v1;

    Window_FillTilemap(&param0->windows[1], 0);

    v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 45);
    v1 = Strbuf_Init(130, HEAP_ID_6);

    ov84_0223F4E8(param0, param0->movedItemPos - 1, 0);

    StringTemplate_Format(param0->strTemplate, v1, v0);
    Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, v1, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
}

void ov84_0223FE94(BagController *param0)
{
    BagApplicationPocket *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_DrawStandardFrame(&param0->windows[9], 1, 1024 - 9, 14);
    ov84_0223FF44(param0);
    Window_DrawMessageBoxWithScrollCursor(&param0->windows[3], 1, 1024 - 9 - (18 + 12), 12);
    Window_FillTilemap(&param0->windows[3], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 52);
    v2 = Strbuf_Init(14 * 2 * 2, HEAP_ID_6);
    v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    ov84_0223F4E8(param0, v0->cursorScroll + v0->cursorPos - 1, 0);

    StringTemplate_Format(param0->strTemplate, v2, v1);
    Text_AddPrinterWithParams(&param0->windows[3], FONT_MESSAGE, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&param0->windows[3]);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
}

void ov84_0223FF44(BagController *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[9];
    Window_FillTilemap(v0, 15);
    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 84);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 3, 2, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_0223FFC0(BagController *param0)
{
    Window_EraseMessageBox(&param0->windows[3], 1);
    Window_EraseStandardFrame(&param0->windows[9], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[3]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[9]);
    Window_ScheduleCopyToVRAM(&param0->windows[1]);
}

void ov84_0223FFF0(BagController *param0)
{
    BagApplicationPocket *v0;
    Strbuf *v1;
    u16 v2;

    Window_DrawMessageBoxWithScrollCursor(&param0->windows[6], 1, 1024 - 9 - (18 + 12), 12);
    Window_FillTilemap(&param0->windows[6], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 54);
    v0 = &param0->bagCtx->accessiblePockets[param0->bagCtx->currPocketIdx];

    if (param0->selectedItemCount == 1) {
        ov84_0223F4E8(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    } else {
        ov84_0223F508(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    }

    StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);

    param0->msgBoxPrinterID = ov84_022400A0(param0);
}

u8 ov84_022400A0(BagController *param0)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    v0 = Text_AddPrinterWithParams(&param0->windows[6], FONT_MESSAGE, param0->strBuffer, 0, 0, Options_TextFrameDelay(param0->options), ov84_022400E0);

    return v0;
}

static BOOL ov84_022400E0(TextPrinterTemplate *param0, u16 param1)
{
    switch (param1) {
    case 1:
        return Sound_IsAnyEffectPlaying();
    case 2:
        return Sound_IsBGMPausedByFanfare();
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        break;
    case 4:
        return Sound_IsEffectPlaying(1549);
    }

    return 0;
}

void ov84_02240120(BagController *param0)
{
    param0->menu = Menu_MakeYesNoChoice(param0->bgConfig, &Unk_ov84_02241150, 1024 - 9, 14, 6);
}

void ov84_02240148(BagController *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[7];

    if (param1 == 0) {
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);
    }

    Window_FillTilemap(v0, 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 80);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 2, 2, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 81);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->soldItemPrice * param0->selectedItemCount, 6, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_02240248(BagController *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[8];

    if (param1 == 0) {
        Window_FillTilemap(v0, 15);
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 78);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);
    } else {
        Window_FillRectWithColor(v0, 15, 0, 16, (10 * 8), 16);
    }

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 79);

    StringTemplate_SetNumber(param0->strTemplate, 0, TrainerInfo_Money(param0->trainerInfo), 6, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, (10 * 8) - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_02240328(BagController *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[10];
    Window_FillTilemap(v0, 15);
    Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 108);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, 109);
    StringTemplate_SetNumber(param0->strTemplate, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(param0->bagCtx->saveData)), 3, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 11 * 8 - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
}
