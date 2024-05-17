#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/struct_ov5_021ECD10.h"

#include "unk_02054D00.h"
#include "unk_0205DAC8.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_020673B8.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021F134C.h"
#include "overlay005/ov5_021F17B8.h"
#include "overlay005/ov5_021F1CC8.h"
#include "overlay005/ov5_021F2A7C.h"
#include "overlay005/ov5_021F2BD0.h"
#include "overlay005/ov5_021F2D20.h"
#include "overlay005/ov5_021F3284.h"
#include "overlay005/ov5_021F348C.h"
#include "overlay005/ov5_021F37A8.h"
#include "overlay005/ov5_021F3A50.h"

static int sub_02063478(const MapObject * param0);
static void sub_020634DC(MapObject * param0);
static void sub_020634F4(MapObject * param0);
static void sub_02063518(MapObject * param0);
static void sub_0206353C(MapObject * param0);
static void sub_02063574(MapObject * param0);
static void sub_020635AC(MapObject * param0);
static void sub_0206363C(MapObject * param0);
static void sub_020636F0(MapObject * param0);
static void sub_0206375C(MapObject * param0);
static void sub_020637D4(MapObject * param0);
static void sub_02063864(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063964(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_0206397C(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063994(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063A30(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063A64(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063A70(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063A78(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063B20(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063BB4(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C00(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C18(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C30(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C48(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C60(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063C94(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063CC8(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063CFC(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063D30(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063DA8(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063DDC(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);
static void sub_02063E14(MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3);

static BOOL(*const Unk_020EE76C[4])(u8);
static BOOL(*const Unk_020EE77C[4])(u8);

void sub_02063400 (MapObject * param0)
{
    sub_02062B00(param0);
    sub_020673B8(param0);
}

void sub_02063410 (MapObject * param0)
{
    if (sub_02062CBC(param0, (1 << 1))) {
        return;
    }

    sub_020634DC(param0);
    sub_020634F4(param0);
    sub_02063518(param0);

    if (sub_020628D0(param0, (1 << 4))) {
        sub_020658B4(param0);
    } else if (sub_02062DE8(param0) == 0) {
        if (sub_02063478(param0) == 1) {
            if (sub_020673C0(param0) == 0) {
                sub_02062B14(param0);
            }
        }
    }

    sub_0206353C(param0);
    sub_02063574(param0);
}

static int sub_02063478 (const MapObject * param0)
{
    if (sub_02062D1C(param0) == 1) {
        return 1;
    }

    if (sub_020628D0(param0, ((1 << 12) | (1 << 11))) == 0) {
        return 1;
    } else if (sub_02062948(param0) == 0x32) {
        return 1;
    }

    {
        u32 v0 = sub_020628B8(param0);

        if ((v0 & (1 << 12)) && ((v0 & (1 << 23)) == 0)) {
            return 0;
        }

        if ((v0 & (1 << 11)) && (sub_02062FDC(param0) == 0)) {
            return 0;
        }
    }

    return 1;
}

static void sub_020634DC (MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 12))) {
        sub_020642F8(param0);
    }
}

static void sub_020634F4 (MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 11))) {
        if (sub_02064390(param0) == 1) {
            sub_02062D28(param0);
        }
    }
}

static void sub_02063518 (MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 2))) {
        sub_020635AC(param0);
    }

    MapObject_SetFlagOff(param0, (1 << 2) | (1 << 16));
}

static void sub_0206353C (MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 16))) {
        sub_020636F0(param0);
    } else if (sub_020628D0(param0, (1 << 2))) {
        sub_0206363C(param0);
    }

    MapObject_SetFlagOff(param0, (1 << 2) | (1 << 16));
}

static void sub_02063574 (MapObject * param0)
{
    if (sub_020628D0(param0, (1 << 17))) {
        sub_020637D4(param0);
    } else if (sub_020628D0(param0, (1 << 3))) {
        sub_0206375C(param0);
    }

    MapObject_SetFlagOff(param0, (1 << 3) | (1 << 17));
}

static void sub_020635AC (MapObject * param0)
{
    sub_02064390(param0);

    if (sub_02062DFC(param0) == 1) {
        u8 v0 = sub_02062BE8(param0);
        u8 v1 = sub_02062BF8(param0);
        const UnkStruct_ov5_021ECD10 * v2 = ov5_021ECD04(param0);

        sub_02063DDC(param0, v0, v1, v2);
        sub_02063964(param0, v0, v1, v2);
        sub_02063A30(param0, v0, v1, v2);
        sub_02063A70(param0, v0, v1, v2);
        sub_02063864(param0, v0, v1, v2);
        sub_02063C00(param0, v0, v1, v2);
        sub_02063C30(param0, v0, v1, v2);
        sub_02063D30(param0, v0, v1, v2);
    }
}

static void sub_0206363C (MapObject * param0)
{
    sub_02064390(param0);

    if (sub_02062DFC(param0) == 1) {
        u8 v0 = sub_02062BE8(param0);
        u8 v1 = sub_02062BF8(param0);
        const UnkStruct_ov5_021ECD10 * v2 = ov5_021ECD04(param0);

        sub_02063DDC(param0, v0, v1, v2);
        sub_0206397C(param0, v0, v1, v2);
        sub_02063994(param0, v0, v1, v2);
        sub_02063A30(param0, v0, v1, v2);
        sub_02063A78(param0, v0, v1, v2);
        sub_02063C18(param0, v0, v1, v2);
        sub_02063C48(param0, v0, v1, v2);
        sub_02063C60(param0, v0, v1, v2);
        sub_02063CC8(param0, v0, v1, v2);
        sub_02063D30(param0, v0, v1, v2);

        sub_02063E14(param0, v0, v1, v2);
    }
}

static void sub_020636F0 (MapObject * param0)
{
    sub_02064390(param0);

    if (sub_02062DFC(param0) == 1) {
        u8 v0 = sub_02062BE8(param0);
        u8 v1 = sub_02062BF8(param0);
        const UnkStruct_ov5_021ECD10 * v2 = ov5_021ECD04(param0);

        sub_02063DDC(param0, v0, v1, v2);
        sub_02063A78(param0, v0, v1, v2);
        sub_02063D30(param0, v0, v1, v2);
        sub_02063A64(param0, v0, v1, v2);
        sub_02063E14(param0, v0, v1, v2);
    }
}

static void sub_0206375C (MapObject * param0)
{
    sub_02064390(param0);

    if (sub_02062DFC(param0) == 1) {
        u8 v0 = sub_02062BE8(param0);
        u8 v1 = sub_02062BF8(param0);
        const UnkStruct_ov5_021ECD10 * v2 = ov5_021ECD04(param0);

        sub_02063864(param0, v0, v1, v2);
        sub_02063C94(param0, v0, v1, v2);
        sub_02063CFC(param0, v0, v1, v2);
        sub_02063A30(param0, v0, v1, v2);
        sub_02063DA8(param0, v0, v1, v2);
        sub_02063B20(param0, v0, v1, v2);
    }
}

static void sub_020637D4 (MapObject * param0)
{
    sub_02064390(param0);

    if (sub_02062DFC(param0) == 1) {
        u8 v0 = sub_02062BE8(param0);
        u8 v1 = sub_02062BF8(param0);
        const UnkStruct_ov5_021ECD10 * v2 = ov5_021ECD04(param0);

        sub_02063864(param0, v0, v1, v2);
        sub_02063C94(param0, v0, v1, v2);
        sub_02063CFC(param0, v0, v1, v2);
        sub_02063A30(param0, v0, v1, v2);
        sub_02063DA8(param0, v0, v1, v2);
        sub_02063B20(param0, v0, v1, v2);
        sub_0206397C(param0, v0, v1, v2);
        sub_02063BB4(param0, v0, v1, v2);
    }
}

static void sub_02063864 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_02062EFC(param0) == 0) {
        if ((sub_0205DCF0(param1) == 1) || (sub_0205DD0C(param1) == 1)) {
            VecFx32 v0 = {0, ((FX32_ONE * -14)), 0};

            sub_020630CC(param0, &v0);
            return;
        }

        if ((sub_0205DCE0(param1) == 1) || (sub_0205DCFC(param1) == 1)) {
            VecFx32 v1 = {0, ((FX32_ONE * -12)), 0};

            sub_020630CC(param0, &v1);
            return;
        }

        if (sub_0205DD5C(param1) == 1) {
            VecFx32 v2 = {0, ((FX32_ONE * -16)), 0};

            sub_020630CC(param0, &v2);
            return;
        }

        if (sub_0205DD50(param1) == 1) {
            VecFx32 v3 = {0, ((FX32_ONE * -14)), 0};

            sub_020630CC(param0, &v3);
            return;
        }

        if (sub_0205DD44(param1) == 1) {
            VecFx32 v4 = {0, ((FX32_ONE * -12)), 0};

            sub_020630CC(param0, &v4);
            return;
        }
    }

    {
        VecFx32 v5 = {0, 0, 0};
        sub_020630CC(param0, &v5);
    }
}

static void sub_02063964 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DAC8(param1) == 1) {
        ov5_021F2EA4(param0, 0);
    }
}

static void sub_0206397C (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DAC8(param1) == 1) {
        ov5_021F2EA4(param0, 1);
    }
}

static void sub_02063994 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (param3->unk_04_6 == 0) {
        return;
    }

    if (sub_0205DFAC(param2) == 1) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1EBC(param0);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1EC8(param0);
        }
    }

    if (sub_020640A0(param0, param2) == 1) {
        if (param3->unk_04_6 == 1) {
            ov5_021F1E8C(param0);
        } else if (param3->unk_04_6 == 2) {
            ov5_021F1E98(param0);
        }
        return;
    }

    if ((sub_0205DD50(param2) == 1) || (sub_0205DD5C(param2) == 1) || sub_0205DD44(param2)) {
        ov5_021F1EB0(param0);
        return;
    }

    if (sub_02064108(param0, param2) == 1) {
        ov5_021F1EA4(param0);
        return;
    }
}

