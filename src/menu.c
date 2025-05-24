#include "menu.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "colored_arrow.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "render_window.h"
#include "sound_playback.h"
#include "string_list.h"
#include "system.h"
#include "text.h"

#include "res/text/bank/common_strings_2.h"

static BOOL TryMovingCursorAndPlaySound(Menu *menu, u8 direction, u16 sound);
static u8 TryMovingCursor(Menu *menu, u8 direction);
static u8 CalcMaxEntryWidth(Menu *menu);
static void DrawWholeMenu(Menu *menu);
static void DrawCursor(Menu *menu);
static void CalcCursorDrawCoords(Menu *menu, u8 *outX, u8 *outY, u8 cursorPos);

Menu *Menu_New(const MenuTemplate *template, u8 xOffset, u8 yOffset, u8 cursorStart, u8 heapID, u32 cancelKeys)
{
    Menu *menu = Heap_AllocFromHeap(heapID, sizeof(Menu));

    menu->template = *template;
    menu->cursor = ColoredArrow_New(heapID);
    menu->cancelKeys = cancelKeys;
    menu->cursorPos = cursorStart;
    menu->width = CalcMaxEntryWidth(menu);
    menu->heapID = heapID;
    menu->xOffset = xOffset;
    menu->yOffset = yOffset;
    menu->letterWidth = Font_GetAttribute(template->fontID, FONTATTR_MAX_LETTER_WIDTH) + Font_GetAttribute(template->fontID, FONTATTR_LETTER_SPACING);
    menu->lineHeight = Font_GetAttribute(template->fontID, FONTATTR_MAX_LETTER_HEIGHT) + Font_GetAttribute(template->fontID, FONTATTR_LINE_SPACING);

    DrawWholeMenu(menu);
    DrawCursor(menu);

    return menu;
}

Menu *Menu_NewAndCopyToVRAM(const MenuTemplate *template, u8 xOffset, u8 yOffset, u8 cursorStart, u8 heapID, u32 cancelKeys)
{
    Menu *menu = Menu_New(template, xOffset, yOffset, cursorStart, heapID, cancelKeys);
    Window_CopyToVRAM(menu->template.window);

    return menu;
}

Menu *Menu_NewSimple(const MenuTemplate *template, u8 cursorStart, u8 heapID)
{
    return Menu_NewAndCopyToVRAM(template, Font_GetAttribute(template->fontID, FONTATTR_MAX_LETTER_WIDTH), 0, cursorStart, heapID, PAD_BUTTON_B);
}

void Menu_Free(Menu *menu, u8 *outCursorPos)
{
    if (outCursorPos != NULL) {
        *outCursorPos = menu->cursorPos;
    }

    ColoredArrow_Free(menu->cursor);
    Heap_FreeToHeapExplicit(menu->heapID, menu);
}

u32 Menu_ProcessInput(Menu *menu)
{
    menu->lastAction = MENU_ACTION_NONE;

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return menu->template.choices[menu->cursorPos].index;
    }

    if (JOY_NEW(menu->cancelKeys)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return MENU_CANCELED;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_UP, SEQ_SE_CONFIRM) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_UP;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_DOWN, SEQ_SE_CONFIRM) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_DOWN;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_LEFT)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_LEFT, SEQ_SE_CONFIRM) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_LEFT;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_RIGHT, SEQ_SE_CONFIRM) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_RIGHT;
        }

        return MENU_NOTHING_CHOSEN;
    }

    return MENU_NOTHING_CHOSEN;
}

u32 Menu_ProcessInputWithSound(Menu *menu, u16 sdatID)
{
    menu->lastAction = MENU_ACTION_NONE;

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return menu->template.choices[menu->cursorPos].index;
    }

    if (JOY_NEW(menu->cancelKeys)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return MENU_CANCELED;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_UP, sdatID) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_UP;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_DOWN, sdatID) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_DOWN;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_LEFT)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_LEFT, sdatID) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_LEFT;
        }

        return MENU_NOTHING_CHOSEN;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        if (TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_RIGHT, sdatID) == TRUE) {
            menu->lastAction = MENU_ACTION_MOVE_RIGHT;
        }

        return MENU_NOTHING_CHOSEN;
    }

    return MENU_NOTHING_CHOSEN;
}

