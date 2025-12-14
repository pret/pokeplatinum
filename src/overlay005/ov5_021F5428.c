#include "overlay005/ov5_021F5428.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "fx_util.h"
#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov5_021DF47C *unk_08;
    Simple3DModel unk_0C;
    Simple3DRenderObj unk_20;
    MapObject *unk_74;
} UnkStruct_ov5_021F5454;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F5454 *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F5488;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    VecFx32 unk_18;
    VecFx32 unk_24;
    int unk_30;
    UnkStruct_ov5_021F5488 unk_34;
} UnkStruct_ov5_021F54C4;

static void ov5_021F5454(UnkStruct_ov5_021F5454 *param0);
static void ov5_021F547C(UnkStruct_ov5_021F5454 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200AD8;

void *ov5_021F5428(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F5454 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F5454)), 0, 0);
    v0->unk_08 = param0;

    ov5_021F5454(v0);
    return v0;
}

void ov5_021F5444(void *param0)
{
    UnkStruct_ov5_021F5454 *v0 = param0;

    ov5_021F547C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F5454(UnkStruct_ov5_021F5454 *param0)
{
    ov5_021DFB00(param0->unk_08, &param0->unk_0C, 0, 24, 0);
    Simple3D_CreateRenderObject(&param0->unk_20, &param0->unk_0C);
}

static void ov5_021F547C(UnkStruct_ov5_021F5454 *param0)
{
    Simple3D_FreeModel(&param0->unk_0C);
}

OverworldAnimManager *ov5_021F5488(MapObject *param0)
{
    int v0, v1;
    UnkStruct_ov5_021F5488 v2;
    UnkStruct_ov5_021DF47C *v3;
    VecFx32 v4;
    OverworldAnimManager *v5;
    UnkStruct_ov5_021F54C4 *v6;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 7);
    v2.unk_08 = param0;

    MapObject_GetPosPtr(param0, &v4);

    v0 = 0;
    v5 = ov5_021DF72C(v3, &Unk_ov5_02200AD8, &v4, v0, &v2, 0xff);

    return v5;
}

static int ov5_021F54C4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F54C4 *v0;
    const UnkStruct_ov5_021F5488 *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_34 = *v1;
    v0->unk_08 = MapObject_GetLocalID(v0->unk_34.unk_08);
    v0->unk_0C = sub_02062918(v0->unk_34.unk_08);
    v0->unk_24.y = (FX32_ONE * 6);

    MapObject_GetPosPtr(v0->unk_34.unk_08, &v2);
    OverworldAnimManager_SetPosition(param0, &v2);

    v0->unk_30 = 60;

    return 1;
}

static void ov5_021F5510(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F5514(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F54C4 *v0;
    MapObject *v1;
    VecFx32 v2;

    v0 = param1;

    if (v0->unk_30 != 0) {
        v0->unk_30--;
    } else {
        ov5_021DF74C(param0);
        return;
    }

    v1 = v0->unk_34.unk_08;
    MapObject_GetPosPtr(v1, &v2);

    v2.z += (FX32_ONE * -10);
    OverworldAnimManager_SetPosition(param0, &v2);
}

static void ov5_021F554C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F54C4 *v0 = param1;

    {
        VecFx32 v1;
        VecFx32 v2 = { FX32_ONE, FX32_ONE, FX32_ONE };
        MtxFx33 v3 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

        OverworldAnimManager_GetPosition(param0, &v1);

        v1.y += (FX32_ONE * 25);
        v1.z += -(FX32_ONE * 5);

        {
            const MtxFx43 *v4 = NNS_G3dGlbGetInvCameraMtx();
            MtxFx33 v5;

            MTX_Rot33Angles(&v3, 90, 0, 0);

            MTX_Copy43To33(v4, &v5);
            MTX_Concat33(&v3, &v5, &v3);
        }

        Simple3D_DrawRenderObjSimple(&v0->unk_34.unk_04->unk_20, &v1, &v2, &v3);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200AD8 = {
    (sizeof(UnkStruct_ov5_021F54C4)),
    ov5_021F54C4,
    ov5_021F5510,
    ov5_021F5514,
    ov5_021F554C
};
