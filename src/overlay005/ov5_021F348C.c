#include "overlay005/ov5_021F348C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "map_object.h"
#include "map_object_move.h"
#include "unk_02020AEC.h"
#include "unk_020711EC.h"

typedef struct {
    u32 unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
} UnkStruct_ov5_021F34D0;

typedef struct {
    FieldSystem *fieldSystem;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_ov5_021F34D0 *unk_08;
    MapObject *unk_0C;
} UnkStruct_ov5_021F35E8;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F35E8 unk_10;
    UnkStruct_020216E0 *unk_20;
} UnkStruct_ov5_021F36F4;

static void ov5_021F34D0(UnkStruct_ov5_021F34D0 *param0);
static void ov5_021F3518(UnkStruct_ov5_021F34D0 *param0);
static void ov5_021F358C(UnkStruct_ov5_021F34D0 *param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_022005C4;
const UnkStruct_020217F4 Unk_ov5_022005D8[];

void *ov5_021F348C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F34D0 *v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F34D0)), 0, 0);
    v0->unk_04 = param0;

    ov5_021F34D0(v0);
    return v0;
}

void ov5_021F34A8(void *param0)
{
    UnkStruct_ov5_021F34D0 *v0 = param0;

    ov5_021F358C(v0);
    ov5_021DF554(v0);
}

void ov5_021F34B8(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F34D0 *v0;

    v0 = ov5_021DF55C(param0, 23);

    if (v0->unk_00 != 1) {
        v0->unk_00 = 1;
        ov5_021F3518(v0);
    }
}

static void ov5_021F34D0(UnkStruct_ov5_021F34D0 *param0)
{
    ov5_021DF9E0(param0->unk_04, 6, 88);
    ov5_021DFA14(param0->unk_04, 6, 175);
    ov5_021DFA3C(param0->unk_04, 7, 7, 1);
    ov5_021DF864(param0->unk_04, 8, 6, 6, 7, 0, Unk_ov5_022005D8);
}

static void ov5_021F3518(UnkStruct_ov5_021F34D0 *param0)
{
    ov5_021DF9E0(param0->unk_04, 12, 159);
    ov5_021DF9E0(param0->unk_04, 13, 157);
    ov5_021DF9E0(param0->unk_04, 14, 158);

    ov5_021DF864(param0->unk_04, 14, 12, 6, 7, 0, Unk_ov5_022005D8);
    ov5_021DF864(param0->unk_04, 15, 13, 6, 7, 0, Unk_ov5_022005D8);
    ov5_021DF864(param0->unk_04, 16, 14, 6, 7, 0, Unk_ov5_022005D8);
}

static void ov5_021F358C(UnkStruct_ov5_021F34D0 *param0)
{
    ov5_021DFA08(param0->unk_04, 6);
    ov5_021DFA30(param0->unk_04, 6);
    ov5_021DFA7C(param0->unk_04, 7);
    ov5_021DF9D4(param0->unk_04, 8);

    if (param0->unk_00 == 1) {
        ov5_021DFA08(param0->unk_04, 12);
        ov5_021DFA08(param0->unk_04, 13);
        ov5_021DFA08(param0->unk_04, 14);
        ov5_021DF9D4(param0->unk_04, 14);
        ov5_021DF9D4(param0->unk_04, 15);
        ov5_021DF9D4(param0->unk_04, 16);
    }
}

static void ov5_021F35E8(UnkStruct_ov5_021DF47C *param0, MapObject *param1, UnkStruct_ov5_021F35E8 *param2, VecFx32 *param3, int *param4)
{
    param2->fieldSystem = MapObject_FieldSystem(param1);
    param2->unk_04 = param0;
    param2->unk_08 = ov5_021DF55C(param0, 23);
    param2->unk_0C = param1;

    MapObject_GetPosPtr(param1, param3);
    sub_02064450(MapObject_GetX(param1), MapObject_GetZ(param1), param3);

    *param4 = sub_02062758(param1, 2);
}

void ov5_021F3638(MapObject *param0)
{
    int v0;
    UnkStruct_ov5_021DF47C *v1;
    UnkStruct_ov101_021D5D90 *v2;
    VecFx32 v3;
    UnkStruct_ov5_021F35E8 v4;

    v1 = ov5_021DF578(param0);
    ov5_021F35E8(v1, param0, &v4, &v3, &v0);
    v3.z += (FX32_ONE * 8);
    v2 = ov5_021DF72C(v1, &Unk_ov5_022005C4, &v3, 0, &v4, v0);
}

void ov5_021F3678(MapObject *param0, int param1)
{
    int v0;
    UnkStruct_ov5_021DF47C *v1;
    UnkStruct_ov101_021D5D90 *v2;
    VecFx32 v3;
    UnkStruct_ov5_021F35E8 v4;
    VecFx32 v5[4] = {
        {
            0,
            0,
            (FX32_ONE * 8),
        },
        {
            (FX32_ONE * 11),
            (FX32_ONE * 14),
            (FX32_ONE * 17),
        },
        {
            (FX32_ONE * -11),
            (FX32_ONE * 14),
            (FX32_ONE * 17),
        },
        {
            0,
            (FX32_ONE * 32),
            (FX32_ONE * 8),
        },
    };

    v1 = ov5_021DF578(param0);

    ov5_021F35E8(v1, param0, &v4, &v3, &v0);
    GF_ASSERT(v4.unk_08->unk_00 == 1);

    v3.x += v5[param1].x;
    v3.y += v5[param1].y;
    v3.z += v5[param1].z;

    v2 = ov5_021DF72C(v1, &Unk_ov5_022005C4, &v3, param1, &v4, v0);
}

static int ov5_021F36F4(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_ov5_021F36F4 *v2;
    const UnkStruct_ov5_021F35E8 *v3;

    v2 = param1;
    v3 = sub_020715BC(param0);

    v2->unk_10 = *v3;
    v2->unk_04 = MapObject_GetLocalID(v2->unk_10.unk_0C);
    v2->unk_08 = sub_02062918(v2->unk_10.unk_0C);

    sub_020715E4(param0, &v1);

    {
        u32 v4[4] = { 8, 14, 15, 16 };
        int v5 = sub_020715B4(param0);

        v2->unk_20 = ov5_021DF84C(v2->unk_10.unk_04, v4[v5], &v1);
    }

    return 1;
}

static void ov5_021F3754(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F36F4 *v0;

    v0 = param1;
    sub_020211FC(v0->unk_20);
}

static void ov5_021F3760(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    int v0;
    UnkStruct_ov5_021F36F4 *v1;
    MapObject *v2;

    v1 = param1;
    v2 = v1->unk_10.unk_0C;

    switch (v1->unk_00) {
    case 0:
        sub_02021368(v1->unk_20, FX32_ONE);
        v0 = sub_020213D4(v1->unk_20) / FX32_ONE;

        if (v0 >= 9) {
            ov5_021DF74C(param0);
            return;
        }
        break;
    }
}

static void ov5_021F3790(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0, v1;
    UnkStruct_ov5_021F36F4 *v2;
    MapObject *v3;

    v2 = param1;
    v3 = v2->unk_10.unk_0C;

    sub_020715E4(param0, &v0);
    sub_020212A8(v2->unk_20, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_022005C4 = {
    (sizeof(UnkStruct_ov5_021F36F4)),
    ov5_021F36F4,
    ov5_021F3754,
    ov5_021F3760,
    ov5_021F3790
};

static const UnkStruct_020217F4 Unk_ov5_022005D8[] = {
    { 0x0, 0x9, 0x1 },
    { 0x0, 0x0, 0x2 }
};
