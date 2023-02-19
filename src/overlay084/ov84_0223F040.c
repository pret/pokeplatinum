#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_plstring_decl.h"

#include "struct_defs/struct_0201D738.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207CB08.h"
#include "struct_defs/struct_0207CDEC.h"
#include "struct_defs/struct_02081CF4.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223B5A0.h"
#include "overlay084/struct_ov84_0223BE5C.h"
#include "overlay084/struct_ov84_0223C920.h"

#include "unk_02001AF4.h"
#include "unk_02002328.h"
#include "unk_02002B7C.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200C440.h"
#include "unk_0200DA60.h"
#include "unk_02013A04.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "unk_02025E68.h"
#include "unk_020279FC.h"
#include "poffin.h"
#include "move_table.h"
#include "item.h"
#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_0223F040.h"
#include "overlay084/ov84_022403F4.h"

static void ov84_0223F9B0(UnkStruct_ov84_0223B5A0 * param0, u32 param1);
static BOOL ov84_022400E0(UnkStruct_0201D738 * param0, u16 param1);

static const UnkStruct_ov61_0222C884 Unk_ov84_02241150 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0x3,
    0x31B
};

void ov84_0223F040 (UnkStruct_ov84_0223B5A0 * param0)
{
    sub_0201A7E8(param0->unk_00, &param0->unk_04[0], 2, 14, 0, 17, 18, 3, 1);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[1], 0, 0, 18, 32, 6, 3, 1 + 17 * 18);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[2], 2, 0, 13, 12 * 3, 3, 3, 499);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[3], 0, 6, 19, 14, 4, 11, 607);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[4], 0, 6, 19, 13, 4, 11, 607);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[5], 0, 0, 11, 12, 2, 13, 663);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[6], 0, 2, 19, 27, 4, 11, 687);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[7], 0, 19, 13, 12, 4, 3, 823);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[8], 0, 1, 1, 10, 4, 3, 871);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[9], 0, 24, 19, 7, 4, 3, 903);
    sub_0201A7E8(param0->unk_00, &param0->unk_04[10], 0, 1, 12, 11, 4, 3, 903);
}

void ov84_0223F1DC (UnkStruct_0205AA50 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 11; v0++) {
        sub_0201A8FC(&param0[v0]);
    }
}

void ov84_0223F1F8 (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_0200B144 * v0;
    u16 v1;

    v0 = sub_0200B144(1, 26, 395, 6);

    for (v1 = 0; v1 < 8; v1++) {
        param0->unk_404[v1] = sub_0200B1EC(v0, v1);
    }

    sub_0200B190(v0);
}

void ov84_0223F238 (UnkStruct_ov84_0223B5A0 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 8; v0++) {
        PLString_FreeToHeap(param0->unk_404[v0]);
    }
}

void ov84_0223F25C (UnkStruct_ov84_0223B5A0 * param0)
{
    u16 v0;
    u16 v1;

    v1 = (12 * 3) / 3;

    for (v0 = 0; v0 < v1; v0++) {
        sub_02019CB8(param0->unk_00, 2, ((1 + 17 * 18) + 32 * 6) + v1 + v0, 0 + v0, 13, 1, 1, 3);
        sub_02019CB8(param0->unk_00, 2, ((1 + 17 * 18) + 32 * 6) + (12 * 3) + v1 + v0, 0 + v0, 13 + 1, 1, 1, 3);
    }
}

static void ov84_0223F2C0 (UnkStruct_ov84_0223B5A0 * param0, PLString * param1, u16 param2)
{
    u32 v0;

    v0 = sub_02002D7C(0, param1, 0);
    sub_0201D78C(&param0->unk_04[2], 0, param1, param2 - v0 / 2, 2, 0xff, ((u32)((1 & 0xff) << 16 | (2 & 0xff) << 8 | (0 & 0xff) << 0)), NULL);
}

void ov84_0223F2FC (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_ov84_0223C920 * v0;
    PLString * v1;
    PLString * v2;
    u16 v3;

    sub_0201ADA4(&param0->unk_04[2], 0);

    v0 = &param0->unk_429;
    v2 = param0->unk_404[param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08];
    v1 = param0->unk_404[param0->unk_C4->unk_04[v0->unk_00].unk_08];

    if (v0->unk_01 == 0) {
        v3 = 96 + 50 + 12 * v0->unk_03;
        ov84_0223F2C0(param0, v1, v3 - 96);
    } else {
        v3 = 96 + 50 - 12 * v0->unk_03;
        ov84_0223F2C0(param0, v1, 96 + v3);
    }

    ov84_0223F2C0(param0, v2, v3);
    sub_0201ACCC(&param0->unk_04[2]);
}

