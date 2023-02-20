#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_0207ADB4_decl.h"
#include "overlay014/struct_ov14_0221FC20_decl.h"
#include "overlay016/struct_ov16_0224B9DC_decl.h"
#include "overlay016/struct_ov16_0225BFFC_decl.h"

#include "struct_defs/struct_0207A9CC.h"
#include "overlay014/struct_ov14_0221FC20_t.h"
#include "overlay016/struct_ov16_0224B9DC_t.h"
#include "overlay016/struct_ov16_0224DDA8.h"
#include "overlay016/struct_ov16_0225C300.h"

#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02025E68.h"
#include "unk_02034198.h"
#include "unk_02073C2C.h"
#include "move_table.h"
#include "party.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_022405FC.h"
#include "overlay016/ov16_0224B940.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov16_0226EAD0;

typedef void (* UnkFuncPtr_ov16_0226EAEC)(UnkStruct_0207ADB4 *, UnkStruct_ov16_0224B9DC *);

void * ov16_0224B940(UnkStruct_0207ADB4 * param0);
int ov16_0224B990(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
void ov16_0224B9DC(UnkStruct_ov16_0224B9DC * param0);
void ov16_0224B9F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
static void ov16_0224BA1C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224BA60(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224BA78(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224BAA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224BADC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224BB28(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224C448(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224C5C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224C718(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224C794(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224CF7C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224D9C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224DC10(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224DC68(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224DDA8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224DF08(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224DF4C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224E010(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224E058(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224E0B8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224E11C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static int ov16_0224E13C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2);
static BOOL ov16_0224E458(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224E5F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224E6F4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224E784(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224EE88(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224EF00(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0224EF20(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
static BOOL ov16_0224F274(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4);
static BOOL ov16_0224F460(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F5CC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F5E8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F734(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F824(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F854(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F8D4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224F8EC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224FD00(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224FEE0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0224FEE4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250170(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0225016C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250270(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250298(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250438(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250480(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250494(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250498(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_022505C4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_022506A4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_022506C0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_0225074C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250760(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02250798(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0225079C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02250A48(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02250DE4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u8 param2, u32 param3, int * param4, int param5, u32 * param6);
static void ov16_02250E8C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02250EF4(UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3);
static BOOL ov16_02250F98(UnkStruct_ov16_0224B9DC * param0, int param1, int param2);
static void ov16_02250FF4(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0225143C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022511FC(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_02251218(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_0225126C(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022512F8(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static BOOL ov16_022513B0(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02251604(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);
static void ov16_02251694(UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1);

extern u32 Unk_ov14_022248A4[];

static const UnkFuncPtr_ov16_0226EAEC Unk_ov16_0226EAEC[] = {
    ov16_0224BA1C,
    ov16_0224BA60,
    ov16_0224BA78,
    ov16_0224BAA8,
    ov16_0224BADC,
    ov16_0224BB28,
    ov16_0224C448,
    ov16_0224C5C4,
    ov16_0224C718,
    ov16_0224C794,
    ov16_0224CF7C,
    ov16_0224D9C4,
    ov16_0224DC10,
    ov16_0224DC68,
    ov16_0224DDA8,
    ov16_0224DF08,
    ov16_0224DF4C,
    ov16_0224E010,
    ov16_0224E058,
    ov16_0224E0B8,
    ov16_0224E11C,
    ov16_0224F5CC,
    ov16_0224F5E8,
    ov16_0224F734,
    ov16_0224F824,
    ov16_0224F854,
    ov16_0224F8D4,
    ov16_0224F8EC,
    ov16_0224FD00,
    ov16_0224FEE0,
    ov16_0224FEE4,
    ov16_02250170,
    ov16_0225016C,
    ov16_02250270,
    ov16_02250298,
    ov16_02250438,
    ov16_02250480,
    ov16_02250494,
    ov16_02250498,
    ov16_022505C4,
    ov16_022506A4,
    ov16_022506C0,
    ov16_0225074C,
    ov16_02250760,
    ov16_02250798
};

void * ov16_0224B940 (UnkStruct_0207ADB4 * param0)
{
    UnkStruct_ov16_0224B9DC * v0;
    int v1;

    v0 = Heap_AllocFromHeap(5, sizeof(UnkStruct_ov16_0224B9DC));

    MI_CpuClearFast(v0, sizeof(UnkStruct_ov16_0224B9DC));

    ov16_022541C4(v0);
    ov16_022542B8(param0, v0);
    ov16_02251604(param0, v0);

    MoveTable_Load(&v0->unk_354.unk_8A);
    v0->unk_354.unk_1DCC = sub_0207D388(5);

    return v0;
}

int ov16_0224B990 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_311F == 0) {
        if ((ov16_0223F438(param0)) && ((ov16_0223F438(param0) & 0x40) == 0)) {
            param1->unk_08 = 41;
        }
    }

    Unk_ov16_0226EAEC[param1->unk_08](param0, param1);

    if (param1->unk_08 == 44) {
        return 1;
    }

    return 0;
}

void ov16_0224B9DC (UnkStruct_ov16_0224B9DC * param0)
{
    Heap_FreeToHeap(param0->unk_354.unk_1DCC);
    Heap_FreeToHeap(param0);
}

void ov16_0224B9F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    ov16_0224EF20(param0, param1, param2, param3, param4);
    ov16_0224F274(param0, param1, param2, param3, param4);
}

static void ov16_0224BA1C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        ov16_0225177C(param0, param1, v0, param1->unk_219C[v0]);
    }

    param1->unk_3122 = param1->unk_2D40[1].unk_4C;
    param1->unk_08 = 1;
}

static void ov16_0224BA60 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 0));

    param1->unk_08 = 21;
    param1->unk_0C = 2;
}

static void ov16_0224BA78 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_02253FCC(param0, param1)) {
        ov16_02251E1C(param1, 1, (0 + 41));
        param1->unk_08 = 21;
        param1->unk_0C = 3;
    } else {
        param1->unk_08 = 3;
    }

    ov16_02255FBC(param0, param1);
}

static void ov16_0224BAA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    v0 = ov16_02256414(param0, param1);

    if (v0) {
        ov16_02251E1C(param1, 1, v0);
        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
    } else {
        ov16_02255FBC(param0, param1);
        ov16_0223F7E8(param0);
        param1->unk_08 = 4;
    }
}

static void ov16_0224BADC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->unk_00[v0] = 0;
        param1->unk_2D40[v0].unk_84 = param1->unk_2D40[v0].unk_80;
        param1->unk_314C[v0] = 0;
    }

    ov16_0223F288(param0, 0);
    ov16_0223B748(param0, 1);

    param1->unk_08 = 5;
}

static void ov16_0224BB28 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_ov16_0225C300 v4;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v3 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        switch (param1->unk_00[v0]) {
        case 0:
            if ((v2 & 0x2) && ((v2 & 0x8) == 0) && ((v0 == 2) && (param1->unk_00[0] != 14) || (v0 == 3) && (param1->unk_00[1] != 14))) {
                break;
            }

            if (param1->unk_3108 & sub_020787CC(v0)) {
                param1->unk_00[v0] = 13;
                param1->unk_21A8[v0][0] = 39;
                break;
            } else if (ov16_02259A28(param1, v0) == 0) {
                param1->unk_1D4[v0].unk_00_1 = 1;
                param1->unk_00[v0] = 13;
                param1->unk_21A8[v0][0] = 13;
                break;
            }

            if ((ov16_02263AF0(ov16_0223DF14(param0, v0)) == 0x1) || (param1->unk_150)) {
                ov16_02265330(param0, param1, v0, param1->unk_219C[v0]);
                param1->unk_00[v0] = 1;
            } else {
                param1->unk_00[v0] = 2;
            }
            break;
        case 2:
        {
            int v5;

            for (v5 = 0; v5 < v1; v5++) {
                if (v5 == v0) {
                    continue;
                }

                if (ov16_02263AF0(ov16_0223DF14(param0, v5)) != 0x1) {
                    continue;
                }

                if (param1->unk_00[v5] != 14) {
                    break;
                }
            }

            if (v5 == v1) {
                ov16_02265330(param0, param1, v0, param1->unk_219C[v0]);
                param1->unk_00[v0] = 1;
            } else {
                break;
            }
        }
        case 1:
            if (ov16_02259AB4(param1, v0)) {
                param1->unk_21A8[v0][3] = param1->unk_2300[v0][0];

                if (v2 & 0x200) {
                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 17;
                        break;
                    case 4:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 16;
                        break;
                    }
                } else if (v2 & 0x20) {
                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 17;
                        break;
                    case 2:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 18;
                        break;
                    case 3:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 19;
                        break;
                    case 4:
                        param1->unk_00[v0] = 17;
                        param1->unk_04[v0] = 13;
                        param1->unk_21A8[v0][0] = 16;
                        break;
                    case 5:
                        param1->unk_00[v0] = 17;
                        param1->unk_00[v0] = 13;
                        param1->unk_21A8[v0][0] = 20;
                        break;
                    }
                } else {
                    if (ov16_02259AB4(param1, v0) != 0xff) {
                        param1->unk_314C[v0] |= 0x1;
                    }

                    switch (ov16_02259AB4(param1, v0)) {
                    case 1:
                        if (ov16_02254A6C(param0, param1, v0, 0, 0xffffffff) == 0xf) {
                            param1->unk_1D4[v0].unk_00_0 = 1;

                            if (ov16_0223EBEC(param0) & 0x10) {
                                param1->unk_00[v0] = 13;
                            } else {
                                param1->unk_00[v0] = 17;
                                param1->unk_04[v0] = 16;
                            }
                        } else if (param1->unk_2D40[v0].unk_88.unk_24) {
                            param1->unk_30BC[v0] = param1->unk_2D40[v0].unk_88.unk_26;
                            param1->unk_30B4[v0] = param1->unk_2D40[v0].unk_88.unk_24;
                            param1->unk_21A8[v0][2] = 0;

                            if (ov16_0223EBEC(param0) & 0x10) {
                                param1->unk_00[v0] = 13;
                            } else {
                                param1->unk_00[v0] = 17;
                                param1->unk_04[v0] = 13;
                            }
                        } else {
                            param1->unk_00[v0] = 3;
                        }

                        param1->unk_21A8[v0][0] = 13;
                        break;
                    case 2:
                        if (ov16_0223DF0C(param0) & (0x4 | 0x80)) {
                            v4.unk_02 = 593;
                            v4.unk_01 = 0;
                            ov16_02266168(param0, v0, v4);
                            param1->unk_00[v0] = 15;
                            param1->unk_04[v0] = 0;
                        } else {
                            param1->unk_21A8[v0][0] = 14;
                            param1->unk_00[v0] = 7;
                        }
                        break;
                    case 3:
                        param1->unk_21A8[v0][0] = 15;
                        param1->unk_00[v0] = 9;
                        break;
                    case 4:
                        param1->unk_21A8[v0][0] = 16;
                        param1->unk_00[v0] = 11;
                        break;
                    case 0xff:
                        if (v2 & 0x4) {
                            ov16_0226647C(param0, v0);
                            param1->unk_00[v0] = 0;
                            param1->unk_00[ov16_0223E258(param0, v0)] = 0;
                        } else if ((v2 & 0x2) && (v0 == 2)) {
                            ov16_0226647C(param0, v0);
                            param1->unk_00[0] = 0;
                            param1->unk_00[2] = 0;
                        } else {
                            (void)0;
                        }
                        break;
                    }
                }
            }
            break;
        case 3:
            ov16_022656F0(param0, param1, v0);
            param1->unk_00[v0] = 4;
        case 4:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->unk_00[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                if ((param1->unk_2300[v0][0] - 1) == 4) {
                    param1->unk_21A8[v0][0] = 16;
                    param1->unk_00[v0] = 11;
                    break;
                } else {
                    if (ov16_02254CA8(param0, param1, v0, param1->unk_2300[v0][0] - 1, &v4) == 0) {
                        if (ov16_0223EBEC(param0) & 0x10) {
                            ov16_0223F720(param0, 1);
                            ov16_0225B444(param0, ov16_0223DF10(param0));
                        } else {
                            ov16_02266168(param0, v0, v4);
                            param1->unk_00[v0] = 15;
                            param1->unk_04[v0] = 3;
                        }
                    } else {
                        param1->unk_21A8[v0][2] = param1->unk_2300[v0][0];
                        param1->unk_30BC[v0] = param1->unk_2300[v0][0] - 1;
                        param1->unk_30B4[v0] = param1->unk_2D40[v0].unk_0C[param1->unk_30BC[v0]];
                        param1->unk_00[v0] = 5;
                        param1->unk_314C[v0] |= 0x2;
                    }
                }
            }
            break;
        case 5:
        {
            int v6;

            if (ov16_02250DE4(param0, param1, v0, v2, &v6, param1->unk_30BC[v0], &param1->unk_21A8[v0][1])) {
                ov16_022657AC(param0, param1, v6, v0);
                param1->unk_00[v0] = 6;
            } else {
                param1->unk_00[v0] = 13;
            }
        }
        break;
        case 6:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->unk_00[v0] = 3;
            } else if (ov16_02259AB4(param1, v0)) {
                param1->unk_21A8[v0][1] = param1->unk_2300[v0][0] - 1;
                param1->unk_00[v0] = 13;

                param1->unk_314C[v0] |= 0x4;
            }
            break;
        case 7:
            ov16_022658E8(param0, param1, v0);
            param1->unk_00[v0] = 8;
        case 8:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->unk_00[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                {
                    u32 * v7;

                    v7 = (u32 *)&param1->unk_2300[v0][0];
                    param1->unk_21A8[v0][2] = v7[0];
                    param1->unk_00[v0] = 13;
                }
            }
            break;
        case 9:
        {
            int v8;
            int v9 = 6;
            int v10;

            v8 = ov16_02258BA8(param0, param1, v0);

            if (((ov16_0223E1F8(param0, v0) == 4) || (ov16_0223E1F8(param0, v0) == 5)) && ((v2 == (0x2 | 0x1)) || (v2 == ((0x4 | 0x1) | 0x2)) || (v2 == ((0x2 | 0x1) | 0x80)) || ((v2 == ((0x2 | 0x1) | 0x10)) && (ov16_0223E1F8(param0, v0) == 4)))) {
                v10 = ov16_0223E258(param0, v0);

                if (param1->unk_21A8[v10][0] == 15) {
                    v9 = param1->unk_21A8[v10][2];
                }
            }

            ov16_02265A8C(param0, param1, v0, 0, v8, v9);
            param1->unk_00[v0] = 10;
        }
        case 10:
            if (ov16_02259AB4(param1, v0) == 0xff) {
                param1->unk_00[v0] = 0;
            } else if (ov16_02259AB4(param1, v0)) {
                param1->unk_21A8[v0][2] = param1->unk_2300[v0][0] - 1;
                param1->unk_21A0[v0] = param1->unk_2300[v0][0] - 1;
                param1->unk_00[v0] = 13;
            }
            break;
        case 11:
            if (v2 & 0x80) {
                ov16_02265B2C(param0, param1, v0, 955, 0, NULL, NULL);
                param1->unk_00[v0] = 12;
            } else if ((v2 & 0x1) && ((v2 & 0x4) == 0)) {
                if (ov16_0223EBEC(param0) & 0x10) {
                    ov16_0223F720(param0, 1);
                    ov16_0225B444(param0, ov16_0223DF10(param0));
                } else {
                    v4.unk_01 = 0;
                    v4.unk_02 = 793;
                    ov16_02266168(param0, v0, v4);
                    param1->unk_00[v0] = 15;
                    param1->unk_04[v0] = 0;
                }
            } else if (ov16_02255C00(param0, param1, v0, &v4)) {
                if (ov16_0223EBEC(param0) & 0x10) {
                    ov16_0223F720(param0, 1);
                    ov16_0225B444(param0, ov16_0223DF10(param0));
                } else {
                    ov16_02266168(param0, v0, v4);
                    param1->unk_00[v0] = 15;
                    param1->unk_04[v0] = 0;
                }
            } else {
                param1->unk_00[v0] = 12;
            }
            break;
        case 12:
            if (v2 & 0x80) {
                if (ov16_02259AB4(param1, v0)) {
                    if (ov16_02259AB4(param1, v0) == 0xff) {
                        param1->unk_00[v0] = 0;
                    } else {
                        param1->unk_00[v0] = 13;
                    }
                }
            } else {
                param1->unk_00[v0] = 13;
            }

            if ((v2 & 0x2) && ((v2 & 0x8) == 0) && (param1->unk_00[v0] == 13)) {
                param1->unk_00[ov16_0223E258(param0, v0)] = 13;
            }
            break;
        case 13:
            ov16_0226647C(param0, v0);

            if (v2 == ((0x4 | 0x1) | 0x2)) {
                {
                    int v11;

                    v11 = ov16_0223E258(param0, v0);

                    if (param1->unk_00[v11] == 14) {
                        ov16_022666E0(param0, v0);
                    }
                }
            } else {
                ov16_022666E0(param0, v0);
            }

            param1->unk_00[v0] = 14;
        case 14:
            v3++;
            break;
        case 15:
            if (ov16_02259AB4(param1, v0)) {
                ov16_02252040(param1, v0);
                param1->unk_00[v0] = param1->unk_04[v0];
            }
            break;
        case 16:
            v4.unk_01 = 2;
            v4.unk_02 = 608;
            v4.unk_04[0] = ov16_02255560(param1, v0);
            ov16_02266168(param0, v0, v4);
            param1->unk_00[v0] = 15;
            param1->unk_04[v0] = 13;
            break;
        case 17:
            ov16_022665C8(param0, v0);
            param1->unk_00[v0] = param1->unk_04[v0];
            break;
        }
    }

    if (v3 == v1) {
        ov16_02251694(param0, param1);
        ov16_0223B748(param0, 0);

        param1->unk_08 = 6;

        for (v0 = 0; v0 < v1; v0++) {
            if (param1->unk_21A8[v0][0] == 15) {
                ov16_0225A200(param0, param1, v0, param1->unk_21A0[v0]);
            }
        }
    }
}

static void ov16_0224C448 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;
    int v3, v4;
    int v5;
    int v6;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v5 = 0;

    if (v2 & (0x20 | 0x200)) {
        for (v0 = 0; v0 < v1; v0++) {
            param1->unk_21E8[v0] = v0;
        }
    } else {
        if (v2 & 0x4) {
            for (v0 = 0; v0 < v1; v0++) {
                if (param1->unk_21A8[v0][3] == 4) {
                    v5 = 5;
                    break;
                }
            }
        } else {
            if (param1->unk_21A8[0][3] == 4) {
                v0 = 0;
                v5 = 5;
            }

            if (param1->unk_21A8[2][3] == 4) {
                v0 = 2;
                v5 = 5;
            }
        }

        if (v5 == 5) {
            param1->unk_21E8[0] = v0;
            v5 = 1;

            for (v3 = 0; v3 < v1; v3++) {
                if (v3 != v0) {
                    param1->unk_21E8[v5] = v3;
                    v5++;
                }
            }
        } else {
            for (v0 = 0; v0 < v1; v0++) {
                if ((param1->unk_21A8[v0][3] == 2) || (param1->unk_21A8[v0][3] == 3)) {
                    param1->unk_21E8[v5] = v0;
                    v5++;
                }
            }

            for (v0 = 0; v0 < v1; v0++) {
                if ((param1->unk_21A8[v0][3] != 2) && (param1->unk_21A8[v0][3] != 3)) {
                    param1->unk_21E8[v5] = v0;
                    v5++;
                }
            }

            for (v3 = 0; v3 < v1 - 1; v3++) {
                for (v4 = v3 + 1; v4 < v1; v4++) {
                    {
                        int v7;
                        int v8;

                        v7 = param1->unk_21E8[v3];
                        v8 = param1->unk_21E8[v4];

                        if (param1->unk_21A8[v7][3] == param1->unk_21A8[v8][3]) {
                            if (param1->unk_21A8[v7][3] == 1) {
                                v6 = 0;
                            } else {
                                v6 = 1;
                            }

                            if (ov16_02252EC8(param0, param1, v7, v8, v6)) {
                                param1->unk_21E8[v3] = v8;
                                param1->unk_21E8[v4] = v7;
                            }
                        }
                    }
                }
            }
        }
    }

    param1->unk_08 = 7;
}

static void ov16_0224C5C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    v0 = 0;
    v2 = ov16_0223DF1C(param0);

    do {
        switch (param1->unk_28) {
        case 0:
            while (param1->unk_2C < v2) {
                v1 = param1->unk_21E8[param1->unk_2C];

                if (param1->unk_3108 & sub_020787CC(v1)) {
                    param1->unk_2C++;
                    continue;
                }

                param1->unk_2C++;

                if (((param1->unk_2D40[v1].unk_6C & 0x7) == 0) && (ov16_02255570(param1, v1) == 264) && (ov16_02255EC0(param1, v1) == 0) && (param1->unk_1D4[v1].unk_00_0 == 0)) {
                    ov16_02266AA0(param0);
                    param1->unk_118 = v1;
                    ov16_02251E1C(param1, 1, (0 + 232));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    return;
                }
            }

            param1->unk_2C = 0;
            param1->unk_28++;
            break;
        case 1:
            for (v1 = 0; v1 < v2; v1++) {
                if ((param1->unk_2D40[v1].unk_70 & 0x800000) && (ov16_02255570(param1, v1) != 99)) {
                    param1->unk_2D40[v1].unk_70 &= 0x800000;
                }
            }

            param1->unk_28++;
            break;
        case 2:
            for (v1 = 0; v1 < 4; v1++) {
                param1->unk_310C[v1] = ov16_0223F4BC(param0);
            }

            param1->unk_28++;
            break;
        case 3:
            param1->unk_28 = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    if (v0 == 2) {
        param1->unk_08 = 8;
    }
}

static void ov16_0224C718 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v0 = ov16_0223DF1C(param0);

    if (ov16_0225B444(param0, param1)) {
        return;
    }

    param1->unk_3150 = 0;

    for (v1 = 0; v1 < v0; v1++) {
        if (param1->unk_21A8[v1][0] != 39) {
            param1->unk_3150++;
        }
    }

    ov16_02255FBC(param0, param1);

    if (param1->unk_EC == v0) {
        param1->unk_EC = 0;
        param1->unk_08 = 9;
    } else {
        param1->unk_08 = param1->unk_21A8[param1->unk_21E8[param1->unk_EC]][0];
    }
}

static void ov16_0224C794 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0 = 0;
    int v1;
    int v2;

    v2 = ov16_0223DF1C(param0);

    do {
        if (ov16_02250EF4(param1, param1->unk_08, param1->unk_08, 1) == 1) {
            return;
        }

        if (ov16_02250F98(param1, param1->unk_08, param1->unk_08) == 1) {
            return;
        }

        if (ov16_02250A48(param0, param1) == 1) {
            return;
        }

        switch (param1->unk_10) {
        case 0:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x1) {
                    if (--param1->unk_1C4[v1].unk_00_2 == 0) {
                        param1->unk_1BC[v1] &= (0x1 ^ 0xffffffff);
                        param1->unk_124 = 115;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 1:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x2) {
                    if (--param1->unk_1C4[v1].unk_00_7 == 0) {
                        param1->unk_1BC[v1] &= (0x2 ^ 0xffffffff);
                        param1->unk_124 = 113;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 2:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x40) {
                    if (--param1->unk_1C4[v1].unk_00_12 == 0) {
                        param1->unk_1BC[v1] &= (0x40 ^ 0xffffffff);
                        param1->unk_124 = 54;
                        ov16_02251E1C(param1, 1, (0 + 50));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 3:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x8) {
                    if (--param1->unk_1C4[v1].unk_00_17 == 0) {
                        param1->unk_1BC[v1] &= (0x8 ^ 0xffffffff);
                        param1->unk_118 = param1->unk_1C4[v1].unk_00_15;
                        ov16_02251E1C(param1, 1, (0 + 110));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 4:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x300) {
                    param1->unk_1BC[v1] -= 1 << 8;

                    if ((param1->unk_1BC[v1] & 0x300) == 0) {
                        ov16_02251E1C(param1, 1, (0 + 233));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 5:
            while (param1->unk_14 < 2) {
                v1 = param1->unk_14;

                if (param1->unk_1BC[v1] & 0x7000) {
                    param1->unk_1BC[v1] -= 1 << 12;

                    if ((param1->unk_1BC[v1] & 0x7000) == 0) {
                        ov16_02251E1C(param1, 1, (0 + 250));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        param1->unk_118 = ov16_0225B120(param0, param1, v1);
                        v0 = 1;
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 6:
            while (param1->unk_14 < v2) {
                v1 = param1->unk_21EC[param1->unk_14];

                if (param1->unk_184.unk_08[v1]) {
                    if (--param1->unk_184.unk_08[v1] == 0) {
                        if (param1->unk_2D40[v1].unk_4C) {
                            param1->unk_118 = v1;
                            param1->unk_F4.unk_01 = 2;
                            param1->unk_F4.unk_02 = 533;
                            param1->unk_F4.unk_04[0] = v1 | (param1->unk_184.unk_34[v1] << 8);
                            param1->unk_215C = ov16_022563F8(param1->unk_2D40[v1].unk_50, 2);
                            ov16_02251E1C(param1, 1, (0 + 136));
                            param1->unk_0C = param1->unk_08;
                            param1->unk_08 = 21;
                            v0 = 1;
                        }
                    }
                }

                param1->unk_14++;

                if (v0) {
                    break;
                }
            }

            if (v0 == 0) {
                param1->unk_10++;
                param1->unk_14 = 0;
            }
            break;
        case 7:
            if (param1->unk_180 & 0x3) {
                if (param1->unk_180 & 0x2) {
                    param1->unk_F4.unk_02 = 801;
                    param1->unk_F4.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                } else {
                    if (--param1->unk_184.unk_00 == 0) {
                        ov16_02251E1C(param1, 1, (0 + 234));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    } else {
                        param1->unk_F4.unk_02 = 801;
                        param1->unk_F4.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    }
                }

                param1->unk_138 = 19;
                v0 = 1;
            }

            param1->unk_10++;
            break;
        case 8:
            if (param1->unk_180 & 0xc) {
                if (param1->unk_180 & 0x8) {
                    param1->unk_F4.unk_02 = 805;
                    param1->unk_F4.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                } else {
                    if (--param1->unk_184.unk_00 == 0) {
                        ov16_02251E1C(param1, 1, (0 + 235));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    } else {
                        param1->unk_F4.unk_02 = 805;
                        param1->unk_F4.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    }
                }

                param1->unk_138 = 21;
                v0 = 1;
            }

            param1->unk_10++;
            break;
        case 9:
            if (param1->unk_180 & 0x30) {
                if (param1->unk_180 & 0x20) {
                    param1->unk_F4.unk_02 = 808;
                    param1->unk_F4.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                } else {
                    if (--param1->unk_184.unk_00 == 0) {
                        ov16_02251E1C(param1, 1, (0 + 236));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    } else {
                        param1->unk_F4.unk_02 = 808;
                        param1->unk_F4.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    }
                }

                param1->unk_138 = 22;
                v0 = 1;
            }

            param1->unk_10++;
            break;
        case 10:
            if (param1->unk_180 & 0xc0) {
                if (param1->unk_180 & 0x80) {
                    param1->unk_F4.unk_02 = 811;
                    param1->unk_F4.unk_01 = 0;
                    ov16_02251E1C(param1, 1, (0 + 104));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                } else {
                    if (--param1->unk_184.unk_00 == 0) {
                        ov16_02251E1C(param1, 1, (0 + 237));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    } else {
                        param1->unk_F4.unk_02 = 811;
                        param1->unk_F4.unk_01 = 0;
                        ov16_02251E1C(param1, 1, (0 + 104));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                    }
                }

                param1->unk_138 = 20;
                v0 = 1;
            }

            param1->unk_10++;
            break;
        case 11:
            if (param1->unk_180 & 0x8000) {
                param1->unk_F4.unk_02 = 813;
                param1->unk_F4.unk_01 = 0;
                ov16_02251E1C(param1, 1, (0 + 104));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                param1->unk_138 = 18;
                v0 = 1;
            }

            param1->unk_10++;
            break;
        case 12:
            if (param1->unk_180 & 0x7000) {
                param1->unk_180 -= (1 << 12);

                if ((param1->unk_180 & 0x7000) == 0) {
                    ov16_02251E1C(param1, 1, (0 + 238));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v0 = 1;
                }
            }

            param1->unk_10++;
            break;
        case 13:
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    if (v0 == 1) {
        ov16_02266AA0(param0);
    }

    if (v0 == 2) {
        param1->unk_10 = 0;
        param1->unk_08 = 10;
    }
}

static void ov16_0224CF7C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u8 v1 = 0;
    int v2;
    int v3;

    v2 = ov16_0223DF1C(param0);

    if (ov16_02250EF4(param1, param1->unk_08, param1->unk_08, 1) == 1) {
        return;
    }

    if (ov16_02250F98(param1, param1->unk_08, param1->unk_08) == 1) {
        return;
    }

    if (ov16_02250A48(param0, param1) == 1) {
        return;
    }

    while (param1->unk_1C < v2) {
        v3 = param1->unk_21EC[param1->unk_1C];

        if (param1->unk_3108 & sub_020787CC(v3)) {
            param1->unk_1C++;
            continue;
        }

        switch (param1->unk_18) {
        case 0:
            if ((param1->unk_2D40[v3].unk_80 & 0x400) && (param1->unk_2D40[v3].unk_4C != param1->unk_2D40[v3].unk_50) && (param1->unk_2D40[v3].unk_4C != 0)) {
                if (param1->unk_2D40[v3].unk_88.unk_04_16) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 239));
                } else {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 137));
                }

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 1:
            if ((param1->unk_2D40[v3].unk_80 & 0x1000000) && (param1->unk_2D40[v3].unk_4C != param1->unk_2D40[v3].unk_50) && (param1->unk_2D40[v3].unk_4C != 0)) {
                if (param1->unk_2D40[v3].unk_88.unk_04_16) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 239));
                } else {
                    param1->unk_118 = v3;
                    param1->unk_124 = 392;
                    param1->unk_215C = ov16_022563F8(param1->unk_2D40[v3].unk_50, 16);
                    ov16_02251E1C(param1, 1, (0 + 169));
                }

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 2:
            if (ov16_022562E8(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 3:
            if (ov16_022579A4(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 4:
            if (ov16_02258008(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 5:
            if ((param1->unk_2D40[v3].unk_80 & 0x4) && (param1->unk_2D40[param1->unk_2D40[v3].unk_80 & 0x3].unk_4C != 0) && (ov16_02255A4C(param1, v3) != 98) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_11C = param1->unk_2D40[v3].unk_80 & 0x3;
                param1->unk_120 = v3;

                ov16_02251E1C(param1, 1, (0 + 69));

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 6:
            if ((param1->unk_2D40[v3].unk_6C & 0x8) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_118 = v3;
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v3].unk_50 * -1, 8);

                ov16_02251E1C(param1, 1, (0 + 23));

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 7:
            if ((param1->unk_2D40[v3].unk_6C & 0x80) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_118 = v3;
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v3].unk_50, 16);

                if ((param1->unk_2D40[v3].unk_6C & 0xf00) != 0xf00) {
                    param1->unk_2D40[v3].unk_6C += 0x100;
                }

                param1->unk_215C *= ((param1->unk_2D40[v3].unk_6C & 0xf00) >> 8);
                param1->unk_215C *= -1;

                ov16_02251E1C(param1, 1, (0 + 23));

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 8:
            if ((param1->unk_2D40[v3].unk_6C & 0x10) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_118 = v3;
                ov16_02251E1C(param1, 1, (0 + 26));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 9:
            if ((param1->unk_2D40[v3].unk_70 & 0x8000000) && (param1->unk_2D40[v3].unk_4C != 0)) {
                if (param1->unk_2D40[v3].unk_6C & 0x7) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 94));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                } else {
                    param1->unk_2D40[v3].unk_70 &= (0x8000000 ^ 0xffffffff);
                }
            }

            param1->unk_18++;
            break;
        case 10:
            if ((param1->unk_2D40[v3].unk_70 & 0x10000000) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_118 = v3;

                ov16_02251E1C(param1, 1, (0 + 98));

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 11:
            if ((param1->unk_2D40[v3].unk_70 & 0xe000) && (param1->unk_2D40[v3].unk_4C != 0)) {
                param1->unk_2D40[v3].unk_70 -= 0x2000;

                if (param1->unk_2D40[v3].unk_70 & 0xe000) {
                    param1->unk_215C = ov16_022563F8(param1->unk_2D40[v3].unk_50 * -1, 16);
                    ov16_02251E1C(param1, 1, (0 + 59));
                } else {
                    ov16_02251E1C(param1, 1, (0 + 60));
                }

                param1->unk_124 = param1->unk_2D40[v3].unk_88.unk_22;
                param1->unk_118 = v3;
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 12:
            param1->unk_138 = ov16_022555A4(param0, param1, 4, v3, 123);

            if ((param1->unk_2D40[v3].unk_6C & 0x7) && (ov16_02255A4C(param1, v3) != 98) && (param1->unk_2D40[v3].unk_4C != 0) && (param1->unk_138)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[v3].unk_50 * -1, 8);

                ov16_02251E1C(param1, 1, (0 + 263));

                param1->unk_213C |= 0x40;
                param1->unk_118 = v3;
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 13:
            if (param1->unk_2D40[v3].unk_70 & 0x70) {
                {
                    u8 v4;

                    for (v4 = 0; v4 < v2; v4++) {
                        if ((param1->unk_2D40[v4].unk_6C & 0x7) && (param1->unk_2D40[v4].unk_4C) && (ov16_02255A4C(param1, v4) != 43)) {
                            param1->unk_118 = v4;
                            ov16_02251E1C(param1, 1, (0 + 19));
                            param1->unk_0C = param1->unk_08;
                            param1->unk_08 = 21;
                            break;
                        }
                    }

                    if (v4 != v2) {
                        v1 = 2;
                        break;
                    }
                }

                param1->unk_2D40[v3].unk_70 -= 0x10;

                if (ov16_02255498(param1, v3)) {
                    v0 = (0 + 241);
                    param1->unk_2D40[v3].unk_70 &= (0x70 ^ 0xffffffff);
                    param1->unk_180 &= ((sub_020787CC(v3) << 8) ^ 0xffffffff);
                } else if (param1->unk_2D40[v3].unk_70 & 0x70) {
                    v0 = (0 + 240);
                } else {
                    v0 = (0 + 241);
                    param1->unk_2D40[v3].unk_70 &= (0x70 ^ 0xffffffff);
                    param1->unk_180 &= ((sub_020787CC(v3) << 8) ^ 0xffffffff);
                }

                param1->unk_118 = v3;

                ov16_02251E1C(param1, 1, v0);

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 1;
            }

            if (v1 != 2) {
                param1->unk_18++;
            }
            break;
        case 14:
            if (param1->unk_2D40[v3].unk_70 & 0xc00) {
                param1->unk_2D40[v3].unk_70 -= 0x400;

                if (ov16_02255498(param1, v3)) {
                    param1->unk_2D40[v3].unk_70 &= (0xc00 ^ 0xffffffff);
                } else if (((param1->unk_2D40[v3].unk_70 & 0xc00) == 0) && ((param1->unk_2D40[v3].unk_70 & 0x7) == 0)) {
                    param1->unk_94 = v3;

                    ov16_02251E1C(param1, 1, (0 + 51));

                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;

                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 15:
            if (param1->unk_2D40[v3].unk_88.unk_20) {
                for (v0 = 0; v0 < 4; v0++) {
                    if (param1->unk_2D40[v3].unk_88.unk_20 == param1->unk_2D40[v3].unk_0C[v0]) {
                        break;
                    }
                }

                if (v0 == 4) {
                    param1->unk_2D40[v3].unk_88.unk_00_0 = 0;
                }

                if (param1->unk_2D40[v3].unk_88.unk_00_0) {
                    param1->unk_2D40[v3].unk_88.unk_00_0--;
                } else {
                    param1->unk_2D40[v3].unk_88.unk_20 = 0;
                    param1->unk_118 = v3;

                    ov16_02251E1C(param1, 1, (0 + 72));

                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;

                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 16:
            if (param1->unk_2D40[v3].unk_88.unk_24) {
                for (v0 = 0; v0 < 4; v0++) {
                    if (param1->unk_2D40[v3].unk_88.unk_24 == param1->unk_2D40[v3].unk_0C[v0]) {
                        break;
                    }
                }

                if ((v0 == 4) || ((v0 != 4) && (param1->unk_2D40[v3].unk_2C[v0] == 0))) {
                    param1->unk_2D40[v3].unk_88.unk_00_3 = 0;
                }

                if (param1->unk_2D40[v3].unk_88.unk_00_3) {
                    param1->unk_2D40[v3].unk_88.unk_00_3--;
                } else {
                    param1->unk_2D40[v3].unk_88.unk_24 = 0;
                    param1->unk_118 = v3;

                    ov16_02251E1C(param1, 1, (0 + 74));

                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;

                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 17:
            if (param1->unk_2D40[v3].unk_80 & 0x18) {
                param1->unk_2D40[v3].unk_80 -= 0x8;
            }

            param1->unk_18++;
            break;
        case 18:
            if (param1->unk_2D40[v3].unk_88.unk_00_6) {
                if (--param1->unk_2D40[v3].unk_88.unk_00_6 == 0) {
                    param1->unk_2D40[v3].unk_80 &= (0x200 ^ 0xffffffff);
                }
            }

            param1->unk_18++;
            break;
        case 19:
            if (param1->unk_2D40[v3].unk_88.unk_00_8) {
                param1->unk_2D40[v3].unk_88.unk_00_8--;

                if (param1->unk_2D40[v3].unk_88.unk_00_8 == 0) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 288));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 20:
            if (param1->unk_2D40[v3].unk_88.unk_04_13) {
                param1->unk_2D40[v3].unk_88.unk_04_13--;

                if (param1->unk_2D40[v3].unk_88.unk_04_13 == 0) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 242));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 21:
            if (param1->unk_2D40[v3].unk_88.unk_04_16) {
                param1->unk_2D40[v3].unk_88.unk_04_16--;

                if (param1->unk_2D40[v3].unk_88.unk_04_16 == 0) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 243));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 22:
            if (param1->unk_2D40[v3].unk_88.unk_04_19) {
                param1->unk_2D40[v3].unk_88.unk_04_19--;

                if (param1->unk_2D40[v3].unk_88.unk_04_19 == 0) {
                    param1->unk_118 = v3;
                    ov16_02251E1C(param1, 1, (0 + 244));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 23:
            if (param1->unk_2D40[v3].unk_80 & 0x1800) {
                param1->unk_2D40[v3].unk_80 -= 0x800;

                if ((param1->unk_2D40[v3].unk_80 & 0x1800) == 0) {
                    param1->unk_94 = v3;
                    param1->unk_88 = 4;
                    ov16_02251E1C(param1, 1, (0 + 18));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 1;
                }
            }

            param1->unk_18++;
            break;
        case 24:
        {
            int v5;

            if (ov16_02258104(param0, param1, v3, &v5) == 1) {
                param1->unk_118 = v3;
                ov16_02251E1C(param1, 1, v5);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                v1 = 1;
            }
        }
            param1->unk_18++;
            break;
        case 25:
            if (ov16_022587A4(param0, param1, v3) == 1) {
                v1 = 1;
            }

            param1->unk_18++;
            break;
        case 26:
            param1->unk_18 = 0;
            param1->unk_1C++;
            break;
        }

        if (v1) {
            ov16_02266AA0(param0);
            return;
        }
    }

    param1->unk_18 = 0;
    param1->unk_1C = 0;
    param1->unk_08 = 11;
}

static void ov16_0224D9C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    v1 = ov16_0223DF1C(param0);

    if (ov16_02250EF4(param1, param1->unk_08, param1->unk_08, 1) == 1) {
        return;
    }

    ov16_02266AA0(param0);

    switch (param1->unk_20) {
    case 0:
        while (param1->unk_24 < v1) {
            v2 = param1->unk_21EC[param1->unk_24];

            if (param1->unk_3108 & sub_020787CC(v2)) {
                param1->unk_24++;
                continue;
            }

            param1->unk_24++;

            if (param1->unk_184.unk_04[v2]) {
                if ((--param1->unk_184.unk_04[v2] == 0) && (param1->unk_2D40[v2].unk_4C != 0)) {
                    param1->unk_1BC[ov16_0223E208(param0, v2)] &= (0x10 ^ 0xffffffff);
                    param1->unk_F4.unk_02 = 475;
                    param1->unk_F4.unk_01 = 10;
                    param1->unk_F4.unk_04[0] = ov16_02255560(param1, v2);
                    param1->unk_F4.unk_04[1] = param1->unk_184.unk_0C[v2];
                    param1->unk_118 = v2;
                    param1->unk_11C = param1->unk_184.unk_14[v2];
                    param1->unk_124 = param1->unk_184.unk_0C[v2];
                    param1->unk_215C = param1->unk_184.unk_24[v2];
                    ov16_02251E1C(param1, 1, (0 + 121));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    return;
                }
            }
        }

        param1->unk_20++;
        param1->unk_24 = 0;
    case 1:
        while (param1->unk_24 < v1) {
            v2 = param1->unk_21EC[param1->unk_24];

            if (param1->unk_3108 & sub_020787CC(v2)) {
                param1->unk_24++;
                continue;
            }

            param1->unk_24++;

            if (param1->unk_2D40[v2].unk_80 & 0x20) {
                if (param1->unk_2D40[v2].unk_88.unk_00_13 == 0) {
                    param1->unk_2D40[v2].unk_80 &= (0x20 ^ 0xffffffff);
                    param1->unk_130 = param1->unk_2D40[v2].unk_88.unk_00_13;
                    param1->unk_215C = param1->unk_2D40[v2].unk_4C * -1;
                    param1->unk_213C |= 0x40;
                } else {
                    param1->unk_130 = param1->unk_2D40[v2].unk_88.unk_00_13;
                    param1->unk_2D40[v2].unk_88.unk_00_13--;
                }

                param1->unk_118 = v2;
                ov16_02251E1C(param1, 1, (0 + 102));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }

        param1->unk_20++;
        param1->unk_24 = 0;
    case 2:
        if (param1->unk_180 & 0x70000) {
            param1->unk_180 -= (1 << 16);

            if ((param1->unk_180 & 0x70000) == 0) {
                ov16_02251E1C(param1, 1, (0 + 251));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }

        param1->unk_20++;
        param1->unk_24 = 0;
        break;
    default:
        break;
    }

    param1->unk_20 = 0;
    param1->unk_24 = 0;
    param1->unk_08 = 12;
}

static void ov16_0224DC10 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_02250F98(param1, param1->unk_08, param1->unk_08) == 1) {
        return;
    }

    if (ov16_02250A48(param0, param1) == 1) {
        return;
    }

    if (ov16_0225079C(param0, param1) == 1) {
        return;
    }

    param1->unk_150++;
    param1->unk_174++;

    ov16_022541C4(param1);
    ov16_02254990(param0, param1);

    param1->unk_08 = 2;
}

static void ov16_0224DC68 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    v0 = 0;

    param1->unk_64 = param1->unk_21E8[param1->unk_EC];

    if (param1->unk_1D4[param1->unk_64].unk_00_0) {
        param1->unk_3040 = 165;
        v0 = 1;
    } else if ((param1->unk_2D40[param1->unk_64].unk_88.unk_24) && (param1->unk_2D40[param1->unk_64].unk_88.unk_24 == param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_2D40[param1->unk_64].unk_88.unk_26])) {
        param1->unk_3040 = param1->unk_2D40[param1->unk_64].unk_88.unk_24;
        v0 = 1;
    } else if ((param1->unk_2D40[param1->unk_64].unk_88.unk_24) && (param1->unk_2D40[param1->unk_64].unk_88.unk_24 != param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_2D40[param1->unk_64].unk_88.unk_26])) {
        param1->unk_3040 = param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_2D40[param1->unk_64].unk_88.unk_26];
        param1->unk_2D40[param1->unk_64].unk_88.unk_24 = 0;
        param1->unk_2D40[param1->unk_64].unk_88.unk_26 = 0;
        param1->unk_2D40[param1->unk_64].unk_88.unk_00_3 = 0;
        v0 = 1;
    } else if (ov16_02259A28(param1, param1->unk_64) == 0) {
        param1->unk_3040 = param1->unk_304C[param1->unk_64];
    } else if (param1->unk_30B4[param1->unk_64] != param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_30BC[param1->unk_64]]) {
        param1->unk_3040 = param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_30BC[param1->unk_64]];
        v0 = 1;
    } else {
        param1->unk_3040 = param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_30BC[param1->unk_64]];
    }

    param1->unk_3044 = param1->unk_3040;
    param1->unk_08 = 22;
    param1->unk_6C = ov16_02253954(param0, param1, param1->unk_64, param1->unk_3040, v0, 0);

    ov16_02266AA0(param0);
}

static void ov16_0224DDA8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    UnkStruct_ov16_0224DDA8 * v0;
    int v1;

    param1->unk_64 = param1->unk_21E8[param1->unk_EC];
    param1->unk_6C = ov16_02257028(param0, param1, param1->unk_64);

    v0 = (UnkStruct_ov16_0224DDA8 *)&param1->unk_21A8[param1->unk_64][2];

    if (ov16_0223E208(param0, param1->unk_64)) {
        switch (param1->unk_354.unk_7D[param1->unk_64 >> 1]) {
        case 0:
            v1 = (0 + 289);
            break;
        case 1:
            v1 = (0 + 267);
            break;
        case 2:
            if ((param1->unk_354.unk_7F[param1->unk_64 >> 1] & 1) && (param1->unk_354.unk_7F[param1->unk_64 >> 1] & 0x3e)) {
                param1->unk_130 = 6;
            } else {
                param1->unk_130 = sub_020787EC(param1->unk_354.unk_7F[param1->unk_64 >> 1]);
            }

            v1 = (0 + 268);
            break;
        case 3:
            param1->unk_130 = param1->unk_354.unk_7F[param1->unk_64 >> 1];
            v1 = (0 + 269);
            break;
        case 4:
            v1 = (0 + 270);
            break;
        }

        param1->unk_128 = param1->unk_354.unk_82[param1->unk_64 >> 1];
    } else {
        switch (v0->unk_02) {
        case 1:
        case 0:
        case 3:
            if ((v0->unk_00 == 63) || (v0->unk_00 == 64)) {
                v1 = (0 + 222);
            } else {
                v1 = (0 + 223);
            }

            break;
        case 2:
            v1 = (0 + 11);

            if (((ov16_0223DF0C(param0) & 0x1) == 0) && ((ov16_0223DF0C(param0) & 0x400) == 0)) {
                sub_0207D60C(ov16_0223E1AC(param0), v0->unk_00, 1, 5);
                sub_0207DA1C(ov16_0223E1B0(param0), v0->unk_00, v0->unk_02);
            }

            break;
        }

        param1->unk_128 = v0->unk_00;
    }

    ov16_02251E1C(param1, 1, v1);

    param1->unk_08 = 21;
    param1->unk_0C = 39;
    param1->unk_216C |= 0x80000000;
}

static void ov16_0224DF08 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 9));

    param1->unk_64 = param1->unk_21E8[param1->unk_EC];
    param1->unk_78 = param1->unk_64;
    param1->unk_08 = 21;
    param1->unk_0C = 40;
    param1->unk_138 = 0;
    param1->unk_216C |= 0x80000000;
}

static void ov16_0224DF4C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    param1->unk_64 = param1->unk_21E8[param1->unk_EC];

    if ((ov16_0223E208(param0, param1->unk_64)) && ((ov16_0223DF0C(param0) & 0x4) == 0)) {
        if (param1->unk_2D40[param1->unk_64].unk_70 & (0xe000 | 0x4000000)) {
            ov16_02251E1C(param1, 1, (0 + 286));
            param1->unk_B4 = 0;
            param1->unk_08 = 21;
            param1->unk_0C = 39;
        } else {
            ov16_02251E1C(param1, 1, (0 + 230));
            param1->unk_B4 = 0;
            param1->unk_08 = 21;
            param1->unk_0C = 43;
        }
    } else {
        if (ov16_02255DE8(param0, param1, param1->unk_64)) {
            ov16_02251E1C(param1, 1, (0 + 3));
            param1->unk_B4 = 0;
            param1->unk_08 = 21;
            param1->unk_0C = 43;
        } else {
            ov16_02251E1C(param1, 1, (0 + 8));
            param1->unk_B4 = 0;
            param1->unk_08 = 21;
            param1->unk_0C = 39;
        }
    }
}

static void ov16_0224E010 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    ov16_02251E1C(param1, 1, (0 + 275));

    param1->unk_64 = 0;
    param1->unk_6C = 1;
    param1->unk_08 = 21;
    param1->unk_0C = 39;
    param1->unk_128 = 5;

    v0 = ov16_0223ED8C(param0) - 1;

    ov16_0223ED98(param0, v0);
    ov16_022661CC(param0, param1, 0);
}

static void ov16_0224E058 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 227));

    param1->unk_64 = 0;
    param1->unk_6C = 1;
    param1->unk_08 = 21;
    param1->unk_0C = 39;
    param1->unk_138 = ov16_0223F4BC(param0) % 10;

    if (param1->unk_311C < 12) {
        param1->unk_311C++;
    }

    if (param1->unk_138 != 0) {
        if (param1->unk_311D < 12) {
            param1->unk_311D++;
        }
    }
}

static void ov16_0224E0B8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 228));

    param1->unk_64 = 0;
    param1->unk_6C = 1;
    param1->unk_08 = 21;
    param1->unk_0C = 39;
    param1->unk_138 = ov16_0223F4BC(param0) % 10;

    if (param1->unk_311D) {
        param1->unk_311D--;
    }

    if (param1->unk_138 != 0) {
        param1->unk_130 = 1;

        if (param1->unk_311C) {
            param1->unk_311C--;
        }
    }
}

static void ov16_0224E11C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 229));

    param1->unk_64 = 0;
    param1->unk_6C = 1;
    param1->unk_08 = 21;
    param1->unk_0C = 39;
}

static int ov16_0224E13C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int * param2)
{
    int v0, v1;
    u32 v2;
    u8 v3 = 0;
    UnkStruct_02025E6C * v4;

    v2 = ov16_0223DF0C(param0);
    v4 = ov16_0223E16C(param0, 0);

    if (v2 & (0x4 | 0x80)) {
        return 0;
    }

    if (ov16_0223E208(param0, param1->unk_64)) {
        return 0;
    }

    if ((v2 & 0x40) && (ov16_0223E1F8(param0, param1->unk_64) == 4)) {
        return 0;
    }

    if ((ov16_02259ADC(param0, param1)) == 1) {
        return 0;
    }

    if (ov16_02259A28(param1, param1->unk_64) == 0) {
        return 0;
    }

    if ((param1->unk_3044 == 117) && (param1->unk_213C & 0x200)) {
        return 0;
    }

    if (sub_02025F58(v4) >= 8) {
        return 0;
    }

    v3 = 10;

    if (sub_02025F58(v4) >= 2) {
        v3 = 30;
    }

    if (sub_02025F58(v4) >= 4) {
        v3 = 50;
    }

    if (sub_02025F58(v4) >= 6) {
        v3 = 70;
    }

    if (param1->unk_2D40[param1->unk_64].unk_34 <= v3) {
        return 0;
    }

    v0 = ((ov16_0223F4BC(param0) & 0xff) * (param1->unk_2D40[param1->unk_64].unk_34 + v3)) >> 8;

    if (v0 < v3) {
        return 0;
    }

    if (param1->unk_3044 == 99) {
        param1->unk_2D40[param1->unk_64].unk_70 &= (0x800000 ^ 0xffffffff);
    }

    if ((param1->unk_2D40[param1->unk_64].unk_6C & 0x7) && ((param1->unk_3044 == 173) || (param1->unk_3044 == 214))) {
        param2[0] = (0 + 254);
        return 1;
    }

    v0 = ((ov16_0223F4BC(param0) & 0xff) * (param1->unk_2D40[param1->unk_64].unk_34 + v3)) >> 8;

    if (v0 < v3) {
        v0 = ov16_02254A6C(param0, param1, param1->unk_64, sub_020787CC(param1->unk_30BC[param1->unk_64]), 0xffffffff);

        if (v0 == 0xf) {
            param2[0] = (0 + 255);
            return 1;
        }

        do {
            v1 = ov16_0223F4BC(param0) & 3;
        } while (v0 & sub_020787CC(v1));

        param1->unk_30BC[param1->unk_64] = v1;
        param1->unk_3040 = param1->unk_2D40[param1->unk_64].unk_0C[param1->unk_30BC[param1->unk_64]];
        param1->unk_3044 = param1->unk_3040;
        param1->unk_6C = ov16_02253954(param0, param1, param1->unk_64, param1->unk_3040, 1, 0);

        if (param1->unk_6C == 0xff) {
            param1->unk_21A8[param1->unk_64][1] = ov16_02257028(param0, param1, param1->unk_64);
        } else {
            param1->unk_21A8[param1->unk_64][1] = param1->unk_6C;
        }

        param2[0] = (0 + 256);
        param1->unk_2184 |= 0x1;

        return 2;
    }

    v3 = param1->unk_2D40[param1->unk_64].unk_34 - v3;
    v0 = ov16_0223F4BC(param0) & 0xff;

    if (((v0 < v3) && ((param1->unk_2D40[param1->unk_64].unk_6C & 0xff) == 0)) && (ov16_02255A4C(param1, param1->unk_64) != 72) && (ov16_02255A4C(param1, param1->unk_64) != 15)) {
        if ((param1->unk_180 & 0xf00) == 0) {
            param2[0] = (0 + 257);
            return 1;
        }
    }

    v0 -= v3;

    if (v0 < v3) {
        param1->unk_6C = param1->unk_64;
        param1->unk_118 = param1->unk_6C;
        param1->unk_215C = ov16_0225A280(param0, param1, 1, 0, 0, 40, 0, param1->unk_64, param1->unk_64, 1);
        param1->unk_215C = ov16_0225AEB8(param0, param1, param1->unk_215C);
        param1->unk_215C *= -1;
        param2[0] = (0 + 258);
        param1->unk_213C |= 0x2;
        return 3;
    }

    param2[0] = (0 + 255);

    return 1;
}

static BOOL ov16_0224E458 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0 = 1;
    int v1;

    if ((param1->unk_2D4[param1->unk_64].unk_00_0 == 0) && (param1->unk_6C != 0xff)) {
        if (param1->unk_3040 == 286) {
            v0 += ov16_022555A4(param0, param1, 3, param1->unk_64, 46);
        } else {
            switch (param1->unk_354.unk_8A[param1->unk_3040].unk_08) {
            case 0x8:
            case 0x40:
                v0 += ov16_022555A4(param0, param1, 9, param1->unk_64, 46);
                break;
            case 0x4:
            case 0x80:
                v0 += ov16_022555A4(param0, param1, 3, param1->unk_64, 46);
                break;
            case 0x20:
            case 0x10:
            case 0x200:
            case 0x100:
                break;
            default:
                if ((param1->unk_64 != param1->unk_6C) && (ov16_02255A4C(param1, param1->unk_6C) == 46)) {
                    v0++;
                }

                break;
            }
        }
    }

    v1 = ov16_02254EE0(&param1->unk_2D40[param1->unk_64], param1->unk_3040);

    if ((param1->unk_1D4[param1->unk_64].unk_00_1 == 0) && (param1->unk_1D4[param1->unk_64].unk_00_0 == 0)) {
        param1->unk_1D4[param1->unk_64].unk_00_1 = 1;

        if ((param1->unk_2D40[param1->unk_64].unk_2C[v1]) && (v1 < 4)) {
            if (param1->unk_2D40[param1->unk_64].unk_2C[v1] > v0) {
                param1->unk_2D40[param1->unk_64].unk_2C[v1] -= v0;
            } else {
                param1->unk_2D40[param1->unk_64].unk_2C[v1] = 0;
            }

            ov16_02253EC0(param0, param1, param1->unk_64);
        } else {
            param1->unk_216C |= 0x200;
        }
    } else if ((param1->unk_2D40[param1->unk_64].unk_2C[v1] == 0) && ((param1->unk_213C & 0x200) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) == 0) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0xc00) == 0) && ((param1->unk_180 & (sub_020787CC(param1->unk_64) << 8)) == 0) && (v1 < 4)) {
        param1->unk_216C |= 0x200;
    }

    return 0;
}

static BOOL ov16_0224E5F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0;
    BOOL v1;

    v0 = 0;
    v1 = 0;

    if (((param1->unk_6C == 0xff) && (ov16_0225582C(param1, param1->unk_3044) == 0)) || ((param1->unk_6C == 0xff) && (ov16_0225582C(param1, param1->unk_3044) == 1) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) || (param1->unk_213C & 0x200)))) {
        ov16_02251E1C(param1, 1, (0 + 281));
        param1->unk_0C = 38;
        param1->unk_08 = 21;
        v0 = 1;
    }

    if (((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0) && (param1->unk_354.unk_8A[param1->unk_3044].unk_00 == 151) && (param1->unk_180 & 0x30))) {
        v1 = 1;
    }

    if ((param1->unk_6C == 0xff) && (ov16_0225582C(param1, param1->unk_3044) == 1) && (v0 == 0) && (v1 == 0) && (ov16_02258AB8(param1, param1->unk_64) != 99) && ((param1->unk_2D40[param1->unk_64].unk_70 & 0x1000) == 0)) {
        param1->unk_6C = param1->unk_64;
    }

    return v0;
}

