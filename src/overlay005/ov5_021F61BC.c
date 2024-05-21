#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073B50.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_0201E190.h"
#include "unk_0205DAC8.h"
#include "player_avatar.h"
#include "map_object.h"
#include "map_object_move.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F61BC.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_02073838 unk_04;
    UnkStruct_02073B50 unk_18;
} UnkStruct_021F61E8;

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_021F61E8 * unk_04;
    PlayerAvatar * unk_08;
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

static void ov5_021F61E8(UnkStruct_021F61E8 * param0);
static void ov5_021F620C(UnkStruct_021F61E8 * param0);
static int ov5_021F6414(u8 param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200C10;
static const VecFx32 Unk_ov5_02200C24[4][2];

void * ov5_021F61BC (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_021F61E8 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F61E8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F61E8(v0);

    return v0;
}

void ov5_021F61D8 (void * param0)
{
    UnkStruct_021F61E8 * v0 = param0;

    ov5_021F620C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F61E8 (UnkStruct_021F61E8 * param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 80, 0);
    sub_02073B70(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F620C (UnkStruct_021F61E8 * param0)
{
    sub_0207395C(&param0->unk_04);
}

void ov5_021F6218 (PlayerAvatar * param0)
{
    int v0 = 0, v1;
    UnkStruct_021F6218 v2;
    UnkStruct_ov5_021DF47C * v3;
    MapObject * v4;
    VecFx32 v5 = {0, 0, 0};

    v4 = Player_MapObject(param0);
    v3 = ov5_021DF578(v4);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 14);
    v2.unk_08 = param0;

    v1 = sub_02062758(v4, 2);
    ov5_021DF72C(v3, &Unk_ov5_02200C10, &v5, v0, &v2, v1);
}

static int ov5_021F6264 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_021F6264 * v0;
    MapObject * v1;
    const UnkStruct_021F6218 * v2;

    v0 = param1;
    v2 = sub_020715BC(param0);
    v0->unk_24 = *v2;
    v1 = Player_MapObject(v2->unk_08);

    v0->unk_04 = -1;
    v0->unk_14 = MapObject_Id(v1);
    v0->unk_18 = sub_02062918(v1);

    return 1;
}

static void ov5_021F629C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

static void ov5_021F62A0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_021F6264 * v1 = param1;
    PlayerAvatar * v2 = v1->unk_24.unk_08;
    MapObject * v3 = Player_MapObject(v2);

    if (sub_02062764(v3, v1->unk_14, v1->unk_18) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v0 = v1->unk_04;

    v1->unk_08 = sub_02062BE8(v3);
    v1->unk_04 = ov5_021F6414(v1->unk_08);
    v1->unk_00 = 0;

    if ((v1->unk_04 == -1) || (v1->unk_04 != PlayerAvatar_GetDir(v2))) {
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
        int v6 = MapObject_GetXPos(v3) + sub_0206419C(v1->unk_04);
        int v7 = MapObject_GetZPos(v3) + sub_020641A8(v1->unk_04);

        sub_02064450(v6, v7, &v5);
        MapObject_PosVectorOut(v3, &v4);
        v5.y = v4.y;
        sub_020715D4(param0, &v5);
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

static void ov5_021F636C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_021F6264 * v0 = param1;

    if ((v0->unk_00 == 1) || (v0->unk_04 == -1)) {
        return;
    }

    {
        u32 v1 = 0;
        MtxFx33 v2;
        VecFx32 v3, v4 = {FX32_ONE, FX32_ONE, FX32_ONE};
        UnkStruct_02073B50 * v5 = &v0->unk_24.unk_04->unk_18;
        const VecFx32 * v6 = &Unk_ov5_02200C24[v0->unk_04][v0->unk_20];

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

        sub_0201E2E0(&v2, 0, v1, 0);
        sub_020715E4(param0, &v3);

        v3.x += v6->x;
        v3.y += v6->y;
        v3.z += v6->z;

        sub_02073BA4(v5, &v3, &v4, &v2);
    }
}

static int ov5_021F6414 (u8 param0)
{
    if (sub_0205DB10(param0)) {
        return(0);
    }

    if (sub_0205DB1C(param0)) {
        return(1);
    }

    if (sub_0205DB04(param0)) {
        return(2);
    }

    if (sub_0205DAF8(param0)) {
        return(3);
    }

    return(-1);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200C10 = {
    (sizeof(UnkStruct_021F6264)),
    ov5_021F6264,
    ov5_021F629C,
    ov5_021F62A0,
    ov5_021F636C
};

static const VecFx32 Unk_ov5_02200C24[4][2] = {
    {
        {0x0, 0x0, 0x0},
        {0x0, 0x0, -(FX32_ONE * 2)}
    },
    {
        {0x0, 0x0, 0x0},
        {0x0, 0x0, (FX32_ONE * 2)}
    },
    {
        {0x0, 0x0, 0x0},
        {-(FX32_ONE * 2), 0x0, 0x0}
    },
    {
        {0x0, 0x0, 0x0},
        {(FX32_ONE * 2), 0x0, 0x0}
    }
};
