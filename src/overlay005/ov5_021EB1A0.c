#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "overlay005/const_ov5_021FB51C.h"

#include "overlay005/struct_ov5_021EC700.h"
#include "overlay005/struct_ov5_021ECD10.h"
#include "overlay005/struct_ov5_021ED01C.h"

#include "unk_0201D15C.h"
#include "unk_02020AEC.h"
#include "map_object.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EB1A0.h"
#include "overlay005/ov5_021ECA70.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021F10E8.h"
#include "overlay005/ov5_021F23D0.h"

typedef struct {
    s16 unk_00;
    s8 unk_02;
    s8 unk_03;
    UnkStruct_020216E0 * unk_04;
    UnkStruct_ov5_021ED01C unk_08;
} UnkStruct_ov5_021EB2EC;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    s8 unk_02;
    s8 unk_03;
    UnkStruct_020216E0 * unk_04;
    UnkStruct_ov5_021ED01C unk_08;
} UnkStruct_ov5_021EB7F8;

typedef struct {
    s8 unk_00;
    s8 unk_01;
    s8 unk_02;
    u8 unk_03_0 : 1;
    u8 unk_03_1 : 7;
    UnkStruct_020216E0 * unk_04;
    UnkStruct_ov5_021ED01C unk_08;
} UnkStruct_ov5_021EBA0C;

typedef struct {
    UnkStruct_ov101_021D5D90 * unk_00;
} UnkStruct_ov5_021EC760;

typedef struct {
    s16 unk_00;
    s8 unk_02;
    s8 unk_03;
    UnkStruct_020216E0 * unk_04;
    UnkStruct_ov5_021ED01C unk_08;
    u32 unk_10;
} UnkStruct_ov5_021EC804;

typedef struct {
    int unk_00;
    fx32 unk_04;
    UnkStruct_020216E0 * unk_08;
    UnkStruct_ov5_021ED01C unk_0C;
} UnkStruct_ov5_021EC938;

