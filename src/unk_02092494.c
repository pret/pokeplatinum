#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"

#include "struct_defs/struct_02073C74.h"
#include "struct_defs/struct_02073C74_sub1.h"
#include "struct_defs/struct_02090800.h"

#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0201378C.h"
#include "unk_02017038.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02025E68.h"
#include "unk_02073C2C.h"
#include "unk_02092494.h"

static int sub_02092E8C(UnkStruct_02073C74 * param0, BOOL param1, int param2);
static void sub_02092878(UnkStruct_02090800 * param0);
static void sub_020928A0(UnkStruct_02090800 * param0, int param1);
static void sub_020929C0(UnkStruct_02090800 * param0, int param1);
static void sub_02092B1C(UnkStruct_02090800 * param0, int param1, int param2);
static void sub_02092C24(UnkStruct_02090800 * param0);
static void sub_02092E10(UnkStruct_02090800 * param0);
static void sub_02092E4C(UnkStruct_02090800 * param0);
static void sub_020932A4(UnkStruct_02073C74_sub1 * param0, UnkStruct_02025E6C * param1, int param2);
static void sub_020932F0(UnkStruct_02073C74_sub1 * param0, int param1, int param2);
static void sub_02093368(UnkStruct_02073C74_sub1 * param0, int param1);
static void sub_020933C8(UnkStruct_02073C74_sub1 * param0);
static void sub_020933E8(UnkStruct_02073C74_sub1 * param0);

UnkStruct_02090800 * sub_02092494 (UnkStruct_02073C74 * param0, BOOL param1, int param2)
{
    UnkStruct_02090800 * v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_02090800));
    v0->unk_00 = param2;
    v0->unk_04 = sub_0200B144(1, 26, 455, v0->unk_00);
    v0->unk_08 = sub_0200B368(9, 32, v0->unk_00);
    v0->unk_0C = param0;
    v0->unk_10 = param1;

    {
        v0->unk_14.unk_00 = 0;
        v0->unk_14.unk_04 = NULL;

        v0->unk_1C.unk_00 = 0;
        v0->unk_1C.unk_04 = NULL;

        v0->unk_24.unk_00 = 0;
        v0->unk_24.unk_04 = NULL;

        v0->unk_2C.unk_00 = 0;
        v0->unk_2C.unk_04 = NULL;

        v0->unk_34.unk_00 = 0;
        v0->unk_34.unk_04 = NULL;
    }

    switch (sub_02092E8C(v0->unk_0C, v0->unk_10, v0->unk_00)) {
    case 0:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 49);

        v0->unk_24.unk_00 = 6;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 7;
        sub_02092E10(v0);
        break;
    case 1:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 50);

        v0->unk_24.unk_00 = 6;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 7;
        sub_02092E10(v0);
        break;
    case 2:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 51);

        v0->unk_24.unk_00 = 6;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 7;
        sub_02092E10(v0);
        break;
    case 3:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 52);

        v0->unk_24.unk_00 = 8;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 9;
        sub_02092E10(v0);
        break;
    case 4:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 53);

        v0->unk_24.unk_00 = 8;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 9;
        sub_02092E10(v0);
        break;
    case 5:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 54);

        v0->unk_24.unk_00 = 8;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 9;
        sub_02092E10(v0);
        break;
    case 6:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 55);

        v0->unk_24.unk_00 = 8;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 9;
        sub_02092E10(v0);
        break;
    case 7:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 56);

        v0->unk_24.unk_00 = 7;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 8;
        sub_02092E10(v0);
        break;
    case 8:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 57);

        v0->unk_24.unk_00 = 7;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 8;
        sub_02092E10(v0);
        break;
    case 9:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 58);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 10:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 59);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 11:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 60);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 12:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 61);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 13:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 62);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 14:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020928A0(v0, 63);

        v0->unk_24.unk_00 = 9;
        sub_02092C24(v0);
        break;
    case 15:
        v0->unk_14.unk_00 = 1;
        sub_02092878(v0);

        v0->unk_1C.unk_00 = 2;
        sub_020929C0(v0, 64);

        v0->unk_24.unk_00 = 6;
        sub_02092C24(v0);

        v0->unk_2C.unk_00 = 7;
        sub_02092E10(v0);
        break;
    case 16:
        v0->unk_1C.unk_00 = 1;
        sub_02092B1C(v0, 101, 0);

        v0->unk_34.unk_00 = 6;
        sub_02092E4C(v0);
        break;
    case 17:
        v0->unk_1C.unk_00 = 1;
        sub_02092B1C(v0, 102, 1);

        v0->unk_34.unk_00 = 6;
        sub_02092E4C(v0);
        break;
    case 18:
        v0->unk_1C.unk_00 = 1;
        sub_02092B1C(v0, 103, 0);

        v0->unk_34.unk_00 = 6;
        sub_02092E4C(v0);
        break;
    case 19:
        v0->unk_1C.unk_00 = 1;
        sub_02092B1C(v0, 103, 1);

        v0->unk_34.unk_00 = 6;
        sub_02092E4C(v0);
        break;
    case 20:
        v0->unk_1C.unk_00 = 1;
        sub_02092B1C(v0, 104, 0);

        v0->unk_34.unk_00 = 6;
        sub_02092E4C(v0);
        break;
    }

    return v0;
}

