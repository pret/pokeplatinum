#include "overlay084/ov84_0223F040.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207CB08.h"

#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_022403F4.h"
#include "overlay084/struct_ov84_0223B5A0.h"
#include "overlay084/struct_ov84_0223BE5C.h"
#include "overlay084/struct_ov84_0223C920.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
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
#include "unk_0200C440.h"

static void ov84_0223F9B0(UnkStruct_ov84_0223B5A0 *param0, u32 param1);
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

void ov84_0223F040(UnkStruct_ov84_0223B5A0 *param0)
{
    Window_Add(param0->unk_00, &param0->unk_04[0], 2, 14, 0, 17, 18, 3, 1);
    Window_Add(param0->unk_00, &param0->unk_04[1], 0, 0, 18, 32, 6, 3, 1 + 17 * 18);
    Window_Add(param0->unk_00, &param0->unk_04[2], 2, 0, 13, 12 * 3, 3, 3, 499);
    Window_Add(param0->unk_00, &param0->unk_04[3], 0, 6, 19, 14, 4, 11, 607);
    Window_Add(param0->unk_00, &param0->unk_04[4], 0, 6, 19, 13, 4, 11, 607);
    Window_Add(param0->unk_00, &param0->unk_04[5], 0, 0, 11, 12, 2, 13, 663);
    Window_Add(param0->unk_00, &param0->unk_04[6], 0, 2, 19, 27, 4, 11, 687);
    Window_Add(param0->unk_00, &param0->unk_04[7], 0, 19, 13, 12, 4, 3, 823);
    Window_Add(param0->unk_00, &param0->unk_04[8], 0, 1, 1, 10, 4, 3, 871);
    Window_Add(param0->unk_00, &param0->unk_04[9], 0, 24, 19, 7, 4, 3, 903);
    Window_Add(param0->unk_00, &param0->unk_04[10], 0, 1, 12, 11, 4, 3, 903);
}

void ov84_0223F1DC(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        Window_Remove(&param0[v0]);
    }
}

void ov84_0223F1F8(UnkStruct_ov84_0223B5A0 *param0)
{
    MessageLoader *v0;
    u16 v1;

    v0 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_6);

    for (v1 = 0; v1 < 8; v1++) {
        param0->unk_404[v1] = MessageLoader_GetNewStrbuf(v0, v1);
    }

    MessageLoader_Free(v0);
}

void ov84_0223F238(UnkStruct_ov84_0223B5A0 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 8; v0++) {
        Strbuf_Free(param0->unk_404[v0]);
    }
}

void ov84_0223F25C(UnkStruct_ov84_0223B5A0 *param0)
{
    u16 v0;
    u16 v1 = (12 * 3) / 3;

    for (v0 = 0; v0 < v1; v0++) {
        Bg_FillTilemapRect(param0->unk_00, 2, ((1 + 17 * 18) + 32 * 6) + v1 + v0, 0 + v0, 13, 1, 1, 3);
        Bg_FillTilemapRect(param0->unk_00, 2, ((1 + 17 * 18) + 32 * 6) + (12 * 3) + v1 + v0, 0 + v0, 13 + 1, 1, 1, 3);
    }
}