static void sub_02063A30 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DB78(param1) == 1) {
        if (sub_02062EC8(param0) == 0) {
            ov5_021F331C(param0, 1);
            sub_02062EAC(param0, 1);
        }
    } else {
        sub_02062EAC(param0, 0);
    }
}

static void sub_02063A64 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    sub_02062EAC(param0, 0);
}

static void sub_02063A70 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    sub_02063A78(param0, param1, param2, param3);
}

static void sub_02063A78 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    {
        const MapObjectManager * v0 = sub_02062A40(param0);

        if (sub_02062CE4(v0) == 0) {
            return;
        }
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if ((sub_0205DAC8(param1) == 1) || (sub_0205DAD4(param1) == 1) || (sub_0206406C(param0, param1) == 1) || (sub_0205DE5C(param1) == 1) || (sub_0205DB78(param1) == 1) || (sub_020640D4(param0, param1) == 1) || (sub_0205DCE0(param1) == 1) || (sub_0205DCFC(param1) == 1) || sub_0205DF9C(param1)) {
        MapObject_SetFlagOn(param0, (1 << 20));
    } else {
        if (sub_020628D0(param0, (1 << 15)) == 0) {
            ov5_021F1570(param0);
            MapObject_SetFlagOn(param0, (1 << 15));
        }
    }
}

