#include "overlay005/ov5_021F204C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073B50.h"

#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "map_object.h"
#include "unk_02020AEC.h"
#include "unk_02055C50.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_02073B50 unk_04[3];
    UnkStruct_02073838 unk_100[3];
} UnkStruct_ov5_021F2078;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F2078 *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F20D4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F20D4 unk_10;
} UnkStruct_ov5_021F2118;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov5_021DF47C *unk_08;
} UnkStruct_ov5_021F2204;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F2204 *unk_04;
    MapObject *unk_08;
} UnkStruct_ov5_021F22BC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov5_021F22BC unk_0C;
    UnkStruct_020216E0 *unk_18;
} UnkStruct_ov5_021F2304;

static void ov5_021F2078(UnkStruct_ov5_021F2078 *param0);
static void ov5_021F20B8(UnkStruct_ov5_021F2078 *param0);
static void ov5_021F2204(UnkStruct_ov5_021F2204 *param0);
static void ov5_021F220C(UnkStruct_ov5_021F2204 *param0);
static void ov5_021F221C(UnkStruct_ov5_021F2204 *param0);
static void ov5_021F226C(UnkStruct_ov5_021F2204 *param0);
static void ov5_021F229C(UnkStruct_ov5_021F2204 *param0);
static void ov5_021F22AC(UnkStruct_ov5_021F2204 *param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200438;
static const UnkStruct_ov101_021D86B0 Unk_ov5_02200410;
static const u32 Unk_ov5_02200404[3];
const UnkStruct_020217F4 Unk_ov5_0220044C[];

void *ov5_021F204C(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F2078 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F2078)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F2078(v0);
    return v0;
}

void ov5_021F2068(void *param0)
{
    UnkStruct_ov5_021F2078 *v0 = param0;

    ov5_021F20B8(v0);
    ov5_021DF554(v0);
}

static void ov5_021F2078(UnkStruct_ov5_021F2078 *param0)
{
    int v0 = 0;

    do {
        ov5_021DFB00(
            param0->unk_00, &param0->unk_100[v0], 0, Unk_ov5_02200404[v0], 0);
        sub_02073B70(&param0->unk_04[v0], &param0->unk_100[v0]);
        v0++;
    } while (v0 < (2 + 1));
}

static void ov5_021F20B8(UnkStruct_ov5_021F2078 *param0)
{
    int v0 = 0;

    do {
        sub_0207395C(&param0->unk_100[v0]);
        v0++;
    } while (v0 < (2 + 1));
}

void ov5_021F20D4(MapObject *param0)
{
    int v0, v1;
    UnkStruct_ov5_021F20D4 v2;
    UnkStruct_ov5_021DF47C *v3;
    VecFx32 v4;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = v3;
    v2.unk_04 = ov5_021DF55C(v3, 12);
    v2.unk_08 = param0;

    MapObject_GetPosPtr(param0, &v4);

    v0 = 0;
    v1 = sub_02062C0C(param0) + 1;

    ov5_021DF72C(v3, &Unk_ov5_02200438, &v4, v0, &v2, v1);
}

static int ov5_021F2118(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F2118 *v0;
    const UnkStruct_ov5_021F20D4 *v1;

    v0 = param1;
    v1 = sub_020715BC(param0);

    v0->unk_10 = *v1;
    v0->unk_00 = MapObject_GetLocalID(v0->unk_10.unk_08);
    v0->unk_04 = sub_02062918(v0->unk_10.unk_08);

    return 1;
}

static void ov5_021F2144(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    return;
}

static void ov5_021F2148(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F2118 *v0;
    MapObject *v1;

    v0 = param1;
    v1 = v0->unk_10.unk_08;

    if (sub_02062764(v1, v0->unk_00, v0->unk_04) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    v0->unk_08 = 0;

    if ((MapObject_CheckStatusFlag(v1, MAP_OBJ_STATUS_HIDE) == 1) || (!sub_02055F00(MapObject_FieldSystem(v1), v1))) {
        v0->unk_08 = 1;
        return;
    }

    {
        v0->unk_0C = sub_02055F88(MapObject_FieldSystem(v1), v1);
    }

    {
        VecFx32 v2;

        MapObject_GetPosPtr(v1, &v2);
        sub_020715D4(param0, &v2);
    }
}

static void ov5_021F21B8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F2118 *v0 = param1;

    if (v0->unk_08 != 1) {
        VecFx32 v1;

        sub_020715E4(param0, &v1);
        v1.z += (FX32_ONE * 0);
        sub_02073BB4(&v0->unk_10.unk_04->unk_04[v0->unk_0C], &v1);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200438 = {
    sizeof(UnkStruct_ov5_021F2118),
    ov5_021F2118,
    ov5_021F2144,
    ov5_021F2148,
    ov5_021F21B8
};

void *ov5_021F21E0(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F2204 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F2204)), 0, 0);
    v0->unk_08 = param0;

    return v0;
}

