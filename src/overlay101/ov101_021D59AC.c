#include "overlay101/ov101_021D59AC.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay101/ov101_021D1A28.h"
#include "overlay101/ov101_021D7E48.h"
#include "overlay101/struct_ov101_021D13C8.h"
#include "overlay101/struct_ov101_021D4764.h"
#include "overlay101/struct_ov101_021D8544.h"
#include "overlay101/struct_ov101_021D93D4.h"

#include "enums.h"
#include "math_util.h"
#include "overworld_anim_manager.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct {
    UnkEnum_ov101_021D5D90 unk_00;
    u32 unk_04;
    u32 unk_08;
    vu32 unk_0C;
    UnkEnum_ov101_021D5814 unk_10;
    VecFx32 unk_14;
    VecFx32 unk_20;
    u32 unk_2C;
    u32 unk_30;
    int unk_34;
    UnkStruct_ov101_021D13C8 *unk_38;
    UnkStruct_ov101_021D8544 unk_3C;
} UnkStruct_ov101_021D630C;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    fx32 unk_04;
    UnkEnum_ov101_021D2BDC unk_08;
} UnkStruct_ov101_021D5A0C;

typedef struct {
    UnkStruct_ov101_021D5A0C unk_00;
    UnkStruct_ov101_021D8544 unk_0C;
} UnkStruct_ov101_021D5A64;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    u32 unk_04;
    u32 unk_08;
    UnkStruct_ov101_021D8544 unk_0C;
} UnkStruct_ov101_021D5B9C;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    u32 unk_04;
    u32 unk_08;
    UnkStruct_ov101_021D8544 unk_0C;
} UnkStruct_ov101_021D5CD4;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    vu32 unk_0C;
    UnkStruct_ov101_021D13C8 *unk_10;
    UnkStruct_ov101_021D8544 unk_14;
} UnkStruct_ov101_021D65F4;

typedef struct {
    u32 unk_00;
    UnkEnum_ov101_021D679C unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    int unk_14;
    UnkEnum_ov101_021D6764 unk_18;
    void *unk_1C;
    UnkStruct_ov101_021D13C8 *unk_20;
    UnkStruct_ov101_021D8544 unk_24;
} UnkStruct_ov101_021D66D0;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    vu32 unk_10;
    VecFx32 unk_14;
    VecFx32 unk_20;
    UnkStruct_ov101_021D13C8 *unk_2C;
    UnkStruct_ov101_021D8544 unk_30;
    UnkStruct_ov101_021D8544 unk_3C;
} UnkStruct_ov101_021D6D10;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    UnkStruct_ov101_021D8544 unk_04;
} UnkStruct_ov101_021D72AC;

typedef struct {
    int unk_00;
    UnkStruct_ov101_021D13C8 *unk_04;
    UnkStruct_ov101_021D8544 unk_08;
} UnkStruct_ov101_021D7394;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    UnkStruct_ov101_021D8544 unk_04;
} UnkStruct_ov101_021D7438;

typedef struct {
    int unk_00;
    UnkStruct_ov101_021D13C8 *unk_04;
    UnkStruct_ov101_021D8544 unk_08;
} UnkStruct_ov101_021D7530;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    UnkStruct_ov101_021D8544 unk_04[2];
} UnkStruct_ov101_021D75F0;

typedef struct {
    UnkStruct_ov101_021D13C8 *unk_00;
    UnkStruct_ov101_021D8544 unk_04[5];
} UnkStruct_ov101_021D7754;

typedef struct {
    UnkEnum_ov101_021D77E4 unk_00;
    u32 unk_04;
    u32 unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_ov101_021D13C8 *unk_14;
    UnkStruct_ov101_021D8544 unk_18[5];
} UnkStruct_ov101_021D7984;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov101_021D13C8 *unk_08;
    UnkStruct_ov101_021D8544 unk_0C[3];
} UnkStruct_ov101_021D7A00;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    UnkEnum_ov101_021D9688 unk_18;
    UnkEnum_ov101_021D4F58 unk_1C;
    UnkStruct_ov101_021D8544 unk_20[3];
    UnkStruct_ov101_021D13C8 *unk_44;
} UnkStruct_ov101_021D7D94;

static void ov101_021D630C(UnkStruct_ov101_021D630C *param0, UnkEnum_ov101_021D5814 param1);
static void ov101_021D63A4(UnkStruct_ov101_021D13C8 *param0);
static void ov101_021D63BC(SysTask *param0, void *param1);
static void ov101_021D63E8(SysTask *param0, void *param1);
static void ov101_021D6410(UnkStruct_ov101_021D13C8 *param0, UnkStruct_ov101_021D8544 *param1, const VecFx32 *param2);
static void ov101_021D65F4(UnkStruct_ov101_021D65F4 *param0);
static void ov101_021D7D94(UnkStruct_ov101_021D7D94 *param0);

static const OverworldAnimManagerFuncs Unk_ov101_021D91DC;
static const OverworldAnimManagerFuncs Unk_ov101_021D91F0;
static const int Unk_ov101_021D927C[6];
static const fx32 Unk_ov101_021D937C[10];
static const fx32 Unk_ov101_021D9354[10];
static const UnkStruct_ov101_021D93D4 Unk_ov101_021D93D4[UnkEnum_ov101_021D5814_05];
static const UnkStruct_ov101_021D93D4 Unk_ov101_021D93A4[UnkEnum_ov101_021D6764_03];

void ov101_021D59AC(UnkStruct_ov101_021D13C8 *param0)
{
    UnkEnum_ov101_021D2BDC v0;
    fx32 v1, v2;
    OverworldAnimManager *v3;
    UnkStruct_ov101_021D5A0C v4;
    VecFx32 v5 = { 0, 0, 0 };

    v4.unk_00 = param0;

    for (v0 = 0, v1 = (FX32_ONE * (40 + 28)); v0 < 3; v0++, v1 += (FX32_ONE * 60)) {
        for (v2 = 0; v2 < (FX32_ONE * 160); v2 += (FX32_ONE * 32)) {
            v5.x = v1;
            v4.unk_08 = v0;
            v4.unk_04 = v2;
            v3 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D91DC, &v5, 0, &v4, 139);
        }
    }
}

static int ov101_021D5A0C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D5A64 *v1 = param1;
    const UnkStruct_ov101_021D5A0C *v2 = OverworldAnimManager_GetUserData(param0);

    v1->unk_00 = *v2;

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v1->unk_00.unk_00->unk_450, &v1->unk_0C, &v0, (NNS_G2D_VRAM_TYPE_2DMAIN), 0, 0, 0, 0, 0, 3, 2);
    Sprite_SetAnimateFlag(v1->unk_0C.unk_04, 1);

    return 1;
}

static void ov101_021D5A64(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5A64 *v0 = param1;
    ov101_021D8544(&v0->unk_0C);
}

static void ov101_021D5A70(OverworldAnimManager *param0, void *param1)
{
    int v0;
    u32 v1;
    fx32 v2;
    VecFx32 v3;
    UnkStruct_ov101_021D5A64 *v4 = param1;

    v0 = v4->unk_00.unk_08;
    v2 = v4->unk_00.unk_00->unk_90[v0] + v4->unk_00.unk_04;
    v2 %= (FX32_ONE * 160);

    OverworldAnimManager_GetPosition(param0, &v3);
    v3.y = v2 + (FX32_ONE * 16) + v4->unk_00.unk_00->unk_9C[v0];
    Sprite_SetPosition(v4->unk_0C.unk_04, &v3);

    v2 = ((v2) / 32);
    v1 = Unk_ov101_021D927C[ov101_021D55A4(v4->unk_00.unk_00, v0, ((v2) / FX32_ONE))];

    if (v1 != Sprite_GetActiveAnim(v4->unk_0C.unk_04)) {
        Sprite_SetAnim(v4->unk_0C.unk_04, v1);
        Sprite_SetAnimFrame(v4->unk_0C.unk_04, 0);
    }
}

static void ov101_021D5AEC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5A64 *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D91DC = {
    sizeof(UnkStruct_ov101_021D5A64),
    ov101_021D5A0C,
    ov101_021D5A64,
    ov101_021D5A70,
    ov101_021D5AEC
};

void ov101_021D5AF0(UnkStruct_ov101_021D13C8 *param0)
{
    u32 v0;
    VecFx32 v1 = { (FX32_ONE * 108), (FX32_ONE * 180), 0 };

    for (v0 = 1; v0 < 100000; v0 *= 10, v1.x -= (FX32_ONE * 8)) {
        OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D91F0, &v1, v0, param0, 141);
    }
}

static int ov101_021D5B44(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D5B9C *v1 = param1;

    v1->unk_04 = OverworldAnimManager_GetID(param0);
    v1->unk_08 = v1->unk_04 * 10;
    v1->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v1->unk_00->unk_450, &v1->unk_0C, &v0, (NNS_G2D_VRAM_TYPE_2DMAIN), 0, 1, 1, 1, 1, 1, 1);
    Sprite_SetAnimateFlag(v1->unk_0C.unk_04, 1);

    return 1;
}

static void ov101_021D5B9C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5B9C *v0 = param1;
    ov101_021D8544(&v0->unk_0C);
}

