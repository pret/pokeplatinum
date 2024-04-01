#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_0209BDF8.h"
#include "struct_defs/struct_0209BF64.h"
#include "struct_defs/struct_0209C0F0.h"
#include "struct_defs/struct_0209C194.h"
#include "functypes/funcptr_020F8E60.h"
#include "overlay109/struct_ov109_021D1048.h"
#include "overlay109/struct_ov109_021D17EC.h"

#include "heap.h"
#include "unk_02030EE0.h"
#include "unk_02032798.h"
#include "communication_information.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "unk_0205B33C.h"
#include "unk_0205C22C.h"
#include "unk_02099500.h"
#include "unk_0209BDF8.h"
#include "overlay109/ov109_021D0D80.h"
#include "overlay109/ov109_021D3D50.h"

typedef struct {
    u32 unk_00;
    u8 unk_04[20];
} UnkStruct_0209BE84;

static BOOL sub_0209BE84(UnkStruct_0209BDF8 * param0, u32 param1, const void * param2, u32 param3);

static const UnkStruct_02039A58 Unk_020F8EA8[135];
static const UnkFuncPtr_020F8E60 Unk_020F8E60[18];

UnkStruct_0209BDF8 * sub_0209BDF8 (UnkStruct_0209C194 * param0, u32 param1)
{
    UnkStruct_0209BDF8 * v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_0209BDF8));
    GF_ASSERT(v0 != NULL);
    memset(v0, 0, sizeof(UnkStruct_0209BDF8));

    v0->unk_00 = param0;
    v0->unk_4C = Heap_AllocFromHeap(param1, 5 * (236 * 6 + 4 * 2));
    v0->unk_50 = Heap_AllocFromHeap(param1, 5 * (236 * 6 + 4 * 2));

    return v0;
}

void sub_0209BE38 (UnkStruct_0209BDF8 * param0)
{
    Heap_FreeToHeap(param0->unk_4C);
    Heap_FreeToHeap(param0->unk_50);
    Heap_FreeToHeap(param0);
}

void sub_0209BE50 (UnkStruct_0209BDF8 * param0)
{
    sub_02032798(Unk_020F8EA8, 135, param0);
}

void sub_0209BE64 (UnkStruct_0209BDF8 * param0)
{
    sub_02037B58(2);
    sub_02036AC4();
    sub_0205C2C8(param0->unk_00->unk_14.unk_0C);
    sub_0205BEA8(0);
}

static BOOL sub_0209BE84 (UnkStruct_0209BDF8 * param0, u32 param1, const void * param2, u32 param3)
{
    GF_ASSERT(param1 < 18);
    GF_ASSERT(param3 + 4 <= 24);

    {
        BOOL v0;
        UnkStruct_0209BE84 * v1 = (void *)param0->unk_04;

        v1->unk_00 = param1;
        memcpy(v1->unk_04, param2, param3);
        v0 = CommSys_SendData(130, v1, 24);

        return v0;
    }
}

BOOL sub_0209BEBC (UnkStruct_0209BDF8 * param0, u32 param1, const void * param2, u32 param3)
{
    if (param0->unk_1C == 1) {
        return 0;
    }

    return sub_0209BE84(param0, param1, param2, param3);
}

static void sub_0209BED0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BE84 * v0 = param2;

    if (v0->unk_00 >= 18) {
        GF_ASSERT(0);
        return;
    }

    Unk_020F8E60[v0->unk_00](param0, param1, v0->unk_04, param3);
}

static void sub_0209BEF0 (int param0, int param1, void * param2, void * param3)
{
    void * v0;
    UnkStruct_0209BDF8 * v1 = param3;

    v1->unk_46 |= 1 << param0;
    v0 = sub_0209C188(v1, param0);
    memcpy(v0, param2, (236 * 6 + 4 * 2));
}

static void sub_0209BF18 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    u8 * v1 = (u8 *)param2;

    if (param0 == 0) {
        if (v0->unk_28 != *v1) {
            (void)0;
        }

        v0->unk_28 = *v1;
    }
}

static void sub_0209BF24 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;

    v0->unk_20++;
}

static void sub_0209BF2C (int param0, int param1, void * param2, void * param3)
{
    if (CommSys_CurNetId() != 0) {
        UnkStruct_0209BDF8 * v0 = param3;

        v0->unk_20 = 0;
        v0->unk_24 = 1;

        ov109_021D5140(v0->unk_00->unk_3C, 31, param0);
    }
}

static void sub_0209BF54 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    ov109_021D5140(v0->unk_00->unk_3C, 2, 0);
}

static void sub_0209BF64 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    UnkStruct_0209BF64 v1;
    UnkStruct_0209BF64 * v2 = param2;

    if (param0 != 0) {
        if (CommSys_CurNetId() == 0) {
            v1 = *v2;
            v1.unk_00 = param0;
            v1.unk_01 = v0->unk_2C;

            switch (v2->unk_02) {
            case 0:
                if ((v0->unk_2C != sub_02035E18()) || (v0->unk_2C != sub_0209C16C()) || (v0->unk_2C != MATH_CountPopulation(sub_020318EC()))) {
                    v1.unk_03 = 0;
                } else {
                    v0->unk_30 |= 1 << param0;
                    v1.unk_03 = 1;

                    sub_02037B58(sub_02035E18());
                }
                break;
            case 1:
                break;
            }

            sub_0209BEBC(v0, 2, &v1, sizeof(UnkStruct_0209BF64));
        }
    } else {
        switch (v2->unk_02) {
        case 0:
            if (v2->unk_00 == CommSys_CurNetId()) {
                if (v2->unk_03 == 0) {
                    ov109_021D5140(
                        v0->unk_00->unk_3C, 8, v2->unk_00);
                } else {
                    v0->unk_38 = v2->unk_01;
                    ov109_021D5140(
                        v0->unk_00->unk_3C, 7, v2->unk_00);
                }
            }
            break;
        case 1:
            ov109_021D5140(v0->unk_00->unk_3C, 19, v2->unk_00);
            break;
        }
    }
}

