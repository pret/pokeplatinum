#include "list_menu.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "bg_window.h"
#include "colored_arrow.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "string_list.h"
#include "text.h"

static void PrintEntry(ListMenu *menu, void *strbuf, u8 xOffset, u8 yOffset);
static void PrintEntries(ListMenu *menu, u16 startIndex, u16 lineOffset, u16 lineCount);
static void PrintCursor(ListMenu *menu);
static void EraseCursor(ListMenu *menu, u16 atLine);
static u8 UpdateOffsetsForScroll(ListMenu *menu, u8 movingDown);
static void ScrollList(ListMenu *menu, u8 lineCount, u8 isUpward);
static u8 UpdateSelectedRow(ListMenu *menu, u8 updateCursor, u8 scrollCount, u8 movingDown);
static void InvokeCursorCallback(ListMenu *menu, u8 onInit);

ListMenu *ListMenu_New(const ListMenuTemplate *param0, u16 param1, u16 param2, u8 param3)
{
    ListMenu *v0 = (ListMenu *)Heap_AllocFromHeap(param3, sizeof(ListMenu));

    v0->template = *param0;
    v0->cursor = ColoredArrow_New(param3);
    v0->listPos = param1;
    v0->cursorPos = param2;
    v0->dummy2C = 0;
    v0->dummy2D = 0;
    v0->dummy2E = 0xFF;
    v0->lastAction = 0;
    v0->heapID = param3;

    v0->altFont.textColorFg = v0->template.textColorFg;
    v0->altFont.textColorBg = v0->template.textColorBg;
    v0->altFont.textColorShadow = v0->template.textColorShadow;
    v0->altFont.letterSpacing = v0->template.letterSpacing;
    v0->altFont.fontID = v0->template.fontID;
    v0->altFont.prefer = 0;

    if (v0->template.count < v0->template.maxDisplay) {
        v0->template.maxDisplay = v0->template.count;
    }

    ColoredArrow_SetColor(v0->cursor, TEXT_COLOR(v0->template.textColorFg, v0->template.textColorShadow, v0->template.textColorBg));
    Window_FillTilemap(v0->template.window, v0->template.textColorBg);
    PrintEntries(v0, v0->listPos, 0, v0->template.maxDisplay);
    PrintCursor(v0);
    InvokeCursorCallback(v0, 1);
    Window_CopyToVRAM(param0->window);

    return v0;
}