static void ov101_021D5BA8(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D5B9C *v1 = param1;
    u32 v2 = v1->unk_00->unk_60;

    if ((v1->unk_04 > 1) && (v2 < v1->unk_04)) {
        Sprite_SetDrawFlag(v1->unk_0C.unk_04, FALSE);
        return;
    }

    Sprite_SetDrawFlag(v1->unk_0C.unk_04, TRUE);

    v2 %= v1->unk_08;
    v2 /= v1->unk_04;

    if (v2 != Sprite_GetActiveAnim(v1->unk_0C.unk_04)) {
        Sprite_SetAnim(v1->unk_0C.unk_04, v2);
        Sprite_RestartAnim(v1->unk_0C.unk_04);
    }

    OverworldAnimManager_GetPosition(param0, &v0);
    v0.x += Unk_ov101_021D937C[v2];
    Sprite_SetPosition(v1->unk_0C.unk_04, &v0);
}

static void ov101_021D5C24(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5B9C *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D91F0 = {
    sizeof(UnkStruct_ov101_021D5B9C),
    ov101_021D5B44,
    ov101_021D5B9C,
    ov101_021D5BA8,
    ov101_021D5C24
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9204;

void ov101_021D5C28(UnkStruct_ov101_021D13C8 *param0)
{
    u32 v0;
    VecFx32 v1 = { (FX32_ONE * 180), (FX32_ONE * 180), 0 };

    for (v0 = 1; v0 < 100000; v0 *= 10, v1.x -= (FX32_ONE * 8)) {
        OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9204, &v1, v0, param0, 141);
    }
}

static int ov101_021D5C7C(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D5CD4 *v1 = param1;

    v1->unk_04 = OverworldAnimManager_GetID(param0);
    v1->unk_08 = v1->unk_04 * 10;
    v1->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v1->unk_00->unk_450, &v1->unk_0C, &v0, (NNS_G2D_VRAM_TYPE_2DMAIN), 0, 1, 1, 1, 1, 1, 1);
    Sprite_SetAnimateFlag(v1->unk_0C.unk_04, 1);

    return 1;
}

static void ov101_021D5CD4(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5CD4 *v0 = param1;
    ov101_021D8544(&v0->unk_0C);
}

static void ov101_021D5CE0(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D5CD4 *v1 = param1;
    u32 v2 = v1->unk_00->unk_64;

    if (v2 < v1->unk_04) {
        Sprite_SetDrawFlag(v1->unk_0C.unk_04, FALSE);
        return;
    }

    Sprite_SetDrawFlag(v1->unk_0C.unk_04, TRUE);

    v2 %= v1->unk_08;
    v2 /= v1->unk_04;

    if (v2 != Sprite_GetActiveAnim(v1->unk_0C.unk_04)) {
        Sprite_SetAnim(v1->unk_0C.unk_04, v2);
        Sprite_RestartAnim(v1->unk_0C.unk_04);
    }

    OverworldAnimManager_GetPosition(param0, &v0);
    v0.x += Unk_ov101_021D9354[v2];
    Sprite_SetPosition(v1->unk_0C.unk_04, &v0);
}

static void ov101_021D5D54(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D5B9C *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9204 = {
    sizeof(UnkStruct_ov101_021D5CD4),
    ov101_021D5C7C,
    ov101_021D5CD4,
    ov101_021D5CE0,
    ov101_021D5D54
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9218;
static int (*const *const Unk_ov101_021D9294[UnkEnum_ov101_021D5D90_07])(UnkStruct_ov101_021D630C *);

OverworldAnimManager *ov101_021D5D58(UnkStruct_ov101_021D13C8 *param0, UnkEnum_ov101_021D5814 param1)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 0), (FX32_ONE * 400), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9218, &v1, param1, param0, 134);
    return v0;
}

void ov101_021D5D90(OverworldAnimManager *param0, UnkEnum_ov101_021D5D90 param1)
{
    UnkStruct_ov101_021D630C *v0 = OverworldAnimManager_GetFuncsContext(param0);

    v0->unk_00 = param1;
    v0->unk_04 = 0;
    v0->unk_08 = 0;
    v0->unk_30 = 0;
}

void ov101_021D5DA4(OverworldAnimManager *param0, int param1)
{
    UnkStruct_ov101_021D630C *v0 = OverworldAnimManager_GetFuncsContext(param0);

    if (param1 == 1) {
        Sprite_SetDrawFlag(v0->unk_3C.unk_04, FALSE);
    } else {
        Sprite_SetDrawFlag(v0->unk_3C.unk_04, TRUE);
    }
}

int ov101_021D5DC4(OverworldAnimManager *param0)
{
    UnkStruct_ov101_021D630C *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return v0->unk_08;
}

static int ov101_021D5DD0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D630C *v0 = param1;

    v0->unk_38 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    v0->unk_10 = OverworldAnimManager_GetID(param0);

    return 1;
}

static void ov101_021D5DE8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D630C *v0 = param1;

    if (v0->unk_3C.unk_04 != NULL) {
        ov101_021D63A4(v0->unk_38);
        ov101_021D8544(&v0->unk_3C);
    }
}

static void ov101_021D5E04(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D630C *v1 = param1;

    int (*const *v2)(UnkStruct_ov101_021D630C *);

    do {
        v2 = Unk_ov101_021D9294[v1->unk_00];
        v0 = v2[v1->unk_04](v1);
    } while (v0 == 1);
}

static void ov101_021D5E24(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D630C *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9218 = {
    sizeof(UnkStruct_ov101_021D630C),
    ov101_021D5DD0,
    ov101_021D5DE8,
    ov101_021D5E04,
    ov101_021D5E24
};

static int ov101_021D5E28(UnkStruct_ov101_021D630C *param0)
{
    ov101_021D630C(param0, param0->unk_10);
    param0->unk_04++;
    return 0;
}

static int ov101_021D5E3C(UnkStruct_ov101_021D630C *param0)
{
    if (param0->unk_0C == 2) {
        param0->unk_04++;
    }

    return 0;
}

static int ov101_021D5E4C(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { (FX32_ONE * 0), (FX32_ONE * (192 + 224)), 0 };

    ov101_021D6410(param0->unk_38, &param0->unk_3C, &v0);

    param0->unk_08 = 1;
    param0->unk_04++;

    return 0;
}

static int ov101_021D5E80(UnkStruct_ov101_021D630C *param0)
{
    return 0;
}

static int (*const Unk_ov101_021D911C[])(UnkStruct_ov101_021D630C *work) = {
    ov101_021D5E28,
    ov101_021D5E3C,
    ov101_021D5E4C,
    ov101_021D5E80,
};

static int ov101_021D5E84(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 192)), 0 };
    VecFx32 v1 = { 0x2000, 0x2000, 0 };

    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, 0);
    Sprite_SetPosition(param0->unk_3C.unk_04, &v0);
    Sprite_SetAnim(param0->unk_3C.unk_04, 0);
    Sprite_SetAnimFrame(param0->unk_3C.unk_04, 0);
    Sound_PlayEffect(SEQ_SE_DP_UG_020);

    param0->unk_04++;
    return 0;
}

static int ov101_021D5EEC(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0, v1;

    ov101_021D8560(param0->unk_3C.unk_04, &v0);
    ov101_021D8574(param0->unk_3C.unk_04, &v1);

    v0.y -= (FX32_ONE * 3) + (FX32_ONE / 1);
    v1.x -= 0x1c7;
    v1.y -= 0x1c7;

    param0->unk_30++;

    if (param0->unk_30 >= 9) {
        v0.y = ((FX32_ONE * 192) + (FX32_ONE * 160));
        v1.x = 0x1000;
        v1.y = 0x1000;
        param0->unk_30 = 0;
        param0->unk_04++;
    }

    Sprite_SetPosition(param0->unk_3C.unk_04, &v0);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v1);

    return 0;
}

static int ov101_021D5F54(UnkStruct_ov101_021D630C *param0)
{
    param0->unk_30++;

    if (param0->unk_30 >= 3) {
        param0->unk_30 = 0;
        param0->unk_08 = 1;
        param0->unk_04++;
    }

    return 0;
}

static int (*const Unk_ov101_021D912C[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D5E84, ov101_021D5EEC, ov101_021D5F54, ov101_021D5E80
};

static int ov101_021D5F70(UnkStruct_ov101_021D630C *param0)
{
    Sprite_SetAnim(param0->unk_3C.unk_04, 1);
    Sprite_RestartAnim(param0->unk_3C.unk_04);
    Sprite_SetAnimateFlag(param0->unk_3C.unk_04, 1);

    Sound_PlayEffect(SEQ_SE_DP_SLOT01);
    param0->unk_04++;

    return 0;
}

static int ov101_021D5F9C(UnkStruct_ov101_021D630C *param0)
{
    param0->unk_30++;

    if (param0->unk_30 >= 4) {
        param0->unk_30 = 0;
        param0->unk_08 = 1;
        param0->unk_04++;
    }

    return 0;
}

static int (*const Unk_ov101_021D9028[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D5F70, ov101_021D5F9C, ov101_021D5E80
};

static int ov101_021D5FB8(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { 0x1000, 0x1000, 0 };
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 160)), 0 };

    param0->unk_14 = v1;

    Sprite_SetPosition(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v0);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, 0);
    Sprite_SetAnim(param0->unk_3C.unk_04, 3);
    Sprite_RestartAnim(param0->unk_3C.unk_04);

    param0->unk_04++;
    return 1;
}

