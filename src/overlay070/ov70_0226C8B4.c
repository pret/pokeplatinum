#include <nitro.h>
#include <string.h>

#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay070/struct_ov70_02261E10_decl.h"

#include "unk_02005474.h"
#include "heap.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay070/ov70_02261E10.h"
#include "overlay070/ov70_0226C8B4.h"

typedef struct {
    u32 unk_00;
    fx32 unk_04;
} UnkStruct_ov70_0226E6FC;

typedef union {
    struct {
        u32 unk_00;
    } val1;
    struct {
        u32 unk_00;
    } val2;
    struct {
        u32 unk_00;
    } val3;
} UnkStruct_ov70_0226C914_sub1;

typedef struct {
    const u8 * unk_00;
    u32 unk_04;
} UnkStruct_ov70_0226CBB4;

typedef struct UnkStruct_ov70_0226C914_t {
    const UnkStruct_ov66_0222DFF8 * unk_00;
    UnkStruct_ov70_02261E10 * unk_04;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A;
    UnkStruct_ov70_0226C914_sub1 unk_0C;
} UnkStruct_ov70_0226C914;

static void ov70_0226C984(UnkStruct_ov70_0226C914 * param0, u32 param1, u32 param2);
static void ov70_0226C9AC(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226C9B0(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226C9B4(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CA38(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CAD4(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CB1C(UnkStruct_ov70_0226C914 * param0, u32 param1, u32 param2);
static void ov70_0226CB54(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CB64(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CB74(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CB84(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CB94(UnkStruct_ov70_0226C914 * param0, u32 param1);
static void ov70_0226CBB4(u32 param0, UnkStruct_ov70_0226CBB4 * param1);
static void ov70_0226CC3C(UnkStruct_ov70_0226C914 * param0);
static void ov70_0226CC58(UnkStruct_ov70_0226C914 * param0);

static const u8 Unk_ov70_0226E74C[] = {
    0x6,
    0xD,
    0x5,
    0xB,
    0x7,
    0xE,
    0x8,
    0xC,
    0x1,
    0x0,
    0x2,
    0xA,
    0x10,
    0x9,
    0x4,
    0x3,
    0xF
};

static const u8 Unk_ov70_0226E6CC[] = {
    0x5,
    0xD,
    0x6,
    0x7,
    0xE,
    0x8
};

static const u8 Unk_ov70_0226E6C4[] = {
    0xB,
    0xC
};

static const u8 Unk_ov70_0226E6BC[] = {
    0xF,
    0x10
};

static const u8 Unk_ov70_0226E6B4[] = {
    0x4
};

static const u8 Unk_ov70_0226E6B8[] = {
    0x3
};

static const u8 Unk_ov70_0226E6C0[] = {
    0x9,
    0xA
};

static const u8 Unk_ov70_0226E6C8[] = {
    0x1,
    0x2,
    0x0
};

static const u8 Unk_ov70_0226E6D4[7][2] = {
    {0x0, 0x5},
    {0x1, 0x6},
    {0x2, 0x0},
    {0x3, 0x1},
    {0x4, 0x2},
    {0x5, 0x3},
    {0x6, 0x4}
};

static const UnkStruct_ov70_0226E6FC Unk_ov70_0226E6FC[3] = {
    {0xA, FX32_ONE},
    {0x2D, FX32_ONE},
    {0x50, FX32_HALF}
};

UnkStruct_ov70_0226C914 * ov70_0226C8B4 (const UnkStruct_ov66_0222DFF8 * param0, UnkStruct_ov70_02261E10 * param1, u32 param2)
{
    UnkStruct_ov70_0226C914 * v0;
    u32 v1;

    v0 = AllocFromHeap(param2, sizeof(UnkStruct_ov70_0226C914));
    memset(v0, 0, sizeof(UnkStruct_ov70_0226C914));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v1 = ov66_0222F104(param0);
    v0->unk_0A = ov66_0222E158(param0);

    if ((0 != v0->unk_0A) && (v1 != 0)) {
        u32 v2;

        ov70_0226251C(param1, 1);
        ov70_0226CC3C(v0);

        v2 = ov66_0222F114(param0);
        ov70_0226CB1C(v0, v1, v2);
    }

    return v0;
}

void ov70_0226C914 (UnkStruct_ov70_0226C914 * param0)
{
    ov70_0226CC58(param0);
    FreeToHeap(param0);
}

void ov70_0226C924 (UnkStruct_ov70_0226C914 * param0)
{
    u32 v0;
    u32 v1;
    u32 v2;

    v1 = ov66_0222F104(param0->unk_00);
    v2 = ov66_0222F114(param0->unk_00);
    v0 = ov66_0222E158(param0->unk_00);

    if (param0->unk_0A != v0) {
        param0->unk_0A = v0;

        if (v0 == 1) {
            ov70_0226251C(param0->unk_04, 1);
            ov70_0226CB1C(param0, v1, v2);
            ov70_0226CC3C(param0);
        }
    }

    if (v0 != 0) {
        if (param0->unk_08 != v1) {
            ov70_0226CB1C(param0, v1, v2);
        }

        ov70_0226C984(param0, v1, v2);
    }
}

static void ov70_0226C984 (UnkStruct_ov70_0226C914 * param0, u32 param1, u32 param2)
{
    static void(*const v0[])(UnkStruct_ov70_0226C914 *, u32) = {
        ov70_0226C9AC,
        ov70_0226C9AC,
        ov70_0226C9B0,
        ov70_0226C9B4,
        ov70_0226CA38,
        ov70_0226CAD4
    };

    GF_ASSERT(param1 < 6);

    if (param1 < 6) {
        v0[param1](param0, param2);
    }
}

static void ov70_0226C9AC (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    return;
}

static void ov70_0226C9B0 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    return;
}

static void ov70_0226C9B4 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    BOOL v0;
    u32 v1;
    BOOL v2;
    BOOL v3;
    u32 v4;
    static const u32 v5[4][2] = {
        {0, 2},
        {1, 3},
        {2, 0},
        {3, 1},
    };

    if ((param1 % 14) == 0) {
        v1 = 0;

        do {
            v3 = 0;

            if ((v1 % 4) == v5[param0->unk_0C.val1.unk_00][0]) {
                v2 = 1;
                v3 = 1;
            } else if ((v1 % 4) == v5[param0->unk_0C.val1.unk_00][1]) {
                v2 = 0;
                v3 = 1;
            }

            if (v3 == 1) {
                if (v1 < NELEMS(Unk_ov70_0226E74C)) {
                    v4 = Unk_ov70_0226E74C[v1];
                    v0 = ov70_02262754(param0->unk_04, v4, v2, (FX32_ONE));
                    GF_ASSERT(v0 == 1);
                } else {
                    v0 = 0;
                }
            } else {
                v0 = 1;
            }

            v1++;
        } while (v0 == 1);

        param0->unk_0C.val1.unk_00 = (param0->unk_0C.val1.unk_00 + 1) % 4;
    }
}

static void ov70_0226CA38 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    int v0;
    u32 v1, v2;
    UnkStruct_ov70_0226CBB4 v3;
    BOOL v4;

    if ((param1 % 6) == 0) {
        v1 = Unk_ov70_0226E6D4[param0->unk_0C.val2.unk_00][1];
        v2 = Unk_ov70_0226E6D4[param0->unk_0C.val2.unk_00][0];

        ov70_0226CBB4(v1, &v3);

        for (v0 = 0; v0 < v3.unk_04; v0++) {
            v4 = ov70_02262754(param0->unk_04, v3.unk_00[v0], 0, (FX32_ONE));
            GF_ASSERT(v4 == 1);
        }

        ov70_0226CBB4(v2, &v3);

        for (v0 = 0; v0 < v3.unk_04; v0++) {
            v4 = ov70_02262754(param0->unk_04, v3.unk_00[v0], 1, (FX32_ONE));
            GF_ASSERT(v4 == 1);
        }

        param0->unk_0C.val2.unk_00 = (param0->unk_0C.val2.unk_00 + 1) % 7;
    }
}

static void ov70_0226CAD4 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    if (param0->unk_0C.val3.unk_00 < 3) {
        if (Unk_ov70_0226E6FC[param0->unk_0C.val3.unk_00].unk_00 < param1) {
            ov70_0226278C(param0->unk_04, Unk_ov70_0226E6FC[param0->unk_0C.val3.unk_00].unk_04);
            ov70_022625D8(param0->unk_04, Unk_ov70_0226E6FC[param0->unk_0C.val3.unk_00].unk_04);
            sub_02005748(1437);

            param0->unk_0C.val3.unk_00++;
        }
    }
}

static void ov70_0226CB1C (UnkStruct_ov70_0226C914 * param0, u32 param1, u32 param2)
{
    static void(*const v0[])(UnkStruct_ov70_0226C914 *, u32) = {
        ov70_0226CB54,
        ov70_0226CB54,
        ov70_0226CB64,
        ov70_0226CB74,
        ov70_0226CB84,
        ov70_0226CB94
    };

    GF_ASSERT(param1 < 6);

    if (param1 < 6) {
        memset(&param0->unk_0C, 0, sizeof(UnkStruct_ov70_0226C914_sub1));

        v0[param1](param0, param2);
        param0->unk_08 = param1;
    }
}

static void ov70_0226CB54 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    ov70_02262724(param0->unk_04, 0, FX32_ONE);
}

static void ov70_0226CB64 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    ov70_02262724(param0->unk_04, 1, FX32_ONE);
}

static void ov70_0226CB74 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    ov70_02262724(param0->unk_04, 0, FX32_ONE);
}

static void ov70_0226CB84 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    ov70_02262724(param0->unk_04, 0, FX32_ONE);
}

static void ov70_0226CB94 (UnkStruct_ov70_0226C914 * param0, u32 param1)
{
    ov70_0226CC58(param0);

    ov70_02262724(param0->unk_04, 0, FX32_ONE);
    ov70_0226251C(param0->unk_04, 0);
}

static void ov70_0226CBB4 (u32 param0, UnkStruct_ov70_0226CBB4 * param1)
{
    switch (param0) {
    case 0:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6CC);
        param1->unk_00 = Unk_ov70_0226E6CC;
        break;
    case 1:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6C4);
        param1->unk_00 = Unk_ov70_0226E6C4;
        break;
    case 2:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6BC);
        param1->unk_00 = Unk_ov70_0226E6BC;
        break;
    case 3:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6B4);
        param1->unk_00 = Unk_ov70_0226E6B4;
        break;
    case 4:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6B8);
        param1->unk_00 = Unk_ov70_0226E6B8;
        break;
    case 5:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6C0);
        param1->unk_00 = Unk_ov70_0226E6C0;
        break;
    case 6:
        param1->unk_04 = NELEMS(Unk_ov70_0226E6C8);
        param1->unk_00 = Unk_ov70_0226E6C8;
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov70_0226CC3C (UnkStruct_ov70_0226C914 * param0)
{
    if (param0->unk_09 == 0) {
        sub_02005748(1438);
        param0->unk_09 = 1;
    }
}

static void ov70_0226CC58 (UnkStruct_ov70_0226C914 * param0)
{
    if (param0->unk_09) {
        sub_020057A4(1438, 0);
        param0->unk_09 = 0;
    }
}
