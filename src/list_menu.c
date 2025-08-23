#include "list_menu.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "bg_window.h"
#include "colored_arrow.h"
#include "font.h"
#include "heap.h"
#include "string_list.h"
#include "system.h"
#include "text.h"

static void PrintEntry(ListMenu *menu, void *strbuf, u8 xOffset, u8 yOffset);
static void PrintEntries(ListMenu *menu, u16 startIndex, u16 lineOffset, u16 lineCount);
static void PrintCursor(ListMenu *menu);
static void EraseCursor(ListMenu *menu, u16 atLine);
static u8 UpdateOffsetsForScroll(ListMenu *menu, u8 movingDown);
static void ScrollList(ListMenu *menu, u8 lineCount, u8 isUpward);
static u8 UpdateSelectedRow(ListMenu *menu, u8 updateCursor, u8 scrollCount, u8 movingDown);
static void InvokeCursorCallback(ListMenu *menu, u8 onInit);

ListMenu *ListMenu_New(const ListMenuTemplate *template, u16 startListPos, u16 startCursorPos, u8 heapID)
{
    ListMenu *menu = Heap_AllocFromHeap(heapID, sizeof(ListMenu));

    menu->template = *template;
    menu->cursor = ColoredArrow_New(heapID);
    menu->listPos = startListPos;
    menu->cursorPos = startCursorPos;
    menu->dummy2C = 0;
    menu->dummy2D = 0;
    menu->dummy2E = 0xFF;
    menu->lastAction = 0;
    menu->heapID = heapID;

    menu->altFont.textColorFg = menu->template.textColorFg;
    menu->altFont.textColorBg = menu->template.textColorBg;
    menu->altFont.textColorShadow = menu->template.textColorShadow;
    menu->altFont.letterSpacing = menu->template.letterSpacing;
    menu->altFont.fontID = menu->template.fontID;
    menu->altFont.prefer = 0;

    if (menu->template.count < menu->template.maxDisplay) {
        menu->template.maxDisplay = menu->template.count;
    }

    ColoredArrow_SetColor(menu->cursor, TEXT_COLOR(menu->template.textColorFg, menu->template.textColorShadow, menu->template.textColorBg));
    Window_FillTilemap(menu->template.window, menu->template.textColorBg);
    PrintEntries(menu, menu->listPos, 0, menu->template.maxDisplay);
    PrintCursor(menu);
    InvokeCursorCallback(menu, TRUE);
    Window_CopyToVRAM(template->window);

    return menu;
}

u32 ListMenu_ProcessInput(ListMenu *menu)
{
    menu->lastAction = LIST_MENU_ACTION_NONE;

    if (JOY_NEW(PAD_BUTTON_A)) {
        return menu->template.choices[menu->listPos + menu->cursorPos].index;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        return LIST_CANCEL;
    }

    if (JOY_REPEAT(PAD_KEY_UP)) {
        if (UpdateSelectedRow(menu, TRUE, 1, FALSE) == 0) {
            menu->lastAction = LIST_MENU_ACTION_MOVE_UP;
        }

        return LIST_NOTHING_CHOSEN;
    }

    if (JOY_REPEAT(PAD_KEY_DOWN)) {
        if (UpdateSelectedRow(menu, TRUE, 1, TRUE) == 0) {
            menu->lastAction = LIST_MENU_ACTION_MOVE_DOWN;
        }

        return LIST_NOTHING_CHOSEN;
    }

    u16 pageUp, pageDown;
    switch (menu->template.pagerMode) {
    default:
    case PAGER_MODE_NONE:
        pageUp = FALSE;
        pageDown = FALSE;
        break;

    case PAGER_MODE_LEFT_RIGHT_PAD:
        pageUp = JOY_REPEAT(PAD_KEY_LEFT);
        pageDown = JOY_REPEAT(PAD_KEY_RIGHT);
        break;

    case PAGER_MODE_SHOULDER_BUTTONS:
        pageUp = JOY_REPEAT(PAD_BUTTON_L);
        pageDown = JOY_REPEAT(PAD_BUTTON_R);
        break;
    }

    if (pageUp) {
        if (UpdateSelectedRow(menu, TRUE, menu->template.maxDisplay, FALSE) == 0) {
            menu->lastAction = LIST_MENU_ACTION_PAGE_UP;
        }

        return LIST_NOTHING_CHOSEN;
    }

    if (pageDown) {
        if (UpdateSelectedRow(menu, TRUE, menu->template.maxDisplay, TRUE) == 0) {
            menu->lastAction = LIST_MENU_ACTION_PAGE_DOWN;
        }

        return LIST_NOTHING_CHOSEN;
    }

    return LIST_NOTHING_CHOSEN;
}

