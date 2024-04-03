#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "communication_system.h"
#include "unk_020363E8.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_02036574;

typedef struct {
    UnkStruct_02036574 unk_00[8];
    u8 unk_10[8];
    u8 unk_18[8][72];
    u8 unk_258[8];
    u8 unk_260;
    u8 unk_261;
    u8 unk_262;
} UnkStruct_021C07D0;

static UnkStruct_021C07D0 * Unk_021C07D0 = NULL;

void sub_020363E8 (int param0)
{
    int v0;

    if (!Unk_021C07D0) {
        Unk_021C07D0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_021C07D0));
        MI_CpuFill8(Unk_021C07D0, 0, sizeof(UnkStruct_021C07D0));
    }

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C07D0->unk_10[v0] = 0xff;
    }

    Unk_021C07D0->unk_260 = 0xff;
    Unk_021C07D0->unk_261 = 0xff;
    Unk_021C07D0->unk_262 = 0;
}

void sub_02036438 (void)
{
    Heap_FreeToHeap(Unk_021C07D0);
    Unk_021C07D0 = NULL;
}

BOOL sub_02036450 (void)
{
    if (Unk_021C07D0) {
        return 1;
    }

    return 0;
}

void sub_02036464 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    u8 v1 = v0[0];
    u8 v2[2];
    int v3;

    if (CommSys_CurNetId() == 0) {
        v2[0] = param0;
        v2[1] = v1;
        sub_02035B48(18, &v2);

        Unk_021C07D0->unk_10[param0] = v1;

        for (v3 = 0; v3 < (7 + 1); v3++) {
            if (CommSys_IsPlayerConnected(v3)) {
                if (v1 != Unk_021C07D0->unk_10[v3]) {
                    return;
                }
            }
        }

        sub_02035B48(17, &v1);
    }
}

void sub_020364C8 (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    Unk_021C07D0->unk_10[v0[0]] = v0[1];
}

void sub_020364DC (int param0, int param1, void * param2, void * param3)
{
    u8 * v0 = param2;
    u8 v1 = v0[0];

    Unk_021C07D0->unk_260 = v1;
}

void sub_020364F0 (u8 param0)
{
    Unk_021C07D0->unk_261 = param0;
    Unk_021C07D0->unk_262 = 1;
}

void sub_0203650C (void)
{
    if (Unk_021C07D0) {
        if (Unk_021C07D0->unk_262) {
            if (sub_020360D0(16, &Unk_021C07D0->unk_261)) {
                Unk_021C07D0->unk_262 = 0;
            }
        }
    }
}

BOOL sub_02036540 (u8 param0)
{
    if (Unk_021C07D0 == NULL) {
        return 1;
    }

    if (Unk_021C07D0->unk_260 == param0) {
        return 1;
    }

    return 0;
}

int sub_02036564 (int param0)
{
    return Unk_021C07D0->unk_10[param0];
}

void sub_02036574 (int param0, int param1, void * param2, void * param3)
{
    UnkStruct_02036574 * v0 = param2;

    Unk_021C07D0->unk_00[param0].unk_00 = v0->unk_00;
    Unk_021C07D0->unk_00[param0].unk_01 = v0->unk_01;
}

int sub_02036590 (void)
{
    return sizeof(UnkStruct_02036574);
}

void sub_02036594 (u8 param0, u8 param1)
{
    UnkStruct_02036574 v0;

    v0.unk_00 = param0;
    v0.unk_01 = param1;

    sub_020360D0(19, &v0);
}

int sub_020365A8 (int param0, u8 param1)
{
    if (!Unk_021C07D0) {
        return -1;
    }

    if (Unk_021C07D0->unk_00[param0].unk_00 == param1) {
        return Unk_021C07D0->unk_00[param0].unk_01;
    }

    return -1;
}

void sub_020365D0 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        MI_CpuFill8(&Unk_021C07D0->unk_00[v0], 0, sizeof(UnkStruct_02036574));
    }
}

void sub_020365F4 (void)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        Unk_021C07D0->unk_258[v0] = 0;
    }
}

BOOL sub_02036614 (int param0, const void * param1)
{
    if (Unk_021C07D0) {
        MI_CpuCopy8(param1, Unk_021C07D0->unk_18[param0], 70);
        sub_020360D0(20, Unk_021C07D0->unk_18[param0]);
        return 1;
    }

    return 0;
}

const void * sub_0203664C (int param0)
{
    if (Unk_021C07D0->unk_258[param0]) {
        return &Unk_021C07D0->unk_18[param0];
    }

    return NULL;
}

void sub_02036670 (int param0, int param1, void * param2, void * param3)
{
    Unk_021C07D0->unk_258[param0] = 1;
    MI_CpuCopy8(param2, Unk_021C07D0->unk_18[param0], 70);
}

int sub_0203669C (void)
{
    return 70;
}
