#include "menu.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "colored_arrow.h"
#include "core_sys.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "string_list.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"

static BOOL TryMovingCursorAndPlaySound(Menu *menu, u8 direction, u16 sound);
static u8 TryMovingCursor(Menu *menu, u8 direction);
static u8 CalcMaxEntryWidth(Menu *menu);
static void DrawWholeMenu(Menu *menu);
static void DrawCursor(Menu *menu);
static void CalcCursorDrawCoords(Menu *menu, u8 *outX, u8 *outY, u8 cursorPos);

Menu *Menu_New(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    Menu *v0 = (Menu *)Heap_AllocFromHeap(param4, sizeof(Menu));

    v0->template = *param0;
    v0->cursor = ColoredArrow_New(param4);
    v0->cancelKeys = param5;
    v0->cursorPos = param3;
    v0->width = CalcMaxEntryWidth(v0);
    v0->heapID = param4;
    v0->xOffset = param1;
    v0->yOffset = param2;
    v0->letterWidth = Font_GetAttribute(param0->fontID, 0) + Font_GetAttribute(param0->fontID, 2);
    v0->lineHeight = Font_GetAttribute(param0->fontID, 1) + Font_GetAttribute(param0->fontID, 3);

    DrawWholeMenu(v0);
    DrawCursor(v0);

    return v0;
}

Menu *Menu_NewAndCopyToVRAM(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    Menu *v0 = Menu_New(param0, param1, param2, param3, param4, param5);

    Window_CopyToVRAM(v0->template.window);
    return v0;
}

Menu *Menu_NewSimple(const MenuTemplate *param0, u8 param1, u8 param2)
{
    return Menu_NewAndCopyToVRAM(param0, Font_GetAttribute(param0->fontID, 0), 0, param1, param2, PAD_BUTTON_B);
}

void Menu_Free(Menu *param0, u8 *param1)
{
    if (param1 != NULL) {
        *param1 = param0->cursorPos;
    }

    ColoredArrow_Free(param0->cursor);
    Heap_FreeToHeapExplicit(param0->heapID, param0);
}

u32 Menu_ProcessInput(Menu *param0)
{
    param0->lastAction = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);
        return param0->template.choices[param0->cursorPos].index;
    }

    if (gCoreSys.pressedKeys & param0->cancelKeys) {
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (TryMovingCursorAndPlaySound(param0, 0, 1500) == 1) {
            param0->lastAction = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (TryMovingCursorAndPlaySound(param0, 1, 1500) == 1) {
            param0->lastAction = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (TryMovingCursorAndPlaySound(param0, 2, 1500) == 1) {
            param0->lastAction = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (TryMovingCursorAndPlaySound(param0, 3, 1500) == 1) {
            param0->lastAction = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 Menu_ProcessInputWithSound(Menu *param0, u16 param1)
{
    param0->lastAction = 0;

    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        Sound_PlayEffect(1500);
        return param0->template.choices[param0->cursorPos].index;
    }

    if (gCoreSys.pressedKeys & param0->cancelKeys) {
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (TryMovingCursorAndPlaySound(param0, 0, param1) == 1) {
            param0->lastAction = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (TryMovingCursorAndPlaySound(param0, 1, param1) == 1) {
            param0->lastAction = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (TryMovingCursorAndPlaySound(param0, 2, param1) == 1) {
            param0->lastAction = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (TryMovingCursorAndPlaySound(param0, 3, param1) == 1) {
            param0->lastAction = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 Menu_ProcessExternalInput(Menu *param0, u8 param1)
{
    switch (param1) {
    case 0:
        Sound_PlayEffect(1500);
        return param0->template.choices[param0->cursorPos].index;
    case 1:
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    case 2:
        TryMovingCursorAndPlaySound(param0, 0, 1500);
        return 0xffffffff;
    case 3:
        TryMovingCursorAndPlaySound(param0, 1, 1500);
        return 0xffffffff;
    case 4:
        TryMovingCursorAndPlaySound(param0, 2, 1500);
        return 0xffffffff;
    case 5:
        TryMovingCursorAndPlaySound(param0, 3, 1500);
        return 0xffffffff;
    }

    return 0xffffffff;
}

u8 Menu_GetCursorPos(Menu *param0)
{
    return param0->cursorPos;
}

u8 Menu_GetLastAction(Menu *param0)
{
    return param0->lastAction;
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

Menu *Menu_MakeYesNoChoiceWithCursorAt(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u8 param4, u32 param5)
{
    MenuTemplate v0;
    MessageLoader *v1;
    StringList *v2;

    v1 = MessageLoader_Init(1, 26, 361, param5);
    v2 = StringList_New(2, param5);

    StringList_AddFromMessageBank(v2, v1, 41, 0);
    StringList_AddFromMessageBank(v2, v1, 42, 0xfffffffe);
    MessageLoader_Free(v1);

    v0.choices = v2;
    v0.window = Window_New(param5, 1);
    v0.fontID = 0;
    v0.xSize = 1;
    v0.ySize = 2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    Window_AddFromTemplate(param0, v0.window, param1);
    Window_Show(v0.window, 1, param2, param3);

    return Menu_NewAndCopyToVRAM(&v0, 8, 0, param4, param5, PAD_BUTTON_B);
}

Menu *Menu_MakeYesNoChoice(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u32 param4)
{
    return Menu_MakeYesNoChoiceWithCursorAt(param0, param1, param2, param3, 0, param4);
}

u32 Menu_ProcessInputAndHandleExit(Menu *param0, u32 param1)
{
    u32 v0 = Menu_ProcessInput(param0);

    if (v0 != 0xffffffff) {
        Menu_DestroyForExit(param0, param1);
    }

    return v0;
}

u32 Menu_ProcessExternalInputAndHandleExit(Menu *param0, u8 param1, u32 param2)
{
    u32 v0 = Menu_ProcessExternalInput(param0, param1);

    if (v0 != 0xffffffff) {
        Menu_DestroyForExit(param0, param2);
    }

    return v0;
}

void Menu_DestroyForExit(Menu *param0, u32 param1)
{
    Window_Clear(param0->template.window, 0);
    Window_Remove(param0->template.window);
    Heap_FreeToHeapExplicit(param1, param0->template.window);
    StringList_Free((StringList *)param0->template.choices);
    Menu_Free(param0, NULL);
}

void Menu_DrawCursorBitmap(Window *param0, u32 param1, u32 param2)
{
    static const u8 v0[] = {
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

    Window_BlitBitmapRect(param0, (void *)v0, 0, 0, 8, 16, param1, param2, 8, 16);
}