void ov5_021EB2EC(MapObject * mapObj);
void ov5_021EB314(MapObject * mapObj);
void ov5_021EB328(MapObject * mapObj);
void ov5_021EB354(MapObject * mapObj);
void ov5_021EB398(MapObject * mapObj);
void ov5_021EB40C(MapObject * mapObj);
static void ov5_021EB478(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB4AC(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB4E8(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB524(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB560(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB59C(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EB620(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3);
static void ov5_021EC068(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3);
static void ov5_021EC0E4(MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3);
void ov5_021EC734(MapObject * mapObj);
void ov5_021EC75C(MapObject * mapObj);
void ov5_021EC760(MapObject * mapObj);
void ov5_021EC778(MapObject * mapObj);
void ov5_021EC790(MapObject * mapObj);
static void ov5_021EC638(UnkStruct_020216E0 * param0, int param1);
static void ov5_021EC668(UnkStruct_020216E0 * param0);
static void ov5_021EC674(UnkStruct_020216E0 * param0, int param1, int param2);
static void ov5_021EC69C(UnkStruct_020216E0 * param0, int param1);
static void ov5_021EC6C0(MapObject * mapObj, UnkStruct_020216E0 * param1);
static void ov5_021EC374(MapObject * mapObj, UnkStruct_020216E0 * param1, int param2);

void(*const Unk_ov5_021FF3D4[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EB2EC *, int);
void(*const Unk_ov5_021FF420[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EB2EC *, int);
void(*const Unk_ov5_021FF3F8[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int);
static void(*const Unk_ov5_021FF448[11])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int);

UnkStruct_020216E0 * ov5_021EB1A0 (MapObject * mapObj)
{
    int v0 = sub_02062920(mapObj);

    switch (v0) {
    case 0x0:
    case 0x61:
    case 0x15:
    case 0x62:
    case 0xb0:
    case 0xb1:
    case 0xb2:
    case 0xb3:
    case 0xb4:
    case 0xb5:
    case 0xc6:
    case 0xc7:
    case 0xba:
    case 0xbb:
    case 0xbc:
    case 0xbd:
    case 0xc4:
    case 0xc5:
    case 0xc8:
    case 0xc9:
    case 0xd2:
    case 0xd3:
    case 0xd4:
    case 0x107:
    case 0x10c:
    case 0x10d:
    case 0x10e:
    case 0x10f:
    case 0x110:
    case 0x111:
    case 0x112:
    case 0x113:
    {
        UnkStruct_ov5_021EBA0C * v1;

        v1 = sub_02062AF0(mapObj);
        return v1->unk_04;
    }
    case 0xc3:
    {
        UnkStruct_ov5_021EB7F8 * v2;

        v2 = sub_02062AF0(mapObj);
        return v2->unk_04;
    }
    case 0x97:
    case 0x98:
    case 0x99:
    {
        return ov5_021ECB80(mapObj);
    }
    case 0x108:
    {
        UnkStruct_ov5_021EC804 * v3;

        v3 = sub_02062AF0(mapObj);
        return v3->unk_04;
    }
    case 0x64:
    {
        return NULL;
    }
    default:
    {
        const UnkStruct_ov5_021ECD10 * v4;

        v4 = ov5_021ECD04(mapObj);

        if (v4->unk_04_0 == 1) {
            UnkStruct_ov5_021EB2EC * v5;

            v5 = sub_02062AF0(mapObj);
            return v5->unk_04;
        }
    }
    }

    return NULL;
}

void ov5_021EB2EC (MapObject * mapObj)
{
    UnkStruct_ov5_021EB2EC * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EB2EC)));
    v0->unk_02 = -1;

    ov5_021ECF04(mapObj, &v0->unk_04);

    if (v0->unk_04 != NULL) {
        sub_02062B68(mapObj);
    }
}

void ov5_021EB314 (MapObject * mapObj)
{
    UnkStruct_ov5_021EB2EC * v0;

    v0 = sub_02062AF0(mapObj);
    ov5_021ECFA4(mapObj, &v0->unk_04);
}

void ov5_021EB328 (MapObject * mapObj)
{
    UnkStruct_ov5_021EB2EC * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_04 != NULL) {
        ov5_021ED01C(v0->unk_04, &v0->unk_08);
    }

    ov5_021ECFA4(mapObj, &v0->unk_04);
    MapObject_SetStatusFlagOn(mapObj, (1 << 21));
}

void ov5_021EB354 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EB2EC * v1;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v1->unk_04 == NULL) {
        ov5_021ECF04(mapObj, &v1->unk_04);
    }

    if (v1->unk_04 != NULL) {
        ov5_021ED03C(v1->unk_04, &v1->unk_08);
        ov5_021EDEB4(mapObj, v1->unk_04);

        MapObject_SetStatusFlagOff(mapObj, (1 << 21));
    }
}

void ov5_021EB398 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB2EC * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    GF_ASSERT(v1 < (0x8 + 1));
    Unk_ov5_021FF3D4[v1](mapObj, v3, v2, v0);

    v2->unk_02 = v0;
    v2->unk_03 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EB40C (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB2EC * v2;
    UnkStruct_020216E0 * v3;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    v3 = v2->unk_04;

    if (v3 == NULL) {
        return;
    }

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EB438 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB2EC * v2;
    UnkStruct_020216E0 * v3;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    v3 = v2->unk_04;

    if (v3 == NULL) {
        return;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(v3, (FX32_ONE));
    }

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EB478 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else {
        ov5_021EC668(param1);
    }

    sub_02021368(param1, 0);
}

static void ov5_021EB4AC (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) / 2));
    }
}

static void ov5_021EB4E8 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, (FX32_ONE));
    }
}

static void ov5_021EB524 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) * 2));
    }
}

static void ov5_021EB560 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) * 4));
    }
}

static void ov5_021EB59C (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);

        param2->unk_00 = 0;
    }

    if (param2->unk_03 != 0x6) {
        param2->unk_00 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            (FX32_ONE),
            (FX32_ONE),
            ((FX32_ONE) * 2),
            (FX32_ONE),
            (FX32_ONE),
            ((FX32_ONE) * 2),
            0
        };

        sub_02021368(param1, v1[param2->unk_00]);
        param2->unk_00++;

        if (v1[param2->unk_00] == 0) {
            param2->unk_00 = 0;
        }
    }
}

static void ov5_021EB620 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);

        param2->unk_00 = 0;
    }

    if (param2->unk_03 != 0x7) {
        param2->unk_00 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            ((FX32_ONE) * 3),
            ((FX32_ONE) * 2),
            ((FX32_ONE) * 3),
            0
        };

        sub_02021368(param1, v1[param2->unk_00]);
        param2->unk_00++;

        if (v1[param2->unk_00] == 0) {
            param2->unk_00 = 0;
        }
    }
}

