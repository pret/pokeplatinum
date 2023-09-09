#include <nitro.h>
#include <string.h>

#include "strbuf.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay013/struct_ov13_02227244.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "message.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "strbuf.h"
#include "item.h"
#include "overlay013/ov13_02227288.h"
#include "overlay016/ov16_0223DF00.h"

static void ov13_022273CC(UnkStruct_ov13_02227244 * param0);
static void ov13_02227888(UnkStruct_ov13_02227244 * param0);
static void ov13_02227974(UnkStruct_ov13_02227244 * param0);

static const UnkStruct_ov61_0222C884 Unk_ov13_02229A60 = {
    0x4,
    0x2,
    0x13,
    0x1B,
    0x4,
    0xF,
    0x376
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02229A88[] = {
    {0x4, 0x2, 0x4, 0xC, 0x5, 0x0, 0x2CE},
    {0x4, 0x2, 0xD, 0xC, 0x5, 0x0, 0x30A},
    {0x4, 0x12, 0x5, 0xC, 0x3, 0x0, 0x286},
    {0x4, 0x12, 0xE, 0xC, 0x3, 0x0, 0x2AA},
    {0x4, 0x5, 0x14, 0x14, 0x3, 0x0, 0x24A}
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02229AE0[] = {
    {0x5, 0x1, 0x1, 0xE, 0x3, 0x0, 0x1},
    {0x5, 0x8, 0x4, 0x4, 0x3, 0x4, 0x2B},
    {0x5, 0x11, 0x1, 0xE, 0x3, 0x0, 0x37},
    {0x5, 0x18, 0x4, 0x4, 0x3, 0x4, 0x61},
    {0x5, 0x1, 0x7, 0xE, 0x3, 0x0, 0x6D},
    {0x5, 0x8, 0xA, 0x4, 0x3, 0x4, 0x97},
    {0x5, 0x11, 0x7, 0xE, 0x3, 0x0, 0xA3},
    {0x5, 0x18, 0xA, 0x4, 0x3, 0x4, 0xCD},
    {0x5, 0x1, 0xD, 0xE, 0x3, 0x0, 0xD9},
    {0x5, 0x8, 0x10, 0x4, 0x3, 0x4, 0x103},
    {0x5, 0x11, 0xD, 0xE, 0x3, 0x0, 0x10F},
    {0x5, 0x18, 0x10, 0x4, 0x3, 0x4, 0x139},
    {0x5, 0x1, 0x1, 0xE, 0x3, 0x0, 0x145},
    {0x5, 0x8, 0x4, 0x4, 0x3, 0x4, 0x16F},
    {0x5, 0x11, 0x1, 0xE, 0x3, 0x0, 0x17B},
    {0x5, 0x18, 0x4, 0x4, 0x3, 0x4, 0x1A5},
    {0x5, 0x1, 0x7, 0xE, 0x3, 0x0, 0x1B1},
    {0x5, 0x8, 0xA, 0x4, 0x3, 0x4, 0x1DB},
    {0x5, 0x11, 0x7, 0xE, 0x3, 0x0, 0x1E7},
    {0x5, 0x18, 0xA, 0x4, 0x3, 0x4, 0x211},
    {0x5, 0x1, 0xD, 0xE, 0x3, 0x0, 0x21D},
    {0x5, 0x8, 0x10, 0x4, 0x3, 0x4, 0x247},
    {0x5, 0x11, 0xD, 0xE, 0x3, 0x0, 0x253},
    {0x5, 0x18, 0x10, 0x4, 0x3, 0x4, 0x27D},
    {0x5, 0xB, 0x13, 0xA, 0x5, 0x4, 0x289},
    {0x5, 0x16, 0x14, 0x4, 0x3, 0x4, 0x2BB}
};

static const UnkStruct_ov61_0222C884 Unk_ov13_02229A68[] = {
    {0x5, 0x7, 0x4, 0xC, 0x2, 0x4, 0x2C7},
    {0x5, 0x14, 0x4, 0x4, 0x2, 0x4, 0x2DF},
    {0x5, 0x2, 0x9, 0x1C, 0x6, 0x4, 0x2E7},
    {0x5, 0xA, 0x14, 0x6, 0x3, 0x0, 0x38F}
};

void ov13_02227288 (UnkStruct_ov13_02227244 * param0)
{
    sub_0201A8D4(param0->unk_04, &param0->unk_1C, &Unk_ov13_02229A60);
    ov13_022272AC(param0, param0->unk_114C);
}

void ov13_022272AC (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    const UnkStruct_ov61_0222C884 * v0;
    u8 v1;

    switch (param1) {
    case 0:
        v0 = Unk_ov13_02229A88;
        param0->unk_30 = 5;
        break;
    case 1:
        v0 = Unk_ov13_02229AE0;
        param0->unk_30 = 26;
        break;
    case 2:
        v0 = Unk_ov13_02229A68;
        param0->unk_30 = 4;
        break;
    }

    param0->unk_2C = sub_0201A778(param0->unk_00->unk_0C, param0->unk_30);

    for (v1 = 0; v1 < param0->unk_30; v1++) {
        sub_0201A8D4(param0->unk_04, &param0->unk_2C[v1], &v0[v1]);
    }
}

void ov13_02227324 (UnkStruct_ov13_02227244 * param0)
{
    sub_0201A928(param0->unk_2C, param0->unk_30);
}

void ov13_02227334 (UnkStruct_ov13_02227244 * param0)
{
    u32 v0;

    sub_0201A928(param0->unk_2C, param0->unk_30);
    sub_0201A8FC(&param0->unk_1C);
}

void ov13_02227350 (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    switch (param1) {
    case 0:
        ov13_022273CC(param0);
        break;
    case 1:
        ov13_02227888(param0);
        break;
    case 2:
        ov13_02227974(param0);
        break;
    }
}

static void ov13_02227374 (UnkStruct_ov13_02227244 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    UnkStruct_0205AA50 * v0;
    Strbuf* v1;
    u32 v2;
    u32 v3;

    v0 = &param0->unk_2C[param1];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_10, param2);
    v2 = sub_02002D7C(param3, v1, 0);
    v3 = (sub_0201C294(v0) * 8 - v2) / 2;

    sub_0201D78C(v0, param3, v1, v3, param4, 0xff, param5, NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_022273CC (UnkStruct_ov13_02227244 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0201ADA4(&param0->unk_2C[v0], 0);
    }

    ov13_02227374(param0, 0, 0, 2, 8, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_02227374(param0, 0, 1, 2, 24, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_02227374(param0, 1, 2, 2, 8, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_02227374(param0, 1, 3, 2, 24, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_02227374(param0, 2, 7, 2, 8, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_02227374(param0, 3, 6, 2, 8, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));

    if (param0->unk_00->unk_20 != 0) {
        Strbuf* v1 = MessageLoader_GetNewStrbuf(param0->unk_10, 8);

        sub_0201D78C(&param0->unk_2C[4], 2, v1, 0, 6, 0xff, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))), NULL);
        Strbuf_Free(v1);
        sub_0201A9A4(&param0->unk_2C[4]);
    }
}

static const u32 Unk_ov13_02229AB0[][2] = {
    {0x9, 0xA},
    {0xB, 0xC},
    {0xD, 0xE},
    {0xF, 0x10},
    {0x11, 0x12},
    {0x13, 0x14}
};

static void ov13_022274A8 (UnkStruct_ov13_02227244 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    UnkStruct_0205AA50 * v0;
    Strbuf* v1;
    u32 v2;
    u32 v3;

    v0 = &param0->unk_2C[param3];

    sub_0201ADA4(v0, 0);

    if (param0->unk_3C[param0->unk_114D][param1].item != 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_10, Unk_ov13_02229AB0[param2][0]);

        sub_0200B70C(param0->unk_14, 0, param0->unk_3C[param0->unk_114D][param1].item);
        sub_0200C388(param0->unk_14, param0->unk_18, v1);

        v2 = sub_02002D7C(param4, param0->unk_18, 0);
        v3 = (sub_0201C294(v0) * 8 - v2) / 2;

        sub_0201D78C(v0, param4, param0->unk_18, v3, 8, 0xff, param5, NULL);
        Strbuf_Free(v1);
    }

    sub_0201A9A4(v0);
}

static void ov13_0222754C (UnkStruct_ov13_02227244 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    Strbuf* v0;
    UnkStruct_0205AA50 * v1;

    v1 = &param0->unk_2C[param3];

    sub_0201ADA4(v1, 0);

    if (param0->unk_3C[param0->unk_114D][param1].quantity != 0) {
        v0 = MessageLoader_GetNewStrbuf(param0->unk_10, Unk_ov13_02229AB0[param2][1]);

        sub_0200B60C(param0->unk_14, 0, param0->unk_3C[param0->unk_114D][param1].quantity, 3, 0, 1);
        sub_0200C388(param0->unk_14, param0->unk_18, v0);
        sub_0201D78C(v1, param4, param0->unk_18, 0, param5, 0xff, param6, NULL);
        Strbuf_Free(v0);
    }

    sub_0201A9A4(v1);
}

static void ov13_022275E0 (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    u32 v0;
    u32 v1;

    v1 = param0->unk_00->unk_2C[param0->unk_114D] * 6 + param1;

    if (param0->unk_31 == 0) {
        v0 = 0;
    } else {
        v0 = 12;
    }

    ov13_022274A8(param0, v1, param1, v0 + param1 * 2, 2, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
    ov13_0222754C(param0, v1, param1, v0 + 1 + param1 * 2, 0, 4, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))));
}

