#include "overlay088/ov88_0223E9C4.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "render_window.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "text.h"

static void TradeRoom_PlayCursorMoveSound(ListMenu *listMenu, u32 unused, u8 onInit);

enum TradeRoomYesNoStep {
    YES_NO_STEP_CREATE_MENU = 0,
    YES_NO_STEP_POLL_INPUT = 1,
};

static const u16 sTradePreviewDetailWindowLayouts[][5] = {
    { 4, 1, 9, 2, 1 },
    { 20, 1, 9, 2, 19 },
    { 4, 3, 8, 2, 37 },
    { 20, 3, 8, 2, 53 },
    { 2, 19, 7, 2, 69 },
    { 18, 19, 7, 2, 83 },
    { 2, 21, 12, 2, 97 },
    { 18, 21, 12, 2, 121 }
};

static const u16 sPartyGridWindowPositions[][2] = {
    { 0, 7 },
    { 8, 7 },
    { 0, 12 },
    { 8, 12 },
    { 0, 17 },
    { 8, 17 },
    { 16, 7 },
    { 24, 7 },
    { 16, 12 },
    { 24, 12 },
    { 16, 17 },
    { 24, 17 },
    { 4, 10 },
    { 20, 10 }
};

void TradeRoom_InitWindows(BgConfig *bgConfig, Window *windows, Options *options)
{
    Window_Add(bgConfig, &windows[0], 1, 2, 1, 10, 2, 8, 1);
    Window_FillTilemap(&windows[0], 0);

    Window_Add(bgConfig, &windows[1], 1, 20, 1, 10, 2, 8, (1 + (10 * 2)));
    Window_FillTilemap(&windows[1], 0);

    Window_Add(bgConfig, &windows[6], 1, 26, 21, 5, 2, 8, ((1 + (10 * 2)) + (10 * 2)));
    Window_FillTilemap(&windows[6], 0);

    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, (512 - (9 + (18 + 12))), 10, Options_Frame(options), HEAP_ID_TRADE_ROOM);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, (512 - 9), 11, 0, HEAP_ID_TRADE_ROOM);

    Window_Add(bgConfig, &windows[21], 0, 2, 21, 20, 2, 13, 1);
    Window_FillTilemap(&windows[21], 0);
    Window_Add(bgConfig, &windows[22], 0, 2, 19, 14, 4, 13, (20 * 2));
    Window_FillTilemap(&windows[22], 0);
    Window_Add(bgConfig, &windows[23], 0, 2, 19, 27, 4, 13, (14 * 4));
    Window_FillTilemap(&windows[23], 0);

    Window_Add(bgConfig, &windows[24], 0, 20, 17, 11, 6, 13, ((14 * 4) + (27 * 4)));
    Window_FillTilemap(&windows[24], 0);
    Window_Add(bgConfig, &windows[25], 0, 20, 19, 11, 4, 13, (((14 * 4) + (27 * 4)) + (11 * 6)));
    Window_FillTilemap(&windows[25], 0);

    for (int i = 0; i < 14; i++) {
        Window_Add(bgConfig, &windows[7 + i], 1, sPartyGridWindowPositions[i][0], sPartyGridWindowPositions[i][1], 8, 2, 8, (((1 + (10 * 2)) + (10 * 2)) + (5 * 2)) + i * (8 * 2));
        Window_FillTilemap(&windows[7 + i], 0);
    }

    for (int i = 0; i < 8; i++) {
        Window_Add(bgConfig, &windows[26 + i], 4, sTradePreviewDetailWindowLayouts[i][0], sTradePreviewDetailWindowLayouts[i][1], sTradePreviewDetailWindowLayouts[i][2], sTradePreviewDetailWindowLayouts[i][3], 8, sTradePreviewDetailWindowLayouts[i][4]);
        Window_FillTilemap(&windows[26 + i], 0);
    }
}

