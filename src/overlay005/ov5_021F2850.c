#include "overlay005/ov5_021F2850.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/field_effect_manager.h"

#include "fx_util.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"
#include "sys_task_manager.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    SysTask *unk_0C;
    FieldEffectManager *unk_10;
    Simple3DModel unk_14;
    Simple3DRenderObj unk_28;
} UnkStruct_ov5_021F2874;

typedef struct {
    int unk_00;
    FieldEffectManager *unk_04;
    FieldSystem *fieldSystem;
    UnkStruct_ov5_021F2874 *unk_0C;
    MapObject *unk_10;
} UnkStruct_ov5_021F28F4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F28F4 unk_10;
} UnkStruct_ov5_021F2974;

static void ov5_021F2874(UnkStruct_ov5_021F2874 *param0);
static void ov5_021F287C(UnkStruct_ov5_021F2874 *param0);
static void ov5_021F288C(UnkStruct_ov5_021F2874 *param0);
static void ov5_021F28C0(UnkStruct_ov5_021F2874 *param0);
static void ov5_021F28D4(UnkStruct_ov5_021F2874 *param0);
static void ov5_021F28E4(UnkStruct_ov5_021F2874 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_022004B0;

void *ov5_021F2850(FieldEffectManager *param0)
{
    UnkStruct_ov5_021F2874 *v0 = FieldEffectManager_HeapAllocInit(param0, (sizeof(UnkStruct_ov5_021F2874)), 0, 0);
    v0->unk_10 = param0;

    return v0;
}

void ov5_021F2864(void *param0)
{
    UnkStruct_ov5_021F2874 *v0 = param0;

    ov5_021F28C0(v0);
    FieldEffectManager_HeapFree(v0);
}

static void ov5_021F2874(UnkStruct_ov5_021F2874 *param0)
{
    param0->unk_00++;
}

static void ov5_021F287C(UnkStruct_ov5_021F2874 *param0)
{
    param0->unk_00--;

    GF_ASSERT(param0->unk_00 >= 0);
}

static void ov5_021F288C(UnkStruct_ov5_021F2874 *param0)
{
    if (param0->unk_04 == 0) {
        FieldEffectManager_LoadModel(param0->unk_10, &param0->unk_14, 0, 82, 1);
        Simple3D_CreateRenderObject(&param0->unk_28, &param0->unk_14);
        param0->unk_04 = 1;
    }
}

static void ov5_021F28C0(UnkStruct_ov5_021F2874 *param0)
{
    if (param0->unk_04 == 1) {
        param0->unk_04 = 0;
        Simple3D_FreeModel(&param0->unk_14);
    }
}

static void ov5_021F28D4(UnkStruct_ov5_021F2874 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F288C(param0);
    }
}

static void ov5_021F28E4(UnkStruct_ov5_021F2874 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F28C0(param0);
    }
}

OverworldAnimManager *ov5_021F28F4(MapObject *param0, int param1, int param2, int param3, int param4)
{
    int v0;
    OverworldAnimManager *v1;
    UnkStruct_ov5_021F28F4 v2;
    VecFx32 v3 = { 0, 0, 0 };
    FieldEffectManager *v4 = MapObject_GetFieldEffectManager(param0);

    v2.unk_00 = param3;
    v2.unk_04 = v4;
    v2.fieldSystem = MapObject_FieldSystem(param0);
    v2.unk_0C = FieldEffectManager_GetRendererContext(v4, 16);
    v2.unk_10 = param0;

    if (param4 == 0) {
        v3.x = (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
        v3.z = (((param2) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
        MapObject_RecalculatePositionHeight(v2.fieldSystem, &v3);
    } else {
        MapObject_GetPosPtr(param0, &v3);
    }

    v0 = MapObject_CalculateTaskPriority(param0, 2);
    v1 = FieldEffectManager_InitAnimManager(v4, &Unk_ov5_022004B0, &v3, param4, &v2, v0);

    return v1;
}

void ov5_021F2974(OverworldAnimManager *param0, int param1)
{
    UnkStruct_ov5_021F2974 *v0 = OverworldAnimManager_GetFuncsContext(param0);
    v0->unk_0C = param1;
}

static int ov5_021F2980(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2974 *v0 = param1;
    const UnkStruct_ov5_021F28F4 *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_10 = *v1;
    v0->unk_04 = v1->unk_00;
    v0->unk_0C = OverworldAnimManager_GetID(param0);

    ov5_021F28D4(v0->unk_10.unk_0C);
    ov5_021F2874(v0->unk_10.unk_0C);

    return 1;
}

static void ov5_021F29BC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2974 *v0 = param1;

    ov5_021F287C(v0->unk_10.unk_0C);
    ov5_021F28E4(v0->unk_10.unk_0C);
}

static void ov5_021F29D0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2974 *v0 = param1;
    MapObject *v1 = v0->unk_10.unk_10;

    if (v0->unk_0C == 0) {
        return;
    }

    {
        VecFx32 v2 = { 0, 0, 0 };
        MapObject_SetSpritePosOffset(v1, &v2);
    }

    {
        VecFx32 v3;

        MapObject_GetPosPtr(v1, &v3);
        v3.y += 0;
        OverworldAnimManager_SetPosition(param0, &v3);
    }
}

static void ov5_021F2A04(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F2974 *v0 = param1;

    if (v0->unk_00 == 1) {
        return;
    }

    {
        v0->unk_08++;
    }

    {
        u32 v1 = 0;
        MtxFx33 v2;
        VecFx32 v3, v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Simple3DRenderObj *v5 = &v0->unk_10.unk_0C->unk_28;

        switch (v0->unk_04) {
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

static const OverworldAnimManagerFuncs Unk_ov5_022004B0 = {
    sizeof(UnkStruct_ov5_021F2974),
    ov5_021F2980,
    ov5_021F29BC,
    ov5_021F29D0,
    ov5_021F2A04
};
