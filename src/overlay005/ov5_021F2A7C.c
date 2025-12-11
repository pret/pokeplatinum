#include "overlay005/ov5_021F2A7C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DAnimation unk_18;
} UnkStruct_ov5_021F2AA8;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F2AA8 *unk_04;
} UnkStruct_ov5_021F2AE4;

typedef struct {
    Simple3DAnimation unk_00;
    Simple3DRenderObj unk_24;
    UnkStruct_ov5_021F2AE4 unk_78;
} UnkStruct_ov5_021F2B48;

static void ov5_021F2AA8(UnkStruct_ov5_021F2AA8 *param0);
static void ov5_021F2AD0(UnkStruct_ov5_021F2AA8 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_022004C4;

void *ov5_021F2A7C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F2AA8 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F2AA8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F2AA8(v0);
    return v0;
}

void ov5_021F2A98(void *param0)
{
    UnkStruct_ov5_021F2AA8 *v0 = param0;

    ov5_021F2AD0(v0);
    ov5_021DF554(v0);
}

static void ov5_021F2AA8(UnkStruct_ov5_021F2AA8 *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 15, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 160, 0);
}

static void ov5_021F2AD0(UnkStruct_ov5_021F2AA8 *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
    Simple3D_FreeAnimation(&param0->unk_18);
}

void ov5_021F2AE4(MapObject *param0, int param1, int param2, int param3)
{
    int v0, v1;
    UnkStruct_ov5_021F2AE4 v2;
    VecFx32 v3;

    v2.unk_00 = ov5_021DF578(param0);
    v2.unk_04 = ov5_021DF55C(v2.unk_00, 17);

    sub_02064450(param1, param3, &v3);

    v3.z += ((param2) << 3) + (FX32_ONE * 1);
    v3.y = (((MapObject_GetYPrev(param0)) << 3) * FX32_ONE) + (-FX32_ONE * 8);

    v1 = 0;
    v0 = sub_02062758(param0, 2);

    ov5_021DF72C(v2.unk_00, &Unk_ov5_022004C4, &v3, v1, &v2, v0);
}

static int ov5_021F2B48(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2B48 *v0 = param1;
    const UnkStruct_ov5_021F2AE4 *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_04, &v0->unk_78.unk_04->unk_18, 0);
    Simple3D_CreateRenderObjectWithAnim(&v0->unk_24, &v0->unk_78.unk_04->unk_04, &v0->unk_00);

    return 1;
}

static void ov5_021F2B80(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2B48 *v0 = param1;

    Simple3D_FreeAnimation(&v0->unk_00);
}

static void ov5_021F2B8C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2B48 *v0 = param1;

    if (Simple3D_HasAnimationReachedEnd(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    Simple3D_UpdateAnim(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F2BB4(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F2B48 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_24, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_022004C4 = {
    sizeof(UnkStruct_ov5_021F2B48),
    ov5_021F2B48,
    ov5_021F2B80,
    ov5_021F2B8C,
    ov5_021F2BB4
};
