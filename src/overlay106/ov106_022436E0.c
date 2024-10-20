#include "overlay106/ov106_022436E0.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "unk_0200DA60.h"

void ov106_022436E0(BGL *param0, Window *param1);
void ov106_02243710(Window *param0);
void ov106_0224372C(BGL *param0, Window *param1);
void ov106_02243758(Window *param0, int param1);

static const UnkStruct_ov61_0222C884 Unk_ov106_02243860[] = {
    { 0x0, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x1 },
    { 0x0, 0x18, 0xD, 0x7, 0x4, 0xD, 0x6D },
    { 0x0, 0xA, 0x14, 0x9, 0x2, 0xD, 0x89 },
    { 0x1, 0x1, 0x0, 0x1F, 0x16, 0xD, 0x1 }
};

void ov106_022436E0(BGL *param0, Window *param1)
{
    u8 v0;
    const UnkStruct_ov61_0222C884 *v1 = Unk_ov106_02243860;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201A8D4(param0, &param1[v0], &v1[v0]);
        BGL_FillWindow(&param1[v0], 0);
    }

    return;
}

void ov106_02243710(Window *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 4; v0++) {
        BGL_DeleteWindow(&param0[v0]);
    }

    return;
}

void ov106_0224372C(BGL *param0, Window *param1)
{
    sub_0200DAA4(param0, 0, (1024 - 9), 11, 0, 98);
    Window_Show(param1, 1, (1024 - 9), 11);

    return;
}

void ov106_02243758(Window *param0, int param1)
{
    sub_0200DD0C(param0->unk_00, sub_0201C290(param0), ((1024 - 9) - (18 + 12)), 10, param1, 98);
    BGL_FillWindow(param0, 15);
    sub_0200E060(param0, 0, ((1024 - 9) - (18 + 12)), 10);

    return;
}
