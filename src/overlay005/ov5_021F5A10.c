#include "overlay005/ov5_021F5A10.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_020217F4.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "map_object.h"
#include "unk_02005474.h"
#include "unk_02020AEC.h"
#include "unk_020711EC.h"

void include_unk_ov5_02200B98(void);

typedef struct {
    s16 unk_00;
    s16 unk_02;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    UnkStruct_ov5_021DF47C *unk_08;
} UnkStruct_ov5_021F5A34;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C *unk_04;
    UnkStruct_ov5_021F5A34 *unk_08;
    MapObject *unk_0C;
} UnkStruct_ov5_021F5D8C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    VecFx32 unk_18;
    VecFx32 unk_24;
    UnkStruct_ov5_021F5D8C unk_30;
    UnkStruct_020216E0 *unk_40;
} UnkStruct_ov5_021F5C4C;

static void ov5_021F5A34(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5A40(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5A58(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5A64(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5A7C(UnkStruct_ov5_021F5A34 *param0, int param1);
static void ov5_021F5A90(UnkStruct_ov5_021F5A34 *param0, int param1);
static void ov5_021F5AB4(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5B00(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5B50(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5B80(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5BB0(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5BC0(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5BD0(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5BE0(UnkStruct_ov5_021F5A34 *param0);
static void ov5_021F5BF0(UnkStruct_ov5_021F5A34 *param0, int param1);
static void ov5_021F5C04(UnkStruct_ov5_021F5A34 *param0, int param1);
static UnkStruct_020216E0 *ov5_021F5C18(UnkStruct_ov5_021DF47C *param0, int param1, VecFx32 *param2, u32 param3);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B98;
static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B84;
static const UnkStruct_ov101_021D86B0 Unk_ov5_02200BAC;
const UnkStruct_020217F4 Unk_ov5_02200BC0[];

void *ov5_021F5A10(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F5A34 *v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F5A34)), 0, 0);
    v0->unk_08 = param0;

    return v0;
}

void ov5_021F5A24(void *param0)
{
    UnkStruct_ov5_021F5A34 *v0 = param0;

    ov5_021F5B50(v0);
    ov5_021DF554(v0);
}

static void ov5_021F5A34(UnkStruct_ov5_021F5A34 *param0)
{
    param0->unk_00++;
}

static void ov5_021F5A40(UnkStruct_ov5_021F5A34 *param0)
{
    param0->unk_00--;
    GF_ASSERT(param0->unk_00 >= 0);
}

static void ov5_021F5A58(UnkStruct_ov5_021F5A34 *param0)
{
    param0->unk_02++;
}

static void ov5_021F5A64(UnkStruct_ov5_021F5A34 *param0)
{
    param0->unk_02--;
    GF_ASSERT(param0->unk_02 >= 0);
}

static void ov5_021F5A7C(UnkStruct_ov5_021F5A34 *param0, int param1)
{
    if (param1 == 0) {
        ov5_021F5A34(param0);
    } else {
        ov5_021F5A58(param0);
    }
}

static void ov5_021F5A90(UnkStruct_ov5_021F5A34 *param0, int param1)
{
    if (param1 == 0) {
        ov5_021F5A40(param0);
    } else {
        ov5_021F5A64(param0);
    }
}

void ov5_021F5AA4(FieldSystem *fieldSystem, BOOL param1)
{
    UnkStruct_ov5_021F5A34 *v0 = ov5_021DF55C(fieldSystem->unk_40, 20);

    v0->unk_06 = (u8)param1;
}

static void ov5_021F5AB4(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_04 == 0) {
        param0->unk_04 = 1;
        ov5_021DF9E0(param0->unk_08, 1, 85);
        ov5_021DFA14(param0->unk_08, 1, 170);
        ov5_021DFA3C(param0->unk_08, 1, 4, 1);
        ov5_021DF864(param0->unk_08, 1, 1, 1, 1, 0, Unk_ov5_02200BC0);
    }
}

static void ov5_021F5B00(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_05 == 0) {
        param0->unk_05 = 1;
        ov5_021DF9E0(param0->unk_08, 10, 108);
        ov5_021DFA14(param0->unk_08, 10, 170);
        ov5_021DFA3C(param0->unk_08, 11, 13, 1);
        ov5_021DF864(param0->unk_08, 12, 10, 10, 11, 0, Unk_ov5_02200BC0);
    }
}

static void ov5_021F5B50(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_04 == 1) {
        param0->unk_04 = 0;

        ov5_021DFA08(param0->unk_08, 1);
        ov5_021DFA30(param0->unk_08, 1);
        ov5_021DFA7C(param0->unk_08, 1);
        ov5_021DF9D4(param0->unk_08, 1);
    }
}

static void ov5_021F5B80(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_05 == 1) {
        param0->unk_05 = 0;

        ov5_021DFA08(param0->unk_08, 10);
        ov5_021DFA30(param0->unk_08, 10);
        ov5_021DFA7C(param0->unk_08, 11);
        ov5_021DF9D4(param0->unk_08, 12);
    }
}

static void ov5_021F5BB0(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F5AB4(param0);
    }
}

static void ov5_021F5BC0(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_02 == 0) {
        ov5_021F5B00(param0);
    }
}

static void ov5_021F5BD0(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_00 == 0) {
        ov5_021F5B50(param0);
    }
}

static void ov5_021F5BE0(UnkStruct_ov5_021F5A34 *param0)
{
    if (param0->unk_02 == 0) {
        ov5_021F5B80(param0);
    }
}

static void ov5_021F5BF0(UnkStruct_ov5_021F5A34 *param0, int param1)
{
    if (param1 == 0) {
        ov5_021F5BB0(param0);
    } else {
        ov5_021F5BC0(param0);
    }
}

static void ov5_021F5C04(UnkStruct_ov5_021F5A34 *param0, int param1)
{
    if (param1 == 0) {
        ov5_021F5BD0(param0);
    } else {
        ov5_021F5BE0(param0);
    }
}

static UnkStruct_020216E0 *ov5_021F5C18(UnkStruct_ov5_021DF47C *param0, int param1, VecFx32 *param2, u32 param3)
{
    int v0[2] = { 1, 12 };
    UnkStruct_020216E0 *v1 = ov5_021DF84C(param0, v0[param1], param2);

    if (param3 == 1) {
        NNSG3dResMdl *v2 = sub_020213F4(v1);
        NNS_G3dMdlSetMdlFogEnableFlagAll(v2, 0);
    }

    return v1;
}

int ov5_021F5C4C(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov5_021F5C4C *v0 = sub_02071598(param0);
    return v0->unk_14;
}

void ov5_021F5C58(UnkStruct_ov101_021D5D90 *param0)
{
    UnkStruct_ov5_021F5C4C *v0 = sub_02071598(param0);

    v0->unk_10 = 1;

    if (v0->unk_40 != NULL) {
        sub_02021320(v0->unk_40, 0);
    }
}

static int ov5_021F5C70(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F5C4C *v1;
    const UnkStruct_ov5_021F5D8C *v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_30 = *v2;
    v1->unk_24.y = (FX32_ONE * 6);

    ov5_021F5BF0(v1->unk_30.unk_08, v1->unk_30.unk_00);

    sub_020715E4(param0, &v0);
    v1->unk_40 = ov5_021F5C18(v1->unk_30.unk_04, v1->unk_30.unk_00, &v0, v1->unk_30.unk_08->unk_06);
    ov5_021F5A7C(v1->unk_30.unk_08, v1->unk_30.unk_00);

    if (sub_020715B4(param0) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
    }

    return 1;
}

static void ov5_021F5CD4(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F5C4C *v1 = param1;

    sub_020715E4(param0, &v0);

    switch (v1->unk_00) {
    case 0:
        v1->unk_18.y += v1->unk_24.y;

        if (v1->unk_18.y) {
            v1->unk_24.y -= FX32_ONE * 2;
        } else {
            v1->unk_24.y = 0;
            v1->unk_00++;
        }
        break;
    case 1:
        v1->unk_04++;

        if (v1->unk_04 >= 30) {
            v1->unk_00++;
            v1->unk_04 = 0;
            v1->unk_14 = 1;
        }
        break;
    case 2:
        break;
    }

    sub_020715D4(param0, &v0);
}

static void ov5_021F5D38(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5C4C *v0 = param1;

    sub_020211FC(v0->unk_40);

    ov5_021F5A90(v0->unk_30.unk_08, v0->unk_30.unk_00);
    ov5_021F5C04(v0->unk_30.unk_08, v0->unk_30.unk_00);
}

static void ov5_021F5D54(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F5C4C *v1 = param1;

    if (v1->unk_10 == 1) {
        return;
    }

    sub_020715E4(param0, &v0);

    v0.x += v1->unk_18.x;
    v0.y += v1->unk_18.y;
    v0.z += v1->unk_18.z;

    sub_020212A8(v1->unk_40, &v0);
}

UnkStruct_ov101_021D5D90 *ov5_021F5D8C(MapObject *param0, int param1, int param2, int param3)
{
    int v0;
    UnkStruct_ov5_021F5D8C v1;
    UnkStruct_ov5_021DF47C *v2;
    VecFx32 v3;
    UnkStruct_ov101_021D5D90 *v4;
    const UnkStruct_ov101_021D86B0 *v5;

    v2 = ov5_021DF578(param0);

    v1.unk_00 = param1;
    v1.unk_04 = v2;
    v1.unk_08 = ov5_021DF55C(v2, 20);
    v1.unk_0C = param0;

    MapObject_GetPosPtr(param0, &v3);
    v0 = sub_02062C0C(param0) + 1;

    if (param3 == 1) {
        v5 = &Unk_ov5_02200BAC;
    } else {
        v5 = &Unk_ov5_02200B84;
    }

    v4 = ov5_021DF72C(v2, v5, &v3, param2, &v1, v0);
    return v4;
}

static int ov5_021F5DE4(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F5C4C *v1;
    const UnkStruct_ov5_021F5D8C *v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_30 = *v2;
    v1->unk_08 = MapObject_GetLocalID(v1->unk_30.unk_0C);
    v1->unk_0C = sub_02062918(v1->unk_30.unk_0C);
    v1->unk_24.y = (FX32_ONE * 6);

    ov5_021F5BF0(v1->unk_30.unk_08, v1->unk_30.unk_00);

    sub_020715E4(param0, &v0);
    v1->unk_40 = ov5_021F5C18(v1->unk_30.unk_04, v1->unk_30.unk_00, &v0, v1->unk_30.unk_08->unk_06);
    ov5_021F5A7C(v1->unk_30.unk_08, v1->unk_30.unk_00);

    if (sub_020715B4(param0) == 1) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
    }

    return 1;
}

