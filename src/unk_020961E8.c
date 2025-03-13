#include "unk_020961E8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "struct_defs/struct_020961E8_t.h"
#include "struct_defs/struct_02096274.h"

#include "overlay059/ov59_021D0D80.h"
#include "overlay059/struct_ov59_021D30E0.h"

#include "communication_system.h"
#include "math.h"
#include "unk_02005474.h"
#include "unk_02030EE0.h"
#include "unk_02032798.h"
#include "unk_020366A0.h"
#include "unk_02099500.h"

typedef struct UnkStruct_020961E8_t UnkStruct_020961E8;

static int sub_02096400(void);
static int sub_02096404(void);
static u8 *sub_0209640C(int param0, void *param1, int param2);
static int sub_02096408(void);
static void sub_020963C0(UnkStruct_020961E8 *param0, int param1);
void sub_020961FC(int param0, int param1, void *param2, void *param3);
void sub_0209620C(int param0, int param1, void *param2, void *param3);

static const CommCmdTable Unk_020F5F68[] = {
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02096380, sub_02096404 },
    { sub_02096384, sub_02096404 },
    { sub_02096360, sub_02096404 },
    { sub_02096264, sub_02096400 },
    { sub_02096274, sub_02096408 },
    { sub_02096388, sub_02096400 },
    { sub_020963A0, sub_02096400 },
    { sub_0209621C, sub_02096400 },
    { sub_020961FC, sub_02099530, sub_0209640C },
    { sub_0209620C, sub_02096404 },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL },
    { sub_02099510, sub_02096400, NULL }
};

void sub_020961E8(void *param0)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param0;
    int v1;
    int v2 = sizeof(Unk_020F5F68) / sizeof(CommCmdTable);

    CommCmd_Init(Unk_020F5F68, v2, param0);

    for (v1 = 0; v1 < 5; v1++) {
        (void)0;
    }
}

void sub_020961FC(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;
    v0->unk_4A98++;
}

void sub_0209620C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;
    u8 *v1 = (u8 *)param2;

    if (param0 == 0) {
        if (v0->unk_4AA0 != *v1) {
            (void)0;
        }

        v0->unk_4AA0 = *v1;
    }
}

void sub_0209621C(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;

    v0->unk_4A98 = 0;
    v0->unk_4AA4 = 1;

    sub_020963C0(v0, CommSys_CurNetId());

    ov59_021D1D40(v0);
    ov59_021D2204(v0, 25, param0);

    CommMan_SetErrorHandling(1, 1);
    Sound_PlayEffect(SEQ_SE_DP_F209);
}

void sub_02096264(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;
    ov59_021D2204(v0, 2, 0);
}

void sub_02096274(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;
    UnkStruct_02096274 v1;
    UnkStruct_02096274 *v2 = param2;

    if (param0 != 0) {
        if (CommSys_CurNetId() == 0) {
            v1 = *v2;
            v1.unk_00 = param0;
            v1.unk_01 = v0->unk_4AAC;

            switch (v2->unk_02) {
            case 0:
                if ((v0->unk_4AAC != CommSys_ConnectedCount()) || (v0->unk_4AAC != ov59_021D2544()) || (v0->unk_4AAC != MATH_CountPopulation(sub_020318EC()))) {
                    v1.unk_03 = 0;
                } else {
                    v0->unk_4AB4 |= 1 << param0;
                    v1.unk_03 = 1;

                    sub_02037B58(CommSys_ConnectedCount());
                }
                break;
            case 1:
                break;
            }

            CommSys_SendData(112, &v1, sizeof(UnkStruct_02096274));
        }
    } else {
        switch (v2->unk_02) {
        case 0:
            if (v2->unk_00 == CommSys_CurNetId()) {
                if (v2->unk_03 == 0) {
                    ov59_021D2204(v0, 8, v2->unk_00);
                } else {
                    v0->unk_4AC0 = v2->unk_01;
                    ov59_021D2204(v0, 7, v2->unk_00);
                }
            }
            break;
        case 1:
            ov59_021D2204(v0, 19, v2->unk_00);
            break;
        }
    }
}

void sub_02096360(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;
    u8 v1 = *(u8 *)param2;

    ov59_021D22EC(v0, 1, v1);

    if (CommSys_CurNetId() == 0) {
        v0->unk_414 = 0;
    }
}

void sub_02096380(int param0, int param1, void *param2, void *param3)
{
    return;
}

void sub_02096384(int param0, int param1, void *param2, void *param3)
{
    return;
}

void sub_02096388(int param0, int param1, void *param2, void *param3)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param3;

    if (CommSys_CurNetId() != 0) {
        ov59_021D2204(v0, 13, 0);
    }
}

void sub_020963A0(int param0, int param1, void *param2, void *param3)
{
    u8 v0;

    if (CommSys_CurNetId() == 0) {
        v0 = param0;
        CommSys_SendData(110, &v0, 1);
    }
}

static void sub_020963C0(UnkStruct_020961E8 *param0, int param1)
{
    {
        int v0;
        u32 *v1, v2;

        v1 = (u32 *)param0->unk_418.unk_00;

        for (v2 = 0, v0 = 0; v0 < 3000 / 4; v0++) {
            v2 ^= v1[v0];
        }

        param0->unk_418.unk_BB8 = v2;
    }

    param0->unk_418.unk_BBC = LCRNG_Next();
    CommSys_SendDataHuge(116, &param0->unk_418, sizeof(UnkStruct_ov59_021D30E0));
}

static int sub_02096400(void)
{
    return 0;
}

static int sub_02096404(void)
{
    return 1;
}

static int sub_02096408(void)
{
    return sizeof(UnkStruct_02096274);
}

static u8 *sub_0209640C(int param0, void *param1, int param2)
{
    UnkStruct_020961E8 *v0 = (UnkStruct_020961E8 *)param1;
    return (u8 *)&v0->unk_FD8[param0];
}