static int ov101_021D6020(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0;
    fx32 v1[8] = { (FX32_ONE * -8), (FX32_ONE * 0), (FX32_ONE * -6), (FX32_ONE * 0), (FX32_ONE * -4), (FX32_ONE * 0), (FX32_ONE * -2), (FX32_ONE * 0) };

    v0 = param0->unk_14;
    v0.y += v1[param0->unk_30 / 2];

    Sprite_SetPosition(param0->unk_3C.unk_04, &v0);

    param0->unk_30++;

    if (param0->unk_30 >= 16) {
        param0->unk_30 = 0;
        param0->unk_08 = 1;
        param0->unk_04++;
    }

    return 0;
}

static int (*const Unk_ov101_021D8F38[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D5FB8, ov101_021D6020, ov101_021D5E80
};

static int ov101_021D6084(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { 0x1000, 0x1000, 0 };
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 160)), 0 };

    param0->unk_14 = v1;

    Sprite_SetPosition(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v0);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, 0);
    Sprite_SetAnim(param0->unk_3C.unk_04, 4);
    Sprite_RestartAnim(param0->unk_3C.unk_04);

    param0->unk_04++;
    return 1;
}

static int ov101_021D60EC(UnkStruct_ov101_021D630C *param0)
{
    fx32 v0;
    VecFx32 v1, v2;

    ov101_021D8560(param0->unk_3C.unk_04, &v1);
    ov101_021D8574(param0->unk_3C.unk_04, &v2);

    v1.y += (FX32_ONE * 4);
    v2.x += 0x1c7;
    v2.y += 0x1c7;

    param0->unk_30++;

    if (param0->unk_30 >= 10) {
        v1.y = ((FX32_ONE * 192) + (FX32_ONE * 256));
        v2.x = 0x1000;
        v2.y = 0x1000;
        param0->unk_30 = 0;
        param0->unk_08 = 1;
        param0->unk_04++;
    }

    Sprite_SetPosition(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v2);

    return 0;
}

static int (*const Unk_ov101_021D8FA4[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D6084, ov101_021D60EC, ov101_021D5E80
};

static int ov101_021D6158(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { 0x1000, 0x1000, 0 };
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 160)), 0 };
    VecFx32 v2 = { 0, 0, 0 };

    param0->unk_14 = v1;
    param0->unk_20 = v2;
    param0->unk_30 = 0;
    param0->unk_34 = 0;
    param0->unk_2C = 0;
    param0->unk_08 = 1;

    Sprite_SetPosition(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v0);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, 0);
    Sprite_SetAnim(param0->unk_3C.unk_04, 2);
    Sprite_RestartAnim(param0->unk_3C.unk_04);

    param0->unk_04++;
    return 1;
}

static int ov101_021D61E0(UnkStruct_ov101_021D630C *param0)
{
    u32 v0[8] = { -16, 0, 16, 0, 16, 0, -16, 0 };
    fx32 v1[8] = { (FX32_ONE * -2), 0, (FX32_ONE * 2), 0, (FX32_ONE * 2), 0, (FX32_ONE * -2), 0 };
    u32 v2[8] = { 4, 1, 4, 8, 4, 1, 4, 8 };

    param0->unk_2C += v0[param0->unk_34];
    param0->unk_14.x += v1[param0->unk_34];
    param0->unk_30++;

    if (param0->unk_30 >= v2[param0->unk_34]) {
        param0->unk_34++;

        if (param0->unk_34 >= 8) {
            param0->unk_34 = 0;
        }

        param0->unk_30 = 0;
    }

    Sprite_SetPosition(param0->unk_3C.unk_04, &param0->unk_14);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, param0->unk_2C);

    return 0;
}

static int (*const Unk_ov101_021D8E90[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D6158, ov101_021D61E0, ov101_021D5E80
};

static int ov101_021D6288(UnkStruct_ov101_021D630C *param0)
{
    VecFx32 v0 = { 0x1000, 0x1000, 0 };
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 160)), 0 };
    VecFx32 v2 = { 0, 0, 0 };

    param0->unk_14 = v1;
    param0->unk_20 = v2;
    param0->unk_08 = 1;

    Sprite_SetPosition(param0->unk_3C.unk_04, &v1);
    Sprite_SetAffineScale(param0->unk_3C.unk_04, &v0);
    Sprite_SetAffineZRotation(param0->unk_3C.unk_04, 0);
    Sprite_SetAnim(param0->unk_3C.unk_04, 2);
    Sprite_RestartAnim(param0->unk_3C.unk_04);

    param0->unk_04++;

    return 1;
}

static int (*const Unk_ov101_021D8E68[])(UnkStruct_ov101_021D630C *) = {
    ov101_021D6288, ov101_021D5E80
};

static int (*const *const Unk_ov101_021D9294[UnkEnum_ov101_021D5D90_07])(UnkStruct_ov101_021D630C *) = {
    Unk_ov101_021D911C, Unk_ov101_021D912C, Unk_ov101_021D9028, Unk_ov101_021D8F38, Unk_ov101_021D8FA4, Unk_ov101_021D8E90, Unk_ov101_021D8E68
};

static void ov101_021D630C(UnkStruct_ov101_021D630C *param0, UnkEnum_ov101_021D5814 param1)
{
    SysTask *v0;
    UnkStruct_ov101_021D13C8 *v1 = param0->unk_38;
    const UnkStruct_ov101_021D93D4 *v2;

    GF_ASSERT(param1 < UnkEnum_ov101_021D5814_05);
    v2 = &Unk_ov101_021D93D4[param1];

    ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, v2->unk_00, 2);
    ov101_021D81B4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, v2->unk_04, 2);
    ov101_021D8288(v1->unk_450, v1->unk_438, v2->unk_08, 2);
    ov101_021D82F0(v1->unk_450, v1->unk_438, v2->unk_0C, 2);

    v0 = SysTask_ExecuteOnVBlank(ov101_021D63BC, param0, 257);
    GF_ASSERT(v0 != NULL);

    v0 = SysTask_ExecuteAfterVBlank(ov101_021D63E8, param0, 257);
    GF_ASSERT(v0 != NULL);
}

static void ov101_021D63A4(UnkStruct_ov101_021D13C8 *param0)
{
    ov101_021D8358(param0->unk_450, 2, 2, 2, 2);
}

static void ov101_021D63BC(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D630C *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_38;

    ov101_021D814C(v1->unk_450, 2);
    ov101_021D8220(v1->unk_450, 2);

    v0->unk_0C = 1;

    SysTask_Done(param0);
}

static void ov101_021D63E8(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D630C *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_38;

    if (v0->unk_0C == 1) {
        ov101_021D8254(v1->unk_450, 2);
        v0->unk_0C = 2;
        SysTask_Done(param0);
    }
}

static void ov101_021D6410(UnkStruct_ov101_021D13C8 *param0, UnkStruct_ov101_021D8544 *param1, const VecFx32 *param2)
{
    VecFx32 v0 = { 0, 0, 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    ov101_021D84A4(param0->unk_450, param1, param2, (NNS_G2D_VRAM_TYPE_2DSUB), 1, 2, 2, 2, 2, 2, 7);

    Sprite_SetAffineOverwriteMode(param1->unk_04, 2);
    Sprite_SetAffineTranslation(param1->unk_04, &v0);
    Sprite_SetAffineScale(param1->unk_04, &v1);
    Sprite_SetAffineZRotation(param1->unk_04, CalcAngleRotationIdx_Wraparound(0));
    Sprite_SetAnimateFlag(param1->unk_04, 1);
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9150;

OverworldAnimManager *ov101_021D6484(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 16))), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9150, &v1, 0, param0, 135);
    return v0;
}

static int ov101_021D64BC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;

    v0->unk_10 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    ov101_021D65F4(v0);

    return 1;
}

static void ov101_021D64D0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;

    if (v0->unk_14.unk_04 != NULL) {
        ov101_021D8358(v0->unk_10->unk_450, 3, 3, 3, 3);
        ov101_021D8544(&v0->unk_14);
    }
}

static void ov101_021D64FC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_0C != 2) {
            return;
        }

        {
            VecFx32 v1;

            OverworldAnimManager_GetPosition(param0, &v1);
            ov101_021D84A4(v0->unk_10->unk_450, &v0->unk_14, &v1, (NNS_G2D_VRAM_TYPE_2DSUB), 1, 3, 3, 3, 3, 2, 5);
            Sprite_SetAnimateFlag(v0->unk_14.unk_04, 1);

            v0->unk_00++;
        }
    case 1:
        v0->unk_08++;

        if (v0->unk_08 < 15) {
            return;
        }

        v0->unk_00++;
        v0->unk_04 = 1;
        break;
    case 2:
        ov101_021D8358(v0->unk_10->unk_450, 3, 3, 3, 3);
        ov101_021D8544(&v0->unk_14);
        v0->unk_00++;
    case 3:
        break;
    }
}