static void ov5_021EB69C (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param3 != param2->unk_02) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);

        param2->unk_00 = 0;
    }

    if (param2->unk_03 != 0x8) {
        param2->unk_00 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            ((FX32_ONE) * 2),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            0
        };

        sub_02021368(param1, v1[param2->unk_00]);

        param2->unk_00++;
        if (v1[param2->unk_00] == 0) {
            param2->unk_00 = 0;
        }
    }
}

static void(*const Unk_ov5_021FF3D4[])(
    MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EB2EC *, int) = {
    ov5_021EB478,
    ov5_021EB4AC,
    ov5_021EB4AC,
    ov5_021EB4E8,
    ov5_021EB524,
    ov5_021EB560,
    ov5_021EB59C,
    ov5_021EB620,
    ov5_021EB69C
};

void ov5_021EB720 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB2EC * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    GF_ASSERT(v1 < (0x9 + 1));

    Unk_ov5_021FF420[v1](mapObj, v3, v2, v0);

    v2->unk_02 = v0;
    v2->unk_03 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EB794 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if ((param3 != param2->unk_02) || (param2->unk_03 == 0x9)) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else {
        ov5_021EC668(param1);
    }

    sub_02021368(param1, 0);
}

static void ov5_021EB7D0 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EB2EC * param2, int param3)
{
    if (param2->unk_03 != 0x9) {
        sub_02021344(param1, 4);
        sub_020213A4(param1, 0);
    }

    sub_02021368(param1, (FX32_ONE));
}

static void(*const Unk_ov5_021FF420[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EB2EC *, int) = {
    ov5_021EB794,
    ov5_021EB4AC,
    ov5_021EB4AC,
    ov5_021EB4E8,
    ov5_021EB524,
    ov5_021EB560,
    ov5_021EB59C,
    ov5_021EB620,
    ov5_021EB69C,
    ov5_021EB7D0
};

void ov5_021EB7F8 (MapObject * mapObj)
{
    UnkStruct_ov5_021EB7F8 * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EB7F8)));

    v0->unk_00 = -1;
    v0->unk_02 = LCRNG_Next() % 16;

    ov5_021ECF04(mapObj, &v0->unk_04);

    if (v0->unk_04 != NULL) {
        sub_02062B68(mapObj);
    }
}

void ov5_021EB834 (MapObject * mapObj)
{
    UnkStruct_ov5_021EB7F8 * v0;

    v0 = sub_02062AF0(mapObj);
    ov5_021ECFA4(mapObj, &v0->unk_04);
}

void ov5_021EB848 (MapObject * mapObj)
{
    UnkStruct_ov5_021EB7F8 * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_04 != NULL) {
        ov5_021ED01C(v0->unk_04, &v0->unk_08);
    }

    ov5_021ECFA4(mapObj, &v0->unk_04);
    MapObject_SetStatusFlagOn(mapObj, (1 << 21));
}

void ov5_021EB874 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EB7F8 * v1;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v1->unk_04 == NULL) {
        ov5_021ECF04(mapObj, &v1->unk_04);
    }

    if (v1->unk_04 != NULL) {
        ov5_021ED03C(v1->unk_04, &v1->unk_08);
        ov5_021EDEB4(mapObj, v1->unk_04);
        MapObject_SetStatusFlagOff(mapObj, (1 << 21));
    }
}

void ov5_021EB8B8 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB7F8 * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    if (v2->unk_02) {
        v2->unk_02--;
        sub_02021368(v3, 0);
    } else {
        sub_02021368(v3, (FX32_ONE));
        v2->unk_01++;

        if (v2->unk_01 >= 32) {
            v2->unk_01 = 0;
            v2->unk_02 = LCRNG_Next() % 16;
        }
    }

    v2->unk_00 = v0;
    v2->unk_03 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EB944 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EB2EC * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    switch (v1) {
    case 0x0:
    {
        int v4;

        if ((v0 == 0) || (v0 == 1)) {
            v4 = 0;
        } else {
            v4 = 1;
        }

        if ((sub_02021358(v3) != v4) || (v2->unk_03 == 0x0)) {
            sub_02021344(v3, v4);
            sub_020213A4(v3, 0);
            sub_02021368(v3, 0);
        }

        sub_02021368(v3, 0);
    }
    break;
    default:
    {
        int v5;
        fx32 v6 = 0;

        if ((v0 == 0) || (v0 == 1)) {
            v5 = 0;
        } else {
            v5 = 1;
        }

        if (sub_02021358(v3) != v5) {
            sub_02021344(v3, v5);
            sub_020213A4(v3, 0);
        }

        sub_02021368(v3, (FX32_ONE));
    }
    break;
    }

    v2->unk_02 = v0;
    v2->unk_03 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EBA0C (MapObject * mapObj)
{
    UnkStruct_ov5_021EBA0C * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EBA0C)));
    v0->unk_00 = -1;

    ov5_021ECF04(mapObj, &v0->unk_04);

    if (v0->unk_04 != NULL) {
        sub_02062B68(mapObj);
    }
}

