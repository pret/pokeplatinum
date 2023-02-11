#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_0202783C_decl.h"
#include "struct_decls/struct_0202C878_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020308A0_decl.h"
#include "struct_decls/struct_0203E724_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay005/struct_ov5_021F6704_decl.h"

#include "struct_defs/struct_02013A04_t.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203E724_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_0200112C.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200D9E8.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_02020AEC.h"
#include "unk_02023790.h"
#include "unk_0202631C.h"
#include "unk_020277A4.h"
#include "unk_0202C858.h"
#include "unk_0202CD50.h"
#include "unk_02030880.h"
#include "unk_02038F8C.h"
#include "unk_0203E724.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_0205DFC4.h"
#include "unk_0205E7D0.h"
#include "unk_02061804.h"
#include "unk_020677F4.h"
#include "unk_0206AFE0.h"
#include "unk_02073C2C.h"
#include "party.h"
#include "unk_0207D3B8.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F6454.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov5_02200C90;

struct UnkStruct_ov5_021F6704_t {
    UnkStruct_0203CDB0 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkStruct_0205AA50 unk_08;
    UnkStruct_0205AA50 * unk_18;
    UnkStruct_02023790 * unk_1C[120];
    UnkStruct_0200B144 * unk_1FC;
    UnkStruct_0200B358 * unk_200;
    u8 unk_204;
    u8 unk_205;
    u8 unk_206;
    u8 unk_207_0 : 1;
    u8 unk_207_1 : 1;
    u8 unk_207_2 : 6;
    u8 unk_208;
    u8 unk_209;
    u8 unk_20A;
    u8 unk_20B;
    u16 * unk_20C;
    u16 * unk_210;
    u16 * unk_214;
    u16 * unk_218;
    UnkStruct_ov84_02240FA8 unk_21C;
    UnkStruct_0200112C * unk_23C;
    u16 unk_240;
    u16 unk_242;
    UnkStruct_02013A04 unk_244[120];
    u16 unk_604[120];
    u16 unk_6F4;
};

