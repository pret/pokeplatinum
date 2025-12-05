#include "overlay005/ov5_021F23D0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DAnimation unk_18;
} UnkStruct_ov5_021F23FC;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F23FC *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F2438;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F2438 unk_10;
    Simple3DAnimation unk_1C;
    Simple3DRenderObj unk_40;
} UnkStruct_ov5_021F247C;

static void ov5_021F23FC(UnkStruct_ov5_021F23FC *param0);
static void ov5_021F2424(UnkStruct_ov5_021F23FC *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200464;

void *ov5_021F23D0(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F23FC *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F23FC)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F23FC(v0);
    return v0;
}

void ov5_021F23EC(void *param0)
{
    UnkStruct_ov5_021F23FC *v0 = param0;

    ov5_021F2424(v0);
    ov5_021DF554(v0);
}

static void ov5_021F23FC(UnkStruct_ov5_021F23FC *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 78, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 165, 0);
}

static void ov5_021F2424(UnkStruct_ov5_021F23FC *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
    Simple3D_FreeAnimation(&param0->unk_18);
}

OverworldAnimManager *ov5_021F2438(MapObject *param0)
{
    OverworldAnimManager *v0;
    UnkStruct_ov5_021DF47C *v1;
    UnkStruct_ov5_021F23FC *v2;
    UnkStruct_ov5_021F2438 v3;

    v1 = ov5_021DF578(param0);
    v2 = ov5_021DF55C(v1, 13);

    v3.unk_00 = v1;
    v3.unk_04 = v2;
    v3.unk_08 = param0;

    {
        VecFx32 v4 = { 0, 0, 0 };
        int v5 = sub_02062758(param0, 2);

        v0 = ov5_021DF72C(v1, &Unk_ov5_02200464, &v4, 0, &v3, v5);
    }

    return v0;
}

void ov5_021F247C(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F247C *v0 = OverworldAnimManager_GetFuncsContext(param0);

    v0->unk_0C = 1;
}

static int ov5_021F2488(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F247C *v0;
    const UnkStruct_ov5_021F2438 *v1;

    v0 = param1;
    v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_10 = *v1;

    ov5_021DFB40(v0->unk_10.unk_00, &v0->unk_1C, &v0->unk_10.unk_04->unk_04, &v0->unk_10.unk_04->unk_18, 0);
    Simple3D_CreateRenderObjectWithAnim(&v0->unk_40, &v0->unk_10.unk_04->unk_04, &v0->unk_1C);

    v0->unk_04 = MapObject_GetLocalID(v0->unk_10.unk_08);
    v0->unk_08 = sub_02062918(v0->unk_10.unk_08);

    {
        VecFx32 v2, v3;
        MapObject *v4 = v0->unk_10.unk_08;

        MapObject_GetPosPtr(v4, &v2);
        MapObject_GetSpriteJumpOffset(v4, &v3);

        v2.x += v3.x + 0;
        v2.y += v3.y + 0;
        v2.z += v3.z + (FX32_ONE * 6) - (FX32_ONE * 6);

        OverworldAnimManager_SetPosition(param0, &v2);
    }

    return 1;
}

static void ov5_021F2510(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F247C *v0 = param1;
    Simple3D_FreeAnimation(&v0->unk_1C);
}

static void ov5_021F251C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F247C *v0 = param1;
    MapObject *v1 = v0->unk_10.unk_08;

    if (v0->unk_0C == 0) {
        if (sub_02062764(v1, v0->unk_04, v0->unk_08) == 0) {
            ov5_021DF74C(param0);
            return;
        }
    } else {
        if (Simple3D_HasAnimationReachedEnd(&v0->unk_1C) == 1) {
            ov5_021DF74C(param0);
            return;
        }

        Simple3D_UpdateAnim(&v0->unk_1C, FX32_ONE, 0);
    }

    if (v0->unk_0C == 0) {
        VecFx32 v2, v3;

        MapObject_GetPosPtr(v1, &v2);
        MapObject_GetSpriteJumpOffset(v1, &v3);

        v2.x += v3.x + 0;
        v2.y += v3.y + 0;
        v2.z += v3.z + (FX32_ONE * 6) - (FX32_ONE * 6);

        OverworldAnimManager_SetPosition(param0, &v2);
    }
}

static void ov5_021F25A4(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F247C *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_40, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200464 = {
    sizeof(UnkStruct_ov5_021F247C),
    ov5_021F2488,
    ov5_021F2510,
    ov5_021F251C,
    ov5_021F25A4
};
