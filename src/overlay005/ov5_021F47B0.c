#include "overlay005/ov5_021F47B0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "heap.h"
#include "map_object.h"
#include "map_object_move.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04[9];
    Simple3DAnimation unk_B8[1];
} UnkStruct_021F47DC;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_021F47DC *unk_08;
    const MapObject *unk_0C;
} UnkStruct_ov5_021F4840;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    u8 unk_02;
    u8 unk_03;
    VecFx32 unk_04;
    VecFx32 unk_10;
    Simple3DRotationAngles unk_1C;
    UnkStruct_ov5_021F4840 unk_24;
    Simple3DRenderObj unk_34;
    Simple3DAnimation *unk_88;
} UnkStruct_021F487C;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_021F47DC *unk_08;
    Simple3DRenderObj unk_0C;
} UnkStruct_021F4D50;

static void ov5_021F47DC(UnkStruct_021F47DC *param0);
static void ov5_021F4820(UnkStruct_021F47DC *param0);
static void ov5_021F49D0(OverworldAnimManager *param0, UnkStruct_021F487C *param1);
static void ov5_021F4A24(OverworldAnimManager *param0, UnkStruct_021F487C *param1);
static void ov5_021F4A80(u16 *param0, s16 param1);
static int ov5_021F4AB4(const MapObject *param0, int param1, VecFx32 *param2);
static void ov5_021F4B6C(int param0, int param1, const VecFx32 *param2, const VecFx32 *param3, VecFx32 *param4, VecFx32 *param5);

static const OverworldAnimManagerFuncs Unk_ov5_02200754;
static const OverworldAnimManagerFuncs Unk_ov5_02200768;
static const u32 Unk_ov5_0220079C[9];
static const u32 Unk_ov5_02200750[1];
static const Simple3DRotationAngles Unk_ov5_0220077C[4];
static const VecFx32 Unk_ov5_022007C0[4][6];
static const VecFx32 Unk_ov5_022008E0[4][6];

void *ov5_021F47B0(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F47DC *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F47DC)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F47DC(v0);
    return v0;
}

void ov5_021F47CC(void *param0)
{
    UnkStruct_021F47DC *v0 = param0;

    ov5_021F4820(v0);
    ov5_021DF554(v0);
}

static void ov5_021F47DC(UnkStruct_021F47DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        ov5_021DFB00(param0->unk_00, &param0->unk_04[v0], 0, Unk_ov5_0220079C[v0], 0);
    }

    NNS_G3dMdlSetMdlFogEnableFlagAll(param0->unk_04[0].g3DModel, 0);

    for (v0 = 0; v0 < 1; v0++) {
        ov5_021DFB24(param0->unk_00, &param0->unk_B8[v0], 0, Unk_ov5_02200750[v0], 0);
    }
}

static void ov5_021F4820(UnkStruct_021F47DC *param0)
{
    int v0;

    for (v0 = 0; v0 < 9; v0++) {
        Simple3D_FreeModel(&param0->unk_04[v0]);
    }

    for (v0 = 0; v0 < 1; v0++) {
        Simple3D_FreeAnimation(&param0->unk_B8[v0]);
    }
}

OverworldAnimManager *ov5_021F4840(UnkStruct_ov5_021DF47C *param0, const MapObject *param1, int param2, int param3)
{
    int v0;
    OverworldAnimManager *v1;
    UnkStruct_ov5_021F4840 v2;

    v2.unk_00 = param2;
    v2.unk_04 = param0;
    v2.unk_08 = ov5_021DF55C(param0, 32);
    v2.unk_0C = param1;

    v0 = sub_02062758(param1, param3);
    v1 = ov5_021DF72C(param0, &Unk_ov5_02200754, NULL, 0, &v2, v0);

    return v1;
}

