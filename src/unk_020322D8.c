#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020322D8.h"
#include "struct_defs/struct_020322F8.h"
#include "struct_defs/struct_02032318.h"
#include "struct_defs/struct_0203233C.h"

#include "heap.h"
#include "comm_ring.h"
#include "unk_020322D8.h"
#include "unk_02032798.h"

static UnkStruct_020322D8 * sub_020322D8 (UnkStruct_020322F8 * param0)
{
    UnkStruct_020322D8 * v0 = param0->unk_18;
    int v1;

    for (v1 = 0; v1 < param0->unk_1C; v1++) {
        if (v0->unk_0E == 0) {
            return v0;
        }

        v0++;
    }

    return NULL;
}

BOOL sub_020322F8 (UnkStruct_020322F8 * param0)
{
    UnkStruct_020322D8 * v0 = param0->unk_18;
    int v1;

    for (v1 = 0; v1 < param0->unk_1C; v1++) {
        if (v0->unk_0E != 0) {
            return 0;
        }

        v0++;
    }

    return 1;
}

static BOOL sub_02032318 (UnkStruct_02032318 * param0)
{
    if (param0->unk_00 != NULL) {
        if (param0->unk_00->unk_08 != NULL) {
            param0->unk_00 = param0->unk_00->unk_08;
            param0->unk_00->unk_04 = NULL;
        } else {
            param0->unk_00 = NULL;
            param0->unk_04 = NULL;
        }

        return 1;
    }

    return 0;
}

static BOOL sub_0203233C (UnkStruct_0203233C * param0, u8 param1)
{
    *param0->unk_00 = param1;
    param0->unk_00++;
    param0->unk_04--;

    if (param0->unk_04 == 0) {
        return 1;
    }

    return 0;
}

static BOOL sub_02032358 (UnkStruct_020322D8 * param0, UnkStruct_0203233C * param1)
{
    int v0 = CommCmd_PacketSizeOf(param0->unk_0E);

    if (v0 == 0xffff) {
        if (param1->unk_04 < 3) {
            param0->unk_0F_0 = 0;
            return 1;
        }
    } else {
        if (param1->unk_04 < 1) {
            param0->unk_0F_0 = 0;
            return 1;
        }
    }

    sub_0203233C(param1, param0->unk_0E);

    if (v0 == 0xffff) {
        sub_0203233C(param1, (param0->unk_0C >> 8) & 0xff);
        sub_0203233C(param1, param0->unk_0C & 0xff);
    } else {
        param0->unk_0C = v0;
    }

    param0->unk_0F_0 = 1;
    return 0;
}

static BOOL sub_020323D0 (UnkStruct_020322D8 * param0, UnkStruct_0203233C * param1, CommRing * param2, BOOL param3)
{
    int v0;
    int v1;
    int v2 = CommCmd_PacketSizeOf(param0->unk_0E);

    if (v2 == 0xffff) {
        v1 = 3;
    } else {
        v1 = 1;
    }

    if ((param1->unk_04 < (param0->unk_0C + v1)) && (!param3)) {
        return 0;
    }

    if (param0->unk_0F_0 != 1) {
        if (sub_02032358(param0, param1)) {
            return 0;
        }
    }

    if (param1->unk_04 < param0->unk_0C) {
        if (param0->unk_0F_1) {
            sub_020321F4(param2, param1->unk_00, param1->unk_04);
        } else {
            for (v0 = 0; v0 < param1->unk_04; v0++) {
                param1->unk_00[v0] = param0->unk_00[v0];
            }
        }

        param0->unk_00 += param1->unk_04;
        param0->unk_0C -= param1->unk_04;
        param1->unk_04 = -1;

        return 1;
    }

    if (param0->unk_0F_1) {
        sub_020321F4(param2, param1->unk_00, param0->unk_0C);
    } else {
        MI_CpuCopy8(param0->unk_00, param1->unk_00, param0->unk_0C);
    }

    param1->unk_00 += param0->unk_0C;
    param1->unk_04 -= param0->unk_0C;

    return 1;
}