static void sub_0209C040 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    u8 v1;

    v1 = *(u8 *)param2;
    ov109_021D5258(v0->unk_00->unk_3C, 1, v1);

    if (CommSys_CurNetId() == 0) {
        v0->unk_34 = 0;
    }
}

static void sub_0209C060 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;

    if (CommSys_CurNetId() != 0) {
        ov109_021D5140(v0->unk_00->unk_3C, 13, 0);
    }
}

static void sub_0209C07C (int param0, int param1, void * param2, void * param3)
{
    u8 v0;
    UnkStruct_0209BDF8 * v1 = param3;

    if (CommSys_CurNetId() == 0) {
        v0 = param0;
        sub_0209BEBC(v1, 0, &v0, 1);
    }
}

static void sub_0209C09C (int param0, int param1, void * param2, void * param3)
{
    u16 * v0 = param2;
    UnkStruct_0209BDF8 * v1 = param3;

    v1->unk_40 |= *v0;
}

static void sub_0209C0AC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    v0->unk_42 |= 1 << param0;
}

static void sub_0209C0C0 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    UnkStruct_ov109_021D1048 * v1 = param2;

    ov109_021D3B24(v0->unk_00->unk_38, v1);
}

static void sub_0209C0D0 (int param0, int param1, void * param2, void * param3)
{
    int v0 = *(int *)param2;
    UnkStruct_0209BDF8 * v1 = param3;

    ov109_021D3B50(v1->unk_00->unk_38, v0);
}

static void sub_0209C0E0 (int param0, int param1, void * param2, void * param3)
{
    u8 v0 = *(u8 *)param2;
    UnkStruct_0209BDF8 * v1 = param3;

    ov109_021D3A68(v1->unk_00->unk_38, v0);
}

static void sub_0209C0F0 (int param0, int param1, void * param2, void * param3)
{
    if (CommSys_CurNetId() != 0) {
        UnkStruct_0209BDF8 * v0 = param3;
        UnkStruct_0209C0F0 * v1 = param2;

        ov109_021D3A70(v0->unk_00->unk_38, v1);
    }
}

static void sub_0209C10C (int param0, int param1, void * param2, void * param3)
{
    int v0 = *(int *)param2;
    UnkStruct_0209BDF8 * v1 = param3;

    ov109_021D3BE4(v1->unk_00->unk_38, param0, v0);
}

static void sub_0209C11C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_0209BDF8 * v0 = param3;
    UnkStruct_ov109_021D17EC * v1 = param2;

    ov109_021D3BEC(v0->unk_00->unk_38, v1);
}

static void sub_0209C12C (int param0, int param1, void * param2, void * param3)
{
    u32 v0 = 1 << param0;
    UnkStruct_0209BDF8 * v1 = param3;

    v1->unk_48 |= v0;
}

static void sub_0209C140 (int param0, int param1, void * param2, void * param3)
{
    u32 v0 = 1 << param0;
    UnkStruct_0209BDF8 * v1 = param3;

    v1->unk_4A |= v0;
}

static int sub_0209C154 (void)
{
    return(24);
}

static int sub_0209C158 (void)
{
    return 236 * 6 + 4 * 2;
}

static u8 * sub_0209C160 (int param0, void * param1, int param2)
{
    u32 v0;
    UnkStruct_0209BDF8 * v1 = param1;

    v0 = (u32)(v1->unk_4C);
    v0 += param0 * (236 * 6 + 4 * 2);
    return (u8 *)v0;
}

int sub_0209C16C (void)
{
    int i, result;

    for (result = 0, i = 0; i < 5; i++) {
        if (CommInfo_TrainerInfo(i) != NULL) {
            result++;
        }
    }

    return result;
}

void * sub_0209C188 (UnkStruct_0209BDF8 * param0, int param1)
{
    u32 v0;

    v0 = (u32)(param0->unk_50);
    v0 += param1 * (236 * 6 + 4 * 2);

    return (void *)v0;
}

static const UnkStruct_02039A58 Unk_020F8EA8[135] = {
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_02099510, sub_0203294C, NULL},
    {sub_0209BED0, sub_0209C154, NULL},
    {sub_0209BEF0, sub_0209C158, sub_0209C160}
};

static const UnkFuncPtr_020F8E60 Unk_020F8E60[18] = {
    sub_0209C040,
    sub_0209BF54,
    sub_0209BF64,
    sub_0209C060,
    sub_0209C07C,
    sub_0209BF2C,
    sub_0209BF24,
    sub_0209BF18,
    sub_0209C09C,
    sub_0209C0AC,
    sub_0209C0E0,
    sub_0209C0F0,
    sub_0209C0C0,
    sub_0209C0D0,
    sub_0209C10C,
    sub_0209C11C,
    sub_0209C12C,
    sub_0209C140
};
