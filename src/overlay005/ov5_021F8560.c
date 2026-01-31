#include "overlay005/ov5_021F8560.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "math_util.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_ov5_021F858C;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov5_021DF47C *unk_08;
    UnkStruct_ov5_021F858C *unk_0C;
    MapObject *unk_10;
    PlayerAvatar *playerAvatar;
} UnkStruct_ov5_021F8668;

typedef struct {
    u32 unk_00;
    s16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    Simple3DRotationAngles unk_0C;
    VecFx32 unk_14;
    VecFx32 unk_20;
    fx32 unk_2C;
    fx32 unk_30;
    int unk_34;
    UnkStruct_ov5_021F8668 unk_38;
} UnkStruct_ov5_021F86CC;

static void ov5_021F858C(UnkStruct_ov5_021F858C *param0);
static void ov5_021F85B0(UnkStruct_ov5_021F858C *param0);
static void ov5_021F8878(int param0, int param1, Simple3DRotationAngles *param2);

static const OverworldAnimManagerFuncs Unk_ov5_02201B54;
static const VecFx32 Unk_ov5_02201BC8[6];
static const VecFx32 Unk_ov5_02201C10[6];
static const VecFx32 Unk_ov5_02201B80[6];
static const u32 Unk_ov5_02201B68[6];
static const Simple3DRotationAngles Unk_ov5_02201C58[6][4];

void *ov5_021F8560(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F858C *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F858C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F858C(v0);
    return v0;
}

void ov5_021F857C(void *param0)
{
    UnkStruct_ov5_021F858C *v0 = param0;

    ov5_021F85B0(v0);
    ov5_021DF554(v0);
}

static void ov5_021F858C(UnkStruct_ov5_021F858C *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 81, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F85B0(UnkStruct_ov5_021F858C *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
}

OverworldAnimManager *ov5_021F85BC(PlayerAvatar *playerAvatar, int param1, int param2, int param3, int param4, int param5, int param6)
{
    int v0;
    OverworldAnimManager *v1;
    const VecFx32 *v2;
    VecFx32 v3 = { 0, 0, 0 };
    UnkStruct_ov5_021F8668 v4;
    MapObject *v5 = Player_MapObject(playerAvatar);

    v4.unk_00 = param4;
    v4.unk_04 = param6;
    v4.unk_08 = ov5_021DF578(v5);
    v4.unk_0C = ov5_021DF55C(v4.unk_08, 33);
    v4.unk_10 = v5;
    v4.playerAvatar = playerAvatar;

    if (param5 == 0) {
        FieldSystem *fieldSystem = MapObject_FieldSystem(v5);

        v2 = &Unk_ov5_02201BC8[param6];
        v3.x = (((param1) << 4) * FX32_ONE) + v2->x;
        v3.y = (((param2) << 4) * FX32_ONE) + v2->y;
        v3.z = (((param3) << 4) * FX32_ONE) + v2->z;
    } else {
        v2 = &Unk_ov5_02201C10[param6];
        MapObject_GetPosPtr(v5, &v3);
        sub_020630AC(v5, v2);
    }

    v0 = sub_02062758(v5, 2);
    v1 = ov5_021DF72C(v4.unk_08, &Unk_ov5_02201B54, &v3, param5, &v4, v0);

    return v1;
}

static int ov5_021F8668(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F86CC *v0 = param1;
    const UnkStruct_ov5_021F8668 *v1 = OverworldAnimManager_GetUserData(param0);
    MapObject *v2 = v1->unk_10;

    v0->unk_38 = *v1;
    v0->unk_04 = v1->unk_00;
    v0->unk_2C = FX32_ONE;
    v0->unk_30 = 0x400;
    v0->unk_34 = v1->unk_04;
    ov5_021F8878(v0->unk_34, v0->unk_04, &v0->unk_0C);
    v0->unk_08 = Unk_ov5_02201B68[v0->unk_34];
    v0->unk_0A = 20;

    if (OverworldAnimManager_GetID(param0) == 1) {
        v0->unk_00 |= 1 << 1;
    }

    return 1;
}

static void ov5_021F86CC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F86CC *v0 = param1;
    MapObject *v1 = v0->unk_38.unk_10;
    VecFx32 v2 = { 0, 0, 0 };

    sub_020630AC(v1, &v2);
}