static void * ov84_0223F390 (UnkStruct_ov84_0223B5A0 * param0, NNSG2dCharacterData ** param1)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param0->unk_D4, 21, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

void ov84_0223F3AC (UnkStruct_ov84_0223B5A0 * param0, u8 param1, u8 param2)
{
    NNSG2dCharacterData * v0;
    void * v1;
    u8 v2;

    v1 = ov84_0223F390(param0, &v0);
    if (param2 == 1) {
        v2 = param0->unk_C4->unk_04[param1].unk_08 * 32 + 16;
    } else {
        v2 = param0->unk_C4->unk_04[param1].unk_08 * 32;
    }

    sub_0201ADDC(&param0->unk_04[5], v0->pRawData, v2, 0, 32 * 8, 16, param0->unk_427 + param0->unk_428 * param1, 3, 10, 10);
    sub_0201A9A4(&param0->unk_04[5]);
    Heap_FreeToHeapExplicit(6, v1);
}

void ov84_0223F438 (UnkStruct_ov84_0223B5A0 * param0)
{
    NNSG2dCharacterData * v0;
    void * v1;
    u8 v2;
    u8 v3;

    v1 = ov84_0223F390(param0, &v0);
    sub_0201ADA4(&param0->unk_04[5], 0);

    for (v2 = 0; v2 < param0->unk_424; v2++) {
        if (v2 == param0->unk_C4->unk_64) {
            v3 = param0->unk_C4->unk_04[v2].unk_08 * 32 + 16;
        } else {
            v3 = param0->unk_C4->unk_04[v2].unk_08 * 32;
        }

        sub_0201ADDC(&param0->unk_04[5], v0->pRawData, v3, 0, 32 * 8, 16, param0->unk_427 + param0->unk_428 * v2, 3, 10, 10);
    }

    sub_0201A9A4(&param0->unk_04[5]);
    Heap_FreeToHeapExplicit(6, v1);
}

static void ov84_0223F4E8 (UnkStruct_ov84_0223B5A0 * param0, u32 param1, u32 param2)
{
    sub_0200B70C(param0->unk_118, param2, ov84_0223BE5C(param0, param1, 0));
}

static void ov84_0223F508 (UnkStruct_ov84_0223B5A0 * param0, u32 param1, u32 param2)
{
    sub_0200B77C(param0->unk_118, param2, ov84_0223BE5C(param0, param1, 0));
}

void ov84_0223F528 (UnkStruct_ov84_0223B5A0 * param0, u16 param1)
{
    PLString * v0;

    if (param1 != 0xffff) {
        v0 = PLString_AllocFromHeap(130, 6);
        Item_GetDescriptionIntoString(v0, param1, 6);
    } else {
        v0 = sub_0200B1EC(param0->unk_114, 94);
    }

    sub_0201D78C(&param0->unk_04[1], 0, v0, 40, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v0);
}

