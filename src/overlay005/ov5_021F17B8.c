#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DF47C_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay005/struct_ov5_021DF84C.h"
#include "overlay101/struct_ov101_021D86B0.h"

#include "unk_02020AEC.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020677F4.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F17B8.h"

typedef struct {
    UnkStruct_ov5_021DF47C * unk_00;
} UnkStruct_ov5_021F17E4;

typedef struct {
    UnkStruct_0203CDB0 * unk_00;
    UnkStruct_ov5_021DF47C * unk_04;
    UnkStruct_ov5_021F17E4 * unk_08;
    UnkStruct_02061AB4 * unk_0C;
} UnkStruct_ov5_021F1800;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    UnkStruct_ov5_021F1800 unk_14;
    UnkStruct_020216E0 * unk_24;
    VecFx32 unk_28;
    fx32 unk_34;
} UnkStruct_ov5_021F1A24;

typedef struct {
    UnkStruct_0203CDB0 * unk_00;
    UnkStruct_ov5_021DF47C * unk_04;
    UnkStruct_ov5_021F17E4 * unk_08;
    UnkStruct_ov5_021DF84C unk_0C;
    const UnkStruct_020216E0 * unk_34;
} UnkStruct_ov5_021F1BEC;

typedef struct {
    int unk_00;
    UnkStruct_ov5_021F1BEC unk_04;
    UnkStruct_020216E0 * unk_3C;
    VecFx32 unk_40;
    fx32 unk_4C;
    VecFx32 unk_50;
} UnkStruct_ov5_021F1AD8;

static void ov5_021F17E4(UnkStruct_ov5_021F17E4 * param0);
static void ov5_021F17F4(UnkStruct_ov5_021F17E4 * param0);
static void ov5_021F1A24(UnkStruct_ov5_021F1A24 * param0, UnkStruct_02061AB4 * param1, VecFx32 * param2);
static void ov5_021F1A8C(UnkStruct_ov101_021D5D90 * param0, UnkStruct_ov5_021F1A24 * param1);

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200338;

void * ov5_021F17B8 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F17E4 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F17E4)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F17E4(v0);
    return v0;
}

void ov5_021F17D4 (void * param0)
{
    UnkStruct_ov5_021F17E4 * v0 = param0;

    ov5_021F17F4(v0);
    ov5_021DF554(v0);
}

static void ov5_021F17E4 (UnkStruct_ov5_021F17E4 * param0)
{
    ov5_021DF9E0(param0->unk_00, 2, 20);
}

static void ov5_021F17F4 (UnkStruct_ov5_021F17E4 * param0)
{
    ov5_021DFA08(param0->unk_00, 2);
}

void ov5_021F1800 (UnkStruct_02061AB4 * param0, int param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_ov5_021F1800 v2;
    UnkStruct_ov101_021D5D90 * v3;

    v2.unk_00 = sub_02062C00(param0);
    v2.unk_04 = ov5_021DF578(param0);
    v2.unk_08 = ov5_021DF55C(v2.unk_04, 1);
    v2.unk_0C = param0;

    sub_02063050(param0, &v1);

    v0 = sub_02062758(param0, 2);
    v3 = ov5_021DF72C(v2.unk_04, &Unk_ov5_02200338, &v1, param1, &v2, v0);
}

static int ov5_021F184C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F1A24 * v1;
    const UnkStruct_ov5_021F1800 * v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_14 = *v2;
    v1->unk_10 = sub_020715B4(param0);
    v1->unk_00 = sub_02062910(v1->unk_14.unk_0C);
    v1->unk_04 = sub_02062918(v1->unk_14.unk_0C);
    v1->unk_08 = sub_02062920(v1->unk_14.unk_0C);

    if (sub_020677F4(v1->unk_08) == 1) {
        v1->unk_08 = sub_02067800(v1->unk_14.unk_0C);
    }

    v1->unk_28.x = FX32_ONE;
    v1->unk_28.y = FX32_ONE;
    v1->unk_28.z = FX32_ONE;
    v1->unk_34 = (FX32_ONE / 64);

    if (v1->unk_10 == 2) {
        v1->unk_34 = 0;
    }

    ov5_021F1A24(v1, v1->unk_14.unk_0C, &v0);
    sub_020715D4(param0, &v0);
    ov5_021F1A8C(param0, v1);

    return 1;
}

static void ov5_021F18D0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F1A24 * v0;

    v0 = param1;

    if (v0->unk_0C == 1) {
        sub_020211FC(v0->unk_24);
    }
}