void ov5_021EBA34 (MapObject * mapObj)
{
    UnkStruct_ov5_021EBA0C * v0;
    VecFx32 v1 = {0, 0, 0};

    v0 = sub_02062AF0(mapObj);

    ov5_021ECFA4(mapObj, &v0->unk_04);
    sub_02063088(mapObj, &v1);
}

void ov5_021EBA60 (MapObject * mapObj)
{
    UnkStruct_ov5_021EBA0C * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_04 != NULL) {
        ov5_021ED01C(v0->unk_04, &v0->unk_08);
    }

    ov5_021ECFA4(mapObj, &v0->unk_04);
    MapObject_SetStatusFlagOn(mapObj, (1 << 21));
}

void ov5_021EBA8C (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EBA0C * v1;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v1->unk_04 == NULL) {
        ov5_021ECF04(mapObj, &v1->unk_04);
    }

    if (v1->unk_04 != NULL) {
        ov5_021ED03C(v1->unk_04, &v1->unk_08);
        ov5_021EDEB4(mapObj, v1->unk_04);
        MapObject_SetStatusFlagOff(mapObj, (1 << 21));
    }
}

void ov5_021EBAD0 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    GF_ASSERT(v1 < (((0x8 + 1)) + 1));
    Unk_ov5_021FF3F8[v1](mapObj, v3, v2, v0);

    v2->unk_00 = v0;
    v2->unk_02 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EBB44 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
        param2->unk_03_0 = 0;
    } else if (param2->unk_02 == ((0x8 + 1))) {
        param2->unk_03_0 = 1;
    } else if (param2->unk_03_0 == 1) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
        param2->unk_03_0 = 0;
    } else {
        ov5_021EC668(param1);
    }
}

static void ov5_021EBBB4 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0;

    if (param3 != param2->unk_00) {
        v0 = ov5_021EDF18(param3);
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 == ((0x8 + 1))) {
        param2->unk_03_0 = 1;
        return;
    } else if (param2->unk_03_0 == 1) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
        param2->unk_03_0 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) / 2));
    }
}

static void ov5_021EBC28 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0;

    if (param3 != param2->unk_00) {
        v0 = ov5_021EDF18(param3);
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, (FX32_ONE));
    }
}

static void ov5_021EBC7C (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) * 2));
    }
}

static void ov5_021EBCD0 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) * 4));
    }
}

static void ov5_021EBD24 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
        param2->unk_01 = 0;
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (param2->unk_02 != 0x6) {
        param2->unk_01 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            (FX32_ONE),
            (FX32_ONE),
            ((FX32_ONE) * 2),
            (FX32_ONE),
            (FX32_ONE),
            ((FX32_ONE) * 2),
            0
        };

        sub_02021368(param1, v1[param2->unk_01]);
        param2->unk_01++;

        if (v1[param2->unk_01] == 0) {
            param2->unk_01 = 0;
        }
    }
}

static void ov5_021EBDC4 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
        param2->unk_01 = 0;
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (param2->unk_02 != 0x7) {
        param2->unk_01 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            ((FX32_ONE) * 3),
            ((FX32_ONE) * 2),
            ((FX32_ONE) * 3),
            0
        };

        sub_02021368(param1, v1[param2->unk_01]);
        param2->unk_01++;

        if (v1[param2->unk_01] == 0) {
            param2->unk_01 = 0;
        }
    }
}

static void ov5_021EBE5C (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    if (param3 != param2->unk_00) {
        int v0 = ov5_021EDF18(param3);

        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
        param2->unk_01 = 0;
    } else if (param2->unk_02 == ((0x8 + 1))) {
        ov5_021EC69C(param1, ov5_021EDF18(param3));
    }

    if (param2->unk_02 != 0x8) {
        param2->unk_01 = 0;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        fx32 v1[] = {
            ((FX32_ONE) * 2),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            (FX32_ONE),
            0
        };

        sub_02021368(param1, v1[param2->unk_01]);
        param2->unk_01++;

        if (v1[param2->unk_01] == 0) {
            param2->unk_01 = 0;
        }
    }
}

