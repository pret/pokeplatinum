#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02073C74_decl.h"

#include "struct_defs/struct_0202BC58.h"
#include "struct_defs/struct_0202BCC8.h"
#include "struct_defs/struct_0202BE38.h"
#include "struct_defs/struct_0202BF4C.h"
#include "struct_defs/struct_0202BFCC.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay081/struct_ov81_021D1610.h"

#include "unk_02002B7C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "unk_0202B604.h"
#include "map_header.h"
#include "unk_02073C2C.h"
#include "unk_02079170.h"
#include "overlay081/ov81_021D1610.h"

static u8 ov81_021D16B0(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0205AA50 * param2);
static void ov81_021D17C8(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1);
static void ov81_021D1A90(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1);
static void ov81_021D1AD4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1);
static void ov81_021D1C10(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1);
static void ov81_021D1E04(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1E40(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1E7C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1EB8(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1EF4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1F30(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1F6C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1FA8(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D1FE4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2038(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2098(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D20EC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2140(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D219C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2208(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2270(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D22AC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D22E8(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D233C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2398(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D23F4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2450(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D24AC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2508(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2564(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D25C0(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D261C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2678(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D26D4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2730(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D276C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D27A8(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D27E4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D2820(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3);
static void ov81_021D285C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3, int param4);
static void ov81_021D2908(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BE38 * param2);
static void ov81_021D29B4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BE38 * param2);
static void ov81_021D2A9C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2B20(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2BA4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2C38(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2CBC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2D50(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2DAC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2E18(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2E54(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2EB0(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2EEC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2F70(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D2FAC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D300C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D3048(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D30B4(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D30F0(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D312C(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3, int param4);
static void ov81_021D3190(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D31EC(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D3248(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);
static void ov81_021D32A0(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3, int param4);
static void ov81_021D3304(UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3);

static const UnkStruct_ov61_0222C884 Unk_ov81_021D3508[] = {
    {0x0, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1},
    {0x0, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31},
    {0x1, 0x2, 0x2, 0x18, 0x2, 0xF, 0x1},
    {0x1, 0x4, 0x4, 0x1B, 0x12, 0xF, 0x31}
};

void ov81_021D1610 (UnkStruct_ov81_021D1610 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201A8D4(param0->unk_00, &param0->unk_04[v0], &Unk_ov81_021D3508[v0]);
    }
}

void ov81_021D1634 (UnkStruct_ov81_021D1610 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0201A8FC(&param0->unk_04[v0]);
    }
}

void ov81_021D164C (UnkStruct_ov81_021D1610 * param0, u32 param1)
{
    UnkStruct_0205AA50 * v0;
    UnkStruct_0205AA50 * v1;

    if (param1 == 0) {
        v0 = &param0->unk_04[0];
        v1 = &param0->unk_04[1];
    } else {
        v0 = &param0->unk_04[2];
        v1 = &param0->unk_04[3];
    }

    sub_0201ADA4(v0, 0);
    sub_0201ADA4(v1, 0);

    if (ov81_021D16B0(param0, v0, v1) == 1) {
        ov81_021D17C8(param0, v1);
        ov81_021D1A90(param0, v1);
        ov81_021D1AD4(param0, v1);
        ov81_021D1C10(param0, v1);
    }

    sub_0201A9A4(v0);
    sub_0201A9A4(v1);
}

static u8 ov81_021D16B0 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0205AA50 * param2)
{
    UnkStruct_0202BC58 v0;
    PLString * v1;
    u32 v2;

    sub_0202C2A4(param0->unk_44, &v0, 0, param0->unk_105C);

    if ((v0.unk_00_0 == 0) && (v0.unk_00_7 == 0) && (v0.unk_00_14 == 0)) {
        return 0;
    }

    v1 = sub_0200B1EC(param0->unk_50, 1);

    sub_0200C2E0(param0->unk_54, 0, v0.unk_00_7);
    sub_0200B60C(param0->unk_54, 1, v0.unk_00_14, 2, 0, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v1);
    PLString_Free(v1);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);

    v2 = sub_02002D7C(0, param0->unk_58, 0);
    v1 = sub_0200B1EC(param0->unk_50, 2 + v0.unk_00_11);
    sub_0201D78C(param1, 0, v1, v2 + 12, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v1);

    v1 = sub_0200B1EC(param0->unk_50, 0);
    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(v0.unk_00_19));

    sub_0200C388(param0->unk_54, param0->unk_58, v1);
    sub_0201D78C(param2, 0, param0->unk_58, 0, 0, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v1);

    return 1;
}

static void ov81_021D17C8 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1)
{
    UnkStruct_0202BCC8 v0[4];
    u32 v1;

    sub_0202C2A4(param0->unk_44, &v0[0], 1, param0->unk_105C);

    for (v1 = 0; v1 < 4; v1++) {
        switch (v0[v1].unk_00) {
        case 0:
            return;
        case 1:
            ov81_021D1E04(param0, param1, &v0[v1], v1);
            break;
        case 2:
            ov81_021D1E40(param0, param1, &v0[v1], v1);
            break;
        case 3:
            ov81_021D1E7C(param0, param1, &v0[v1], v1);
            break;
        case 4:
            ov81_021D1EB8(param0, param1, &v0[v1], v1);
            break;
        case 5:
            ov81_021D1EF4(param0, param1, &v0[v1], v1);
            break;
        case 6:
            ov81_021D1F30(param0, param1, &v0[v1], v1);
            break;
        case 7:
            ov81_021D1F6C(param0, param1, &v0[v1], v1);
            break;
        case 8:
            ov81_021D1FA8(param0, param1, &v0[v1], v1);
            break;
        case 9:
            ov81_021D1FE4(param0, param1, &v0[v1], v1);
            break;
        case 10:
            ov81_021D2038(param0, param1, &v0[v1], v1);
            break;
        case 11:
            ov81_021D2098(param0, param1, &v0[v1], v1);
            break;
        case 12:
            ov81_021D20EC(param0, param1, &v0[v1], v1);
            break;
        case 13:
            ov81_021D2140(param0, param1, &v0[v1], v1);
            break;
        case 14:
            ov81_021D219C(param0, param1, &v0[v1], v1);
            break;
        case 15:
            ov81_021D2208(param0, param1, &v0[v1], v1);
            break;
        case 16:
            ov81_021D2270(param0, param1, &v0[v1], v1);
            break;
        case 17:
            ov81_021D22AC(param0, param1, &v0[v1], v1);
            break;
        case 18:
            ov81_021D22E8(param0, param1, &v0[v1], v1);
            break;
        case 24:
            ov81_021D233C(param0, param1, &v0[v1], v1);
            break;
        case 19:
            ov81_021D2398(param0, param1, &v0[v1], v1);
            break;
        case 20:
            ov81_021D23F4(param0, param1, &v0[v1], v1);
            break;
        case 23:
            ov81_021D2450(param0, param1, &v0[v1], v1);
            break;
        case 22:
            ov81_021D24AC(param0, param1, &v0[v1], v1);
            break;
        case 21:
            ov81_021D2508(param0, param1, &v0[v1], v1);
            break;
        case 26:
            ov81_021D2564(param0, param1, &v0[v1], v1);
            break;
        case 25:
            ov81_021D25C0(param0, param1, &v0[v1], v1);
            break;
        case 27:
            ov81_021D261C(param0, param1, &v0[v1], v1);
            break;
        case 28:
            ov81_021D2678(param0, param1, &v0[v1], v1);
            break;
        case 29:
            ov81_021D26D4(param0, param1, &v0[v1], v1);
            break;
        case 30:
            ov81_021D2730(param0, param1, &v0[v1], v1);
            break;
        case 33:
            ov81_021D276C(param0, param1, &v0[v1], v1);
            break;
        case 32:
            ov81_021D27A8(param0, param1, &v0[v1], v1);
            break;
        case 34:
            ov81_021D27E4(param0, param1, &v0[v1], v1);
            break;
        case 35:
            ov81_021D2820(param0, param1, &v0[v1], v1);
            break;
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
            ov81_021D285C(param0, param1, &v0[v1], v1, v0[v1].unk_00);
            break;
        }
    }
}

static void ov81_021D1A90 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1)
{
    UnkStruct_0202BE38 v0;

    sub_0202C2A4(param0->unk_44, &v0, 2, param0->unk_105C);

    switch (v0.unk_00) {
    case 0:
        return;

    case 1:
        ov81_021D2908(param0, param1, &v0);
        break;

    case 2:
        ov81_021D29B4(param0, param1, &v0);
        break;
    }
}

static void ov81_021D1AD4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1)
{
    UnkStruct_0202BF4C v0;
    PLString * v1;
    u32 v2;

    sub_0202C2A4(param0->unk_44, &v0, 3, param0->unk_105C);

    if (v0.unk_00_0 == 0) {
        return;
    }

    {
        PLString * v3;

        v3 = sub_0200B010(26, 433, sub_0203A138(v0.unk_02), 42);
        v2 = PLString_GetLength(v3);
        PLString_Free(v3);

        if (sub_02079220(v0.unk_00_1, 1) == 63) {
            v3 = sub_0200B1EC(param0->unk_50, 61);
            sub_0200B4BC(param0->unk_54, 1, param0->unk_4C);
            sub_0200C388(param0->unk_54, param0->unk_58, v3);
            v2 += PLString_GetLength(param0->unk_58);
            PLString_Free(v3);
        } else {
            v3 = sub_0200B010(26, 618, v0.unk_00_1, 42);
            v2 += PLString_GetLength(v3);
            PLString_Free(v3);
            sub_0200BA08(param0->unk_54, 1, v0.unk_00_1);
        }
    }

    if (v2 <= 14) {
        v1 = sub_0200B1EC(param0->unk_50, 57);
    } else if (v2 <= 16) {
        v1 = sub_0200B1EC(param0->unk_50, 58);
    } else if (v2 <= 19) {
        v1 = sub_0200B1EC(param0->unk_50, 59);
    } else {
        v1 = sub_0200B1EC(param0->unk_50, 60);
    }

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(v0.unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v1);
    sub_0201D78C(param1, 0, param0->unk_58, 0, ((16 * 4 + 16) + 16), 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v1);
}

static void ov81_021D1C10 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1)
{
    UnkStruct_0202BFCC v0[2];
    u32 v1;

    sub_0202C2A4(param0->unk_44, &v0[0], 4, param0->unk_105C);

    for (v1 = 0; v1 < 2; v1++) {
        switch (v0[v1].unk_00) {
        case 0:
            return;
        case 1:
            ov81_021D2A9C(param0, param1, &v0[v1], v1);
            break;
        case 2:
            ov81_021D2B20(param0, param1, &v0[v1], v1);
            break;
        case 3:
            ov81_021D2BA4(param0, param1, &v0[v1], v1);
            break;
        case 4:
            ov81_021D2C38(param0, param1, &v0[v1], v1);
            break;
        case 5:
            ov81_021D2CBC(param0, param1, &v0[v1], v1);
            break;
        case 6:
            ov81_021D2D50(param0, param1, &v0[v1], v1);
            break;
        case 7:
            ov81_021D2DAC(param0, param1, &v0[v1], v1);
            break;
        case 8:
            ov81_021D2E18(param0, param1, &v0[v1], v1);
            break;
        case 9:
            ov81_021D2E54(param0, param1, &v0[v1], v1);
            break;
        case 10:
            ov81_021D2EB0(param0, param1, &v0[v1], v1);
            break;
        case 11:
            ov81_021D2EEC(param0, param1, &v0[v1], v1);
            break;
        case 12:
            ov81_021D2F70(param0, param1, &v0[v1], v1);
            break;
        case 13:
            ov81_021D2FAC(param0, param1, &v0[v1], v1);
            break;
        case 14:
            ov81_021D300C(param0, param1, &v0[v1], v1);
            break;
        case 15:
            ov81_021D3048(param0, param1, &v0[v1], v1);
            break;
        case 16:
            ov81_021D30B4(param0, param1, &v0[v1], v1);
            break;
        case 17:
            ov81_021D30F0(param0, param1, &v0[v1], v1);
            break;
        case 18:
        case 19:
        case 20:
        case 21:
            ov81_021D312C(param0, param1, &v0[v1], v1, v0[v1].unk_00);
            break;
        case 22:
            ov81_021D3190(param0, param1, &v0[v1], v1);
            break;
        case 23:
            ov81_021D31EC(param0, param1, &v0[v1], v1);
            break;
        case 24:
            ov81_021D3248(param0, param1, &v0[v1], v1);
            break;
        case 25:
        case 26:
        case 27:
        case 28:
            ov81_021D32A0(param0, param1, &v0[v1], v1, v0[v1].unk_00);
            break;
        case 29:
            ov81_021D3304(param0, param1, &v0[v1], v1);
            break;
        }
    }
}

static void ov81_021D1E04 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 9);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1E40 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 10);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1E7C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 11);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1EB8 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 12);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1EF4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 13);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1F30 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 14);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1F6C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 15);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1FA8 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 16);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D1FE4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 17);

    sub_0200BD60(param0->unk_54, 0, param2->unk_02);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2038 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 18);

    sub_0200BD60(param0->unk_54, 0, param2->unk_02);
    sub_0200BA08(param0->unk_54, 1, param2->unk_04);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2098 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 19);

    sub_0200BA08(param0->unk_54, 0, param2->unk_04);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D20EC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 20);

    sub_0200BA08(param0->unk_54, 0, param2->unk_04);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2140 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 21);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D219C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0;
    u32 v1;

    v1 = param2->unk_02;

    if ((v1 == 47) || (v1 == 64) || (v1 == 49)) {
        v0 = sub_0200B1EC(param0->unk_50, 23);
    } else {
        v0 = sub_0200B1EC(param0->unk_50, 22);
    }

    sub_0200B8C8(param0->unk_54, 0, v1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2208 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0;
    u32 v1;

    v1 = param2->unk_02;

    if (sub_0202C6A4(v1) == 0) {
        v0 = sub_0200B1EC(param0->unk_50, 23);
    } else {
        v0 = sub_0200B1EC(param0->unk_50, 24);
    }

    sub_0200B8C8(param0->unk_54, 0, v1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2270 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 30);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D22AC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 31);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D22E8 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 34);

    sub_0200B70C(param0->unk_54, 0, param2->unk_06);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D233C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 40);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2398 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 35);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D23F4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 36);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2450 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 43);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D24AC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 38);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2508 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 37);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2564 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 42);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D25C0 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 41);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D261C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 39);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2678 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 46);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D26D4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 44);

    sub_0200B8C8(param0->unk_54, 0, sub_0203A138(param2->unk_02));
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2730 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 45);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D276C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 47);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D27A8 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 48);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D27E4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 32);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2820 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 33);

    sub_0201D78C(param1, 0, v0, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D285C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BCC8 * param2, u8 param3, int param4)
{
    u32 v0;
    PLString * v1;

    switch (param4) {
    case 36:
        v0 = 25;
        break;
    case 37:
        v0 = 26;
        break;
    case 38:
        v0 = 27;
        break;
    case 39:
        v0 = 28;
        break;
    case 40:
    default:
        v0 = 29;
        break;
    }

    v1 = sub_0200B1EC(param0->unk_50, v0);
    sub_0201D78C(param1, 0, v1, 0, 16 + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v1);
}

