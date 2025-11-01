#include "overlay005/ov5_021F5894.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"

#include "map_object.h"
#include "overworld_anim_manager.h"
#include "unk_02073838.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_02073838 unk_04;
    UnkStruct_02073974 unk_18;
} UnkStruct_021F58C0;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_021F58C0 *unk_04;
} UnkStruct_021F58FC;

typedef struct {
    UnkStruct_02073974 unk_00;
    UnkStruct_02073B50 unk_24;
    UnkStruct_021F58FC unk_78;
} UnkStruct_021F5988;

static void ov5_021F58C0(UnkStruct_021F58C0 *param0);
static void ov5_021F58E8(UnkStruct_021F58C0 *param0);

static const OverworldAnimManagerFuncs Unk_ov5_02200B68;

void *ov5_021F5894(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_021F58C0 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F58C0)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F58C0(v0);
    return v0;
}

void ov5_021F58B0(void *param0)
{
    UnkStruct_021F58C0 *v0 = param0;

    ov5_021F58E8(v0);
    ov5_021DF554(v0);
}

static void ov5_021F58C0(UnkStruct_021F58C0 *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 91, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 163, 0);
}

static void ov5_021F58E8(UnkStruct_021F58C0 *param0)
{
    sub_0207395C(&param0->unk_04);
    sub_02073AA8(&param0->unk_18);
}

void ov5_021F58FC(MapObject *param0, int param1, int param2, int param3)
{
    int v0, v1, v2;
    UnkStruct_021F58FC v3;
    VecFx32 v4;

    v3.unk_00 = ov5_021DF578(param0);
    v3.unk_04 = ov5_021DF55C(v3.unk_00, 10);

    MapObject_GetPosPtr(param0, &v4);

    v2 = MapObject_GetFacingDir(param0);

    switch (v2) {
    case 0:
        v4.z -= (16 * FX32_ONE);
        break;
    case 1:
        v4.z += (16 * FX32_ONE);
        break;
    case 3:
        v4.x += (16 * FX32_ONE);
        break;
    case 2:
        v4.x -= (16 * FX32_ONE);
        break;
    }

    v1 = 0;
    v0 = sub_02062758(param0, 2);

    ov5_021DF72C(v3.unk_00, &Unk_ov5_02200B68, &v4, v1, &v3, v0);
}

static int ov5_021F5988(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;
    const UnkStruct_021F58FC *v1 = OverworldAnimManager_GetUserData(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_04, &v0->unk_78.unk_04->unk_18, 0);
    sub_02073B90(&v0->unk_24, &v0->unk_78.unk_04->unk_04, &v0->unk_00);

    return 1;
}

static void ov5_021F59C0(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;

    sub_02073AA8(&v0->unk_00);
}

static void ov5_021F59CC(OverworldAnimManager *param0, void *param1)
{
    UnkStruct_021F5988 *v0 = param1;

    if (sub_02073B40(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    sub_02073AC0(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F59F4(OverworldAnimManager *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_021F5988 *v1 = param1;

    OverworldAnimManager_GetPosition(param0, &v0);
    sub_02073BB4(&v1->unk_24, &v0);
}

static const OverworldAnimManagerFuncs Unk_ov5_02200B68 = {
    (sizeof(UnkStruct_021F5988)),
    ov5_021F5988,
    ov5_021F59C0,
    ov5_021F59CC,
    ov5_021F59F4
};
