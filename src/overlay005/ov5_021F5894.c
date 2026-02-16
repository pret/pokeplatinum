#include "overlay005/ov5_021F5894.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/field_effect_manager.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    FieldEffectManager *unk_00;
    Simple3DModel unk_04;
    Simple3DAnimation unk_18;
} UnkStruct_021F58C0;

typedef struct {
    FieldEffectManager *unk_00;
    UnkStruct_021F58C0 *unk_04;
} UnkStruct_021F58FC;

typedef struct {
    Simple3DAnimation unk_00;
    Simple3DRenderObj unk_24;
    UnkStruct_021F58FC unk_78;
} UnkStruct_021F5988;

static void ov5_021F58C0(UnkStruct_021F58C0 *param0);
static void ov5_021F58E8(UnkStruct_021F58C0 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200B68;

void *ov5_021F5894(FieldEffectManager *param0)
{
    UnkStruct_021F58C0 *v0 = FieldEffectManager_HeapAllocInit(param0, (sizeof(UnkStruct_021F58C0)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F58C0(v0);
    return v0;
}

void ov5_021F58B0(void *param0)
{
    UnkStruct_021F58C0 *v0 = param0;

    ov5_021F58E8(v0);
    FieldEffectManager_HeapFree(v0);
}

static void ov5_021F58C0(UnkStruct_021F58C0 *param0)
{
    FieldEffectManager_LoadModel(param0->unk_00, &param0->unk_04, 0, 91, 0);
    FieldEffectManager_LoadAnimation(param0->unk_00, &param0->unk_18, 0, 163, 0);
}

static void ov5_021F58E8(UnkStruct_021F58C0 *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
    Simple3D_FreeAnimation(&param0->unk_18);
}

void ov5_021F58FC(MapObject *param0, int param1, int param2, int param3)
{
    int v0, v1, v2;
    UnkStruct_021F58FC v3;
    VecFx32 v4;

    v3.unk_00 = MapObject_GetFieldEffectManager(param0);
    v3.unk_04 = FieldEffectManager_GetRendererContext(v3.unk_00, 10);

    MapObject_GetPosPtr(param0, &v4);

    v2 = MapObject_GetFacingDir(param0);

    switch (v2) {
    case 0:
        v4.z -= (16 * FX32_ONE);
        break;
    case 1:
        v4.z += (16 * FX32_ONE);
        break;
    case 3:
        v4.x += (16 * FX32_ONE);
        break;
    case 2:
        v4.x -= (16 * FX32_ONE);
        break;
    }

    v1 = 0;
    v0 = MapObject_CalculateTaskPriority(param0, 2);

    FieldEffectManager_InitAnimManager(v3.unk_00, &Unk_ov5_02200B68, &v4, v1, &v3, v0);
}

static int ov5_021F5988(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;
    const UnkStruct_021F58FC *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_78 = *v1;

    FieldEffectManager_ApplyAnimCopyToModel(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_04, &v0->unk_78.unk_04->unk_18, 0);
    Simple3D_CreateRenderObjectWithAnim(&v0->unk_24, &v0->unk_78.unk_04->unk_04, &v0->unk_00);

    return 1;
}

static void ov5_021F59C0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;

    Simple3D_FreeAnimation(&v0->unk_00);
}

static void ov5_021F59CC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;

    if (Simple3D_HasAnimationReachedEnd(&v0->unk_00) == 1) {
        FieldEffectManager_FinishAnimManager(param0);
        return;
    }

    Simple3D_UpdateAnim(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F59F4(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_021F5988 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_24, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200B68 = {
    (sizeof(UnkStruct_021F5988)),
    ov5_021F5988,
    ov5_021F59C0,
    ov5_021F59CC,
    ov5_021F59F4
};
