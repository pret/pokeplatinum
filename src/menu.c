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

static BOOL sub_02001DCC(Menu *param0, u8 param1, u16 param2);
static u8 sub_02001E24(Menu *param0, u8 param1);
static u8 sub_02001F1C(Menu *param0);
static void sub_02001F5C(Menu *param0);
static void sub_02001FE8(Menu *param0);
static void sub_02002018(Menu *param0, u8 *param1, u8 *param2, u8 param3);

Menu *sub_02001AF4(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    Menu *v0 = (Menu *)Heap_AllocFromHeap(param4, sizeof(Menu));

    v0->template = *param0;
    v0->cursor = ColoredArrow_New(param4);
    v0->cancelKeys = param5;
    v0->cursorPos = param3;
    v0->width = sub_02001F1C(v0);
    v0->heapID = param4;
    v0->xOffset = param1;
    v0->yOffset = param2;
    v0->letterWidth = Font_GetAttribute(param0->fontID, 0) + Font_GetAttribute(param0->fontID, 2);
    v0->lineHeight = Font_GetAttribute(param0->fontID, 1) + Font_GetAttribute(param0->fontID, 3);

    sub_02001F5C(v0);
    sub_02001FE8(v0);

    return v0;
}

Menu *sub_02001B7C(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5)
{
    Menu *v0 = sub_02001AF4(param0, param1, param2, param3, param4, param5);

    Window_CopyToVRAM(v0->template.window);
    return v0;
}

Menu *sub_02001B9C(const MenuTemplate *param0, u8 param1, u8 param2)
{
    return sub_02001B7C(param0, Font_GetAttribute(param0->fontID, 0), 0, param1, param2, PAD_BUTTON_B);
}

void sub_02001BC4(Menu *param0, u8 *param1)
{
    if (param1 != NULL) {
        *param1 = param0->cursorPos;
    }

    ColoredArrow_Free(param0->cursor);
    Heap_FreeToHeapExplicit(param0->heapID, param0);
}