static u16 * ov5_021F65FC(int param0, int param1, int * param2);
BOOL ov5_021F6454(UnkStruct_0203E724 * param0);
static BOOL ov5_021F65D4(UnkStruct_0203E724 * param0);
static void ov5_021F70CC(Pokemon * param0, int * param1, int * param2);
BOOL ov5_021F71B8(UnkStruct_0203E724 * param0);
BOOL ov5_021F7208(UnkStruct_0203E724 * param0);
BOOL ov5_021F72B8(UnkStruct_0203E724 * param0);
BOOL ov5_021F6B3C(UnkStruct_0203E724 * param0);
BOOL ov5_021F6E50(UnkStruct_0203E724 * param0);
static void ov5_021F661C(UnkStruct_ov5_021F6704 * param0, UnkStruct_0200B144 * param1);
static void ov5_021F6624(UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021F6704 * param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 * param6, UnkStruct_0200B358 * param7, UnkStruct_0205AA50 * param8, UnkStruct_0200B144 * param9, u16 * param10, u16 * param11);
UnkStruct_ov5_021F6704 * ov5_021F6704(UnkStruct_0203CDB0 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0205AA50 * param7, UnkStruct_0200B144 * param8, u16 * param9, u16 * param10);
void ov5_021F6760(UnkStruct_ov5_021F6704 * param0, u32 param1, u32 param2, u32 param3);
static void ov5_021F6768(UnkStruct_ov5_021F6704 * param0);
static void ov5_021F6830(UnkStruct_ov5_021F6704 * param0, u32 param1, u32 param2, u32 param3);
static void ov5_021F68BC(UnkStruct_ov5_021F6704 * param0);
static void ov5_021F69CC(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov5_021F69F0(UnkStruct_0200112C * param0, u32 param1, u8 param2);
static void ov5_021F6A34(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021F6AD4(UnkStruct_ov5_021F6704 * param0);

static u16 Unk_ov5_0220210C[] = {
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x18,
    0x19,
    0x1A
};

BOOL ov5_021F6454 (UnkStruct_0203E724 * param0)
{
    int v0;
    UnkStruct_020308A0 * v1;
    u16 v2;
    u16 * v3;
    int v4, v5;
    UnkStruct_0200B144 * v6;
    UnkStruct_0200B144 * v7;
    UnkStruct_0203CDB0 * v8 = param0->unk_34;
    UnkStruct_ov5_021F6704 * v9;
    UnkStruct_0200B358 ** v10 = sub_0203F098(v8, 15);
    u16 v11 = inline_02049538(param0);
    u16 v12 = inline_02049538(param0);
    u16 v13 = sub_0203E838(param0);
    u16 v14 = sub_0203E838(param0);
    u16 v15 = sub_0203E838(param0);

    param0->unk_18[0] = v13;

    v6 = sub_0200B144(0, 26, 412, 32);
    v9 = ov5_021F6704(v8, 20, 1, 0, 1, sub_0203F118(v8, v13), *v10, sub_0203F098(param0->unk_34, 1), v6, sub_0203F118(v8, v14), sub_0203F118(v8, v15));
    v1 = sub_020308A0(v8->unk_0C, 11, &v0);

    if (v0 == 1) {
        v3 = ov5_021F65FC(32, Unk_ov5_0220210C[v12], &v5);

        for (v4 = 0; v4 < v5; v4++) {
            v2 = sub_020308BC(v8->unk_0C, v1, sub_0205E584(v11), v3[v4]);

            if (v2 != 0) {
                ov5_021F6760(v9, v3[v4], 0xff, v3[v4]);
            }
        }

        Heap_FreeToHeap(v3);
    }

    if (v1 != NULL) {
        Heap_FreeToHeap(v1);
    }

    v7 = sub_0200B144(1, 26, 361, 32);

    ov5_021F661C(v9, v7);
    ov5_021F6760(v9, 12, 0xff, 0xfffe);

    sub_0200B190(v7);

    ov5_021F661C(v9, v6);
    ov5_021F6768(v9);

    sub_0203E764(param0, ov5_021F65D4);
    sub_0200B190(v6);

    return 1;
}

static BOOL ov5_021F65D4 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0203CDB0 * v0 = param0->unk_34;
    u16 * v1 = sub_0203F118(v0, param0->unk_18[0]);

    if (*v1 == 0xeeee) {
        return 0;
    }

    return 1;
}

static u16 * ov5_021F65FC (int param0, int param1, int * param2)
{
    u32 v0;
    u16 * v1;

    v1 = sub_02007068(75, param1, 0, param0, 0, &v0);
    *param2 = v0 / (sizeof(u16));

    return v1;
}

static void ov5_021F661C (UnkStruct_ov5_021F6704 * param0, UnkStruct_0200B144 * param1)
{
    param0->unk_1FC = param1;
    return;
}

static void ov5_021F6624 (UnkStruct_0203CDB0 * param0, UnkStruct_ov5_021F6704 * param1, u8 param2, u8 param3, u8 param4, u8 param5, u16 * param6, UnkStruct_0200B358 * param7, UnkStruct_0205AA50 * param8, UnkStruct_0200B144 * param9, u16 * param10, u16 * param11)
{
    int v0;

    param1->unk_1FC = param9;
    param1->unk_207_1 = 0;
    param1->unk_200 = param7;
    param1->unk_00 = param0;
    param1->unk_210 = param6;

    *param1->unk_210 = 0;

    param1->unk_214 = param10;
    param1->unk_218 = param11;
    param1->unk_207_0 = param5;
    param1->unk_206 = param4;
    param1->unk_208 = param2;
    param1->unk_209 = param3;
    param1->unk_20B = 0;
    param1->unk_18 = param8;
    param1->unk_204 = 3;
    param1->unk_6F4 = param4;

    for (v0 = 0; v0 < 120; v0++) {
        param1->unk_244[v0].unk_00 = NULL;
        param1->unk_244[v0].unk_04 = 0;
        param1->unk_604[v0] = 0xff;
    }

    for (v0 = 0; v0 < 120; v0++) {
        param1->unk_1C[v0] = sub_02023790((40 * 2), 4);
    }

    *param1->unk_210 = 0xeeee;
    return;
}

UnkStruct_ov5_021F6704 * ov5_021F6704 (UnkStruct_0203CDB0 * param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 * param5, UnkStruct_0200B358 * param6, UnkStruct_0205AA50 * param7, UnkStruct_0200B144 * param8, u16 * param9, u16 * param10)
{
    UnkStruct_ov5_021F6704 * v0;
    int v1;

    v0 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021F6704));

    if (v0 == NULL) {
        return NULL;
    }

    memset(v0, 0, sizeof(UnkStruct_ov5_021F6704));
    ov5_021F6624(param0, v0, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);

    return v0;
}

