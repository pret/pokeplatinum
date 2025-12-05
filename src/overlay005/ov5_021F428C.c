#include "overlay005/ov5_021F428C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "heap.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov5_021DF47C *unk_08;
    Simple3DModel unk_0C[3];
    Simple3DAnimation unk_48[12];
    OverworldAnimManager **unk_1F8;
    OverworldAnimManager **unk_1FC;
} UnkStruct_ov5_021F431C;

typedef struct {
    u8 unk_00;
    s8 unk_01;
    s16 unk_02;
    s16 unk_04;
    fx32 unk_08;
    UnkStruct_ov5_021F431C *unk_0C;
    FieldSystem *fieldSystem;
} UnkStruct_ov5_021F440C;

typedef struct {
    u8 unk_00_0 : 6;
    u8 unk_00_6 : 1;
    u8 unk_00_7 : 1;
    s8 unk_01;
    s16 unk_02;
    s16 unk_04;
    fx32 unk_08;
    Simple3DAnimation unk_0C;
    Simple3DRenderObj unk_30;
    UnkStruct_ov5_021F440C unk_84;
} UnkStruct_ov5_021F4698;

typedef struct {
    u32 unk_00;
    Simple3DAnimation unk_04[4];
} UnkStruct_ov5_021F45F8;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    Simple3DRenderObj unk_0C;
    UnkStruct_ov5_021F440C unk_60;
    UnkStruct_ov5_021F45F8 *unk_74;
} UnkStruct_ov5_021F44A4;

static void ov5_021F431C(UnkStruct_ov5_021F431C *param0);
static void ov5_021F4370(UnkStruct_ov5_021F431C *param0);
static OverworldAnimManager **ov5_021F439C(FieldSystem *fieldSystem, int param1, int param2, fx32 param3, int param4, UnkStruct_ov5_021F440C *param5);
static void ov5_021F440C(OverworldAnimManager *param0, UnkStruct_ov5_021F4698 *param1);

static const OverworldAnimManagerFuncs Unk_ov5_0220070C;
static const OverworldAnimManagerFuncs Unk_ov5_022006F8;
static const u32 Unk_ov5_022006DC[3];
static const u32 Unk_ov5_02200720[12];
static const u32 Unk_ov5_022006E8[4];

void *ov5_021F428C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F431C *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F431C)), 0, 0);
    v0->unk_08 = param0;

    ov5_021F431C(v0);
    return v0;
}

void ov5_021F42A8(void *param0)
{
    UnkStruct_ov5_021F431C *v0 = param0;

    if (v0->unk_1F8 != NULL) {
        Heap_Free(v0->unk_1F8);
    }

    if (v0->unk_1FC != NULL) {
        Heap_Free(v0->unk_1FC);
    }

    ov5_021F4370(v0);
    ov5_021DF554(v0);
}

void ov5_021F42D8(UnkStruct_ov5_021DF47C *param0, int param1, int param2)
{
    int v0;
    OverworldAnimManager *v1;
    UnkStruct_ov5_021F431C *v2 = ov5_021DF55C(param0, 31);

    v2->unk_04 = param2;
    v2->unk_00 = param1;

    if (param1) {
        v0 = sizeof(v1) * param1;
        v2->unk_1F8 = ov5_021DF53C(param0, v0, 0, 0);
    }

    if (param2) {
        v0 = sizeof(v1) * param2;
        v2->unk_1FC = ov5_021DF53C(param0, v0, 0, 0);
    }
}

static void ov5_021F431C(UnkStruct_ov5_021F431C *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov5_021DFB00(param0->unk_08, &param0->unk_0C[v0], 0, Unk_ov5_022006DC[v0], 0);
    }

    for (v0 = 0; v0 < 12; v0++) {
        ov5_021DFB24(param0->unk_08, &param0->unk_48[v0], 0, Unk_ov5_02200720[v0], 0);
    }
}

static void ov5_021F4370(UnkStruct_ov5_021F431C *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Simple3D_FreeModel(&param0->unk_0C[v0]);
    }

    for (v0 = 0; v0 < 12; v0++) {
        Simple3D_FreeAnimation(&param0->unk_48[v0]);
    }
}

