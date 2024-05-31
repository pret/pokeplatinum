#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_02095EAC_sub1.h"
#include "struct_defs/struct_02095EAC_t.h"
#include "struct_defs/struct_02095FE4.h"
#include "overlay058/struct_ov58_021D2820.h"

#include "unk_02018340.h"
#include "unk_02030EE0.h"
#include "unk_02032798.h"
#include "communication_system.h"
#include "unk_020366A0.h"
#include "unk_02095E98.h"
#include "unk_02099500.h"
#include "overlay058/ov58_021D0D80.h"

typedef struct UnkStruct_02095EAC_t UnkStruct_02095EAC;

static u8 * sub_020961D0(int param0, void * param1, int param2);
static int sub_020961E0(void);
static int sub_020961E4(void);
static void sub_0209617C(UnkStruct_02095EAC * param0, int param1);
static void sub_02096170(int param0, int param1, void * param2, void * param3);

static const CommCmdTable Unk_020F5A40[] = {
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, sub_020961E0, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02095EAC, sub_02099538, sub_020961D0},
    {sub_02095F40, sub_02099540},
    {sub_02095F68, sub_02099544},
    {sub_0209610C, CommPacketSizeOf_NetId},
    {sub_02096110, CommPacketSizeOf_NetId},
    {sub_020960D8, CommPacketSizeOf_NetId},
    {sub_02095F9C, sub_0203294C},
    {sub_020960D4, sub_0203294C},
    {sub_02095FE4, sub_020961E4},
    {sub_02096114, sub_0203294C},
    {sub_0209612C, sub_0203294C},
    {sub_02096170, sub_0203294C},
    {sub_02099510, CommPacketSizeOf_NetId, NULL},
    {sub_02099510, CommPacketSizeOf_NetId, NULL}
};

void sub_02095E98 (void * param0)
{
    int v0 = sizeof(Unk_020F5A40) / sizeof(CommCmdTable);
    CommCmd_Init(Unk_020F5A40, v0, param0);
}

void sub_02095EAC (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;

    if (CommSys_CurNetId() != 0) {
        UnkStruct_02095EAC_sub1 * v1 = (UnkStruct_02095EAC_sub1 *)param2;

        if (v1->unk_3EC * 1000 > 30 * 15 * 32) {
            MI_CpuCopyFast(v1->unk_00, &v0->unk_4434[v1->unk_3EC * 1000], (30 * 15 * 32) % 1000);
        } else {
            MI_CpuCopyFast(v1->unk_00, &v0->unk_4434[v1->unk_3EC * 1000], 1000);
        }

        MI_CpuCopyFast(v0->unk_4434, v0->unk_32C.unk_0C, 30 * 15 * 32);
        sub_0201A954(&v0->unk_32C);
    } else {
        UnkStruct_02095EAC_sub1 * v2 = (UnkStruct_02095EAC_sub1 *)param2;

        if (v0->unk_4430 * 1000 < 30 * 15 * 32) {
            v0->unk_4430++;
            sub_0209617C(v0, v0->unk_4430);
        } else {
            CommSys_SendDataServer(124, NULL, 0);
        }
    }
}

void sub_02095F40 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    UnkStruct_ov58_021D2820 * v1 = (UnkStruct_ov58_021D2820 *)param2;

    if (param0 != 0) {
        v0->unk_9421[param0] = *v1;
    }
}

void sub_02095F68 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    UnkStruct_ov58_021D2820 * v1 = (UnkStruct_ov58_021D2820 *)param2;

    if (v0 == NULL) {
        return;
    }

    if (param0 == 0) {
        int v2;

        for (v2 = 0; v2 < 5; v2++) {
            v0->unk_43E6[v2] = v1[v2];
        }
    }

    if (v0->unk_43E6[0].unk_09 == 2) {
        (void)0;
    }
}

