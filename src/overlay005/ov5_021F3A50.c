#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_020217F4.h"
#include "field/field_system.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_02020AEC.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F3A50.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
} UnkStruct_ov5_021F3A7C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    FieldSystem * unk_0C;
    UnkStruct_ov5_021DF47C * unk_10;
    UnkStruct_ov5_021F3A7C * unk_14;
    UnkStruct_02061AB4 * unk_18;
} UnkStruct_ov5_021F3AEC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    UnkStruct_ov5_021F3AEC unk_18;
    UnkStruct_020216E0 * unk_34;
} UnkStruct_ov5_021F3B54;

static void ov5_021F3A7C(UnkStruct_ov5_021F3A7C * param0);
static void ov5_021F3AC4(UnkStruct_ov5_021F3A7C * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220064C;
const UnkStruct_020217F4 Unk_ov5_02200660[];

void * ov5_021F3A50 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F3A7C * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F3A7C)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F3A7C(v0);
    return v0;
}

void ov5_021F3A6C (void * param0)
{
    UnkStruct_ov5_021F3A7C * v0 = param0;

    ov5_021F3AC4(v0);
    ov5_021DF554(v0);
}

static void ov5_021F3A7C (UnkStruct_ov5_021F3A7C * param0)
{
    ov5_021DF9E0(param0->unk_00, 8, 90);
    ov5_021DFA14(param0->unk_00, 8, 177);
    ov5_021DFA3C(param0->unk_00, 9, 9, 1);
    ov5_021DF864(param0->unk_00, 10, 8, 8, 9, 0, Unk_ov5_02200660);
}

static void ov5_021F3AC4 (UnkStruct_ov5_021F3A7C * param0)
{
    ov5_021DFA08(param0->unk_00, 8);
    ov5_021DFA30(param0->unk_00, 8);
    ov5_021DFA7C(param0->unk_00, 9);
    ov5_021DF9D4(param0->unk_00, 10);
}

void ov5_021F3AEC (UnkStruct_02061AB4 * param0, int param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_ov5_021F3AEC v2;
    UnkStruct_ov5_021DF47C * v3;
    UnkStruct_ov101_021D5D90 * v4;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = sub_02063020(param0);
    v2.unk_04 = sub_02063030(param0);
    v2.unk_08 = sub_02063040(param0);
    v2.unk_10 = v3;
    v2.unk_0C = ov5_021DF574(v3);
    v2.unk_14 = ov5_021DF55C(v3, 25);
    v2.unk_18 = param0;

    sub_02063050(param0, &v1);

    v0 = sub_02062758(param0, 2);
    v4 = ov5_021DF72C(v3, &Unk_ov5_0220064C, &v1, param1, &v2, v0);
}

static int ov5_021F3B54 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0, v1;
    VecFx32 v2;
    UnkStruct_ov5_021F3B54 * v3;
    const UnkStruct_ov5_021F3AEC * v4;

    v3 = param1;
    v4 = sub_020715BC(param0);

    v3->unk_18 = *v4;
    v3->unk_04 = sub_02062924(v3->unk_18.unk_18);
    v3->unk_08 = sub_02062910(v3->unk_18.unk_18);
    v3->unk_0C = sub_02062918(v3->unk_18.unk_18);

    v2.x = (((v3->unk_18.unk_00) << 4) * FX32_ONE);
    v2.z = (((v3->unk_18.unk_08) << 4) * FX32_ONE);
    v2.y = sub_02063074(v3->unk_18.unk_18);
    v3->unk_14 = sub_020644A4(v3->unk_18.unk_0C, &v2);

    v2.x += ((((16 * FX32_ONE) >> 1)) - (FX32_ONE / 2));
    v2.y += (-(FX32_ONE * 8));
    v2.z += ((((16 * FX32_ONE) >> 1)) + (FX32_ONE * 6) - (FX32_ONE * 1));

    sub_020715D4(param0, &v2);

    v3->unk_34 = ov5_021DF84C(v3->unk_18.unk_10, 10, &v2);

    if (sub_020715B4(param0) == 0) {
        v3->unk_00 = 1;
    }

    return 1;
}

static void ov5_021F3BF4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F3B54 * v0;

    v0 = param1;
    sub_020211FC(v0->unk_34);
}

static void ov5_021F3C00 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_ov5_021F3B54 * v1;
    UnkStruct_02061AB4 * v2;

    v1 = param1;
    v2 = v1->unk_18.unk_18;

    if (sub_020627B4(v2, v1->unk_04, v1->unk_08, v1->unk_0C) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    if (v1->unk_14 == 0) {
        VecFx32 v3, v4;

        sub_020715E4(param0, &v3);

        v4.x = (((v1->unk_18.unk_00) << 4) * FX32_ONE);
        v4.z = (((v1->unk_18.unk_08) << 4) * FX32_ONE);
        v4.y = v3.y;

        v1->unk_14 = sub_020644A4(v1->unk_18.unk_0C, &v4);

        if (v1->unk_14 == 1) {
            v3.y = v4.y;
            sub_020715D4(param0, &v3);
        }
    }

    switch (v1->unk_00) {
    case 0:
        sub_02021368(v1->unk_34, FX32_ONE);
        v0 = ((sub_020213D4(v1->unk_34) / FX32_ONE));

        if (v0 >= 2) {
            v1->unk_00 = 1;
        }
        break;
    case 1:
        sub_02021380(v1->unk_34, (FX32_ONE * 2));
        sub_02021368(v1->unk_34, 0);
        v1->unk_00 = 2;
    case 2:
    {
        int v5 = sub_02063020(v2);
        int v6 = sub_02063040(v2);

        if ((v1->unk_18.unk_00 != v5) || (v1->unk_18.unk_08 != v6)) {
            ov5_021DF74C(param0);
            return;
        }
    }
    break;
    }
}

static void ov5_021F3CCC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F3B54 * v1;
    UnkStruct_02061AB4 * v2;

    v1 = param1;
    v2 = v1->unk_18.unk_18;

    if (sub_02062764(v2, v1->unk_08, v1->unk_0C) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    sub_020715E4(param0, &v0);
    sub_020212A8(v1->unk_34, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220064C = {
    (sizeof(UnkStruct_ov5_021F3B54)),
    ov5_021F3B54,
    ov5_021F3BF4,
    ov5_021F3C00,
    ov5_021F3CCC
};

static const UnkStruct_020217F4 Unk_ov5_02200660[] = {
    {0x0, 0x2, 0x0},
    {0x0, 0x0, 0x2}
};