static void ov5_021F18E0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_ov5_021F1A24 * v1;
    UnkStruct_02061AB4 * v2;

    v1 = param1;
    v2 = v1->unk_14.unk_0C;
    v0 = sub_02062920(v2);

    if (sub_020677F4(v0) == 1) {
        v0 = sub_02067800(v1->unk_14.unk_0C);
    }

    if ((v1->unk_08 != v0) || (sub_02062764(v2, v1->unk_00, v1->unk_04) == 0) || (sub_02062F64(v2) == 0)) {
        ov5_021DF74C(param0);
        return;
    }

    v1->unk_28.x += v1->unk_34;

    if (v1->unk_28.x >= (FX32_ONE + (FX32_ONE / 8))) {
        v1->unk_28.x = (FX32_ONE + (FX32_ONE / 8));
        v1->unk_34 = -v1->unk_34;
    } else if (v1->unk_28.x <= (FX32_ONE - (FX32_ONE / 8))) {
        v1->unk_28.x = (FX32_ONE - (FX32_ONE / 8));
        v1->unk_34 = -v1->unk_34;
    }

    {
        VecFx32 v3;

        ov5_021F1A24(v1, v2, &v3);
        sub_020715D4(param0, &v3);
    }

    {
        if (v1->unk_0C == 0) {
            ov5_021F1A8C(param0, v1);
        }
    }
}

static void ov5_021F1978 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F1A24 * v0 = param1;
    UnkStruct_02061AB4 * v1 = v0->unk_14.unk_0C;

    {
        int v2 = sub_02062920(v1);

        if (sub_020677F4(v2) == 1) {
            v2 = sub_02067800(v0->unk_14.unk_0C);
        }

        if ((v0->unk_08 != v2) || (sub_02062764(v1, v0->unk_00, v0->unk_04) == 0) || (sub_02062F64(v1) == 0)) {
            ov5_021DF74C(param0);
            return;
        }
    }

    if (v0->unk_0C == 0) {
        return;
    }

    if (sub_02062D58(v1) == 1) {
        sub_02021320(v0->unk_24, 0);
    } else {
        sub_02021320(v0->unk_24, 1);
    }

    {
        VecFx32 v3;

        sub_020715E4(param0, &v3);
        sub_020212A8(v0->unk_24, &v3);
    }

    sub_020212D0(v0->unk_24, &v0->unk_28);

    {
        UnkStruct_020216E0 * v4 = ov5_021EB1A0(v0->unk_14.unk_0C);

        sub_02021344(v0->unk_24, sub_02021358(v4));
        sub_02021380(v0->unk_24, sub_02021394(v4));
    }
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200338 = {
    sizeof(UnkStruct_ov5_021F1A24),
    ov5_021F184C,
    ov5_021F18D0,
    ov5_021F18E0,
    ov5_021F1978
};

static void ov5_021F1A24 (UnkStruct_ov5_021F1A24 * param0, UnkStruct_02061AB4 * param1, VecFx32 * param2)
{
    int v0;
    fx32 v1, v2;
    fx32 v3[3] = {
        (FX32_ONE * 12),
        (FX32_ONE * 16),
        (FX32_ONE * 12)
    };

    sub_02063078(param1, param2);

    v1 = param2->x;
    v2 = -param2->z;

    sub_02063050(param1, param2);
    v0 = sub_020644A4(param0->unk_14.unk_00, param2);

    param2->x += v1;
    param2->z += v2 + (FX32_ONE * -7);

    if (v0 == 0) {
        param2->y = 0;
    } else {
        param2->y -= v3[param0->unk_10];
    }
}