static void ov101_021D659C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9150 = {
    sizeof(UnkStruct_ov101_021D65F4),
    ov101_021D64BC,
    ov101_021D64D0,
    ov101_021D64FC,
    ov101_021D659C
};

static void ov101_021D65A0(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_10;

    ov101_021D814C(v1->unk_450, 3);
    ov101_021D8220(v1->unk_450, 3);

    v0->unk_0C = 1;

    SysTask_Done(param0);
}

static void ov101_021D65CC(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D65F4 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_10;

    if (v0->unk_0C == 1) {
        ov101_021D8254(v1->unk_450, 3);
        v0->unk_0C = 2;
        SysTask_Done(param0);
    }
}

static void ov101_021D65F4(UnkStruct_ov101_021D65F4 *param0)
{
    SysTask *v0;
    UnkStruct_ov101_021D13C8 *v1 = param0->unk_10;

    ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, 44, 3);
    ov101_021D81B4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, 47, 3);
    ov101_021D8288(v1->unk_450, v1->unk_438, 45, 3);
    ov101_021D82F0(v1->unk_450, v1->unk_438, 46, 3);

    v0 = SysTask_ExecuteOnVBlank(ov101_021D65A0, param0, 257);
    GF_ASSERT(v0 != NULL);

    v0 = SysTask_ExecuteAfterVBlank(ov101_021D65CC, param0, 257);
    GF_ASSERT(v0 != NULL);
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9164;
static int (*const *const Unk_ov101_021D9330[UnkEnum_ov101_021D679C_09])(UnkStruct_ov101_021D66D0 *);

static void ov101_021D667C(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D66D0 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_20;

    ov101_021D814C(v1->unk_450, 4);
    ov101_021D8220(v1->unk_450, 4);

    v0->unk_10 = 1;
    SysTask_Done(param0);
}

static void ov101_021D66A8(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D66D0 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_20;

    if (v0->unk_10 == 1) {
        ov101_021D8254(v1->unk_450, 4);

        v0->unk_10 = 2;
        SysTask_Done(param0);
    }
}

static void ov101_021D66D0(UnkStruct_ov101_021D66D0 *param0)
{
    SysTask *v0;
    UnkStruct_ov101_021D13C8 *v1 = param0->unk_20;
    const UnkStruct_ov101_021D93D4 *v2 = &Unk_ov101_021D93A4[param0->unk_18];

    ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, v2->unk_00, 4);
    ov101_021D81B4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, v2->unk_04, 4);
    ov101_021D8288(v1->unk_450, v1->unk_438, v2->unk_08, 4);
    ov101_021D82F0(v1->unk_450, v1->unk_438, v2->unk_0C, 4);

    v0 = SysTask_ExecuteOnVBlank(ov101_021D667C, param0, 257);
    GF_ASSERT(v0 != NULL);

    v0 = SysTask_ExecuteAfterVBlank(ov101_021D66A8, param0, 257);
    GF_ASSERT(v0 != NULL);
}

OverworldAnimManager *ov101_021D6764(UnkStruct_ov101_021D13C8 *param0, UnkEnum_ov101_021D6764 param1)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 128), (FX32_ONE * 160), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9164, &v1, param1, param0, 137);

    return v0;
}

void ov101_021D679C(OverworldAnimManager *param0, UnkEnum_ov101_021D679C param1)
{
    UnkStruct_ov101_021D66D0 *v0 = OverworldAnimManager_GetFuncsContext(param0);

    v0->unk_04 = param1;
    v0->unk_08 = 0;
    v0->unk_0C = 0;
    v0->unk_14 = 0;
}

int ov101_021D67B0(OverworldAnimManager *param0)
{
    UnkStruct_ov101_021D66D0 *v0 = OverworldAnimManager_GetFuncsContext(param0);
    return v0->unk_0C;
}

static int ov101_021D67BC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D66D0 *v0 = param1;

    v0->unk_20 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    v0->unk_18 = OverworldAnimManager_GetID(param0);

    ov101_021D66D0(v0);

    return 1;
}

static void ov101_021D67DC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D66D0 *v0 = param1;

    if (v0->unk_24.unk_04 != NULL) {
        UnkStruct_ov101_021D13C8 *v1 = v0->unk_20;

        ov101_021D8358(v1->unk_450, 4, 4, 4, 4);
        ov101_021D8544(&v0->unk_24);
    }
}

static void ov101_021D6808(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D66D0 *v1 = param1;

    int (*const *v2)(UnkStruct_ov101_021D66D0 *);

    do {
        v2 = Unk_ov101_021D9330[v1->unk_04];
        v0 = v2[v1->unk_08](v1);
    } while (v0 == 1);
}

static void ov101_021D6828(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D66D0 *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9164 = {
    sizeof(UnkStruct_ov101_021D66D0),
    ov101_021D67BC,
    ov101_021D67DC,
    ov101_021D6808,
    ov101_021D6828
};

static int ov101_021D682C(UnkStruct_ov101_021D66D0 *param0)
{
    if (param0->unk_10 == 2) {
        VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 256)), 0 };
        VecFx32 v1 = { 0, 0, 0 };
        VecFx32 v2 = { 0x1000, 0x1000, 0 };

        ov101_021D84A4(param0->unk_20->unk_450, &param0->unk_24, &v0, (NNS_G2D_VRAM_TYPE_2DSUB), 1, 4, 4, 4, 4, 2, 6);
        Sprite_SetAffineOverwriteMode(param0->unk_24.unk_04, 2);
        Sprite_SetAffineTranslation(param0->unk_24.unk_04, &v1);
        Sprite_SetAffineZRotation(param0->unk_24.unk_04, CalcAngleRotationIdx_Wraparound(0));

        param0->unk_0C = 1;
        param0->unk_08++;
    }

    return 0;
}

static int ov101_021D68A8(UnkStruct_ov101_021D66D0 *param0)
{
    return 0;
}

static int (*const Unk_ov101_021D8E80[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D682C,
    ov101_021D68A8,
};

static int ov101_021D68AC(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x400, 0x400, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, 0);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 0);

    param0->unk_08++;
    return 0;
}

static int ov101_021D6908(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0, v1;

    ov101_021D8560(param0->unk_24.unk_04, &v0);
    ov101_021D8574(param0->unk_24.unk_04, &v1);

    v1.x += 0xc0;
    v1.y += 0xc0;

    param0->unk_14++;

    if (param0->unk_14 >= 16) {
        v0.y = ((FX32_ONE * 192) + (FX32_ONE * (160 - 32)));
        v1.x = 0x1000;
        v1.y = 0x1000;
        param0->unk_14 = 0;
        param0->unk_08++;

        Sound_PlayPokemonCry(SPECIES_CLEFAIRY, 0);
    }

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    return 0;
}

static int ov101_021D6968(UnkStruct_ov101_021D66D0 *param0)
{
    Sprite_UpdateAnim(param0->unk_24.unk_04, (FX32_ONE * 1));
    param0->unk_14++;

    if (param0->unk_14 >= 9) {
        param0->unk_14 = 0;
        param0->unk_08++;
        param0->unk_0C = 1;
    }

    return 0;
}

static int (*const Unk_ov101_021D910C[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D68AC, ov101_021D6908, ov101_021D6968, ov101_021D68A8
};

static int ov101_021D6994(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, 0);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 0);
    Sound_PlayEffect(SEQ_SE_DP_SLOT02);

    param0->unk_08++;
    return 0;
}

static int ov101_021D69FC(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0, v1;

    ov101_021D8560(param0->unk_24.unk_04, &v0);
    ov101_021D8574(param0->unk_24.unk_04, &v1);

    v1.x -= 0x180;
    v1.y -= 0x180;

    param0->unk_14++;

    if (param0->unk_14 >= 8) {
        v0.y = ((FX32_ONE * 192) + (FX32_ONE * 272));
        v1.x = 0x1000;
        v1.y = 0x1000;
        param0->unk_14 = 0;
        param0->unk_08++;
        param0->unk_0C = 1;
    }

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);

    return 0;
}