static void ov81_021D28C8 (UnkStruct_ov81_021D1610 * param0, u16 param1, u8 param2, u8 param3)
{
    UnkStruct_02073C74 * v0 = sub_02073C74(42);

    sub_02074088(v0, param1, 1, 32, param2, 0, 0);
    sub_0200B538(param0->unk_54, param3, sub_02076B10(v0));
    Heap_FreeToHeap(v0);
}

static void ov81_021D2908 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BE38 * param2)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 49);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 50);
        break;
    default:
        if (param2->unk_01_6 == 0) {
            v0 = sub_0200B1EC(param0->unk_50, 51);
        } else if (param2->unk_01_6 == 1) {
            v0 = sub_0200B1EC(param0->unk_50, 52);
        } else {
            v0 = sub_0200B1EC(param0->unk_50, 49);
        }
    }

    ov81_021D28C8(param0, param2->unk_02, param2->unk_01_6, 0);
    sub_0200BD98(param0->unk_54, 1, param2->unk_01_2);

    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (16 * 4 + 16), 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D29B4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BE38 * param2)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 53);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 54);
        break;
    default:
        if (param2->unk_01_6 == 0) {
            v0 = sub_0200B1EC(param0->unk_50, 55);
        } else if (param2->unk_01_6 == 1) {
            v0 = sub_0200B1EC(param0->unk_50, 56);
        } else {
            v0 = sub_0200B1EC(param0->unk_50, 53);
        }
    }

    ov81_021D28C8(param0, param2->unk_02, param2->unk_01_6, 0);
    sub_0200BD98(param0->unk_54, 1, param2->unk_01_2);

    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (16 * 4 + 16), 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2A60 (UnkStruct_ov81_021D1610 * param0, u16 * param1, u8 param2, u8 param3)
{
    PLString * v0 = PLString_New(32, 42);

    PLString_FillWithChars(v0, param1);
    sub_0200B48C(param0->unk_54, param3, v0, param2, 1, GAME_LANGUAGE);
    PLString_Free(v0);
}

