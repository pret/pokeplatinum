#include "overlay005/ov5_021F10E8.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "simple3d.h"

typedef struct {
    u32 unk_00;
    Simple3DModel unk_04;
    Simple3DRenderObj unk_18;
} UnkStruct_021F1118;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    u32 unk_04;
    UnkStruct_021F1118 *unk_08;
} UnkStruct_021F114C;

typedef struct {
    u32 unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    const MapObject *unk_08;
} UnkStruct_021F121C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    VecFx32 unk_0C;
    Simple3DRenderObj *unk_18;
    UnkStruct_021F121C unk_1C;
} UnkStruct_021F1258;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov5_02200230;

static void ov5_021F1118(UnkStruct_021F1118 *param0, u32 param1, u32 param2, UnkStruct_ov5_021DF47C *param3);
static void ov5_021F113C(UnkStruct_021F1118 *param0);
static void ov5_021F114C(UnkStruct_021F114C *param0);
static UnkStruct_021F1118 *ov5_021F1174(UnkStruct_021F114C *param0, u32 param1);

static const OverworldAnimManagerFuncs Unk_ov5_0220021C;

static const UnkStruct_ov5_02200230 Unk_ov5_02200230[] = {
    { 0x5B, 0x45 },
    { 0x5C, 0x46 },
    { 0x5D, 0x47 },
    { 0x5E, 0x48 },
    { 0x5f, 0x49 },
    { 0x60, 0x4A },
    { 0xB7, 0x4F },
    { 0xD1, 0x6E },
    { 0x106, 0x95 }
};

void *ov5_021F10E8(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F114C *v0 = ov5_021DF53C(param0, sizeof(UnkStruct_021F114C), 0, 0);
    v0->unk_00 = param0;

    return v0;
}

void ov5_021F10FC(void *param0)
{
    UnkStruct_021F114C *v0 = param0;

    ov5_021F114C(v0);

    if (v0->unk_08 != NULL) {
        ov5_021DF554(v0->unk_08);
    }

    ov5_021DF554(v0);
}

static void ov5_021F1118(UnkStruct_021F1118 *param0, u32 param1, u32 param2, UnkStruct_ov5_021DF47C *param3)
{
    param0->unk_00 = param1;

    ov5_021DFB00(param3, &param0->unk_04, 0, param2, 0);
    Simple3D_CreateRenderObject(&param0->unk_18, &param0->unk_04);
}

static void ov5_021F113C(UnkStruct_021F1118 *param0)
{
    param0->unk_00 = 0xffff;
    Simple3D_FreeModel(&param0->unk_04);
}

static void ov5_021F114C(UnkStruct_021F114C *param0)
{
    u32 v0 = 0, v1 = param0->unk_04;
    UnkStruct_021F1118 *v2 = param0->unk_08;

    while (v0 < v1) {
        if (v2->unk_00 != 0xffff) {
            ov5_021F113C(v2);
        }

        v2++;
        v0++;
    }
}

static UnkStruct_021F1118 *ov5_021F1174(UnkStruct_021F114C *param0, u32 param1)
{
    u32 v0 = param0->unk_04;
    UnkStruct_021F1118 *v1 = param0->unk_08;

    do {
        if (v1->unk_00 == param1) {
            return v1;
        }

        v1++;
        v0--;
    } while (v0);

    return NULL;
}

void ov5_021F1188(UnkStruct_ov5_021DF47C *param0, u32 param1)
{
    UnkStruct_021F1118 *v0;
    UnkStruct_021F114C *v1 = ov5_021DF55C(param0, 29);

    GF_ASSERT(param1);

    v1->unk_04 = param1;
    v0 = ov5_021DF53C(param0, sizeof(UnkStruct_021F1118) * param1, 0, 0);
    v1->unk_08 = v0;

    do {
        v0->unk_00 = 0xffff;
        v0++;
        param1--;
    } while (param1);
}

void ov5_021F11C0(UnkStruct_ov5_021DF47C *param0, u32 param1, u32 param2)
{
    UnkStruct_021F1118 *v0;
    UnkStruct_021F114C *v1 = ov5_021DF55C(param0, 29);

    v0 = ov5_021F1174(v1, param1);

    if (v0 != NULL) {
        return;
    }

    v0 = ov5_021F1174(v1, 0xffff);

    if (v0 == NULL) {
        GF_ASSERT(0);
        return;
    }

    ov5_021F1118(v0, param1, param2, param0);
}

Simple3DRenderObj *ov5_021F11FC(UnkStruct_ov5_021DF47C *param0, u32 param1)
{
    UnkStruct_021F114C *v0 = ov5_021DF55C(param0, 29);
    UnkStruct_021F1118 *v1 = ov5_021F1174(v0, param1);

    GF_ASSERT(v1 != NULL);
    return &v1->unk_18;
}

OverworldAnimManager *ov5_021F121C(const MapObject *param0, const VecFx32 *param1)
{
    int v0;
    OverworldAnimManager *v1;
    UnkStruct_021F121C v2;
    UnkStruct_ov5_021DF47C *v3 = ov5_021DF578(param0);

    v2.unk_00 = MapObject_GetGraphicsID(param0);
    v2.unk_04 = v3;
    v2.unk_08 = param0;

    v0 = sub_02062758(param0, 2);
    v1 = ov5_021DF72C(v3, &Unk_ov5_0220021C, param1, 0, &v2, v0);

    return v1;
}

static int ov5_021F1258(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    const UnkStruct_021F121C *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_1C = *v1;
    v0->unk_04 = MapObject_GetLocalID(v0->unk_1C.unk_08);
    v0->unk_18 = ov5_021F11FC(v0->unk_1C.unk_04, v0->unk_1C.unk_00);

    if (sub_02062E94(v0->unk_1C.unk_08) == 1) {
        v0->unk_08 = sub_02062C18(v0->unk_1C.unk_08);
    } else {
        v0->unk_08 = sub_02062918(v0->unk_1C.unk_08);
    }

    OverworldAnimManager_GetPosition(param0, &v0->unk_0C);
    return 1;
}

static void ov5_021F12A8(OverworldAnimManager *param0, void *param1)
{
    return;
}

static void ov5_021F12AC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    const MapObject *v1 = v0->unk_1C.unk_08;

    if (sub_02062764(v1, v0->unk_04, v0->unk_08) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    {
        VecFx32 v2, v3;

        MapObject_GetPosPtr(v1, &v2);
        MapObject_GetSpriteJumpOffset(v1, &v3);

        v2.x += v3.x + v0->unk_0C.x;
        v2.y += v3.y + v0->unk_0C.y;
        v2.z += v3.z + v0->unk_0C.z;

        OverworldAnimManager_SetPosition(param0, &v2);
    }
}

static void ov5_021F1310(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F1258 *v0 = param1;
    VecFx32 v1;

    OverworldAnimManager_GetPosition(param0, &v1);
    Simple3D_DrawRenderObjWithPos(v0->unk_18, &v1);
}

static const OverworldAnimManagerFuncs Unk_ov5_0220021C = {
    sizeof(UnkStruct_021F1258),
    ov5_021F1258,
    ov5_021F12A8,
    ov5_021F12AC,
    ov5_021F1310
};

void FieldEffect_InitRenderObject(UnkStruct_ov5_021DF47C *param0)
{
    const UnkStruct_ov5_02200230 *v0 = Unk_ov5_02200230;
    u32 v1 = NELEMS(Unk_ov5_02200230);

    ov5_021F1188(param0, v1);

    do {
        ov5_021F11C0(param0, v0->unk_00, v0->unk_04);
        v0++;
        v1--;
    } while (v1);
}