static BOOL ov16_0224E6F4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (((param1->unk_354.unk_8A[param1->unk_3044].unk_08 != 0x10) && (param1->unk_354.unk_8A[param1->unk_3044].unk_08 != 0x20) && (param1->unk_354.unk_8A[param1->unk_3044].unk_03) && ((param1->unk_213C & 0x8000) == 0) && ((param1->unk_213C & 0x20) == 0)) || (param1->unk_3044 == 86)) {
        param1->unk_2144 = ov16_02254FA8(param0, param1, param1->unk_3044, param1->unk_2160, param1->unk_64, param1->unk_6C, param1->unk_2144, &param1->unk_216C);

        if (param1->unk_216C & 0x8) {
            param1->unk_344[param1->unk_64].unk_00_1 = 1;
        }
    }

    return 0;
}

static BOOL ov16_0224E784 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v0 = param1->unk_354.unk_8A[param1->unk_3044].unk_00;
    v1 = 0;

    do {
        switch (param1->unk_50) {
        case 0:
            param1->unk_2D40[param1->unk_64].unk_70 &= (0x2000000 ^ 0xffffffff);
            param1->unk_2D40[param1->unk_64].unk_80 &= (0x4000 ^ 0xffffffff);
            param1->unk_50++;
            break;
        case 1:
            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x7) {
                {
                    int v2;

                    if ((param1->unk_180 & 0xf00) && (ov16_02255A4C(param1, param1->unk_64) != 43)) {
                        param1->unk_118 = param1->unk_64;
                        ov16_02251E1C(param1, 1, (0 + 19));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        v1 = 2;
                    } else {
                        if (((param1->unk_3044 != 214) && (param1->unk_3040 == 214)) == 0) {
                            if (ov16_02255A4C(param1, param1->unk_64) == 48) {
                                v2 = 2;
                            } else {
                                v2 = 1;
                            }

                            if ((param1->unk_2D40[param1->unk_64].unk_6C & 0x7) < v2) {
                                param1->unk_2D40[param1->unk_64].unk_6C &= (0x7 ^ 0xffffffff);
                            } else {
                                param1->unk_2D40[param1->unk_64].unk_6C -= v2;
                            }

                            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x7) {
                                if ((param1->unk_3044 != 173) && (param1->unk_3040 != 214)) {
                                    ov16_02251E1C(param1, 1, (0 + 20));

                                    param1->unk_08 = 21;
                                    param1->unk_0C = 38;

                                    v1 = 2;
                                }
                            } else {
                                param1->unk_118 = param1->unk_64;
                                ov16_02251E1C(param1, 1, (0 + 19));

                                param1->unk_0C = param1->unk_08;
                                param1->unk_08 = 21;

                                v1 = 2;
                            }
                        }
                    }
                }
            }

            param1->unk_50++;
            break;
        case 2:
            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x20) {
                if (ov16_0223F4BC(param0) % 5 != 0) {
                    if ((v0 != 125) && (v0 != 253)) {
                        ov16_02251E1C(param1, 1, (0 + 28));

                        param1->unk_08 = 21;
                        param1->unk_0C = 38;

                        v1 = 1;
                    }
                } else {
                    param1->unk_118 = param1->unk_64;
                    ov16_02251E1C(param1, 1, (0 + 29));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 2;
                }
            }

            param1->unk_50++;
            break;
        case 3:
            if (ov16_02255EC0(param1, param1->unk_64) == 1) {
                ov16_02251E1C(param1, 1, (0 + 191));
                param1->unk_08 = 21;

                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 4:
            if (param1->unk_2D40[param1->unk_64].unk_70 & 0x400000) {
                param1->unk_2D40[param1->unk_64].unk_70 &= (0x400000 ^ 0xffffffff);
                ov16_02251E1C(param1, 1, (0 + 65));
                param1->unk_08 = 21;

                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 5:
            if (param1->unk_2D40[param1->unk_64].unk_70 & 0x8) {
                param1->unk_2D40[param1->unk_64].unk_70 &= (0x8 ^ 0xffffffff);
                param1->unk_344[param1->unk_64].unk_00_6 = 1;
                ov16_02251E1C(param1, 1, (0 + 15));
                param1->unk_08 = 21;
                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 6:
            if (param1->unk_2D40[param1->unk_64].unk_88.unk_20 == param1->unk_3040) {
                param1->unk_344[param1->unk_64].unk_00_4 = 1;
                ov16_02251E1C(param1, 1, (0 + 71));

                param1->unk_08 = 21;
                param1->unk_0C = 38;

                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 7:
            if ((param1->unk_2D40[param1->unk_64].unk_88.unk_00_8) && (param1->unk_354.unk_8A[param1->unk_3044].unk_03 == 0)) {
                param1->unk_344[param1->unk_64].unk_00_5 = 1;
                ov16_02251E1C(param1, 1, (0 + 133));
                param1->unk_08 = 21;
                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 8:
            if (ov16_02255EF4(param0, param1, param1->unk_64, param1->unk_3044)) {
                param1->unk_344[param1->unk_64].unk_00_2 = 1;
                ov16_02251E1C(param1, 1, (0 + 144));
                param1->unk_08 = 21;

                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 9:
            if (ov16_02256044(param0, param1, param1->unk_64, param1->unk_3044)) {
                param1->unk_344[param1->unk_64].unk_00_8 = 1;
                ov16_02251E1C(param1, 1, (0 + 157));
                param1->unk_08 = 21;
                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 10:
            if (ov16_02256078(param0, param1, param1->unk_64, param1->unk_3044)) {
                param1->unk_344[param1->unk_64].unk_00_9 = 1;
                ov16_02251E1C(param1, 1, (0 + 174));
                param1->unk_08 = 21;
                param1->unk_0C = 38;
                v1 = 1;
            }

            param1->unk_50++;
            break;
        case 11:
            param1->unk_50++;

            if (param1->unk_2D40[param1->unk_64].unk_70 & 0x7) {
                param1->unk_2D40[param1->unk_64].unk_70 -= 0x1;

                if (param1->unk_2D40[param1->unk_64].unk_70 & 0x7) {
                    if (ov16_0223F4BC(param0) & 1) {
                        ov16_02251E1C(param1, 1, (0 + 38));
                        param1->unk_0C = param1->unk_08;
                        param1->unk_08 = 21;
                        v1 = 2;
                    } else {
                        param1->unk_344[param1->unk_64].unk_00_7 = 1;
                        param1->unk_6C = param1->unk_64;
                        param1->unk_118 = param1->unk_6C;
                        param1->unk_215C = ov16_0225A280(param0, param1, 165, 0, 0, 40, 0, param1->unk_64, param1->unk_64, 1);
                        param1->unk_215C = ov16_0225AEB8(param0, param1, param1->unk_215C);
                        param1->unk_215C *= -1;
                        ov16_02251E1C(param1, 1, (0 + 39));
                        param1->unk_08 = 21;
                        param1->unk_0C = 33;
                        v1 = 1;
                    }
                } else {
                    ov16_02251E1C(param1, 1, (0 + 40));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 2;
                }
            }
            break;
        case 12:
            if ((param1->unk_2D40[param1->unk_64].unk_6C & 0x40) && (ov16_02255A4C(param1, param1->unk_64) != 98)) {
                if (ov16_0223F4BC(param0) % 4 == 0) {
                    param1->unk_344[param1->unk_64].unk_00_0 = 1;
                    ov16_02251E1C(param1, 1, (0 + 32));
                    param1->unk_08 = 21;
                    param1->unk_0C = 38;
                    v1 = 1;
                }
            }

            param1->unk_50++;
            break;
        case 13:
            if (param1->unk_2D40[param1->unk_64].unk_70 & 0xf0000) {
                param1->unk_118 = sub_020787EC((param1->unk_2D40[param1->unk_64].unk_70 & 0xf0000) >> 16);

                if (ov16_0223F4BC(param0) & 1) {
                    ov16_02251E1C(param1, 1, (0 + 107));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 2;
                } else {
                    param1->unk_344[param1->unk_64].unk_00_3 = 1;
                    ov16_02251E1C(param1, 1, (0 + 108));
                    param1->unk_08 = 21;
                    param1->unk_0C = 38;
                    v1 = 1;
                }
            }

            param1->unk_50++;
            break;
        case 14:
            param1->unk_50++;

            if (param1->unk_2D40[param1->unk_64].unk_70 & 0x300) {
                param1->unk_2D40[param1->unk_64].unk_70 -= 0x100;

                if ((param1->unk_2D40[param1->unk_64].unk_70 & 0x300) == 0) {
                    if (param1->unk_30E4[param1->unk_64]) {
                        param1->unk_2144 = param1->unk_30E4[param1->unk_64] * 2;

                        if (param1->unk_2D40[param1->unk_30F4[param1->unk_64]].unk_4C) {
                            param1->unk_6C = param1->unk_30F4[param1->unk_64];
                        } else {
                            param1->unk_6C = ov16_02257028(param0, param1, param1->unk_64);

                            if (param1->unk_2D40[param1->unk_6C].unk_4C == 0) {
                                ov16_02251E1C(param1, 1, (0 + 282));
                                param1->unk_0C = 38;
                                param1->unk_08 = 21;
                                v1 = 2;
                                break;
                            }
                        }
                    }
                }

                ov16_02251E1C(param1, 1, (0 + 36));

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v1 = 2;
            }
            break;
        case 15:
            if (param1->unk_2D40[param1->unk_64].unk_6C & 0x20) {
                if ((v0 == 125) || (v0 == 253)) {
                    ov16_02251E1C(param1, 1, (0 + 30));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v1 = 2;
                }
            }

            param1->unk_50++;
            break;
        case 16:
            param1->unk_50 = 0;
            v1 = 3;
            break;
        }
    } while (v1 == 0);

    ov16_02253EC0(param0, param1, param1->unk_64);

    if (v1 == 1) {
        param1->unk_213C |= 0x2;
        param1->unk_216C |= 0x80000000;
    }

    return v1 != 3;
}

static BOOL ov16_0224EE88 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v0 = 0;

    do {
        switch (param1->unk_54) {
        case 0:
            v1 = ov16_02256148(param1, param1->unk_64, param1->unk_6C);

            if (((v1) && ((param1->unk_216C & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) || (v1 == (0 + 181))) {
                ov16_02251E1C(param1, 1, v1);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                param1->unk_216C |= 0x80000000;
                v0 = 1;
            }

            param1->unk_54++;
            break;
        case 1:
            param1->unk_54 = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    return v0 != 2;
}

static BOOL ov16_0224EF00 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 278));

    param1->unk_0C = param1->unk_08;
    param1->unk_08 = 21;

    return 1;
}

static const UnkStruct_ov16_0226EAD0 Unk_ov16_0226EAD0[] = {
    {0x21, 0x64},
    {0x24, 0x64},
    {0x2B, 0x64},
    {0x32, 0x64},
    {0x3C, 0x64},
    {0x4B, 0x64},
    {0x1, 0x1},
    {0x85, 0x64},
    {0xA6, 0x64},
    {0x2, 0x1},
    {0xE9, 0x64},
    {0x85, 0x32},
    {0x3, 0x1}
};

static BOOL ov16_0224EF20 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    u16 v0;
    s8 v1;
    s8 v2, v3;
    int v4;
    int v5;
    u8 v6;
    u8 v7;

    if (ov16_0223DF0C(param0) & 0x400) {
        return 0;
    }

    if (ov16_02255A4C(param1, param2) == 96) {
        v6 = 0;
    } else if (param1->unk_2160) {
        v6 = param1->unk_2160;
    } else {
        v6 = param1->unk_354.unk_8A[param4].unk_04;
    }

    v7 = param1->unk_354.unk_8A[param4].unk_02;
    v2 = param1->unk_2D40[param2].unk_18[0x6] - 6;
    v3 = 6 - param1->unk_2D40[param3].unk_18[0x7];

    if (ov16_02255A4C(param1, param2) == 86) {
        v2 *= 2;
    }

    if (ov16_02255AB4(param1, param2, param3, 86) == 1) {
        v3 *= 2;
    }

    if (ov16_02255AB4(param1, param2, param3, 109) == 1) {
        v2 = 0;
    }

    if (ov16_02255A4C(param1, param2) == 109) {
        v3 = 0;
    }

    if (((param1->unk_2D40[param3].unk_70 & 0x20000000) || (param1->unk_2D40[param3].unk_80 & 0x400000)) && (v3 < 0)) {
        v3 = 0;
    }

    v1 = 6 + v3 + v2;

    if (v1 < 0) {
        v1 = 0;
    }

    if (v1 > 12) {
        v1 = 12;
    }

    v0 = param1->unk_354.unk_8A[param4].unk_05;

    if (v0 == 0) {
        return 0;
    }

    if (param1->unk_213C & 0x20) {
        return 0;
    }

    if (param1->unk_213C & 0x400) {
        return 0;
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if ((param1->unk_180 & 0x30) && (param1->unk_354.unk_8A[param4].unk_00 == 152)) {
            v0 = 50;
        }
    }

    v0 *= Unk_ov16_0226EAD0[v1].unk_00;
    v0 /= Unk_ov16_0226EAD0[v1].unk_01;

    if (ov16_02255A4C(param1, param2) == 14) {
        v0 = v0 * 130 / 100;
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if (param1->unk_180 & 0xc) {
            if (ov16_02255AB4(param1, param2, param3, 8) == 1) {
                v0 = v0 * 80 / 100;
            }
        }

        if (param1->unk_180 & 0xc0) {
            if (ov16_02255AB4(param1, param2, param3, 81) == 1) {
                v0 = v0 * 80 / 100;
            }
        }

        if (param1->unk_180 & 0x8000) {
            v0 = v0 * 6 / 10;
        }
    }

    if ((ov16_02255A4C(param1, param2) == 55) && (v7 == 0)) {
        v0 = v0 * 80 / 100;
    }

    if ((ov16_02255AB4(param1, param2, param3, 77) == 1) && (param1->unk_2D40[param3].unk_70 & 0x7)) {
        v0 = v0 * 50 / 100;
    }

    v4 = ov16_02258AB8(param1, param3);
    v5 = ov16_02258ACC(param1, param3, 0);

    if (v4 == 48) {
        v0 = v0 * (100 - v5) / 100;
    }

    v4 = ov16_02258AB8(param1, param2);
    v5 = ov16_02258ACC(param1, param2, 0);

    if (v4 == 93) {
        v0 = v0 * (100 + v5) / 100;
    }

    if ((v4 == 104) && (ov16_022588A4(param1, param3) == 1)) {
        v0 = v0 * (100 + v5) / 100;
    }

    if (param1->unk_2D40[param2].unk_88.unk_04_27) {
        param1->unk_2D40[param2].unk_88.unk_04_27 = 0;
        v0 = v0 * 120 / 100;
    }

    if (param1->unk_180 & 0x7000) {
        v0 = v0 * 10 / 6;
    }

    if ((ov16_0223F4BC(param0) % 100) + 1 > v0) {
        param1->unk_216C |= 0x1;
    }

    return 0;
}

static BOOL ov16_0224F274 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, int param2, int param3, int param4)
{
    if (param1->unk_213C & 0x20) {
        return 0;
    }

    if ((param1->unk_1D4[param3].unk_00_2) && (param1->unk_354.unk_8A[param4].unk_0B & 0x2)) {
        if ((param4 != 174) || (ov16_02255950(param1, param4, param2) == 1)) {
            if ((ov16_0225582C(param1, param4) == 0) || (param1->unk_213C & 0x200)) {
                ov16_02253F20(param0, param1, param2);
                param1->unk_216C |= 0x8000;
                return 0;
            }
        }
    }

    if ((param1->unk_213C & 0x400) == 0) {
        if (((param1->unk_2D40[param3].unk_80 & 0x18) && (param1->unk_2D40[param3].unk_88.unk_04_0 == param2)) || (ov16_02255A4C(param1, param2) == 99) || (ov16_02255A4C(param1, param3) == 99)) {
            param1->unk_216C &= (0x1 ^ 0xffffffff);
            return 0;
        }
    }

    if ((ov16_022555A4(param0, param1, 8, 0, 13) == 0) && (ov16_022555A4(param0, param1, 8, 0, 76) == 0)) {
        if ((param1->unk_180 & 0x3) && (param1->unk_354.unk_8A[param4].unk_00 == 152)) {
            param1->unk_216C &= (0x1 ^ 0xffffffff);
        }

        if ((param1->unk_180 & 0xc0) && (param1->unk_354.unk_8A[param4].unk_00 == 260)) {
            param1->unk_216C &= (0x1 ^ 0xffffffff);
        }
    }

    if (((param1->unk_216C & 0x400) == 0) && (param1->unk_354.unk_8A[param1->unk_3044].unk_08 != 0x80)) {
        if ((((param1->unk_213C & 0x4) == 0) && (param1->unk_2D40[param3].unk_80 & 0x40)) || (((param1->unk_213C & 0x80000) == 0) && (param1->unk_2D40[param3].unk_80 & 0x20000000)) || (((param1->unk_213C & 0x8) == 0) && (param1->unk_2D40[param3].unk_80 & 0x80)) || (((param1->unk_213C & 0x10) == 0) && (param1->unk_2D40[param3].unk_80 & 0x40000))) {
            param1->unk_216C |= 0x10000;
        }
    }

    return 0;
}

static BOOL ov16_0224F460 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;

    v2 = ov16_0223DF1C(param0);

    if (param1->unk_6C == 0xff) {
        return 0;
    }

    if (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_1D4[param1->unk_6C].unk_00_4) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x4)) {
        param1->unk_1D4[param1->unk_6C].unk_00_4 = 0;
        param1->unk_305C[param1->unk_64] = 0;
        param1->unk_307C[param1->unk_64] = param1->unk_3040;
        param1->unk_3048 = param1->unk_3040;
        param1->unk_213C |= 0x100000;
        ov16_02251E1C(param1, 1, (0 + 139));
        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
        ov16_0225B408(param1, param1->unk_6C, param1->unk_64);
        return 1;
    }

    for (v0 = 0; v0 < v2; v0++) {
        v1 = param1->unk_21EC[v0];

        if (((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && (param1->unk_1D4[v1].unk_00_5) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x8)) {
            param1->unk_118 = v1;
            param1->unk_1D4[v1].unk_00_5 = 0;

            if ((param1->unk_213C & 0x100000) == 0) {
                param1->unk_305C[param1->unk_64] = 0;
                param1->unk_307C[param1->unk_64] = param1->unk_3040;
                param1->unk_3048 = param1->unk_3040;
                param1->unk_213C |= 0x100000;
            }

            ov16_02251E1C(param1, 1, (0 + 146));

            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;

            ov16_0225B408(param1, v1, param1->unk_64);
            return 1;
        }
    }

    return 0;
}

