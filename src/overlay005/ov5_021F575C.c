#include "overlay005/ov5_021F575C.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    Simple3DModel unk_08;
    Simple3DAnimation unk_1C;
} UnkStruct_021F5788;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_021F5788 *unk_04;
} UnkStruct_ov5_021F57C8;

typedef struct {
    Simple3DAnimation unk_00;
    Simple3DRenderObj unk_24;
    UnkStruct_ov5_021F57C8 unk_78;
} UnkStruct_ov5_021F580C;

static void ov5_021F5788(UnkStruct_021F5788 *param0);
static void ov5_021F57B4(UnkStruct_021F5788 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200B54;

void *ov5_021F575C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F5788 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F5788)), 0, 0);
    v0->unk_04 = param0;

    ov5_021F5788(v0);
    return v0;
}

void ov5_021F5778(void *param0)
{
    UnkStruct_021F5788 *v0 = param0;

    ov5_021F57B4(v0);
    ov5_021DF554(v0);
}

static void ov5_021F5788(UnkStruct_021F5788 *param0)
{
    ov5_021DFB00(param0->unk_04, &param0->unk_08, 0, 92, 0);
    ov5_021DFB24(param0->unk_04, &param0->unk_1C, 0, 164, 0);
}

static void ov5_021F57B4(UnkStruct_021F5788 *param0)
{
    Simple3D_FreeModel(&param0->unk_08);
    Simple3D_FreeAnimation(&param0->unk_1C);
}

void ov5_DisplayBuriedSphereSparkle(FieldSystem *fieldSystem, int x, int z)
{
    UnkStruct_ov5_021F57C8 v2;
    VecFx32 v3;

    v2.unk_00 = fieldSystem->unk_40;
    v2.unk_04 = ov5_021DF55C(v2.unk_00, 9);

    v3.x = ((x << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    v3.y = 0;
    v3.z = ((z << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    ov5_021DF72C(v2.unk_00, &Unk_ov5_02200B54, &v3, 0, &v2, 0xff);
}

static int ov5_021F580C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F580C *v0 = param1;
    const UnkStruct_ov5_021F57C8 *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_08, &v0->unk_78.unk_04->unk_1C, 0);
    Simple3D_CreateRenderObjectWithAnim(&v0->unk_24, &v0->unk_78.unk_04->unk_08, &v0->unk_00);

    return 1;
}

static void ov5_021F5844(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F580C *v0 = param1;
    Simple3D_FreeAnimation(&v0->unk_00);
}

static void ov5_021F5850(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F580C *v0 = param1;

    if (Simple3D_HasAnimationReachedEnd(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    Simple3D_UpdateAnim(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F5878(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F580C *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_24, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200B54 = {
    (sizeof(UnkStruct_ov5_021F580C)),
    ov5_021F580C,
    ov5_021F5844,
    ov5_021F5850,
    ov5_021F5878
};