u32 Menu_ProcessExternalInput(Menu *menu, u8 input)
{
    switch (input) {
    case MENU_INPUT_CONFIRM:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return menu->template.choices[menu->cursorPos].index;

    case MENU_INPUT_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return 0xfffffffe;

    case MENU_INPUT_MOVE_UP:
        TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_UP, SEQ_SE_CONFIRM);
        return MENU_NOTHING_CHOSEN;

    case MENU_INPUT_MOVE_DOWN:
        TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_DOWN, SEQ_SE_CONFIRM);
        return MENU_NOTHING_CHOSEN;

    case MENU_INPUT_MOVE_LEFT:
        TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_LEFT, SEQ_SE_CONFIRM);
        return MENU_NOTHING_CHOSEN;

    case MENU_INPUT_MOVE_RIGHT:
        TryMovingCursorAndPlaySound(menu, SCROLL_DIRECTION_RIGHT, SEQ_SE_CONFIRM);
        return MENU_NOTHING_CHOSEN;
    }

    return MENU_NOTHING_CHOSEN;
}

u8 Menu_GetCursorPos(Menu *menu)
{
    return menu->cursorPos;
}

u8 Menu_GetLastAction(Menu *menu)
{
    return menu->lastAction;
}

static BOOL TryMovingCursorAndPlaySound(Menu *menu, u8 direction, u16 sound)
{
    u8 oldCursorPos = menu->cursorPos;
    if (TryMovingCursor(menu, direction) == FALSE) {
        return FALSE;
    }

    u8 bgColor = Font_GetAttribute(menu->template.fontID, FONTATTR_BG_COLOR);

    u8 x, y;
    CalcCursorDrawCoords(menu, &x, &y, oldCursorPos);
    Window_FillRectWithColor(menu->template.window, bgColor, x, y, 8, menu->lineHeight);

    DrawCursor(menu);
    Sound_PlayEffect(sound);

    return TRUE;
}

static u8 TryMovingCursor(Menu *menu, u8 direction)
{
    s8 newCursorPos;

    if (direction == SCROLL_DIRECTION_UP) {
        if (menu->template.ySize <= 1) {
            return FALSE;
        }

        if (menu->cursorPos % menu->template.ySize == 0) {
            if (menu->template.loopAround == FALSE) {
                return FALSE;
            }

            newCursorPos = menu->cursorPos + (menu->template.ySize - 1);
        } else {
            newCursorPos = menu->cursorPos - 1;
        }
    } else if (direction == SCROLL_DIRECTION_DOWN) {
        if (menu->template.ySize <= 1) {
            return FALSE;
        }

        if (menu->cursorPos % menu->template.ySize == menu->template.ySize - 1) {
            if (menu->template.loopAround == FALSE) {
                return FALSE;
            }

            newCursorPos = menu->cursorPos - (menu->template.ySize - 1);
        } else {
            newCursorPos = menu->cursorPos + 1;
        }
    } else if (direction == SCROLL_DIRECTION_LEFT) {
        if (menu->template.xSize <= 1) {
            return FALSE;
        }

        if (menu->cursorPos < menu->template.ySize) {
            if (menu->template.loopAround == FALSE) {
                return FALSE;
            }

            newCursorPos = menu->cursorPos + (menu->template.ySize * (menu->template.xSize - 1));
        } else {
            newCursorPos = menu->cursorPos - menu->template.ySize;
        }
    } else {
        if (menu->template.xSize <= 1) {
            return FALSE;
        }

        if (menu->cursorPos >= menu->template.ySize * (menu->template.xSize - 1)) {
            if (menu->template.loopAround == FALSE) {
                return FALSE;
            }

            newCursorPos = menu->cursorPos % menu->template.ySize;
        } else {
            newCursorPos = menu->cursorPos + menu->template.ySize;
        }
    }

    if (menu->template.choices[newCursorPos].index == MENU_DUMMY) {
        return FALSE;
    }

    menu->cursorPos = newCursorPos;
    return TRUE;
}

static u8 CalcMaxEntryWidth(Menu *menu)
{
    u8 maxWidth = 0;

    u8 width;
    for (u8 i = 0; i < menu->template.xSize * menu->template.ySize; i++) {
        width = Font_CalcStrbufWidth(menu->template.fontID, menu->template.choices[i].entry, 0);

        if (maxWidth < width) {
            maxWidth = width;
        }
    }

    return maxWidth;
}

