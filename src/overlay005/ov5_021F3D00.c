#include "overlay005/ov5_021F3D00.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"
#include "unk_02069BE0.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04[4];
    Simple3DRenderObj unk_54[4];
} UnkStruct_ov5_021F3D2C;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_ov5_021F3D2C *unk_08;
    MapObject *unk_0C;
    Simple3DRenderObj *unk_10;
} UnkStruct_ov5_021F3D90;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F3D90 unk_10;
} UnkStruct_ov5_021F3E00;

static void ov5_021F3D2C(UnkStruct_ov5_021F3D2C *param0);
static void ov5_021F3D6C(UnkStruct_ov5_021F3D2C *param0);
static Simple3DRenderObj *ov5_021F3D84(UnkStruct_ov5_021F3D2C *param0, int param1);

static const OverworldAnimManagerFuncs Unk_ov5_02200688;
static const u32 Unk_ov5_02200678[4];

void *ov5_021F3D00(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F3D2C *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F3D2C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F3D2C(v0);
    return v0;
}

void ov5_021F3D1C(void *param0)
{
    UnkStruct_ov5_021F3D2C *v0 = param0;

    ov5_021F3D6C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F3D2C(UnkStruct_ov5_021F3D2C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov5_021DFB00(param0->unk_00, &param0->unk_04[v0], 0, Unk_ov5_02200678[v0], 0);
        Simple3D_CreateRenderObject(&param0->unk_54[v0], &param0->unk_04[v0]);
    }
}

static void ov5_021F3D6C(UnkStruct_ov5_021F3D2C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Simple3D_FreeModel(&param0->unk_04[v0]);
    }
}

static Simple3DRenderObj *ov5_021F3D84(UnkStruct_ov5_021F3D2C *param0, int param1)
{
    return &param0->unk_54[param1];
}

OverworldAnimManager *ov5_021F3D90(MapObject *param0, int param1)
{
    VecFx32 v0;
    OverworldAnimManager *v1;
    UnkStruct_ov5_021F3D90 v2;
    UnkStruct_ov5_021DF47C *v3 = ov5_021DF578(param0);

    {
        FieldSystem *fieldSystem = ov5_021DF574(v3);
        int v5 = MapObject_GetX(param0);
        int v6 = MapObject_GetZ(param0);

        sub_02064450(v5, v6, &v0);
        sub_020644A4(fieldSystem, &v0);
    }

    {
        v2.unk_00 = param1;
        v2.unk_04 = v3;
        v2.unk_08 = ov5_021DF55C(v3, 26);
        v2.unk_0C = param0;
        v2.unk_10 = ov5_021F3D84(v2.unk_08, param1);
    }

    {
        int v7 = sub_02062758(param0, 2);
        v1 = ov5_021DF72C(v3, &Unk_ov5_02200688, &v0, 0, &v2, v7);
    }

    return v1;
}

static int ov5_021F3E00(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F3E00 *v0 = param1;
    const UnkStruct_ov5_021F3D90 *v1 = OverworldAnimManager_GetUserData(param0);
    MapObject *v2 = v1->unk_0C;

    v0->unk_10 = *v1;
    v0->unk_08 = MapObject_GetLocalID(v2);
    v0->unk_0C = sub_02062918(v2);

    return 1;
}

static void ov5_021F3E30(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F3E00 *v0 = param1;
    MapObject *v1 = v0->unk_10.unk_0C;

    if (sub_02062764(v1, v0->unk_08, v0->unk_0C) == 1) {
        sub_0206A218(v1, NULL);
    }
}

static void ov5_021F3E50(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F3E00 *v0 = param1;
}

static void ov5_021F3E54(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F3E00 *v0 = param1;

    if (v0->unk_04 == 1) {
        return;
    }

    {
        VecFx32 v1;

        OverworldAnimManager_GetPosition(param0, &v1);
        Simple3D_DrawRenderObjWithPos(v0->unk_10.unk_10, &v1);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200688 = {
    (sizeof(UnkStruct_ov5_021F3E00)),
    ov5_021F3E00,
    ov5_021F3E30,
    ov5_021F3E50,
    ov5_021F3E54
};

static const u32 Unk_ov5_02200678[4] = {
    0x67,
    0x68,
    0x69,
    0x6A
};