static void sub_02063B20 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    {
        const MapObjectManager * v0 = sub_02062A40(param0);

        if (sub_02062CE4(v0) == 0) {
            return;
        }
    }

    if (param3->unk_04_4 == 0) {
        return;
    }

    if ((sub_0205DAC8(param1) == 1) || (sub_0205DAD4(param1) == 1) || (sub_0206406C(param0, param1) == 1) || (sub_0205DE5C(param1) == 1) || (sub_0205DB78(param1) == 1) || (sub_020640D4(param0, param1) == 1) || (sub_0205DCE0(param1) == 1) || (sub_0205DCFC(param1) == 1) || sub_0205DF9C(param1)) {
        MapObject_SetFlagOn(param0, (1 << 20));
    } else {
        MapObject_SetFlagOff(param0, (1 << 20));
    }
}

static void sub_02063BB4 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if ((sub_0206406C(param0, param1) == 1) || (sub_0205DB78(param1) == 1) || (sub_0205DC5C(param1) == 1) || (sub_0205DCE0(param1) == 1) || (sub_0205DCFC(param1) == 1) || (sub_020640D4(param0, param1) == 1)) {
        return;
    }

    ov5_021F3638(param0);
}

static void sub_02063C00 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DAD4(param1) == 1) {
        ov5_021F3844(param0, 0);
    }
}

