#include "overlay106/ov106_022436E0.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "render_window.h"

void ov106_022436E0(BgConfig *param0, Window *param1);
void ov106_02243710(Window *param0);
void ov106_0224372C(BgConfig *param0, Window *param1);
void ov106_02243758(Window *param0, int param1);

static const WindowTemplate Unk_ov106_02243860[] = {
    { 0x0, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x1 },
    { 0x0, 0x18, 0xD, 0x7, 0x4, 0xD, 0x6D },
    { 0x0, 0xA, 0x14, 0x9, 0x2, 0xD, 0x89 },
    { 0x1, 0x1, 0x0, 0x1F, 0x16, 0xD, 0x1 }
};

void ov106_022436E0(BgConfig *param0, Window *param1)
{
    u8 v0;
    const WindowTemplate *v1 = Unk_ov106_02243860;

    for (v0 = 0; v0 < 4; v0++) {
        Window_AddFromTemplate(param0, &param1[v0], &v1[v0]);
        Window_FillTilemap(&param1[v0], 0);
    }

    return;
}

void ov106_02243710(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 4; v0++) {
        Window_Remove(&param0[v0]);
    }

    return;
}

void ov106_0224372C(BgConfig *param0, Window *param1)
{
    LoadStandardWindowGraphics(param0, 0, (1024 - 9), 11, 0, 98);
    Window_DrawStandardFrame(param1, 1, (1024 - 9), 11);

    return;
}

void ov106_02243758(Window *param0, int param1)
{
    LoadMessageBoxGraphics(param0->bgConfig, Window_GetBgLayer(param0), ((1024 - 9) - (18 + 12)), 10, param1, 98);
    Window_FillTilemap(param0, 15);
    Window_DrawMessageBoxWithScrollCursor(param0, 0, ((1024 - 9) - (18 + 12)), 10);

    return;
}