void ov5_021F6760 (UnkStruct_ov5_021F6704 * param0, u32 param1, u32 param2, u32 param3)
{
    ov5_021F6830(param0, param1, param2, param3);
    return;
}

static void ov5_021F6768 (UnkStruct_ov5_021F6704 * param0)
{
    if (param0->unk_20B > 8) {
        sub_0201A7E8(param0->unk_00->unk_08, &param0->unk_08, 3, param0->unk_208, param0->unk_209, 11, 8 * 2, 13, 1);
    } else {
        sub_0201A7E8(param0->unk_00->unk_08, &param0->unk_08, 3, param0->unk_208, param0->unk_209, 11, param0->unk_20B * 2, 13, 1);
    }

    sub_0200DAA4(param0->unk_00->unk_08, 3, 1024 - (18 + 12) - 9, 11, 0, 4);
    sub_0200DC48(&param0->unk_08, 1, 1024 - (18 + 12) - 9, 11);
    ov5_021F68BC(param0);

    param0->unk_23C = sub_0200112C((const UnkStruct_ov84_02240FA8 *)&param0->unk_21C, *param0->unk_214, *param0->unk_218, 4);
    param0->unk_04 = sub_0200D9E8(ov5_021F6A34, param0, 0);

    return;
}

static void ov5_021F6830 (UnkStruct_ov5_021F6704 * param0, u32 param1, u32 param2, u32 param3)
{
    int v0;
    void * v1;

    {
        UnkStruct_02023790 * v2 = sub_02023790((40 * 2), 4);

        sub_0200B1B8(param0->unk_1FC, param1, v2);
        sub_0200C388(param0->unk_200, param0->unk_1C[param0->unk_20B], v2);
        param0->unk_244[param0->unk_20B].unk_00 = (const void *)param0->unk_1C[param0->unk_20B];
        sub_020237BC(v2);
    }

    if (param3 == 0xfa) {
        param0->unk_244[param0->unk_20B].unk_04 = 0xfffffffd;
    } else {
        param0->unk_244[param0->unk_20B].unk_04 = param3;
    }

    param0->unk_604[param0->unk_20B] = param2;
    param0->unk_20B++;

    return;
}

static void ov5_021F68BC (UnkStruct_ov5_021F6704 * param0)
{
    param0->unk_21C.unk_00 = param0->unk_244;
    param0->unk_21C.unk_04 = ov5_021F69F0;
    param0->unk_21C.unk_08 = ov5_021F69CC;
    param0->unk_21C.unk_0C = &param0->unk_08;
    param0->unk_21C.unk_10 = param0->unk_20B;
    param0->unk_21C.unk_12 = 8;
    param0->unk_21C.unk_14 = 1;
    param0->unk_21C.unk_15 = 12;
    param0->unk_21C.unk_16 = 2;
    param0->unk_21C.unk_17_0 = 1;
    param0->unk_21C.unk_17_4 = 1;
    param0->unk_21C.unk_18_0 = 15;
    param0->unk_21C.unk_18_4 = 2;
    param0->unk_21C.unk_1A_0 = 0;
    param0->unk_21C.unk_1A_3 = 16;
    param0->unk_21C.unk_1A_7 = 1;
    param0->unk_21C.unk_1A_9 = 0;
    param0->unk_21C.unk_1A_15 = 0;
    param0->unk_21C.unk_1C = (void *)param0;

    return;
}

static void ov5_021F69CC (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    if (param1 == 0xfffffffd) {
        sub_0200147C(param0, 3, 15, 4);
    } else {
        sub_0200147C(param0, 1, 15, 2);
    }
}

static void ov5_021F69F0 (UnkStruct_0200112C * param0, u32 param1, u8 param2)
{
    u32 v0, v1;
    u16 v2 = 0;
    u16 v3 = 0;
    UnkStruct_ov5_021F6704 * v4 = (UnkStruct_ov5_021F6704 *)sub_02001504(param0, 19);

    sub_020014DC(param0, &v2, &v3);

    if ((v4->unk_214 != NULL) && (v4->unk_218 != NULL)) {
        *v4->unk_214 = v2;
        *v4->unk_218 = v3;
    }

    return;
}