void sub_0209282C (UnkStruct_02090800 * param0)
{
    if (param0->unk_14.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_14.unk_04);
    }

    if (param0->unk_1C.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_1C.unk_04);
    }

    if (param0->unk_24.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_24.unk_04);
    }

    if (param0->unk_2C.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_2C.unk_04);
    }

    if (param0->unk_34.unk_04 != NULL) {
        Heap_FreeToHeap(param0->unk_34.unk_04);
    }

    sub_0200B3F0(param0->unk_08);
    sub_0200B190(param0->unk_04);
    Heap_FreeToHeap(param0);
}

static void sub_02092878 (UnkStruct_02090800 * param0)
{
    int v0 = sub_02075BCC(param0->unk_0C);

    if (v0 > 24) {
        return;
    }

    param0->unk_14.unk_04 = sub_02023790(((2 * 18) * 2), param0->unk_00);
    sub_0200B1B8(param0->unk_04, (24 + v0), param0->unk_14.unk_04);
}

static void sub_020928A0 (UnkStruct_02090800 * param0, int param1)
{
    UnkStruct_02023790 * v0 = sub_02023790((((2 * 18) * 2) * 8), param0->unk_00);

    param0->unk_1C.unk_04 = sub_02023790((((2 * 18) * 2) * 8), param0->unk_00);

    sub_0200B1B8(param0->unk_04, param1, v0);
    sub_0200B60C(param0->unk_08, 0, sub_02074470(param0->unk_0C, 149, NULL), 2, 2, 1);
    sub_0200C2E0(param0->unk_08, 1, sub_02074470(param0->unk_0C, 150, NULL));
    sub_0200B60C(param0->unk_08, 2, sub_02074470(param0->unk_0C, 151, NULL), 2, 0, 1);
    sub_0200B60C(param0->unk_08, 3, sub_02074470(param0->unk_0C, 156, NULL), 3, 0, 1);
    sub_0200BECC(param0->unk_08, 4, sub_02074470(param0->unk_0C, 153, NULL));
    sub_0200B60C(param0->unk_08, 5, sub_02074470(param0->unk_0C, 146, NULL), 2, 2, 1);
    sub_0200C2E0(param0->unk_08, 6, sub_02074470(param0->unk_0C, 147, NULL));
    sub_0200B60C(param0->unk_08, 7, sub_02074470(param0->unk_0C, 148, NULL), 2, 0, 1);
    sub_0200BECC(param0->unk_08, 8, sub_02074470(param0->unk_0C, 152, NULL));
    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    sub_020237BC(v0);
}

static void sub_020929C0 (UnkStruct_02090800 * param0, int param1)
{
    UnkStruct_02023790 * v0 = sub_02023790((((2 * 18) * 2) * 4), param0->unk_00);

    param0->unk_1C.unk_04 = sub_02023790((((2 * 18) * 2) * 4), param0->unk_00);

    sub_0200B1B8(param0->unk_04, param1, v0);
    sub_0200B60C(param0->unk_08, 0, sub_02074470(param0->unk_0C, 149, NULL), 2, 2, 1); sub_0200C2E0(param0->unk_08, 1, sub_02074470(param0->unk_0C, 150, NULL)); sub_0200B60C(param0->unk_08, 2, sub_02074470(param0->unk_0C, 151, NULL), 2, 0, 1);
    sub_0200B60C(param0->unk_08, 3, sub_02074470(param0->unk_0C, 156, NULL), 3, 0, 1);

    switch (sub_02074470(param0->unk_0C, 122, NULL)) {
    default:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 7)));
        break;
    case 4:
    case 5:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 3)));
        break;
    case 7:
    case 8:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 4)));
        break;
    case 2:
    case 1:
    case 3:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 5)));
        break;
    case 15:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 8)));
        break;
    case 10:
    case 11:
    case 12:
        sub_0200BECC(param0->unk_08, 4, (sub_02017070(1, 7)));
        break;
    }

    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    sub_020237BC(v0);
}

