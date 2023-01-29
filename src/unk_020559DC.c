#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_020507E4_decl.h"
#include "struct_decls/struct_party_decl.h"

#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_02055BA8.h"

#include "unk_0201378C.h"
#include "unk_0202440C.h"
#include "unk_02025CB0.h"
#include "unk_0202854C.h"
#include "unk_0202B37C.h"
#include "unk_0202C858.h"
#include "unk_0202D7A8.h"
#include "unk_0202E2CC.h"
#include "unk_0203CC84.h"
#include "unk_0203E880.h"
#include "unk_020507CC.h"
#include "unk_020559DC.h"
#include "unk_02055C50.h"
#include "unk_0206AFE0.h"
#include "unk_0206B9D8.h"
#include "unk_0206C2D0.h"
#include "unk_0206CCB0.h"
#include "unk_02073C2C.h"
#include "party.h"

static void sub_02055AC0(UnkStruct_0203CDB0 * param0, s32 param1);
static void sub_02055B64(UnkStruct_0203CDB0 * param0, s32 param1, const RTCTime * param2);
static void sub_02055A14(UnkStruct_0203CDB0 * param0, UnkStruct_02055BA8 * param1, const RTCDate * param2);
static void inline_020559DC(UnkStruct_0203CDB0 * param0, UnkStruct_02055BA8 * param1, const RTCDate * param2, const RTCTime * param3);

void sub_020559DC (UnkStruct_0203CDB0 * param0)
{
    RTCDate v0;
    RTCTime v1;
    UnkStruct_02055BA8 * v2 = sub_02025CD8(param0->unk_0C);

    if (v2->unk_00 == 0) {
        return;
    }

    sub_0201384C(&v0, &v1);
    sub_02055A14(param0, v2, &v0);

    inline_020559DC(param0, v2, &v0, &v1);
}

static void sub_02055A14 (UnkStruct_0203CDB0 * param0, UnkStruct_02055BA8 * param1, const RTCDate * param2)
{
    s32 v0;

    v0 = RTC_ConvertDateToDay(param2);

    if (v0 < param1->unk_20) {
        param1->unk_20 = v0;
    } else if (v0 > param1->unk_20) {
        sub_02055AC0(param0, v0 - param1->unk_20);
        param1->unk_20 = v0;
    }
}

static void inline_020559DC (UnkStruct_0203CDB0 * param0, UnkStruct_02055BA8 * param1, const RTCDate * param2, const RTCTime * param3)
{
    s64 v0, v1;
    s32 v2;

    v0 = RTC_ConvertDateTimeToSecond(param2, param3);
    v1 = RTC_ConvertDateTimeToSecond(&param1->unk_04, &param1->unk_14);

    if (v0 < v1) {
        param1->unk_04 = *param2;
        param1->unk_14 = *param3;
    } else {
        v2 = (v0 - v1) / 60;

        if (v2 > 0) {
            sub_02025DC8(param1, v2);
            sub_02055B64(param0, v2, param3);

            param1->unk_04 = *param2;
            param1->unk_14 = *param3;
        }
    }
}

static void sub_02055AC0 (UnkStruct_0203CDB0 * param0, s32 param1)
{
    sub_02028658(sub_0203D174(param0), param1);
    sub_0203F1FC(param0);
    sub_0206C2D0(param0->unk_0C, param1);
    sub_0202B3D8(sub_0202B4A0(param0->unk_0C), param1);
    sub_0202D80C(sub_0202D834(param0->unk_0C), sub_0202B428(sub_0202B4A0(param0->unk_0C)));

    {
        Party * v0;

        v0 = GetPartyFromSavedata(param0->unk_0C);
        sub_020777B4(v0, param1);
    }

    {
        UnkStruct_020507E4 * v1 = sub_020507E4(param0->unk_0C);
        u16 v2 = sub_0206B260(v1);

        if (v2 > param1) {
            v2 -= param1;
        } else {
            v2 = 0;
        }

        sub_0206B270(v1, v2);
    }

    {
        sub_0206B2E4(param0->unk_0C, param1);
    }

    {
        sub_0206B334(param0->unk_0C);
    }

    sub_0206B514(param0->unk_0C);
    sub_0203F310(param0);
    sub_0206C008(param0->unk_0C);
    sub_0202C9A0(sub_0202C878(param0->unk_0C));
    sub_0206F2F0(param0->unk_0C);
}

static void sub_02055B64 (UnkStruct_0203CDB0 * param0, s32 param1, const RTCTime * param2)
{
    sub_02055CD4(param0, param1);
    sub_0202D854(param0->unk_0C, param1);
    sub_02028758(param0->unk_0C, param1, sub_02055C40(param0));

    {
        UnkStruct_0202440C * v0 = sub_0202440C(param0->unk_0C);
        sub_0202E324(v0, param1, param2->minute);
    }

    {
        Party * v1;

        v1 = GetPartyFromSavedata(param0->unk_0C);
        sub_02077BD8(v1, param1, param2);
    }
}

int sub_02055BA8 (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return sub_02013974(v0->unk_14.hour);
}

int sub_02055BB8 (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return v0->unk_04.month;
}

int sub_02055BC4 (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return v0->unk_04.day;
}

int sub_02055BD0 (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return v0->unk_04.week;
}

int sub_02055BDC (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return v0->unk_14.hour;
}

int sub_02055BE8 (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return v0->unk_14.minute;
}

void sub_02055BF4 (const UnkStruct_0203CDB0 * param0, RTCDate * param1, RTCTime * param2)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    RTC_ConvertSecondToDateTime(param1, param2, v0->unk_24);
}

void sub_02055C10 (const UnkStruct_0203CDB0 * param0, RTCDate * param1, RTCTime * param2)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    RTC_ConvertSecondToDateTime(param1, param2, v0->unk_2C);
}

void sub_02055C2C (const UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);

    v0->unk_2C = sub_020138EC();
}

BOOL sub_02055C40 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_02055BA8 * v0 = sub_02025CD8(param0->unk_0C);
    return sub_02025DB8(v0);
}