static void ov5_021F6A34 (UnkStruct_0201CD38 * param0, void * param1)
{
    u16 v0;
    u32 v1;
    UnkStruct_ov5_021F6704 * v2;

    v2 = (UnkStruct_ov5_021F6704 *)param1;

    if (v2->unk_204 != 0) {
        v2->unk_204--;
        return;
    }

    if (sub_0200F2AC() == 0) {
        return;
    }

    v1 = sub_02001288(v2->unk_23C);
    v0 = v2->unk_6F4;

    sub_020014D0(v2->unk_23C, &v2->unk_6F4);

    if (v0 != v2->unk_6F4) {
        sub_02005748(1500);
    }

    switch (v1) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        if (v2->unk_207_0 == 1) {
            sub_02005748(1500);
            *v2->unk_210 = 0xfffe;
            ov5_021F6AD4(param1);
        }
        break;
    default:
        sub_02005748(1500);
        *v2->unk_210 = v1;
        ov5_021F6AD4(param1);
        break;
    }

    return;
}

static void ov5_021F6AD4 (UnkStruct_ov5_021F6704 * param0)
{
    int v0;

    sub_02005748(1500);
    sub_02001384(param0->unk_23C, NULL, NULL);
    sub_0200DC9C(param0->unk_21C.unk_0C, 0);
    sub_0201A8FC(&param0->unk_08);

    for (v0 = 0; v0 < 120; v0++) {
        sub_020237BC(param0->unk_1C[v0]);
    }

    if (param0->unk_207_1 == 1) {
        sub_0200B190(param0->unk_1FC);
    }

    sub_0200DA58(param0->unk_04);
    Heap_FreeToHeap(param0);

    return;
}

static const u16 Unk_ov5_02200C84[] = {
    0x7A,
    0x7B,
    0x7C,
    0x7F,
    0x7D,
    0x7E
};

BOOL ov5_021F6B3C (UnkStruct_0203E724 * param0)
{
    u8 v0;
    u32 v1[6];
    Pokemon * v2;
    UnkStruct_0203CDB0 * v3 = param0->unk_34;
    u16 v4 = inline_02049538(param0);
    u16 * v5 = inline_0204FCAC(param0);
    u16 * v6 = inline_0204FCAC(param0);
    u16 * v7 = inline_0204FCAC(param0);

    v2 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v3->unk_0C), v4);

    v1[0] = GetMonData(v2, MON_DATA_HP_IV, NULL);
    v1[1] = GetMonData(v2, MON_DATA_ATK_IV, NULL);
    v1[2] = GetMonData(v2, MON_DATA_DEF_IV, NULL);
    v1[3] = GetMonData(v2, MON_DATA_SPEED_IV, NULL);
    v1[4] = GetMonData(v2, MON_DATA_SPATK_IV, NULL);
    v1[5] = GetMonData(v2, MON_DATA_SPDEF_IV, NULL);

    *v5 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        *v5 += v1[v0];
    }

    *v6 = 0;
    *v7 = v1[0];

    for (v0 = 1; v0 < 6; v0++) {
        if (v1[*v6] < v1[v0]) {
            *v6 = v0;
            *v7 = v1[v0];
        } else if (v1[*v6] == v1[v0]) {
            if ((sub_0201D2E8() % 2) == 0) {
                *v6 = v0;
                *v7 = v1[v0];
            }
        }
    }

    *v6 = Unk_ov5_02200C84[*v6];
    return 0;
}

BOOL ov5_021F6C60 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    Party * v1;
    int v2, v3, v4;
    int v5, v6;
    u32 v7;
    int v8[6];
    int v9 = 0;
    UnkStruct_0203CDB0 * v10 = param0->unk_34;
    u16 * v11 = inline_0204FCAC(param0);

    v1 = Party_GetFromSavedata(v10->unk_0C);
    v2 = Party_GetCurrentCount(v1);
    *v11 = 0;

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v8[v3] = GetMonData(v0, MON_DATA_HELD_ITEM, NULL);

        if (v8[v3] == 112) {
            v9++;
        }
    }

    if (v9 > 0) {
        v4 = sub_0207D570(sub_0207D990(v10->unk_0C), 112, v9, 4);

        if (v4 == 0) {
            *v11 = 0xff;
            return 0;
        }

        v7 = 0;

        for (v3 = 0; v3 < v2; v3++) {
            if (v8[v3] == 112) {
                v0 = Party_GetPokemonBySlotIndex(v1, v3);
                sub_02074B30(v0, 6, &v7);
            }
        }
    }

    for (v3 = 0; v3 < v2; v3++) {
        v0 = Party_GetPokemonBySlotIndex(v1, v3);
        v6 = GetMonData(v0, MON_DATA_112, NULL);

        if (v6 > 0) {
            v5 = GetMonData(v0, MON_DATA_SPECIES, NULL);

            switch (v5) {
            case 487:
                sub_02077A00(v0);
                break;
            case 479:
                sub_02077C20(v0, 0, 0);
                break;
            case 492:
                sub_02077ACC(v0, 0);
                break;
            }
        }
    }

    return 0;
}

