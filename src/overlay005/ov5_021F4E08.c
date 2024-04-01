#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073B50.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_020711EC.h"
#include "unk_02073838.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F4E08.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_02073838 unk_04[33];
    UnkStruct_02073B50 unk_298[33];
} UnkStruct_ov5_021F4E38;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    UnkStruct_ov5_021DF47C * unk_0C;
    UnkStruct_ov5_021F4E38 * unk_10;
} UnkStruct_ov5_021F4EAC;

typedef struct {
    NNSG3dRenderObj unk_00;
    int unk_54;
    float unk_58;
    float unk_5C;
    int unk_60;
    int unk_64;
    int unk_68;
    UnkStruct_ov5_021F4EAC unk_6C;
} UnkStruct_ov5_021F4F18;

static void ov5_021F4E38(UnkStruct_ov5_021F4E38 * param0);
static void ov5_021F4E94(UnkStruct_ov5_021F4E38 * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200A0C;

void * ov5_021F4E08 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F4E38 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F4E38)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F4E38(v0);

    return v0;
}

void ov5_021F4E28 (void * param0)
{
    UnkStruct_ov5_021F4E38 * v0 = param0;

    ov5_021F4E94(v0);
    ov5_021DF554(v0);
}

static void ov5_021F4E38 (UnkStruct_ov5_021F4E38 * param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        ov5_021DFB00(param0->unk_00, &param0->unk_04[v0], 0, 26 + v0, 0);
        sub_02073B70(&param0->unk_298[v0], &param0->unk_04[v0]);
    }

    ov5_021DFB00(param0->unk_00, &param0->unk_04[v0], 0, 25, 0);
    sub_02073B70(&param0->unk_298[v0], &param0->unk_04[v0]);
}

static void ov5_021F4E94 (UnkStruct_ov5_021F4E38 * param0)
{
    int v0;

    for (v0 = 0; v0 < 33; v0++) {
        sub_0207395C(&param0->unk_04[v0]);
    }
}

UnkStruct_ov101_021D5D90 * ov5_021F4EAC (FieldSystem * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1;
    UnkStruct_ov5_021F4EAC v2;
    UnkStruct_ov5_021DF47C * v3;
    VecFx32 v4;
    UnkStruct_ov101_021D5D90 * v5;
    UnkStruct_ov5_021F4F18 * v6;

    v3 = param0->unk_40;

    v2.unk_0C = v3;
    v2.unk_10 = ov5_021DF55C(v3, 3);
    v2.unk_00 = param1;
    v2.unk_04 = param2;
    v2.unk_08 = param0;

    v4.x = (((param1) << 4) * FX32_ONE) + (FX32_ONE * 9);
    v4.y = 0;
    v4.z = (((param2) << 4) * FX32_ONE);

    v0 = 0;
    v5 = ov5_021DF72C(v3, &Unk_ov5_02200A0C, &v4, v0, &v2, 0xff);

    if (v5) {
        v6 = sub_02071598(v5);
        v6->unk_54 = param4;
        v6->unk_58 = param3;
        v6->unk_5C = param3;
    }

    return v5;
}

UnkStruct_ov101_021D5D90 * ov5_021F4F18 (FieldSystem * param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov5_021F4F18 * v0;
    UnkStruct_ov101_021D5D90 * v1 = ov5_021F4EAC(param0, param1, param2, param3, param4);

    if (v1) {
        v0 = sub_02071598(v1);
        v0->unk_58 = 0;
        v0->unk_5C = param3;
    }

    return v1;
}

static int ov5_021F4F44 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F4F18 * v0;
    const UnkStruct_ov5_021F4EAC * v1;
    VecFx32 v2;

    v0 = param1;
    v1 = sub_020715BC(param0);

    v0->unk_6C = *v1;

    v2.x = (((v0->unk_6C.unk_00) << 4) * FX32_ONE) + (FX32_ONE * 9);
    v2.z = (((v0->unk_6C.unk_04) << 4) * FX32_ONE);
    v2.y = 0;

    sub_020715D4(param0, &v2);

    return 1;
}

static void ov5_021F4F88 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    return;
}

static void ov5_021F4F8C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F4F18 * v0;

    v0 = param1;

    if (v0->unk_58 < v0->unk_5C) {
        v0->unk_58 += 0.2;
    }
}

static void ov5_021F4FB8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F4F18 * v0;

    v0 = param1;

    {
        VecFx32 v1;
        VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};
        MtxFx33 v3 = {FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE};
        UnkStruct_02073B50 * v4 = &v0->unk_6C.unk_10->unk_298[v0->unk_54];

        sub_020715E4(param0, &v1);

        v2.x *= v0->unk_58;
        v2.y *= v0->unk_58;
        v2.z *= v0->unk_58;
        v1.x += -(FX32_ONE * 1) / 2;
        v1.y += -(FX32_ONE * 1);
        v1.z += (FX32_ONE * 5);

        sub_02073BA4(v4, &v1, &v2, &v3);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200A0C = {
    (sizeof(UnkStruct_ov5_021F4F18)),
    ov5_021F4F44,
    ov5_021F4F88,
    ov5_021F4F8C,
    ov5_021F4FB8
};