static void sub_02063C18 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DAD4(param1) == 1) {
        ov5_021F3844(param0, 1);
    }
}

static void sub_02063C30 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DCFC(param1) == 1) {
        ov5_021F3AEC(param0, 0);
    }
}

static void sub_02063C48 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DCFC(param1) == 1) {
        ov5_021F3AEC(param0, 1);
    }
}

static void sub_02063C60 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DE5C(param2) == 1) {
        ov5_021F2AE4(param0, sub_02063008(param0), sub_02063010(param0), sub_02063018(param0));
    }
}

static void sub_02063C94 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DE5C(param1) == 1) {
        ov5_021F2AE4(param0, sub_02063020(param0), sub_02063030(param0), sub_02063040(param0));
    }
}

static void sub_02063CC8 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DCE0(param2) == 1) {
        ov5_021F2C38(param0, sub_02063008(param0), sub_02063010(param0), sub_02063018(param0));
    }
}

static void sub_02063CFC (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DCE0(param1) == 1) {
        ov5_021F2C38(param0, sub_02063020(param0), sub_02063030(param0), sub_02063040(param0));
    }
}

static void sub_02063D30 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (param3->unk_04_10 == 0) {
        return;
    }

    {
        if (sub_02062F64(param0) == 0) {
            u8 v0 = sub_0205DF98();

            if (sub_0205DE90(param1) == 1) {
                v0 = param1;
            } else {
                u8 v1 = sub_02064238(param0, 1);

                if (sub_0205DE90(v1) == 1) {
                    v0 = v1;
                }
            }

            if (v0 != sub_0205DF98()) {
                int v2;

                sub_02062F48(param0, 1);

                if (sub_0205DF9C(v0) == 1) {
                    v2 = 2;
                } else if (sub_0205DE5C(v0) == 1) {
                    v2 = 0;
                } else {
                    v2 = 1;
                }

                ov5_021F1800(param0, v2);
            }
        }
    }
}

static void sub_02063DA8 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if ((param3->unk_04_10 == 0) || (sub_02062F64(param0) == 0)) {
        return;
    }

    {
        u8 v0 = sub_02064238(param0, 1);

        if (sub_0205DE90(v0) == 0) {
            sub_02062F48(param0, 0);
        }
    }
}

static void sub_02063DDC (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    if (sub_0205DEF0(param1) == 1) {
        sub_02062F14(param0, 1);
    } else if (sub_02062F30(param0) == 1) {
        if (sub_0205DEFC(param1) == 0) {
            sub_02062F14(param0, 0);
        }
    }
}

static void sub_02063E14 (MapObject * param0, u8 param1, u8 param2, const UnkStruct_ov5_021ECD10 * param3)
{
    return;
}