static void ov84_0223F2C0(UnkStruct_ov84_0223B5A0 *param0, Strbuf *param1, u16 param2)
{
    u32 v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[2], FONT_SYSTEM, param1, param2 - v0 / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void ov84_0223F2FC(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223C920 *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_FillTilemap(&param0->unk_04[2], 0);

    v0 = &param0->unk_429;
    v2 = param0->unk_404[param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08];
    v1 = param0->unk_404[param0->unk_C4->unk_04[v0->unk_00].unk_08];

    if (v0->unk_01 == 0) {
        v3 = 96 + 50 + 12 * v0->unk_03;
        ov84_0223F2C0(param0, v1, v3 - 96);
    } else {
        v3 = 96 + 50 - 12 * v0->unk_03;
        ov84_0223F2C0(param0, v1, 96 + v3);
    }

    ov84_0223F2C0(param0, v2, v3);
    Window_LoadTiles(&param0->unk_04[2]);
}

static void *ov84_0223F390(UnkStruct_ov84_0223B5A0 *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->unk_D4, 21, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

void ov84_0223F3AC(UnkStruct_ov84_0223B5A0 *param0, u8 param1, u8 param2)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F390(param0, &v0);
    if (param2 == 1) {
        v2 = param0->unk_C4->unk_04[param1].unk_08 * 32 + 16;
    } else {
        v2 = param0->unk_C4->unk_04[param1].unk_08 * 32;
    }

    Window_BlitBitmapRect(&param0->unk_04[5], v0->pRawData, v2, 0, 32 * 8, 16, param0->unk_427 + param0->unk_428 * param1, 3, 10, 10);
    Window_ScheduleCopyToVRAM(&param0->unk_04[5]);
    Heap_FreeToHeapExplicit(HEAP_ID_6, v1);
}

void ov84_0223F438(UnkStruct_ov84_0223B5A0 *param0)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;
    u8 v3;

    v1 = ov84_0223F390(param0, &v0);
    Window_FillTilemap(&param0->unk_04[5], 0);

    for (v2 = 0; v2 < param0->unk_424; v2++) {
        if (v2 == param0->unk_C4->unk_64) {
            v3 = param0->unk_C4->unk_04[v2].unk_08 * 32 + 16;
        } else {
            v3 = param0->unk_C4->unk_04[v2].unk_08 * 32;
        }

        Window_BlitBitmapRect(&param0->unk_04[5], v0->pRawData, v3, 0, 32 * 8, 16, param0->unk_427 + param0->unk_428 * v2, 3, 10, 10);
    }

    Window_ScheduleCopyToVRAM(&param0->unk_04[5]);
    Heap_FreeToHeapExplicit(HEAP_ID_6, v1);
}

static void ov84_0223F4E8(UnkStruct_ov84_0223B5A0 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetItemName(param0->unk_118, param2, ov84_0223BE5C(param0, param1, 0));
}

static void ov84_0223F508(UnkStruct_ov84_0223B5A0 *param0, u32 param1, u32 param2)
{
    StringTemplate_SetItemNamePlural(param0->unk_118, param2, ov84_0223BE5C(param0, param1, 0));
}

void ov84_0223F528(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    Strbuf *v0;

    if (param1 != 0xffff) {
        v0 = Strbuf_Init(130, HEAP_ID_6);
        Item_LoadDescription(v0, param1, 6);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 94);
    }

    Text_AddPrinterWithParamsAndColor(&param0->unk_04[1], FONT_SYSTEM, v0, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v0);
}

void ov84_0223F584(UnkStruct_ov84_0223B5A0 *param0, u16 param1)
{
    Window *v0;
    Strbuf *v1;
    u16 v2;
    u16 v3;

    v0 = &param0->unk_04[1];
    v2 = Item_MoveForTMHM(param1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 98);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 86);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 89);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 87);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 88);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v3 = MoveTable_CalcMaxPP(v2, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 90);
    StringTemplate_SetNumber(param0->unk_118, 0, v3, 2, 1, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_3F8, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_POWER);

    if (v3 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 24);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 91);
    }

    StringTemplate_SetNumber(param0->unk_118, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_3F8, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_ACCURACY);

    if (v3 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 24);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 91);
    }

    StringTemplate_SetNumber(param0->unk_118, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->unk_3F8, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void ov84_0223F7D4(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_3FC = MessageLoader_GetNewStrbuf(param0->unk_114, 38);
    param0->unk_400 = MessageLoader_GetNewStrbuf(param0->unk_114, 37);
}

void ov84_0223F800(UnkStruct_ov84_0223B5A0 *param0)
{
    Strbuf_Free(param0->unk_3FC);
    Strbuf_Free(param0->unk_400);
}

void ov84_0223F81C(UnkStruct_ov84_0223B5A0 *param0, u16 param1, u16 param2, u32 param3)
{
    Strbuf *v0;
    u32 v1;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[0], FONT_SYSTEM, param0->unk_3FC, (((17 * 8 - 2) - 6 - 1 - 6 * 3) + 6), param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->unk_04[0], FONT_SYSTEM, param0->unk_3FC, ((17 * 8 - 2) - 6 - 1 - 6 * 3), param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    }

    v0 = Strbuf_Init(10, HEAP_ID_6);

    StringTemplate_SetNumber(param0->unk_118, 0, param1, 3, 0, 1);
    StringTemplate_Format(param0->unk_118, v0, param0->unk_400);

    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&param0->unk_04[0], FONT_SYSTEM, v0, (17 * 8 - 2) - v1, param2, TEXT_SPEED_NO_TRANSFER, param3, NULL);
    Strbuf_Free(v0);
}

