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
#include "map_object.h"
#include "map_object_move.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021F2D20.h"

typedef struct UnkStruct_ov5_021F2D20_t {
    UnkStruct_ov5_021DF47C * unk_00;
} UnkStruct_ov5_021F2D20;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    FieldSystem * unk_0C;
    UnkStruct_ov5_021DF47C * unk_10;
    UnkStruct_ov5_021F2D20 * unk_14;
    MapObject * unk_18;
} UnkStruct_021F2EA4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    UnkStruct_021F2EA4 unk_18;
    UnkStruct_020216E0 * unk_34;
} UnkStruct_021F2FA0;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    UnkStruct_ov5_021DF47C * unk_0C;
    UnkStruct_ov5_021F2D20 * unk_10;
} UnkStruct_021F30C4;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_021F30C4 unk_08;
    UnkStruct_020216E0 * unk_1C;
} UnkStruct_021F30FC;

typedef struct {
    int unk_00;
    int unk_04;
    FieldSystem * unk_08;
    UnkStruct_ov5_021DF47C * unk_0C;
    UnkStruct_ov5_021F2D20 * unk_10;
} UnkStruct_021F3154;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_021F3154 unk_10;
    UnkStruct_020216E0 * unk_24;
} UnkStruct_021F31A8;

void include_unk_ov5_02200500(void);

static void ov5_021F2D4C(UnkStruct_ov5_021F2D20 * param0);
static void ov5_021F2E2C(UnkStruct_ov5_021F2D20 * param0);

static const UnkStruct_ov101_021D86B0 Unk_ov5_022004EC;
const UnkStruct_020217F4 Unk_ov5_02200540[];
const UnkStruct_020217F4 Unk_ov5_02200558[];
const UnkStruct_020217F4 Unk_ov5_02200528[];
const UnkStruct_020217F4 Unk_ov5_02200570[];

void * ov5_021F2D20 (UnkStruct_ov5_021DF47C * param0)
{
    UnkStruct_ov5_021F2D20 * v0;

    v0 = ov5_021DF53C(param0, (sizeof(UnkStruct_ov5_021F2D20)), 0, 0);
    v0->unk_00 = param0;

    ov5_021F2D4C(v0);
    return v0;
}

void ov5_021F2D3C (void * param0)
{
    UnkStruct_ov5_021F2D20 * v0 = param0;

    ov5_021F2E2C(v0);
    ov5_021DF554(v0);
}

static void ov5_021F2D4C (UnkStruct_ov5_021F2D20 * param0)
{
    ov5_021DF9E0(param0->unk_00, 0, 83);
    ov5_021DF9E0(param0->unk_00, 5, 84);

    ov5_021DFA14(param0->unk_00, 0, 170);
    ov5_021DFA14(param0->unk_00, 3, 171);
    ov5_021DFA14(param0->unk_00, 4, 172);
    ov5_021DFA14(param0->unk_00, 5, 173);

    ov5_021DFA3C(param0->unk_00, 0, 0, 1);
    ov5_021DFA3C(param0->unk_00, 4, 1, 1);
    ov5_021DFA3C(param0->unk_00, 5, 2, 1);
    ov5_021DFA3C(param0->unk_00, 6, 3, 1);

    ov5_021DF864(param0->unk_00, 0, 0, 0, 0, 0, Unk_ov5_02200540);
    ov5_021DF864(param0->unk_00, 5, 5, 3, 4, 0, Unk_ov5_02200558);
    ov5_021DF864(param0->unk_00, 6, 5, 4, 5, 0, Unk_ov5_02200528);
    ov5_021DF864(param0->unk_00, 7, 5, 5, 6, 0, Unk_ov5_02200570);
}

static void ov5_021F2E2C (UnkStruct_ov5_021F2D20 * param0)
{
    ov5_021DFA08(param0->unk_00, 0);
    ov5_021DFA08(param0->unk_00, 5);

    ov5_021DFA30(param0->unk_00, 0);
    ov5_021DFA30(param0->unk_00, 3);

    ov5_021DFA30(param0->unk_00, 4);
    ov5_021DFA30(param0->unk_00, 5);

    ov5_021DFA7C(param0->unk_00, 0);
    ov5_021DFA7C(param0->unk_00, 4);
    ov5_021DFA7C(param0->unk_00, 5);
    ov5_021DFA7C(param0->unk_00, 6);

    ov5_021DF9D4(param0->unk_00, 0);
    ov5_021DF9D4(param0->unk_00, 5);
    ov5_021DF9D4(param0->unk_00, 6);
    ov5_021DF9D4(param0->unk_00, 7);
}