static int (*const Unk_ov101_021D9064[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6994, ov101_021D69FC, ov101_021D68A8
};

static int ov101_021D6A60(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 0);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 0);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, 0);
    Sprite_RestartAnim(param0->unk_24.unk_04);

    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int (*const Unk_ov101_021D8E58[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6A60, ov101_021D68A8
};

static int ov101_021D6AC8(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, FX32_ONE / 2);

    if (Sprite_GetActiveAnim(param0->unk_24.unk_04) != 2) {
        Sprite_SetAnim(param0->unk_24.unk_04, 2);
        Sprite_RestartAnim(param0->unk_24.unk_04);
    }

    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int (*const Unk_ov101_021D8E88[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6AC8, ov101_021D68A8
};

static int ov101_021D6B3C(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 5);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, FX32_ONE);
    Sprite_RestartAnim(param0->unk_24.unk_04);

    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int (*const Unk_ov101_021D8E78[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6B3C, ov101_021D68A8
};

static int ov101_021D6BA4(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 4);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, FX32_ONE);
    Sprite_RestartAnim(param0->unk_24.unk_04);

    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int (*const Unk_ov101_021D8E70[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6BA4, ov101_021D68A8
};

static int ov101_021D6C0C(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnim(param0->unk_24.unk_04, 3);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 1);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, FX32_ONE);
    Sprite_RestartAnim(param0->unk_24.unk_04);

    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int (*const Unk_ov101_021D8E60[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6C0C, ov101_021D68A8
};

static int ov101_021D6C74(UnkStruct_ov101_021D66D0 *param0)
{
    VecFx32 v0 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * (160 - 32))), 0 };
    VecFx32 v1 = { 0x1000, 0x1000, 0 };

    Sprite_SetAffineScale(param0->unk_24.unk_04, &v1);
    Sprite_SetPosition(param0->unk_24.unk_04, &v0);
    Sprite_SetAnimateFlag(param0->unk_24.unk_04, 0);
    Sprite_SetAnimSpeed(param0->unk_24.unk_04, FX32_ONE);

    Sprite_SetAnim(param0->unk_24.unk_04, 5);
    Sprite_RestartAnim(param0->unk_24.unk_04);

    param0->unk_14 = 0;
    param0->unk_0C = 1;
    param0->unk_08++;

    return 0;
}

static int ov101_021D6CE0(UnkStruct_ov101_021D66D0 *param0)
{
    Sprite_UpdateAnim(param0->unk_24.unk_04, FX32_ONE);

    if (Sprite_IsAnimated(param0->unk_24.unk_04) == 0) {
        param0->unk_14++;

        if (param0->unk_14 >= 8) {
            param0->unk_14 = 0;
            Sprite_RestartAnim(param0->unk_24.unk_04);
        }
    }

    return 0;
}

static int (*const Unk_ov101_021D8ED8[])(UnkStruct_ov101_021D66D0 *) = {
    ov101_021D6C74, ov101_021D6CE0, ov101_021D68A8
};

static int (*const *const Unk_ov101_021D9330[UnkEnum_ov101_021D679C_09])(UnkStruct_ov101_021D66D0 *) = {
    Unk_ov101_021D8E80, Unk_ov101_021D910C, Unk_ov101_021D9064, Unk_ov101_021D8E58, Unk_ov101_021D8E88, Unk_ov101_021D8E78, Unk_ov101_021D8E70, Unk_ov101_021D8E60, Unk_ov101_021D8ED8
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9178;

static void ov101_021D6D10(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_2C;

    ov101_021D814C(v1->unk_450, 5);
    ov101_021D8220(v1->unk_450, 5);

    v0->unk_10 = 1;

    SysTask_Done(param0);
}

static void ov101_021D6D3C(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_2C;

    if (v0->unk_10 = 1) {
        ov101_021D8254(v1->unk_450, 5);
        v0->unk_10 = 2;
        SysTask_Done(param0);
    }
}

static void ov101_021D6D68(UnkStruct_ov101_021D6D10 *param0)
{
    SysTask *v0;
    UnkStruct_ov101_021D13C8 *v1 = param0->unk_2C;

    ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, 56, 5);
    ov101_021D81B4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DSUB), v1->unk_438, 59, 5);
    ov101_021D8288(v1->unk_450, v1->unk_438, 57, 5);
    ov101_021D82F0(v1->unk_450, v1->unk_438, 58, 5);

    v0 = SysTask_ExecuteOnVBlank(ov101_021D6D10, param0, 257);
    GF_ASSERT(v0 != NULL);
    v0 = SysTask_ExecuteAfterVBlank(ov101_021D6D3C, param0, 257);
    GF_ASSERT(v0 != NULL);
}

OverworldAnimManager *ov101_021D6DF0(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { 0, 0, 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9178, &v1, 0, param0, 136);
    return v0;
}

int ov101_021D6E1C(OverworldAnimManager *param0)
{
    UnkStruct_ov101_021D6D10 *v0 = OverworldAnimManager_GetFuncsContext(param0);

    return v0->unk_04;
}

static int ov101_021D6E28(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;

    v0->unk_2C = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    ov101_021D6D68(v0);
    return 1;
}

static void ov101_021D6E3C(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;

    if (v0->unk_30.unk_04 != NULL) {
        ov101_021D8358(v0->unk_2C->unk_450, 5, 5, 5, 5);
        ov101_021D8544(&v0->unk_30);

        if (v0->unk_3C.unk_04 != NULL) {
            ov101_021D8544(&v0->unk_3C);
        }
    }
}

static void ov101_021D6E78(OverworldAnimManager *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, Sprite *param5, int param6)
{
    VecFx32 v0, v1;

    OverworldAnimManager_GetPosition(param0, &v0);
    v0.x += param3;
    v0.y += param4;
    OverworldAnimManager_SetPosition(param0, &v0);

    if (param6 == 0) {
        v1.x = param1 + v0.x;
    } else {
        v1.x = param1 - v0.x;
    }

    v1.y = param2 - v0.y;
    Sprite_SetPosition(param5, &v1);
}

static void ov101_021D6EC8(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_10 != 2) {
            return;
        }

        {
            VecFx32 v1 = { 0, ((FX32_ONE * 192) + (FX32_ONE * 256)), 0 };

            ov101_021D84A4(v0->unk_2C->unk_450, &v0->unk_30, &v1, (NNS_G2D_VRAM_TYPE_2DSUB), 1, 5, 5, 5, 5, 2, 4);
            ov101_021D84A4(v0->unk_2C->unk_450, &v0->unk_3C, &v1, (NNS_G2D_VRAM_TYPE_2DSUB), 1, 5, 5, 5, 5, 2, 4);
            Sprite_SetFlipMode(v0->unk_3C.unk_04, 1);
            v0->unk_00++;
        }
    case 1: {
        int v2 = 0;
        VecFx32 v3, v4;

        OverworldAnimManager_GetPosition(param0, &v3);

        v3.x += (FX32_ONE * 8);
        v3.y += (FX32_ONE * 8);

        if (v3.x >= (FX32_ONE * 64)) {
            v3.x = (FX32_ONE * 64);
            v2++;
        }

        if (v3.y >= (FX32_ONE * 56)) {
            v3.y = (FX32_ONE * 64);
            v2++;
        }

        OverworldAnimManager_SetPosition(param0, &v3);

        v4.x = (FX32_ONE * -32) + v3.x;
        v4.y = ((FX32_ONE * 192) + (FX32_ONE * 228)) - v3.y;

        Sprite_SetPosition(v0->unk_30.unk_04, &v4);

        v4.x = (FX32_ONE * 288) - v3.x;
        v4.y = ((FX32_ONE * 192) + (FX32_ONE * 228)) - v3.y;

        Sprite_SetPosition(v0->unk_3C.unk_04, &v4);

        if (v2 == 2) {
            v0->unk_00++;
        }
    } break;
    case 2:
        v0->unk_08++;

        if (v0->unk_08 < 8) {
            break;
        }

        v0->unk_08 = 0;
        v0->unk_00++;
    case 3:
        ov101_021D6E78(param0, (FX32_ONE * -32), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * -2), (FX32_ONE * -4), v0->unk_30.unk_04, 0);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;
            v0->unk_00++;
        }
        break;
    case 4:
        ov101_021D6E78(param0, (FX32_ONE * -32), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 2), (FX32_ONE * 4), v0->unk_30.unk_04, 0);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;
            v0->unk_00++;
        }
        break;
    case 5:
        ov101_021D6E78(param0, (FX32_ONE * 288), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * -2), (FX32_ONE * -4), v0->unk_3C.unk_04, 1);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;
            v0->unk_00++;
        }
        break;
    case 6:
        ov101_021D6E78(param0, (FX32_ONE * 288), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 2), (FX32_ONE * 4), v0->unk_3C.unk_04, 1);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;

            v0->unk_0C++;

            if (v0->unk_0C < 2) {
                v0->unk_00 = 3;
            } else {
                v0->unk_0C = 0;
                v0->unk_00++;
            }
        }
        break;
    case 7:
        v0->unk_08++;

        if (v0->unk_08 < 8) {
            break;
        }

        v0->unk_08 = 0;
        v0->unk_00++;
    case 8:
        ov101_021D6E78(param0, (FX32_ONE * -32), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * -2), (FX32_ONE * -4), v0->unk_30.unk_04, 0);
        ov101_021D6E78(param0, (FX32_ONE * 288), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 0), (FX32_ONE * 0), v0->unk_3C.unk_04, 1);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;
            v0->unk_00++;
        }
        break;
    case 9:
        ov101_021D6E78(param0, (FX32_ONE * -32), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 2), (FX32_ONE * 4), v0->unk_30.unk_04, 0);
        ov101_021D6E78(param0, (FX32_ONE * 288), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 0), (FX32_ONE * 0), v0->unk_3C.unk_04, 1);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            v0->unk_08 = 0;

            v0->unk_0C++;

            if (v0->unk_0C < 2) {
                v0->unk_00 = 8;
            } else {
                v0->unk_0C = 0;
                v0->unk_00++;
            }
        }
        break;
    case 10:
        ov101_021D6E78(param0, (FX32_ONE * -32), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * -8), (FX32_ONE * -8), v0->unk_30.unk_04, 0);
        ov101_021D6E78(param0, (FX32_ONE * 288), ((FX32_ONE * 192) + (FX32_ONE * 228)), (FX32_ONE * 0), (FX32_ONE * 0), v0->unk_3C.unk_04, 1);

        v0->unk_08++;

        if (v0->unk_08 >= 4) {
            ov101_021D8544(&v0->unk_30);
            ov101_021D8544(&v0->unk_3C);
            ov101_021D8358(v0->unk_2C->unk_450, 5, 5, 5, 5);
        }

        v0->unk_00++;
        v0->unk_04 = 1;
    }
}

