#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02073C74_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208D7BC.h"
#include "struct_defs/struct_02090800.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "unk_0207A274.h"
#include "unk_0208C324.h"
#include "unk_0208EA44.h"
#include "unk_0208FCF8.h"
#include "unk_020923C0.h"
#include "unk_02092494.h"
#include "unk_02094EDC.h"

static void sub_020900D8(UnkStruct_0208D7BC * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3);
static void sub_02090158(UnkStruct_0208D7BC * param0, u32 param1, u32 param2, u32 param3, u32 param4);
static void sub_020902B0(UnkStruct_0208D7BC * param0);
static void sub_02091188(UnkStruct_0208D7BC * param0, u32 param1);
static void sub_02090578(UnkStruct_0208D7BC * param0);
static void sub_020908CC(UnkStruct_0208D7BC * param0);
static void sub_0209093C(UnkStruct_0208D7BC * param0);
static void sub_02090BDC(UnkStruct_0208D7BC * param0);
static void sub_02090CD4(UnkStruct_0208D7BC * param0);
static void sub_02090D90(UnkStruct_0208D7BC * param0);
static void sub_02090E4C(UnkStruct_0208D7BC * param0);
static void sub_02090EC8(UnkStruct_0208D7BC * param0);

static const UnkStruct_ov61_0222C884 Unk_020F4ED0[] = {
    {0x1, 0x1, 0x0, 0xD, 0x2, 0xF, 0x1},
    {0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1B},
    {0x1, 0x1, 0x0, 0xE, 0x2, 0xF, 0x31},
    {0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x4D},
    {0x1, 0x1, 0x0, 0x9, 0x2, 0xF, 0x63},
    {0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x75},
    {0x1, 0x1, 0x14, 0x6, 0x2, 0xF, 0x8B},
    {0x1, 0xE, 0x5, 0x9, 0x2, 0xF, 0x97},
    {0x1, 0xE, 0x7, 0x5, 0x2, 0xF, 0xA9},
    {0x1, 0xE, 0x9, 0x5, 0x2, 0xF, 0xB3},
    {0x1, 0xE, 0xB, 0x5, 0x2, 0xF, 0xBD},
    {0x1, 0xE, 0xD, 0x5, 0x2, 0xF, 0xC7},
    {0x1, 0xE, 0xF, 0xF, 0x2, 0xF, 0xD1},
    {0x1, 0xE, 0x13, 0xC, 0x2, 0xF, 0xEF},
    {0x1, 0x13, 0x15, 0x3, 0x2, 0xF, 0x107},
    {0x1, 0x12, 0x4, 0x2, 0x2, 0xF, 0x10D},
    {0x1, 0x10, 0x7, 0x6, 0x2, 0xF, 0x111},
    {0x1, 0x10, 0x9, 0x6, 0x2, 0xF, 0x11D},
    {0x1, 0x10, 0xB, 0x6, 0x2, 0xF, 0x129},
    {0x1, 0x10, 0xD, 0x6, 0x2, 0xF, 0x135},
    {0x1, 0x10, 0xF, 0x6, 0x2, 0xF, 0x141},
    {0x1, 0xE, 0x12, 0x6, 0x2, 0xF, 0x14D},
    {0x1, 0xE, 0x14, 0x5, 0x2, 0xF, 0x159},
    {0x1, 0x1, 0x16, 0x6, 0x2, 0xF, 0x163},
    {0x1, 0x15, 0x14, 0x5, 0x2, 0xF, 0x16F},
    {0x1, 0x1, 0x8, 0x6, 0x2, 0xF, 0x179},
    {0x1, 0x1, 0xA, 0x6, 0x2, 0xF, 0x185},
    {0x1, 0x1, 0xC, 0x8, 0x2, 0xF, 0x191},
    {0x1, 0x12, 0xB, 0x9, 0x2, 0xF, 0x1A1},
    {0x1, 0x2, 0xD, 0xC, 0x2, 0xF, 0x1B3},
    {0x1, 0xE, 0x15, 0xC, 0x2, 0xF, 0x1CB},
    {0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1E3},
    {0x1, 0x1, 0x16, 0xC, 0x2, 0xF, 0x1F9},
    {0x1, 0x1, 0x5, 0x6, 0x2, 0xF, 0x211},
    {0x1, 0x3, 0x3, 0x9, 0x2, 0xF, 0x21D},
    {0x1, 0x1A, 0x0, 0x6, 0x2, 0xF, 0x22F}
};

static const UnkStruct_ov61_0222C884 Unk_020F4E20[] = {
    {0x1, 0x18, 0x5, 0x6, 0x2, 0xF, 0x23B},
    {0x1, 0x17, 0x7, 0x8, 0x2, 0xF, 0x247},
    {0x1, 0x17, 0xB, 0x8, 0x2, 0xF, 0x257},
    {0x1, 0x19, 0xD, 0x4, 0x2, 0xF, 0x267},
    {0x1, 0x18, 0x11, 0x6, 0x2, 0xF, 0x271},
    {0x1, 0x18, 0x15, 0x6, 0x2, 0xF, 0x27F}
};