void ListMenu_Free(ListMenu *menu, u16 *outListPos, u16 *outCursorPos)
{
    if (outListPos != NULL) {
        *outListPos = menu->listPos;
    }

    if (outCursorPos != NULL) {
        *outCursorPos = menu->cursorPos;
    }

    ColoredArrow_Free(menu->cursor);
    Heap_FreeExplicit(menu->heapID, menu);
}

void ListMenu_Draw(ListMenu *menu)
{
    Window_FillTilemap(menu->template.window, menu->template.textColorBg);
    PrintEntries(menu, menu->listPos, 0, menu->template.maxDisplay);
    PrintCursor(menu);
    Window_CopyToVRAM(menu->template.window);
}

void ListMenu_SetTextColors(ListMenu *menu, u8 fg, u8 bg, u8 shadow)
{
    menu->template.textColorFg = fg;
    menu->template.textColorBg = bg;
    menu->template.textColorShadow = shadow;
}

u32 ListMenu_TestInput(ListMenu *menu, ListMenuTemplate *template, u16 listPos, u16 cursorPos, u16 updateCursor, u16 input, u16 *outListPos, u16 *outCursorPos)
{
    if (template) {
        menu->template = *template;
    }

    menu->listPos = listPos;
    menu->cursorPos = cursorPos;
    menu->dummy2C = 0;
    menu->dummy2D = 0;

    if (input == PAD_KEY_UP) {
        UpdateSelectedRow(menu, updateCursor, 1, 0);
    } else if (input == PAD_KEY_DOWN) {
        UpdateSelectedRow(menu, updateCursor, 1, 1);
    }

    if (outListPos != NULL) {
        *outListPos = menu->listPos;
    }

    if (outCursorPos != NULL) {
        *outCursorPos = menu->cursorPos;
    }

    return LIST_NOTHING_CHOSEN;
}

void ListMenu_SetAltTextColors(ListMenu *menu, u8 fg, u8 bg, u8 shadow)
{
    menu->altFont.textColorFg = fg;
    menu->altFont.textColorBg = bg;
    menu->altFont.textColorShadow = shadow;
    menu->altFont.prefer = TRUE;
}

void ListMenu_CalcTrueCursorPos(ListMenu *menu, u16 *outPos)
{
    *outPos = menu->listPos + menu->cursorPos;
}

void ListMenu_GetListAndCursorPos(ListMenu *menu, u16 *outListPos, u16 *outCursorPos)
{
    if (outListPos != NULL) {
        *outListPos = menu->listPos;
    }

    if (outCursorPos != NULL) {
        *outCursorPos = menu->cursorPos;
    }
}

u8 ListMenu_GetLastAction(ListMenu *menu)
{
    return menu->lastAction;
}

u32 ListMenu_GetIndexOfChoice(ListMenu *menu, u16 choice)
{
    return menu->template.choices[choice].index;
}

u32 ListMenu_GetAttribute(ListMenu *menu, u8 attribute)
{
    u32 result;

    switch (attribute) {
    case LIST_MENU_CURSOR_CALLBACK:
        result = (u32)menu->template.cursorCallback;
        break;

    case LIST_MENU_PRINT_CALLBACK:
        result = (u32)menu->template.printCallback;
        break;

    case LIST_MENU_COUNT:
        result = menu->template.count;
        break;

    case LIST_MENU_MAX_DISPLAY:
        result = menu->template.maxDisplay;
        break;

    case LIST_MENU_HEADER_X_OFFSET:
        result = menu->template.headerXOffset;
        break;

    case LIST_MENU_TEXT_X_OFFSET:
        result = menu->template.textXOffset;
        break;

    case LIST_MENU_CURSOR_X_OFFSET:
        result = menu->template.cursorXOffset;
        break;

    case LIST_MENU_Y_OFFSET:
        result = menu->template.yOffset;
        break;

    case LIST_MENU_LINE_HEIGHT:
        result = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;
        break;

    case LIST_MENU_TEXT_COLOR_FG:
        result = menu->template.textColorFg;
        break;

    case LIST_MENU_TEXT_COLOR_BG:
        result = menu->template.textColorBg;
        break;

    case LIST_MENU_TEXT_COLOR_SHADOW:
        result = menu->template.textColorShadow;
        break;

    case LIST_MENU_LETTER_SPACING:
        result = menu->template.letterSpacing;
        break;

    case LIST_MENU_LINE_SPACING:
        result = menu->template.lineSpacing;
        break;

    case LIST_MENU_PAGER_MODE:
        result = menu->template.pagerMode;
        break;

    case LIST_MENU_FONT_ID:
        result = menu->template.fontID;
        break;

    case LIST_MENU_CURSOR_TYPE:
        result = menu->template.cursorType;
        break;

    case LIST_MENU_WINDOW:
        result = (u32)menu->template.window;
        break;

    case LIST_MENU_PARENT:
        result = (u32)menu->template.parent;
        break;

    default:
        result = LIST_NOTHING_CHOSEN;
    }

    return result;
}

