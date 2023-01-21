#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "overlay070/ov70_0226C338.h"

typedef struct {
    GXRgb unk_00;
    GXRgb unk_02[4];
} UnkStruct_ov70_0226E678;

typedef struct {
    GXRgb unk_00;
} UnkStruct_ov70_0226E670;

typedef struct {
    s8 unk_00[4];
} UnkStruct_ov70_0226C4CC;

typedef struct {
    UnkStruct_ov70_0226C4CC unk_00[2];
    UnkStruct_ov70_0226C4CC unk_08[4];
} UnkStruct_ov70_0226C568;

typedef struct UnkStruct_ov70_0226C39C_t {
    UnkStruct_ov70_0226C568 unk_00;
    UnkStruct_ov70_0226C568 unk_18;
    UnkStruct_ov70_0226C568 unk_30;
    s32 unk_48[2];
    s32 unk_50[4];
} UnkStruct_ov70_0226C39C;

static void ov70_0226C4CC(const UnkStruct_ov70_0226C4CC * param0, GXRgb * param1);
static void ov70_0226C4E8(UnkStruct_ov70_0226C4CC * param0, const GXRgb * param1);
static void ov70_0226C50C(const UnkStruct_ov70_0226C4CC * param0, const UnkStruct_ov70_0226C4CC * param1, UnkStruct_ov70_0226C4CC * param2, s32 param3, s32 param4);
static void ov70_0226C568(UnkStruct_ov70_0226C568 * param0, const UnkStruct_ov70_0226E678 * param1);
static void ov70_0226C58C(UnkStruct_ov70_0226C568 * param0, const UnkStruct_ov70_0226E670 * param1);
static void ov70_0226C598(const UnkStruct_ov70_0226C568 * param0);

static const UnkStruct_ov70_0226E678 Unk_ov70_0226E678[6] = {
    {
        GX_RGB(23, 23, 25),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(14, 14, 14),
            GX_RGB(20, 20, 20),
            GX_RGB(16, 16, 16),
        }
    },
    {
        GX_RGB(10, 10, 16),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(14, 14, 14),
            GX_RGB(20, 20, 20),
            GX_RGB(16, 16, 16),
        }
    },
    {
        GX_RGB(8, 8, 12),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(14, 14, 14),
            GX_RGB(20, 20, 20),
            GX_RGB(16, 16, 16),
        }
    },
    {
        GX_RGB(5, 5, 8),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(13, 13, 14),
            GX_RGB(20, 20, 20),
            GX_RGB(16, 16, 16),
        }
    },
    {
        GX_RGB(3, 3, 7),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(10, 10, 12),
            GX_RGB(20, 20, 20),
            GX_RGB(14, 14, 16),
        },
    },
    {
        GX_RGB(0, 0, 6),
        {
            GX_RGB(16, 16, 16),
            GX_RGB(8, 8, 10),
            GX_RGB(20, 20, 20),
            GX_RGB(12, 12, 16),
        },
    },
};

static const UnkStruct_ov70_0226E670 Unk_ov70_0226E670[4] = {
    {GX_RGB(14, 14, 14)},
    {GX_RGB(20, 20, 20)},
    {GX_RGB(31, 31, 31)},
    {GX_RGB(8, 8, 8)},
};

UnkStruct_ov70_0226C39C * ov70_0226C338 (u32 param0, int param1, int param2, int param3)
{
    UnkStruct_ov70_0226C39C * v0;
    int v1;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov70_0226C39C));
    memset(v0, 0, sizeof(UnkStruct_ov70_0226C39C));

    ov70_0226C568(&v0->unk_00, &Unk_ov70_0226E678[param1]);
    ov70_0226C58C(&v0->unk_00, &Unk_ov70_0226E670[param2]);

    for (v1 = 0; v1 < 2; v1++) {
        v0->unk_48[v1] = 60;
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_50[v1] = 60;
    }

    ov70_0226C598(&v0->unk_00);

    return v0;
}

void ov70_0226C39C (UnkStruct_ov70_0226C39C * param0)
{
    FreeToHeap(param0);
}