static void ov5_021F1A8C (UnkStruct_ov101_021D5D90 * param0, UnkStruct_ov5_021F1A24 * param1)
{
    int v0;
    void * v1;
    VecFx32 v2;
    UnkStruct_ov5_021DF84C v3;

    {
        const UnkStruct_02061830 * v4 = sub_02062A40(param1->unk_14.unk_0C);

        if (ov5_021ED150(v4, param1->unk_08, &v3) == 0) {
            return;
        }

        if (ov5_021EDD94(param1->unk_14.unk_0C) == 1) {
            return;
        }
    }

    v1 = ov5_021DF9FC(param1->unk_14.unk_04, 2);
    v3.unk_00 = v1;

    sub_020715E4(param0, &v2);

    param1->unk_24 = ov5_021DF7F8(param1->unk_14.unk_04, &v3, &v2);
    param1->unk_0C = 1;
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220034C;

static void ov5_021F1AD8 (UnkStruct_ov101_021D5D90 * param0, UnkStruct_ov5_021F1AD8 * param1)
{
    int v0;
    void * v1;
    VecFx32 v2;
    UnkStruct_ov5_021DF84C v3 = param1->unk_04.unk_0C;

    v1 = ov5_021DF9FC(param1->unk_04.unk_04, 2);
    v3.unk_00 = v1;

    sub_020715E4(param0, &v2);
    param1->unk_3C = ov5_021DF7F8(param1->unk_04.unk_04, &v3, &v2);

    {
        const UnkStruct_020216E0 * v4 = param1->unk_04.unk_34;

        sub_02021344(param1->unk_3C, sub_02021358(v4));
        sub_020213A4(param1->unk_3C, sub_020213D4(v4));
        sub_02021380(param1->unk_3C, sub_02021394(v4));
        sub_02021368(param1->unk_3C, 0);
        sub_02021414(param1->unk_3C);
    }
}

static void ov5_021F1B4C (UnkStruct_ov5_021F1AD8 * param0, VecFx32 * param1)
{
    int v0;
    VecFx32 v1;
    fx32 v2;
    fx32 v3[3] = {
        (FX32_ONE * 12),
        (FX32_ONE * 16),
        (FX32_ONE * 12)
    };

    *param1 = param0->unk_50;
    v0 = sub_020644A4(param0->unk_04.unk_00, param1);
    param1->z += (FX32_ONE * -7);

    if (v0 == 0) {
        param1->y = 0;
    } else {
        param1->y -= v3[param0->unk_00];
    }
}

UnkStruct_ov101_021D5D90 * ov5_021F1BA4 (UnkStruct_ov5_021DF47C * param0, const UnkStruct_ov5_021DF84C * param1, const UnkStruct_020216E0 * param2, const VecFx32 * param3, int param4, int param5)
{
    UnkStruct_ov101_021D5D90 * v0;
    UnkStruct_ov5_021F1BEC v1;

    v1.unk_00 = ov5_021DF574(param0);
    v1.unk_04 = param0;
    v1.unk_08 = ov5_021DF55C(param0, 1);
    v1.unk_0C = *param1;
    v1.unk_34 = param2;

    v0 = ov5_021DF72C(param0, &Unk_ov5_0220034C, param3, param4, &v1, param5);
    return v0;
}

static int ov5_021F1BEC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_ov5_021F1AD8 * v1;
    const UnkStruct_ov5_021F1BEC * v2;

    v1 = param1;
    v2 = sub_020715BC(param0);

    v1->unk_04 = *v2;
    v1->unk_00 = sub_020715B4(param0);
    v1->unk_40.x = FX32_ONE;
    v1->unk_40.y = FX32_ONE;
    v1->unk_40.z = FX32_ONE;
    v1->unk_4C = (FX32_ONE / 64);

    if (v1->unk_00 == 2) {
        v1->unk_4C = 0;
    }

    sub_020715E4(param0, &v1->unk_50);
    ov5_021F1B4C(v1, &v0);

    sub_020715D4(param0, &v0);
    ov5_021F1AD8(param0, v1);

    sub_0207153C(param0);
    return 1;
}

static void ov5_021F1C54 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F1AD8 * v0;

    v0 = param1;
    sub_020211FC(v0->unk_3C);
}

static void ov5_021F1C60 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F1AD8 * v0 = param1;

    v0->unk_40.x += v0->unk_4C;

    if (v0->unk_40.x >= (FX32_ONE + (FX32_ONE / 8))) {
        v0->unk_40.x = (FX32_ONE + (FX32_ONE / 8));
        v0->unk_4C = -v0->unk_4C;
    } else if (v0->unk_40.x <= (FX32_ONE - (FX32_ONE / 8))) {
        v0->unk_40.x = (FX32_ONE - (FX32_ONE / 8));
        v0->unk_4C = -v0->unk_4C;
    }

    {
        VecFx32 v1;

        ov5_021F1B4C(v0, &v1);
        sub_020715D4(param0, &v1);
    }
}

static void ov5_021F1CA4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_ov5_021F1AD8 * v0 = param1;

    {
        VecFx32 v1;

        sub_020715E4(param0, &v1);
        sub_020212A8(v0->unk_3C, &v1);
    }

    sub_020212D0(v0->unk_3C, &v0->unk_40);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_0220034C = {
    sizeof(UnkStruct_ov5_021F1A24),
    ov5_021F1BEC,
    ov5_021F1C54,
    ov5_021F1C60,
    ov5_021F1CA4
};