BOOL sub_02032498 (UnkStruct_020322F8 * param0, int cmd, u8 * param2, int param3, BOOL param4, BOOL param5)
{
    UnkStruct_020322D8 * v0;
    UnkStruct_020322D8 * v1 = sub_020322D8(param0);
    UnkStruct_02032318 * v2;
    int v3;

    param4 = 1;

    if (v1 == NULL) {
        return 0;
    }

    GF_ASSERT(param3 < 65534);
    v3 = CommCmd_PacketSizeOf(cmd);

    if (0xffff == v3) {
        v3 = param3;
    }

    if (param5) {
        int v4 = sub_0203228C(param0->unk_14);

        if ((v3 + 3) >= v4) {
            return 0;
        }

        sub_02032198(param0->unk_14, param2, v3, 265);
        sub_020322D0(param0->unk_14);

        v1->unk_0F_1 = 1;
    }

    v1->unk_0C = v3;
    v1->unk_0E = cmd;
    v1->unk_00 = param2;

    if (param4 == 1) {
        v2 = &param0->unk_00;
    } else {
        v2 = &param0->unk_08;
    }

    if (v2->unk_04 == NULL) {
        v2->unk_04 = v1;
        v2->unk_00 = v1;
    } else {
        v2->unk_04->unk_08 = v1;
        v1->unk_04 = v2->unk_04;
        v2->unk_04 = v1;
    }

    return 1;
}

static UnkStruct_020322D8 * sub_02032530 (UnkStruct_020322F8 * param0)
{
    UnkStruct_02032318 * v0;

    if (param0->unk_10 != NULL) {
        return param0->unk_10;
    }

    if (param0->unk_00.unk_00 != NULL) {
        return param0->unk_00.unk_00;
    }

    if (param0->unk_08.unk_00 != NULL) {
        return param0->unk_08.unk_00;
    }

    return NULL;
}

static void sub_02032550 (UnkStruct_020322F8 * param0)
{
    UnkStruct_02032318 * v0;

    if (param0->unk_10 != NULL) {
        param0->unk_10 = NULL;
    } else {
        if (!sub_02032318(&param0->unk_00)) {
            sub_02032318(&param0->unk_08);
        }
    }
}

BOOL sub_02032574 (UnkStruct_020322F8 * param0, UnkStruct_0203233C * param1, BOOL param2)
{
    int v0;
    int v1;
    int v2 = 1;

    while (param1->unk_04 > 0) {
        UnkStruct_020322D8 * v3 = sub_02032530(param0);

        if (NULL == v3) {
            break;
        }

        sub_02032550(param0);

        if (!sub_020323D0(v3, param1, param0->unk_14, v2)) {
            param0->unk_10 = v3;
            break;
        }

        if (-1 == param1->unk_04) {
            param0->unk_10 = v3;
            return 0;
        } else {
            MI_CpuFill8(v3, 0, sizeof(UnkStruct_020322D8));
        }

        v2 = param2;
    }

    for (v1 = 0; v1 < param1->unk_04; v1++) {
        *param1->unk_00 = 0xee;
        param1->unk_00++;
    }

    return 1;
}

void sub_020325EC (UnkStruct_020322F8 * param0, int param1, CommRing * param2)
{
    MI_CpuFill8(param0, 0, sizeof(UnkStruct_020322F8));
    param0->unk_18 = Heap_AllocFromHeap(15, sizeof(UnkStruct_020322D8) * param1);

    MI_CpuFill8(param0->unk_18, 0, sizeof(UnkStruct_020322D8) * param1);
    param0->unk_1C = param1;
    param0->unk_14 = param2;
}

void CommQueueMan_Reset (UnkStruct_020322F8 * param0)
{
    MI_CpuFill8(param0->unk_18, 0, sizeof(UnkStruct_020322D8) * param0->unk_1C);

    param0->unk_00.unk_00 = NULL;
    param0->unk_00.unk_04 = NULL;
    param0->unk_08.unk_00 = NULL;
    param0->unk_08.unk_04 = NULL;
    param0->unk_10 = NULL;
}

void sub_02032638 (UnkStruct_020322F8 * param0)
{
    Heap_FreeToHeap(param0->unk_18);
}

BOOL sub_02032644 (UnkStruct_020322F8 * param0, int param1)
{
    int v0;
    UnkStruct_020322D8 * v1 = param0->unk_18;

    for (v0 = 0; v0 < param0->unk_1C; v0++) {
        if (v1->unk_0E == param1) {
            return 1;
        }

        v1++;
    }

    return 0;
}