static void ov16_0224F5CC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_022405FC(param0, param1) == 1) {
        param1->unk_B4 = 0;
        param1->unk_08 = param1->unk_0C;
    }
}

static void ov16_0224F5E8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    switch (param1->unk_48) {
    case 0:
        ov16_0224EF00(param0, param1);
        param1->unk_48++;
        return;
        break;
    case 1:
        if ((param1->unk_2184 & 0x4) == 0) {
            if (ov16_0224E784(param0, param1) == 1) {
                return;
            }
        }

        param1->unk_48++;
    case 2:
    {
        int v0;
        int v1;

        if ((param1->unk_2184 & 0x1) == 0) {
            v0 = ov16_0224E13C(param0, param1, &v1);

            if (v0) {
                switch (v0) {
                case 1:
                    param1->unk_0C = 38;
                    break;
                case 2:
                    param1->unk_0C = param1->unk_08;
                    break;
                case 3:
                    param1->unk_0C = 33;
                    break;
                }

                param1->unk_08 = 21;
                ov16_02251E1C(param1, 1, v1);
                return;
            }
        }
    }
        param1->unk_48++;
    case 3:
        if ((param1->unk_2184 & 0x8) == 0) {
            if (ov16_0224E458(param0, param1) == 1) {
                return;
            }
        }

        param1->unk_48++;
    case 4:
        if (ov16_0224E5F4(param0, param1) == 1) {
            return;
        }

        param1->unk_48++;
    case 5:
        if ((param1->unk_2184 & 0x80) == 0) {
            if (ov16_0224F460(param0, param1) == 1) {
                return;
            }
        }

        param1->unk_48++;
    case 6:
        ov16_02253C98(param0, param1, param1->unk_64, param1->unk_3044);
        param1->unk_48 = 0;
    }

    if (param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) {
        param1->unk_08 = 25;
    } else {
        param1->unk_2140 |= 0x40;
        ov16_02251E1C(param1, 0, param1->unk_3044);
        param1->unk_08 = 21;
        param1->unk_0C = 23;
        ov16_022560B0(param0, param1);
    }

    ov16_02259868(param0, param1);
}

