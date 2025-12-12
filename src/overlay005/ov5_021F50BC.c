#include "overlay005/ov5_021F50BC.h"

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
} UnkStruct_021F50E8;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_021F50E8 *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F511C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    VecFx32 unk_18;
    VecFx32 unk_24;
    UnkStruct_ov5_021F511C unk_30;
} UnkStruct_ov5_021F5158;

static void ov5_021F50E8(UnkStruct_021F50E8 *param0);
static void ov5_021F5110(UnkStruct_021F50E8 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200A50;

void *ov5_021F50BC(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F50E8 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F50E8)), 0, 0);
    v0->unk_08 = param0;

    ov5_021F50E8(v0);
    return v0;
}

void ov5_021F50D8(void *param0)
{
    UnkStruct_021F50E8 *v0 = param0;

    ov5_021F5110(v0);
    ov5_021DF554(v0);
}

static void ov5_021F50E8(UnkStruct_021F50E8 *param0)
{
    ov5_021DFB00(param0->unk_08, &param0->unk_0C, 0, 22, 0);
    Simple3D_CreateRenderObject(&param0->unk_20, &param0->unk_0C);
}

static void ov5_021F5110(UnkStruct_021F50E8 *param0)
{
    Simple3D_FreeModel(&param0->unk_0C);
}

OverworldAnimManager *ov5_021F511C(MapObject *param0)
{
    int v0, v1;
    UnkStruct_ov5_021F511C v2;
    UnkStruct_ov5_021DF47C *v3;
    VecFx32 v4;
    OverworldAnimManager *v5;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 5);
    v2.unk_08 = param0;

    MapObject_GetPosPtr(param0, &v4);

    v0 = 0;
    v5 = ov5_021DF72C(v3, &Unk_ov5_02200A50, &v4, v0, &v2, 0xff);

    return v5;
}

static int ov5_021F5158(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F5158 *v0;
    const UnkStruct_ov5_021F511C *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_30 = *v1;
    v0->unk_08 = MapObject_GetLocalID(v0->unk_30.unk_08);
    v0->unk_0C = sub_02062918(v0->unk_30.unk_08);
    v0->unk_24.y = (FX32_ONE * 6);

    MapObject_GetPosPtr(v0->unk_30.unk_08, &v2);
    OverworldAnimManager_SetPosition(param0, &v2);

    return 1;
}

static void ov5_021F51A0(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F51A4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F5158 *v0;
    MapObject *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = v0->unk_30.unk_08;

    GF_ASSERT(sub_02062764(v1, v0->unk_08, v0->unk_0C) != 0);

    switch (v0->unk_00) {
    case 0:
        MapObject_GetPosPtr(v1, &v2);
        v2.z += (FX32_ONE * -10);
        OverworldAnimManager_SetPosition(param0, &v2);
        break;
    case 1:
        v0->unk_04++;

        if (v0->unk_04 >= 30) {
            v0->unk_00++;
        }
        break;
    case 2:
        break;
    }
}

static void ov5_021F5204(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F5158 *v0 = param1;

    {
        VecFx32 v1, v2 = { FX32_ONE, FX32_ONE, FX32_ONE };
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

        Simple3D_DrawRenderObjSimple(&v0->unk_30.unk_04->unk_20, &v1, &v2, &v3);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200A50 = {
    (sizeof(UnkStruct_ov5_021F5158)),
    ov5_021F5158,
    ov5_021F51A0,
    ov5_021F51A4,
    ov5_021F5204
};
