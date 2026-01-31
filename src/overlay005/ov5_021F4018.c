#include "overlay005/ov5_021F4018.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DAnimation unk_18;
    Simple3DAnimation unk_3C;
    OverworldAnimManager *unk_60[8];
} UnkStruct_021F416C;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_021F416C *unk_04;
} UnkStruct_021F41F0;

typedef struct {
    int unk_00;
    Simple3DAnimation unk_04;
    Simple3DRenderObj unk_28;
    UnkStruct_021F41F0 unk_7C;
} UnkStruct_021F4234;

static void ov5_021F4044(UnkStruct_021F416C *param0);
static void ov5_021F407C(UnkStruct_021F416C *param0);

static const OverworldAnimManagerFuncs Unk_ov5_022006C8;

void *ov5_021F4018(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F416C *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F416C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F4044(v0);
    return v0;
}

void ov5_021F4034(void *param0)
{
    UnkStruct_021F416C *v0 = param0;

    ov5_021F407C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F4044(UnkStruct_021F416C *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 111, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 166, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_3C, 0, 167, 0);
}

static void ov5_021F407C(UnkStruct_021F416C *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
    Simple3D_FreeAnimation(&param0->unk_18);
    Simple3D_FreeAnimation(&param0->unk_3C);
}

void ov5_021F4098(FieldSystem *fieldSystem, int param1)
{
    int v0, v1;
    VecFx32 v2 = { 0, 0, 0 };
    UnkStruct_ov5_021DF47C *v3;
    UnkStruct_021F416C *v4;
    OverworldAnimManager **v5;
    UnkStruct_021F41F0 v6;

    v3 = fieldSystem->unk_40;

    if (ov5_021DF4E4(v3, 30) == 0) {
        ov5_021DF4A8(v3, 30);
    }

    v4 = ov5_021DF55C(v3, 30);

    v6.unk_00 = v3;
    v6.unk_04 = v4;

    if (param1 != 1) {
        v5 = v4->unk_60;

        for (v1 = 19; v1 < (19 + 1); v1++) {
            for (v0 = 1; v0 < (1 + 4); v0++, v5++) {
                v2.x = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
                v2.z = (((v1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
                v2.y = MapObject_RecalculatePositionHeight(fieldSystem, &v2, 0);
                *v5 = ov5_021DF72C(v3, &Unk_ov5_022006C8, &v2, 0, &v6, 0);
            }
        }
    }

    if (param1 != 0) {
        v5 = &v4->unk_60[(4 * 1)];

        for (v1 = 19; v1 < (19 + 1); v1++) {
            for (v0 = 18; v0 < (18 + 4); v0++, v5++) {
                v2.x = (((v0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
                v2.z = (((v1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
                v2.y = MapObject_RecalculatePositionHeight(fieldSystem, &v2, 0);
                *v5 = ov5_021DF72C(v3, &Unk_ov5_022006C8, &v2, 0, &v6, 0);
            }
        }
    }
}

void ov5_021F416C(FieldSystem *fieldSystem, int param1)
{
    int v0, v1;
    UnkStruct_ov5_021DF47C *v2;
    UnkStruct_021F416C *v3;
    OverworldAnimManager **v4;
    UnkStruct_021F4234 *v5;

    v2 = fieldSystem->unk_40;
    GF_ASSERT(ov5_021DF4E4(v2, 30) == 1);

    v3 = ov5_021DF55C(v2, 30);

    if (param1 == 0) {
        v4 = v3->unk_60;
        v1 = (4 * 1);
    } else {
        v4 = &v3->unk_60[(4 * 1)];
        v1 = (4 * 1);
    }

    for (v0 = 0; v0 < v1; v0++, v4++) {
        v5 = OverworldAnimManager_GetFuncsContext(*v4);
        v5->unk_00 = 1;

        Simple3D_FreeAnimObject(&v5->unk_04);
        Simple3D_ZeroOutAnimation(&v5->unk_04);
        ov5_021DFB40(v2, &v5->unk_04, &v5->unk_7C.unk_04->unk_04, &v5->unk_7C.unk_04->unk_3C, 0);
        Simple3D_CreateRenderObjectWithAnim(&v5->unk_28, &v5->unk_7C.unk_04->unk_04, &v5->unk_04);
    }
}

static int ov5_021F41F0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F4234 *v0 = param1;
    const UnkStruct_021F41F0 *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_7C = *v1;

    ov5_021DFB40(v0->unk_7C.unk_00, &v0->unk_04, &v0->unk_7C.unk_04->unk_04, &v0->unk_7C.unk_04->unk_18, 0);
    Simple3D_CreateRenderObjectWithAnim(&v0->unk_28, &v0->unk_7C.unk_04->unk_04, &v0->unk_04);

    return 1;
}

static void ov5_021F4234(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F4234 *v0 = param1;
    Simple3D_FreeAnimation(&v0->unk_04);
}

static void ov5_021F4240(OverworldAnimManager *param0, void *param1)
{
    int v0 = 1;
    UnkStruct_021F4234 *v1 = param1;

    if (v1->unk_00 == 1) {
        if (Simple3D_HasAnimationReachedEnd(&v1->unk_04) == 1) {
            ov5_021DF74C(param0);
            return;
        }

        v0 = 0;
    }

    Simple3D_UpdateAnim(&v1->unk_04, FX32_ONE, v0);
}

static void ov5_021F4270(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_021F4234 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_28, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_022006C8 = {
    (sizeof(UnkStruct_021F4234)),
    ov5_021F41F0,
    ov5_021F4234,
    ov5_021F4240,
    ov5_021F4270
};