static void ov16_0224F734 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    switch (param1->unk_4C) {
    case 0:
        param1->unk_4C++;

        if (ov16_0224E5F4(param0, param1) == 1) {
            return;
        }

    case 1:
        param1->unk_4C++;

        if (ov16_02253E3C(param0, param1) == 1) {
            return;
        }
    case 2:
        if (((param1->unk_2184 & 0x20) == 0) && (param1->unk_6C != 0xff)) {
            if (ov16_0224EF20(param0, param1, param1->unk_64, param1->unk_6C, param1->unk_3044) == 1) {
                return;
            }
        }

        param1->unk_4C++;
    case 3:
        if (((param1->unk_2184 & 0x40) == 0) && (param1->unk_6C != 0xff)) {
            if (ov16_0224F274(param0, param1, param1->unk_64, param1->unk_6C, param1->unk_3044) == 1) {
                return;
            }
        }

        param1->unk_4C++;
    case 4:
        if (((param1->unk_2184 & 0x2) == 0) && (param1->unk_6C != 0xff)) {
            if (ov16_0224E6F4(param0, param1) == 1) {
                return;
            }
        }

        param1->unk_4C++;
    case 5:
        if (((param1->unk_2184 & 0x10) == 0) && (param1->unk_6C != 0xff)) {
            if (ov16_0224EE88(param0, param1) == 1) {
                return;
            }
        }

        param1->unk_4C++;
    case 6:
        param1->unk_4C = 0;
        break;
    }

    param1->unk_08 = 24;
}