void ListMenu_SetChoices(ListMenu *menu, StringList *choices)
{
    menu->template.choices = choices;
}

static void PrintEntry(ListMenu *menu, void *strbuf, u8 xOffset, u8 yOffset)
{
    if (strbuf == NULL) {
        return;
    }

    if (menu->altFont.prefer) {
        Text_AddPrinterWithParamsColorAndSpacing(menu->template.window,
            menu->altFont.fontID,
            strbuf,
            xOffset,
            yOffset,
            TEXT_SPEED_NO_TRANSFER,
            TEXT_COLOR(menu->altFont.textColorFg, menu->altFont.textColorShadow, menu->altFont.textColorBg),
            menu->altFont.letterSpacing,
            0,
            NULL);
    } else {
        Text_AddPrinterWithParamsColorAndSpacing(menu->template.window,
            menu->template.fontID,
            strbuf,
            xOffset,
            yOffset,
            TEXT_SPEED_NO_TRANSFER,
            TEXT_COLOR(menu->template.textColorFg, menu->template.textColorShadow, menu->template.textColorBg),
            menu->template.letterSpacing,
            0,
            NULL);
    }
}

static void PrintEntries(ListMenu *menu, u16 startIndex, u16 lineOffset, u16 lineCount)
{
    u8 lineHeight = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;

    for (int line = 0; line < lineCount; line++) {
        u8 xOffset;
        if (menu->template.choices[startIndex].index != LIST_HEADER) {
            xOffset = menu->template.textXOffset;
        } else {
            xOffset = menu->template.headerXOffset;
        }

        u8 yOffset = ((line + lineOffset) * lineHeight) + menu->template.yOffset;

        if (menu->template.printCallback != NULL) {
            menu->template.printCallback(menu, menu->template.choices[startIndex].index, yOffset);
        }

        PrintEntry(menu, (void *)menu->template.choices[startIndex].entry, xOffset, yOffset);
        startIndex++;
    }
}

static void PrintCursor(ListMenu *menu)
{
    u8 lineHeight = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;
    u8 x = menu->template.cursorXOffset;
    u8 y = (menu->cursorPos * lineHeight) + menu->template.yOffset;

    // This does not match as a basic if-check.
    switch (menu->template.cursorType) {
    case 0:
        ColoredArrow_Print(menu->cursor, menu->template.window, x, y);
        break;

    case 1:
    case 2:
    case 3:
        break;
    }
}

static void EraseCursor(ListMenu *menu, u16 atLine)
{
    u8 lineHeight;
    switch (menu->template.cursorType) {
    case 0:
        lineHeight = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;
        Window_FillRectWithColor(menu->template.window,
            menu->template.textColorBg,
            menu->template.cursorXOffset,
            atLine * lineHeight + menu->template.yOffset,
            8,
            16);
        break;

    case 1:
    case 2:
    case 3:
        break;
    }
}