static void ov5_021EBEFC (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0;

    if (param3 != param2->unk_00) {
        v0 = ov5_021EDF24(param3);
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 != ((0x8 + 1))) {
        ov5_021EC674(
            param1, ov5_021EDF24(param3), 4);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, (FX32_ONE));
    }
}

static void(*const Unk_ov5_021FF3F8[])(
    MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int) = {
    ov5_021EBB44,
    ov5_021EBBB4,
    ov5_021EBBB4,
    ov5_021EBC28,
    ov5_021EBC7C,
    ov5_021EBCD0,
    ov5_021EBD24,
    ov5_021EBDC4,
    ov5_021EBE5C,
    ov5_021EBEFC
};

void ov5_021EBF50 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    GF_ASSERT(v1 < (((0x8 + 1) + 1) + 1));

    if ((v2->unk_02 == 0x0) && (v1 != v2->unk_02) && (v2->unk_03_0 == 0)) {
        v2->unk_00 = -1;
    }

    Unk_ov5_021FF448[v1](mapObj, v3, v2, v0);

    v2->unk_00 = v0;
    v2->unk_02 = v1;

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EBFDC (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0[4] = {6, 7, 8, 9};
    int v1 = v0[param3];

    if (param3 != param2->unk_00) {
        sub_02021344(param1, v1);
        sub_020213A4(param1, 0);
        param2->unk_03_0 = 0;
    } else if (param2->unk_02 != 0x0) {
        param2->unk_03_0 = 1;
    } else if (param2->unk_03_0 == 1) {
        sub_02021344(param1, v1);
        sub_020213A4(param1, 0);
        param2->unk_03_0 = 0;
    } else {
        sub_02021368(param1, (FX32_ONE));
    }
}

static void ov5_021EC068 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0;

    v0 = ov5_021EDF30(param3);

    if ((param3 != param2->unk_00) || (param2->unk_02 != 0x0)) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 != ((0x8 + 1))) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (sub_02021358(param1) != v0) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, ((FX32_ONE) / 2));
    }
}

static void ov5_021EC0E4 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    int v0;

    v0 = ov5_021EDF30(param3);

    if (param3 != param2->unk_00) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (param2->unk_02 != ((0x8 + 1) + 1)) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    } else if (sub_02021358(param1) != v0) {
        sub_02021344(param1, v0);
        sub_020213A4(param1, 0);
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(param1, (FX32_ONE));
    }
}

static void(*const Unk_ov5_021FF448[11])(
    MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int) = {
    ov5_021EBFDC,
    ov5_021EBBB4,
    ov5_021EBBB4,
    ov5_021EBC28,
    ov5_021EBC7C,
    ov5_021EBCD0,
    ov5_021EBD24,
    ov5_021EBDC4,
    ov5_021EBE5C,
    ov5_021EC068,
    ov5_021EC0E4
};

void(*const Unk_ov5_021FF31C[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int);

static const int Unk_ov5_021FF34C[] = {
    0x0,
    0x1,
    0x2,
    0x3
};

void ov5_021EC15C (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if ((v3 == NULL) || (ov5_021EDD94(mapObj) == 1)) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    GF_ASSERT(v1 < (0x3 + 1));

    Unk_ov5_021FF31C[v1](mapObj, v3, v2, v0);
    ov5_021EC374(mapObj, v3, v0);

    v2->unk_00 = v0;
    v2->unk_02 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EC1D8 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    fx32 v0;

    if ((param3 != param2->unk_00) || (param2->unk_02 != 0x0)) {
        sub_02021344(param1, Unk_ov5_021FF34C[param3]);
        sub_020213A4(param1, (FX32_ONE * 15));
    }

    v0 = sub_020213D4(param1);
    v0 -= (FX32_ONE);

    if (v0 < 0) {
        v0 = 0;
    }

    sub_020213A4(param1, v0);
    sub_02021368(param1, 0);
}

static void ov5_021EC228 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    fx32 v0;

    if ((param3 != param2->unk_00) || (param2->unk_02 != 0x1)) {
        sub_02021344(param1, Unk_ov5_021FF34C[param3]);
        sub_020213A4(param1, 0);
    }

    sub_02021368(param1, (FX32_ONE));
}