u32 sub_02063E18 (const MapObject * param0, const VecFx32 * param1, int param2, int param3, int param4, int param5)
{
    u32 v0;

    v0 = 0;

    if (sub_02063FAC(param0, param2, param3, param4) == 1) {
        v0 |= (1 << 0);
    }

    {
        s8 v1;
        FieldSystem * v2 = sub_02062C00(param0);

        if (sub_02055024(v2, param1, param2, param4, &v1) == 1) {
            v0 |= (1 << 1);

            if (v1 != 0) {
                v0 |= (1 << 3);
            }
        }
    }

    if (sub_02064004(param0, param2, param4, param5) == 1) {
        v0 |= (1 << 1);
    }

    if (sub_02063F00(param0, param2, param3, param4) == 1) {
        v0 |= (1 << 2);
    }

    return v0;
}

u32 sub_02063E94 (const MapObject * param0, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;

    sub_02063050(param0, &v0);
    return sub_02063E18(param0, &v0, param1, param2, param3, param4);
}

u32 sub_02063EBC (const MapObject * param0, int param1)
{
    int v0, v1, v2;

    v0 = sub_02063020(param0) + sub_0206419C(param1);
    v1 = sub_02063030(param0);
    v2 = sub_02063040(param0) + sub_020641A8(param1);

    return sub_02063E94(param0, v0, v1, v2, param1);
}

int sub_02063F00 (const MapObject * param0, int param1, int param2, int param3)
{
    int v0, v1, v2;
    const MapObjectManager * v3;
    const MapObject * v4;

    v3 = sub_02062A40(param0);
    v4 = sub_02062868(v3);
    v0 = sub_02062824(v3);

    do {
        if (v4 != param0) {
            if (sub_020628D0(v4, (1 << 0))) {
                if (sub_020628D0(v4, (1 << 18)) == 0) {
                    v1 = sub_02063020(v4);
                    v2 = sub_02063040(v4);

                    if ((v1 == param1) && (v2 == param3)) {
                        int v5 = sub_02063030(v4);
                        int v6 = v5 - param2;

                        if (v6 < 0) {
                            v6 = -v6;
                        }

                        if (v6 < (1 * 2)) {
                            return 1;
                        }
                    }

                    v1 = sub_02063008(v4);
                    v2 = sub_02063018(v4);

                    if ((v1 == param1) && (v2 == param3)) {
                        int v7 = sub_02063030(v4);
                        int v8 = v7 - param2;

                        if (v8 < 0) {
                            v8 = -v8;
                        }

                        if (v8 < (1 * 2)) {
                            return 1;
                        }
                    }
                }
            }
        }

        sub_02062880(&v4);
        v0--;
    } while (v0);

    return 0;
}

int sub_02063FAC (const MapObject * param0, int param1, int param2, int param3)
{
    int v0, v1, v2, v3;

    v0 = sub_02062FF0(param0);
    v1 = sub_02062A00(param0);

    if (v1 != -1) {
        v2 = v0 - v1;
        v3 = v0 + v1;

        if ((v2 > param1) || (v3 < param1)) {
            return 1;
        }
    }

    v0 = sub_02063000(param0);
    v1 = sub_02062A08(param0);

    if (v1 != -1) {
        v2 = v0 - v1;
        v3 = v0 + v1;

        if ((v2 > param3) || (v3 < param3)) {
            return 1;
        }
    }

    return 0;
}

int sub_02064004 (const MapObject * param0, int param1, int param2, int param3)
{
    if (sub_02062FDC(param0) == 0) {
        FieldSystem * v0 = sub_02062C00(param0);
        u8 v1 = sub_02062BE8(param0);
        u8 v2 = sub_02054F94(v0, param1, param2);

        if (v2 == sub_0205DF98()) {
            return 1;
        }

        if ((Unk_020EE76C[param3](v1) == 1) || (Unk_020EE77C[param3](v2) == 1)) {
            return 1;
        }
    }

    return 0;
}