void sub_02095F9C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;

    ov58_021D2434(v0, 3, 0);
    MI_CpuClearFast(v0->unk_4434, 30 * 15 * 32);

    if (CommSys_CurNetId() == 0) {
        v0->unk_37C = CommSys_ConnectedCount();
        v0->unk_380 = sub_020318EC();
        v0->unk_9458 = 1;
    }
}

void sub_02095FE4 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    UnkStruct_02095FE4 v1;
    UnkStruct_02095FE4 * v2;

    v2 = param2;

    if (param0 != 0) {
        if (CommSys_CurNetId() == 0) {
            v1 = *v2;
            v1.unk_00 = param0;
            v1.unk_01 = v0->unk_37C;

            switch (v2->unk_02) {
            case 0:
                if ((v0->unk_37C != CommSys_ConnectedCount()) || (v0->unk_37C != ov58_021D2A4C()) || (v0->unk_37C != MATH_CountPopulation(sub_020318EC()))) {
                    v1.unk_03 = 0;
                } else {
                    v0->unk_9418 |= 1 << param0;
                    v1.unk_03 = 1;
                    sub_02037B58(CommSys_ConnectedCount());
                }
                break;
            case 1:
                break;
            }

            CommSys_SendDataServer(126, &v1, sizeof(UnkStruct_02095FE4));
        }
    } else {
        switch (v2->unk_02) {
        case 0:
            if (v2->unk_00 == CommSys_CurNetId()) {
                if (v2->unk_03 == 0) {
                    ov58_021D2434(v0, 9, v2->unk_00);
                } else {
                    v0->unk_941C = v2->unk_01;
                    ov58_021D2434(v0, 8, v2->unk_00);
                }
            }
            break;
        case 1:
            ov58_021D2434(v0, 21, v2->unk_00);
            break;
        }
    }
}

void sub_020960D4 (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_020960D8 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    u8 v1;

    v1 = *(u8 *)param2;

    ov58_021D2434(v0, 1, v1);

    if ((CommSys_CurNetId() == 0) && (v0->unk_364 == 1)) {
        v0->unk_4430 = 0;
        sub_0209617C(v0, v0->unk_4430);
    }
}

void sub_0209610C (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_02096110 (int param0, int param1, void * param2, void * param3)
{
    return;
}

void sub_02096114 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;

    if (CommSys_CurNetId() != 0) {
        ov58_021D2434(v0, 15, 0);
    }
}

void sub_0209612C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    u8 v1;

    GF_ASSERT(CommSys_CurNetId() == 0);

    if (CommSys_CurNetId() == 0) {
        if (v0->unk_9460 != 0) {
            v1 = param0;
            CommSys_SendDataServer(123, &v1, 1);
        } else {
            v0->unk_9460 = 1;
        }
    }

    CommMan_SetErrorHandling(0, 1);
}

static void sub_02096170 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param3;
    v0->unk_9458 = 1;
}

static void sub_0209617C (UnkStruct_02095EAC * param0, int param1)
{
    u8 * v0 = (u8 *)param0->unk_32C.unk_0C;

    MI_CpuCopyFast(&v0[param1 * 1000], param0->unk_7C74.unk_00, 1000);

    {
        int v1;
        u32 * v2, v3;

        v2 = (u32 *)param0->unk_7C74.unk_00;

        for (v3 = 0, v1 = 0; v1 < 1000 / 4; v1++) {
            v3 ^= v2[v1];
        }

        param0->unk_7C74.unk_3E8 = v3;
    }

    param0->unk_7C74.unk_3EC = param1;

    sub_02035A3C(118, &param0->unk_7C74, sizeof(UnkStruct_02095EAC_sub1));
}

static u8 * sub_020961D0 (int param0, void * param1, int param2)
{
    UnkStruct_02095EAC * v0 = (UnkStruct_02095EAC *)param1;
    return (u8 *)&v0->unk_8064[param0];
}

static int sub_020961E0 (void)
{
    return 4;
}

static int sub_020961E4 (void)
{
    return sizeof(UnkStruct_02095FE4);
}