void ov84_0223F8D0(UnkStruct_ov84_0223B5A0 *param0, BagItem *param1, u32 param2)
{
    u16 v0 = param1->item;

    if (v0 < 420) {
        v0 = v0 - 328 + 1;
        sub_0200C648(param0->unk_110, 2, v0, 2, 2, &param0->unk_04[0], 0, param2 + 5);
        ov84_0223F81C(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
    } else {
        v0 = v0 - 420 + 1;
        sub_0200C5BC(param0->unk_110, v0, 2, 1, &param0->unk_04[0], 16, param2 + 5);
        ov84_0223F9B0(param0, param2);
    }
}

void ov84_0223F94C(UnkStruct_ov84_0223B5A0 *param0, BagItem *param1, u32 param2)
{
    sub_0200C648(param0->unk_110, 2, Item_BerryNumber(param1->item) + 1, 2, 2, &param0->unk_04[0], 0, param2 + 5);
    ov84_0223F81C(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
}

static void *ov84_0223F994(UnkStruct_ov84_0223B5A0 *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->unk_D4, 38, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

static void ov84_0223F9B0(UnkStruct_ov84_0223B5A0 *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    Window_BlitBitmapRect(&param0->unk_04[0], v0->pRawData, 40, 0, 64, 16, 0, param1, 24, 16);
    Heap_FreeToHeapExplicit(HEAP_ID_6, v1);
}

void ov84_0223F9F0(UnkStruct_ov84_0223B5A0 *param0, u32 param1)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 41);

    Window_FillRectWithColor(&param0->unk_04[0], 0, 0, param1, 17 * 8, 16);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[0], FONT_SYSTEM, v0, 0, param1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

void ov84_0223FA44(UnkStruct_ov84_0223B5A0 *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    Window_BlitBitmapRect(&param0->unk_04[0], v0->pRawData, 0, 0, 64, 16, 96, param1, 40, 16);
    Heap_FreeToHeapExplicit(HEAP_ID_6, v1);
}

void ov84_0223FA88(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_124[0] = MessageLoader_GetNewStrbuf(param0->unk_114, 0);
    param0->unk_124[1] = MessageLoader_GetNewStrbuf(param0->unk_114, 6);
    param0->unk_124[2] = MessageLoader_GetNewStrbuf(param0->unk_114, 16);
    param0->unk_124[3] = MessageLoader_GetNewStrbuf(param0->unk_114, 95);
    param0->unk_124[4] = MessageLoader_GetNewStrbuf(param0->unk_114, 96);
    param0->unk_124[5] = MessageLoader_GetNewStrbuf(param0->unk_114, 1);
    param0->unk_124[6] = MessageLoader_GetNewStrbuf(param0->unk_114, 2);
    param0->unk_124[7] = MessageLoader_GetNewStrbuf(param0->unk_114, 18);
    param0->unk_124[8] = MessageLoader_GetNewStrbuf(param0->unk_114, 3);
    param0->unk_124[9] = MessageLoader_GetNewStrbuf(param0->unk_114, 4);
    param0->unk_124[10] = MessageLoader_GetNewStrbuf(param0->unk_114, 5);
    param0->unk_124[11] = MessageLoader_GetNewStrbuf(param0->unk_114, 8);
}

void ov84_0223FB50(UnkStruct_ov84_0223B5A0 *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 12; v0++) {
        Strbuf_Free(param0->unk_124[v0]);
    }
}

void ov84_0223FB70(UnkStruct_ov84_0223B5A0 *param0, u8 *param1, u8 param2)
{
    MenuTemplate v0;
    UnkStruct_ov84_0223BE5C *v1;
    Strbuf *v2;
    Strbuf *v3;
    u16 v4;
    u16 v5;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4) {
        Window_Add(param0->unk_00, &param0->unk_B4[0], 0, 23, 23 - param2 * 2, 8, param2 * 2, 3, 823);
        v5 = 4;
    } else {
        Window_Add(param0->unk_00, &param0->unk_B4[0], 0, 23 + 1, 23 - param2 * 2, 8 - 1, param2 * 2, 3, 823);
        v5 = 3;
    }

    param0->unk_154 = StringList_New(param2, HEAP_ID_6);

    for (v4 = 0; v4 < param2; v4++) {
        StringList_AddFromStrbuf(param0->unk_154, param0->unk_124[param1[v4]], ov84_0223D84C(param1[v4]));
    }

    v0.choices = param0->unk_154;
    v0.window = &param0->unk_B4[0];
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

    param0->unk_158 = Menu_New(&v0, 8, 0, 0, HEAP_ID_6, PAD_BUTTON_B);

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
        Window_FillTilemap(&param0->unk_04[1], 0);
        ov84_0223F584(param0, param0->unk_C4->unk_66);
        Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
        ov84_02240D5C(param0, param0->unk_C4->unk_66, 1);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[v5], 1, 1024 - 9 - (18 + 12), 12);
        Window_FillTilemap(&param0->unk_04[v5], 15);

        v2 = MessageLoader_GetNewStrbuf(param0->unk_114, 42);
        v3 = Strbuf_Init((14 * 2 * 2), HEAP_ID_6);
        v1 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

        ov84_0223F4E8(param0, v1->unk_06 + v1->unk_04 - 1, 0);
        StringTemplate_Format(param0->unk_118, v3, v2);
        Text_AddPrinterWithParams(&param0->unk_04[v5], FONT_MESSAGE, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v3);
        Strbuf_Free(v2);
        Window_ScheduleCopyToVRAM(&param0->unk_04[v5]);
    }

    Window_DrawStandardFrame(&param0->unk_B4[0], 1, 1024 - 9, 14);
    Window_ScheduleCopyToVRAM(&param0->unk_B4[0]);
}

