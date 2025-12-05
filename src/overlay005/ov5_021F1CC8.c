#include "overlay005/ov5_021F1CC8.h"

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
    Simple3DModel unk_04[10];
    Simple3DModel unk_CC[10];
    Simple3DRenderObj unk_194[10];
    Simple3DRenderObj unk_4DC[10];
} UnkStruct_021F1CF8;

typedef struct {
    int unk_00;
    Simple3DModel *unk_04;
    Simple3DRenderObj *unk_08;
} UnkStruct_021F1FB8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    Simple3DModel *unk_14;
    Simple3DRenderObj *unk_18;
} UnkStruct_021F1FE4;

static void ov5_021F1CF8(UnkStruct_021F1CF8 *param0);
static void ov5_021F1D80(UnkStruct_021F1CF8 *param0);
static Simple3DRenderObj *ov5_021F1DA4(UnkStruct_021F1CF8 *param0, int param1, int param2, int param3);
static Simple3DModel *ov5_021F1E24(UnkStruct_021F1CF8 *param0, int param1, int param2, int param3);
static OverworldAnimManager *ov5_021F1ECC(const MapObject *param0, int param1);

static const u32 Unk_ov5_0220039C[10];
static const u32 Unk_ov5_02200374[10];
static const int Unk_ov5_022003C4[4][4];
static const OverworldAnimManagerFuncs Unk_ov5_02200360;

void *ov5_021F1CC8(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F1CF8 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F1CF8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F1CF8(v0);
    return v0;
}

void ov5_021F1CE8(void *param0)
{
    UnkStruct_021F1CF8 *v0 = param0;

    ov5_021F1D80(v0);
    ov5_021DF554(v0);
}

static void ov5_021F1CF8(UnkStruct_021F1CF8 *param0)
{
    u32 v0, v1;

    for (v0 = 0; v0 < 10; v0++) {
        v1 = Unk_ov5_0220039C[v0];
        ov5_021DFB00(param0->unk_00, &param0->unk_04[v0], 0, v1, 0);
        Simple3D_CreateRenderObject(&param0->unk_194[v0], &param0->unk_04[v0]);

        v1 = Unk_ov5_02200374[v0];
        ov5_021DFB00(param0->unk_00, &param0->unk_CC[v0], 0, v1, 0);
        Simple3D_CreateRenderObject(&param0->unk_4DC[v0], &param0->unk_CC[v0]);
    }
}

static void ov5_021F1D80(UnkStruct_021F1CF8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        Simple3D_FreeModel(&param0->unk_04[v0]);
        Simple3D_FreeModel(&param0->unk_CC[v0]);
    }
}

static Simple3DRenderObj *ov5_021F1DA4(UnkStruct_021F1CF8 *param0, int param1, int param2, int param3)
{
    int v0;
    Simple3DRenderObj *v1 = NULL;

    switch (param1) {
    case 0:
        v0 = 0 + param2;
        v1 = &param0->unk_194[v0];
        break;
    case 1:
        v0 = Unk_ov5_022003C4[param3][param2];
        v1 = &param0->unk_194[v0];
        break;
    case 2:
    case 4:
        v0 = 0 + param2;
        v1 = &param0->unk_4DC[v0];
        break;
    case 3:
        v0 = Unk_ov5_022003C4[param3][param2];
        v1 = &param0->unk_4DC[v0];
        break;
    }

    GF_ASSERT(v1 != NULL);
    return v1;
}

static Simple3DModel *ov5_021F1E24(UnkStruct_021F1CF8 *param0, int param1, int param2, int param3)
{
    int v0 = 0;
    Simple3DModel *v1 = NULL;

    switch (param1) {
    case 0:
        v0 = 0 + param2;
        v1 = &param0->unk_04[v0];
        break;
    case 1:
        v0 = Unk_ov5_022003C4[param3][param2];
        v1 = &param0->unk_04[v0];
        break;
    case 2:
    case 4:
        v0 = 0 + param2;
        v1 = &param0->unk_CC[v0];
        break;
    case 3:
        v0 = Unk_ov5_022003C4[param3][param2];
        v1 = &param0->unk_CC[v0];
        break;
    }

    GF_ASSERT(v1 != NULL);
    return v1;
}

OverworldAnimManager *ov5_021F1E8C(const MapObject *param0)
{
    return ov5_021F1ECC(param0, 0);
}

OverworldAnimManager *ov5_021F1E98(const MapObject *param0)
{
    return ov5_021F1ECC(param0, 1);
}