static void ov101_021D7224(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D6D10 *v0 = param1;
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9178 = {
    sizeof(UnkStruct_ov101_021D6D10),
    ov101_021D6E28,
    ov101_021D6E3C,
    ov101_021D6EC8,
    ov101_021D7224
};

static const OverworldAnimManagerFuncs Unk_ov101_021D918C;

OverworldAnimManager *ov101_021D7228(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 24), ((FX32_ONE * 192) + (FX32_ONE * 8)), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D918C, &v1, 0, param0, 142);
    return v0;
}

static int ov101_021D7260(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D72AC *v1 = param1;

    v1->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v1->unk_00->unk_450, &v1->unk_04, &v0, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 6, 6, 6, 6, 2, 3);
    Sprite_SetAnimateFlag(v1->unk_04.unk_04, 1);

    return 1;
}

static void ov101_021D72AC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D72AC *v0 = param1;
    ov101_021D8544(&v0->unk_04);
}

static void ov101_021D72B8(OverworldAnimManager *param0, void *param1)
{
    int v0 = 1;
    UnkStruct_ov101_021D72AC *v1 = param1;
    UnkStruct_ov101_021D4764 *v2 = &v1->unk_00->unk_13C;

    if (v2->unk_0C == 1) {
        v0 = 0;
    }

    Sprite_SetDrawFlag(v1->unk_04.unk_04, v0);
}

static const OverworldAnimManagerFuncs Unk_ov101_021D918C = {
    sizeof(UnkStruct_ov101_021D72AC),
    ov101_021D7260,
    ov101_021D72AC,
    ov101_021D72B8,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D91C8;

OverworldAnimManager *ov101_021D72D4(UnkStruct_ov101_021D13C8 *param0)
{
    VecFx32 v0;
    OverworldAnimManager *v1;

    v0.x = (FX32_ONE * (128 - (((6 + 5) * 8) / 2)));
    v0.y = ((FX32_ONE * 192) + (FX32_ONE * (96 + 16)));
    v1 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D91C8, &v0, 0, param0, 142);

    return v1;
}

static int ov101_021D7304(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    VecFx32 v1 = { 0, 0, 0 };
    VecFx32 v2 = { 0x2000, 0x2000, 0 };
    UnkStruct_ov101_021D7394 *v3 = param1;

    v3->unk_04 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v3->unk_04->unk_450, &v3->unk_08, &v0, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 6, 6, 6, 6, 2, 3);

    Sprite_SetAffineOverwriteMode(v3->unk_08.unk_04, 2);
    Sprite_SetAffineTranslation(v3->unk_08.unk_04, &v1);
    Sprite_SetAffineScale(v3->unk_08.unk_04, &v2);
    Sprite_SetAffineZRotation(v3->unk_08.unk_04, CalcAngleRotationIdx_Wraparound(0));
    Sprite_SetAnimateFlag(v3->unk_08.unk_04, 1);

    return 1;
}

static void ov101_021D7394(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D7394 *v0 = param1;
    ov101_021D8544(&v0->unk_08);
}

static void ov101_021D73A0(OverworldAnimManager *param0, void *param1)
{
    int v0 = 1;
    UnkStruct_ov101_021D7394 *v1 = param1;

    v1->unk_00++;

    if (v1->unk_00 >= 45) {
        OverworldAnimManager_Finish(param0);
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D91C8 = {
    sizeof(UnkStruct_ov101_021D7394),
    ov101_021D7304,
    ov101_021D7394,
    ov101_021D73A0,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D922C;

OverworldAnimManager *ov101_021D73B4(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 200), ((FX32_ONE * 192) + (FX32_ONE * 184)), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D922C, &v1, 0, param0, 142);
    return v0;
}

static int ov101_021D73EC(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov101_021D72AC *v1 = param1;

    v1->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v1->unk_00->unk_450, &v1->unk_04, &v0, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 7, 6, 7, 7, 2, 3);
    Sprite_SetAnimateFlag(v1->unk_04.unk_04, 1);

    return 1;
}

static void ov101_021D7438(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D7438 *v0 = param1;
    ov101_021D8544(&v0->unk_04);
}

static void ov101_021D7444(OverworldAnimManager *param0, void *param1)
{
    int v0 = 1;
    UnkStruct_ov101_021D7438 *v1 = param1;
    UnkStruct_ov101_021D4764 *v2 = &v1->unk_00->unk_13C;

    if (v2->unk_0C == 1) {
        v0 = 0;
    }

    Sprite_SetDrawFlag(v1->unk_04.unk_04, v0);
}

static const OverworldAnimManagerFuncs Unk_ov101_021D922C = {
    sizeof(UnkStruct_ov101_021D7438),
    ov101_021D73EC,
    ov101_021D7438,
    ov101_021D7444,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9254;

OverworldAnimManager *ov101_021D7460(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 200), ((FX32_ONE * 192) + (FX32_ONE * 184)), 0 };

    v1.x = (FX32_ONE * (128 - (((10 + 5) * 8) / 2)));
    v1.y = ((FX32_ONE * 192) + (FX32_ONE * (96 - 16)));
    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9254, &v1, 0, param0, 142);

    return v0;
}

static int ov101_021D74A0(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    VecFx32 v1 = { 0, 0, 0 };
    VecFx32 v2 = { 0x2000, 0x2000, 0 };
    UnkStruct_ov101_021D7530 *v3 = param1;

    v3->unk_04 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    OverworldAnimManager_GetPosition(param0, &v0);
    ov101_021D84A4(v3->unk_04->unk_450, &v3->unk_08, &v0, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 7, 6, 7, 7, 2, 3);

    Sprite_SetAffineOverwriteMode(v3->unk_08.unk_04, 2);
    Sprite_SetAffineTranslation(v3->unk_08.unk_04, &v1);
    Sprite_SetAffineScale(v3->unk_08.unk_04, &v2);
    Sprite_SetAffineZRotation(v3->unk_08.unk_04, CalcAngleRotationIdx_Wraparound(0));
    Sprite_SetAnimateFlag(v3->unk_08.unk_04, 1);

    return 1;
}

static void ov101_021D7530(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D7530 *v0 = param1;
    ov101_021D8544(&v0->unk_08);
}

static void ov101_021D753C(OverworldAnimManager *param0, void *param1)
{
    int v0 = 1;
    UnkStruct_ov101_021D7530 *v1 = param1;

    v1->unk_00++;

    if (v1->unk_00 >= 45) {
        OverworldAnimManager_Finish(param0);
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9254 = {
    sizeof(UnkStruct_ov101_021D7530),
    ov101_021D74A0,
    ov101_021D7530,
    ov101_021D753C,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D913C;

OverworldAnimManager *ov101_021D7550(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 14), ((FX32_ONE * 192) + (FX32_ONE * 8)), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D913C, &v1, 0, param0, 142);
    return v0;
}

static int ov101_021D7588(OverworldAnimManager *param0, void *param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_ov101_021D75F0 *v2 = param1;

    v2->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    OverworldAnimManager_GetPosition(param0, &v1);

    for (v0 = 0; v0 < 2; v0++) {
        ov101_021D84A4(v2->unk_00->unk_450, &v2->unk_04[v0], &v1, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 8, 6, 8, 8, 2, 3);
        Sprite_SetDrawFlag(v2->unk_04[v0].unk_04, FALSE);
        Sprite_SetAnimateFlag(v2->unk_04[v0].unk_04, 1);
    }

    return 1;
}

static void ov101_021D75F0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D75F0 *v0 = param1;

    ov101_021D8544(&v0->unk_04[0]);
    ov101_021D8544(&v0->unk_04[1]);
}