static int ov5_021F487C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F487C *v0 = param1;
    const UnkStruct_ov5_021F4840 *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_24 = *v1;
    v0->unk_00 = MapObject_GetFacingDir(v1->unk_0C);
    v0->unk_88 = ov5_021DF528(v1->unk_04, sizeof(Simple3DAnimation), 0);

    Simple3D_CreateRenderObject(&v0->unk_34, &v0->unk_24.unk_08->unk_04[0]);
    ov5_021DFB40(v0->unk_24.unk_04, v0->unk_88, &v0->unk_24.unk_08->unk_04[0], &v0->unk_24.unk_08->unk_B8[0], 0);
    Simple3D_BindAnimToRenderObj(&v0->unk_34, v0->unk_88);
    ov5_021F4A24(param0, v0);

    return 1;
}

static void ov5_021F48F0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F487C *v0 = param1;

    Simple3D_FreeAnimObject(v0->unk_88);
    Heap_Free(v0->unk_88);
}

static void ov5_021F4908(OverworldAnimManager *param0, void *param1)
{
    int v0;
    VecFx32 v1, v2;
    const VecFx32 *v3;
    UnkStruct_021F487C *v4 = param1;
    const MapObject *v5 = v4->unk_24.unk_0C;
    int v6 = MapObject_GetFacingDir(v5);

    MapObject_GetPosPtr(v5, &v2);

    v0 = ov5_021F4AB4(v5, v4->unk_24.unk_00, &v1);

    v4->unk_00 = v6;
    v4->unk_01 = v0;

    if (v4->unk_01 == v4->unk_24.unk_00) {
        ov5_021F4A24(param0, v4);
    } else {
        ov5_021F4B6C(v4->unk_00, v4->unk_24.unk_00, &v1, &v2, &v4->unk_04, &v4->unk_10);
        ov5_021F49D0(param0, v4);
    }

    Simple3D_UpdateAnim(v4->unk_88, FX32_ONE, 1);
}

static void ov5_021F4974(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F487C *v0 = param1;

    if (v0->unk_02 == 0) {
        Simple3DRotationAngles v1;
        VecFx32 v2;

        OverworldAnimManager_GetPosition(param0, &v2);

        v2.x += 0;
        v2.y += (FX32_ONE * 16);
        v2.z += (FX32_ONE * 0);

        v1 = v0->unk_1C;

        ov5_021F4A80(&v1.alpha, 0);
        ov5_021F4A80(&v1.beta, 0);
        ov5_021F4A80(&v1.gamma, 0);

        Simple3D_DrawRenderObjRotationAngles(&v0->unk_34, &v2, &v0->unk_10, &v1);
    }
}

static const OverworldAnimManagerFuncs Unk_ov5_02200754 = {
    sizeof(UnkStruct_021F487C),
    ov5_021F487C,
    ov5_021F48F0,
    ov5_021F4908,
    ov5_021F4974
};

static void ov5_021F49D0(OverworldAnimManager *param0, UnkStruct_021F487C *param1)
{
    VecFx32 v0;
    const MapObject *v1 = param1->unk_24.unk_0C;

    param1->unk_1C = Unk_ov5_0220077C[param1->unk_00];
    MapObject_GetPosPtr(param1->unk_24.unk_0C, &v0);

    v0.x += param1->unk_04.x;
    v0.y += param1->unk_04.y;
    v0.z += param1->unk_04.z;

    OverworldAnimManager_SetPosition(param0, &v0);
}

static void ov5_021F4A24(OverworldAnimManager *param0, UnkStruct_021F487C *param1)
{
    VecFx32 v0;
    const MapObject *v1 = param1->unk_24.unk_0C;

    param1->unk_10 = Unk_ov5_022007C0[param1->unk_00][param1->unk_01];
    param1->unk_04 = Unk_ov5_022008E0[param1->unk_00][param1->unk_01];

    ov5_021F49D0(param0, param1);
}

static void ov5_021F4A80(u16 *param0, s16 param1)
{
    (*param0) += param1;

    if ((s16)(*param0) < 0) {
        do {
            (*param0) += 360;
        } while ((s16)(*param0) < 0);
    } else {
        (*param0) %= 360;
    }
}