void ov84_0223F584 (UnkStruct_ov84_0223B5A0 * param0, u16 param1)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u16 v2;
    u16 v3;

    v0 = &param0->unk_04[1];
    v2 = GetMoveFromTMOrHMItemID(param1);

    v1 = sub_0200B1EC(param0->unk_114, 98);
    sub_0201D78C(v0, 0, v1, 0, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 86);
    sub_0201D78C(v0, 0, v1, 0, 16, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 89);
    sub_0201D78C(v0, 0, v1, 96, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 87);
    sub_0201D78C(v0, 0, v1, 96, 16, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 88);
    sub_0201D78C(v0, 0, v1, 96, 32, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v1);

    v3 = MoveTable_GetMoveMaxPP(v2, 0);
    v1 = sub_0200B1EC(param0->unk_114, 90);
    sub_0200B60C(param0->unk_118, 0, v3, 2, 1, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    PLString_FreeToHeap(v1);
    sub_0201D78C(v0, 0, param0->unk_3F8, 48, 16, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    v3 = MoveTable_GetMoveAttribute(v2, 2);

    if (v3 <= 1) {
        v1 = sub_0200B1EC(param0->unk_114, 24);
    } else {
        v1 = sub_0200B1EC(param0->unk_114, 91);
    }

    sub_0200B60C(param0->unk_118, 0, v3, 3, 0, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    PLString_FreeToHeap(v1);
    sub_0201D78C(v0, 0, param0->unk_3F8, 96 + 64, 16, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    v3 = MoveTable_GetMoveAttribute(v2, 4);

    if (v3 == 0) {
        v1 = sub_0200B1EC(param0->unk_114, 24);
    } else {
        v1 = sub_0200B1EC(param0->unk_114, 91);
    }

    sub_0200B60C(param0->unk_118, 0, v3, 3, 0, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    PLString_FreeToHeap(v1);
    sub_0201D78C(v0, 0, param0->unk_3F8, 96 + 64, 32, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
}

void ov84_0223F7D4 (UnkStruct_ov84_0223B5A0 * param0)
{
    param0->unk_3FC = sub_0200B1EC(param0->unk_114, 38);
    param0->unk_400 = sub_0200B1EC(param0->unk_114, 37);
}

void ov84_0223F800 (UnkStruct_ov84_0223B5A0 * param0)
{
    PLString_FreeToHeap(param0->unk_3FC);
    PLString_FreeToHeap(param0->unk_400);
}

void ov84_0223F81C (UnkStruct_ov84_0223B5A0 * param0, u16 param1, u16 param2, u32 param3)
{
    PLString * v0;
    u32 v1;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
        sub_0201D78C(&param0->unk_04[0], 0, param0->unk_3FC, (((17 * 8 - 2) - 6 - 1 - 6 * 3) + 6), param2, 0xff, param3, NULL);
    } else {
        sub_0201D78C(&param0->unk_04[0], 0, param0->unk_3FC, ((17 * 8 - 2) - 6 - 1 - 6 * 3), param2, 0xff, param3, NULL);
    }

    v0 = PLString_AllocFromHeap(10, 6);

    sub_0200B60C(param0->unk_118, 0, param1, 3, 0, 1);
    sub_0200C388(param0->unk_118, v0, param0->unk_400);

    v1 = sub_02002D7C(0, v0, 0);

    sub_0201D78C(&param0->unk_04[0], 0, v0, (17 * 8 - 2) - v1, param2, 0xff, param3, NULL);
    PLString_FreeToHeap(v0);
}

void ov84_0223F8D0 (UnkStruct_ov84_0223B5A0 * param0, UnkStruct_0207CDEC * param1, u32 param2)
{
    u16 v0 = param1->unk_00;

    if (v0 < 420) {
        v0 = v0 - 328 + 1;
        sub_0200C648(param0->unk_110, 2, v0, 2, 2, &param0->unk_04[0], 0, param2 + 5);
        ov84_0223F81C(param0, param1->unk_02, param2, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))));
    } else {
        v0 = v0 - 420 + 1;
        sub_0200C5BC(param0->unk_110, v0, 2, 1, &param0->unk_04[0], 16, param2 + 5);
        ov84_0223F9B0(param0, param2);
    }
}

void ov84_0223F94C (UnkStruct_ov84_0223B5A0 * param0, UnkStruct_0207CDEC * param1, u32 param2)
{
    sub_0200C648(param0->unk_110, 2, sub_0207D344(param1->unk_00) + 1, 2, 2, &param0->unk_04[0], 0, param2 + 5);
    ov84_0223F81C(param0, param1->unk_02, param2, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))));
}

