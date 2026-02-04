#include "overlay005/ov5_021F600C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system.h"
#include "overlay005/field_effect_manager.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "unk_02020AEC.h"

typedef struct UnkStruct_ov5_021F600C_t {
    FieldEffectManager *unk_00;
} UnkStruct_ov5_021F600C;

typedef struct {
    FieldSystem *fieldSystem;
    FieldEffectManager *unk_04;
    UnkStruct_ov5_021F600C *unk_08;
    MapObject *unk_0C;
} UnkStruct_ov5_021F6094;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F6094 unk_10;
    UnkStruct_020216E0 *unk_20;
} UnkStruct_ov5_021F6134;

static void ov5_021F6038(UnkStruct_ov5_021F600C *param0);
static void ov5_021F6074(UnkStruct_ov5_021F600C *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200BD8;
const UnkStruct_020217F4 Unk_ov5_02200BEC[];

void *ov5_021F600C(FieldEffectManager *param0)
{
    UnkStruct_ov5_021F600C *v0 = FieldEffectManager_HeapAllocInit(param0, (sizeof(UnkStruct_ov5_021F600C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F6038(v0);
    return v0;
}

void ov5_021F6028(void *param0)
{
    UnkStruct_ov5_021F600C *v0 = param0;

    ov5_021F6074(v0);
    FieldEffectManager_HeapFree(v0);
}

static void ov5_021F6038(UnkStruct_ov5_021F600C *param0)
{
    ov5_021DF9E0(param0->unk_00, 4, 87);
    ov5_021DFA3C(param0->unk_00, 3, 6, 1);
    ov5_021DF864(param0->unk_00, 4, 4, 0, 3, 0, Unk_ov5_02200BEC);
}

static void ov5_021F6074(UnkStruct_ov5_021F600C *param0)
{
    ov5_021DFA08(param0->unk_00, 4);
    ov5_021DFA7C(param0->unk_00, 3);
    ov5_021DF9D4(param0->unk_00, 4);
}

OverworldAnimManager *ov5_021F6094(MapObject *param0)
{
    UnkStruct_ov5_021F6094 v0;
    FieldEffectManager *v1;
    OverworldAnimManager *v2;

    v1 = MapObject_GetFieldEffectManager(param0);

    v0.fieldSystem = MapObject_FieldSystem(param0);
    v0.unk_04 = v1;
    v0.unk_08 = FieldEffectManager_GetRendererContext(v1, 22);
    v0.unk_0C = param0;

    {
        VecFx32 v3 = { 0, 0, 0 };
        int v4 = MapObject_CalculateTaskPriority(param0, 2);

        v2 = FieldEffectManager_InitAnimManager(v1, &Unk_ov5_02200BD8, &v3, 0, &v0, v4);
    }

    return v2;
}

static int ov5_021F60E4(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0 = { 0, 0, 0 };
    UnkStruct_ov5_021F6134 *v1;
    const UnkStruct_ov5_021F6094 *v2;

    v1 = param1;
    v2 = OverworldAnimManager_GetUserData(param0);

    v1->unk_10 = *v2;
    v1->unk_04 = MapObject_GetLocalID(v1->unk_10.unk_0C);
    v1->unk_08 = MapObject_GetMapID(v1->unk_10.unk_0C);

    OverworldAnimManager_SetPosition(param0, &v0);
    v1->unk_20 = ov5_021DF84C(v1->unk_10.unk_04, 4, &v0);

    return 1;
}

static void ov5_021F6134(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F6134 *v0 = param1;
    sub_020211FC(v0->unk_20);
}

static void ov5_021F6140(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F6134 *v0 = param1;
    MapObject *v1 = v0->unk_10.unk_0C;

    if (sub_02062764(v1, v0->unk_04, v0->unk_08) == 0) {
        FieldEffectManager_FinishAnimManager(param0);
        return;
    }
}

static void ov5_021F615C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0, v1;
    UnkStruct_ov5_021F6134 *v2 = param1;
    MapObject *v3 = v2->unk_10.unk_0C;

    if (sub_02062764(v3, v2->unk_04, v2->unk_08) == 0) {
        FieldEffectManager_FinishAnimManager(param0);
        return;
    }

    MapObject_GetPosPtr(v3, &v0);
    MapObject_GetSpriteJumpOffset(v3, &v1);

    v0.x += v1.x;
    v0.y += v1.y;
    v0.z += v1.z;
    v0.z += FX32_ONE * 12;

    sub_020212A8(v2->unk_20, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200BD8 = {
    sizeof(UnkStruct_ov5_021F6134),
    ov5_021F60E4,
    ov5_021F6134,
    ov5_021F6140,
    ov5_021F615C
};

static const UnkStruct_020217F4 Unk_ov5_02200BEC[] = {
    { 0x0, 0x1, 0x1 },
    { 0x0, 0x0, 0x2 }
};