static void ov5_021EC260 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    fx32 v0;

    if ((param3 != param2->unk_00) || (param2->unk_02 != 0x2)) {
        sub_02021344(param1, Unk_ov5_021FF34C[param3]);
        sub_020213A4(param1, (FX32_ONE * 15));
        param2->unk_03_1 = 0;
    }

    v0 = sub_020213D4(param1);

    switch (param2->unk_03_1) {
    case 0:
        v0 -= (FX32_ONE);

        if (v0 <= (FX32_ONE * 10)) {
            param2->unk_03_1++;
        }
        break;
    case 1:
        v0 += (FX32_ONE);

        if (v0 >= (FX32_ONE * 15)) {
            param2->unk_03_1++; param2->unk_01 = 0;
        }
        break;
    case 2:
        param2->unk_01++;

        if (param2->unk_01 >= 30) {
            param2->unk_01 = 0; param2->unk_03_1 = 0;
        }
    }

    sub_020213A4(param1, v0);
    sub_02021368(param1, 0);
}

static void ov5_021EC324 (MapObject * mapObj, UnkStruct_020216E0 * param1, UnkStruct_ov5_021EBA0C * param2, int param3)
{
    fx32 v0;

    if ((param3 != param2->unk_00) || (param2->unk_02 != 0x3)) {
        sub_02021344(param1, Unk_ov5_021FF34C[param3]);
        sub_020213A4(param1, (FX32_ONE * 15));
    }

    v0 = sub_020213D4(param1) - (FX32_ONE);

    if (v0 < 0) {
        v0 = 0;
    }

    sub_020213A4(param1, v0);
    sub_02021368(param1, 0);
}

static void ov5_021EC374 (MapObject * mapObj, UnkStruct_020216E0 * param1, int param2)
{
    VecFx32 v0 = {0, 0, 0};
    int v1 = ((sub_02021394(param1) / FX32_ONE));

    switch (param2) {
    case 0:
        break;
    case 1:
        if (v1 >= 24) {
            v0.z = (FX32_ONE * 6);
        }
        break;
    case 2:
        if (v1 < 40) {
            v0.x = (FX32_ONE * 1);
        } else {
            v0.x = (FX32_ONE * -5);
        }
        break;
    case 3:
        if (v1 < 56) {
            v0.x = (FX32_ONE * -1);
        } else {
            v0.x = (FX32_ONE * 5);
        }
        break;
    }

    sub_02063088(mapObj, &v0);
}

static void(*const Unk_ov5_021FF31C[])(MapObject *, UnkStruct_020216E0 *, UnkStruct_ov5_021EBA0C *, int) = {
    ov5_021EC1D8,
    ov5_021EC228,
    ov5_021EC260,
    ov5_021EC324
};

void ov5_021EC3F0 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EBA0C * v1 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v2 = v1->unk_04;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v2 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);

    v1->unk_00 = v0;
    v1->unk_02 = sub_02062A14(mapObj);

    {
        int v3 = ov5_021EDF18(v0);

        sub_02021344(v2, v3);
        sub_020213A4(v2, 0);
        sub_02021368(v2, 0);
    }

    ov5_021EDEB4(mapObj, v2);
    ov5_021EC6C0(mapObj, v2);
}

void ov5_021EC454 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EBA0C * v1 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v2 = v1->unk_04;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v2 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);

    v1->unk_00 = v0;
    v1->unk_02 = sub_02062A14(mapObj);

    if (sub_02021358(v2) != 0) {
        sub_02021344(v2, 0);
        sub_020213A4(v2, 0);
    }

    sub_02021368(v2, (FX32_ONE));

    ov5_021EDEB4(mapObj, v2);
    ov5_021EC6C0(mapObj, v2);
}

void ov5_021EC4BC (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    switch (v1) {
    case 0x0:
        if (sub_02021358(v3) != 1) {
            sub_02021344(v3, 1);
            sub_020213A4(v3, 0);
        }

        sub_02021368(v3, (FX32_ONE));
        break;
    default:
        if (sub_02021358(v3) != 0) {
            sub_02021344(v3, 0);
            sub_020213A4(v3, 0);
        }

        sub_02021368(v3, (FX32_ONE));
    }

    v2->unk_00 = v0;
    v2->unk_02 = sub_02062A14(mapObj);

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EC554 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);

    if (v0 != v2->unk_00) {
        v1 = ov5_021EDF18(v0);
        sub_02021344(v3, v1);
        sub_020213A4(v3, 0);
    }

    sub_02021368(v3, (FX32_ONE));
    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);

    v2->unk_00 = v0;
    v2->unk_02 = sub_02062A14(mapObj);
}

