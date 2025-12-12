#include "overlay005/ov5_021F61BC.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "fx_util.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "overworld_anim_manager.h"
#include "player_avatar.h"
#include "simple3d.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_021F61E8;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_021F61E8 *unk_04;
    PlayerAvatar *playerAvatar;
} UnkStruct_021F6218;

typedef struct {
    int unk_00;
    int unk_04;
    u8 unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    UnkStruct_021F6218 unk_24;
} UnkStruct_021F6264;

static void ov5_021F61E8(UnkStruct_021F61E8 *param0);
static void ov5_021F620C(UnkStruct_021F61E8 *param0);
static int ov5_021F6414(u8 param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200C10;
static const VecFx32 Unk_ov5_02200C24[4][2];

void *ov5_021F61BC(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F61E8 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F61E8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F61E8(v0);

    return v0;
}

void ov5_021F61D8(void *param0)
{
    UnkStruct_021F61E8 *v0 = param0;

    ov5_021F620C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F61E8(UnkStruct_021F61E8 *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 80, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F620C(UnkStruct_021F61E8 *param0)
{
    Simple3D_FreeModel(&param0->unk_04);
}

void ov5_021F6218(PlayerAvatar *playerAvatar)
{
    int v0 = 0, v1;
    UnkStruct_021F6218 v2;
    UnkStruct_ov5_021DF47C *v3;
    MapObject *v4;
    VecFx32 v5 = { 0, 0, 0 };

    v4 = Player_MapObject(playerAvatar);
    v3 = ov5_021DF578(v4);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 14);
    v2.playerAvatar = playerAvatar;

    v1 = sub_02062758(v4, 2);
    ov5_021DF72C(v3, &Unk_ov5_02200C10, &v5, v0, &v2, v1);
}

static int ov5_021F6264(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F6264 *v0;
    MapObject *v1;
    const UnkStruct_021F6218 *v2;

    v0 = param1;
    v2 = OverworldAnimManager_GetUserData(param0);
    v0->unk_24 = *v2;
    v1 = Player_MapObject(v2->playerAvatar);

    v0->unk_04 = -1;
    v0->unk_14 = MapObject_GetLocalID(v1);
    v0->unk_18 = sub_02062918(v1);

    return 1;
}

static void ov5_021F629C(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F62A0(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_021F6264 *v1 = param1;
    PlayerAvatar *playerAvatar = v1->unk_24.playerAvatar;
    MapObject *v3 = Player_MapObject(playerAvatar);

    if (sub_02062764(v3, v1->unk_14, v1->unk_18) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v0 = v1->unk_04;

    v1->unk_08 = MapObject_GetCurrTileBehavior(v3);
    v1->unk_04 = ov5_021F6414(v1->unk_08);
    v1->unk_00 = 0;

    if ((v1->unk_04 == -1) || (v1->unk_04 != PlayerAvatar_GetDir(playerAvatar))) {
        v1->unk_1C = 0;
        v1->unk_20 = 0;
        v1->unk_00 = 1;
        return;
    }

    if (v0 != v1->unk_04) {
        v1->unk_1C = 0;
        v1->unk_20 = 0;
    }

    {
        VecFx32 v4, v5;
        int v6 = MapObject_GetX(v3) + MapObject_GetDxFromDir(v1->unk_04);
        int v7 = MapObject_GetZ(v3) + MapObject_GetDzFromDir(v1->unk_04);

        sub_02064450(v6, v7, &v5);
        MapObject_GetPosPtr(v3, &v4);
        v5.y = v4.y;
        OverworldAnimManager_SetPosition(param0, &v5);
    }

    {
        v1->unk_1C++;

        if (v1->unk_1C > 15) {
            v1->unk_1C = 0;
            v1->unk_20++;
            v1->unk_20 %= 2;
        }
    }
}

static void ov5_021F636C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F6264 *v0 = param1;

    if ((v0->unk_00 == 1) || (v0->unk_04 == -1)) {
        return;
    }

    {
        u32 v1 = 0;
        MtxFx33 v2;
        VecFx32 v3, v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
        Simple3DRenderObj *v5 = &v0->unk_24.unk_04->unk_18;
        const VecFx32 *v6 = &Unk_ov5_02200C24[v0->unk_04][v0->unk_20];

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

        v3.x += v6->x;
        v3.y += v6->y;
        v3.z += v6->z;

        Simple3D_DrawRenderObj(v5, &v3, &v4, &v2);
    }
}

static int ov5_021F6414(u8 param0)
{
    if (TileBehavior_IsWarpEntranceNorth(param0)) {
        return 0;
    }

    if (TileBehavior_IsWarpEntranceSouth(param0)) {
        return 1;
    }

    if (TileBehavior_IsWarpEntranceWest(param0)) {
        return 2;
    }

    if (TileBehavior_IsWarpEntranceEast(param0)) {
        return 3;
    }

    return -1;
}

static const OverworldAnimManagerFuncs Unk_ov5_02200C10 = {
    (sizeof(UnkStruct_021F6264)),
    ov5_021F6264,
    ov5_021F629C,
    ov5_021F62A0,
    ov5_021F636C
};

static const VecFx32 Unk_ov5_02200C24[4][2] = {
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, -(FX32_ONE * 2) },
    },
    {
        { 0x0, 0x0, 0x0 },
        { 0x0, 0x0, (FX32_ONE * 2) },
    },
    {
        { 0x0, 0x0, 0x0 },
        { -(FX32_ONE * 2), 0x0, 0x0 },
    },
    {
        { 0x0, 0x0, 0x0 },
        { (FX32_ONE * 2), 0x0, 0x0 },
    },
};