static void sub_02092B1C (UnkStruct_02090800 * param0, int param1, int param2)
{
    UnkStruct_02023790 * v0 = sub_02023790((((2 * 18) * 2) * 5), param0->unk_00);

    param0->unk_1C.unk_04 = sub_02023790((((2 * 18) * 2) * 5), param0->unk_00);

    sub_0200B1B8(param0->unk_04, param1, v0);

    if (param2 == 0) {
        sub_0200B60C(param0->unk_08, 5, sub_02074470(param0->unk_0C, 146, NULL), 2, 2, 1); sub_0200C2E0(param0->unk_08, 6, sub_02074470(param0->unk_0C, 147, NULL)); sub_0200B60C(param0->unk_08, 7, sub_02074470(param0->unk_0C, 148, NULL), 2, 0, 1);
        sub_0200BECC(param0->unk_08, 8, sub_02074470(param0->unk_0C, 152, NULL));
    } else {
        sub_0200B60C(param0->unk_08, 5, sub_02074470(param0->unk_0C, 149, NULL), 2, 2, 1); sub_0200C2E0(param0->unk_08, 6, sub_02074470(param0->unk_0C, 150, NULL)); sub_0200B60C(param0->unk_08, 7, sub_02074470(param0->unk_0C, 151, NULL), 2, 0, 1);
        sub_0200BECC(param0->unk_08, 8, sub_02074470(param0->unk_0C, 153, NULL));
    }

    sub_0200C388(param0->unk_08, param0->unk_1C.unk_04, v0);
    sub_020237BC(v0);
}

static const u16 Unk_020F5578[6][5] = {
    {0x47, 0x48, 0x49, 0x4A, 0x4B},
    {0x4C, 0x4D, 0x4E, 0x4F, 0x50},
    {0x51, 0x52, 0x53, 0x54, 0x55},
    {0x56, 0x57, 0x58, 0x59, 0x5A},
    {0x5B, 0x5C, 0x5D, 0x5E, 0x5F},
    {0x60, 0x61, 0x62, 0x63, 0x64}
};

static void sub_02092C24 (UnkStruct_02090800 * param0)
{
    int v0[6], v1, v2;
    int v3, v4;

    param0->unk_24.unk_04 = sub_02023790(((2 * 18) * 2), param0->unk_00);

    v0[0] = (sub_02074470(param0->unk_0C, 70, NULL));
    v0[1] = (sub_02074470(param0->unk_0C, 71, NULL));
    v0[2] = (sub_02074470(param0->unk_0C, 72, NULL));
    v0[3] = (sub_02074470(param0->unk_0C, 73, NULL));
    v0[4] = (sub_02074470(param0->unk_0C, 74, NULL));
    v0[5] = (sub_02074470(param0->unk_0C, 75, NULL));

    switch ((sub_02074470(param0->unk_0C, 0, NULL) % 6)) {
    default:
    case 0:
        v1 = 0;
        v2 = v0[0];

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }
        break;
    case 1:
        v1 = 1;
        v2 = v0[1];

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }
        break;
    case 2:
        v1 = 2;
        v2 = v0[2];

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }
        break;
    case 3:
        v1 = 3;
        v2 = v0[3];

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }
        break;
    case 4:
        v1 = 4;
        v2 = v0[4];

        if (v2 < v0[5]) {
            v1 = 5; v2 = v0[5];
        }

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }
        break;
    case 5:
        v1 = 5;
        v2 = v0[5];

        if (v2 < v0[0]) {
            v1 = 0; v2 = v0[0];
        }

        if (v2 < v0[1]) {
            v1 = 1; v2 = v0[1];
        }

        if (v2 < v0[2]) {
            v1 = 2; v2 = v0[2];
        }

        if (v2 < v0[3]) {
            v1 = 3; v2 = v0[3];
        }

        if (v2 < v0[4]) {
            v1 = 4; v2 = v0[4];
        }
        break;
    }

    v4 = Unk_020F5578[v1][(v2 % 5)];
    sub_0200B1B8(param0->unk_04, v4, param0->unk_24.unk_04);
}

static const u16 Unk_020F556C[6] = {
    0x46,
    0x41,
    0x42,
    0x43,
    0x44,
    0x45
};