static const UnkStruct_ov61_0222C884 Unk_020F4DB0[] = {
    {0x1, 0xE, 0x5, 0x11, 0x12, 0xF, 0x23B}
};

static const UnkStruct_ov61_0222C884 Unk_020F4E50[] = {
    {0x1, 0x17, 0x4, 0x7, 0x2, 0xF, 0x23B},
    {0x1, 0x19, 0x7, 0x3, 0x2, 0xF, 0x249},
    {0x1, 0x19, 0x9, 0x3, 0x2, 0xF, 0x24F},
    {0x1, 0x19, 0xB, 0x3, 0x2, 0xF, 0x255},
    {0x1, 0x19, 0xD, 0x3, 0x2, 0xF, 0x25B},
    {0x1, 0x19, 0xF, 0x3, 0x2, 0xF, 0x261},
    {0x1, 0x15, 0x12, 0xB, 0x2, 0xF, 0x267},
    {0x1, 0xE, 0x14, 0x12, 0x4, 0xF, 0x27D}
};

static const UnkStruct_ov61_0222C884 Unk_020F4E90[] = {
    {0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B},
    {0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267},
    {0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293},
    {0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF},
    {0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB},
    {0x1, 0xC, 0xA, 0x3, 0x2, 0xF, 0x317},
    {0x1, 0xC, 0xC, 0x3, 0x2, 0xF, 0x31D},
    {0x1, 0x1, 0xE, 0xF, 0xA, 0xF, 0x323}
};

static const UnkStruct_ov61_0222C884 Unk_020F4DF0[] = {
    {0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B},
    {0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267},
    {0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293},
    {0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF},
    {0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB},
    {0x1, 0x1, 0x12, 0xF, 0x6, 0xF, 0x317}
};

static const UnkStruct_ov61_0222C884 Unk_020F4DD0[] = {
    {0x1, 0x1A, 0x15, 0x5, 0x2, 0xF, 0x23B},
    {0x1, 0x18, 0xF, 0x7, 0x2, 0xF, 0x245},
    {0x1, 0x1, 0x12, 0x15, 0x2, 0xF, 0x253},
    {0x1, 0x1, 0x14, 0x1E, 0x4, 0xF, 0x27D}
};

static const UnkStruct_ov61_0222C884 Unk_020F4DB8[] = {
    {0x1, 0x1A, 0x0, 0x5, 0x2, 0xF, 0x23B},
    {0x1, 0x1, 0x14, 0xC, 0x4, 0xF, 0x24D},
    {0x1, 0x2, 0x15, 0x1B, 0x2, 0xE, 0x27D}
};

void sub_0208FCF8 (UnkStruct_0208D7BC * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 36; v0++) {
        sub_0201A8D4(param0->unk_00, &param0->unk_04[v0], &Unk_020F4ED0[v0]);
        sub_0201ADA4(&param0->unk_04[v0], 0);
    }

    sub_020902B0(param0);
    sub_0208FEA4(param0);
    sub_0208FF3C(param0);
    sub_0208FFE0(param0);
}

void sub_0208FD40 (UnkStruct_0208D7BC * param0)
{
    const UnkStruct_ov61_0222C884 * v0;
    u32 v1;

    switch (param0->unk_6A4) {
    case 0:
        v0 = Unk_020F4E20;
        param0->unk_248 = 6;
        break;
    case 1:
        v0 = Unk_020F4DB0;
        param0->unk_248 = 1;
        break;
    case 2:
        v0 = Unk_020F4E50;
        param0->unk_248 = 8;
        break;
    case 3:
        v0 = Unk_020F4E90;
        param0->unk_248 = 8;
        break;
    case 5:
        v0 = Unk_020F4DF0;
        param0->unk_248 = 6;
        break;
    case 6:
        v0 = Unk_020F4DD0;
        param0->unk_248 = 4;
        break;
    case 4:
    case 7:
        if ((param0->unk_24C->unk_12 != 3) && (param0->unk_24C->unk_12 != 4)) {
            return;
        }

        v0 = Unk_020F4DB8;
        param0->unk_248 = 3;
        break;
    default:
        return;
    }

    param0->unk_244 = sub_0201A778(19, param0->unk_248);

    for (v1 = 0; v1 < param0->unk_248; v1++) {
        sub_0201A8D4(param0->unk_00, &param0->unk_244[v1], &v0[v1]);
    }
}

void sub_0208FE34 (UnkStruct_0208D7BC * param0)
{
    switch (param0->unk_6A4) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
        break;
    case 4:
    case 7:
        if ((param0->unk_24C->unk_12 != 3) && (param0->unk_24C->unk_12 != 4)) {
            return;
        }
        break;
    default:
        return;
    }

    sub_0201A928(param0->unk_244, param0->unk_248);
}

