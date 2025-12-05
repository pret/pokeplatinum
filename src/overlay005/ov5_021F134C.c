#include "overlay005/ov5_021F134C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "rtc.h"
#include "simple3d.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
    VecFx32 unk_14;
    UnkStruct_ov5_021DF47C *unk_20;
    SysTask *unk_24;
    Simple3DModel unk_28[3];
    Simple3DRenderObj unk_64[3];
} UnkStruct_ov5_021F1388;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F1388 *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F1570;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_ov5_021F1570 unk_14;
} UnkStruct_ov5_021F15B4;

static void ov5_021F1388(UnkStruct_ov5_021F1388 *param0);
static void ov5_021F13AC(UnkStruct_ov5_021F1388 *param0);
static void ov5_021F13B8(UnkStruct_ov5_021F1388 *param0, VecFx32 *param1);
static int ov5_021F13C8(int param0);
static void ov5_021F13D4(UnkStruct_ov5_021F1388 *param0, int param1);
static void ov5_021F1400(fx32 *param0, fx32 param1, fx32 param2);
static void ov5_021F1424(SysTask *param0, void *param1);
static void ov5_021F14FC(UnkStruct_ov5_021F1388 *param0);
static void ov5_021F153C(UnkStruct_ov5_021F1388 *param0);
static void ov5_021F1554(UnkStruct_ov5_021F1388 *param0, int param1);

static const OverworldAnimManagerFuncs Unk_ov5_022002AC;
static const OverworldAnimManagerFuncs Unk_ov5_02200298;
const VecFx32 Unk_ov5_022002E4[];
const fx32 Unk_ov5_02200284[];
static const int Unk_ov5_02200278[3];

void *ov5_021F134C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F1388 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F1388)), 0, 0);
    v0->unk_20 = param0;

    ov5_021F14FC(v0);
    ov5_021F1388(v0);

    return v0;
}

void ov5_021F1370(void *param0)
{
    UnkStruct_ov5_021F1388 *v0 = param0;

    ov5_021F13AC(v0);
    ov5_021F153C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F1388(UnkStruct_ov5_021F1388 *param0)
{
    FieldSystem *fieldSystem = ov5_021DF574(param0->unk_20);
    int v1 = sub_02062858(fieldSystem->mapObjMan) - 1;
    SysTask *v2 = SysTask_Start(ov5_021F1424, param0, v1);

    param0->unk_24 = v2;
}

static void ov5_021F13AC(UnkStruct_ov5_021F1388 *param0)
{
    SysTask_Done(param0->unk_24);
}

static void ov5_021F13B8(UnkStruct_ov5_021F1388 *param0, VecFx32 *param1)
{
    *param1 = param0->unk_14;
}

static int ov5_021F13C8(int param0)
{
    return param0 / FX32_ONE;
}

static void ov5_021F13D4(UnkStruct_ov5_021F1388 *param0, int param1)
{
    param0->unk_10 = Unk_ov5_02200284[param0->unk_04];
    param0->unk_14 = Unk_ov5_022002E4[param0->unk_04];
}

static void ov5_021F1400(fx32 *param0, fx32 param1, fx32 param2)
{
    if ((*param0) < param1) {
        (*param0) += param2;

        if ((*param0) > param1) {
            (*param0) = param1;
        }
    } else if ((*param0) > param1) {
        (*param0) -= param2;

        if ((*param0) < param1) {
            (*param0) = param1;
        }
    }
}

static void ov5_021F1424(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov5_021F1388 *v1 = param1;

    v0 = GetTimeOfDay();

    switch (v1->unk_00) {
    case 0:
        v1->unk_04 = v0;
        ov5_021F13D4(v1, v1->unk_04);
        ov5_021F1554(v1, ov5_021F13C8(v1->unk_10));
        v1->unk_00++;
        break;
    case 1:
        if (v1->unk_04 == v0) {
            break;
        }

        v1->unk_00++;
    case 2: {
        fx32 v2 = Unk_ov5_02200284[v0];
        VecFx32 v3 = Unk_ov5_022002E4[v0];

        ov5_021F1400(&v1->unk_14.x, v3.x, 0x10);
        ov5_021F1400(&v1->unk_14.y, v3.y, 0x10);
        ov5_021F1400(&v1->unk_14.z, v3.z, 0x10);
        ov5_021F1400(&v1->unk_10, v2, 0x200);
        ov5_021F1554(v1, ov5_021F13C8(v1->unk_10));

        if ((v3.x == v1->unk_14.x) && (v3.y == v1->unk_14.y) && (v3.z == v1->unk_14.z) && (v2 == v1->unk_10)) {
            v1->unk_04 = v0;
            v1->unk_00 = 1;
        }
    } break;
    }
}

static void ov5_021F14FC(UnkStruct_ov5_021F1388 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        ov5_021DFB00(param0->unk_20, &param0->unk_28[v0], 0, Unk_ov5_02200278[v0], 0);
        Simple3D_CreateRenderObject(&param0->unk_64[v0], &param0->unk_28[v0]);
    }
}

static void ov5_021F153C(UnkStruct_ov5_021F1388 *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        Simple3D_FreeModel(&param0->unk_28[v0]);
    }
}

static void ov5_021F1554(UnkStruct_ov5_021F1388 *param0, int param1)
{
    NNS_G3dMdlUseMdlAlpha(param0->unk_28[0].g3DModel);
    NNS_G3dMdlSetMdlAlphaAll(param0->unk_28[0].g3DModel, param1);
}

