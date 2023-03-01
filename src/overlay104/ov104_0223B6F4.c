#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_strbuf_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0204B184.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223A348_sub1.h"
#include "overlay104/struct_ov104_0223BA10.h"

#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_0203061C.h"
#include "unk_020329E0.h"
#include "unk_02034198.h"
#include "unk_02051D8C.h"
#include "unk_0205DFC4.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_02096420.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"

static int ov104_0223B6F4(u8 param0, int param1, int param2);
void ov104_0223B760(u8 param0, int param1, u16 param2[], u8 param3);
u8 ov104_0223B7A8(u8 param0, BOOL param1);
u8 ov104_0223B7DC(u8 param0, BOOL param1);
UnkStruct_ov6_02240D5C * ov104_0223B810(UnkStruct_ov104_0223BA10 * param0, UnkStruct_ov104_02230BE4 * param1);
static u32 ov104_0223B9E4(u8 param0);
u8 ov104_0223BA10(UnkStruct_ov104_0223BA10 * param0);
BOOL ov104_0223BA14(u8 param0);
void ov104_0223BA24(Party * param0);
void ov104_0223BAB8(UnkStruct_ov104_0223BA10 * param0);
void ov104_0223BA7C(UnkStruct_ov104_0223BA10 * param0, UnkStruct_02073C74 * param1);
void ov104_0223BAA0(UnkStruct_ov104_0223BA10 * param0, Party * param1, UnkStruct_02073C74 * param2);
static u16 ov104_0223BB10(UnkStruct_ov104_0223BA10 * param0);
u16 ov104_0223BB60(UnkStruct_ov104_0223BA10 * param0);
u16 ov104_0223BC24(u16 param0);
void sub_02052894(UnkStruct_ov6_02240D5C * param0);
void ov104_0223BB84(UnkStruct_02018340 * param0, UnkStruct_ov104_0223BA10 * param1, u32 param2);
static void ov104_0223BBC4(u16 * param0, u16 param1);

static const struct {
    u16 unk_00;
    u16 unk_02;
    u16 unk_04;
    u16 unk_06;
} Unk_ov104_02241258[] = {
    {0x0, 0x63, 0x64, 0x77},
    {0x50, 0x77, 0x78, 0x8B},
    {0x64, 0x8B, 0x8C, 0x9F},
    {0x78, 0x9F, 0xA0, 0xB3},
    {0x8C, 0xB3, 0xB4, 0xC7},
    {0xA0, 0xC7, 0xC8, 0xDB},
    {0xB4, 0xDB, 0xDC, 0xEF},
    {0xC8, 0x12B, 0xC8, 0x12B}
};

static int ov104_0223B6F4 (u8 param0, int param1, int param2)
{
    int v0, v1, v2, v3, v4;

    if (param0 == 0) {
        v3 = (param1 * 7) + (param2 + 1);

        if (v3 == 21) {
            return 313;
        } else if (v3 == 49) {
            return 314;
        }
    }

    v4 = param1;

    if (v4 >= NELEMS(Unk_ov104_02241258)) {
        v4 = NELEMS(Unk_ov104_02241258) - 1;
    }

    if ((param2 == 7 - 1) || (param2 == (7 * 2) - 1)) {
        v1 = Unk_ov104_02241258[v4].unk_06 - Unk_ov104_02241258[v4].unk_04;
        v2 = Unk_ov104_02241258[v4].unk_04;
    } else {
        v1 = Unk_ov104_02241258[v4].unk_02 - Unk_ov104_02241258[v4].unk_00;
        v2 = Unk_ov104_02241258[v4].unk_00;
    }

    v0 = v2 + (sub_0201D2E8() % v1);
    return v0;
}

void ov104_0223B760 (u8 param0, int param1, u16 param2[], u8 param3)
{
    int v0 = 0;
    int v1;

    do {
        param2[v0] = ov104_0223B6F4(param0, param1, v0);

        for (v1 = 0; v1 < v0; v1++) {
            if (param2[v1] == param2[v0]) {
                break;
            }
        }

        if (v1 != v0) {
            continue;
        }

        v0++;
    } while (v0 < param3);
}