static int ov5_021F4AB4(const MapObject *param0, int param1, VecFx32 *param2)
{
    u32 v0;
    VecFx32 v1;
    int v2, v3, v4, v5, v6;

    GF_ASSERT(param1);

    v4 = MapObject_GetX(param0);
    v5 = MapObject_GetY(param0);
    v6 = MapObject_GetZ(param0);
    v3 = MapObject_GetFacingDir(param0);

    MapObject_GetPosPtr(param0, &v1);

    for (v2 = 0; v2 < param1; v2++) {
        v4 += MapObject_GetDxFromDir(v3);
        v6 += MapObject_GetDzFromDir(v3);

        v0 = sub_02063E18(param0, &v1, v4, v5, v6, v3);

        if ((v0 != 0) && (v0 != (1 << 0))) {
            if (v0 == (1 << 2)) {
                MapObject *v7;

                v7 = sub_0206326C(MapObject_MapObjectManager(param0), v4, v6, 1);
                GF_ASSERT(v7 != NULL);
                MapObject_GetPosPtr(v7, param2);
            } else {
                sub_02064450(v4, v6, param2);
            }

            return v2;
        }
    }

    sub_02064450(v4, v6, param2);
    return v2;
}

static void ov5_021F4B6C(int param0, int param1, const VecFx32 *param2, const VecFx32 *param3, VecFx32 *param4, VecFx32 *param5)
{
    fx32 v0;
    int v1, v2, v3;
    const VecFx32 *v4, *v5;

    switch (param0) {
    case 0:
        v0 = (param3->z - param2->z);
        break;
    case 1:
        v0 = (param2->z - param3->z);
        break;
    case 2:
        v0 = (param3->x - param2->x);
        break;
    case 3:
        v0 = (param2->x - param3->x);
        break;
    }

    v1 = v0 / (16 * FX32_ONE);

    if (v1 < 0) {
        v1 = -v1;
    }

    if (v1 > param1) {
        v1 = param1;
    }

    v1--;

    if (v1 < 0) {
        v1 = 0;
    }

    v2 = v1;
    v0 %= (16 * FX32_ONE);

    if (v0 < 0) {
        v2--;
    } else if (v0 > 0) {
        v2++;
    }

    if (v2 < 0) {
        v2 = 0;
    } else if (v2 > param1) {
        v2 = param1;
    }

    v3 = v0 / ((16 * FX32_ONE) / 10);

    if (v3 < 0) {
        v3 = -v3;
    }

    v5 = &Unk_ov5_022008E0[param0][v2];
    *param4 = Unk_ov5_022008E0[param0][v1];

    v4 = &Unk_ov5_022007C0[param0][v2];
    *param5 = Unk_ov5_022007C0[param0][v1];

    param4->x += ((v5->x - param4->x) / 10) * v3;
    param4->y += ((v5->y - param4->y) / 10) * v3;
    param4->z += ((v5->z - param4->z) / 10) * v3;
    param5->x += ((v4->x - param5->x) / 10) * v3;
    param5->y += ((v4->y - param5->y) / 10) * v3;
    param5->z += ((v4->z - param5->z) / 10) * v3;
}

OverworldAnimManager *ov5_021F4CEC(UnkStruct_ov5_021DF47C *param0, int param1, int param2, int param3)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { 0, 0, 0 };

    GF_ASSERT(param3 < 8);

    sub_02064450(param1, param2, &v1);
    sub_020644A4(ov5_021DF574(param0), &v1);

    v1.x += (FX32_ONE * 0);
    v1.y += (FX32_ONE * -3);
    v1.z += (FX32_ONE * -4);

    v0 = ov5_021DF72C(param0, &Unk_ov5_02200768, &v1, param3, param0, 0);
    return v0;
}