static void DrawWholeMenu(Menu *menu)
{
    const void *entry;
    u8 x, y, dx;
    u8 i, j;

    Window_FillTilemap(menu->template.window, Font_GetAttribute(menu->template.fontID, FONTATTR_BG_COLOR));

    x = menu->xOffset;
    dx = menu->width + menu->letterWidth * 2;

    for (i = 0; i < menu->template.xSize; i++) {
        for (j = 0; j < menu->template.ySize; j++) {
            entry = menu->template.choices[i * menu->template.ySize + j].entry;
            y = (menu->lineHeight + menu->template.lineSpacing) * j + menu->yOffset;

            Text_AddPrinterWithParams(menu->template.window, menu->template.fontID, entry, x, y, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        x += dx;
    }
}

static void DrawCursor(Menu *menu)
{
    if (menu->template.suppressCursor == TRUE) {
        return;
    }

    u8 x, y;
    CalcCursorDrawCoords(menu, &x, &y, menu->cursorPos);
    ColoredArrow_Print(menu->cursor, menu->template.window, x, y);
}

static void CalcCursorDrawCoords(Menu *menu, u8 *outX, u8 *outY, u8 cursorPos)
{
    *outX = (cursorPos / menu->template.ySize) * (menu->width + menu->letterWidth * 2);
    *outY = (cursorPos % menu->template.ySize) * (menu->lineHeight + menu->template.lineSpacing) + menu->yOffset;
}

Menu *Menu_MakeYesNoChoiceWithCursorAt(BgConfig *bgConfig, const WindowTemplate *winTemplate, u16 borderTileStart, u8 borderPalette, u8 cursorStart, u32 heapID)
{
    MenuTemplate menuTemplate;
    MessageLoader *msgLoader;
    StringList *choices;

    msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_COMMON_STRINGS_2, heapID);
    choices = StringList_New(2, heapID);

    StringList_AddFromMessageBank(choices, msgLoader, pl_msg_00000361_00041, 0);
    StringList_AddFromMessageBank(choices, msgLoader, pl_msg_00000361_00042, MENU_CANCELED);
    MessageLoader_Free(msgLoader);

    menuTemplate.choices = choices;
    menuTemplate.window = Window_New(heapID, 1);
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 2;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = FALSE;

    Window_AddFromTemplate(bgConfig, menuTemplate.window, winTemplate);
    Window_DrawStandardFrame(menuTemplate.window, 1, borderTileStart, borderPalette);

    return Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, cursorStart, heapID, PAD_BUTTON_B);
}

Menu *Menu_MakeYesNoChoice(BgConfig *bgConfig, const WindowTemplate *winTemplate, u16 borderTileStart, u8 borderPalette, u32 heapID)
{
    return Menu_MakeYesNoChoiceWithCursorAt(bgConfig, winTemplate, borderTileStart, borderPalette, 0, heapID);
}

u32 Menu_ProcessInputAndHandleExit(Menu *menu, enum HeapId heapID)
{
    u32 result = Menu_ProcessInput(menu);
    if (result != MENU_NOTHING_CHOSEN) {
        Menu_DestroyForExit(menu, heapID);
    }

    return result;
}

u32 Menu_ProcessExternalInputAndHandleExit(Menu *menu, u8 input, u32 heapID)
{
    u32 result = Menu_ProcessExternalInput(menu, input);
    if (result != MENU_NOTHING_CHOSEN) {
        Menu_DestroyForExit(menu, heapID);
    }

    return result;
}

void Menu_DestroyForExit(Menu *menu, u32 heapID)
{
    Window_EraseStandardFrame(menu->template.window, 0);
    Window_Remove(menu->template.window);
    Heap_FreeToHeapExplicit(heapID, menu->template.window);
    StringList_Free(menu->template.choices);
    Menu_Free(menu, NULL);
}

static const u8 sArrowCursorBitmap[] = {
    0xff,
    0xff,
    0xff,
    0x0,
    0xff,
    0xff,
    0xff,
    0x0,
    0x21,
    0xff,
    0xff,
    0x0,
    0x11,
    0xf2,
    0xff,
    0x0,
    0x11,
    0x21,
    0xff,
    0x0,
    0x11,
    0x11,
    0xf2,
    0x0,
    0x11,
    0x11,
    0x21,
    0x0,
    0x11,
    0x11,
    0x22,
    0x0,
    0x11,
    0x21,
    0xf2,
    0x0,
    0x11,
    0x22,
    0xff,
    0x0,
    0x21,
    0xf2,
    0xff,
    0x0,
    0x22,
    0xff,
    0xff,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

void Window_DrawMenuCursor(Window *window, u32 x, u32 y)
{
    Window_BlitBitmapRect(window, (void *)sArrowCursorBitmap, 0, 0, 8, 16, x, y, 8, 16);
}