void sub_0208FE88 (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    sub_0208FE34(param0);

    for (v0 = 0; v0 < 36; v0++) {
        sub_0201A8FC(&param0->unk_04[v0]);
    }
}

void sub_0208FEA4 (UnkStruct_0208D7BC * param0)
{
    UnkStruct_0205AA50 * v0;
    u32 v1;

    v0 = &param0->unk_04[34];

    sub_0201ADA4(v0, 0);
    sub_0201D78C(v0, 0, param0->unk_250.unk_04, 0, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    if (param0->unk_250.unk_12_7 == 0) {
        if (param0->unk_250.unk_13_0 == 0) {
            sub_0200B1B8(param0->unk_688, 1, param0->unk_694);
            sub_020900D8(param0, v0, ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
        } else if (param0->unk_250.unk_13_0 == 1) {
            sub_0200B1B8(param0->unk_688, 2, param0->unk_694);
            sub_020900D8(param0, v0, ((u32)(((5 & 0xff) << 16) | ((6 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
        }
    }

    sub_0201A9A4(v0);
}

void sub_0208FF3C (UnkStruct_0208D7BC * param0)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;

    v0 = &param0->unk_04[33];

    sub_0201ADA4(v0, 0);

    if (param0->unk_250.unk_50_28 == 0) {
        sub_0200C578(param0->unk_684, 1, v0, 0, 5);

        v1 = sub_0200B1EC(param0->unk_688, 3);

        sub_0200B60C(param0->unk_690, 0, param0->unk_250.unk_12_0, 3, 0, 1);
        sub_0200C388(param0->unk_690, param0->unk_694, v1);
        PLString_Free(v1);
        sub_0201D78C(v0, 0, param0->unk_694, 16, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    sub_0201A9A4(v0);
}

void sub_0208FFE0 (UnkStruct_0208D7BC * param0)
{
    PLString * v0;

    sub_0201ADA4(&param0->unk_04[32], 0);

    if (param0->unk_250.unk_0E != 0) {
        sub_0200B70C(param0->unk_690, 0, param0->unk_250.unk_0E);
        v0 = sub_0200B1EC(param0->unk_688, 5);
        sub_0200C388(param0->unk_690, param0->unk_694, v0);
        PLString_Free(v0);
    } else {
        sub_0200B1B8(param0->unk_688, 6, param0->unk_694);
    }

    sub_020900D8(param0, &param0->unk_04[32], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0201A9A4(&param0->unk_04[6]);
    sub_0201A9A4(&param0->unk_04[32]);
}

void sub_02090064 (UnkStruct_0208D7BC * param0, u32 param1)
{
    sub_0201ADA4(&param0->unk_04[35], 0);
    sub_02090158(param0, 35, param1, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0201A9A4(&param0->unk_04[35]);
}

static BOOL sub_02090098 (UnkStruct_0208D7BC * param0)
{
    if ((param0->unk_250.unk_14 == param0->unk_24C->unk_0C) && (param0->unk_250.unk_44 == param0->unk_24C->unk_10) && (PLString_Compare(param0->unk_250.unk_08, param0->unk_698) == 0)) {
        return 1;
    }

    return 0;
}

static void sub_020900D8 (UnkStruct_0208D7BC * param0, UnkStruct_0205AA50 * param1, u32 param2, u32 param3)
{
    u8 v0;
    u8 v1;
    u8 v2;

    switch (param3) {
    case 0:
        v2 = 0;
        break;
    case 1:
        v0 = sub_02002D7C(0, param0->unk_694, 0);
        v1 = sub_0201C294(param1) * 8;
        v2 = v1 - v0;
        break;
    case 2:
        v0 = sub_02002D7C(0, param0->unk_694, 0);
        v1 = sub_0201C294(param1) * 8;
        v2 = (v1 - v0) / 2;
        break;
    }

    sub_0201D78C(param1, 0, param0->unk_694, v2, 0, 0xff, param2, NULL);
}

static void sub_02090158 (UnkStruct_0208D7BC * param0, u32 param1, u32 param2, u32 param3, u32 param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    sub_0200B1B8(param0->unk_688, param2, param0->unk_694);
    sub_020900D8(param0, &param0->unk_04[param1], param3, param4);
}

static void sub_02090184 (UnkStruct_0208D7BC * param0, u32 param1, u32 param2, u8 param3, u8 param4)
{
    PLString * v0;

    v0 = sub_0200B1EC(param0->unk_688, param1);
    sub_0200B60C(param0->unk_690, 0, param2, param3, param4, 1);
    sub_0200C388(param0->unk_690, param0->unk_694, v0);
    PLString_Free(v0);
}

static void sub_020901D0 (UnkStruct_0208D7BC * param0, u32 param1, u32 param2, u32 param3, u32 param4, u16 param5, u16 param6, u8 param7, u8 param8, u8 param9)
{
    UnkStruct_0205AA50 * v0;
    u32 v1;
    u16 v2;
    u16 v3;

    v0 = &param0->unk_244[param1];

    sub_0200B1B8(param0->unk_688, param2, param0->unk_694);
    v1 = sub_02002D7C(0, param0->unk_694, 0);
    v2 = param8 - v1 / 2;
    v3 = v2 + v1;

    sub_0201D78C(v0, 0, param0->unk_694, v2, param9, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    sub_02090184(param0, param3, param5, param7, 0);

    v1 = sub_02002D7C(0, param0->unk_694, 0);

    sub_0201D78C(v0, 0, param0->unk_694, v2 - v1, param9, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    sub_02090184(param0, param4, param6, param7, 0);
    sub_0201D78C(v0, 0, param0->unk_694, v3, param9, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
}

static void sub_020902B0 (UnkStruct_0208D7BC * param0)
{
    sub_02090158(param0, 0, 7, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 1, 23, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 2, 109, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 3, 126, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 4, 128, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 5, 157, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 6, 4, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 7, 8, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 8, 10, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 9, 12, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 10, 13, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 11, 15, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 12, 17, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 13, 19, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 15, 110, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 16, 111, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 17, 112, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 18, 113, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 19, 114, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 20, 115, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 21, 116, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 22, 127, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);

    {
        sub_0200B1B8(param0->unk_688, 146, param0->unk_694);
        sub_0201D78C(&param0->unk_04[24], 0, param0->unk_694, 0, 2, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    sub_02090158(param0, 25, 149, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 26, 147, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 27, 148, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 28, 162, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    sub_02090158(param0, 29, 160, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    sub_02090158(param0, 30, 182, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_02090158(param0, 31, 179, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
}

void sub_020904C4 (UnkStruct_0208D7BC * param0)
{
    sub_02019CB8(param0->unk_00, 1, 0, 0, 0, 32, 2, 16);
    sub_02019CB8(param0->unk_00, 1, 0, 14, 2, 18, 22, 16);

    switch (param0->unk_6A4) {
    case 0:
        sub_02090578(param0);
        break;
    case 1:
        sub_020908CC(param0);
        break;
    case 2:
        sub_0209093C(param0);
        break;
    case 4:
        sub_02090BDC(param0);
        break;
    case 3:
        sub_02090CD4(param0);
        break;
    case 5:
        sub_02090D90(param0);
        break;
    case 6:
        sub_02090E4C(param0);
        break;
    case 7:
        sub_02090EC8(param0);
        break;
    }
}

static void sub_02090578 (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[0]);
    sub_0201A9A4(&param0->unk_04[7]);
    sub_0201A9A4(&param0->unk_04[8]);
    sub_0201A9A4(&param0->unk_04[9]);
    sub_0201A9A4(&param0->unk_04[10]);
    sub_0201A9A4(&param0->unk_04[11]);
    sub_0201A9A4(&param0->unk_04[12]);
    sub_0201A9A4(&param0->unk_04[13]);
    sub_0201A9A4(&param0->unk_04[14]);

    sub_0201ADA4(&param0->unk_244[0], 0);
    sub_0201ADA4(&param0->unk_244[1], 0);
    sub_0201ADA4(&param0->unk_244[2], 0);
    sub_0201ADA4(&param0->unk_244[3], 0);
    sub_0201ADA4(&param0->unk_244[4], 0);
    sub_0201ADA4(&param0->unk_244[5], 0);

    {
        u32 v0 = sub_0207A294(param0->unk_24C->unk_1C, param0->unk_250.unk_0C);

        if (v0 != 0) {
            sub_02090184(param0, 9, v0, 3, 2);
        } else {
            sub_0200B1B8(param0->unk_688, 22, param0->unk_694);
        }
    }

    if (param0->unk_250.unk_50_29 == 0) {
        sub_020900D8(param0, &param0->unk_244[0], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    } else {
        sub_020900D8(param0, &param0->unk_244[0], ((u32)(((5 & 0xff) << 16) | ((6 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    }

    {
        u32 v1 = sub_02002D7C(0, param0->unk_250.unk_00, 0);
        u32 v2 = (param0->unk_244[1].unk_07 * 8 - v1) / 2;

        sub_0201D78C(&param0->unk_244[1], 0, param0->unk_250.unk_00, v2, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    {
        u32 v3 = sub_02002D7C(0, param0->unk_250.unk_08, 0);
        u32 v4 = (param0->unk_244[2].unk_07 * 8 - v3) / 2;

        if (param0->unk_250.unk_44 == 0) {
            sub_0201D78C(
                &param0->unk_244[2], 0, param0->unk_250.unk_08, v4, 0, 0xff, ((u32)(((3 & 0xff) << 16) | ((4 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
        } else {
            sub_0201D78C(
                &param0->unk_244[2], 0, param0->unk_250.unk_08, v4, 0, 0xff, ((u32)(((5 & 0xff) << 16) | ((6 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
        }
    }

    sub_02090184(param0, 16, (param0->unk_250.unk_14 & 0xffff), 5, 2);
    sub_020900D8(param0, &param0->unk_244[3], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    sub_02090184(param0, 18, param0->unk_250.unk_18, 7, 1);
    sub_020900D8(param0, &param0->unk_244[4], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);

    if (param0->unk_250.unk_12_0 < 100) {
        sub_02090184(param0, 21, param0->unk_250.unk_20 - param0->unk_250.unk_18, 7, 1);
    } else {
        sub_02090184(param0, 21, 0, 7, 1);
    }

    sub_020900D8(param0, &param0->unk_244[5], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);
    sub_0201A9A4(&param0->unk_244[0]);
    sub_0201A9A4(&param0->unk_244[1]);
    sub_0201A9A4(&param0->unk_244[2]);
    sub_0201A9A4(&param0->unk_244[3]);
    sub_0201A9A4(&param0->unk_244[4]);
    sub_0201A9A4(&param0->unk_244[5]);
}

static void sub_02090800 (UnkStruct_0205AA50 * param0, UnkStruct_02073C74 * param1, BOOL param2)
{
    UnkStruct_02090800 * v0 = sub_02092494(param1, param2, 19);

    if (v0->unk_14.unk_04 != NULL) {
        sub_0201D78C(param0, 0, v0->unk_14.unk_04, 0, 0 + (v0->unk_14.unk_00 - 1) * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    if (v0->unk_1C.unk_04 != NULL) {
        sub_0201D78C(param0, 0, v0->unk_1C.unk_04, 0, 0 + (v0->unk_1C.unk_00 - 1) * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    if (v0->unk_24.unk_04 != NULL) {
        sub_0201D78C(param0, 0, v0->unk_24.unk_04, 0, 0 + (v0->unk_24.unk_00 - 1) * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    if (v0->unk_2C.unk_04 != NULL) {
        sub_0201D78C(param0, 0, v0->unk_2C.unk_04, 0, 0 + (v0->unk_2C.unk_00 - 1) * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    if (v0->unk_34.unk_04 != NULL) {
        sub_0201D78C(param0, 0, v0->unk_34.unk_04, 0, 0 + (v0->unk_34.unk_00 - 1) * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }

    sub_0209282C(v0);
}

static void sub_020908CC (UnkStruct_0208D7BC * param0)
{
    PLString * v0;

    sub_0201A9A4(&param0->unk_04[1]);
    sub_0201ADA4(&param0->unk_244[0], 0);

    {
        void * v1 = sub_0208DD48(param0);
        BOOL v2 = sub_02090098(param0);

        if (param0->unk_24C->unk_11 == 2) {
            {
                UnkStruct_02073C74 * v3 = sub_02073C74(19);

                sub_020774C8(v1, v3);
                sub_02090800(&param0->unk_244[0], v3, v2);
                Heap_FreeToHeap(v3);
            }
        } else {
            sub_02090800(&param0->unk_244[0], v1, v2);
        }
    }

    sub_0201A9A4(&param0->unk_244[0]);
}

static void sub_0209093C (UnkStruct_0208D7BC * param0)
{
    u32 v0;

    sub_0201A9A4(&param0->unk_04[2]);
    sub_0201A9A4(&param0->unk_04[15]);
    sub_0201A9A4(&param0->unk_04[16]);
    sub_0201A9A4(&param0->unk_04[17]);
    sub_0201A9A4(&param0->unk_04[18]);
    sub_0201A9A4(&param0->unk_04[19]);
    sub_0201A9A4(&param0->unk_04[20]);
    sub_0201A9A4(&param0->unk_04[21]);

    sub_0201ADA4(&param0->unk_244[0], 0);
    sub_0201ADA4(&param0->unk_244[1], 0);
    sub_0201ADA4(&param0->unk_244[2], 0);
    sub_0201ADA4(&param0->unk_244[3], 0);
    sub_0201ADA4(&param0->unk_244[4], 0);
    sub_0201ADA4(&param0->unk_244[5], 0);
    sub_0201ADA4(&param0->unk_244[6], 0);
    sub_0201ADA4(&param0->unk_244[7], 0);

    v0 = sub_0201C294(&param0->unk_244[0]) * 8;

    sub_020901D0(param0, 0, 117, 119, 118, param0->unk_250.unk_24, param0->unk_250.unk_26, 3, v0 / 2, 0);
    sub_02090184(param0, 120, param0->unk_250.unk_28, 3, 0);
    sub_020900D8(param0, &param0->unk_244[1], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
    sub_02090184(param0, 121, param0->unk_250.unk_2A, 3, 0);
    sub_020900D8(param0, &param0->unk_244[2], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
    sub_02090184(param0, 122, param0->unk_250.unk_2C, 3, 0);
    sub_020900D8(param0, &param0->unk_244[3], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
    sub_02090184(param0, 123, param0->unk_250.unk_2E, 3, 0);
    sub_020900D8(param0, &param0->unk_244[4], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);
    sub_02090184(param0, 124, param0->unk_250.unk_30, 3, 0);
    sub_020900D8(param0, &param0->unk_244[5], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 1);

    {
        UnkStruct_0200B144 * v1;
        PLString * v2;

        sub_0200B6A0(param0->unk_690, 0, param0->unk_250.unk_32);

        v2 = sub_0200B1EC(param0->unk_688, 125);
        sub_0200C388(param0->unk_690, param0->unk_694, v2);
        PLString_Free(v2);
        sub_020900D8(param0, &param0->unk_244[6], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);

        v1 = sub_0200B144(1, 26, 612, 19);
        sub_0200B1B8(v1, param0->unk_250.unk_32, param0->unk_694);
        sub_0200B190(v1);
        sub_020900D8(param0, &param0->unk_244[7], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    }

    sub_0201A9A4(&param0->unk_244[0]);
    sub_0201A9A4(&param0->unk_244[1]);
    sub_0201A9A4(&param0->unk_244[2]);
    sub_0201A9A4(&param0->unk_244[3]);
    sub_0201A9A4(&param0->unk_244[4]);
    sub_0201A9A4(&param0->unk_244[5]);
    sub_0201A9A4(&param0->unk_244[6]);
    sub_0201A9A4(&param0->unk_244[7]);
}

static void sub_02090BDC (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[3]);
    sub_0201A9A4(&param0->unk_04[22]);

    if ((param0->unk_24C->unk_12 != 3) && (param0->unk_24C->unk_12 != 4)) {
        return;
    }

    sub_0201ADA4(&param0->unk_244[1], 0);
    sub_0200B1B8(param0->unk_688, 165, param0->unk_694);
    sub_020900D8(param0, &param0->unk_244[1], ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0200B1B8(param0->unk_688, 166 + param0->unk_250.unk_4B, param0->unk_694);
    sub_0201D78C(&param0->unk_244[1], 0, param0->unk_694, 0, 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    sub_0201A9A4(&param0->unk_244[1]);

    if (param0->unk_24C->unk_12 == 3) {
        sub_0201ADA4(&param0->unk_244[0], 0);
        sub_0200B1B8(param0->unk_688, 163, param0->unk_694);
        sub_020900D8(param0, &param0->unk_244[0], ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
        sub_0201A9A4(&param0->unk_244[0]);
        sub_0208F6DC(param0, &param0->unk_244[0]);
    }
}

static void sub_02090CD4 (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[4]);

    if (param0->unk_24C->unk_12 == 2) {
        sub_02090064(param0, 155);
    } else {
        sub_02090064(param0, 129);
    }

    sub_0208F6DC(param0, &param0->unk_04[35]);

    sub_0201ADA4(&param0->unk_244[0], 0);
    sub_0201ADA4(&param0->unk_244[1], 0);
    sub_0201ADA4(&param0->unk_244[2], 0);
    sub_0201ADA4(&param0->unk_244[3], 0);

    sub_02091188(param0, 0);
    sub_02091188(param0, 1);
    sub_02091188(param0, 2);
    sub_02091188(param0, 3);

    sub_0201A9A4(&param0->unk_244[0]);
    sub_0201A9A4(&param0->unk_244[1]);
    sub_0201A9A4(&param0->unk_244[2]);
    sub_0201A9A4(&param0->unk_244[3]);
}

static void sub_02090D90 (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[5]);

    if (param0->unk_24C->unk_12 == 2) {
        sub_02090064(param0, 159);
    } else {
        sub_02090064(param0, 158);
    }

    sub_0208F6DC(param0, &param0->unk_04[35]);

    sub_0201ADA4(&param0->unk_244[0], 0);
    sub_0201ADA4(&param0->unk_244[1], 0);
    sub_0201ADA4(&param0->unk_244[2], 0);
    sub_0201ADA4(&param0->unk_244[3], 0);

    sub_02091188(param0, 0);
    sub_02091188(param0, 1);
    sub_02091188(param0, 2);
    sub_02091188(param0, 3);

    sub_0201A9A4(&param0->unk_244[0]);
    sub_0201A9A4(&param0->unk_244[1]);
    sub_0201A9A4(&param0->unk_244[2]);
    sub_0201A9A4(&param0->unk_244[3]);
}

static void sub_02090E4C (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[31]);
    sub_0201A9A4(&param0->unk_04[30]);

    sub_0201ADA4(&param0->unk_244[0], 0);
    sub_02090184(param0, 183, param0->unk_6B1, 3, 0);
    sub_020900D8(param0, &param0->unk_244[0], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0201A9A4(&param0->unk_244[0]);

    if (param0->unk_6B1 != 0) {
        sub_02090064(param0, 180);
        sub_0208F6DC(param0, &param0->unk_04[35]);
    }
}

static void sub_02090EC8 (UnkStruct_0208D7BC * param0)
{
    sub_0201A9A4(&param0->unk_04[28]);
    sub_02090064(param0, 161);
    sub_0208F6DC(param0, &param0->unk_04[35]);

    if ((param0->unk_24C->unk_12 != 3) && (param0->unk_24C->unk_12 != 4)) {
        return;
    }

    sub_0201ADA4(&param0->unk_244[1], 0);

    sub_0200B1B8(param0->unk_688, 165, param0->unk_694);
    sub_020900D8(param0, &param0->unk_244[1], ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);

    sub_0200B1B8(param0->unk_688, 166 + param0->unk_250.unk_4B, param0->unk_694);
    sub_0201D78C(&param0->unk_244[1], 0, param0->unk_694, 0, 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    sub_0201A9A4(&param0->unk_244[1]);
}

void sub_02090F84 (UnkStruct_0208D7BC * param0)
{
    PLString * v0;
    u8 v1;
    u8 v2;

    sub_0201ADA4(&param0->unk_244[1], 0);

    v0 = sub_0200B1EC(param0->unk_688, 186);

    sub_0200B60C(param0->unk_690, 0, param0->unk_6B1, 3, 0, 1);
    sub_0200C388(param0->unk_690, param0->unk_694, v0);
    PLString_Free(v0);

    v2 = sub_02002D7C(0, param0->unk_694, 0);
    v1 = 7 * 8 - v2;

    sub_0201D78C(&param0->unk_244[1], 0, param0->unk_694, v1, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    v0 = sub_0200B1EC(param0->unk_688, 185);
    v2 = sub_02002D7C(0, v0, 0);
    v1 -= v2;

    sub_0201D78C(&param0->unk_244[1], 0, v0, v1, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);

    v0 = sub_0200B1EC(param0->unk_688, 184);

    sub_0200B60C(param0->unk_690, 0, param0->unk_6AF + param0->unk_6B0 * 4 + 1, 3, 0, 1);
    sub_0200C388(param0->unk_690, param0->unk_694, v0);
    PLString_Free(v0);

    v2 = sub_02002D7C(0, param0->unk_694, 0);
    v1 -= v2;

    sub_0201D78C(&param0->unk_244[1], 0, param0->unk_694, v1, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    sub_0201A9A4(&param0->unk_244[1]);
}

void sub_020910E4 (UnkStruct_0208D7BC * param0)
{
    sub_0201ADA4(&param0->unk_244[2], 0);
    sub_0201ADA4(&param0->unk_244[3], 0);

    sub_0200B1B8(param0->unk_68C, sub_020923C0(param0->unk_6B2, 3), param0->unk_694);
    sub_020900D8(param0, &param0->unk_244[2], ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);

    sub_0200B1B8(param0->unk_68C, sub_02092424(param0->unk_24C->unk_20, param0->unk_6B2), param0->unk_694);
    sub_020900D8(param0, &param0->unk_244[3], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);

    sub_0201A9A4(&param0->unk_244[2]);
    sub_0201A9A4(&param0->unk_244[3]);
}

static void sub_02091188 (UnkStruct_0208D7BC * param0, u32 param1)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u32 v2;
    u16 v3;
    u8 v4, v5;

    v0 = &param0->unk_244[0 + param1];

    if (param1 != 4) {
        v3 = param0->unk_250.unk_34[param1];
        v4 = param0->unk_250.unk_3C[param1];
        v5 = param0->unk_250.unk_40[param1];
    } else {
        v3 = param0->unk_24C->unk_18;
        v4 = MoveTable_GetMoveMaxPP(v3, 0);
        v5 = v4;
    }

    sub_0200B1B8(param0->unk_69C, v3, param0->unk_694);
    sub_0201D78C(v0, 0, param0->unk_694, 1, 2, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    if (v3 != 0) {
        sub_0200B1B8(param0->unk_688, 135, param0->unk_694);
        sub_0201D78C(v0, 0, param0->unk_694, 16, 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
        sub_020901D0(param0, 0 + param1, 117, 136 + param1, 141 + param1, v4, v5, 2, (40 + 20), 16);
    } else {
        sub_0200B1B8(param0->unk_688, 153, param0->unk_694);
        v2 = sub_02002D7C(0, param0->unk_694, 0);
        sub_0201D78C(v0, 0, param0->unk_694, (40 + 20) - v2 / 2, 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    }
}

void sub_020912A4 (UnkStruct_0208D7BC * param0, u32 param1)
{
    UnkStruct_0200B144 * v0;
    u32 v1;
    u32 v2;

    sub_0201A9A4(&param0->unk_04[25]);
    sub_0201A9A4(&param0->unk_04[26]);
    sub_0201A9A4(&param0->unk_04[27]);

    sub_0201ADA4(&param0->unk_244[5], 0);
    sub_0201ADA4(&param0->unk_244[6], 0);
    sub_0201ADA4(&param0->unk_244[7], 0);

    v2 = MoveTable_GetMoveAttribute(param1, 2);

    if (v2 <= 1) {
        sub_0200B1B8(param0->unk_688, 154, param0->unk_694);
    } else {
        sub_02090184(param0, 150, v2, 3, 1);
    }

    sub_020900D8(param0, &param0->unk_244[5], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);

    v2 = MoveTable_GetMoveAttribute(param1, 4);

    if (v2 == 0) {
        sub_0200B1B8(param0->unk_688, 154, param0->unk_694);
    } else {
        sub_02090184(param0, 151, v2, 3, 1);
    }

    sub_020900D8(param0, &param0->unk_244[6], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 2);

    v0 = sub_0200B144(1, 26, 646, 19);

    sub_0200B1B8(v0, param1, param0->unk_694);
    sub_020900D8(param0, &param0->unk_244[7], ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0200B190(v0);

    sub_0201A9A4(&param0->unk_244[5]);
    sub_0201A9A4(&param0->unk_244[6]);
    sub_0201A9A4(&param0->unk_244[7]);
}

void sub_020913D8 (UnkStruct_0208D7BC * param0)
{
    sub_0201AD10(&param0->unk_04[25]);
    sub_0201AD10(&param0->unk_04[26]);
    sub_0201AD10(&param0->unk_04[27]);
    sub_0201AD10(&param0->unk_244[5]);
    sub_0201AD10(&param0->unk_244[6]);
    sub_0201AD10(&param0->unk_244[7]);
}

void sub_02091420 (UnkStruct_0208D7BC * param0)
{
    if (param0->unk_24C->unk_18 != 0) {
        sub_0201ADA4(&param0->unk_244[4], 0);
        sub_02091188(param0, 4);
        sub_0201A9A4(&param0->unk_244[4]);
    } else {
        sub_0201A9A4(&param0->unk_04[24]);
    }
}

void sub_0209145C (UnkStruct_0208D7BC * param0)
{
    sub_0201AD10(&param0->unk_04[24]);
    sub_0201C3C0(param0->unk_00, 1);
}

void sub_02091474 (UnkStruct_0208D7BC * param0)
{
    sub_0201ADA4(&param0->unk_244[0 + param0->unk_6A5_0], 0);
    sub_0201ADA4(&param0->unk_244[0 + param0->unk_6A5_4], 0);

    sub_02091188(param0, param0->unk_6A5_0);
    sub_02091188(param0, param0->unk_6A5_4);

    sub_0201A9A4(&param0->unk_244[0 + param0->unk_6A5_0]);
    sub_0201A9A4(&param0->unk_244[0 + param0->unk_6A5_4]);
}

void sub_020914F8 (UnkStruct_0208D7BC * param0)
{
    UnkStruct_0205AA50 * v0;

    if (param0->unk_6A4 == 3) {
        sub_0201AD10(&param0->unk_244[5]);
        sub_0201AD10(&param0->unk_244[6]);
        sub_0201AD10(&param0->unk_244[7]);
        v0 = &param0->unk_244[7];
    } else {
        v0 = &param0->unk_244[5];
    }

    sub_0201ADA4(v0, 0);
    sub_0200B1B8(param0->unk_688, 156, param0->unk_694);
    sub_020900D8(param0, v0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), 0);
    sub_0201A9A4(v0);
}

void sub_02091570 (UnkStruct_0208D7BC * param0, u32 param1)
{
    UnkStruct_0200B144 * v0;
    u32 v1;
    u32 v2;

    sub_0201ADA4(&param0->unk_244[5], 0);

    v1 = MoveTable_GetMoveAttribute(param1, 10);
    v2 = sub_0209577C(v1);
    v0 = sub_0200B144(0, 26, 210, 19);

    sub_0200B1B8(v0, v2, param0->unk_694);
    sub_0201D78C(&param0->unk_244[5], 0, param0->unk_694, 0, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    sub_0200B190(v0);

    sub_0201A9A4(&param0->unk_04[29]);
    sub_0201A9A4(&param0->unk_244[5]);
}

void sub_020915F4 (UnkStruct_0208D7BC * param0)
{
    sub_0201AD10(&param0->unk_04[29]);
    sub_0201AD10(&param0->unk_244[5]);
}

void sub_02091610 (UnkStruct_0208D7BC * param0, u8 param1)
{
    UnkStruct_0205AA50 * v0;
    u32 v1;

    switch (param1) {
    case 0:
        v1 = 172;
        break;
    case 1:
        v1 = 174;
        break;
    case 2:
        v1 = 175;
        break;
    case 3:
        v1 = 176;
        break;
    case 4:
        v1 = 173;
        break;
    case 0xfe:
        v1 = 177;
        break;
    default:
        v1 = 178;
    }

    v0 = &param0->unk_244[2];

    sub_0200E060(v0, 1, (1024 - (18 + 12)), 13);
    sub_0201ADA4(v0, 15);
    sub_0200B1B8(param0->unk_688, v1, param0->unk_694);
    sub_0201D78C(v0, 1, param0->unk_694, 0, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((15 & 0xff) << 0))), NULL);
    sub_0201A9A4(v0);
}