static void ov5_021F5E58(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5C4C *v0;
    MapObject *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = v0->unk_30.unk_0C;

    GF_ASSERT(sub_02062764(v1, v0->unk_08, v0->unk_0C) != 0);
    ov5_021ECDA0(v1, &v2);

    v2.y += (FX32_ONE * 32);
    v2.z += (FX32_ONE * 1);

    switch (v0->unk_00) {
    case 0:
        v0->unk_18.y += v0->unk_24.y;

        if (v0->unk_18.y) {
            v0->unk_24.y -= FX32_ONE * 2;
        } else {
            v0->unk_24.y = 0;
            v0->unk_00++;
        }
        break;
    case 1:
        v0->unk_04++;

        if (v0->unk_04 >= 30) {
            v0->unk_00++;
            v0->unk_04 = 0;
            v0->unk_14 = 1;
        }
        break;
    case 2:
        break;
    }

    sub_020715D4(param0, &v2);
}

static int ov5_021F5EE0(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F5C4C *v1;
    const UnkStruct_ov5_021F5D8C *v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_30 = *v2;
    v1->unk_08 = MapObject_GetLocalID(v1->unk_30.unk_0C);
    v1->unk_0C = sub_02062918(v1->unk_30.unk_0C);
    v1->unk_24.y = (FX32_ONE * 6);
    v1->unk_10 = 1;

    ov5_021F5BF0(v1->unk_30.unk_08, v1->unk_30.unk_00);
    ov5_021F5A7C(v1->unk_30.unk_08, v1->unk_30.unk_00);

    return 1;
}

