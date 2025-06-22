#include "overlay105/ov105_02246214.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "render_window.h"

void ov105_02246214(BgConfig *param0, Window *param1);
void ov105_02246244(Window *param0);
void ov105_02246260(BgConfig *param0, Window *param1);
void ov105_0224628C(Window *param0, int param1);

static const WindowTemplate Unk_ov105_02246458[] = {
    { 0x1, 0x1, 0x1, 0xA, 0x2, 0xD, 0x1 },
    { 0x1, 0x16, 0x1, 0xA, 0x2, 0xD, 0x15 },
    { 0x1, 0x1, 0x4, 0x9, 0x2, 0xD, 0x29 },
    { 0x1, 0x1, 0x6, 0x9, 0x2, 0xD, 0x3B },
    { 0x1, 0x1, 0x8, 0x9, 0x2, 0xD, 0x4D },
    { 0x1, 0x2, 0x13, 0x11, 0x4, 0xC, 0x5F },
    { 0x1, 0x17, 0x13, 0x8, 0x4, 0xD, 0xA3 },
    { 0x1, 0x17, 0x11, 0x8, 0x6, 0xD, 0xC3 },
    { 0x1, 0x16, 0x4, 0x9, 0x2, 0xD, 0xF3 },
    { 0x1, 0x16, 0x6, 0x9, 0x2, 0xD, 0x105 }
};

void ov105_02246214(BgConfig *param0, Window *param1)
{
    u8 v0;
    const WindowTemplate *v1 = Unk_ov105_02246458;

    for (v0 = 0; v0 < 10; v0++) {
        Window_AddFromTemplate(param0, &param1[v0], &v1[v0]);
        Window_FillTilemap(&param1[v0], 0);
    }

    return;
}

void ov105_02246244(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 10; v0++) {
        Window_Remove(&param0[v0]);
    }

    return;
}

void ov105_02246260(BgConfig *param0, Window *param1)
{
    LoadStandardWindowGraphics(param0, BG_LAYER_MAIN_1, (1024 - 9), 11, 0, HEAP_ID_93);
    Window_DrawStandardFrame(param1, 1, (1024 - 9), 11);

    return;
}

void ov105_0224628C(Window *param0, int param1)
{
    LoadMessageBoxGraphics(param0->bgConfig, Window_GetBgLayer(param0), ((1024 - 9) - (18 + 12)), 10, param1, HEAP_ID_93);
    Window_FillTilemap(param0, 15);
    Window_DrawMessageBoxWithScrollCursor(param0, 1, ((1024 - 9) - (18 + 12)), 10);

    return;
}
