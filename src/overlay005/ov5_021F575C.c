#include <nitro.h>
#include <string.h>

#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02073838.h"
#include "struct_defs/struct_02073974.h"
#include "struct_defs/struct_02073B50.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_020711EC.h"
#include "unk_02073838.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F575C.h"

typedef struct {
    int unk_00;
    UnkStruct_ov5_021DF47C * unk_04;
    UnkStruct_02073838 unk_08;
    UnkStruct_02073974 unk_1C;
} UnkStruct_021F5788;

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
    UnkStruct_021F5788 * unk_04;
} UnkStruct_ov5_021F57C8;

typedef struct {
    UnkStruct_02073974 unk_00;
    UnkStruct_02073B50 unk_24;
    UnkStruct_ov5_021F57C8 unk_78;
} UnkStruct_ov5_021F580C;

static void ov5_021F5788(UnkStruct_021F5788 * param0);
static void ov5_021F57B4(UnkStruct_021F5788 * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B54;

void * ov5_021F575C (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_021F5788 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_021F5788)), 0, 0);
    v0->unk_04 = param0;

    ov5_021F5788(v0);
    return v0;
}

void ov5_021F5778 (void * param0)
{
    UnkStruct_021F5788 * v0 = param0;

    ov5_021F57B4(v0);
    ov5_021DF554(v0);
}

static void ov5_021F5788 (UnkStruct_021F5788 * param0)
{
    ov5_021DFB00(param0->unk_04, &param0->unk_08, 0, 92, 0);
    ov5_021DFB24(param0->unk_04, &param0->unk_1C, 0, 164, 0);
}

static void ov5_021F57B4 (UnkStruct_021F5788 * param0)
{
    sub_0207395C(&param0->unk_08);
    sub_02073AA8(&param0->unk_1C);
}

void ov5_021F57C8 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    int v0, v1;
    UnkStruct_ov5_021F57C8 v2;
    VecFx32 v3;

    v2.unk_00 = param0->unk_40;
    v2.unk_04 = ov5_021DF55C(v2.unk_00, 9);

    v3.x = (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    v3.y = 0;
    v3.z = (((param2) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);

    v1 = 0;
    ov5_021DF72C(v2.unk_00, &Unk_ov5_02200B54, &v3, v1, &v2, 0xff);
}

static int ov5_021F580C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F580C * v0 = param1;
    const UnkStruct_ov5_021F57C8 * v1 = sub_020715BC(param0);

    v0->unk_78 = *v1;

    ov5_021DFB40(v0->unk_78.unk_00, &v0->unk_00, &v0->unk_78.unk_04->unk_08, &v0->unk_78.unk_04->unk_1C, 0);
    sub_02073B90(&v0->unk_24, &v0->unk_78.unk_04->unk_08, &v0->unk_00);

    return 1;
}

static void ov5_021F5844 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F580C * v0 = param1;
    sub_02073AA8(&v0->unk_00);
}

static void ov5_021F5850 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F580C * v0 = param1;

    if (sub_02073B40(&v0->unk_00) == 1) {
        ov5_021DF74C(param0);
        return;
    }

    sub_02073AC0(&v0->unk_00, FX32_ONE, 0);
}

static void ov5_021F5878 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F580C * v1 = param1;

    sub_020715E4(param0, &v0);
    sub_02073BB4(&v1->unk_24, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200B54 = {
    (sizeof(UnkStruct_ov5_021F580C)),
    ov5_021F580C,
    ov5_021F5844,
    ov5_021F5850,
    ov5_021F5878
};