void ov5_021EC5C0 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EBA0C * v2 = sub_02062AF0(mapObj);
    UnkStruct_020216E0 * v3 = v2->unk_04;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v3 == NULL) {
        return;
    }

    v0 = MapObject_Dir(mapObj);
    v1 = sub_02062A14(mapObj);

    if (v1 != v2->unk_02) {
        if (v1 == 0x0) {
            sub_02021344(v3, 0);
        } else {
            sub_02021344(v3, 1);
        }

        sub_020213A4(v3, 0);
    }

    sub_02021368(v3, (FX32_ONE));

    v2->unk_00 = v0;
    v2->unk_02 = v1;

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

static void ov5_021EC638 (UnkStruct_020216E0 * param0, int param1)
{
    fx32 v0, v1;

    v0 = sub_020213D4(param0);
    v0 /= FX32_ONE;
    v1 = v0 % param1;
    v0 -= v1;
    v0 *= FX32_ONE;

    sub_020213A4(param0, v0);
    sub_02021368(param0, 0);
}

static void ov5_021EC668 (UnkStruct_020216E0 * param0)
{
    ov5_021EC638(param0, 8);
}

static void ov5_021EC674 (UnkStruct_020216E0 * param0, int param1, int param2)
{
    fx32 v0;

    ov5_021EC638(param0, param2);
    v0 = sub_020213D4(param0);

    sub_02021344(param0, param1);
    sub_020213A4(param0, v0);
}

static void ov5_021EC69C (UnkStruct_020216E0 * param0, int param1)
{
    fx32 v0;

    ov5_021EC668(param0);
    v0 = sub_020213D4(param0);

    sub_02021344(param0, param1);
    sub_020213A4(param0, v0);
}

static void ov5_021EC6C0 (MapObject * mapObj, UnkStruct_020216E0 * param1)
{
    int v0 = 1;

    if (sub_020628D8(mapObj, (1 << 9)) == 1) {
        v0 = 0;
    }

    if (sub_020628D8(mapObj, (1 << 12)) == 1) {
        if (sub_020628D8(mapObj, (1 << 13)) == 0) {
            v0 = 0;
        }
    }

    sub_02021320(param1, v0);
}

static void ov5_021EC700 (u32 param0, VecFx32 * param1)
{
    const UnkStruct_ov5_021EC700 * v0 = Unk_ov5_021FB51C;

    while (v0->unk_00 != 0xffff) {
        if (v0->unk_00 == param0) {
            *param1 = v0->unk_04;
            return;
        }

        v0++;
    }

    GF_ASSERT(0);
}

void ov5_021EC734 (MapObject * mapObj)
{
    VecFx32 v0;
    UnkStruct_ov5_021EC760 * v1;

    v1 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EC760)));
    ov5_021EC700(sub_02062924(mapObj), &v0);
    v1->unk_00 = ov5_021F121C(mapObj, &v0);
}

void ov5_021EC75C (MapObject * mapObj)
{
    return;
}

void ov5_021EC760 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC760 * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_00 != NULL) {
        ov5_021DF74C(v0->unk_00);
        v0->unk_00 = NULL;
    }
}

void ov5_021EC778 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC760 * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_00 != NULL) {
        ov5_021DF74C(v0->unk_00);
        v0->unk_00 = NULL;
    }
}

void ov5_021EC790 (MapObject * mapObj)
{
    VecFx32 v0;
    UnkStruct_ov5_021EC760 * v1;

    v1 = sub_02062AF0(mapObj);
    ov5_021EC700(sub_02062924(mapObj), &v0);
    v1->unk_00 = ov5_021F121C(mapObj, &v0);
}

void ov5_021EC7B8 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC760 * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EC760)));
    v0->unk_00 = ov5_021F2438(mapObj);
}

void ov5_021EC7D0 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC760 * v0;

    v0 = sub_02062AF0(mapObj);
    GF_ASSERT(v0->unk_00 == NULL);
    v0->unk_00 = ov5_021F2438(mapObj);
}

void ov5_021EC7F0 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC760 * v0;

    v0 = sub_02062AF0(mapObj);
    ov5_021F247C(v0->unk_00);
    v0->unk_00 = NULL;
}

static void ov5_021EC804 (UnkStruct_020216E0 * param0, void * param1)
{
    UnkStruct_ov5_021EC804 * v0 = param1;
    NNSG3dResMdl * v1 = sub_020213F4(param0);

    NNS_G3dMdlUseMdlAlpha(v1);
    NNS_G3dMdlSetMdlAlphaAll(v1, v0->unk_10);
}

