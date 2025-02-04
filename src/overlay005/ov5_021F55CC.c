#include "overlay005/ov5_021F55CC.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"

#include "field/field_system.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "fx_util.h"
#include "unk_02005474.h"
#include "unk_020711EC.h"
#include "unk_02073838.h"

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_02073838 unk_04;
    UnkStruct_02073974 unk_18;
} UnkStruct_ov5_021F55F8;

typedef struct {
    UnkStruct_ov5_021DF47C *unk_00;
    UnkStruct_ov5_021F55F8 *unk_04;
} UnkStruct_ov5_021F5634;

typedef struct {
    UnkStruct_02073974 unk_00;
    UnkStruct_02073B50 unk_24;
    UnkStruct_ov5_021F5634 unk_78;
} UnkStruct_ov5_021F5684;

static void ov5_021F55F8(UnkStruct_ov5_021F55F8 *param0);
static void ov5_021F5620(UnkStruct_ov5_021F55F8 *param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B1C;

void *ov5_021F55CC(UnkStruct_ov5_021DF47C *param0)
{
    UnkStruct_ov5_021F55F8 *v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F55F8)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F55F8(v0);
    return v0;
}

void ov5_021F55E8(void *param0)
{
    UnkStruct_ov5_021F55F8 *v0 = param0;

    ov5_021F5620(v0);
    ov5_021DF554(v0);
}

static void ov5_021F55F8(UnkStruct_ov5_021F55F8 *param0)
{
    ov5_021DFB00(param0->unk_00, &param0->unk_04, 0, 58, 0);
    ov5_021DFB24(param0->unk_00, &param0->unk_18, 0, 162, 0);
}

static void ov5_021F5620(UnkStruct_ov5_021F55F8 *param0)
{
    sub_0207395C(&param0->unk_04);
    sub_02073AA8(&param0->unk_18);
}

void ov5_021F5634(FieldSystem *fieldSystem, int param1, int param2, int param3)
{
    int v0, v1;
    UnkStruct_ov5_021F5634 v2;
    VecFx32 v3;

    v2.unk_00 = fieldSystem->unk_40;
    v2.unk_04 = ov5_021DF55C(v2.unk_00, 8);

    v3.x = (((param1) << 4) * FX32_ONE) + (FX32_ONE * 8);
    v3.y = (FX32_ONE * 10);
    v3.z = (((param3) << 4) * FX32_ONE);

    v1 = 0;

    ov5_021DF72C(v2.unk_00, &Unk_ov5_02200B1C, &v3, v1, &v2, 0xff);
    Sound_PlayEffect(1545);
}

static int ov5_021F5684(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5684 *v0 = param1;
    const UnkStruct_ov5_021F5634 *v1 = sub_020715BC(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_04, &v0->unk_78.unk_04->unk_18, 0);
    sub_02073B90(&v0->unk_24, &v0->unk_78.unk_04->unk_04, &v0->unk_00);

    return 1;
}

static void ov5_021F56BC(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5684 *v0 = param1;
    sub_02073AA8(&v0->unk_00);
}

static void ov5_021F56C8(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5684 *v0 = param1;

    if (sub_02073B40(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    sub_02073AC0(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F56F0(UnkStruct_ov101_021D5D90 *param0, void *param1)
{
    UnkStruct_ov5_021F5684 *v0 = param1;

    {
        VecFx32 v1, v2 = { FX32_ONE, FX32_ONE, FX32_ONE };
        MtxFx33 v3 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
        const MtxFx43 *v4 = NNS_G3dGlbGetInvCameraMtx();
        MtxFx33 v5;

        MTX_Rot33Angles(&v3, 90, 0, 0);

        MTX_Copy43To33(v4, &v5);
        MTX_Concat33(&v3, &v5, &v3);

        sub_020715E4(param0, &v1);
        sub_02073BA4(&v0->unk_24, &v1, &v2, &v3);
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B1C = {
    sizeof(UnkStruct_ov5_021F5684),
    ov5_021F5684,
    ov5_021F56BC,
    ov5_021F56C8,
    ov5_021F56F0
};