static void ov16_0224F824 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    if (ov16_0225366C(param0, param1, &v0) == 1) {
        ov16_02251E1C(param1, 1, v0);
        param1->unk_08 = 21;
        param1->unk_0C = 25;
        return;
    } else {
        param1->unk_08 = 25;
    }
}

static void ov16_0224F854 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_216C & 0x80000000) {
        param1->unk_08 = 34;
    } else if (param1->unk_216C & 0x200) {
        ov16_02251E1C(param1, 1, (0 + 42));
        param1->unk_08 = 21;
        param1->unk_0C = 38;
    } else if ((param1->unk_2180) && (param1->unk_216C & 0x1)) {
        param1->unk_216C &= (0x1 ^ 0xffffffff);
        param1->unk_216C |= 0x4000;
        param1->unk_08 = 28;
    } else if (param1->unk_216C & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) {
        ov16_02251E1C(param1, 1, (0 + 7));
        param1->unk_08 = 21;
        param1->unk_0C = 33;
    } else {
        param1->unk_08 = 26;
    }
}

static void ov16_0224F8D4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 1));
    param1->unk_08 = 21;
    param1->unk_0C = 27;
}

static void ov16_0224F8EC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    if (param1->unk_216C & 0x20) {
        param1->unk_2144 = param1->unk_2D40[param1->unk_6C].unk_50 * -1;
    }

    if (param1->unk_2144) {
        v0 = ov16_02258AB8(param1, param1->unk_6C);
        v1 = ov16_02258ACC(param1, param1->unk_6C, 0);

        GF_ASSERT(param1->unk_2144 < 0);

        if (ov16_0223E208(param0, param1->unk_64) == ov16_0223E208(param0, param1->unk_6C)) {
            ov16_022666BC(param0, param1->unk_64, 0, (((70 + 1)) + 26));
        }

        param1->unk_30F4[param1->unk_6C] = param1->unk_64;

        if ((param1->unk_2D40[param1->unk_6C].unk_70 & 0x1000000) && (param1->unk_2144 < 0)) {
            if ((param1->unk_2D40[param1->unk_6C].unk_88.unk_18 + param1->unk_2144) <= 0) {
                param1->unk_2D4[param1->unk_64].unk_18 += (param1->unk_2D40[param1->unk_6C].unk_88.unk_18 * -1);
                param1->unk_2D40[param1->unk_6C].unk_70 &= (0x1000000 ^ 0xffffffff);
                param1->unk_2148 = param1->unk_2D40[param1->unk_6C].unk_88.unk_18 * -1;
                param1->unk_2D40[param1->unk_6C].unk_88.unk_18 = 0;
            } else {
                param1->unk_2D4[param1->unk_64].unk_18 += param1->unk_2144;
                param1->unk_2D40[param1->unk_6C].unk_88.unk_18 += param1->unk_2144;
                param1->unk_2148 = param1->unk_2144;
            }

            param1->unk_2D4[param1->unk_6C].unk_14 |= 0x8;
            param1->unk_118 = param1->unk_6C;

            ov16_02251E1C(param1, 1, (0 + 90));

            param1->unk_08 = 21;
            param1->unk_0C = 28;
        } else {
            if (param1->unk_354.unk_8A[param1->unk_3044].unk_00 == 101) {
                if ((param1->unk_2D40[param1->unk_6C].unk_4C + param1->unk_2144) <= 0) {
                    param1->unk_2144 = (param1->unk_2D40[param1->unk_6C].unk_4C - 1) * -1;
                }
            }

            if (param1->unk_1D4[param1->unk_6C].unk_00_9 == 0) {
                if ((v0 == 65) && ((ov16_0223F4BC(param0) % 100) < v1)) {
                    param1->unk_2D4[param1->unk_6C].unk_00_5 = 1;
                }

                if ((v0 == 103) && (param1->unk_2D40[param1->unk_6C].unk_4C == param1->unk_2D40[param1->unk_6C].unk_50)) {
                    param1->unk_2D4[param1->unk_6C].unk_00_5 = 1;
                }
            }

            if ((param1->unk_1D4[param1->unk_6C].unk_00_9) || (param1->unk_2D4[param1->unk_6C].unk_00_5)) {
                if ((param1->unk_2D40[param1->unk_6C].unk_4C + param1->unk_2144) <= 0) {
                    param1->unk_2144 = (param1->unk_2D40[param1->unk_6C].unk_4C - 1) * -1;

                    if (param1->unk_1D4[param1->unk_6C].unk_00_9) {
                        param1->unk_216C |= 0x80;
                    } else {
                        param1->unk_216C |= 0x100;
                    }
                }
            }

            param1->unk_30E4[param1->unk_6C] += param1->unk_2144;

            if (param1->unk_2D40[param1->unk_6C].unk_7C < 255) {
                param1->unk_2D40[param1->unk_6C].unk_7C++;
            }

            if (param1->unk_354.unk_8A[param1->unk_3044].unk_02 == 0) {
                param1->unk_1D4[param1->unk_6C].unk_04[param1->unk_64] = param1->unk_2144;
                param1->unk_1D4[param1->unk_6C].unk_14 = param1->unk_64;
                param1->unk_1D4[param1->unk_6C].unk_18 |= sub_020787CC(param1->unk_64);
                param1->unk_2D4[param1->unk_6C].unk_04 = param1->unk_2144;
                param1->unk_2D4[param1->unk_6C].unk_08 = param1->unk_64;
            } else if (param1->unk_354.unk_8A[param1->unk_3044].unk_02 == 1) {
                param1->unk_1D4[param1->unk_6C].unk_1C[param1->unk_64] = param1->unk_2144;
                param1->unk_1D4[param1->unk_6C].unk_2C = param1->unk_64;
                param1->unk_1D4[param1->unk_6C].unk_30 |= sub_020787CC(param1->unk_64);
                param1->unk_2D4[param1->unk_6C].unk_0C = param1->unk_2144;
                param1->unk_2D4[param1->unk_6C].unk_10 = param1->unk_64;
            }

            if ((param1->unk_2D40[param1->unk_6C].unk_4C + param1->unk_2144) <= 0) {
                param1->unk_2D4[param1->unk_64].unk_18 += (param1->unk_2D40[param1->unk_6C].unk_4C * -1);
            } else {
                param1->unk_2D4[param1->unk_64].unk_18 += param1->unk_2144;
            }

            param1->unk_1D4[param1->unk_6C].unk_34 = param1->unk_2144;
            param1->unk_1D4[param1->unk_6C].unk_38 = param1->unk_64;
            param1->unk_118 = param1->unk_6C;
            param1->unk_215C = param1->unk_2144;

            ov16_02251E1C(param1, 1, (0 + 2));

            param1->unk_08 = 21;
            param1->unk_0C = 28;
            param1->unk_213C |= 0x2000;
        }
    } else {
        param1->unk_08 = 28;
    }
}