void ov5_021F21F4(void *param0)
{
    UnkStruct_ov5_021F2204 *v0 = param0;

    ov5_021F226C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F2204(UnkStruct_ov5_021F2204 *param0)
{
    param0->unk_00++;
}

static void ov5_021F220C(UnkStruct_ov5_021F2204 *param0)
{
    param0->unk_00--;
    GF_ASSERT(param0->unk_00 >= 0);
}

static void ov5_021F221C(UnkStruct_ov5_021F2204 *param0)
{
    if (param0->unk_04 == 0) {
        param0->unk_04 = 1;
        ov5_021DF9E0(param0->unk_08, 11, 109);
        ov5_021DFA14(param0->unk_08, 11, 181);
        ov5_021DFA3C(param0->unk_08, 12, 14, 1);
        ov5_021DF864(param0->unk_08, 13, 11, 11, 12, 0, Unk_ov5_0220044C);
    }
}

static void ov5_021F226C(UnkStruct_ov5_021F2204 *param0)
{
    if (param0->unk_04 == 1) {
        param0->unk_04 = 0;

        ov5_021DFA08(param0->unk_08, 11);
        ov5_021DFA30(param0->unk_08, 11);
        ov5_021DFA7C(param0->unk_08, 12);
        ov5_021DF9D4(param0->unk_08, 13);
    }
}

static void ov5_021F229C(UnkStruct_ov5_021F2204 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F221C(param0);
    }
}

static void ov5_021F22AC(UnkStruct_ov5_021F2204 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F226C(param0);
    }
}

UnkStruct_ov101_021D5D90 *ov5_021F22BC(MapObject *param0)
{
    VecFx32 v0;
    UnkStruct_ov5_021DF47C *v1;
    UnkStruct_ov5_021F22BC v2;
    UnkStruct_ov101_021D5D90 *v3;

    v1 = ov5_021DF578(param0);
    ov5_021ECDA0(param0, &v0);
    v0.z += (FX32_ONE * 8);

    v2.unk_00 = v1;
    v2.unk_04 = ov5_021DF55C(v1, 28);
    v3 = ov5_021DF72C(v1, &Unk_ov5_02200410, &v0, 0, &v2, 0xff);

    return v3;
}

static int ov5_021F2304(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F2304 *v1;
    const UnkStruct_ov5_021F22BC *v2;

    v1 = param1;
    v2 = sub_020715BC(param0);
    v1->unk_0C = *v2;

    ov5_021F229C(v1->unk_0C.unk_04);
    sub_020715E4(param0, &v0);

    v1->unk_18 = ov5_021DF84C(v1->unk_0C.unk_00, 13, &v0);
    ov5_021F2204(v1->unk_0C.unk_04);

    return 1;
}

static void ov5_021F2344(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F2304 *v0 = param1;

    sub_020211FC(v0->unk_18);
    ov5_021F220C(v0->unk_0C.unk_04);
    ov5_021F22AC(v0->unk_0C.unk_04);
}

static void ov5_021F235C(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    fx32 v0[5] = { 0x1000, 0x1000, 0x2000, 0x2000, 0x1000 };
    UnkStruct_ov5_021F2304 *v1 = param1;

    if (v1->unk_08 == 1) {
        v1->unk_08 = 0;
        v1->unk_04++;

        if (v1->unk_04 >= 5) {
            ov5_021DF74C(param0);
            return;
        }

        sub_02021380(v1->unk_18, 0);
    }

    if (sub_02021368(v1->unk_18, v0[v1->unk_04]) != 1) {
        return;
    }

    v1->unk_08 = 1;
}

static void ov5_021F23B8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F2304 *v1 = param1;

    sub_020715E4(param0, &v0);
    sub_020212A8(v1->unk_18, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200410 = {
    sizeof(UnkStruct_ov5_021F2304),
    ov5_021F2304,
    ov5_021F2344,
    ov5_021F235C,
    ov5_021F23B8
};

static const u32 Unk_ov5_02200404[3] = {
    0x4D,
    0x4C,
    0x4B
};

static const UnkStruct_020217F4 Unk_ov5_0220044C[] = {
    { 0x0, 0x9, 0x1 },
    { 0x0, 0x0, 0x2 }
};