u8 ov104_0223B7A8 (u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

u8 ov104_0223B7DC (u8 param0, BOOL param1)
{
    switch (param0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (param1 == 0) {
            return 2;
        } else {
            return 2 * 2;
        }
    }

    GF_ASSERT(0);
    return 3;
}

UnkStruct_ov6_02240D5C * ov104_0223B810 (UnkStruct_ov104_0223BA10 * param0, UnkStruct_ov104_02230BE4 * param1)
{
    int v0;
    u32 v1;
    u8 v2, v3, v4;
    UnkStruct_ov6_02240D5C * v5;
    UnkStruct_02073C74 * v6;
    UnkStruct_ov104_0223A348_sub1 v7;
    UnkStruct_0204B184 * v8;
    UnkStruct_0200B144 * v9;
    Strbuf * v10;
    UnkStruct_02025E6C * v11;

    v2 = ov104_0223B7A8(param0->unk_10, 0);
    v3 = ov104_0223B7DC(param0->unk_10, 0);

    sub_02097284(param0->unk_2C);
    v5 = sub_02051D8C(11, ov104_0223B9E4(param0->unk_10));
    sub_020521B8(v5, NULL, param1->unk_08, param1->unk_1C, param1->unk_0C, param1->unk_10, param1->unk_20);

    v5->unk_128 = 21;
    v5->unk_12C = 21;

    Party_InitWithCapacity(v5->unk_04[0], v2);

    if (sub_0203608C() == 0) {
        v4 = 0;
    } else {
        v4 = 2;
    }

    v6 = sub_02073C74(11);

    for (v0 = 0; v0 < v2; v0++) {
        sub_020775EC(Party_GetPokemonBySlotIndex(param0->unk_28, (v4 + v0)), v6);

        sub_0205213C(v5, v6, 0);
    }

    Heap_FreeToHeap(v6);
    sub_02052894(v5);

    v8 = ov104_0222DD04(&v7, param0->unk_30[param0->unk_11], 11, 178);

    Heap_FreeToHeap(v8);
    ov104_0222E284(v5, &v7, v3, 1, 11);
    Party_InitWithCapacity(v5->unk_04[1], ov104_0223B7DC(param0->unk_10, 0));

    for (v0 = 0; v0 < 4; v0++) {
        v5->unk_28[v0].unk_0C = ov104_0223BB10(param0);
    }

    v6 = sub_02073C74(11);

    for (v0 = 0; v0 < v3; v0++) {
        sub_020775EC(Party_GetPokemonBySlotIndex(param0->unk_2C, v0), v6);
        sub_0205213C(v5, v6, 1);
    }

    Heap_FreeToHeap(v6);

    switch (param0->unk_10) {
    case 2:
    case 3:
        sub_02052894(v5);

        v11 = sub_02032EE8(1 - sub_0203608C());
        sub_02025E80(v11, v5->unk_D0[2]);

        v8 = ov104_0222DD04(&v7, param0->unk_30[param0->unk_11 + 7], 11, 178);
        Heap_FreeToHeap(v8);

        ov104_0222E284(v5, &v7, v3, 3, 11);
        Party_InitWithCapacity(v5->unk_04[3], ov104_0223B7DC(param0->unk_10, 0));

        v6 = sub_02073C74(11);

        for (v0 = 0; v0 < v3; v0++) {
            sub_020775EC(Party_GetPokemonBySlotIndex(param0->unk_2C, (v3 + v0)), v6);
            sub_0205213C(v5, v6, 3);
        }

        Heap_FreeToHeap(v6);
        break;
    }

    return v5;
}

static u32 ov104_0223B9E4 (u8 param0)
{
    switch (param0) {
    case 0:
        return (0x0 | 0x1) | 0x80;
    case 1:
        return (0x2 | 0x1) | 0x80;
    case 2:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    case 3:
        return (((0x4 | 0x1) | 0x2) | 0x8) | 0x80;
    }

    return (0x0 | 0x1) | 0x80;
}

u8 ov104_0223BA10 (UnkStruct_ov104_0223BA10 * param0)
{
    return 50;
}

BOOL ov104_0223BA14 (u8 param0)
{
    switch (param0) {
    case 2:
    case 3:
        return 1;
    }

    return 0;
}

void ov104_0223BA24 (Party * param0)
{
    int v0, v1, v2;
    u32 v3;
    UnkStruct_02073C74 * v4;

    v2 = Party_GetCurrentCount(param0);

    for (v0 = 0; v0 < v2; v0++) {
        v4 = Party_GetPokemonBySlotIndex(param0, v0);

        if (sub_02074470(v4, 172, NULL) == 0) {
            continue;
        }

        if (sub_02074470(v4, 163, NULL) == 0) {
            v3 = 1;
            sub_02074B30(v4, 163, &v3);
        }

        v3 = 0;
        sub_02074B30(v4, 160, &v3);
    }

    return;
}

void ov104_0223BA7C (UnkStruct_ov104_0223BA10 * param0, UnkStruct_02073C74 * param1)
{
    sub_02077EE4(param1, sub_02025E38(param0->unk_04), 4, 0, 0, 11);
    return;
}

void ov104_0223BAA0 (UnkStruct_ov104_0223BA10 * param0, Party * param1, UnkStruct_02073C74 * param2)
{
    ov104_0223BA7C(param0, param2);
    Party_AddPokemon(param1, param2);
    return;
}

void ov104_0223BAB8 (UnkStruct_ov104_0223BA10 * param0)
{
    int v0, v1;
    u8 v2;
    UnkStruct_02073C74 * v3;

    sub_0207A008(param0->unk_2C);

    v2 = ov104_0223B7DC(param0->unk_10, 1);
    v3 = sub_02073C74(11);

    for (v0 = 0; v0 < v2; v0++) {
        ov104_0222DF40(&param0->unk_288[v0], v3, ov104_0223BA10(param0));
        ov104_0223BAA0(param0, param0->unk_2C, v3);
    }

    Heap_FreeToHeap(v3);

    return;
}

static u16 ov104_0223BB10 (UnkStruct_ov104_0223BA10 * param0)
{
    u16 v0, v1;

    if (param0->unk_10 == 0) {
        if ((param0->unk_30[param0->unk_11] == 313) || (param0->unk_30[param0->unk_11] == 314)) {
            return 0x1 | 0x2 | 0x4;
        }
    }

    v1 = ov104_0223BB60(param0);
    v0 = (0x1 | 0x2 | 0x4);

    switch ((v1 + 1)) {
    case 1:
    case 2:
        v0 = 0;
        break;
    case 3:
    case 4:
        v0 = 0x1;
        break;
    }

    return v0;
}

u16 ov104_0223BB60 (UnkStruct_ov104_0223BA10 * param0)
{
    u16 v0;

    v0 = param0->unk_16;

    if (ov104_0223BA14(param0->unk_10) == 1) {
        if (param0->unk_A12 > param0->unk_16) {
            v0 = param0->unk_A12;
        }
    }

    return v0;
}

void ov104_0223BB84 (UnkStruct_02018340 * param0, UnkStruct_ov104_0223BA10 * param1, u32 param2)
{
    int v0;
    u16 v1[30];

    ov104_0223BBC4(v1, ov104_0223BB60(param1));

    sub_020198C0(param0, param2, v1, 11, 6, 10, 3);
    sub_0201C3C0(param0, param2);

    return;
}

static void ov104_0223BBC4 (u16 * param0, u16 param1)
{
    u8 v0[10];
    u16 v1;
    u32 v2, v3, v4, v5;

    v1 = ov104_0223BC24(param1);

    for (v3 = 0; v3 < (10 / 2); v3++) {
        v0[v3] = v3;
        v0[(10 / 2) + v3] = (((10 / 2) - 1) - v3);
    }

    v2 = (0x60 * v1) + 0x10;

    for (v3 = 0; v3 < 3; v3++) {
        for (v4 = 0; v4 < 10; v4++) {
            v5 = v2 + (v3 * 0x20) + v0[v4];
            param0[v4 + (v3 * 10)] = v5;

            if (v4 >= (10 / 2)) {
                param0[v4 + (v3 * 10)] |= (1 << 10);
            }
        }
    }

    return;
}

u16 ov104_0223BC24 (u16 param0)
{
    if (param0 >= 8) {
        return 8 - 1;
    }

    return param0;
}

void ov104_0223BC2C (UnkStruct_0203068C * param0, u8 param1, int param2)
{
    u16 v0;

    sub_02030824(param0, sub_0205E630(param1), sub_0205E6A8(sub_0205E630(param1)), param2);
    v0 = sub_02030698(param0, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)));

    if (v0 + param2 > 9999) {
        sub_020306E4(param0, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)), 9999);
    } else {
        sub_02030804(param0, sub_0205E658(param1), sub_0205E6A8(sub_0205E658(param1)), param2);
    }

    return;
}
