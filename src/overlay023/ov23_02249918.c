#include <nitro.h>
#include <string.h>
#include <nnsys/g3d/glbstate.h>

#include "communication_system.h"
#include "overlay023/ov23_02249918.h"

typedef struct UnkStruct_ov23_02249978_t {
    int unk_00;
    int unk_04;
    u16 unk_08;
    u8 unk_0A;
} UnkStruct_ov23_02249978;

typedef struct UnkStruct_ov23_0224991C_t {
    MATHRandContext32 unk_00;
    UnkStruct_ov23_02249978 unk_18[8];
} UnkStruct_ov23_0224991C;

static void ov23_02249978(UnkStruct_ov23_02249978 * param0, int param1);

static int Unk_ov23_02257580[] = {
    0x0,
    -1,
    -1,
    -1,
    -1,
    -1,
    -1
};

static int Unk_ov23_0225759C[] = {
    0x0,
    0x10,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0
};

int ov23_02249918 (void)
{
    return sizeof(UnkStruct_ov23_0224991C);
}

void ov23_0224991C (UnkStruct_ov23_0224991C * param0)
{
    int v0;

    CommSys_Seed(&param0->unk_00);

    for (v0 = 0; v0 < (7 + 1); v0++) {
        UnkStruct_ov23_02249978 * v1 = &param0->unk_18[v0];

        v1->unk_0A = 0;
        v1->unk_04 = 0;
    }
}

void ov23_02249938 (UnkStruct_ov23_0224991C * param0)
{
    return;
}

UnkStruct_ov23_02249978 * ov23_0224993C (UnkStruct_ov23_0224991C * param0, int param1)
{
    GF_ASSERT(param1 < (7 + 1));
    return &param0->unk_18[param1];
}

void ov23_02249954 (UnkStruct_ov23_0224991C * param0)
{
    int v0;

    for (v0 = 0; v0 < (7 + 1); v0++) {
        UnkStruct_ov23_02249978 * v1 = &param0->unk_18[v0];

        if (v1->unk_04 > 0) {
            v1->unk_04--;
        }

        if (v1->unk_04 == 0) {
            v1->unk_0A = 0;
        }
    }
}

static void ov23_02249978 (UnkStruct_ov23_02249978 * param0, int param1)
{
    param0->unk_0A = param1;
    param0->unk_04 = Unk_ov23_02257580[param1];
    param0->unk_00 = Unk_ov23_0225759C[param1];
}

void ov23_02249994 (UnkStruct_ov23_02249978 * param0, int param1)
{
    ov23_02249978(param0, param1);
}

BOOL ov23_0224999C (UnkStruct_ov23_02249978 * param0)
{
    if (0 == param0->unk_0A) {
        return 1;
    }

    return 0;
}

BOOL ov23_022499AC (UnkStruct_ov23_02249978 * param0)
{
    if (2 == param0->unk_0A) {
        return 0;
    } else if (5 == param0->unk_0A) {
        return 0;
    } else if (3 == param0->unk_0A) {
        return 1;
    } else if (1 == param0->unk_0A) {
        return 1;
    } else if (4 == param0->unk_0A) {
        return 1;
    } else if (0 == param0->unk_0A) {
        return 1;
    }

    return 0;
}