u32 ListMenu_ProcessInput(ListMenu *param0)
{
    u16 v0, v1;

    param0->lastAction = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        return param0->template.choices[param0->listPos + param0->cursorPos].index;
    }

    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        if (UpdateSelectedRow(param0, 1, 1, 0) == 0) {
            param0->lastAction = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        if (UpdateSelectedRow(param0, 1, 1, 1) == 0) {
            param0->lastAction = 2;
        }

        return 0xffffffff;
    }

    switch (param0->template.pagerMode) {
    default:
    case 0:
        v0 = 0;
        v1 = 0;
        break;
    case 1:
        v0 = (gCoreSys.pressedKeysRepeatable & PAD_KEY_LEFT);
        v1 = (gCoreSys.pressedKeysRepeatable & PAD_KEY_RIGHT);
        break;
    case 2:
        v0 = (gCoreSys.pressedKeysRepeatable & PAD_BUTTON_L);
        v1 = (gCoreSys.pressedKeysRepeatable & PAD_BUTTON_R);
        break;
    }

    if (v0) {
        if (UpdateSelectedRow(param0, 1, (u8)param0->template.maxDisplay, 0) == 0) {
            param0->lastAction = 3;
        }

        return 0xffffffff;
    }

    if (v1) {
        if (UpdateSelectedRow(param0, 1, (u8)param0->template.maxDisplay, 1) == 0) {
            param0->lastAction = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

void ListMenu_Free(ListMenu *param0, u16 *param1, u16 *param2)
{
    if (param1 != NULL) {
        *param1 = param0->listPos;
    }

    if (param2 != NULL) {
        *param2 = param0->cursorPos;
    }

    ColoredArrow_Free(param0->cursor);
    Heap_FreeToHeapExplicit(param0->heapID, param0);
}

void ListMenu_Draw(ListMenu *param0)
{
    Window_FillTilemap(param0->template.window, param0->template.textColorBg);
    PrintEntries(param0, param0->listPos, 0, param0->template.maxDisplay);
    PrintCursor(param0);
    Window_CopyToVRAM(param0->template.window);
}

void ListMenu_SetTextColors(ListMenu *param0, u8 param1, u8 param2, u8 param3)
{
    param0->template.textColorFg = param1;
    param0->template.textColorBg = param2;
    param0->template.textColorShadow = param3;
}

u32 ListMenu_TestInput(ListMenu *param0, ListMenuTemplate *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 *param6, u16 *param7)
{
    if (param1) {
        param0->template = *param1;
    }

    param0->listPos = param2;
    param0->cursorPos = param3;
    param0->dummy2C = 0;
    param0->dummy2D = 0;

    if (param5 == PAD_KEY_UP) {
        UpdateSelectedRow(param0, param4, 1, 0);
    } else if (param5 == PAD_KEY_DOWN) {
        UpdateSelectedRow(param0, param4, 1, 1);
    }

    if (param6 != NULL) {
        *param6 = param0->listPos;
    }

    if (param7 != NULL) {
        *param7 = param0->cursorPos;
    }

    return 0xffffffff;
}

void ListMenu_SetAltTextColors(ListMenu *param0, u8 param1, u8 param2, u8 param3)
{
    param0->altFont.textColorFg = param1;
    param0->altFont.textColorBg = param2;
    param0->altFont.textColorShadow = param3;
    param0->altFont.prefer = 1;
}

void ListMenu_CalcTrueCursorPos(ListMenu *param0, u16 *param1)
{
    *param1 = (u16)(param0->listPos + param0->cursorPos);
}

void ListMenu_GetListAndCursorPos(ListMenu *param0, u16 *param1, u16 *param2)
{
    if (param1 != NULL) {
        *param1 = param0->listPos;
    }

    if (param2 != NULL) {
        *param2 = param0->cursorPos;
    }
}

u8 ListMenu_GetLastAction(ListMenu *param0)
{
    return param0->lastAction;
}

u32 ListMenu_GetIndexOfChoice(ListMenu *param0, u16 param1)
{
    return param0->template.choices[param1].index;
}

u32 ListMenu_GetAttribute(ListMenu *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 0:
        v0 = (u32)param0->template.cursorCallback;
        break;
    case 1:
        v0 = (u32)param0->template.printCallback;
        break;
    case 2:
        v0 = (u32)param0->template.count;
        break;
    case 3:
        v0 = (u32)param0->template.maxDisplay;
        break;
    case 5:
        v0 = (u32)param0->template.headerXOffset;
        break;
    case 6:
        v0 = (u32)param0->template.textXOffset;
        break;
    case 7:
        v0 = (u32)param0->template.cursorXOffset;
        break;
    case 8:
        v0 = (u32)param0->template.yOffset;
        break;
    case 9:
        v0 = (u32)Font_GetAttribute(param0->template.fontID, 1) + param0->template.lineSpacing;
        break;
    case 10:
        v0 = (u32)param0->template.textColorFg;
        break;
    case 11:
        v0 = (u32)param0->template.textColorBg;
        break;
    case 12:
        v0 = (u32)param0->template.textColorShadow;
        break;
    case 13:
        v0 = (u32)param0->template.letterSpacing;
        break;
    case 14:
        v0 = (u32)param0->template.lineSpacing;
        break;
    case 15:
        v0 = (u32)param0->template.pagerMode;
        break;
    case 16:
        v0 = (u32)param0->template.fontID;
        break;
    case 17:
        v0 = (u32)param0->template.cursorType;
        break;
    case 18:
        v0 = (u32)param0->template.window;
        break;
    case 19:
        v0 = (u32)param0->template.tmp;
        break;
    default:
        v0 = 0xffffffff;
    }

    return v0;
}

void ListMenu_SetChoices(ListMenu *param0, StringList *param1)
{
    param0->template.choices = param1;
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
    u8 lineY = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;

    for (int line = 0; line < lineCount; line++) {
        u8 xOffset;
        if (menu->template.choices[startIndex].index != LIST_HEADER) {
            xOffset = menu->template.textXOffset;
        } else {
            xOffset = menu->template.headerXOffset;
        }

        u8 yOffset = ((line + lineOffset) * lineY) + menu->template.yOffset;

        if (menu->template.printCallback != NULL) {
            menu->template.printCallback(menu, menu->template.choices[startIndex].index, yOffset);
        }

        PrintEntry(menu, (void *)menu->template.choices[startIndex].entry, xOffset, yOffset);
        startIndex++;
    }
}

static void PrintCursor(ListMenu *menu)
{
    u8 lineY = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;
    u8 x = menu->template.cursorXOffset;
    u8 y = (menu->cursorPos * lineY) + menu->template.yOffset;

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
    u8 lineSpacing;
    switch (menu->template.cursorType) {
    case 0:
        lineSpacing = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;
        Window_FillRectWithColor(menu->template.window,
            menu->template.textColorBg,
            menu->template.cursorXOffset,
            atLine * lineSpacing + menu->template.yOffset,
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

    u8 lineSpacing = Font_GetAttribute(menu->template.fontID, FONTATTR_MAX_LETTER_HEIGHT) + menu->template.lineSpacing;

    if (!movingDown) {
        Window_Scroll(menu->template.window, SCROLL_DIRECTION_DOWN, lineCount * lineSpacing, PIXEL_FILL(menu->template.textColorBg));
        PrintEntries(menu, menu->listPos, 0, lineCount);

        u16 y = (u16)(menu->template.maxDisplay * lineSpacing + menu->template.yOffset);
        Window_FillRectWithColor(menu->template.window,
            menu->template.textColorBg,
            0,
            y,
            Window_GetWidth(menu->template.window) * 8,
            Window_GetHeight(menu->template.window) * 8 - y);
    } else {
        Window_Scroll(menu->template.window, SCROLL_DIRECTION_UP, lineCount * lineSpacing, PIXEL_FILL(menu->template.textColorBg));
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