void ov84_0223FD84(UnkStruct_ov84_0223B5A0 *param0)
{
    u32 v0;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4) {
        v0 = 4;
    } else {
        v0 = 3;
    }

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 != 3) {
        Window_EraseMessageBox(&param0->unk_04[v0], 1);
        Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[v0]);
    }

    Window_EraseStandardFrame(&param0->unk_B4[0], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_B4[0]);
    Menu_Free(param0->unk_158, NULL);
    StringList_Free(param0->unk_154);
    Window_Remove(&param0->unk_B4[0]);
    Window_FillTilemap(&param0->unk_04[1], 0);
    ov84_0223F528(param0, param0->unk_C4->unk_66);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
    ov84_02240D5C(param0, 0, 0);
}

void ov84_0223FE18(UnkStruct_ov84_0223B5A0 *param0)
{
    Strbuf *v0;
    Strbuf *v1;

    Window_FillTilemap(&param0->unk_04[1], 0);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_114, 45);
    v1 = Strbuf_Init(130, HEAP_ID_6);

    ov84_0223F4E8(param0, param0->unk_47B - 1, 0);

    StringTemplate_Format(param0->unk_118, v1, v0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_04[1], FONT_SYSTEM, v1, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
}

void ov84_0223FE94(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_DrawStandardFrame(&param0->unk_04[9], 1, 1024 - 9, 14);
    ov84_0223FF44(param0);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[3], 1, 1024 - 9 - (18 + 12), 12);
    Window_FillTilemap(&param0->unk_04[3], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 52);
    v2 = Strbuf_Init(14 * 2 * 2, HEAP_ID_6);
    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    ov84_0223F4E8(param0, v0->unk_06 + v0->unk_04 - 1, 0);

    StringTemplate_Format(param0->unk_118, v2, v1);
    Text_AddPrinterWithParams(&param0->unk_04[3], FONT_MESSAGE, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&param0->unk_04[3]);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
}