BOOL ov5_021F6D80 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    Party * v1;
    int v2, v3;
    u32 v4;
    int v5;
    int v6;
    UnkStruct_0203CDB0 * v7 = param0->unk_34;
    u16 v8 = inline_02049538(param0);
    u16 * v9 = inline_0204FCAC(param0);

    v1 = Party_GetFromSavedata(v7->unk_0C);
    v0 = Party_GetPokemonBySlotIndex(v1, v8);

    *v9 = 0;

    if (v8 == 0xff) {
        return 0;
    }

    v5 = GetMonData(v0, MON_DATA_HELD_ITEM, NULL);

    if (v5 == 112) {
        v6 = sub_0207D570(sub_0207D990(v7->unk_0C), 112, 1, 4);

        if (v6 == 0) {
            *v9 = 0xff;
            return 0;
        }

        v4 = 0;
        sub_02074B30(v0, 6, &v4);
    }

    v3 = GetMonData(v0, MON_DATA_112, NULL);

    if (v3 > 0) {
        v2 = GetMonData(v0, MON_DATA_SPECIES, NULL);

        switch (v2) {
        case 487:
            sub_02077A00(v0);
            break;
        case 479:
            sub_02077C20(v0, 0, 0);
            break;
        case 492:
            sub_02077ACC(v0, 0);
            break;
        }
    }

    return 0;
}

BOOL ov5_021F6E50 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    UnkStruct_0203CDB0 * v1 = param0->unk_34;
    u16 v2 = inline_02049538(param0);
    u16 v3 = inline_02049538(param0);

    v0 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v1->unk_0C), v2);
    sub_02074B30(v0, 112, &v3);

    return 0;
}

BOOL ov5_021F6E9C (UnkStruct_0203E724 * param0)
{
    u32 v0, v1, v2;
    int v3, v4, v5;
    Pokemon * v6;
    Party * v7;
    UnkStruct_0203CDB0 * v8 = param0->unk_34;
    u16 * v9 = inline_0204FCAC(param0);
    u16 * v10 = inline_0204FCAC(param0);

    v5 = 0;
    *v10 = 0xff;
    v7 = Party_GetFromSavedata(v8->unk_0C);
    v3 = Party_GetCurrentCount(v7);

    for (v4 = 0; v4 < v3; v4++) {
        v6 = Party_GetPokemonBySlotIndex(v7, v4);
        v0 = GetMonData(v6, MON_DATA_SPECIES, NULL);
        v1 = GetMonData(v6, MON_DATA_112, NULL);
        v2 = GetMonData(v6, MON_DATA_IS_EGG, NULL);

        if ((v0 == 479) && (v1 != 0) && (v2 == 0)) {
            if (*v10 == 0xff) {
                *v10 = v4;
            }

            v5++;
        }
    }

    *v9 = v5;
    return 0;
}

BOOL ov5_021F6F44 (UnkStruct_0203E724 * param0)
{
    u32 v0, v1;
    u16 v2, v3;
    Pokemon * v4;
    Party * v5;
    UnkStruct_0203CDB0 * v6 = param0->unk_34;
    u16 v7 = inline_02049538(param0);
    u16 v8 = inline_02049538(param0);
    u16 v9 = inline_02049538(param0);
    u16 v10 = inline_02049538(param0);

    v5 = Party_GetFromSavedata(v6->unk_0C);
    v4 = Party_GetPokemonBySlotIndex(v5, v7);

    sub_02077C20(v4, v10, v8);
    sub_0202736C(sub_02027560(v6->unk_0C), v4);

    return 0;
}

BOOL ov5_021F6FC0 (UnkStruct_0203E724 * param0)
{
    u16 v0;
    int v1, v2;
    Pokemon * v3;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    u16 v5 = inline_02049538(param0);
    u16 * v6 = inline_0204FCAC(param0);

    v3 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v4->unk_0C), v5);
    v0 = GetMonData(v3, MON_DATA_SPECIES, NULL);

    if (GetMonData(v3, MON_DATA_IS_EGG, NULL) == 0) {
        switch (v0) {
        case 10:
        case 11:
        case 13:
        case 14:
        case 129:
        case 132:
        case 202:
        case 235:
        case 265:
        case 266:
        case 268:
        case 360:
        case 374:
        case 412:
        case 415:
        case 401:
            *v6 = 0xffff;
            return 0;
        }
    }

    ov5_021F70CC(v3, &v1, &v2);
    *v6 = v2;

    return 0;
}