static void ov5_021F86E4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F86CC *v0 = param1;
    MapObject *v1 = v0->unk_38.unk_10;
    PlayerAvatar *playerAvatar = v0->unk_38.playerAvatar;

    if (((v0)->unk_00 & (1 << 1)) == 0) {
        return;
    }

    v0->unk_04 = MapObject_GetMovingDir(v1);
    v0->unk_34 = PlayerAvatar_MapDistortionState(playerAvatar);

    GF_ASSERT(v0->unk_04 != -1);

    {
        v0->unk_2C += v0->unk_30;

        if (v0->unk_2C >= (FX32_ONE * 4)) {
            v0->unk_2C = (FX32_ONE * 4);
            v0->unk_30 = -v0->unk_30;
        } else if (v0->unk_2C <= FX32_ONE) {
            v0->unk_2C = FX32_ONE;
            v0->unk_30 = -v0->unk_30;
        }
    }

    if (((v0)->unk_00 & (1 << 2)) == 0) {
        ov5_021F8878(v0->unk_34, v0->unk_04, &v0->unk_0C);
    }

    if (((v0)->unk_00 & (1 << 4)) == 0) {
        v0->unk_08 = Unk_ov5_02201B68[v0->unk_34];
    }

    if (((v0)->unk_00 & (1 << 3)) == 0) {
        VecFx32 v3;

        v3 = Unk_ov5_02201C10[v0->unk_34];

        if (((v0)->unk_00 & (1 << 5)) == 0) {
            v3.y += v0->unk_2C;
        } else {
            v3.x += v0->unk_14.x;
            v3.y += v0->unk_14.y;
            v3.z += v0->unk_14.z;
        }

        sub_020630AC(v1, &v3);
        MapObject_GetPosPtr(v1, &v3);

        {
            const VecFx32 *v4;

            if (((v0)->unk_00 & (1 << 6)) == 0) {
                v4 = &Unk_ov5_02201B80[v0->unk_34];
            } else {
                v4 = &v0->unk_20;
            }

            v3.x += ((FX32_ONE * 0) + v4->x) + CalcCosineDegrees(v0->unk_08) * v0->unk_0A;
            v3.y += ((FX32_ONE * (+8)) + v4->y) + CalcSineDegrees(v0->unk_08) * v0->unk_0A;
            v3.z += ((FX32_ONE * 0) + v4->z);
        }

        if (((v0)->unk_00 & (1 << 5)) == 0) {
            v3.y += v0->unk_2C;
        } else {
            v3.x += v0->unk_14.x;
            v3.y += v0->unk_14.y;
            v3.z += v0->unk_14.z;
        }

        OverworldAnimManager_SetPosition(param0, &v3);
    }
}

static void ov5_021F8848(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov5_021F86CC *v0 = param1;

    if (((v0)->unk_00 & (1 << 0)) == 0) {
        VecFx32 v1;
        Simple3DRenderObj *v2 = &v0->unk_38.unk_0C->unk_18;

        OverworldAnimManager_GetPosition(param0, &v1);
        Simple3D_DrawRenderObjWithPosAndRotationAngles(v2, &v1, &v0->unk_0C);
    }

    v0->unk_06++;
}

static void ov5_021F8878(int param0, int param1, Simple3DRotationAngles *param2)
{
    const Simple3DRotationAngles *v0;

    GF_ASSERT((u32)param0 < 6);

    v0 = &Unk_ov5_02201C58[param0][param1];
    *param2 = *v0;
}

Simple3DRotationAngles *ov5_021F88A8(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return &v0->unk_0C;
}

void ov5_021F88B4(OverworldAnimManager *param0, int param1, int param2)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    ov5_021F8878(param2, param1, &v0->unk_0C);
}

void ov5_021F88CC(OverworldAnimManager *param0, int param1)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    v0->unk_00 |= param1;
}

void ov5_021F88DC(OverworldAnimManager *param0, int param1)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    v0->unk_00 &= ~param1;
}

VecFx32 *ov5_021F88F0(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return &v0->unk_14;
}

VecFx32 *ov5_021F88FC(OverworldAnimManager *param0)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return &v0->unk_20;
}

void ov5_021F8908(OverworldAnimManager *param0, u16 param1)
{
    UnkStruct_ov5_021F86CC *v0 = OverworldAnimManager_GetFuncsContext(param0);
    v0->unk_08 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov5_02201B54 = {
    sizeof(UnkStruct_ov5_021F86CC),
    ov5_021F8668,
    ov5_021F86CC,
    ov5_021F86E4,
    ov5_021F8848
};

static const VecFx32 Unk_ov5_02201BC8[6] = {
    { (16 * FX32_ONE) >> 1, 0x0, (16 * FX32_ONE) >> 1 },
    { (16 * FX32_ONE) >> 1, 0x0, (16 * FX32_ONE) >> 1 },
    { (16 * FX32_ONE) >> 1, 0x0, (16 * FX32_ONE) >> 1 },
    { (16 * FX32_ONE) >> 1, 0x0, (16 * FX32_ONE) >> 1 },
    { (16 * FX32_ONE) >> 1, 0x0, (16 * FX32_ONE) >> 1 },
    { (16 * FX32_ONE) >> 1, FX32_ONE * 40, (16 * FX32_ONE) >> 1 }
};

static const VecFx32 Unk_ov5_02201C10[6] = {
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 }
};

static const VecFx32 Unk_ov5_02201B80[6] = {
    { (FX32_ONE * 1) / 4, FX32_ONE * 6, FX32_ONE * -5 },
    { (FX32_ONE * 1) / 4, FX32_ONE * 6, FX32_ONE * -5 },
    { (FX32_ONE * 1) / 4, FX32_ONE * 6, FX32_ONE * -5 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x0, FX32_ONE * 6 }
};

static const u32 Unk_ov5_02201B68[6] = {
    0x10E,
    0x10E,
    0x10E,
    0x0,
    0x0,
    0x5A
};

static const Simple3DRotationAngles Unk_ov5_02201C58[6][4] = {
    {
        { 0x0, 0xB4, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x10E, 0x0 },
        { 0x0, 0x5A, 0x0 },
    },
    {
        { 0x0, 0xB4, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x10E, 0x0 },
        { 0x0, 0x5A, 0x0 },
    },
    {
        { 0x0, 0xB4, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x10E, 0x0 },
        { 0x0, 0x5A, 0x0 },
    },
    {
        { 0x0, 0xB4, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x10E, 0x0 },
        { 0x0, 0x5A, 0x0 },
    },
    {
        { 0x0, 0xB4, 0x0 },
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x10E, 0x0 },
        { 0x0, 0x5A, 0x0 },
    },
    {
        { 0xB4, 0xB4, 0x0 },
        { 0xB4, 0x0, 0x0 },
        { 0xB4, 0x5A, 0x0 },
        { 0xB4, 0x10E, 0x0 },
    },
};