static void sub_02092E10 (UnkStruct_02090800 * param0)
{
    int v0, v1, v2;

    param0->unk_2C.unk_04 = sub_02023790(((2 * 18) * 2), param0->unk_00);
    v1 = 0;

    for (v0 = 0; v0 < 5; v0++) {
        if (sub_0207762C(param0->unk_0C, v0) == 1) {
            v1 = v0 + 1;
        }
    }

    v2 = Unk_020F556C[v1];
    sub_0200B1B8(param0->unk_04, v2, param0->unk_2C.unk_04);
}

static void sub_02092E4C (UnkStruct_02090800 * param0)
{
    int v0 = sub_02074470(param0->unk_0C, 9, NULL);
    int v1;

    param0->unk_34.unk_04 = sub_02023790((((2 * 18) * 2) * 4), param0->unk_00);

    if (v0 <= 5) {
        v1 = 105;
    } else if (v0 <= 10) {
        v1 = 106;
    } else if (v0 <= 40) {
        v1 = 107;
    } else {
        v1 = 108;
    }

    sub_0200B1B8(param0->unk_04, v1, param0->unk_34.unk_04);
}

static int sub_02092E8C (UnkStruct_02073C74 * param0, BOOL param1, int param2)
{
    int v0 = 0;

    if (sub_02074470(param0, 76, NULL) == 0) {
        if ((sub_02074470(param0, 152, NULL) == 0)) {
            if (sub_02074470(param0, 153, NULL) == (sub_02017070(0, 55))) {
                v0 = 15;
            } else if ((sub_02074470(param0, 110, NULL) == 1)) {
                if (param1 == 1) {
                    v0 = 7;
                } else {
                    v0 = 8;
                }
            } else if (sub_02074470(param0, 153, NULL) == (sub_02017070(1, 1))) {
                v0 = 2;
            } else {
                if (param1 == 1) {
                    v0 = 0;
                } else {
                    v0 = 1;
                }
            }
        } else {
            if ((sub_02074470(param0, 110, NULL) == 1)) {
                if (sub_02074470(param0, 152, NULL) == sub_02017070(1, 2)) {
                    if (param1 == 1) {
                        v0 = 13;
                    } else {
                        v0 = 14;
                    }
                } else if (sub_02074470(param0, 152, NULL) == sub_02017070(2, 1)) {
                    if (param1 == 1) {
                        v0 = 11;
                    } else {
                        v0 = 12;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 9;
                    } else {
                        v0 = 10;
                    }
                }
            } else {
                if ((sub_02074470(param0, 152, NULL) == sub_02017070(1, 1)) || (sub_02074470(param0, 152, NULL) == sub_02017070(1, 0)) || (sub_02074470(param0, 152, NULL) == sub_02017070(1, 9)) || (sub_02074470(param0, 152, NULL) == sub_02017070(1, 10)) || (sub_02074470(param0, 152, NULL) == sub_02017070(1, 11))) {
                    if (param1 == 1) {
                        v0 = 5;
                    } else {
                        v0 = 6;
                    }
                } else {
                    if (param1 == 1) {
                        v0 = 3;
                    } else {
                        v0 = 4;
                    }
                }
            }
        }
    } else {
        if (param1 == 1) {
            if ((sub_02074470(param0, 110, NULL) == 1)) {
                if (sub_02074470(param0, 152, NULL) == (sub_02017070(2, 1))) {
                    v0 = 20;
                } else {
                    v0 = 18;
                }
            } else {
                v0 = 16;
            }
        } else {
            if ((sub_02074470(param0, 110, NULL) == 1)) {
                v0 = 19;
            } else {
                v0 = 17;
            }
        }
    }

    return v0;
}

void sub_0209304C (UnkStruct_02073C74 * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4)
{
    sub_0209305C(&param0->unk_00, param1, param2, param3, param4);
}