static void * ov84_0223F994 (UnkStruct_ov84_0223B5A0 * param0, NNSG2dCharacterData ** param1)
{
    void * v0;

    v0 = NARC_AllocAndReadWholeMember(param0->unk_D4, 38, 6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

static void ov84_0223F9B0 (UnkStruct_ov84_0223B5A0 * param0, u32 param1)
{
    NNSG2dCharacterData * v0;
    void * v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    sub_0201ADDC(&param0->unk_04[0], v0->pRawData, 40, 0, 64, 16, 0, param1, 24, 16);
    Heap_FreeToHeapExplicit(6, v1);
}

void ov84_0223F9F0 (UnkStruct_ov84_0223B5A0 * param0, u32 param1)
{
    PLString * v0 = sub_0200B1EC(param0->unk_114, 41);

    sub_0201AE78(&param0->unk_04[0], 0, 0, param1, 17 * 8, 16);
    sub_0201D78C(&param0->unk_04[0], 0, v0, 0, param1, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_FreeToHeap(v0);
}

void ov84_0223FA44 (UnkStruct_ov84_0223B5A0 * param0, u32 param1)
{
    NNSG2dCharacterData * v0;
    void * v1;
    u8 v2;

    v1 = ov84_0223F994(param0, &v0);
    sub_0201ADDC(&param0->unk_04[0], v0->pRawData, 0, 0, 64, 16, 96, param1, 40, 16);
    Heap_FreeToHeapExplicit(6, v1);
}

void ov84_0223FA88 (UnkStruct_ov84_0223B5A0 * param0)
{
    param0->unk_124[0] = sub_0200B1EC(param0->unk_114, 0);
    param0->unk_124[1] = sub_0200B1EC(param0->unk_114, 6);
    param0->unk_124[2] = sub_0200B1EC(param0->unk_114, 16);
    param0->unk_124[3] = sub_0200B1EC(param0->unk_114, 95);
    param0->unk_124[4] = sub_0200B1EC(param0->unk_114, 96);
    param0->unk_124[5] = sub_0200B1EC(param0->unk_114, 1);
    param0->unk_124[6] = sub_0200B1EC(param0->unk_114, 2);
    param0->unk_124[7] = sub_0200B1EC(param0->unk_114, 18);
    param0->unk_124[8] = sub_0200B1EC(param0->unk_114, 3);
    param0->unk_124[9] = sub_0200B1EC(param0->unk_114, 4);
    param0->unk_124[10] = sub_0200B1EC(param0->unk_114, 5);
    param0->unk_124[11] = sub_0200B1EC(param0->unk_114, 8);
}

void ov84_0223FB50 (UnkStruct_ov84_0223B5A0 * param0)
{
    u16 v0;

    for (v0 = 0; v0 < 12; v0++) {
        PLString_FreeToHeap(param0->unk_124[v0]);
    }
}

void ov84_0223FB70 (UnkStruct_ov84_0223B5A0 * param0, u8 * param1, u8 param2)
{
    UnkStruct_02081CF4 v0;
    UnkStruct_ov84_0223BE5C * v1;
    PLString * v2;
    PLString * v3;
    u16 v4;
    u16 v5;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4) {
        sub_0201A7E8(param0->unk_00, &param0->unk_B4[0], 0, 23, 23 - param2 * 2, 8, param2 * 2, 3, 823);
        v5 = 4;
    } else {
        sub_0201A7E8(param0->unk_00, &param0->unk_B4[0], 0, 23 + 1, 23 - param2 * 2, 8 - 1, param2 * 2, 3, 823);
        v5 = 3;
    }

    param0->unk_154 = sub_02013A04(param2, 6);

    for (v4 = 0; v4 < param2; v4++) {
        sub_02013A6C(param0->unk_154, param0->unk_124[param1[v4]], ov84_0223D84C(param1[v4]));
    }

    v0.unk_00 = param0->unk_154;
    v0.unk_04 = &param0->unk_B4[0];
    v0.unk_08 = 0;
    v0.unk_09 = 1;
    v0.unk_0A = param2;
    v0.unk_0B_0 = 0;
    v0.unk_0B_4 = 0;

    if (param2 >= 4) {
        v0.unk_0B_6 = 1;
    } else {
        v0.unk_0B_6 = 0;
    }

    param0->unk_158 = sub_02001AF4(&v0, 8, 0, 0, 6, PAD_BUTTON_B);

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 3) {
        sub_0201ADA4(&param0->unk_04[1], 0);
        ov84_0223F584(param0, param0->unk_C4->unk_66);
        sub_0201A9A4(&param0->unk_04[1]);
        ov84_02240D5C(param0, param0->unk_C4->unk_66, 1);
    } else {
        sub_0200E060(&param0->unk_04[v5], 1, 1024 - 9 - (18 + 12), 12);
        sub_0201ADA4(&param0->unk_04[v5], 15);

        v2 = sub_0200B1EC(param0->unk_114, 42);
        v3 = PLString_AllocFromHeap((14 * 2 * 2), 6);
        v1 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

        ov84_0223F4E8(param0, v1->unk_06 + v1->unk_04 - 1, 0);
        sub_0200C388(param0->unk_118, v3, v2);
        sub_0201D738(&param0->unk_04[v5], 1, v3, 0, 0, 0xff, NULL);
        PLString_FreeToHeap(v3);
        PLString_FreeToHeap(v2);
        sub_0201A9A4(&param0->unk_04[v5]);
    }

    sub_0200DC48(&param0->unk_B4[0], 1, 1024 - 9, 14);
    sub_0201A9A4(&param0->unk_B4[0]);
}

void ov84_0223FD84 (UnkStruct_ov84_0223B5A0 * param0)
{
    u32 v0;

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 == 4) {
        v0 = 4;
    } else {
        v0 = 3;
    }

    if (param0->unk_C4->unk_04[param0->unk_C4->unk_64].unk_08 != 3) {
        sub_0200E084(&param0->unk_04[v0], 1);
        sub_0201AD10(&param0->unk_04[v0]);
    }

    sub_0200DC9C(&param0->unk_B4[0], 1);
    sub_0201AD10(&param0->unk_B4[0]);
    sub_02001BC4(param0->unk_158, NULL);
    sub_02013A3C(param0->unk_154);
    sub_0201A8FC(&param0->unk_B4[0]);
    sub_0201ADA4(&param0->unk_04[1], 0);
    ov84_0223F528(param0, param0->unk_C4->unk_66);
    sub_0201A9A4(&param0->unk_04[1]);
    ov84_02240D5C(param0, 0, 0);
}