static OverworldAnimManager **ov5_021F439C(FieldSystem *fieldSystem, int param1, int param2, fx32 param3, int param4, UnkStruct_ov5_021F440C *param5)
{
    int v0, v1;
    UnkStruct_ov5_021DF47C *v2;
    UnkStruct_ov5_021F431C *v3;
    OverworldAnimManager **v4;

    v2 = fieldSystem->unk_40;
    v3 = ov5_021DF55C(v2, 31);

    if (param4 == 0) {
        v1 = v3->unk_00;
        v4 = v3->unk_1F8;
    } else {
        v1 = v3->unk_04;
        v4 = v3->unk_1FC;
    }

    GF_ASSERT(v1);

    param5->unk_02 = param1;
    param5->unk_04 = param2;
    param5->unk_08 = param3;
    param5->fieldSystem = fieldSystem;
    param5->unk_0C = v3;

    for (v0 = 0; v0 < v1; v0++) {
        if (v4[v0] == NULL) {
            return &v4[v0];
        }
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov5_021F440C(OverworldAnimManager *param0, UnkStruct_ov5_021F4698 *param1)
{
    VecFx32 v0;
    const UnkStruct_ov5_021F440C *v1 = OverworldAnimManager_GetUserData(param0);

    param1->unk_84 = *v1;
    param1->unk_02 = v1->unk_02;
    param1->unk_04 = v1->unk_04;
    param1->unk_01 = v1->unk_01;
    param1->unk_08 = FX32_ONE;

    sub_02064450(param1->unk_02, param1->unk_04, &v0);
    sub_020644A4(param1->unk_84.fieldSystem, &v0);

    v0.y += (FX32_ONE * 6) + param1->unk_84.unk_08;

    OverworldAnimManager_SetPosition(param0, &v0);
}

OverworldAnimManager *ov5_021F4474(FieldSystem *fieldSystem, int param1, int param2, fx32 param3)
{
    UnkStruct_ov5_021DF47C *v0;
    OverworldAnimManager **v1;
    UnkStruct_ov5_021F440C v2;

    v0 = fieldSystem->unk_40;
    v1 = ov5_021F439C(fieldSystem, param1, param2, param3, 0, &v2);
    *v1 = ov5_021DF72C(v0, &Unk_ov5_0220070C, NULL, 0, &v2, 0);

    return *v1;
}

void ov5_021F44A4(OverworldAnimManager *param0)
{
    int v0;
    UnkStruct_ov5_021F44A4 *v2 = OverworldAnimManager_GetFuncsContext(param0);
    UnkStruct_ov5_021F431C *v1 = v2->unk_60.unk_0C;

    GF_ASSERT(v2->unk_74 == NULL);

    v2->unk_00 = 1;
    v2->unk_74 = ov5_021DF53C(v1->unk_08, sizeof(UnkStruct_ov5_021F45F8), 1, 0);

    Simple3D_CreateRenderObject(&v2->unk_0C, &v2->unk_60.unk_0C->unk_0C[0]);

    for (v0 = 0; v0 < 4; v0++) {
        ov5_021DFB40(v1->unk_08, &v2->unk_74->unk_04[v0], &v1->unk_0C[0], &v1->unk_48[Unk_ov5_022006E8[v0]], 0);
        Simple3D_BindAnimToRenderObj(&v2->unk_0C, &v2->unk_74->unk_04[v0]);
    }
}

BOOL ov5_021F453C(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F44A4 *v0 = OverworldAnimManager_GetFuncsContext(param0);
    GF_ASSERT(v0->unk_74 != NULL);

    if (v0->unk_74->unk_00 == ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3))) {
        return 1;
    }

    return 0;
}

static int ov5_021F4560(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F44A4 *v1 = param1;
    const UnkStruct_ov5_021F440C *v2 = OverworldAnimManager_GetUserData(param0);

    v1->unk_60 = *v2;
    v1->unk_04 = v2->unk_02;
    v1->unk_06 = v2->unk_04;
    v1->unk_08 = v2->unk_01;

    sub_02064450(v1->unk_04, v1->unk_06, &v0);
    sub_020644A4(v1->unk_60.fieldSystem, &v0);

    v0.y += (FX32_ONE * 6) + v1->unk_60.unk_08;

    OverworldAnimManager_SetPosition(param0, &v0);
    Simple3D_CreateRenderObject(&v1->unk_0C, &v1->unk_60.unk_0C->unk_0C[1]);

    return 1;
}

static void ov5_021F45D0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F44A4 *v0 = param1;

    if (v0->unk_74 != NULL) {
        int v1;

        for (v1 = 0; v1 < 4; v1++) {
            Simple3D_FreeAnimation(&v0->unk_74->unk_04[v1]);
        }

        Heap_Free(v0->unk_74);
    }
}

