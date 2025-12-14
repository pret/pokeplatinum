#include "overlay005/ov5_021F25C0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "fx_util.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_ov5_021F25EC;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_ov5_021F25EC *unk_08;
    MapObject *unk_0C;
} UnkStruct_ov5_021F26A8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    UnkStruct_ov5_021F26A8 unk_24;
} UnkStruct_ov5_021F26F0;

static void ov5_021F25EC(UnkStruct_ov5_021F25EC *param0);
static void ov5_021F2610(UnkStruct_ov5_021F25EC *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200490;

void *ov5_021F25C0(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F25EC *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F25EC)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F25EC(v0);
    return v0;
}

void ov5_021F25DC(void *param0)
{
    UnkStruct_ov5_021F25EC *v0 = param0;

    ov5_021F2610(v0);
    ov5_021DF554(v0);
}

static void ov5_021F25EC(UnkStruct_ov5_021F25EC *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 81, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F2610(UnkStruct_ov5_021F25EC *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
}

OverworldAnimManager *ov5_021F261C(MapObject *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov5_021F26A8 v0;
    VecFx32 v1 = { 0, 0, 0 };

    v0.unk_00 = param3;
    v0.unk_04 = ov5_021DF578(param0);
    v0.unk_08 = ov5_021DF55C(v0.unk_04, 15);
    v0.unk_0C = param0;

    if (param4 == 0) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(param0);

        v1.x = (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
        v1.z = (((param2) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
        sub_020644A4(fieldSystem, &v1);
    } else {
        VecFx32 v3 = { 0, (FX32_ONE * 7), (FX32_ONE * 4) };

        MapObject_GetPosPtr(param0, &v1);
        sub_020630AC(param0, &v3);
    }

    {
        int v4 = sub_02062758(param0, 2);
        return ov5_021DF72C(v0.unk_04, &Unk_ov5_02200490, &v1, param4, &v0, v4);
    }
}

static int ov5_021F26A8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F26F0 *v0 = param1;
    const UnkStruct_ov5_021F26A8 *v1 = OverworldAnimManager_GetUserData(param0);
    MapObject *v2 = v1->unk_0C;

    v0->unk_24 = *v1;
    v0->unk_0C = MapObject_GetLocalID(v2);
    v0->unk_10 = sub_02062918(v2);
    v0->unk_08 = v1->unk_00;
    v0->unk_18 = OverworldAnimManager_GetID(param0);
    v0->unk_1C = FX32_ONE;
    v0->unk_20 = 0x400;

    return 1;
}

static void ov5_021F26F0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F26F0 *v0 = param1;
    MapObject *v1 = v0->unk_24.unk_0C;
    VecFx32 v2 = { 0, 0, 0 };

    sub_020630AC(v1, &v2);
}

static void ov5_021F2708(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F26F0 *v0 = param1;
    MapObject *v1 = v0->unk_24.unk_0C;

    if (sub_02062764(v1, v0->unk_0C, v0->unk_10) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v0->unk_00 = 0;
    v0->unk_04 = MapObject_GetFacingDir(v1);

    if (v0->unk_04 == -1) {
        v0->unk_00 = 1;
        return;
    }

    if (v0->unk_18 == 0) {
        return;
    }

    v0->unk_08 = v0->unk_04;

    {
        v0->unk_1C += v0->unk_20;

        if (v0->unk_1C >= (FX32_ONE * 4)) {
            v0->unk_1C = (FX32_ONE * 4);
            v0->unk_20 = -v0->unk_20;
        } else if (v0->unk_1C <= FX32_ONE) {
            v0->unk_1C = FX32_ONE;
            v0->unk_20 = -v0->unk_20;
        }
    }

    {
        VecFx32 v2;

        v2.x = 0;
        v2.y = v0->unk_1C + (FX32_ONE * 7);
        v2.z = (FX32_ONE * 4);

        sub_020630AC(v1, &v2);
    }

    {
        VecFx32 v3;

        MapObject_GetPosPtr(v1, &v3);
        v3.y += v0->unk_1C - FX32_ONE;
        OverworldAnimManager_SetPosition(param0, &v3);
    }
}

static void ov5_021F27B4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F26F0 *v0 = param1;

    if ((v0->unk_00 == 1) || (v0->unk_08 == -1)) {
        return;
    }

    v0->unk_14++;

    {
        u32 v1 = 0;
        MtxFx33 v2;
        VecFx32 v3, v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Simple3DRenderObj *v5 = &v0->unk_24.unk_08->unk_18;

        switch (v0->unk_08) {
        case 0:
            v1 = 180;
            break;
        case 1:
            break;
        case 2:
            v1 = 270;
            break;
        case 3:
            v1 = 90;
            break;
        }

        MTX_Rot33Angles(&v2, 0, v1, 0);
        OverworldAnimManager_GetPosition(param0, &v3);
        Simple3D_DrawRenderObj(v5, &v3, &v4, &v2);
    }
}

void ov5_021F2838(OverworldAnimManager *param0, int param1)
{
    UnkStruct_ov5_021F26F0 *v0 = OverworldAnimManager_GetFuncsContext(param0);

    v0->unk_18 = param1;
    v0->unk_1C = FX32_ONE;
    v0->unk_20 = 0x400;
}

static const OverworldAnimManagerFuncs Unk_ov5_02200490 = {
    (sizeof(UnkStruct_ov5_021F26F0)),
    ov5_021F26A8,
    ov5_021F26F0,
    ov5_021F2708,
    ov5_021F27B4
};