static u8 UpdateOffsetsForScroll(ListMenu *menu, u8 movingDown)
{
    u16 listPos, cursorPos, newListPos;
    cursorPos = menu->cursorPos;
    listPos = menu->listPos;

    if (!movingDown) {
        if (menu->template.maxDisplay == 1) {
            newListPos = 0;
        } else {
            newListPos = menu->template.maxDisplay - ((menu->template.maxDisplay / 2) + (menu->template.maxDisplay % 2)) - 1;
        }

        if (listPos == 0) {
            while (cursorPos > 0) {
                cursorPos--;
                if (menu->template.choices[listPos + cursorPos].index != LIST_HEADER) {
                    menu->cursorPos = cursorPos;
                    return 1;
                }
            }

            return 0;
        }

        while (cursorPos > newListPos) {
            cursorPos--;
            if (menu->template.choices[listPos + cursorPos].index != LIST_HEADER) {
                menu->cursorPos = cursorPos;
                return 1;
            }
        }

        listPos--;

        menu->cursorPos = newListPos;
        menu->listPos = listPos;
    } else {
        if (menu->template.maxDisplay == 1) {
            newListPos = 0;
        } else {
            newListPos = (u16)((menu->template.maxDisplay / 2) + (menu->template.maxDisplay % 2));
        }

        if (listPos == (menu->template.count - menu->template.maxDisplay)) {
            while (cursorPos < (menu->template.maxDisplay - 1)) {
                cursorPos++;

                if (menu->template.choices[listPos + cursorPos].index != LIST_HEADER) {
                    menu->cursorPos = cursorPos;
                    return 1;
                }
            }

            return 0;
        }

        while (cursorPos < newListPos) {
            cursorPos++;

            if (menu->template.choices[listPos + cursorPos].index != LIST_HEADER) {
                menu->cursorPos = cursorPos;
                return 1;
            }
        }

        listPos++;

        menu->cursorPos = newListPos;
        menu->listPos = listPos;
    }

    return 2;
}

static void ScrollList(ListMenu *menu, u8 lineCount, u8 movingDown)
{
    if (lineCount >= menu->template.maxDisplay) {
        Window_FillTilemap(menu->template.window, menu->template.textColorBg);
        PrintEntries(menu, menu->listPos, 0, menu->template.maxDisplay);
        return;
    }

    u8 lineHeight = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;

    if (!movingDown) {
        Window_Scroll(menu->template.window, SCROLL_DIRECTION_DOWN, lineCount * lineHeight, PIXEL_FILL(menu->template.textColorBg));
        PrintEntries(menu, menu->listPos, 0, lineCount);

        u16 y = (u16)(menu->template.maxDisplay * lineHeight + menu->template.yOffset);
        Window_FillRectWithColor(menu->template.window,
            menu->template.textColorBg,
            0,
            y,
            Window_GetWidth(menu->template.window) * 8,
            Window_GetHeight(menu->template.window) * 8 - y);
    } else {
        Window_Scroll(menu->template.window, SCROLL_DIRECTION_UP, lineCount * lineHeight, PIXEL_FILL(menu->template.textColorBg));
        PrintEntries(menu, menu->listPos + (menu->template.maxDisplay - lineCount), menu->template.maxDisplay - lineCount, lineCount);
        Window_FillRectWithColor(menu->template.window,
            menu->template.textColorBg,
            0,
            0,
            Window_GetWidth(menu->template.window) * 8,
            menu->template.yOffset);
    }
}

static u8 UpdateSelectedRow(ListMenu *menu, u8 updateCursor, u8 scrollCount, u8 movingDown)
{
    u8 i, ret;
    u16 cursorPos = menu->cursorPos;
    u8 linesScrolled = 0;
    u8 selectionChange = 0;

    for (i = 0; i < scrollCount; i++) {
        do {
            ret = UpdateOffsetsForScroll(menu, movingDown);
            selectionChange |= ret;
            if (ret != 2) {
                break;
            }

            linesScrolled++;
        } while (menu->template.choices[menu->listPos + menu->cursorPos].index == LIST_HEADER);
    }

    if (updateCursor) {
        switch (selectionChange) {
        default:
        case 0:
            return TRUE;
            break;

        case 1:
            EraseCursor(menu, cursorPos);
            PrintCursor(menu);
            InvokeCursorCallback(menu, FALSE);
            Window_CopyToVRAM(menu->template.window);
            break;

        case 2:
        case 3:
            EraseCursor(menu, cursorPos);
            ScrollList(menu, linesScrolled, movingDown);
            PrintCursor(menu);
            InvokeCursorCallback(menu, FALSE);
            Window_CopyToVRAM(menu->template.window);
            break;
        }
    }

    return FALSE;
}

static void InvokeCursorCallback(ListMenu *menu, u8 onInit)
{
    if (menu->template.cursorCallback != NULL) {
        menu->template.cursorCallback(menu, menu->template.choices[menu->listPos + menu->cursorPos].index, onInit);
    }
}