void ov84_0223FE18 (UnkStruct_ov84_0223B5A0 * param0)
{
    PLString * v0;
    PLString * v1;

    sub_0201ADA4(&param0->unk_04[1], 0);

    v0 = sub_0200B1EC(param0->unk_114, 45);
    v1 = PLString_AllocFromHeap(130, 6);

    ov84_0223F4E8(param0, param0->unk_47B - 1, 0);

    sub_0200C388(param0->unk_118, v1, v0);
    sub_0201D78C(&param0->unk_04[1], 0, v1, 40, 0, 0xff, ((u32)(((15 & 0xff) << 16) | ((14 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    sub_0201A9A4(&param0->unk_04[1]);
    PLString_FreeToHeap(v1);
    PLString_FreeToHeap(v0);
}

void ov84_0223FE94 (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_ov84_0223BE5C * v0;
    PLString * v1;
    PLString * v2;
    u16 v3;

    sub_0200DC48(&param0->unk_04[9], 1, 1024 - 9, 14);
    ov84_0223FF44(param0);
    sub_0200E060(&param0->unk_04[3], 1, 1024 - 9 - (18 + 12), 12);
    sub_0201ADA4(&param0->unk_04[3], 15);

    v1 = sub_0200B1EC(param0->unk_114, 52);
    v2 = PLString_AllocFromHeap(14 * 2 * 2, 6);
    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    ov84_0223F4E8(param0, v0->unk_06 + v0->unk_04 - 1, 0);

    sub_0200C388(param0->unk_118, v2, v1);
    sub_0201D738(&param0->unk_04[3], 1, v2, 0, 0, 0xff, NULL);
    sub_0201A9A4(&param0->unk_04[3]);
    PLString_FreeToHeap(v2);
    PLString_FreeToHeap(v1);
}

void ov84_0223FF44 (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u32 v2;

    v0 = &param0->unk_04[9];
    sub_0201ADA4(v0, 15);
    v1 = sub_0200B1EC(param0->unk_114, 84);

    sub_0200B60C(param0->unk_118, 0, param0->unk_488, 3, 2, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    sub_0201D738(v0, 0, param0->unk_3F8, 16, 8, 0xff, NULL);
    sub_0201A9A4(v0);
    PLString_FreeToHeap(v1);
}

void ov84_0223FFC0 (UnkStruct_ov84_0223B5A0 * param0)
{
    sub_0200E084(&param0->unk_04[3], 1);
    sub_0200DC9C(&param0->unk_04[9], 1);
    sub_0201AD10(&param0->unk_04[3]);
    sub_0201AD10(&param0->unk_04[9]);
    sub_0201A9A4(&param0->unk_04[1]);
}

void ov84_0223FFF0 (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_ov84_0223BE5C * v0;
    PLString * v1;
    u16 v2;

    sub_0200E060(&param0->unk_04[6], 1, 1024 - 9 - (18 + 12), 12);
    sub_0201ADA4(&param0->unk_04[6], 15);

    v1 = sub_0200B1EC(param0->unk_114, 54);
    v0 = &param0->unk_C4->unk_04[param0->unk_C4->unk_64];

    if (param0->unk_488 == 1) {
        ov84_0223F4E8(param0, v0->unk_06 + v0->unk_04 - 1, 0);
    } else {
        ov84_0223F508(param0, v0->unk_06 + v0->unk_04 - 1, 0);
    }

    sub_0200B60C(param0->unk_118, 1, param0->unk_488, 3, 0, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    PLString_FreeToHeap(v1);

    param0->unk_426 = ov84_022400A0(param0);
}

u8 ov84_022400A0 (UnkStruct_ov84_0223B5A0 * param0)
{
    u8 v0;

    sub_02002AC8(1);
    sub_02002AE4(0);
    v0 = sub_0201D738(&param0->unk_04[6], 1, param0->unk_3F8, 0, 0, sub_02027AC0(param0->unk_D0), ov84_022400E0);

    return v0;
}

static BOOL ov84_022400E0 (UnkStruct_0201D738 * param0, u16 param1)
{
    switch (param1) {
    case 1:
        return sub_020057E0();
    case 2:
        return sub_020061E4();
    case 3:
        sub_02005748(1549);
        break;
    case 4:
        return sub_020057D4(1549);
    }

    return 0;
}

void ov84_02240120 (UnkStruct_ov84_0223B5A0 * param0)
{
    param0->unk_158 = sub_02002100(param0->unk_00, &Unk_ov84_02241150, 1024 - 9, 14, 6);
}

void ov84_02240148 (UnkStruct_ov84_0223B5A0 * param0, u8 param1)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u32 v2;

    v0 = &param0->unk_04[7];

    if (param1 == 0) {
        sub_0200DC48(v0, 1, 1024 - 9, 14);
    }

    sub_0201ADA4(v0, 15);

    v1 = sub_0200B1EC(param0->unk_114, 80);

    sub_0200B60C(param0->unk_118, 0, param0->unk_488, 2, 2, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    sub_0201D738(v0, 0, param0->unk_3F8, 0, 8, 0xff, NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 81);

    sub_0200B60C(param0->unk_118, 0, param0->unk_48C * param0->unk_488, 6, 1, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);

    v2 = sub_02002D7C(0, param0->unk_3F8, 0);

    sub_0201D738(v0, 0, param0->unk_3F8, (12 * 8) - v2, 8, 0xff, NULL);
    sub_0201A9A4(v0);
    PLString_FreeToHeap(v1);
}

void ov84_02240248 (UnkStruct_ov84_0223B5A0 * param0, u8 param1)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u32 v2;

    v0 = &param0->unk_04[8];

    if (param1 == 0) {
        sub_0201ADA4(v0, 15);
        sub_0200DC48(v0, 1, 1024 - 9, 14);

        v1 = sub_0200B1EC(param0->unk_114, 78);

        sub_0201D738(v0, 0, v1, 0, 0, 0xff, NULL);
        PLString_FreeToHeap(v1);
    } else {
        sub_0201AE78(v0, 15, 0, 16, (10 * 8), 16);
    }

    v1 = sub_0200B1EC(param0->unk_114, 79);

    sub_0200B60C(param0->unk_118, 0, sub_02025F74(param0->unk_CC), 6, 1, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);

    v2 = sub_02002D7C(0, param0->unk_3F8, 0);

    sub_0201D738(v0, 0, param0->unk_3F8, (10 * 8) - v2, 16, 0xff, NULL);
    sub_0201A9A4(v0);
    PLString_FreeToHeap(v1);
}

void ov84_02240328 (UnkStruct_ov84_0223B5A0 * param0)
{
    UnkStruct_0205AA50 * v0;
    PLString * v1;
    u32 v2;

    v0 = &param0->unk_04[10];
    sub_0201ADA4(v0, 15);
    sub_0200DC48(v0, 1, 1024 - 9, 14);

    v1 = sub_0200B1EC(param0->unk_114, 108);
    sub_0201D738(v0, 0, v1, 0, 0, 0xff, NULL);
    PLString_FreeToHeap(v1);

    v1 = sub_0200B1EC(param0->unk_114, 109);
    sub_0200B60C(param0->unk_118, 0, sub_0202AC98(Poffin_GetSavedataBlock(param0->unk_C4->unk_00)), 3, 1, 1);
    sub_0200C388(param0->unk_118, param0->unk_3F8, v1);
    PLString_FreeToHeap(v1);

    v2 = sub_02002D7C(0, param0->unk_3F8, 0);
    sub_0201D738(v0, 0, param0->unk_3F8, 11 * 8 - v2, 16, 0xff, NULL);
    sub_0201A9A4(v0);
}