void ov5_021F2EA4 (MapObject * param0, int param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_021F2EA4 v2;
    UnkStruct_ov5_021DF47C * v3;
    UnkStruct_ov101_021D5D90 * v4;

    v3 = ov5_021DF578(param0);

    v2.unk_00 = MapObject_GetXPos(param0);
    v2.unk_04 = MapObject_GetYPos(param0);
    v2.unk_08 = MapObject_GetZPos(param0);
    v2.unk_10 = v3;
    v2.unk_0C = ov5_021DF574(v3);
    v2.unk_14 = ov5_021DF55C(v3, 19);
    v2.unk_18 = param0;

    MapObject_PosVectorOut(param0, &v1);

    v0 = sub_02062758(param0, 2);
    v4 = ov5_021DF72C(v3, &Unk_ov5_022004EC, &v1, param1, &v2, v0);
}

static int ov5_021F2F0C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0, v1;
    VecFx32 v2;
    UnkStruct_021F2FA0 * v3;
    const UnkStruct_021F2EA4 * v4;

    v3 = param1;
    v4 = sub_020715BC(param0);

    v3->unk_18 = *v4;
    v3->unk_04 = sub_02062924(v3->unk_18.unk_18);
    v3->unk_08 = MapObject_Id(v3->unk_18.unk_18);
    v3->unk_0C = sub_02062918(v3->unk_18.unk_18);

    v2.x = (((v3->unk_18.unk_00) << 4) * FX32_ONE);
    v2.z = (((v3->unk_18.unk_08) << 4) * FX32_ONE);
    v2.y = sub_02063074(v3->unk_18.unk_18);
    v3->unk_14 = sub_020644A4(v3->unk_18.unk_0C, &v2);

    v2.x += ((((16 * FX32_ONE) >> 1)));
    v2.z += ((((16 * FX32_ONE) >> 1)) + (FX32_ONE * 6) + (FX32_ONE * 4));

    sub_020715D4(param0, &v2);

    v3->unk_34 = ov5_021DF84C(v3->unk_18.unk_10, 0, &v2);

    if (sub_020715B4(param0) == 0) {
        v3->unk_00 = 1;
    }

    return 1;
}

static void ov5_021F2FA0 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_021F2FA0 * v0;

    v0 = param1;
    sub_020211FC(v0->unk_34);
}

static void ov5_021F2FAC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_021F2FA0 * v1;
    MapObject * v2;

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
        v0 = sub_020213D4(v1->unk_34) / FX32_ONE;

        if (v0 >= 12) {
            v1->unk_00 = 1;
        }
        break;
    case 1:
        sub_02021380(v1->unk_34, (12 * FX32_ONE));
        v1->unk_00 = 2;
    case 2:
        if (sub_020627B4(v2, v1->unk_04, v1->unk_08, v1->unk_0C) == 0) {
            ov5_021DF74C(param0);
            return;
        }

        {
            int v5, v6;

            v5 = MapObject_GetXPos(v2);
            v6 = MapObject_GetZPos(v2);

            if ((v1->unk_18.unk_00 != v5) || (v1->unk_18.unk_08 != v6)) {
                ov5_021DF74C(param0);
                return;
            }
        }
        break;
    }
}

static void ov5_021F308C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_021F2FA0 * v1;
    MapObject * v2;

    v1 = param1;
    v2 = v1->unk_18.unk_18;

    if (sub_020627B4(v2, v1->unk_04, v1->unk_08, v1->unk_0C) == 0) {
        ov5_021DF74C(param0);
        return;
    }

    sub_020715E4(param0, &v0);
    sub_020212A8(v1->unk_34, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_022004EC = {
    (sizeof(UnkStruct_021F2FA0)),
    ov5_021F2F0C,
    ov5_021F2FA0,
    ov5_021F2FAC,
    ov5_021F308C
};

static const UnkStruct_020217F4 Unk_ov5_02200540[] = {
    {0x0, 0xC, 0x0},
    {0x0, 0x0, 0x2}
};

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200500;

void include_unk_ov5_02200500 (void)
{
    int dummy = Unk_ov5_02200500.unk_00;
}

static int ov5_021F30C4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_021F30FC * v1;
    const UnkStruct_021F30C4 * v2;

    v1 = param1;
    v2 = sub_020715BC(param0);
    v1->unk_08 = *v2;

    sub_020715E4(param0, &v0);
    v1->unk_1C = ov5_021DF84C(v1->unk_08.unk_0C, 0, &v0);

    return 1;
}

static void ov5_021F30FC (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_021F30FC * v0;

    v0 = param1;
    sub_020211FC(v0->unk_1C);
}