void sub_0209305C (UnkStruct_02073C74_sub1 * param0, UnkStruct_02025E6C * param1, int param2, int param3, int param4)
{
    switch (param2) {
    case 0:
        if (param3 > (sub_02017070(1, 0))) {
            param3 = (sub_02017070(2, 2));
        }

        if (sub_02074570(param0, 76, NULL) == 0) {
            sub_02093368(param0, 0);
            sub_020932F0(param0, param3, 1);
            sub_020933C8(param0);
        } else {
            sub_020932F0(param0, param3, 0);
            sub_02093368(param0, 1);
        }

        sub_020932A4(param0, param1, param4);
        break;
    case 1:
        if (sub_02074570(param0, 76, NULL) == 0) {
            sub_02093368(param0, 0);
            sub_020932F0(param0, (sub_02017070(1, 1)), 1);
            sub_020933C8(param0);
        } else {
            sub_02093368(param0, 0);
            sub_020932F0(param0, (sub_02017070(1, 1)), 1);
        }
        break;
    case 2:
        sub_02093368(param0, 0);
        sub_020932F0(param0, (sub_02017070(0, 55)), 1);
        sub_020933C8(param0);
        break;
    case 3:
        sub_020932F0(param0, param3, 0);
        sub_02093368(param0, 1);
        sub_020932A4(param0, param1, param4);
        break;
    case 4:
        if (sub_0207884C(param0, param1, param4) == 1) {
            if (sub_02074570(param0, 76, NULL) == 0) {
                sub_02093368(param0, 0);
                sub_020932F0(param0, param3, 1);
                sub_020933C8(param0);
            } else {
                sub_020932F0(param0, param3, 0);
                sub_02093368(param0, 1);
            }
        } else {
            if (sub_02074570(param0, 76, NULL) == 0) {
                sub_02093368(param0, 0);
                sub_020932F0(param0, param3, 1);
                sub_020933C8(param0);
            } else {
                sub_02093368(param0, 0);
                sub_020932F0(param0, param3, 1);
            }
        }

        sub_020933E8(param0);
        break;
    case 5:
        if (sub_02074570(param0, 76, NULL) == 0) {
            (void)0;
        } else {
            sub_020932F0(param0, (sub_02017070(1, 2)), 1);
        }
        break;
    case 6:
        if (param3 > (sub_02017070(1, 0))) {
            param3 = (sub_02017070(2, 2));
        }

        if (sub_0207884C(param0, param1, param4) == 0) {
            {
                int v0;

                v0 = sub_02074570(param0, 153, NULL);
                sub_02074C60(param0, 152, &v0);

                v0 = sub_02074570(param0, 149, NULL);
                sub_02074C60(param0, 146, &v0);

                v0 = sub_02074570(param0, 150, NULL);
                sub_02074C60(param0, 147, &v0);

                v0 = sub_02074570(param0, 151, NULL);
                sub_02074C60(param0, 148, &v0);
            }
        }

        sub_020932F0(param0, param3, 1);
        sub_020932A4(param0, param1, param4);
        break;
    }
}

static void sub_020932A4 (UnkStruct_02073C74_sub1 * param0, UnkStruct_02025E6C * param1, int param2)
{
    int v0 = sub_02025F20(param1);
    int v1 = sub_02025F30(param1);
    UnkStruct_02023790 * v2 = sub_02025F04(param1, param2);

    sub_02074C60(param0, 7, &v0);
    sub_02074C60(param0, 157, &v1);
    sub_02074C60(param0, 145, v2);
    sub_020237BC(v2);
}

static void sub_020932F0 (UnkStruct_02073C74_sub1 * param0, int param1, int param2)
{
    RTCDate v0;

    sub_020138A4(&v0);

    if (param2 == 0) {
        sub_02074C60(param0, 152, &param1);
        sub_02074C60(param0, 146, &v0.year);
        sub_02074C60(param0, 147, &v0.month);
        sub_02074C60(param0, 148, &v0.day);
    } else {
        sub_02074C60(param0, 153, &param1);
        sub_02074C60(param0, 149, &v0.year);
        sub_02074C60(param0, 150, &v0.month);
        sub_02074C60(param0, 151, &v0.day);
    }
}

static void sub_02093368 (UnkStruct_02073C74_sub1 * param0, int param1)
{
    int v0 = 0;

    if (param1 == 0) {
        sub_02074C60(param0, 152, &v0);
        sub_02074C60(param0, 146, &v0);
        sub_02074C60(param0, 147, &v0);
        sub_02074C60(param0, 148, &v0);
    } else {
        sub_02074C60(param0, 153, &v0);
        sub_02074C60(param0, 149, &v0);
        sub_02074C60(param0, 150, &v0);
        sub_02074C60(param0, 151, &v0);
    }
}

static void sub_020933C8 (UnkStruct_02073C74_sub1 * param0)
{
    int v0 = sub_02074570(param0, 161, NULL);
    sub_02074C60(param0, 156, &v0);
}

static void sub_020933E8 (UnkStruct_02073C74_sub1 * param0)
{
    int v0 = 1;
    sub_02074C60(param0, 110, &v0);
}
