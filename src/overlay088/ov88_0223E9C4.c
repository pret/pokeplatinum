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
#include "strbuf.h"
#include "string_list.h"
#include "text.h"

static void ov88_0223EE14(ListMenu *param0, u32 param1, u8 param2);

static const u16 Unk_ov88_0223F1A8[][5] = {
    { 0x4, 0x1, 0x9, 0x2, 0x1 },
    { 0x14, 0x1, 0x9, 0x2, 0x13 },
    { 0x4, 0x3, 0x8, 0x2, 0x25 },
    { 0x14, 0x3, 0x8, 0x2, 0x35 },
    { 0x2, 0x13, 0x7, 0x2, 0x45 },
    { 0x12, 0x13, 0x7, 0x2, 0x53 },
    { 0x2, 0x15, 0xC, 0x2, 0x61 },
    { 0x12, 0x15, 0xC, 0x2, 0x79 }
};

static const u16 Unk_ov88_0223F170[][2] = {
    { 0x0, 0x7 },
    { 0x8, 0x7 },
    { 0x0, 0xC },
    { 0x8, 0xC },
    { 0x0, 0x11 },
    { 0x8, 0x11 },
    { 0x10, 0x7 },
    { 0x18, 0x7 },
    { 0x10, 0xC },
    { 0x18, 0xC },
    { 0x10, 0x11 },
    { 0x18, 0x11 },
    { 0x4, 0xA },
    { 0x14, 0xA }
};

void ov88_0223E9C4(BgConfig *param0, Window *param1, Options *param2)
{
    int v0;

    Window_Add(param0, &param1[0], 1, 2, 1, 10, 2, 8, 1);
    Window_FillTilemap(&param1[0], 0);

    Window_Add(param0, &param1[1], 1, 20, 1, 10, 2, 8, (1 + (10 * 2)));
    Window_FillTilemap(&param1[1], 0);

    Window_Add(param0, &param1[6], 1, 26, 21, 5, 2, 8, ((1 + (10 * 2)) + (10 * 2)));
    Window_FillTilemap(&param1[6], 0);

    LoadMessageBoxGraphics(param0, 0, (512 - (9 + (18 + 12))), 10, Options_Frame(param2), HEAP_ID_26);
    LoadStandardWindowGraphics(param0, 0, (512 - 9), 11, 0, HEAP_ID_26);

    Window_Add(param0, &param1[21], 0, 2, 21, 20, 2, 13, 1);
    Window_FillTilemap(&param1[21], 0);
    Window_Add(param0, &param1[22], 0, 2, 19, 14, 4, 13, (20 * 2));
    Window_FillTilemap(&param1[22], 0);
    Window_Add(param0, &param1[23], 0, 2, 19, 27, 4, 13, (14 * 4));
    Window_FillTilemap(&param1[23], 0);

    Window_Add(param0, &param1[24], 0, 20, 17, 11, 6, 13, ((14 * 4) + (27 * 4)));
    Window_FillTilemap(&param1[24], 0);
    Window_Add(param0, &param1[25], 0, 20, 19, 11, 4, 13, (((14 * 4) + (27 * 4)) + (11 * 6)));
    Window_FillTilemap(&param1[25], 0);

    for (v0 = 0; v0 < 14; v0++) {
        Window_Add(param0, &param1[7 + v0], 1, Unk_ov88_0223F170[v0][0], Unk_ov88_0223F170[v0][1], 8, 2, 8, (((1 + (10 * 2)) + (10 * 2)) + (5 * 2)) + v0 * (8 * 2));
        Window_FillTilemap(&param1[7 + v0], 0);
    }

    for (v0 = 0; v0 < 8; v0++) {
        Window_Add(param0, &param1[26 + v0], 4, Unk_ov88_0223F1A8[v0][0], Unk_ov88_0223F1A8[v0][1], Unk_ov88_0223F1A8[v0][2], Unk_ov88_0223F1A8[v0][3], 8, Unk_ov88_0223F1A8[v0][4]);
        Window_FillTilemap(&param1[26 + v0], 0);
    }
}

void ov88_0223EC04(Window *param0)
{
    int v0;

    for (v0 = 0; v0 < 14; v0++) {
        Window_Remove(&param0[7 + v0]);
    }

    for (v0 = 0; v0 < 8; v0++) {
        Window_Remove(&param0[26 + v0]);
    }

    Window_Remove(&param0[0]);
    Window_Remove(&param0[1]);
    Window_Remove(&param0[6]);

    Window_Remove(&param0[21]);
    Window_Remove(&param0[22]);
    Window_Remove(&param0[23]);
    Window_Remove(&param0[24]);
    Window_Remove(&param0[25]);
}

void ov88_0223EC78(Window *param0, Strbuf *param1, int param2, u32 param3, int param4, int param5)
{
    int v0 = 0;

    if (param4 == 1) {
        int v1;

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
        v0 = ((param0->width * 8) - v1) / 2;
    } else {
        v0 = param4;
    }

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param1, v0, param5, param3, TEXT_COLOR(11, 12, 0), NULL);
}

int ov88_0223ECBC(Window *param0, int param1, int param2, MessageLoader *param3, StringTemplate *param4)
{
    Strbuf *v0;
    int v1;

    v0 = MessageUtil_ExpandedStrbuf(param4, param3, param1, HEAP_ID_26);

    if (param2 == 1) {
        Window_DrawMessageBoxWithScrollCursor(param0, 0, (512 - (9 + (18 + 12))), 10);
    } else {
        Window_DrawStandardFrame(param0, 0, (512 - 9), 11);
    }

    Window_FillTilemap(param0, 15);
    v1 = Text_AddPrinterWithParamsAndColor(param0, param2, v0, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v0);

    return v1;
}

static const WindowTemplate Unk_ov88_0223F148 = {
    0x0,
    0x19,
    0xD,
    0x6,
    0x4,
    0x3,
    0x112
};

u32 ov88_0223ED2C(BgConfig *param0, Menu **param1, int *param2)
{
    u32 v0 = 0xffffffff;

    switch (*param2) {
    case 0:
        *param1 = Menu_MakeYesNoChoice(param0, &Unk_ov88_0223F148, (512 - 9), 11, 26);
        (*param2)++;
        break;
    case 1:
        v0 = Menu_ProcessInputAndHandleExit(*param1, 26);

        if (v0 != 0xffffffff) {
            (*param2) = 0;
        }
    }

    return v0;
}

void ov88_0223ED80(Window *param0)
{
    Window_DrawStandardFrame(param0, 0, (512 - 9), 11);
}

static const ListMenuTemplate Unk_ov88_0223F150 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x20,
    0x20,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

ListMenu *ov88_0223ED94(StringList *param0, int param1, Window *param2, BgConfig *param3)
{
    ListMenu *v0;
    ListMenuTemplate v1;
    int v2 = 5;

    Window_Add(param3, param2, 0, 19, 1, 12, v2 * 2, 13, (512 - (9 + (18 + 12))) - (10 * (v2 + 2) * 2));
    Window_DrawStandardFrame(param2, 0, (512 - 9), 11);

    v1 = Unk_ov88_0223F150;
    v1.count = param1 + 1;
    v1.maxDisplay = v2;
    v1.choices = param0;
    v1.window = param2;
    v1.cursorCallback = ov88_0223EE14;
    v0 = ListMenu_New(&v1, 0, 0, 26);

    return v0;
}

static void ov88_0223EE14(ListMenu *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}
