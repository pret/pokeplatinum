#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_020217F4.h"
#include "struct_defs/struct_0203CDB0.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_02020AEC.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F3E74.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
} UnkStruct_ov5_021F3EA0;

typedef struct {
    UnkStruct_0203CDB0 * unk_00;
    UnkStruct_ov5_021DF47C * unk_04;
    UnkStruct_ov5_021F3EA0 * unk_08;
    UnkStruct_02061AB4 * unk_0C;
} UnkStruct_ov5_021F3F10;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov5_021F3F10 unk_10;
    UnkStruct_020216E0 * unk_20;
} UnkStruct_ov5_021F3FB8;

static void ov5_021F3EA0(UnkStruct_ov5_021F3EA0 * param0);
static void ov5_021F3EE8(UnkStruct_ov5_021F3EA0 * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220069C;
const UnkStruct_020217F4 Unk_ov5_022006B0[];

void * ov5_021F3E74 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F3EA0 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F3EA0)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F3EA0(v0);
    return v0;
}

void ov5_021F3E90 (void * param0)
{
    UnkStruct_ov5_021F3EA0 * v0 = param0;

    ov5_021F3EE8(v0);
    ov5_021DF554(v0);
}

static void ov5_021F3EA0 (UnkStruct_ov5_021F3EA0 * param0)
{
    ov5_021DF9E0(param0->unk_00, 9, 107);
    ov5_021DFA14(param0->unk_00, 9, 180);
    ov5_021DFA3C(param0->unk_00, 10, 12, 1);

    ov5_021DF864(param0->unk_00, 11, 9, 9, 10, 0, Unk_ov5_022006B0);
}

static void ov5_021F3EE8 (UnkStruct_ov5_021F3EA0 * param0)
{
    ov5_021DFA08(param0->unk_00, 9);
    ov5_021DFA30(param0->unk_00, 9);
    ov5_021DFA7C(param0->unk_00, 10);
    ov5_021DF9D4(param0->unk_00, 11);
}

void ov5_021F3F10 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_ov5_021F3F10 v0;
    UnkStruct_ov5_021DF47C * v1;
    UnkStruct_ov101_021D5D90 * v2;
    VecFx32 v3;
    int v4;

    v1 = ov5_021DF578(param0);

    v0.unk_00 = sub_02062C00(param0);
    v0.unk_04 = v1;
    v0.unk_08 = ov5_021DF55C(v1, 27);
    v0.unk_0C = param0;

    sub_02063050(param0, &v3);
    sub_02064450(sub_02063020(param0), sub_02063040(param0), &v3);

    v4 = sub_02062758(param0, 2);
    v2 = ov5_021DF72C(v1, &Unk_ov5_0220069C, &v3, 0, &v0, v4);
}

static int ov5_021F3F74 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F3FB8 * v1;
    const UnkStruct_ov5_021F3F10 * v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_10 = *v2;
    v1->unk_04 = sub_02062910(v1->unk_10.unk_0C);
    v1->unk_08 = sub_02062918(v1->unk_10.unk_0C);

    sub_020715E4(param0, &v0);

    v1->unk_20 = ov5_021DF84C(v1->unk_10.unk_04, 11, &v0);

    return 1;
}

static void ov5_021F3FB8 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F3FB8 * v0;

    v0 = param1;
    sub_020211FC(v0->unk_20);
}

static void ov5_021F3FC4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_ov5_021F3FB8 * v1;
    UnkStruct_02061AB4 * v2;

    v1 = param1;
    v2 = v1->unk_10.unk_0C;

    switch (v1->unk_00) {
    case 0:
        sub_02021368(v1->unk_20, FX32_ONE);
        v0 = sub_020213D4(v1->unk_20) / FX32_ONE;

        if (v0 >= 7) {
            ov5_021DF74C(param0);
            return;
        }
        break;
    }
}

static void ov5_021F3FF4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0, v1;
    UnkStruct_ov5_021F3FB8 * v2;
    UnkStruct_02061AB4 * v3;

    v2 = param1;
    v3 = v2->unk_10.unk_0C;

    sub_020715E4(param0, &v0);
    v0.z += ((FX32_ONE * 8));
    sub_020212A8(v2->unk_20, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220069C = {
    (sizeof(UnkStruct_ov5_021F3FB8)),
    ov5_021F3F74,
    ov5_021F3FB8,
    ov5_021F3FC4,
    ov5_021F3FF4
};

static const UnkStruct_020217F4 Unk_ov5_022006B0[] = {
    {0x0, 0x7, 0x1},
    {0x0, 0x0, 0x2}
};