static void ov5_021F45F8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F44A4 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        break;
    case 1: {
        int v1;
        UnkStruct_ov5_021F45F8 *v2;

        GF_ASSERT(v0->unk_74 != NULL);
        v2 = v0->unk_74;

        for (v1 = 0; v1 < 4; v1++) {
            if (Simple3D_UpdateAnim(&v2->unk_04[v1], FX32_ONE, 0)) {
                v2->unk_00 |= 1 << v1;
            }
        }

        if (v2->unk_00 == ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3))) {
            v0->unk_00 = 0;
        }
    } break;
    }
}

static void ov5_021F464C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F44A4 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_0C, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_0220070C = {
    sizeof(UnkStruct_ov5_021F44A4),
    ov5_021F4560,
    ov5_021F45D0,
    ov5_021F45F8,
    ov5_021F464C
};

OverworldAnimManager *ov5_021F4668(FieldSystem *fieldSystem, int param1, int param2, fx32 param3)
{
    UnkStruct_ov5_021DF47C *v0;
    OverworldAnimManager **v1;
    UnkStruct_ov5_021F440C v2;

    v0 = fieldSystem->unk_40;
    v1 = ov5_021F439C(fieldSystem, param1, param2, param3, 1, &v2);
    *v1 = ov5_021DF72C(v0, &Unk_ov5_022006F8, NULL, 0, &v2, 0);

    return *v1;
}

void ov5_021F4698(OverworldAnimManager *param0, int param1, BOOL param2)
{
    Simple3DAnimation *v0;
    UnkStruct_ov5_021F4698 *v2 = OverworldAnimManager_GetFuncsContext(param0);
    UnkStruct_ov5_021F431C *v1 = v2->unk_84.unk_0C;

    if (v2->unk_00_6 == 1) {
        Simple3D_FreeAnimObject(&v2->unk_0C);
    }

    v2->unk_00_6 = 1;
    v2->unk_00_7 = 0;
    v2->unk_00_0 = 1;

    param1 = Direction_GetOpposite(param1);

    if (param2 == 1) {
        param1 += 4;
    } else {
        param1 += 0;
    }

    ov5_021DFB40(v1->unk_08, &v2->unk_0C, &v1->unk_0C[2], &v1->unk_48[param1], 0);
    Simple3D_CreateRenderObjectWithAnim(&v2->unk_30, &v1->unk_0C[2], &v2->unk_0C);
}

void ov5_021F4714(OverworldAnimManager *param0, fx32 param1)
{
    Simple3DAnimation *v0;
    UnkStruct_ov5_021F431C *v1;
    UnkStruct_ov5_021F4698 *v2 = OverworldAnimManager_GetFuncsContext(param0);
    v2->unk_08 = param1;
}

BOOL ov5_021F4720(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F4698 *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return v0->unk_00_7;
}

static int ov5_021F4730(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4698 *v0 = param1;

    ov5_021F440C(param0, v0);
    Simple3D_CreateRenderObject(&v0->unk_30, &v0->unk_84.unk_0C->unk_0C[2]);

    return 1;
}

static void ov5_021F474C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4698 *v0 = param1;

    if (v0->unk_00_6) {
        Simple3D_FreeAnimation(&v0->unk_0C);
    }
}

static void ov5_021F4760(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4698 *v0 = param1;

    switch (v0->unk_00_0) {
    case 0:
        break;
    case 1:
        if (Simple3D_UpdateAnim(&v0->unk_0C, v0->unk_08, 0)) {
            v0->unk_00_0 = 0;
            v0->unk_00_7 = 1;
        }
        break;
    }
}

static void ov5_021F4794(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F4698 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_30, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_022006F8 = {
    sizeof(UnkStruct_ov5_021F4698),
    ov5_021F4730,
    ov5_021F474C,
    ov5_021F4760,
    ov5_021F4794
};

static const u32 Unk_ov5_022006DC[3] = {
    0x70,
    0x72,
    0x71
};

static const u32 Unk_ov5_02200720[12] = {
    0xB6,
    0xB7,
    0xB8,
    0xB9,
    0xBA,
    0xBB,
    0xBC,
    0xBD,
    0xBE,
    0xC3,
    0xC4,
    0xA8
};

static const u32 Unk_ov5_022006E8[4] = {
    0x8,
    0x9,
    0xA,
    0xB
};