void ov84_0223FF44(UnkStruct_ov84_0223B5A0 *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[9];
    Window_FillTilemap(v0, 15);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 84);

    StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_488, 3, 2, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_3F8, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_0223FFC0(UnkStruct_ov84_0223B5A0 *param0)
{
    Window_EraseMessageBox(&param0->unk_04[3], 1);
    Window_EraseStandardFrame(&param0->unk_04[9], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[3]);
    Window_ClearAndScheduleCopyToVRAM(&param0->unk_04[9]);
    Window_ScheduleCopyToVRAM(&param0->unk_04[1]);
}

void ov84_0223FFF0(UnkStruct_ov84_0223B5A0 *param0)
{
    UnkStruct_ov84_0223BE5C *v0;
    Strbuf *v1;
    u16 v2;

    Window_DrawMessageBoxWithScrollCursor(&param0->unk_04[6], 1, 1024 - 9 - (18 + 12), 12);
    Window_FillTilemap(&param0->unk_04[6], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 54);
    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    if (param0->unk_488 == 1) {
        ov84_0223F4E8(param0, v0->unk_06 + v0->unk_04 - 1, 0);
    } else {
        ov84_0223F508(param0, v0->unk_06 + v0->unk_04 - 1, 0);
    }

    StringTemplate_SetNumber(param0->unk_118, 1, param0->unk_488, 3, 0, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Strbuf_Free(v1);

    param0->unk_426 = ov84_022400A0(param0);
}

u8 ov84_022400A0(UnkStruct_ov84_0223B5A0 *param0)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    v0 = Text_AddPrinterWithParams(&param0->unk_04[6], FONT_MESSAGE, param0->unk_3F8, 0, 0, Options_TextFrameDelay(param0->options), ov84_022400E0);

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

void ov84_02240120(UnkStruct_ov84_0223B5A0 *param0)
{
    param0->unk_158 = Menu_MakeYesNoChoice(param0->unk_00, &Unk_ov84_02241150, 1024 - 9, 14, 6);
}

void ov84_02240148(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[7];

    if (param1 == 0) {
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);
    }

    Window_FillTilemap(v0, 15);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 80);

    StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_488, 2, 2, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_3F8, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 81);

    StringTemplate_SetNumber(param0->unk_118, 0, param0->unk_48C * param0->unk_488, 6, 1, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_3F8, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_3F8, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_02240248(UnkStruct_ov84_0223B5A0 *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[8];

    if (param1 == 0) {
        Window_FillTilemap(v0, 15);
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

        v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 78);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);
    } else {
        Window_FillRectWithColor(v0, 15, 0, 16, (10 * 8), 16);
    }

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 79);

    StringTemplate_SetNumber(param0->unk_118, 0, TrainerInfo_Money(param0->unk_CC), 6, 1, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_3F8, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_3F8, (10 * 8) - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_02240328(UnkStruct_ov84_0223B5A0 *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->unk_04[10];
    Window_FillTilemap(v0, 15);
    Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 108);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_114, 109);
    StringTemplate_SetNumber(param0->unk_118, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(param0->unk_C4->saveData)), 3, 1, 1);
    StringTemplate_Format(param0->unk_118, param0->unk_3F8, v1);
    Strbuf_Free(v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_3F8, 0);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->unk_3F8, 11 * 8 - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
}