static void ov5_021F5F24(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5C4C *v0;
    MapObject *v1;
    VecFx32 v2;

    v0 = param1;
    v1 = v0->unk_30.unk_0C;

    GF_ASSERT(sub_02062764(v1, v0->unk_08, v0->unk_0C) != 0);
    ov5_021ECDA0(v1, &v2);

    v2.y += (FX32_ONE * 32);
    v2.z += (FX32_ONE * 1);

    switch (v0->unk_00) {
    case 0:
    case 1:
        v0->unk_00++;
        break;
    case 2:
        v0->unk_40 = ov5_021F5C18(v0->unk_30.unk_04, v0->unk_30.unk_00, &v2, v0->unk_30.unk_08->unk_06);
        sub_02021320(v0->unk_40, 0);
        v0->unk_00++;
        break;
    case 3:
        sub_02021320(v0->unk_40, 1);
        v0->unk_10 = 0;

        if (sub_020715B4(param0) == 1) {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        }

        v0->unk_00++;
    case 4:
        v0->unk_18.y += v0->unk_24.y;

        if (v0->unk_18.y) {
            v0->unk_24.y -= FX32_ONE * 2;
        } else {
            v0->unk_24.y = 0;
            v0->unk_00++;
        }
        break;
    case 5:
        v0->unk_04++;

        if (v0->unk_04 >= 30) {
            v0->unk_00++;
            v0->unk_04 = 0;
            v0->unk_14 = 1;
        }
        break;
    case 6:
        break;
    }

    sub_020715D4(param0, &v2);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B98 = {
    (sizeof(UnkStruct_ov5_021F5C4C)),
    ov5_021F5C70,
    ov5_021F5D38,
    ov5_021F5CD4,
    ov5_021F5D54
};

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B84 = {
    (sizeof(UnkStruct_ov5_021F5C4C)),
    ov5_021F5DE4,
    ov5_021F5D38,
    ov5_021F5E58,
    ov5_021F5D54
};

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200BAC = {
    (sizeof(UnkStruct_ov5_021F5C4C)),
    ov5_021F5EE0,
    ov5_021F5D38,
    ov5_021F5F24,
    ov5_021F5D54
};

static const UnkStruct_020217F4 Unk_ov5_02200BC0[] = {
    { 0x0, 0x1, 0x0 },
    { 0x0, 0x0, 0x2 }
};

void include_unk_ov5_02200B98(void)
{
    int dummy = Unk_ov5_02200B98.unk_00;
}