void ov5_021EC824 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC804 * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EC804)));
    v0->unk_02 = -1;

    ov5_021ECF04(mapObj, &v0->unk_04);

    if (v0->unk_04 != NULL) {
        sub_02021444(v0->unk_04, ov5_021EC804, v0);
        sub_02062B68(mapObj);
    }
}

void ov5_021EC858 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC804 * v0;

    v0 = sub_02062AF0(mapObj);
    ov5_021ECFA4(mapObj, &v0->unk_04);
}

void ov5_021EC86C (MapObject * mapObj)
{
    UnkStruct_ov5_021EC804 * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_04 != NULL) {
        ov5_021ED01C(v0->unk_04, &v0->unk_08);
    }

    ov5_021ECFA4(mapObj, &v0->unk_04);
    MapObject_SetStatusFlagOn(mapObj, (1 << 21));
}

void ov5_021EC898 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EB2EC * v1;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v1->unk_04 == NULL) {
        ov5_021ECF04(mapObj, &v1->unk_04);
    }

    if (v1->unk_04 != NULL) {
        ov5_021ED03C(v1->unk_04, &v1->unk_08);
        ov5_021EDEB4(mapObj, v1->unk_04);
        MapObject_SetStatusFlagOff(mapObj, (1 << 21));
        sub_02021444(v1->unk_04, ov5_021EC804, v1);
    }
}

void ov5_021EC8EC (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EC804 * v2;
    UnkStruct_020216E0 * v3;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    v3 = v2->unk_04;

    if (v3 == NULL) {
        return;
    }

    if (v2->unk_10 < 31) {
        v2->unk_10++;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(v3, (FX32_ONE));
    }

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}

void ov5_021EC938 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC938 * v0;

    v0 = sub_02062ACC(mapObj, (sizeof(UnkStruct_ov5_021EC938)));
    ov5_021ECF04(mapObj, &v0->unk_08);

    if (v0->unk_08 != NULL) {
        sub_02062B68(mapObj);
    }
}

void ov5_021EC95C (MapObject * mapObj)
{
    UnkStruct_ov5_021EC938 * v0;

    v0 = sub_02062AF0(mapObj);
    ov5_021ECFA4(mapObj, &v0->unk_08);
}

void ov5_021EC970 (MapObject * mapObj)
{
    UnkStruct_ov5_021EC938 * v0;

    v0 = sub_02062AF0(mapObj);

    if (v0->unk_08 != NULL) {
        ov5_021ED01C(v0->unk_08, &v0->unk_0C);
    }

    ov5_021ECFA4(mapObj, &v0->unk_08);
    MapObject_SetStatusFlagOn(mapObj, (1 << 21));
}

void ov5_021EC9A0 (MapObject * mapObj)
{
    int v0;
    UnkStruct_ov5_021EC938 * v1;

    v1 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    if (v1->unk_08 == NULL) {
        ov5_021ECF04(mapObj, &v1->unk_08);
    }

    if (v1->unk_08 != NULL) {
        ov5_021ED03C(v1->unk_08, &v1->unk_0C);
        ov5_021EDEB4(mapObj, v1->unk_08);
        MapObject_SetStatusFlagOff(mapObj, (1 << 21));
    }
}

void ov5_021EC9E8 (MapObject * mapObj)
{
    int v0, v1;
    UnkStruct_ov5_021EC938 * v2;
    UnkStruct_020216E0 * v3;

    v2 = sub_02062AF0(mapObj);

    if (ov5_021EDD94(mapObj) == 1) {
        return;
    }

    v3 = v2->unk_08;

    if (v3 == NULL) {
        return;
    }

    if (ov5_021ECD38(mapObj) == 0) {
        sub_02021368(v3, (FX32_ONE));
    }

    {
        VecFx32 v4;
        fx32 v5[16] = {
            0x0,
            0x800,
            0x1000,
            0x2000,
            0x4000,
            0x5800,
            0x7000,
            0x8000,
            0x7800,
            0x6800,
            0x5000,
            0x3000,
            0x2000,
            0x1000,
            0x800,
            0x0
        };

        sub_02063078(mapObj, &v4);

        if (v4.y == v2->unk_04) {
            v4.y = v5[v2->unk_00 >> 1];
            v2->unk_00 = (v2->unk_00 + 1) & 0x1f;
            v2->unk_04 = v4.y;

            sub_02063088(mapObj, &v4);
        }
    }

    ov5_021EDEB4(mapObj, v3);
    ov5_021EC6C0(mapObj, v3);
}