static BOOL(*const Unk_020EE76C[4])(u8) = {
    sub_0205DDCC,
    sub_0205DDF0,
    sub_0205DE14,
    sub_0205DE38
};

static BOOL(*const Unk_020EE77C[4])(u8) = {
    sub_0205DDF0,
    sub_0205DDCC,
    sub_0205DE38,
    sub_0205DE14
};

int sub_0206406C (MapObject * param0, u32 param1)
{
    if (sub_0205DF10(param1)) {
        if (sub_02062F30(param0) == 0) {
            return 1;
        }
    } else if (sub_0205DB58(param1)) {
        return 1;
    }

    return 0;
}

int sub_020640A0 (MapObject * param0, u32 param1)
{
    if (sub_0205DF34(param1)) {
        if (sub_02062F30(param0) == 0) {
            return 1;
        }
    } else if (sub_0205DB6C(param1)) {
        return 1;
    }

    return 0;
}

int sub_020640D4 (MapObject * param0, u32 param1)
{
    if (sub_0205DF58(param1)) {
        if (sub_02062F30(param0) == 0) {
            return 1;
        }
    } else if (sub_0205DD18(param1)) {
        return 1;
    }

    return 0;
}

int sub_02064108 (MapObject * param0, u32 param1)
{
    if (sub_0205DF58(param1)) {
        if (sub_02062F30(param0) == 0) {
            return 1;
        }
    } else if (sub_0205DD38(param1)) {
        return 1;
    }

    return 0;
}