static void ov5_021F3108 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_021F30FC * v1;

    v1 = param1;

    switch (v1->unk_00) {
    case 0:
        sub_02021368(v1->unk_1C, FX32_ONE);
        v0 = sub_020213D4(v1->unk_1C) / FX32_ONE;

        if (v0 >= 12) {
            v1->unk_04 = 1;
            v1->unk_00 = 1;
        }
        break;
    case 1:
        break;
    }
}

static void ov5_021F313C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_021F30FC * v1;

    v1 = param1;
    sub_020715E4(param0, &v0);
    sub_020212A8(v1->unk_1C, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200500 = {
    (sizeof(UnkStruct_021F30FC)),
    ov5_021F30C4,
    ov5_021F30FC,
    ov5_021F3108,
    ov5_021F313C
};

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200514;

static const UnkStruct_020217F4 Unk_ov5_02200558[] = {
    {0x0, 0x28, 0x1},
    {0x0, 0x0, 0x2}
};

static const UnkStruct_020217F4 Unk_ov5_02200528[] = {
    {0x0, 0x18, 0x1},
    {0x0, 0x0, 0x2}
};

static const UnkStruct_020217F4 Unk_ov5_02200570[] = {
    {0x0, 0x28, 0x1},
    {0x0, 0x0, 0x2}
};

UnkStruct_ov101_021D5D90 * ov5_021F3154 (FieldSystem * param0, int param1, int param2, int param3)
{
    VecFx32 v0;
    UnkStruct_021F3154 v1;
    UnkStruct_ov5_021DF47C * v2;
    UnkStruct_ov101_021D5D90 * v3;

    v2 = param0->unk_40;

    v1.unk_00 = param1;
    v1.unk_04 = param2;
    v1.unk_0C = v2;
    v1.unk_08 = param0;
    v1.unk_10 = ov5_021DF55C(v2, 19);

    v0.x = (((param1) << 4) * FX32_ONE) + ((((16 * FX32_ONE) >> 1)));
    v0.y = 0;
    v0.z = (((param2) << 4) * FX32_ONE) + (((((16 * FX32_ONE) >> 1)) + (FX32_ONE * 6) + (FX32_ONE * 4)) / 2);

    v3 = ov5_021DF72C(v2, &Unk_ov5_02200514, &v0, param3, &v1, 0xff);
    return v3;
}

int ov5_021F31A8 (UnkStruct_ov101_021D5D90 * param0)
{
    UnkStruct_021F31A8 * v0;

    v0 = sub_02071598(param0);
    return v0->unk_04;
}

static int ov5_021F31B4 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    VecFx32 v1;
    UnkStruct_021F31A8 * v2;
    const UnkStruct_021F3154 * v3;

    v2 = param1;
    v3 = sub_020715BC(param0);
    v2->unk_10 = *v3;
    v2->unk_0C = sub_020715B4(param0);

    v1.x = (((v2->unk_10.unk_00) << 4) * FX32_ONE) + ((((16 * FX32_ONE) >> 1)));
    v1.z = (((v2->unk_10.unk_04) << 4) * FX32_ONE) + (((((16 * FX32_ONE) >> 1)) + (FX32_ONE * 6) + (FX32_ONE * 4)) / 2);

    v1.y = 0;
    sub_020644A4(v2->unk_10.unk_08, &v1);
    v1.y += (FX32_ONE);

    sub_020715D4(param0, &v1);

    switch (v2->unk_0C) {
    case 0:
        v0 = 5;
        break;
    case 1:
        v0 = 6;
        break;
    case 2:
    default:
        v0 = 7;
    }

    v2->unk_24 = ov5_021DF84C(v2->unk_10.unk_0C, v0, &v1);
    return 1;
}

static void ov5_021F3238 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    UnkStruct_021F31A8 * v0;

    v0 = param1;
    sub_020211FC(v0->unk_24);
}

static void ov5_021F3244 (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    int v0;
    UnkStruct_021F31A8 * v1;

    v1 = param1;

    switch (v1->unk_00) {
    case 0:
        if (sub_02021368(v1->unk_24, FX32_ONE) == 1) {
            v1->unk_04 = 1;
            v1->unk_00++;
        }
        break;
    case 1:
        break;
    }
}

static void ov5_021F326C (UnkStruct_ov101_021D5D90 * param0, void * param1)
{
    VecFx32 v0;
    UnkStruct_021F31A8 * v1;

    v1 = param1;

    sub_020715E4(param0, &v0);
    sub_020212A8(v1->unk_24, &v0);
}

static const UnkStruct_ov101_021D86B0 Unk_ov5_02200514 = {
    (sizeof(UnkStruct_021F31A8)),
    ov5_021F31B4,
    ov5_021F3238,
    ov5_021F3244,
    ov5_021F326C
};