void ov5_021F1570(MapObject *param0)
{
    int v0, v1;
    UnkStruct_ov5_021F1570 v2;
    UnkStruct_ov5_021DF47C *v3;
    VecFx32 v4;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 0);
    v2.unk_08 = param0;

    MapObject_GetPosPtr(param0, &v4);

    v0 = 0;
    v1 = sub_02062758(param0, 2);

    ov5_021DF72C(v3, &Unk_ov5_022002AC, &v4, v0, &v2, v1);
}

static int ov5_021F15B4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F15B4 *v0;
    const UnkStruct_ov5_021F1570 *v1;

    v0 = param1;
    v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_14 = *v1;
    v0->unk_10 = OverworldAnimManager_GetID(param0);
    v0->unk_00 = MapObject_GetGraphicsID(v0->unk_14.unk_08);
    v0->unk_04 = MapObject_GetLocalID(v0->unk_14.unk_08);

    if (sub_02062E94(v0->unk_14.unk_08) == 1) {
        v0->unk_08 = sub_02062C18(v0->unk_14.unk_08);
    } else {
        v0->unk_08 = sub_02062918(v0->unk_14.unk_08);
    }

    return 1;
}

static void ov5_021F1600(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F1604(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F15B4 *v0 = param1;
    MapObject *v1 = v0->unk_14.unk_08;

    if (sub_020627B4(v1, v0->unk_00, v0->unk_04, v0->unk_08) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    if (MapObject_CheckManagerStatus(v1, (1 << 3))) {
        ov5_021DF74C(param0);
        return;
    }

    v0->unk_0C = 0;

    if (MapObject_CheckStatusFlag(v1, MAP_OBJ_STATUS_HIDE | MAP_OBJ_STATUS_HIDE_SHADOW) == 1) {
        v0->unk_0C = 1;
        return;
    }

    {
        VecFx32 v2;

        MapObject_GetPosPtr(v1, &v2);
        OverworldAnimManager_SetPosition(param0, &v2);
    }
}

static void ov5_021F1670(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F15B4 *v0 = param1;

    if (v0->unk_0C == 0) {
        VecFx32 v1, v2;
        MtxFx33 v3 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
        Simple3DRenderObj *v4 = &v0->unk_14.unk_04->unk_64[0];

        ov5_021F13B8(v0->unk_14.unk_04, &v2);
        OverworldAnimManager_GetPosition(param0, &v1);

        v1.x += (FX32_ONE * -1) / 2;
        v1.y += (FX32_ONE * -4);
        v1.z += (FX32_ONE * 1);

        Simple3D_DrawRenderObj(v4, &v1, &v2, &v3);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_022002AC = {
    sizeof(UnkStruct_ov5_021F15B4),
    ov5_021F15B4,
    ov5_021F1600,
    ov5_021F1604,
    ov5_021F1670
};

OverworldAnimManager *ov5_021F16D4(MapObject *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021F1570 v1;
    UnkStruct_ov5_021DF47C *v2;
    VecFx32 v3;

    v2 = ov5_021DF578(param0);

    v1.unk_00 = v2;
    v1.unk_04 = ov5_021DF55C(v2, 0);
    v1.unk_08 = param0;

    MapObject_GetPosPtr(param0, &v3);

    v0 = sub_02062758(param0, 2);
    return ov5_021DF72C(v2, &Unk_ov5_02200298, &v3, param1, &v1, v0);
}

static void ov5_021F1718(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F15B4 *v0 = param1;
    MapObject *v1 = v0->unk_14.unk_08;

    if (sub_020627B4(v1, v0->unk_00, v0->unk_04, v0->unk_08) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v0->unk_0C = 0;

    if (MapObject_CheckStatusFlag(v1, MAP_OBJ_STATUS_HIDE | MAP_OBJ_STATUS_HIDE_SHADOW) == 1) {
        v0->unk_0C = 1;
        return;
    }

    {
        VecFx32 v2;

        MapObject_GetPosPtr(v1, &v2);
        OverworldAnimManager_SetPosition(param0, &v2);
    }
}

static void ov5_021F176C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F15B4 *v0 = param1;

    if (v0->unk_0C == 1) {
        return;
    }

    {
        int v1 = OverworldAnimManager_GetID(param0);
        VecFx32 v2;
        Simple3DRenderObj *v3 = &v0->unk_14.unk_04->unk_64[v1];

        OverworldAnimManager_GetPosition(param0, &v2);
        v2.x += (FX32_ONE * -1) / 2;
        v2.y += (FX32_ONE * -4);
        v2.z += (FX32_ONE * 1);
        Simple3D_DrawRenderObjWithPos(v3, &v2);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200298 = {
    (sizeof(UnkStruct_ov5_021F15B4)),
    ov5_021F15B4,
    ov5_021F1600,
    ov5_021F1718,
    ov5_021F176C
};

static const VecFx32 Unk_ov5_022002E4[] = {
    { FX32_ONE, FX32_ONE, FX32_ONE },
    { FX32_ONE + (FX32_ONE / 4), FX32_ONE, FX32_ONE + (FX32_ONE / 4) },
    { FX32_ONE + (FX32_ONE / 4), FX32_ONE, FX32_ONE },
    { FX32_ONE + (FX32_ONE / 8), FX32_ONE, FX32_ONE },
    { FX32_ONE - (FX32_ONE / 8), FX32_ONE, FX32_ONE - (FX32_ONE / 8) }
};

static const fx32 Unk_ov5_02200284[] = {
    FX32_ONE * 14,
    FX32_ONE * 18,
    FX32_ONE * 18,
    FX32_ONE * 8,
    FX32_ONE * 4,
};

static const int Unk_ov5_02200278[3] = {
    0x11,
    0x12,
    0x13
};