void TradeRoom_FreeWindows(Window *window)
{
    for (int i = 0; i < 14; i++) {
        Window_Remove(&window[7 + i]);
    }

    for (int i = 0; i < 8; i++) {
        Window_Remove(&window[26 + i]);
    }

    Window_Remove(&window[0]);
    Window_Remove(&window[1]);
    Window_Remove(&window[6]);

    Window_Remove(&window[21]);
    Window_Remove(&window[22]);
    Window_Remove(&window[23]);
    Window_Remove(&window[24]);
    Window_Remove(&window[25]);
}

void TradeRoom_PrintStringInWindow(Window *window, String *str, int unused, u32 textSpeed, int xOrCenter, int yOffset)
{
    int xOffset = 0;

    if (xOrCenter == 1) {
        int strWidth;

        strWidth = Font_CalcStringWidth(FONT_SYSTEM, str, 0);
        xOffset = ((window->width * 8) - strWidth) / 2;
    } else {
        xOffset = xOrCenter;
    }

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, str, xOffset, yOffset, textSpeed, TEXT_COLOR(11, 12, 0), NULL);
}

int TradeRoom_PrintMessage(Window *window, int entryId, int fontId, MessageLoader *msgLoader, StringTemplate *strTemplate)
{
    String *str;
    int unused;

    str = MessageUtil_ExpandedString(strTemplate, msgLoader, entryId, HEAP_ID_TRADE_ROOM);

    if (fontId == FONT_MESSAGE) {
        Window_DrawMessageBoxWithScrollCursor(window, 0, (512 - (9 + (18 + 12))), 10);
    } else {
        Window_DrawStandardFrame(window, 0, (512 - 9), 11);
    }

    Window_FillTilemap(window, 15);
    unused = Text_AddPrinterWithParamsAndColor(window, fontId, str, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    String_Free(str);

    return unused;
}

static const WindowTemplate yesNoWindowTemplate = {
    0,
    25,
    13,
    6,
    4,
    3,
    274
};

u32 TradeRoom_ProcessYesNoChoice(BgConfig *bgConfig, Menu **menu, int *step)
{
    u32 input = 0xffffffff;

    switch (*step) {
    case YES_NO_STEP_CREATE_MENU:
        *menu = Menu_MakeYesNoChoice(bgConfig, &yesNoWindowTemplate, (512 - 9), 11, HEAP_ID_TRADE_ROOM);
        (*step)++;
        break;
    case YES_NO_STEP_POLL_INPUT:
        input = Menu_ProcessInputAndHandleExit(*menu, HEAP_ID_TRADE_ROOM);

        if (input != 0xffffffff) {
            (*step) = YES_NO_STEP_CREATE_MENU;
        }
    }

    return input;
}

void TradeRoom_DrawActionMenuFrame(Window *window)
{
    Window_DrawStandardFrame(window, 0, (512 - 9), 11);
}

static const ListMenuTemplate friendListMenuTemplate = {
    NULL,
    NULL,
    NULL,
    NULL,
    32,
    32,
    0,
    8,
    0,
    0,
    1,
    15,
    2,
    0,
    16,
    1,
    0,
    0,
    NULL
};

ListMenu *TradeRoom_NewFriendListMenu(StringList *strList, int friendCount, Window *window, BgConfig *bgConfig)
{
    ListMenu *listMenu;
    ListMenuTemplate lmTemplate;
    int maxDisplayHeight = 5;

    Window_Add(bgConfig, window, 0, 19, 1, 12, maxDisplayHeight * 2, 13, (512 - (9 + (18 + 12))) - (10 * (maxDisplayHeight + 2) * 2));
    Window_DrawStandardFrame(window, 0, (512 - 9), 11);

    lmTemplate = friendListMenuTemplate;
    lmTemplate.count = friendCount + 1;
    lmTemplate.maxDisplay = maxDisplayHeight;
    lmTemplate.choices = strList;
    lmTemplate.window = window;
    lmTemplate.cursorCallback = TradeRoom_PlayCursorMoveSound;
    listMenu = ListMenu_New(&lmTemplate, 0, 0, HEAP_ID_TRADE_ROOM);

    return listMenu;
}

static void TradeRoom_PlayCursorMoveSound(ListMenu *listMenu, u32 unused, u8 onInit)
{
    if (onInit == 0) {
        Sound_PlayEffect(SE_CONFIRM_sseq_3);
    }
}