int sub_0206413C (MapObject * param0, u32 param1)
{
    if (sub_02062F30(param0) == 1) {
        if (sub_0205DEFC(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

int sub_0206415C (MapObject * param0, u32 param1)
{
    if (sub_02062F30(param0) == 1) {
        if (sub_0205DF64(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

int sub_0206417C (MapObject * param0, u32 param1)
{
    if (sub_02062F30(param0) == 1) {
        if (sub_0205DF78(param1) == 1) {
            return 1;
        }
    }

    return 0;
}

static const int Unk_020EE75C[] = {
    0x0,
    0x0,
    -1,
    0x1
};

static const int DATA_GPosY_Dir4AddTbl[] = {
    0,
    0,
    0,
    0
};

static const int Unk_020EE78C[] = {
    -1,
    0x1,
    0x0,
    0x0
};

int sub_0206419C (int param0)
{
    return Unk_020EE75C[param0];
}

int sub_020641A8 (int param0)
{
    return Unk_020EE78C[param0];
}

void sub_020641B4 (MapObject * param0, int param1)
{
    sub_0206300C(param0, sub_02063020(param0));
    sub_02063014(param0, sub_02063030(param0));
    sub_0206301C(param0, sub_02063040(param0));

    sub_02063028(param0, sub_0206419C(param1));
    sub_02063038(param0, 0);
    sub_02063048(param0, sub_020641A8(param1));
}

void sub_02064208 (MapObject * param0)
{
    sub_0206300C(param0, sub_02063020(param0));
    sub_02063014(param0, sub_02063030(param0));
    sub_0206301C(param0, sub_02063040(param0));
}

u32 sub_02064238 (MapObject * param0, int param1)
{
    int v0 = sub_02063020(param0) + sub_0206419C(param1);
    int v1 = sub_02063040(param0) + sub_020641A8(param1);
    FieldSystem * v2 = sub_02062C00(param0);
    u8 v3 = sub_02054F94(v2, v0, v1);

    return v3;
}

void sub_02064270 (MapObject * param0, const VecFx32 * param1)
{
    VecFx32 v0;

    sub_02063050(param0, &v0);

    v0.x += param1->x;
    v0.y += param1->y;
    v0.z += param1->z;

    sub_02063060(param0, &v0);
}

void sub_020642A4 (MapObject * param0, int param1, fx32 param2)
{
    VecFx32 v0;

    sub_02063050(param0, &v0);

    switch (param1) {
    case 0:
        v0.z -= param2;
        break;
    case 1:
        v0.z += param2;
        break;
    case 2:
        v0.x -= param2;
        break;
    case 3:
        v0.x += param2;
        break;
    }

    sub_02063060(param0, &v0);
}

int sub_020642F8 (MapObject * param0)
{
    VecFx32 v0, v1;

    sub_02063050(param0, &v0);
    v1 = v0;

    if (sub_02062E44(param0) == 1) {
        MapObject_SetFlagOff(param0, (1 << 12));
        return 0;
    }

    {
        int v2 = sub_02062FAC(param0);
        FieldSystem * v3 = sub_02062C00(param0);
        int v4 = sub_020644D0(v3, &v1, v2);

        if (v4 == 1) {
            v0.y = v1.y;
            sub_02063060(param0, &v0);
            sub_02063014(param0, sub_02063030(param0));
            sub_02063034(param0, (((v0.y) >> 3) / FX32_ONE));
            MapObject_SetFlagOff(param0, (1 << 12));
        } else {
            MapObject_SetFlagOn(param0, (1 << 12));
        }

        return v4;
    }
}

int sub_02064390 (MapObject * param0)
{
    u8 v0 = sub_0205DF98();
    u8 v1 = v0;

    if (sub_02062FDC(param0) == 0) {
        int v2 = sub_02063008(param0);
        int v3 = sub_02063018(param0);
        FieldSystem * v4 = sub_02062C00(param0);

        v0 = sub_02054F94(v4, v2, v3);
        v2 = sub_02063020(param0);
        v3 = sub_02063040(param0);
        v1 = sub_02054F94(v4, v2, v3);
    }

    sub_02062BF0(param0, v0);
    sub_02062BE0(param0, v1);

    if (sub_0205DF8C(v1) == 1) {
        MapObject_SetFlagOn(param0, (1 << 11));
        return 0;
    }

    MapObject_SetFlagOff(param0, (1 << 11));
    return 1;
}

void sub_02064418 (int param0, VecFx32 * param1, fx32 param2)
{
    switch (param0) {
    case 0:
        param1->z -= param2;
        break;
    case 1:
        param1->z += param2;
        break;
    case 2:
        param1->x -= param2;
        break;
    case 3:
        param1->x += param2;
        break;
    }
}

void sub_02064450 (int param0, int param1, VecFx32 * param2)
{
    param2->x = (((param0) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
    param2->z = (((param1) << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1);
}

void sub_02064464 (MapObject * param0)
{
    int v0 = sub_02062948(param0);

    if ((v0 == 0x33) || (v0 == 0x34) || (v0 == 0x35) || (v0 == 0x36)) {
        sub_02062B14(param0);
    }
}

static const int Unk_020EE79C[] = {
    0x1,
    0x0,
    0x3,
    0x2
};

int sub_0206447C (int param0)
{
    return Unk_020EE79C[param0];
}

int sub_02064488 (int param0, int param1, int param2, int param3)
{
    if (param0 > param2) {
        return(2);
    }

    if (param0 < param2) {
        return(3);
    }

    if (param1 > param3) {
        return(0);
    }

    return(1);
}

int sub_020644A4 (FieldSystem * param0, VecFx32 * param1)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(param0, param1->y, param1->x, param1->z, &v1);

    if (v1 == 0) {
        return 0;
    }

    param1->y = v0;
    return 1;
}

int sub_020644D0 (FieldSystem * param0, VecFx32 * param1, int param2)
{
    fx32 v0;
    u8 v1;

    v0 = sub_02054FBC(param0, param1->y, param1->x, param1->z, &v1);

    if (v1 == 0) {
        return 0;
    }

    if ((v1 == 2) && (param2 == 0)) {
        return 0;
    }

    param1->y = v0;
    return 1;
}
