#include "overlay088/ov88_0223E9C4.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "font.h"
#include "game_options.h"
#include "message.h"
#include "message_util.h"
#include "strbuf.h"
#include "text.h"
#include "unk_0200112C.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"

static void ov88_0223EE14(BmpList *param0, u32 param1, u8 param2);

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

void ov88_0223E9C4(BGL *param0, Window *param1, Options *param2)
{
    int v0;

    BGL_AddWindow(param0, &param1[0], 1, 2, 1, 10, 2, 8, 1);
    BGL_FillWindow(&param1[0], 0);

    BGL_AddWindow(param0, &param1[1], 1, 20, 1, 10, 2, 8, (1 + (10 * 2)));
    BGL_FillWindow(&param1[1], 0);

    BGL_AddWindow(param0, &param1[6], 1, 26, 21, 5, 2, 8, ((1 + (10 * 2)) + (10 * 2)));
    BGL_FillWindow(&param1[6], 0);

    sub_0200DD0C(param0, 0, (512 - (9 + (18 + 12))), 10, Options_Frame(param2), 26);
    sub_0200DAA4(param0, 0, (512 - 9), 11, 0, 26);

    BGL_AddWindow(param0, &param1[21], 0, 2, 21, 20, 2, 13, 1);
    BGL_FillWindow(&param1[21], 0);
    BGL_AddWindow(param0, &param1[22], 0, 2, 19, 14, 4, 13, (20 * 2));
    BGL_FillWindow(&param1[22], 0);
    BGL_AddWindow(param0, &param1[23], 0, 2, 19, 27, 4, 13, (14 * 4));
    BGL_FillWindow(&param1[23], 0);

    BGL_AddWindow(param0, &param1[24], 0, 20, 17, 11, 6, 13, ((14 * 4) + (27 * 4)));
    BGL_FillWindow(&param1[24], 0);
    BGL_AddWindow(param0, &param1[25], 0, 20, 19, 11, 4, 13, (((14 * 4) + (27 * 4)) + (11 * 6)));
    BGL_FillWindow(&param1[25], 0);

    for (v0 = 0; v0 < 14; v0++) {
        BGL_AddWindow(param0, &param1[7 + v0], 1, Unk_ov88_0223F170[v0][0], Unk_ov88_0223F170[v0][1], 8, 2, 8, (((1 + (10 * 2)) + (10 * 2)) + (5 * 2)) + v0 * (8 * 2));
        BGL_FillWindow(&param1[7 + v0], 0);
    }

    for (v0 = 0; v0 < 8; v0++) {
        BGL_AddWindow(param0, &param1[26 + v0], 4, Unk_ov88_0223F1A8[v0][0], Unk_ov88_0223F1A8[v0][1], Unk_ov88_0223F1A8[v0][2], Unk_ov88_0223F1A8[v0][3], 8, Unk_ov88_0223F1A8[v0][4]);
        BGL_FillWindow(&param1[26 + v0], 0);
    }
}

void ov88_0223EC04(Window *param0)
{
    int v0;

    for (v0 = 0; v0 < 14; v0++) {
        BGL_DeleteWindow(&param0[7 + v0]);
    }

    for (v0 = 0; v0 < 8; v0++) {
        BGL_DeleteWindow(&param0[26 + v0]);
    }

    BGL_DeleteWindow(&param0[0]);
    BGL_DeleteWindow(&param0[1]);
    BGL_DeleteWindow(&param0[6]);

    BGL_DeleteWindow(&param0[21]);
    BGL_DeleteWindow(&param0[22]);
    BGL_DeleteWindow(&param0[23]);
    BGL_DeleteWindow(&param0[24]);
    BGL_DeleteWindow(&param0[25]);
}

void ov88_0223EC78(Window *param0, Strbuf *param1, int param2, u32 param3, int param4, int param5)
{
    int v0 = 0;

    if (param4 == 1) {
        int v1;

        v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param1, 0);
        v0 = ((param0->unk_07 * 8) - v1) / 2;
    } else {
        v0 = param4;
    }

    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param1, v0, param5, param3, TEXT_COLOR(11, 12, 0), NULL);
}

int ov88_0223ECBC(Window *param0, int param1, int param2, MessageLoader *param3, StringTemplate *param4)
{
    Strbuf *v0;
    int v1;

    v0 = MessageUtil_ExpandedStrbuf(param4, param3, param1, 26);

    if (param2 == 1) {
        sub_0200E060(param0, 0, (512 - (9 + (18 + 12))), 10);
    } else {
        Window_Show(param0, 0, (512 - 9), 11);
    }

    BGL_FillWindow(param0, 15);
    v1 = Text_AddPrinterWithParamsAndColor(param0, param2, v0, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 15), NULL);
    Strbuf_Free(v0);

    return v1;
}

static const UnkStruct_ov61_0222C884 Unk_ov88_0223F148 = {
    0x0,
    0x19,
    0xD,
    0x6,
    0x4,
    0x3,
    0x112
};

u32 ov88_0223ED2C(BGL *param0, UIControlData **param1, int *param2)
{
    u32 v0 = 0xffffffff;

    switch (*param2) {
    case 0:
        *param1 = sub_02002100(param0, &Unk_ov88_0223F148, (512 - 9), 11, 26);
        (*param2)++;
        break;
    case 1:
        v0 = sub_02002114(*param1, 26);

        if (v0 != 0xffffffff) {
            (*param2) = 0;
        }
    }

    return v0;
}

void ov88_0223ED80(Window *param0)
{
    Window_Show(param0, 0, (512 - 9), 11);
}

static const UnkStruct_ov84_02240FA8 Unk_ov88_0223F150 = {
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

BmpList *ov88_0223ED94(ResourceMetadata *param0, int param1, Window *param2, BGL *param3)
{
    BmpList *v0;
    UnkStruct_ov84_02240FA8 v1;
    int v2 = 5;

    BGL_AddWindow(param3, param2, 0, 19, 1, 12, v2 * 2, 13, (512 - (9 + (18 + 12))) - (10 * (v2 + 2) * 2));
    Window_Show(param2, 0, (512 - 9), 11);

    v1 = Unk_ov88_0223F150;
    v1.unk_10 = param1 + 1;
    v1.unk_12 = v2;
    v1.unk_00 = param0;
    v1.unk_0C = param2;
    v1.unk_04 = ov88_0223EE14;
    v0 = sub_0200112C(&v1, 0, 0, 26);

    return v0;
}

static void ov88_0223EE14(BmpList *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(1500);
    }
}