static void ov5_021F70CC (Pokemon * param0, int * param1, int * param2)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    v0 = GetMonData(param0, MON_DATA_HP_IV, NULL);
    v1 = GetMonData(param0, MON_DATA_ATK_IV, NULL);
    v2 = GetMonData(param0, MON_DATA_DEF_IV, NULL);
    v3 = GetMonData(param0, MON_DATA_SPEED_IV, NULL);
    v4 = GetMonData(param0, MON_DATA_SPATK_IV, NULL);
    v5 = GetMonData(param0, MON_DATA_SPDEF_IV, NULL);

    if (param1 != NULL) {
        *param1 = ((v0 & 2) >> 1) | ((v1 & 2) >> 0) | ((v2 & 2) << 1) | ((v3 & 2) << 2) | ((v4 & 2) << 3) | ((v5 & 2) << 4);
        *param1 = ((*param1) * 40 / 63) + 30;
    }

    if (param2 != NULL) {
        *param2 = ((v0 & 1) >> 0) | ((v1 & 1) << 1) | ((v2 & 1) << 2) | ((v3 & 1) << 3) | ((v4 & 1) << 4) | ((v5 & 1) << 5);
        *param2 = ((*param2) * 15 / 63) + 1;

        if (*param2 >= 9) {
            *param2 = (*param2) + 1;
        }
    }
}

BOOL ov5_021F71B8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202783C * v0;
    Pokemon * v1;
    UnkStruct_0203CDB0 * v2 = param0->unk_34;

    v1 = Party_GetPokemonBySlotIndex(Party_GetFromSavedata(v2->unk_0C), 0);
    v0 = sub_0202783C(v2->unk_0C);

    sub_020278DC(v0, GetMonData(v1, MON_DATA_SPECIES, NULL), GetMonData(v1, MON_DATA_112, NULL), GetMonData(v1, MON_DATA_IS_EGG, NULL));
    return 0;
}

BOOL ov5_021F7208 (UnkStruct_0203E724 * param0)
{
    int v0, v1, v2;
    UnkStruct_0202783C * v3;
    Pokemon * v4;
    UnkStruct_0203CDB0 * v5 = param0->unk_34;
    u16 * v6 = inline_0204FCAC(param0);
    u16 * v7 = inline_0204FCAC(param0);
    u16 * v8 = inline_0204FCAC(param0);

    v3 = sub_0202783C(v5->unk_0C);
    sub_02027914(v3, &v0, &v1, &v2);

    *v6 = v0;
    *v7 = v1;
    *v8 = v2;

    return 0;
}

BOOL ov5_021F7270 (UnkStruct_0203E724 * param0)
{
    Pokemon * v0;
    Party * v1;
    UnkStruct_0203CDB0 * v2 = param0->unk_34;
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);

    v1 = Party_GetFromSavedata(v2->unk_0C);
    v0 = Party_GetPokemonBySlotIndex(v1, v3);
    *v4 = GetMonData(v0, MON_DATA_112, NULL);

    return 0;
}

