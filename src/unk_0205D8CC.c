#include "unk_0205D8CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "font.h"
#include "game_options.h"
#include "render_text.h"
#include "strbuf.h"
#include "text.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"

void sub_0205D8CC(u32 param0, u32 param1)
{
    if (param1 == 1) {
        Text_ResetAllPrinters();
    }

    Font_LoadTextPalette(param0, 13 * 32, 4);
    Font_LoadScreenIndicatorsPalette(param0, 12 * 32, 4);
}

void FieldMessage_AddWindow(BGL *param0, Window *param1, u32 param2)
{
    if (param2 == 3) {
        BGL_AddWindow(param0, param1, 3, 2, 19, 27, 4, 12, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        BGL_AddWindow(param0, param1, 7, 2, 19, 27, 4, 12, (512 - (27 * 4)));
    }
}

void FieldMessage_DrawWindow(Window *param0, const Options *param1)
{
    sub_0200DD0C(param0->unk_00, sub_0201C290(param0), 1024 - (18 + 12), 10, Options_Frame(param1), 4);
    sub_0205D988(param0);
    sub_0200E060(param0, 0, 1024 - (18 + 12), 10);
}

void sub_0205D988(Window *param0)
{
    BGL_FillWindow(param0, 15);
}

u8 FieldMessage_Print(Window *param0, Strbuf *param1, const Options *param2, u8 param3)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(param3);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    v0 = Text_AddPrinterWithParams(param0, FONT_MESSAGE, param1, 0, 0, Options_TextFrameDelay(param2), NULL);
    return v0;
}

u8 sub_0205D9CC(Window *param0, Strbuf *param1, int param2, int param3, u8 param4, int param5)
{
    RenderControlFlags_SetCanABSpeedUpPrint(param4);
    RenderControlFlags_SetAutoScrollFlags(param5);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    return Text_AddPrinterWithParams(param0, param2, param1, 0, 0, param3, NULL);
}

u8 FieldMessage_FinishedPrinting(u8 param0)
{
    if (Text_IsPrinterActive(param0) == 0) {
        return 1;
    }

    return 0;
}

void sub_0205DA1C(BGL *param0, Window *param1, u16 param2, u16 param3)
{
    u16 v0, v1;

    if ((param2 == 0) || (param2 == 1)) {
        v0 = 9;
        v1 = 20;
    } else {
        v0 = 2;
        v1 = 27;
    }

    if (param3 == 3) {
        BGL_AddWindow(param0, param1, 3, v0, 19, v1, 4, 9, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        BGL_AddWindow(param0, param1, 7, v0, 19, v1, 4, 9, (512 - (27 * 4)));
    }
}

void sub_0205DA80(Window *param0, u16 param1, u16 param2)
{
    sub_0200E2A4(param0->unk_00, sub_0201C290(param0), ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1, param2, 4);
    BGL_FillWindow(param0, 15);
    sub_0200E69C(param0, 0, ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1);
}
