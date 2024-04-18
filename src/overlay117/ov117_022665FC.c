#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02039A58.h"
#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_022621D4.h"

#include "unk_02032798.h"
#include "communication_system.h"
#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_022665FC.h"

static void ov117_02266618(int param0, int param1, void * param2, void * param3);
static void ov117_0226663C(int param0, int param1, void * param2, void * param3);
static void ov117_02266660(int param0, int param1, void * param2, void * param3);
static int ov117_02266610(void);
static int ov117_02266614(void);

static const UnkStruct_02039A58 Unk_ov117_02266FE4[] = {
    {NULL, sub_0203294C, NULL},
    {ov117_02266660, ov117_02266614, NULL},
    {ov117_02266618, ov117_02266610, NULL},
    {ov117_0226663C, sub_0203294C, NULL}
};

void ov117_022665FC (void * param0)
{
    int v0 = sizeof(Unk_ov117_02266FE4) / sizeof(UnkStruct_02039A58);

    CommCmd_Init(Unk_ov117_02266FE4, v0, param0);
    GF_ASSERT(sizeof(UnkStruct_ov117_022621D4) < 256);
}

static int ov117_02266610 (void)
{
    return sizeof(UnkStruct_ov117_022621D4);
}

static int ov117_02266614 (void)
{
    return sizeof(u32);
}

static void ov117_02266618 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov117_02261280 * v0 = param3;
    ov117_02262044(v0, param0, param2);
}

BOOL ov117_02266624 (UnkStruct_ov117_02261280 * param0, UnkStruct_ov117_022621D4 * param1)
{
    if (CommSys_SendData(24, param1, sizeof(UnkStruct_ov117_022621D4)) == 1) {
        return 1;
    }

    return 0;
}

static void ov117_0226663C (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov117_02261280 * v0 = param3;
    v0->unk_2FC0 = 1;
}

BOOL ov117_02266648 (UnkStruct_ov117_02261280 * param0)
{
    if (CommSys_SendData(25, NULL, 0) == 1) {
        return 1;
    }

    return 0;
}

static void ov117_02266660 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_ov117_02261280 * v0 = param3;
    u32 * v1 = param2;
    u32 v2;
    int v3;

    v2 = v1[0];

    for (v3 = 0; v3 < v0->unk_00->unk_30; v3++) {
        if (v0->unk_00->unk_2C[v3] == param0) {
            v0->unk_0C[v3] = v2;
            break;
        }
    }

    GF_ASSERT(v3 < v0->unk_00->unk_30);
    v0->unk_08++;
}

BOOL ov117_022666A4 (UnkStruct_ov117_02261280 * param0)
{
    u32 v0 = 100;

    if (CommSys_SendData(23, &v0, sizeof(u32)) == 1) {
        return 1;
    }

    return 0;
}
