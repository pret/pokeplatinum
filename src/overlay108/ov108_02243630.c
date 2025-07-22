#include "overlay108/ov108_02243630.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"

void ov108_02243630(BgConfig *param0, Window *param1);
void ov108_02243660(Window *param0);

static const WindowTemplate Unk_ov108_02243774[] = {
    { 0x1, 0x2, 0x13, 0x1B, 0x4, 0xC, 0x1 },
    { 0x1, 0x18, 0xD, 0x7, 0x4, 0xD, 0x6D }
};

void ov108_02243630(BgConfig *param0, Window *param1) {
    u8 v0;
    const WindowTemplate *v1 = Unk_ov108_02243774;

    for (v0 = 0; v0 < 2; v0++) {
        Window_AddFromTemplate(param0, &param1[v0], &v1[v0]);
        Window_FillTilemap(&param1[v0], 0);
    }

    return;
}

void ov108_02243660(Window *param0) {
    u16 v0;

    for (v0 = 0; v0 < 2; v0++) {
        Window_Remove(&param0[v0]);
    }

    return;
}