BOOL ov5_021F72B8 (UnkStruct_0203E724 * param0)
{
    UnkStruct_020507E4 * v0;
    UnkStruct_0202CD88 * v1;
    UnkStruct_0203CDB0 * v2 = param0->unk_34;
    u16 v3 = inline_02049538(param0);
    u16 * v4 = inline_0204FCAC(param0);

    v0 = sub_020507E4(v2->unk_0C);
    v1 = sub_0202CD88(v2->unk_0C);
    *v4 = 1;

    switch (v3) {
    case 13:
        if (sub_0202CFB8(v1, (1 + 28)) < 1) {
            *v4 = 0;
        }

        if (sub_0202CFB8(v1, (1 + 59)) < 1) {
            *v4 = 0;
        }

        if (sub_0202CFB8(v1, (1 + 60)) < 1) {
            *v4 = 0;
        }

        if (sub_0202CFB8(v1, (1 + 61)) < 1) {
            *v4 = 0;
        }

        if (sub_0202CFB8(v1, (1 + 62)) < 1) {
            *v4 = 0;
        }
        break;
    case 14:
        *v4 = 0;

        if (sub_0206B588(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B598(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5A8(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5B8(v0) >= 2) {
            *v4 = 1;
        }

        if (sub_0206B5C8(v0) >= 2) {
            *v4 = 1;
        }
        break;
    case 15:
        if (sub_0202CFB8(v1, (((70 + 1)) + 2)) < 10) {
            *v4 = 0;
        }
        break;
    case 16:
        if (sub_0202CFB8(v1, (1 + 56)) < 50) {
            *v4 = 0;
        }
        break;
    case 17:
        if (sub_0202CFB8(v1, (1 + 3)) < 50) {
            *v4 = 0;
        }
        break;
    case 18:
        if (sub_0202CFB8(v1, (1 + 10)) < 30) {
            *v4 = 0;
        }
        break;
    case 20:
        if (sub_0202CFB8(v1, (0 + 0)) < 300000) {
            *v4 = 0;
        }
        break;
    }

    return 0;
}

BOOL ov5_021F7414 (UnkStruct_0203E724 * param0)
{
    return 1;
}

static const UnkStruct_ov5_02200C90 Unk_ov5_02200C90[] = {
    {0x4, 0x7},
    {0x5, 0x5},
    {0x5, 0x9},
    {0x7, 0x7},
    {0x9, 0x5},
    {0x9, 0x9},
    {0xA, 0x7}
};

static const UnkStruct_ov5_02200C90 Unk_ov5_02200CAC[] = {
    {0x3, 0x7},
    {0x5, 0x7},
    {0x7, 0x5},
    {0x7, 0x7},
    {0x7, 0x9},
    {0x9, 0x7},
    {0xB, 0x7}
};

static const UnkStruct_ov5_02200C90 Unk_ov5_02200CC8[] = {
    {0x5, 0x5},
    {0x5, 0x7},
    {0x5, 0x9},
    {0x7, 0x7},
    {0x9, 0x5},
    {0x9, 0x7},
    {0x9, 0x9}
};

BOOL ov5_021F7418 (UnkStruct_0203E724 * param0)
{
    int v0, v1;
    u16 * v2 = inline_0204FCAC(param0);
    u16 v3 = inline_02049538(param0);
    u16 v4 = inline_02049538(param0);
    u16 v5 = inline_02049538(param0);

    switch (v3) {
    case 588:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200C90)); v0++) {
            if ((v4 == Unk_ov5_02200C90[v0].unk_00) && (v5 == Unk_ov5_02200C90[v0].unk_02)) {
                sub_02005748(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    case 590:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200CAC)); v0++) {
            if ((v4 == Unk_ov5_02200CAC[v0].unk_00) && (v5 == Unk_ov5_02200CAC[v0].unk_02)) {
                sub_02005748(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    case 592:
        v1 = 127;

        for (v0 = 0; v0 < (NELEMS(Unk_ov5_02200CC8)); v0++) {
            if ((v4 == Unk_ov5_02200CC8[v0].unk_00) && (v5 == Unk_ov5_02200CC8[v0].unk_02)) {
                sub_02005748(1487);
                *v2 |= (1 << v0);
                break;
            }
        }
        break;
    }

    if (*v2 == v1) {
        *v2 = 260;
    }

    return 0;
}

BOOL ov5_021F7538 (UnkStruct_0203E724 * param0)
{
    fx32 v0;
    VecFx32 v1;
    UnkStruct_020216E0 * v2;
    int v3 = 0;
    UnkStruct_0203CDB0 * v4 = param0->unk_34;
    UnkStruct_02061830 * v5 = v4->unk_38;
    UnkStruct_02061AB4 * v6 = sub_0205EB3C(v4->unk_3C);
    UnkStruct_02061AB4 * v7;

    sub_02063050(v6, &v1);
    v0 = v1.y;

    while (sub_020625B0(v5, &v7, &v3, (1 << 0)) == 1) {
        if (v7 != v6) {
            sub_020628BC(v7, (1 << 13));

            if (sub_020628D8(v7, (1 << 12)) == 1) {
                sub_02063050(v7, &v1);
                v1.y = v0;
                sub_02063060(v7, &v1);
                sub_02063034(v7, (((v0) >> 3) / FX32_ONE));
            }

            v2 = ov5_021EB1A0(v7);

            if ((v2 == NULL) && sub_020677F4(sub_02062920(v7))) {
                if (sub_02062D4C(v7)) {
                    sub_02062B68(v7);
                    v2 = sub_02067A58(v7);
                }
            }

            if (v2 != NULL) {
                ov5_021EDEB4(v7, v2);
                sub_02021320(v2, 1);
            }
        }
    }

    return 0;
}

BOOL ov5_021F7604 (UnkStruct_0203E724 * param0)
{
    int v0 = 0;
    UnkStruct_0203CDB0 * v1 = param0->unk_34;
    UnkStruct_02061830 * v2 = v1->unk_38;
    UnkStruct_02061AB4 * v3 = sub_0205EB3C(v1->unk_3C);
    UnkStruct_02061AB4 * v4;

    while (sub_020625B0(v2, &v4, &v0, (1 << 0)) == 1) {
        if (v4 != v3) {
            sub_020628C4(v4, (1 << 13));
        }
    }

    return 0;
}

static void ov5_021F7654 (UnkStruct_02061AB4 * param0, int param1)
{
    VecFx32 v0;
    UnkStruct_020216E0 * v1;

    sub_020628BC(param0, (1 << 13));
    sub_02063050(param0, &v0);

    v0.y = (((param1) << 4) * FX32_ONE);

    sub_02063060(param0, &v0);
    sub_02063034(param0, ((param1) * 2));

    v1 = ov5_021EB1A0(param0);

    if (v1 != NULL) {
        ov5_021EDEB4(param0, v1);
        sub_02021320(v1, 1);
    }
}

BOOL ov5_021F76A0 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_0203CDB0 * v1 = param0->unk_34;
    UnkStruct_02061830 * v2 = v1->unk_38;

    v0 = sub_0206251C(v2, 32);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    v0 = sub_0206251C(v2, 2);

    if (v0 != NULL) {
        ov5_021F7654(v0, 9);
    }

    return 0;
}

BOOL ov5_021F76D0 (UnkStruct_0203E724 * param0)
{
    UnkStruct_02061AB4 * v0;
    UnkStruct_02061830 * v1 = param0->unk_34->unk_38;

    v0 = sub_0206251C(v1, 32);

    if (v0 != NULL) {
        sub_020628C4(v0, (1 << 13));
    }

    v0 = sub_0206251C(v1, 2);

    if (v0 != NULL) {
        sub_020628C4(v0, (1 << 13));
    }

    return 0;
}

asm BOOL ov5_021F7704 (UnkStruct_0203E724 * param0)
{
    push {r4, lr}
    add r0, #0x80
    ldr r0, [r0, #0]
    mov r1, #0xf
    ldr r0, [r0, #0x38]
    bl sub_0206251C
    add r4, r0, #0
    beq _021F774E
    bl sub_02063020
    cmp r0, #0x28
    bgt _021F7730
    cmp r0, #0x26
    blt _021F772A
    beq _021F773A
    cmp r0, #0x28
    beq _021F773E
    b _021F7746
 _021F772A:
    cmp r0, #0x1c
    beq _021F7736
    b _021F7746
 _021F7730:
    cmp r0, #0x30
    beq _021F7742
    b _021F7746
 _021F7736:
    mov r1, #6
    b _021F7748
 _021F773A:
    mov r1, #5
    b _021F7748
 _021F773E:
    mov r1, #3
    b _021F7748
 _021F7742:
    mov r1, #2
    b _021F7748
 _021F7746:
    mov r1, #4
 _021F7748:
    add r0, r4, #0
    bl ov5_021F7654
 _021F774E:
    mov r0, #0
    pop {r4, pc}
}

asm BOOL ov5_021F7754 (UnkStruct_0203E724 * param0)
{
    push {r3, lr}
    add r0, #0x80
    ldr r0, [r0, #0]
    mov r1, #0xf
    ldr r0, [r0, #0x38]
    bl sub_0206251C
    cmp r0, #0
    beq _021F776E
    mov r1, #2
    lsl r1, r1, #0xc
    bl sub_020628C4
 _021F776E:
    mov r0, #0
    pop {r3, pc}
}

BOOL ov5_021F7774 (UnkStruct_0203E724 * param0)
{
    UnkStruct_0202C878 * v0 = sub_0202C878(param0->unk_34->unk_0C);

    sub_02038F8C(v0);
    return 1;
}

BOOL ov5_021F7788 (UnkStruct_0203E724 * param0)
{
    u16 v0 = inline_02049538(param0);

    sub_0200544C(1, v0);
    return 0;
}