static void ov16_0224FD00 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    switch (param1->unk_38) {
    case 0:
        switch (param1->unk_3C) {
        case 0:
            param1->unk_3C++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
            param1->unk_3C++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 2:
        {
            int v0;

            param1->unk_3C++;

            if ((ov16_02253710(param0, param1, &v0) == 1) && ((param1->unk_216C & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                ov16_02251E1C(param1, 1, v0);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }
        case 3:
            param1->unk_3C++;
            ov16_02251E1C(param1, 1, (0 + 293));
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            return;
        case 4:
            param1->unk_3C++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 5:
        {
            int v1;

            param1->unk_3C++;

            if (ov16_0225708C(param0, param1, &v1) == 1) {
                ov16_02251E1C(param1, 1, v1);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }
        case 6:
            param1->unk_3C++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    case 1:
        switch (param1->unk_3C) {
        case 0:
            param1->unk_3C++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
        {
            int v2;

            param1->unk_3C++;

            if ((ov16_02253710(param0, param1, &v2) == 1) && ((param1->unk_216C & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                ov16_02251E1C(param1, 1, v2);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }
        case 2:
            param1->unk_3C++;
            ov16_02251E1C(param1, 1, (0 + 293));
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            return;
        case 3:
            param1->unk_3C++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 4:
        {
            int v3;

            param1->unk_3C++;

            if (ov16_0225708C(param0, param1, &v3) == 1) {
                ov16_02251E1C(param1, 1, v3);
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }
        case 5:
            param1->unk_3C++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 6:
            param1->unk_3C++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    }

    param1->unk_3C = 0;
    param1->unk_08 = 30;
}

static void ov16_0224FEE0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    return;
}

static void ov16_0224FEE4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    switch (param1->unk_40) {
    case 0:
    {
        int v0 = 0;

        while (param1->unk_44 < ov16_0223DF1C(param0)) {
            if (((param1->unk_2D40[param1->unk_44].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->unk_2D40[param1->unk_44].unk_84 & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
                param1->unk_2D40[param1->unk_44].unk_84 &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
                ov16_02251E1C(param1, 1, (0 + 287));
                param1->unk_118 = param1->unk_44;
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                v0 = 1;
            }

            param1->unk_44++;

            if (v0) {
                return;
            }
        }
    }
        param1->unk_40++;
        param1->unk_44 = 0;
    case 1:
        param1->unk_40++;

        if (ov16_02257808(param0, param1, param1->unk_08) == 1) {
            return;
        }
    case 2:
    {
        int v1;

        v1 = ov16_02256414(param0, param1);

        if (v1) {
            ov16_02251E1C(param1, 1, v1);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            return;
        }
    }
        param1->unk_40++;
    case 3:
        param1->unk_40++;

        if (ov16_022579A4(param0, param1, param1->unk_64) == 1) {
            return;
        }
    case 4:
        param1->unk_40++;

        if (param1->unk_6C != 0xff) {
            if (ov16_022579A4(param0, param1, param1->unk_6C) == 1) {
                return;
            }
        }
    case 5:
    {
        int v2;

        param1->unk_40++;

        if (ov16_022588BC(param0, param1, &v2) == 1) {
            ov16_02251E1C(param1, 1, v2);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            return;
        }
    }
    case 6:
    {
        int v3;

        if (ov16_02255A4C(param1, param1->unk_64) == 96) {
            v3 = 0;
        } else if (param1->unk_2160) {
            v3 = param1->unk_2160;
        } else {
            v3 = param1->unk_354.unk_8A[param1->unk_3044].unk_04;
        }

        param1->unk_40++;

        if (param1->unk_6C != 0xff) {
            if ((param1->unk_2D40[param1->unk_6C].unk_6C & 0x20) && ((param1->unk_216C & 0x4000) == 0) && (param1->unk_6C != param1->unk_64) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && (param1->unk_2D40[param1->unk_6C].unk_4C) && (v3 == 10)) {
                param1->unk_118 = param1->unk_6C;
                ov16_02251E1C(param1, 1, (0 + 29));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                return;
            }
        }
    }
    case 7:
    {
        int v4;
        int v5 = 0;
        int v6;

        while (param1->unk_44 < ov16_0223DF1C(param0)) {
            v4 = param1->unk_21EC[param1->unk_44];

            if (param1->unk_3108 & sub_020787CC(v4)) {
                param1->unk_44++;
                continue;
            }

            param1->unk_44++;

            if (ov16_02258104(param0, param1, v4, &v6) == 1) {
                param1->unk_118 = v4;
                ov16_02251E1C(param1, 1, v6);

                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;

                v5 = 1;
                break;
            }
        }

        if (v5 == 0) {
            param1->unk_40++;
            param1->unk_44 = 0;
        }
    }
    break;
    default:
        break;
    }

    param1->unk_40 = 0;
    param1->unk_44 = 0;
    param1->unk_08 = 31;
}

static void ov16_0225016C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    return;
}

static void ov16_02250170 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_217D) {
        if ((param1->unk_74 == 0xff) && ((param1->unk_2D40[param1->unk_64].unk_6C & 0x7) == 0) && ((param1->unk_216C & 0x4000) == 0)) {
            if (--param1->unk_217C) {
                param1->unk_2180 = 1;
                ov16_02255F94(param0, param1);

                param1->unk_213C &= (0x4000 ^ 0xffffffff);
                param1->unk_2184 = param1->unk_2188;

                ov16_02251E1C(param1, 0, param1->unk_3044);

                param1->unk_08 = 21;
                param1->unk_0C = 23;
            } else {
                param1->unk_130 = param1->unk_217D;
                ov16_02251E1C(param1, 1, (0 + 17));

                param1->unk_08 = 21;
                param1->unk_0C = 33;
            }
        } else {
            if ((param1->unk_74 != 0xff) || (param1->unk_2D40[param1->unk_64].unk_6C & 0x7)) {
                param1->unk_130 = param1->unk_217D - param1->unk_217C + 1;
            } else {
                param1->unk_130 = param1->unk_217D - param1->unk_217C;
            }

            ov16_02251E1C(param1, 1, (0 + 17));
            param1->unk_08 = 21;
            param1->unk_0C = 33;
        }

        ov16_02266AA0(param0);
    } else {
        param1->unk_08 = 33;
    }
}

static void ov16_02250270 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_213C & 0xf000000) {
        ov16_02250EF4(param1, 33, 33, 0);
    } else {
        param1->unk_08 = 34;
    }
}

static void ov16_02250298 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_2140 & 0x8) {
        param1->unk_2140 &= (0x8 ^ 0xffffffff);
        param1->unk_6C = param1->unk_64;
        param1->unk_64 = param1->unk_84;
    }

    ov16_02250FF4(param0, param1);

    if ((param1->unk_354.unk_8A[param1->unk_3044].unk_08 == 0x4) && ((param1->unk_213C & 0x2) == 0) && (param1->unk_217E < ov16_0223DF1C(param0))) {
        param1->unk_2184 = (0x1 | 0x4 | 0x8);
        {
            int v0;
            int v1 = ov16_0223DF1C(param0);
            UnkStruct_ov16_0225BFFC * v2 = ov16_0223DF14(param0, param1->unk_64);
            u8 v3 = ov16_02263AE4(v2);

            do {
                v0 = param1->unk_21EC[param1->unk_217E++];

                if (((param1->unk_3108 & sub_020787CC(v0)) == 0) && (param1->unk_2D40[v0].unk_4C)) {
                    v2 = ov16_0223DF14(param0, v0);

                    if (((v3 & 0x1) && ((ov16_02263AE4(v2) & 0x1) == 0)) || ((v3 & 0x1) == 0) && (ov16_02263AE4(v2) & 0x1)) {
                        ov16_02255F94(param0, param1);
                        param1->unk_6C = v0;
                        param1->unk_08 = 22;
                        break;
                    }
                }
            } while (param1->unk_217E < ov16_0223DF1C(param0));
        }
        ov16_02266AA0(param0);
    } else if ((param1->unk_354.unk_8A[param1->unk_3044].unk_08 == 0x8) && ((param1->unk_213C & 0x2) == 0) && (param1->unk_217E < ov16_0223DF1C(param0))) {
        param1->unk_2184 = (0x1 | 0x4 | 0x8);
        {
            int v4;
            int v5 = ov16_0223DF1C(param0);

            do {
                v4 = param1->unk_21EC[param1->unk_217E++];

                if (((param1->unk_3108 & sub_020787CC(v4)) == 0) && (param1->unk_2D40[v4].unk_4C)) {
                    if (v4 != param1->unk_64) {
                        ov16_02255F94(param0, param1);
                        param1->unk_6C = v4;
                        param1->unk_08 = 22;
                        break;
                    }
                }
            } while (param1->unk_217E < ov16_0223DF1C(param0));
        }
        ov16_02266AA0(param0);
    } else {
        param1->unk_08 = 35;
    }
}

static void ov16_02250438 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (param1->unk_213C & 0xf0000000) {
        param1->unk_74 = sub_020787EC((param1->unk_213C & 0xf0000000) >> 28);
        param1->unk_213C &= (0xf0000000 ^ 0xffffffff);

        ov16_02251E1C(param1, 1, (0 + 277));

        param1->unk_08 = 21;
        param1->unk_0C = 36;
    } else {
        param1->unk_08 = 36;
    }
}

static void ov16_02250480 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_0225143C(param0, param1) == 1) {
        return;
    }

    param1->unk_08 = 38;
}

