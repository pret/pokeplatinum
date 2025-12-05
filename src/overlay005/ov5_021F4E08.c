#include "overlay005/ov5_021F4E08.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04[33];
    Simple3DRenderObj unk_298[33];
} UnkStruct_ov5_021F4E38;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem *fieldSystem;
    UnkStruct_ov5_021DF47C *unk_0C;
    UnkStruct_ov5_021F4E38 *unk_10;
} UnkStruct_ov5_021F4EAC;

typedef struct {
    NNSG3dRenderObj unk_00;
    int unk_54;
    float currentSize;
    float finalSize;
    int unk_60;
    int unk_64;
    int unk_68;
    UnkStruct_ov5_021F4EAC unk_6C;
} UnkStruct_ov5_021F4F18;

static void ov5_LoadFloorTextures(UnkStruct_ov5_021F4E38 *param0);
static void ov5_021F4E94(UnkStruct_ov5_021F4E38 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200A0C;

void *ov5_021F4E08(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F4E38 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F4E38)), 0, 0);
    v0->unk_00 = param0;

    ov5_LoadFloorTextures(v0);

    return v0;
}

void ov5_021F4E28(void *param0)
{
    UnkStruct_ov5_021F4E38 *v0 = param0;

    ov5_021F4E94(v0);
    ov5_021DF554(v0);
}

static void ov5_LoadFloorTextures(UnkStruct_ov5_021F4E38 *param0)
{
    int i;

    for (i = 0; i < FLOOR_TEXTURE_COUNT - 1; i++) {
        ov5_021DFB00(param0->unk_00, &param0->unk_04[i], 0, 26 + i, FALSE);
        Simple3D_CreateRenderObject(&param0->unk_298[i], &param0->unk_04[i]);
    }

    ov5_021DFB00(param0->unk_00, &param0->unk_04[i], 0, 25, FALSE);
    Simple3D_CreateRenderObject(&param0->unk_298[i], &param0->unk_04[i]);
}

static void ov5_021F4E94(UnkStruct_ov5_021F4E38 *param0)
{
    int v0;

    for (v0 = 0; v0 < FLOOR_TEXTURE_COUNT; v0++) {
        Simple3D_FreeModel(&param0->unk_04[v0]);
    }
}

OverworldAnimManager *ov5_DrawFloorTexture(FieldSystem *fieldSystem, int x, int z, int size, int textureIdx)
{
    UnkStruct_ov5_021DF47C *v3 = fieldSystem->unk_40;

    UnkStruct_ov5_021F4EAC v2;
    v2.unk_0C = v3;
    v2.unk_10 = ov5_021DF55C(v3, 3);
    v2.unk_00 = x;
    v2.unk_04 = z;
    v2.fieldSystem = fieldSystem;

    VecFx32 v4;
    v4.x = (x << 4) * FX32_ONE + FX32_ONE * 9;
    v4.y = 0;
    v4.z = (z << 4) * FX32_ONE;

    OverworldAnimManager *v5 = ov5_021DF72C(v3, &Unk_ov5_02200A0C, &v4, 0, &v2, 0xff);

    if (v5) {
        UnkStruct_ov5_021F4F18 *v6 = OverworldAnimManager_GetFuncsContext(v5);
        v6->unk_54 = textureIdx;
        v6->currentSize = size;
        v6->finalSize = size;
    }

    return v5;
}

OverworldAnimManager *ov5_DrawGrowingFloorTexture(FieldSystem *fieldSystem, int x, int z, int finalSize, int textureIdx)
{
    OverworldAnimManager *v1 = ov5_DrawFloorTexture(fieldSystem, x, z, finalSize, textureIdx);

    if (v1) {
        UnkStruct_ov5_021F4F18 *v0 = OverworldAnimManager_GetFuncsContext(v1);
        v0->currentSize = 0;
        v0->finalSize = finalSize;
    }

    return v1;
}

static int ov5_021F4F44(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4F18 *v0;
    const UnkStruct_ov5_021F4EAC *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_6C = *v1;

    v2.x = (((v0->unk_6C.unk_00) << 4) * FX32_ONE) + (FX32_ONE * 9);
    v2.z = (((v0->unk_6C.unk_04) << 4) * FX32_ONE);
    v2.y = 0;

    OverworldAnimManager_SetPosition(param0, &v2);

    return 1;
}

static void ov5_021F4F88(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F4F8C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4F18 *v0 = param1;

    if (v0->currentSize < v0->finalSize) {
        v0->currentSize += 0.2;
    }
}

static void ov5_021F4FB8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F4F18 *v0 = param1;

    {
        VecFx32 v1;
        VecFx32 v2 = { FX32_ONE, FX32_ONE, FX32_ONE };
        MtxFx33 v3 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
        Simple3DRenderObj *v4 = &v0->unk_6C.unk_10->unk_298[v0->unk_54];

        OverworldAnimManager_GetPosition(param0, &v1);

        v2.x *= v0->currentSize;
        v2.y *= v0->currentSize;
        v2.z *= v0->currentSize;
        v1.x += -(FX32_ONE * 1) / 2;
        v1.y += -(FX32_ONE * 1);
        v1.z += (FX32_ONE * 5);

        Simple3D_DrawRenderObj(v4, &v1, &v2, &v3);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200A0C = {
    (sizeof(UnkStruct_ov5_021F4F18)),
    ov5_021F4F44,
    ov5_021F4F88,
    ov5_021F4F8C,
    ov5_021F4FB8
};