static void ov81_021D2A9C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 62);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 63);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 64);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2B20 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 65);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 66);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 67);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2BA4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 68);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 69);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 70);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2C38 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 71);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 72);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 73);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2CBC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 74);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 75);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 76);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_12, param2->unk_01_5, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2D50 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 77);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2DAC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 78);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2E18 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 79);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2E54 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 80);

    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2EB0 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 81);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2EEC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0;

    switch (param2->unk_01_0) {
    case 0:
        v0 = sub_0200B1EC(param0->unk_50, 82);
        break;
    case 1:
        v0 = sub_0200B1EC(param0->unk_50, 83);
        break;
    case 2:
    default:
        v0 = sub_0200B1EC(param0->unk_50, 84);
        break;
    }

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2F70 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 85);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D2FAC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 87);

    sub_0200B60C(param0->unk_54, 0, param2->unk_01_0, 1, 0, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D300C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 88);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D3048 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 89);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    ov81_021D2A60(param0, param2->unk_22, param2->unk_01_6, 1);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D30B4 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 94);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D30F0 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 86);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D312C (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3, int param4)
{
    PLString * v0;
    u32 v1;

    switch (param4) {
    case 18:
        v1 = 90;
        break;
    case 19:
        v1 = 91;
        break;
    case 20:
        v1 = 92;
        break;
    case 21:
    default:
        v1 = 93;
        break;
    }

    v0 = sub_0200B1EC(param0->unk_50, v1);
    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D3190 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 95);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D31EC (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 96);

    ov81_021D2A60(param0, param2->unk_02, param2->unk_01_4, 0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D3248 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 97);

    sub_0200C0B0(param0->unk_54, 0, param2->unk_01_0);
    sub_0200C388(param0->unk_54, param0->unk_58, v0);
    sub_0201D78C(param1, 0, param0->unk_58, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D32A0 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3, int param4)
{
    PLString * v0;
    u32 v1;

    switch (param4) {
    case 25:
        v1 = 98;
        break;
    case 26:
        v1 = 99;
        break;
    case 27:
        v1 = 100;
        break;
    case 28:
    default:
        v1 = 101;
        break;
    }

    v0 = sub_0200B1EC(param0->unk_50, v1);
    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}

static void ov81_021D3304 (UnkStruct_ov81_021D1610 * param0, UnkStruct_0205AA50 * param1, UnkStruct_0202BFCC * param2, u8 param3)
{
    PLString * v0 = sub_0200B1EC(param0->unk_50, 102);

    sub_0201D78C(param1, 0, v0, 0, (((16 * 4 + 16) + 16) + 16) + param3 * 16, 0xff, ((u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0))), NULL);
    PLString_Free(v0);
}