u32 sub_02001BE0(Menu *param0)
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
        if (sub_02001DCC(param0, 0, 1500) == 1) {
            param0->lastAction = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_02001DCC(param0, 1, 1500) == 1) {
            param0->lastAction = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (sub_02001DCC(param0, 2, 1500) == 1) {
            param0->lastAction = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (sub_02001DCC(param0, 3, 1500) == 1) {
            param0->lastAction = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 sub_02001C94(Menu *param0, u16 param1)
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
        if (sub_02001DCC(param0, 0, param1) == 1) {
            param0->lastAction = 1;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (sub_02001DCC(param0, 1, param1) == 1) {
            param0->lastAction = 2;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
        if (sub_02001DCC(param0, 2, param1) == 1) {
            param0->lastAction = 3;
        }

        return 0xffffffff;
    }

    if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
        if (sub_02001DCC(param0, 3, param1) == 1) {
            param0->lastAction = 4;
        }

        return 0xffffffff;
    }

    return 0xffffffff;
}

u32 sub_02001D44(Menu *param0, u8 param1)
{
    switch (param1) {
    case 0:
        Sound_PlayEffect(1500);
        return param0->template.choices[param0->cursorPos].index;
    case 1:
        Sound_PlayEffect(1500);
        return 0xfffffffe;
    case 2:
        sub_02001DCC(param0, 0, 1500);
        return 0xffffffff;
    case 3:
        sub_02001DCC(param0, 1, 1500);
        return 0xffffffff;
    case 4:
        sub_02001DCC(param0, 2, 1500);
        return 0xffffffff;
    case 5:
        sub_02001DCC(param0, 3, 1500);
        return 0xffffffff;
    }

    return 0xffffffff;
}

u8 sub_02001DC4(Menu *param0)
{
    return param0->cursorPos;
}

u8 sub_02001DC8(Menu *param0)
{
    return param0->lastAction;
}

static BOOL sub_02001DCC(Menu *param0, u8 param1, u16 param2)
{
    u8 v0 = param0->cursorPos;

    if (sub_02001E24(param0, param1) == 0) {
        return 0;
    }

    {
        u8 v1, v2;
        u8 v3;

        v3 = Font_GetAttribute(param0->template.fontID, 6);

        sub_02002018(param0, &v1, &v2, v0);
        Window_FillRectWithColor(param0->template.window, v3, v1, v2, 8, param0->lineHeight);
    }

    sub_02001FE8(param0);
    Sound_PlayEffect(param2);

    return 1;
}

static u8 sub_02001E24(Menu *param0, u8 param1)
{
    s8 v0;

    if (param1 == 0) {
        if (param0->template.ySize <= 1) {
            return 0;
        }

        if ((param0->cursorPos % param0->template.ySize) == 0) {
            if (param0->template.loopAround == FALSE) {
                return 0;
            }

            v0 = param0->cursorPos + (param0->template.ySize - 1);
        } else {
            v0 = param0->cursorPos - 1;
        }
    } else if (param1 == 1) {
        if (param0->template.ySize <= 1) {
            return 0;
        }

        if ((param0->cursorPos % param0->template.ySize) == (param0->template.ySize - 1)) {
            if (param0->template.loopAround == FALSE) {
                return 0;
            }

            v0 = param0->cursorPos - (param0->template.ySize - 1);
        } else {
            v0 = param0->cursorPos + 1;
        }
    } else if (param1 == 2) {
        if (param0->template.xSize <= 1) {
            return 0;
        }

        if (param0->cursorPos < param0->template.ySize) {
            if (param0->template.loopAround == FALSE) {
                return 0;
            }

            v0 = param0->cursorPos + (param0->template.ySize * (param0->template.xSize - 1));
        } else {
            v0 = param0->cursorPos - param0->template.ySize;
        }
    } else {
        if (param0->template.xSize <= 1) {
            return 0;
        }

        if (param0->cursorPos >= (param0->template.ySize * (param0->template.xSize - 1))) {
            if (param0->template.loopAround == FALSE) {
                return 0;
            }

            v0 = param0->cursorPos % param0->template.ySize;
        } else {
            v0 = param0->cursorPos + param0->template.ySize;
        }
    }

    if (param0->template.choices[v0].index == 0xfffffffd) {
        return 0;
    }

    param0->cursorPos = v0;
    return 1;
}

static u8 sub_02001F1C(Menu *param0)
{
    u8 v0 = 0;
    u8 v1, v2;

    for (v1 = 0; v1 < param0->template.xSize * param0->template.ySize; v1++) {
        v2 = Font_CalcStrbufWidth(param0->template.fontID, param0->template.choices[v1].entry, 0);

        if (v0 < v2) {
            v0 = v2;
        }
    }

    return v0;
}

static void sub_02001F5C(Menu *param0)
{
    const void *v0;
    u8 v1, v2, v3;
    u8 v4, v5;

    Window_FillTilemap(param0->template.window, Font_GetAttribute(param0->template.fontID, 6));

    v1 = param0->xOffset;
    v3 = param0->width + param0->letterWidth * 2;

    for (v4 = 0; v4 < param0->template.xSize; v4++) {
        for (v5 = 0; v5 < param0->template.ySize; v5++) {
            v0 = param0->template.choices[v4 * param0->template.ySize + v5].entry;
            v2 = (param0->lineHeight + param0->template.lineSpacing) * v5 + param0->yOffset;

            Text_AddPrinterWithParams(param0->template.window, param0->template.fontID, v0, v1, v2, TEXT_SPEED_NO_TRANSFER, NULL);
        }

        v1 += v3;
    }
}

static void sub_02001FE8(Menu *param0)
{
    u8 v0, v1;

    if (param0->template.suppressCursor == TRUE) {
        return;
    }

    sub_02002018(param0, &v0, &v1, param0->cursorPos);
    ColoredArrow_Print(param0->cursor, param0->template.window, v0, v1);
}

static void sub_02002018(Menu *param0, u8 *param1, u8 *param2, u8 param3)
{
    *param1 = (param3 / param0->template.ySize) * (param0->width + param0->letterWidth * 2);
    *param2 = (param3 % param0->template.ySize) * (param0->lineHeight + param0->template.lineSpacing) + param0->yOffset;
}

Menu *sub_02002054(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u8 param4, u32 param5)
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

    return sub_02001B7C(&v0, 8, 0, param4, param5, PAD_BUTTON_B);
}

Menu *sub_02002100(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u32 param4)
{
    return sub_02002054(param0, param1, param2, param3, 0, param4);
}

u32 sub_02002114(Menu *param0, u32 param1)
{
    u32 v0 = sub_02001BE0(param0);

    if (v0 != 0xffffffff) {
        sub_02002154(param0, param1);
    }

    return v0;
}

u32 sub_02002134(Menu *param0, u8 param1, u32 param2)
{
    u32 v0 = sub_02001D44(param0, param1);

    if (v0 != 0xffffffff) {
        sub_02002154(param0, param2);
    }

    return v0;
}

void sub_02002154(Menu *param0, u32 param1)
{
    Window_Clear(param0->template.window, 0);
    Window_Remove(param0->template.window);
    Heap_FreeToHeapExplicit(param1, param0->template.window);
    StringList_Free((StringList *)param0->template.choices);
    sub_02001BC4(param0, NULL);
}

void sub_02002180(Window *param0, u32 param1, u32 param2)
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