OverworldAnimManager *ov5_021F1EA4(const MapObject *param0)
{
    return ov5_021F1ECC(param0, 2);
}

OverworldAnimManager *ov5_021F1EB0(const MapObject *param0)
{
    return ov5_021F1ECC(param0, 3);
}

OverworldAnimManager *ov5_021F1EBC(const MapObject *param0)
{
    return ov5_021F1ECC(param0, 4);
}

OverworldAnimManager *ov5_021F1EC8(const MapObject *param0)
{
    return NULL;
}

static OverworldAnimManager *ov5_021F1ECC(const MapObject *param0, int param1)
{
    VecFx32 v0;
    OverworldAnimManager *v1;
    UnkStruct_021F1FB8 v2;
    int v3 = MapObject_GetXPrev(param0);
    int v4 = MapObject_GetZPrev(param0);
    fx32 v5 = MapObject_GetPosY(param0);
    int v6 = MapObject_GetFacingDir(param0);
    int v7 = MapObject_GetPrevFacingDir(param0);
    int v8 = sub_02062758(param0, 2);
    UnkStruct_ov5_021DF47C *v9 = ov5_021DF578(param0);
    UnkStruct_021F1CF8 *v10 = ov5_021DF55C(v9, 11);

    v2.unk_00 = param1;
    v2.unk_08 = ov5_021F1DA4(v10, param1, v6, v7);
    v2.unk_04 = ov5_021F1E24(v10, param1, v6, v7);

    sub_02064450(v3, v4, &v0);
    v0.y = v5;

    switch (param1) {
    case 0:
    case 1:
    case 4:
    case 5:
        v0.y += (FX32_ONE * -8);

        if ((param1 == 2) || (param1 == 3)) {
            v0.z += (FX32_ONE * -2);
        } else {
            v0.z += (FX32_ONE * 1);
        }
        break;
    case 2:
    case 3:
        v0.y += (FX32_ONE * -10);

        if ((param1 == 2) || (param1 == 3)) {
            v0.z += (FX32_ONE * -2);
        } else {
            v0.z += (FX32_ONE * 2);
        }
    }

    v1 = ov5_021DF72C(v9, &Unk_ov5_02200360, &v0, 0, &v2, v8);

    return v1;
}

static int ov5_021F1FB8(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_021F1FE4 *v1;
    const UnkStruct_021F1FB8 *v2;

    v1 = param1;
    v1->unk_10 = OverworldAnimManager_GetID(param0);

    v2 = OverworldAnimManager_GetUserData(param0);
    v1->unk_18 = v2->unk_08;
    v1->unk_14 = v2->unk_04;
    v1->unk_0C = 31;
    v1->unk_10 = v2->unk_00;

    return 1;
}

static void ov5_021F1FE0(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F1FE4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1FE4 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_04++;

        if (v0->unk_04 >= 16) {
            v0->unk_00++;
        }
        break;
    case 1:
        v0->unk_0C -= 2;

        if (v0->unk_0C < 0) {
            ov5_021DF74C(param0);
            return;
        }
    }
}

static void ov5_021F2014(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1FE4 *v0 = param1;

    if (v0->unk_08 == 0) {
        VecFx32 v1;

        OverworldAnimManager_GetPosition(param0, &v1);

        NNS_G3dMdlUseMdlAlpha(v0->unk_14->g3DModel);
        NNS_G3dMdlSetMdlAlphaAll(v0->unk_14->g3DModel, v0->unk_0C);

        Simple3D_DrawRenderObjWithPos(v0->unk_18, &v1);
    }
}

static const u32 Unk_ov5_0220039C[10] = {
    0x3B,
    0x3C,
    0x3D,
    0x3E,
    0x3F,
    0x40,
    0x41,
    0x42,
    0x43,
    0x44
};

static const u32 Unk_ov5_02200374[10] = {
    0x5D,
    0x5E,
    0x5F,
    0x60,
    0x61,
    0x62,
    0x63,
    0x64,
    0x65,
    0x66
};

static const int Unk_ov5_022003C4[4][4] = {
    { 0x4, 0x4, 0x7, 0x6 },
    { 0x4, 0x4, 0x9, 0x8 },
    { 0x8, 0x6, 0x5, 0x5 },
    { 0x9, 0x7, 0x5, 0x5 }
};

static const OverworldAnimManagerFuncs Unk_ov5_02200360 = {
    (sizeof(UnkStruct_021F1FE4)),
    ov5_021F1FB8,
    ov5_021F1FE0,
    ov5_021F1FE4,
    ov5_021F2014
};