static void ov101_021D7604(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D75F0 *v0 = param1;
    UnkStruct_ov101_021D4764 *v1 = &v0->unk_00->unk_13C;

    Sprite_SetDrawFlag(v0->unk_04[0].unk_04, FALSE);
    Sprite_SetDrawFlag(v0->unk_04[1].unk_04, FALSE);

    if (v1->unk_0C == 1) {
        return;
    }

    {
        VecFx32 v2 = { (FX32_ONE * 52), ((FX32_ONE * 192) + (FX32_ONE * 8)), 0 };
        u32 v3 = 0, v4, v5;

        v5 = v0->unk_00->unk_10;

        if (v5 > 99) {
            v5 = 99;
        }

        v4 = (v5 % 100) / 10;

        if (v4) {
            Sprite_SetPosition(v0->unk_04[v3].unk_04, &v2);
            Sprite_SetAnim(v0->unk_04[v3].unk_04, v4);
            Sprite_RestartAnim(v0->unk_04[v3].unk_04);
            Sprite_SetDrawFlag(v0->unk_04[v3].unk_04, TRUE);
            v2.x += (FX32_ONE * 8);
            v3++;
        }

        v4 = (v5 % 10);

        Sprite_SetPosition(v0->unk_04[v3].unk_04, &v2);
        Sprite_SetAnim(v0->unk_04[v3].unk_04, v4);
        Sprite_RestartAnim(v0->unk_04[v3].unk_04);
        Sprite_SetDrawFlag(v0->unk_04[v3].unk_04, TRUE);
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D913C = {
    sizeof(UnkStruct_ov101_021D5B9C),
    ov101_021D7588,
    ov101_021D75F0,
    ov101_021D7604,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D91A0;

OverworldAnimManager *ov101_021D76B4(UnkStruct_ov101_021D13C8 *param0)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 14), ((FX32_ONE * 192) + (FX32_ONE * 8)), 0 };

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D91A0, &v1, 0, param0, 142);
    return v0;
}

static int ov101_021D76EC(OverworldAnimManager *param0, void *param1)
{
    int v0;
    VecFx32 v1 = { (FX32_ONE * 220), ((FX32_ONE * 192) + (FX32_ONE * 184)), 0 };
    UnkStruct_ov101_021D7754 *v2 = param1;

    v2->unk_00 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    for (v0 = 0; v0 < 5; v0++, v1.x += (FX32_ONE * 8)) {
        ov101_021D84A4(v2->unk_00->unk_450, &v2->unk_04[v0], &v1, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 8, 6, 8, 8, 2, 3);
    }

    return 1;
}

static void ov101_021D7754(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D7754 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 5; v1++) {
        ov101_021D8544(&v0->unk_04[v1]);
    }
}

static void ov101_021D776C(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D7754 *v1 = param1;
    UnkStruct_ov101_021D4764 *v2 = &v1->unk_00->unk_13C;

    {
        int v3 = 1;

        if (v2->unk_0C == 1) {
            v3 = 0;
        }

        for (v0 = 0; v0 < 5; Sprite_SetDrawFlag(v1->unk_04[v0].unk_04, v3), v0++) {
            (void)0;
        }

        if (v3 == 0) {
            return;
        }
    }

    {
        int v4;
        int v5 = 0, v6, v7;

        v7 = v1->unk_00->unk_14;

        if (v7 > 50000) {
            v7 = 50000;
        }

        for (v4 = 10000; v4 >= 1; v4 /= 10, v5++) {
            v6 = (v7 % (v4 * 10)) / v4;
            Sprite_SetAnim(v1->unk_04[v5].unk_04, v6);
            Sprite_RestartAnim(v1->unk_04[v5].unk_04);
        }
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D91A0 = {
    sizeof(UnkStruct_ov101_021D7754),
    ov101_021D76EC,
    ov101_021D7754,
    ov101_021D776C,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9240;

OverworldAnimManager *ov101_021D77E4(UnkStruct_ov101_021D13C8 *param0, UnkEnum_ov101_021D77E4 param1)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { 0, 0, 0 };
    u32 v2;

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9240, &v1, param1, param0, 142);

    return v0;
}

static int ov101_021D7810(OverworldAnimManager *param0, void *param1)
{
    int v0, v1, v2;
    VecFx32 v3;
    VecFx32 v4 = { 0, 0, 0 };
    VecFx32 v5 = { 0x2000, 0x2000, 0 };
    UnkStruct_ov101_021D7984 *v6 = param1;
    UnkStruct_ov101_021D13C8 *v7 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);

    v6->unk_00 = OverworldAnimManager_GetID(param0);
    v6->unk_14 = v7;

    if (v6->unk_00 == UnkEnum_ov101_021D77E4_00) {
        v6->unk_04 = v7->unk_1C;

        if (v6->unk_04 > 999) {
            v6->unk_04 = 999;
        }

        if (v6->unk_04 >= 100) {
            v6->unk_08 = 3;
        } else if (v6->unk_04 >= 10) {
            v6->unk_08 = 2;
        } else {
            v6->unk_08 = 1;
        }

        v3.x = (FX32_ONE * (128 + (((4 + 5) * 16) / 2)));
        v3.y = ((FX32_ONE * 192) + (FX32_ONE * (96 + 16)));
    } else {
        v6->unk_04 = v7->unk_14;

        if (v6->unk_04 > 99999) {
            v6->unk_04 = 99999;
        }

        if (v6->unk_04 >= 10000) {
            v6->unk_08 = 5;
        } else if (v6->unk_04 >= 1000) {
            v6->unk_08 = 4;
        } else if (v6->unk_04 >= 100) {
            v6->unk_08 = 3;
        } else if (v6->unk_04 >= 10) {
            v6->unk_08 = 2;
        } else {
            v6->unk_08 = 1;
        }

        v3.x = (FX32_ONE * (128 + (((4 + 5) * 16) / 2)));
        v3.y = ((FX32_ONE * 192) + (FX32_ONE * (96 - 16)));
    }

    for (v0 = 0, v1 = 1; v0 < v6->unk_08; v0++, v1 *= 10, v3.x -= (FX32_ONE * 16)) {
        ov101_021D84A4(v6->unk_14->unk_450, &v6->unk_18[v0], &v3, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 8, 6, 8, 8, 2, 3);

        Sprite_SetAffineOverwriteMode(v6->unk_18[v0].unk_04, 2);
        Sprite_SetAffineTranslation(v6->unk_18[v0].unk_04, &v4);
        Sprite_SetAffineScale(v6->unk_18[v0].unk_04, &v5);
        Sprite_SetAffineZRotation(v6->unk_18[v0].unk_04, CalcAngleRotationIdx_Wraparound(0));

        v2 = (v6->unk_04 % (v1 * 10)) / v1;

        Sprite_SetAnim(v6->unk_18[v0].unk_04, v2);
        Sprite_RestartAnim(v6->unk_18[v0].unk_04);
    }

    v6->unk_10 = v0;
    return 1;
}

static void ov101_021D7984(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D7984 *v1 = param1;

    for (v0 = 0; v0 < v1->unk_10; v0++) {
        ov101_021D8544(&v1->unk_18[v0]);
    }
}

static void ov101_021D79A8(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D7984 *v1 = param1;

    v1->unk_0C++;

    if (v1->unk_0C >= 45) {
        OverworldAnimManager_Finish(param0);
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9240 = {
    sizeof(UnkStruct_ov101_021D7984),
    ov101_021D7810,
    ov101_021D7984,
    ov101_021D79A8,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D9268;

OverworldAnimManager *ov101_021D79BC(UnkStruct_ov101_021D13C8 *param0, u32 param1)
{
    OverworldAnimManager *v0;
    VecFx32 v1 = { (FX32_ONE * 128), ((FX32_ONE * 192) + (FX32_ONE * 32)), 0 };

    if (param1 > 999) {
        param1 = 999;
    }

    v0 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D9268, &v1, param1, param0, 142);
    return v0;
}

static int ov101_021D7A00(OverworldAnimManager *param0, void *param1)
{
    int v0;
    u32 v1, v2, v3;
    VecFx32 v4;
    UnkStruct_ov101_021D7A00 *v5 = param1;

    v5->unk_08 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    v1 = OverworldAnimManager_GetID(param0);

    OverworldAnimManager_GetPosition(param0, &v4);

    if (v1 >= 100) {
        v2 = 100;
        v5->unk_04 = 3;
        v4.x -= (FX32_ONE * 16);
    } else if (v1 >= 10) {
        v2 = 10;
        v5->unk_04 = 2;
        v4.x -= (FX32_ONE * 8);
    } else {
        v2 = 1;
        v5->unk_04 = 1;
    }

    for (v0 = 0; v0 < v5->unk_04; v0++, v4.x += (FX32_ONE * 16), v2 /= 10) {
        ov101_021D84A4(v5->unk_08->unk_450, &v5->unk_0C[v0], &v4, (NNS_G2D_VRAM_TYPE_2DSUB), 0, 9, 7, 9, 9, 2, 3);

        v3 = (v1 % (v2 * 10)) / v2;
        Sprite_SetAnim(v5->unk_0C[v0].unk_04, v3);
    }

    return 1;
}

static void ov101_021D7AD0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_ov101_021D7A00 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < v0->unk_04; v1++) {
        ov101_021D8544(&v0->unk_0C[v1]);
    }
}