static void ov16_02250494 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    return;
}

static void ov16_02250498 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    u8 v0;

    v0 = ov16_02258AB8(param1, param1->unk_64);

    if ((param1->unk_213C & 0x20) || (param1->unk_2140 & 0x4)) {
        if ((v0 == 55) || (v0 == 115) || (v0 == 125)) {
            if ((param1->unk_3040 == 165) || ((param1->unk_3040 == 369) && (param1->unk_2140 & 0x10)) || ((param1->unk_3040 == 226) && (param1->unk_2140 & 0x40))) {
                (void)0;
            } else {
                param1->unk_2D40[param1->unk_64].unk_88.unk_30 = param1->unk_3040;
            }
        } else {
            param1->unk_2D40[param1->unk_64].unk_88.unk_30 = 0;
        }
    }

    if ((param1->unk_213C & 0x100000) == 0) {
        if (param1->unk_2140 & 0x4) {
            param1->unk_305C[param1->unk_64] = param1->unk_3044;
            param1->unk_3048 = param1->unk_3040;
        } else {
            param1->unk_305C[param1->unk_64] = 0;
            param1->unk_3048 = 0;
        }

        if (param1->unk_2140 & 0x40) {
            param1->unk_307C[param1->unk_64] = param1->unk_3040;
        } else {
            param1->unk_307C[param1->unk_64] = 0;
        }
    }

    if (param1->unk_2140 & 0x4) {
        param1->unk_30AC[param1->unk_64] = param1->unk_3040;
    }

    ov16_02250FF4(param0, param1);
    ov16_0225991C(param0, param1);

    param1->unk_08 = 39;
}

static void ov16_022505C4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    u32 v1;

    v1 = ov16_0223DF0C(param0);

    if ((v1 & (0x20 | 0x200)) == 0) {
        if (ov16_02257628(param0, param1, param1->unk_64, 0) == 1) {
            return;
        }

        if ((param1->unk_6C != 0xff) && (ov16_02257628(param0, param1, param1->unk_6C, 0) == 1)) {
            return;
        }

        if (ov16_02250F98(param1, param1->unk_08, param1->unk_08) == 1) {
            return;
        }

        if (ov16_02250A48(param0, param1) == 1) {
            return;
        }

        v0 = ov16_02256414(param0, param1);

        if (v0) {
            ov16_02251E1C(param1, 1, v0);
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            return;
        }

        if (ov16_022513B0(param0, param1) == 1) {
            return;
        }

        ov16_02250E8C(param0, param1);
    }

    param1->unk_21A8[param1->unk_21E8[param1->unk_EC]][0] = 39;

    if (param1->unk_2D4[param1->unk_64].unk_00_4) {
        ov16_0225B148(param0, param1);
        ov16_02255FBC(param0, param1);
        param1->unk_EC = 0;
    } else {
        param1->unk_EC++;
    }

    ov16_022541C4(param1);

    param1->unk_08 = 8;
}

static void ov16_022506A4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;

    if (ov16_02250EF4(param1, param1->unk_08, param1->unk_08, 1) == 1) {
        return;
    }

    param1->unk_08 = 39;
}

static void ov16_022506C0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (ov16_0223F438(param0) & 0x80) {
        param1->unk_08 = 43;
    } else if ((ov16_0223F438(param0) == 0x2) || (ov16_0223F438(param0) == 0x3)) {
        ov16_02251E1C(param1, 1, (0 + 5));
        param1->unk_08 = 21;
        param1->unk_0C = 43;
    } else if (ov16_0223F438(param0) == 0x1) {
        ov16_02251E1C(param1, 1, (0 + 4));
        param1->unk_08 = 21;
        param1->unk_0C = 43;
    } else if (ov16_0223F438(param0) == 0x4) {
        param1->unk_08 = 21;
        param1->unk_0C = 43;
    } else if (ov16_0223F438(param0) == 0x5) {
        param1->unk_08 = 43;
    }

    param1->unk_311F = 1;
}

static void ov16_0225074C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    if (sub_0200F2AC() == 1) {
        param1->unk_08 = 43;
    }
}

static void ov16_02250760 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    Party * v0;
    u32 v1;

    v1 = ov16_0223DF0C(param0);

    if ((v1 & 0x4) == 0) {
        v0 = ov16_0223DF20(param0, 0);
        sub_020776B0(v0);
        sub_0207782C(v0);
    }

    if (v1 & 0x4) {
        sub_020360DC(22);
    }

    param1->unk_08 = 44;
}

static void ov16_02250798 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    return;
}

static BOOL ov16_0225079C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;
    u32 v3;
    int v4;

    v2 = ov16_0223DF1C(param0);
    v3 = ov16_0223DF0C(param0);
    v4 = param1->unk_08;

    for (v1 = 0; v1 < v2; v1++) {
        param1->unk_13C[v1] &= 0x1 ^ 0xffffffff;

        if (((v3 & 0x2) && ((v3 & (0x8 | 0x10)) == 0)) || ((v3 & 0x10) && ((ov16_0223E208(param0, v1)) == 0))) {
            if ((param1->unk_2D40[v1].unk_4C == 0) && (param1->unk_2D40[v1 ^ 2].unk_4C == 0) && (v1 & 2)) {
                continue;
            }

            if (param1->unk_2D40[v1].unk_4C == 0) {
                {
                    int v5;
                    int v6;
                    int v7 = 0;
                    int v8 = 0;
                    Party * v9;
                    Pokemon * v10;
                    UnkStruct_ov16_0225BFFC * v11;

                    v9 = ov16_0223DF20(param0, v1);
                    v11 = ov16_0223DF14(param0, v1);

                    for (v5 = 0; v5 < Party_GetCurrentCount(v9); v5++) {
                        v10 = Party_GetPokemonBySlotIndex(v9, v5);

                        if ((sub_02074470(v10, 174, NULL) != 0) && (sub_02074470(v10, 174, NULL) != 494)) {
                            if (v6 = sub_02074470(v10, 163, NULL)) {
                                v8++;

                                if (param1->unk_219C[v1 ^ 2] != v5) {
                                    v7 += v6;
                                }
                            }
                        }
                    }

                    if (v7 == 0) {
                        param1->unk_3108 |= sub_020787CC(v1);
                        param1->unk_219C[v1] = 6;
                    } else {
                        param1->unk_0C = v4;
                        param1->unk_08 = 21;
                        param1->unk_13C[v1] |= 0x1;
                    }
                }
            }
        } else {
            if (param1->unk_2D40[v1].unk_4C == 0) {
                {
                    int v12;
                    int v13 = 0;
                    Party * v14;
                    Pokemon * v15;
                    UnkStruct_ov16_0225BFFC * v16;

                    v14 = ov16_0223DF20(param0, v1);
                    v16 = ov16_0223DF14(param0, v1);

                    for (v12 = 0; v12 < Party_GetCurrentCount(v14); v12++) {
                        v15 = Party_GetPokemonBySlotIndex(v14, v12);

                        if ((sub_02074470(v15, 174, NULL) != 0) && (sub_02074470(v15, 174, NULL) != 494)) {
                            v13 += sub_02074470(v15, 163, NULL);
                        }
                    }

                    if (v13 == 0) {
                        param1->unk_3108 |= sub_020787CC(v1);
                        param1->unk_219C[v1] = 6;
                    } else {
                        param1->unk_0C = v4;
                        param1->unk_08 = 21;
                        param1->unk_13C[v1] |= 0x1;
                    }
                }
            }
        }
    }

    if (param1->unk_08 == 21) {
        if (((v3 & (0x4 | 0x2 | 0x80)) == 0) && (ov16_0223EE18(param0) == 0) && (((param1->unk_13C[0] & 0x1) == 0) || ((param1->unk_13C[1] & 0x1) == 0)) && (ov16_02255B10(param0, param1, 0))) {
            if (param1->unk_13C[0] & 0x1) {
                param1->unk_138 = 0;
            } else {
                param1->unk_138 = 1;
            }

            ov16_02251E1C(param1, 1, (0 + 231));
        } else {
            ov16_02251E1C(param1, 1, (0 + 10));
        }

        v0 = 1;
    }

    return v0;
}