void ov13_02227650 (UnkStruct_ov13_02227244 * param0)
{
    u16 v0;

    sub_02019CB8(param0->unk_04, 5, 0, 0, 0, 32, 19, 17);

    for (v0 = 0; v0 < 6; v0++) {
        ov13_022275E0(param0, v0);
    }

    param0->unk_31 ^= 1;
}

void ov13_02227698 (UnkStruct_ov13_02227244 * param0)
{
    UnkStruct_0205AA50 * v0;
    Strbuf* v1;
    u32 v2;
    u32 v3;

    sub_0201ADA4(&param0->unk_2C[25], 0);

    v0 = &param0->unk_2C[25];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_10, 28);
    v2 = sub_02002D7C(0, v1, 0);
    v3 = (sub_0201C294(v0) * 8 - v2) / 2;

    sub_0201D78C(v0, 0, v1, v3, 4, 0xff, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_10, 29);
    sub_0200B60C(param0->unk_14, 0, param0->unk_1154[param0->unk_114D] + 1, 2, 0, 1);
    sub_0200C388(param0->unk_14, param0->unk_18, v1);
    sub_0201D78C(v0, 0, param0->unk_18, v3 + v2, 4, 0xff, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->unk_10, 30);
    sub_0200B60C(param0->unk_14, 0, param0->unk_00->unk_2C[param0->unk_114D] + 1, 2, 0, 1);
    sub_0200C388(param0->unk_14, param0->unk_18, v1);

    v2 = sub_02002D7C(0, param0->unk_18, 0);
    sub_0201D78C(v0, 0, param0->unk_18, v3 - v2, 4, 0xff, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_022277C8 (UnkStruct_ov13_02227244 * param0)
{
    sub_0201ADA4(&param0->unk_2C[24], 0);

    switch (param0->unk_114D) {
    case 0:
        ov13_02227374(param0, 24, 22, 0, 4, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        ov13_02227374(param0, 24, 23, 0, (4 + 16), (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        break;
    case 1:
        ov13_02227374(param0, 24, 24, 0, 4, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        ov13_02227374(param0, 24, 25, 0, (4 + 16), (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        break;
    case 2:
        ov13_02227374(param0, 24, 26, 0, 12, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        break;
    case 3:
        ov13_02227374(param0, 24, 27, 0, 12, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))));
        break;
    }
}

static void ov13_02227888 (UnkStruct_ov13_02227244 * param0)
{
    ov13_02227650(param0);
    ov13_022277C8(param0);
    ov13_02227698(param0);
}

static void ov13_022278A0 (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    UnkStruct_0205AA50 * v0;
    Strbuf* v1;

    v0 = &param0->unk_2C[0];
    v1 = MessageLoader_GetNewStrbuf(param0->unk_10, Unk_ov13_02229AB0[0][0]);

    sub_0200B70C(param0->unk_14, 0, param0->unk_3C[param0->unk_114D][param1].item);
    sub_0200C388(param0->unk_14, param0->unk_18, v1);
    sub_0201ADA4(v0, 0);
    sub_0201D78C(v0, 0, param0->unk_18, 0, 0, 0xff, (((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)))), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02227910 (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    UnkStruct_0205AA50 * v0;
    Strbuf* v1;

    v0 = &param0->unk_2C[2];
    v1 = Strbuf_Init(130, param0->unk_00->unk_0C);

    Item_LoadDescription(v1, param0->unk_3C[param0->unk_114D][param1].item, param0->unk_00->unk_0C);
    sub_0201D78C(v0, 0, v1, 4, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    Strbuf_Free(v1);
    sub_0201A9A4(v0);
}

static void ov13_02227974 (UnkStruct_ov13_02227244 * param0)
{
    u32 v0;
    u32 v1;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201ADA4(&param0->unk_2C[v0], 0);
    }

    v1 = param0->unk_00->unk_2C[param0->unk_114D] * 6 + param0->unk_00->unk_27[param0->unk_114D];

    ov13_022278A0(param0, v1);
    ov13_0222754C(param0, v1, 0, 1, 0, 0, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))));
    ov13_02227910(param0, v1);
    ov13_02227374(param0, 3, 31, 2, 6, ((u32)(((3 & 0xff) << 16) | ((2 & 0xff) << 8) | ((1 & 0xff) << 0))));
}

void ov13_022279F4 (UnkStruct_ov13_02227244 * param0)
{
    sub_0200E060(&param0->unk_1C, 1, 1024 - (18 + 12), 14);
    sub_0201ADA4(&param0->unk_1C, 15);
    ov13_02227A1C(param0);
}

void ov13_02227A1C (UnkStruct_ov13_02227244 * param0)
{
    sub_02002AC8(1);
    param0->unk_32 = sub_0201D738(&param0->unk_1C, 1, param0->unk_18, 0, 0, ov16_0223EDF0(param0->unk_00->unk_00), NULL);
}