void ov70_0226C3A4 (UnkStruct_ov70_0226C39C * param0)
{
    int v0;
    BOOL v1 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        if ((param0->unk_48[v0] + 1) <= 60) {
            param0->unk_48[v0]++;
            ov70_0226C50C(&param0->unk_18.unk_00[v0], &param0->unk_30.unk_00[v0], &param0->unk_00.unk_00[v0], param0->unk_48[v0], 60);
            v1 = 1;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if ((param0->unk_50[v0] + 1) <= 60) {
            param0->unk_50[v0]++;
            ov70_0226C50C(&param0->unk_18.unk_08[v0], &param0->unk_30.unk_08[v0], &param0->unk_00.unk_08[v0], param0->unk_50[v0], 60);
            v1 = 1;
        }
    }

    if (v1) {
        ov70_0226C598(&param0->unk_00);
    }
}

void ov70_0226C430 (UnkStruct_ov70_0226C39C * param0, int param1)
{
    int v0;

    param0->unk_18.unk_00[0] = param0->unk_00.unk_00[0];
    param0->unk_48[0] = 0;

    ov70_0226C4E8(&param0->unk_30.unk_00[0], &Unk_ov70_0226E678[param1].unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_18.unk_08[v0] = param0->unk_00.unk_08[v0];
        param0->unk_50[v0] = 0;

        ov70_0226C4E8(&param0->unk_30.unk_08[v0], &Unk_ov70_0226E678[param1].unk_02[v0]);
    }
}

void ov70_0226C4A0 (UnkStruct_ov70_0226C39C * param0, int param1)
{
    param0->unk_18.unk_00[1] = param0->unk_00.unk_00[1];
    param0->unk_48[1] = 0;

    ov70_0226C4E8(&param0->unk_30.unk_00[1], &Unk_ov70_0226E670[param1].unk_00);
}

void ov70_0226C4C8 (UnkStruct_ov70_0226C39C * param0, int param1)
{
    return;
}

static void ov70_0226C4CC (const UnkStruct_ov70_0226C4CC * param0, GXRgb * param1)
{
    *param1 = GX_RGB(param0->unk_00[0], param0->unk_00[1], param0->unk_00[2]);
}

static void ov70_0226C4E8 (UnkStruct_ov70_0226C4CC * param0, const GXRgb * param1)
{
    param0->unk_00[0] = ((*param1) & GX_RGB_R_MASK) >> GX_RGB_R_SHIFT;
    param0->unk_00[1] = ((*param1) & GX_RGB_G_MASK) >> GX_RGB_G_SHIFT;
    param0->unk_00[2] = ((*param1) & GX_RGB_B_MASK) >> GX_RGB_B_SHIFT;
}

static void ov70_0226C50C (const UnkStruct_ov70_0226C4CC * param0, const UnkStruct_ov70_0226C4CC * param1, UnkStruct_ov70_0226C4CC * param2, s32 param3, s32 param4)
{
    s32 v0;
    s32 v1;
    s32 v2;

    v0 = param1->unk_00[0] - param0->unk_00[0];
    v1 = param1->unk_00[1] - param0->unk_00[1];
    v2 = param1->unk_00[2] - param0->unk_00[2];

    param2->unk_00[0] = param0->unk_00[0] + ((param3 * v0) / param4);
    param2->unk_00[1] = param0->unk_00[1] + ((param3 * v1) / param4);
    param2->unk_00[2] = param0->unk_00[2] + ((param3 * v2) / param4);
}

static void ov70_0226C568 (UnkStruct_ov70_0226C568 * param0, const UnkStruct_ov70_0226E678 * param1)
{
    int v0;

    ov70_0226C4E8(&param0->unk_00[0], &param1->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        ov70_0226C4E8(&param0->unk_08[v0], &param1->unk_02[v0]);
    }
}

static void ov70_0226C58C (UnkStruct_ov70_0226C568 * param0, const UnkStruct_ov70_0226E670 * param1)
{
    ov70_0226C4E8(&param0->unk_00[1], &param1->unk_00);
}

static void ov70_0226C598 (const UnkStruct_ov70_0226C568 * param0)
{
    int v0;
    GXRgb v1, v2;

    for (v0 = 0; v0 < 2; v0++) {
        ov70_0226C4CC(&param0->unk_00[v0], &v1);
        NNS_G3dGlbLightColor(v0, v1);
    }

    ov70_0226C4CC(&param0->unk_08[0], &v1);
    ov70_0226C4CC(&param0->unk_08[1], &v2);

    NNS_G3dGlbMaterialColorDiffAmb(v1, v2, 0);

    ov70_0226C4CC(&param0->unk_08[2], &v1);
    ov70_0226C4CC(&param0->unk_08[3], &v2);

    NNS_G3dGlbMaterialColorSpecEmi(v1, v2, 0);
}