static void ov101_021D7AF4(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D7A00 *v1 = param1;

    v1->unk_00++;

    if (v1->unk_00 >= 60) {
        OverworldAnimManager_Finish(param0);
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D9268 = {
    sizeof(UnkStruct_ov101_021D7A00),
    ov101_021D7A00,
    ov101_021D7AD0,
    ov101_021D7AF4,
    OverworldAnimManager_DummyRenderFunc
};

static const OverworldAnimManagerFuncs Unk_ov101_021D91B4;

OverworldAnimManager *ov101_021D7B08(UnkStruct_ov101_021D13C8 *param0)
{
    VecFx32 v0 = { 0, 0, 0 };
    OverworldAnimManager *v1 = OverworldAnimManagerList_InitManager(param0->unk_44C, &Unk_ov101_021D91B4, &v0, 0, param0, 140);

    return v1;
}

static const VecFx32 Unk_ov101_021D9424[UnkEnum_ov101_021D4F58_05][3] = {
    {
        { (FX32_ONE * 68), ((FX32_ONE * 16) + (FX32_ONE * (32 * 2))), 0x0 },
        { (FX32_ONE * 128), ((FX32_ONE * 16) + (FX32_ONE * (32 * 2))), 0x0 },
        { (FX32_ONE * 188), ((FX32_ONE * 16) + (FX32_ONE * (32 * 2))), 0x0 },
    },
    {
        { (FX32_ONE * 68), ((FX32_ONE * 16) + (FX32_ONE * (32 * 1))), 0x0 },
        { (FX32_ONE * 128), ((FX32_ONE * 16) + (FX32_ONE * (32 * 1))), 0x0 },
        { (FX32_ONE * 188), ((FX32_ONE * 16) + (FX32_ONE * (32 * 1))), 0x0 },
    },
    {
        { (FX32_ONE * 68), ((FX32_ONE * 16) + (FX32_ONE * (32 * 3))), 0x0 },
        { (FX32_ONE * 128), ((FX32_ONE * 16) + (FX32_ONE * (32 * 3))), 0x0 },
        { (FX32_ONE * 188), ((FX32_ONE * 16) + (FX32_ONE * (32 * 3))), 0x0 },
    },
    {
        { (FX32_ONE * 68), ((FX32_ONE * 16) + (FX32_ONE * (32 * 1))), 0x0 },
        { (FX32_ONE * 128), ((FX32_ONE * 16) + (FX32_ONE * (32 * 2))), 0x0 },
        { (FX32_ONE * 188), ((FX32_ONE * 16) + (FX32_ONE * (32 * 3))), 0x0 },
    },
    {
        { (FX32_ONE * 68), ((FX32_ONE * 16) + (FX32_ONE * (32 * 3))), 0x0 },
        { (FX32_ONE * 128), ((FX32_ONE * 16) + (FX32_ONE * (32 * 2))), 0x0 },
        { (FX32_ONE * 188), ((FX32_ONE * 16) + (FX32_ONE * (32 * 1))), 0x0 },
    },
};

static int ov101_021D7B34(OverworldAnimManager *param0, void *param1)
{
    u32 v0;
    UnkStruct_ov101_021D7D94 *v1 = param1;

    v1->unk_44 = (UnkStruct_ov101_021D13C8 *)OverworldAnimManager_GetUserData(param0);
    v1->unk_18 = v1->unk_44->unk_44;

    v0 = v1->unk_44->unk_48;

    do {
        if (v0 & 0x1) {
            break;
        }

        v0 >>= 1;
        v1->unk_1C++;
    } while (v1->unk_1C < UnkEnum_ov101_021D4F58_05);

    GF_ASSERT(v1->unk_1C < UnkEnum_ov101_021D4F58_05);

    ov101_021D7D94(v1);
    return 1;
}

static void ov101_021D7B74(OverworldAnimManager *param0, void *param1)
{
    int v0;
    UnkStruct_ov101_021D7D94 *v1 = param1;

    if (v1->unk_14 == 0) {
        for (v0 = 0; v0 < 3; v0++) {
            if (v1->unk_20[v0].unk_04 != NULL) {
                ov101_021D8544(&v1->unk_20[v0]);
            }
        }

        ov101_021D8358(v1->unk_44->unk_450, 10, 8, 10, 10);
    }
}

static void ov101_021D7BB4(OverworldAnimManager *param0, void *param1)
{
    int v0, v1;
    VecFx32 v2;
    UnkStruct_ov101_021D7D94 *v3 = param1;

    switch (v3->unk_00) {
    case 0:
        if (v3->unk_08 != 2) {
            break;
        }

        for (v0 = 0; v0 < 3; v0++) {
            v2 = Unk_ov101_021D9424[v3->unk_1C][v0];
            ov101_021D84A4(v3->unk_44->unk_450, &v3->unk_20[v0], &v2, (NNS_G2D_VRAM_TYPE_2DBOTH), 0, 10, 0, 10, 10, 1, 0);
            Sprite_SetAnimateFlag(v3->unk_20[v0].unk_04, 1);
        }

        v3->unk_00++;
        break;
    case 1:
        for (v0 = 0, v1 = 0; v0 < 3; v0++) {
            ov101_021D8560(v3->unk_20[v0].unk_04, &v2);
            v2.y += (FX32_ONE * 4);

            if (v2.y >= ((FX32_ONE * 192) + (FX32_ONE * 48))) {
                v2.y = ((FX32_ONE * 192) + (FX32_ONE * 48));
            } else {
                v1 = 1;
            }

            Sprite_SetPosition(v3->unk_20[v0].unk_04, &v2);
        }

        if (v1 == 0) {
            v3->unk_00++;
        }
        break;
    case 2:
        v3->unk_0C++;

        if (v3->unk_0C >= 30) {
            v3->unk_0C = 0;
            v3->unk_00++;
        }
        break;
    case 3:
        v3->unk_0C++;

        if (v3->unk_0C < 12) {
            v1 = 0;
        } else {
            v1 = 1;
        }

        for (v0 = 0; v0 < 3; v0++) {
            Sprite_SetDrawFlag(v3->unk_20[v0].unk_04, v1);
        }

        if (v3->unk_0C >= 30) {
            v3->unk_0C = 0;
            v3->unk_10++;

            if (v3->unk_10 >= 3) {
                v3->unk_10 = 0;
                v3->unk_00++;
            }
        }
        break;
    case 4:
        v3->unk_0C++;

        if (v3->unk_0C >= 30) {
            v3->unk_0C = 0;
            v3->unk_00++;
        }
        break;
    case 5:
        for (v0 = 0; v0 < 3; v0++) {
            ov101_021D8544(&v3->unk_20[v0]);
        }

        ov101_021D8358(v3->unk_44->unk_450, 10, 8, 10, 10);

        v3->unk_00++;
        v3->unk_04 = 1;
        v3->unk_14 = 1;
    }
}

static const OverworldAnimManagerFuncs Unk_ov101_021D91B4 = {
    sizeof(UnkStruct_ov101_021D7D94),
    ov101_021D7B34,
    ov101_021D7B74,
    ov101_021D7BB4,
    OverworldAnimManager_DummyRenderFunc
};

static void ov101_021D7D4C(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D7D94 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_44;

    ov101_021D814C(v1->unk_450, 10);
    v0->unk_08 = 1;
    SysTask_Done(param0);
}

static void ov101_021D7D6C(SysTask *param0, void *param1)
{
    UnkStruct_ov101_021D7D94 *v0 = param1;
    UnkStruct_ov101_021D13C8 *v1 = v0->unk_44;

    if (v0->unk_08 == 1) {
        ov101_021D8180(v1->unk_450, 10);
        v0->unk_08 = 2;
        SysTask_Done(param0);
    }
}

static void ov101_021D7D94(UnkStruct_ov101_021D7D94 *param0)
{
    SysTask *v0;
    UnkStruct_ov101_021D13C8 *v1 = param0->unk_44;

    if (param0->unk_18 == 0) {
        ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DBOTH), v1->unk_438, 14, 10);
        ov101_021D8288(v1->unk_450, v1->unk_438, 15, 10);
        ov101_021D82F0(v1->unk_450, v1->unk_438, 16, 10);
    } else {
        ov101_021D80E4(v1->unk_450, (NNS_G2D_VRAM_TYPE_2DBOTH), v1->unk_438, 17, 10);
        ov101_021D8288(v1->unk_450, v1->unk_438, 18, 10);
        ov101_021D82F0(v1->unk_450, v1->unk_438, 19, 10);
    }

    v0 = SysTask_ExecuteOnVBlank(ov101_021D7D4C, param0, 257);
    GF_ASSERT(v0 != NULL);
    v0 = SysTask_ExecuteAfterVBlank(ov101_021D7D6C, param0, 257);
    GF_ASSERT(v0 != NULL);
}

static const int Unk_ov101_021D927C[6] = {
    0x0,
    0x1,
    0x2,
    0x3,
    0x4,
    0x5
};

static const fx32 Unk_ov101_021D937C[10] = {
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0)
};

static const fx32 Unk_ov101_021D9354[10] = {
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0),
    (FX32_ONE * 0)
};

static const UnkStruct_ov101_021D93D4 Unk_ov101_021D93D4[UnkEnum_ov101_021D5814_05] = {
    { 0x18, 0x1B, 0x19, 0x1A },
    { 0x1C, 0x1F, 0x1D, 0x1E },
    { 0x20, 0x23, 0x21, 0x22 },
    { 0x24, 0x27, 0x25, 0x26 },
    { 0x28, 0x2B, 0x29, 0x2A }
};

static const UnkStruct_ov101_021D93D4 Unk_ov101_021D93A4[UnkEnum_ov101_021D6764_03] = {
    { 0x30, 0x33, 0x31, 0x32 },
    { 0x34, 0x33, 0x35, 0x36 },
    { 0x30, 0x37, 0x31, 0x32 }
};