static BOOL ov16_02250A48 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2;
    u8 v3;

    v1 = ov16_0223DF1C(param0);
    v2 = ov16_0223DF0C(param0);
    v3 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (((v2 == ((0x2 | 0x1) | 0x8 | 0x40)) || (v2 == (0x2 | 0x8 | 0x40))) && (ov16_0223E208(param0, v0) == 0)) {
            if (ov16_0223E1F8(param0, v0) == 2) {
                if (param1->unk_2D40[v0].unk_4C == 0) {
                    {
                        int v4;
                        int v5 = 0;
                        Party * v6;
                        Pokemon * v7;
                        UnkStruct_ov16_0225BFFC * v8;

                        v6 = ov16_0223DF20(param0, v0);
                        v8 = ov16_0223DF14(param0, v0);

                        for (v4 = 0; v4 < Party_GetCurrentCount(v6); v4++) {
                            v7 = Party_GetPokemonBySlotIndex(v6, v4);

                            if ((sub_02074470(v7, 174, NULL) != 0) && (sub_02074470(v7, 174, NULL) != 494)) {
                                v5 += sub_02074470(v7, 163, NULL);
                            }
                        }

                        if (v5 == 0) {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else if ((v2 & 0x8) || ((v2 & 0x10) && (ov16_0223E208(param0, v0)))) {
            if (param1->unk_2D40[v0].unk_4C == 0) {
                {
                    int v9;
                    int v10 = 0;
                    Party * v11;
                    Party * v12;
                    Pokemon * v13;
                    UnkStruct_ov16_0225BFFC * v14;

                    v11 = ov16_0223DF20(param0, v0);
                    v12 = ov16_0223DF20(param0, ov16_0223E258(param0, v0));
                    v14 = ov16_0223DF14(param0, v0);

                    for (v9 = 0; v9 < Party_GetCurrentCount(v11); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v11, v9);

                        if ((sub_02074470(v13, 174, NULL) != 0) && (sub_02074470(v13, 174, NULL) != 494)) {
                            v10 += sub_02074470(v13, 163, NULL);
                        }
                    }

                    for (v9 = 0; v9 < Party_GetCurrentCount(v12); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v12, v9);

                        if ((sub_02074470(v13, 174, NULL) != 0) && (sub_02074470(v13, 174, NULL) != 494)) {
                            v10 += sub_02074470(v13, 163, NULL);
                        }
                    }

                    if (v10 == 0) {
                        if (ov16_02263AE4(v14) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else {
            if (param1->unk_2D40[v0].unk_4C == 0) {
                {
                    int v15;
                    int v16 = 0;
                    Party * v17;
                    Pokemon * v18;
                    UnkStruct_ov16_0225BFFC * v19;

                    v17 = ov16_0223DF20(param0, v0);
                    v19 = ov16_0223DF14(param0, v0);

                    for (v15 = 0; v15 < Party_GetCurrentCount(v17); v15++) {
                        v18 = Party_GetPokemonBySlotIndex(v17, v15);

                        if ((sub_02074470(v18, 174, NULL) != 0) && (sub_02074470(v18, 174, NULL) != 494)) {
                            v16 += sub_02074470(v18, 163, NULL);
                        }
                    }

                    if (v16 == 0) {
                        if (ov16_02263AE4(v19) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        }
    }

    if (((v3 == 0x1) && (v2 & 0x1) && ((v2 & 0x4) == 0)) || ((v3 == 0x1) && (v2 & 0x80) && ((v2 & 0x4) == 0))) {
        {
            UnkStruct_0207A9CC * v20;

            v20 = ov16_0223E120(param0, 1);

            switch (v20->unk_01) {
            case 62:
            case 74:
            case 75:
            case 76:
            case 77:
            case 78:
            case 64:
            case 79:
                sub_0200549C(1129);
                break;
            case 97:
            case 99:
            case 100:
            case 101:
            case 102:
                sub_0200549C(1203);
                break;
            case 69:
                sub_0200549C(1130);
                break;
            case 72:
            case 87:
            case 88:
            case 73:
            case 89:
                sub_0200549C(1131);
                break;
            case 86:
                sub_0200549C(1132);
                break;
            case 65:
            case 66:
            case 67:
            case 68:
                sub_0200549C(1133);
                break;
            default:
                sub_0200549C(1128);
                break;
            }
        }
        ov16_0223F460(param0, 2);
    }

    if (v3) {
        ov16_0223F444(param0, v3);
    }

    return v3 != 0;
}

static BOOL ov16_02250DE4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1, u8 param2, u32 param3, int * param4, int param5, u32 * param6)
{
    if ((param1->unk_2D40[param2].unk_0C[param5] == 174) && (ov16_02255950(param1, param1->unk_2D40[param2].unk_0C[param5], param2) == 0)) {
        *param4 = 0x10;
    } else {
        *param4 = param1->unk_354.unk_8A[param1->unk_2D40[param2].unk_0C[param5]].unk_08;
    }

    if (param3 & 0x2) {
        if (*param4 == 0x100) {
            if ((param1->unk_3108 & sub_020787CC(ov16_0223E258(param0, param2))) == 0) {
                return 1;
            } else {
                return 0;
            }
        } else {
            return 1;
        }
    } else {
        if (*param4 & (0x1 | 0x10 | 0x40 | 0x200)) {
            *param6 = param2;
        } else {
            *param6 = param2 ^ 1;
        }

        return 0;
    }
}

static void ov16_02250E8C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->unk_2D40[v0].unk_70 &= (param1->unk_218C[v0] ^ 0xffffffff);
        param1->unk_218C[v0] = 0;
    }

    param1->unk_3064[param1->unk_64] = 0;
    param1->unk_30C4[param1->unk_64] = 0;
}

static BOOL ov16_02250EF4 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2, int param3)
{
    int v0;
    int v1;

    v0 = 0;
    v1 = sub_020787CC(param0->unk_21EC[v0]) << 24;

    if (param0->unk_213C & 0xf000000) {
        while ((param0->unk_213C & v1) == 0) {
            v0++;
            v1 = sub_020787CC(param0->unk_21EC[v0]) << 24;
        }

        param0->unk_213C &= (v1 ^ 0xffffffff);
        param0->unk_74 = sub_020787EC(v1 >> 24);

        if (param3 == 1) {
            ov16_02251E1C(param0, 1, (0 + 6));
        } else {
            ov16_02251E1C(param0, 1, (0 + 83));
        }

        param0->unk_08 = 21;
        param0->unk_0C = param1;
        param0->unk_21A8[param0->unk_74][0] = 39;

        return 1;
    } else {
        param0->unk_08 = param2;
        return 0;
    }
}

static BOOL ov16_02250F98 (UnkStruct_ov16_0224B9DC * param0, int param1, int param2)
{
    if (param0->unk_2140 & 0xf0000000) {
        {
            int v0;

            v0 = 1 << 28;

            while ((param0->unk_2140 & v0) == 0) {
                v0 = v0 << 1;
            }

            param0->unk_2140 &= (v0 ^ 0xffffffff);
            param0->unk_74 = sub_020787EC(v0 >> 28);

            ov16_02251E1C(param0, 1, (0 + 276));

            param0->unk_08 = 21;
            param0->unk_0C = param1;
        }
        return 1;
    } else {
        param0->unk_08 = param2;
        return 0;
    }
}

static void ov16_02250FF4 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u8 v2;

    if (ov16_02255A4C(param1, param1->unk_64) == 96) {
        v1 = 0;
    } else if (param1->unk_2160) {
        v1 = param1->unk_2160;
    } else {
        v1 = param1->unk_354.unk_8A[param1->unk_3044].unk_04;
    }

    v0 = param1->unk_354.unk_8A[param1->unk_3040].unk_0B;

    if ((v0 & 0x10) && ((param1->unk_213C & 0x100000) == 0) && (param1->unk_6C != 0xff) && (param1->unk_2140 & 0x4)) {
        param1->unk_3084[param1->unk_6C] = param1->unk_3040;
        param1->unk_308C[param1->unk_6C][param1->unk_64] = param1->unk_3040;
    }

    if (param1->unk_6C != 0xff) {
        v2 = ov16_02258AB8(param1, param1->unk_6C);

        if ((param1->unk_213C & 0x20) || (param1->unk_2140 & 0x4)) {
            if ((v2 != 55) && (v2 != 115) && (v2 != 125)) {
                param1->unk_2D40[param1->unk_6C].unk_88.unk_30 = 0;
            }
        }

        if ((param1->unk_213C & 0x100000) == 0) {
            if (param1->unk_2140 & 0x4) {
                param1->unk_3064[param1->unk_6C] = param1->unk_3044;
                param1->unk_306C[param1->unk_6C] = param1->unk_64;
                param1->unk_3074[param1->unk_6C] = v1;
                param1->unk_3048 = param1->unk_3040;
            } else {
                param1->unk_3064[param1->unk_6C] = 0;
                param1->unk_306C[param1->unk_6C] = 0xff;
                param1->unk_3074[param1->unk_6C] = 0;
                param1->unk_3048 = 0;
            }

            if ((param1->unk_2140 & 0x40) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
                switch (param1->unk_354.unk_8A[param1->unk_3044].unk_08) {
                case 0x10:
                case 0x20:
                case 0x40:
                case 0x80:
                case 0x100:
                case 0x200:
                    param1->unk_30C4[param1->unk_6C] = 0;
                    param1->unk_30CC[param1->unk_6C] = 0xff;
                    param1->unk_30D4[param1->unk_6C] = 0;
                    break;
                default:
                    param1->unk_30C4[param1->unk_6C] = param1->unk_3044;
                    param1->unk_30CC[param1->unk_6C] = param1->unk_64;
                    param1->unk_30D4[param1->unk_6C] = v1;
                    break;
                }
            } else {
                param1->unk_30C4[param1->unk_6C] = 0;
                param1->unk_30CC[param1->unk_6C] = 0xff;
                param1->unk_30D4[param1->unk_6C] = 0;
            }
        }
    }
}

static BOOL ov16_022511FC (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    ov16_02251E1C(param1, 1, (0 + 16));

    param1->unk_0C = param1->unk_08;
    param1->unk_08 = 21;

    return 1;
}

static BOOL ov16_02251218 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->unk_216C) {
        if (param1->unk_217D) {
            if ((param1->unk_74 != 0xff) || (param1->unk_217C == 1) || (param1->unk_216C & 0x4000)) {
                v0 = 1;
            }
        } else {
            v0 = 1;
        }
    }

    if (v0 == 1) {
        ov16_02251E1C(param1, 1, (0 + 21));

        param1->unk_0C = param1->unk_08;
        param1->unk_08 = 21;
    }

    return v0;
}

static BOOL ov16_0225126C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->unk_6C == 0xff) {
        return v0;
    }

    if ((param1->unk_2D40[param1->unk_6C].unk_70 & 0x800000) && ((param1->unk_216C & 0x4000) == 0) && (param1->unk_6C != param1->unk_64) && (param1->unk_2D40[param1->unk_6C].unk_4C) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C))) {
        if (param1->unk_2D40[param1->unk_6C].unk_18[0x1] < 12) {
            param1->unk_2D40[param1->unk_6C].unk_18[0x1]++;
            ov16_02251E1C(param1, 1, (0 + 245));
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;
            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022512F8 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;

    v1 = ov16_02258AB8(param1, param1->unk_64);
    v2 = ov16_02258ACC(param1, param1->unk_64, 0);

    if (param1->unk_6C != 0xff) {
        if ((v1 == 56) && ((param1->unk_216C & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->unk_2D4[param1->unk_6C].unk_04) || (param1->unk_2D4[param1->unk_6C].unk_0C)) && ((ov16_0223F4BC(param0) % 100) < v2) && (param1->unk_354.unk_8A[param1->unk_3044].unk_0B & 0x20) && (param1->unk_2D40[param1->unk_6C].unk_4C)) {
            param1->unk_94 = param1->unk_6C;
            param1->unk_88 = 2;

            ov16_02251E1C(param1, 1, (0 + 14));

            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;

            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022513B0 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    BOOL v0 = 0;

    while (param1->unk_5C < ov16_0223DF1C(param0)) {
        if (((param1->unk_2D40[param1->unk_5C].unk_80 & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->unk_2D40[param1->unk_5C].unk_84 & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
            param1->unk_2D40[param1->unk_5C].unk_84 &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
            ov16_02251E1C(param1, 1, (0 + 287));

            param1->unk_118 = param1->unk_5C;
            param1->unk_0C = param1->unk_08;
            param1->unk_08 = 21;

            v0 = 1;
        }

        param1->unk_5C++;

        if (v0 == 1) {
            break;
        }
    }

    if (v0 == 0) {
        param1->unk_5C = 0;
    }

    return v0;
}

static BOOL ov16_0225143C (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v0 = 0;
    v2 = ov16_0223DF1C(param0);
    v3 = ov16_02258AB8(param1, param1->unk_64);
    v4 = ov16_02258ACC(param1, param1->unk_64, 0);

    if (ov16_02250EF4(param1, param1->unk_08, param1->unk_08, 1) == 1) {
        return 1;
    }

    do {
        switch (param1->unk_30) {
        case 0:
            if ((param1->unk_2D40[param1->unk_64].unk_70 & 0x800000) && (param1->unk_3044 != 99)) {
                param1->unk_2D40[param1->unk_64].unk_70 &= (0x800000 ^ 0xffffffff);
            }

            param1->unk_30++;
            break;
        case 1:
            if (param1->unk_6C != 0xff) {
                if ((v3 == 88) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_213C & 0x2000) && (param1->unk_2D4[param1->unk_64].unk_18) && (param1->unk_64 != param1->unk_6C) && (param1->unk_2D40[param1->unk_64].unk_4C < param1->unk_2D40[param1->unk_64].unk_50) && (param1->unk_2D40[param1->unk_64].unk_4C)) {
                    param1->unk_215C = ov16_022563F8(param1->unk_2D4[param1->unk_64].unk_18 * -1, v4);
                    param1->unk_118 = param1->unk_64;
                    ov16_02251E1C(param1, 1, (0 + 213));
                    param1->unk_0C = param1->unk_08;
                    param1->unk_08 = 21;
                    v0 = 1;
                }
            }

            param1->unk_30++;
            break;
        case 2:
            if ((v3 == 98) && (ov16_02255A4C(param1, param1->unk_64) != 98) && ((param1->unk_2140 & 0x10) == 0) && (param1->unk_213C & 0x2000) && (param1->unk_354.unk_8A[param1->unk_3044].unk_02 != 2) && (param1->unk_2D40[param1->unk_64].unk_4C)) {
                param1->unk_215C = ov16_022563F8(param1->unk_2D40[param1->unk_64].unk_50 * -1, 10);
                param1->unk_118 = param1->unk_64;
                ov16_02251E1C(param1, 1, (0 + 214));
                param1->unk_0C = param1->unk_08;
                param1->unk_08 = 21;
                v0 = 1;
            }

            param1->unk_30++;
            break;
        case 3:
            param1->unk_30 = 0;
            param1->unk_34 = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    return v0 == 1;
}

static void ov16_02251604 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u32 v2 = ov16_0223DF0C(param0);
    u16 v3;

    MI_CpuClear32(&param1->unk_354, sizeof(UnkStruct_ov14_0221FC20));

    if ((v2 & 0x1) && ((v2 & (0x4 | 0x80 | 0x20 | 0x40 | 0x200)) == 0)) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 & 1) {
                for (v0 = 0; v0 < 4; v0++) {
                    v3 = ov16_0223F700(param0, v1, v0);

                    if (v3 != 0) {
                        param1->unk_354.unk_48[v1 >> 1][param1->unk_354.unk_79[v1 >> 1]] = v3;
                        param1->unk_354.unk_79[v1 >> 1]++;
                    }
                }
            }
        }
    }

    param1->unk_2134 = Unk_ov14_022248A4;
}

static void ov16_02251694 (UnkStruct_0207ADB4 * param0, UnkStruct_ov16_0224B9DC * param1)
{
    int v0;
    int v1;
    u8 v2;

    v1 = ov16_0223DF1C(param0);

    for (v0 = 0; v0 < v1; v0++) {
        if (param1->unk_21A8[v0][0] != 39) {
            if (param1->unk_314C[v0] & 0x1) {
                v2 = (param1->unk_21A8[v0][0] - 13) + 1;
                ov16_0223F500(param0, v0, v2);
            }

            switch (param1->unk_21A8[v0][0]) {
            case 13:
                if (param1->unk_314C[v0] & 0x2) {
                    v2 = param1->unk_21A8[v0][2];
                    ov16_0223F500(param0, v0, v2);
                }

                if (param1->unk_314C[v0] & 0x4) {
                    v2 = param1->unk_21A8[v0][1] + 1;
                    ov16_0223F500(param0, v0, v2);
                }
                break;
            case 14:
                v2 = param1->unk_21A8[v0][2] & 0xff;
                ov16_0223F500(param0, v0, v2);
                v2 = (param1->unk_21A8[v0][2] & 0xff00) >> 16;
                ov16_0223F500(param0, v0, v2);
                break;
            case 15:
                v2 = param1->unk_21A8[v0][2] + 1;
                ov16_0223F500(param0, v0, v2);
                break;
            case 16:
                ov16_0223F500(param0, v0, 1);
                break;
            default:
                break;
            }
        }
    }
}