static int ov5_021F4D50(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F4D50 *v0 = param1;

    v0->unk_00 = OverworldAnimManager_GetID(param0);
    v0->unk_04 = (UnkStruct_ov5_021DF47C *)OverworldAnimManager_GetUserData(param0);
    v0->unk_08 = ov5_021DF55C(v0->unk_04, 32);

    Simple3D_CreateRenderObject(&v0->unk_0C, &v0->unk_08->unk_04[1 + v0->unk_00]);
    return 1;
}

static void ov5_021F4D88(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F4D8C(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F4D90(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_021F4D50 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    Simple3D_DrawRenderObjWithPos(&v1->unk_0C, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200768 = {
    sizeof(UnkStruct_021F4D50),
    ov5_021F4D50,
    ov5_021F4D88,
    ov5_021F4D8C,
    ov5_021F4D90
};

static const u32 Unk_ov5_0220079C[9] = {
    0x73,
    0x74,
    0x75,
    0x76,
    0x77,
    0x78,
    0x79,
    0x7A,
    0x7B
};

static const u32 Unk_ov5_02200750[1] = {
    0xC7
};

static const Simple3DRotationAngles Unk_ov5_0220077C[4] = {
    { 0x10E, 0xB4, 0x0 },
    { 0x5A, 0xB4, 0xB4 },
    { 0x0, 0x10E, 0x10E },
    { 0x0, 0x5A, 0x5A }
};

static const VecFx32 Unk_ov5_022007C0[4][6] = {
    {
        { 0xC00, 0x100, 0x1000 },
        { 0x1000, 0x500, 0x1000 },
        { 0x1000, 0x800, 0x1000 },
        { 0x1000, 0xC00, 0x1000 },
        { 0x1000, 0x1000, 0x1000 },
        { 0x1000, 0x1400, 0x1000 },
    },
    {
        { 0xC00, 0x100, 0x1000 },
        { 0x1000, 0x500, 0x1000 },
        { 0x1000, 0x800, 0x1000 },
        { 0x1000, 0xC00, 0x1000 },
        { 0x1000, 0x1000, 0x1000 },
        { 0x1000, 0x1400, 0x1000 },
    },
    {
        { 0x1000, 0x200, 0x1000 },
        { 0x1000, 0x600, 0x1000 },
        { 0x1000, 0xA00, 0x1000 },
        { 0x1000, 0xE00, 0x1000 },
        { 0x1000, 0x1200, 0x1000 },
        { 0x1000, 0x1400, 0x1000 },
    },
    {
        { 0x1000, 0x200, 0x1000 },
        { 0x1000, 0x600, 0x1000 },
        { 0x1000, 0xA00, 0x1000 },
        { 0x1000, 0xE00, 0x1000 },
        { 0x1000, 0x1200, 0x1000 },
        { 0x1000, 0x1400, 0x1000 },
    },
};

static const VecFx32 Unk_ov5_022008E0[4][6] = {
    {
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -15) },
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -31) },
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -47) },
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -63) },
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -79) },
        { (FX32_ONE * 0), (FX32_ONE * -15), (FX32_ONE * -95) },
    },
    {
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 13) },
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 27) },
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 44) },
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 60) },
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 78) },
        { (FX32_ONE * 0), (FX32_ONE * 0), (FX32_ONE * 93) },
    },
    {
        { (FX32_ONE * -13), (FX32_ONE * 0), (FX32_ONE * 6) },
        { (FX32_ONE * -29), (FX32_ONE * 0), (FX32_ONE * 9) },
        { (FX32_ONE * -45), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * -61), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * -78), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * -85), (FX32_ONE * 0), (FX32_ONE * 10) },
    },
    {
        { (FX32_ONE * 13), (FX32_ONE * 0), (FX32_ONE * 6) },
        { (FX32_ONE * 29), (FX32_ONE * 0), (FX32_ONE * 9) },
        { (FX32_ONE * 45), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * 61), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * 78), (FX32_ONE * 0), (FX32_ONE * 10) },
        { (FX32_ONE * 85), (FX32_ONE * 0), (FX32_ONE * 10) },
    },
};
