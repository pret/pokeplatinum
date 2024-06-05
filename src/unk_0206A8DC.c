#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020507E4_decl.h"

#include "rtc.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"

static void sub_0206A8DC(VarsFlags * param0, u16 param1);
static void sub_0206A8E4(VarsFlags * param0, u16 param1);
static BOOL sub_0206A8EC(VarsFlags * param0, u16 param1);
static BOOL sub_0206A8F4(VarsFlags * param0, int param1, u32 param2);

static void sub_0206A8DC (VarsFlags * param0, u16 param1)
{
    sub_0205081C(param0, param1);
    return;
}

static void sub_0206A8E4 (VarsFlags * param0, u16 param1)
{
    sub_02050844(param0, param1);
    return;
}

static BOOL sub_0206A8EC (VarsFlags * param0, u16 param1)
{
    return VarsFlags_IsFlagOn(param0, param1);
}

static BOOL sub_0206A8F4 (VarsFlags * param0, int param1, u32 param2)
{
    switch (param1) {
    case 1:
        sub_0206A8DC(param0, param2);
        break;
    case 0:
        sub_0206A8E4(param0, param2);
        break;
    case 2:
        return sub_0206A8EC(param0, param2);
    default:
        GF_ASSERT(0);
    }

    return 0;
}

void sub_0206A92C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 0));
    return;
}

BOOL sub_0206A938 (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 0));
}

void sub_0206A944 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 4));
    return;
}

BOOL sub_0206A954 (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 4));
}

void sub_0206A964 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 1));
    return;
}

void sub_0206A974 (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 1));
    return;
}

BOOL sub_0206A984 (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 1));
}

void sub_0206A994 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 5));
    return;
}

void sub_0206A9A4 (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 5));
    return;
}

BOOL sub_0206A9B4 (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 5));
}

void Events_SetVsSeekerUsedFlag (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 13));
    return;
}

void Events_ClearVsSeekerUsedFlag (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 13));
    return;
}

BOOL Events_GetVsSeekerUsedFlag (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 13));
}

void sub_0206A9F4 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 14));
    return;
}

void sub_0206AA04 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 15));
    return;
}

void sub_0206AA14 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 16));
    return;
}

void sub_0206AA20 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 17));
    return;
}

void sub_0206AA30 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 18));
    return;
}

void sub_0206AA40 (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 19));
    return;
}

void sub_0206AA50 (VarsFlags * param0, int param1)
{
    switch (param1) {
    case 0:
        sub_0206A8DC(param0, (2400 + 8));
        break;
    case 1:
        sub_0206A8DC(param0, (2400 + 9));
        break;
    case 2:
        sub_0206A8DC(param0, (2400 + 10));
        break;
    case 3:
        sub_0206A8DC(param0, (2400 + 11));
        break;
    case 4:
        sub_0206A8DC(param0, (2400 + 12));
        break;
    }

    return;
}

BOOL sub_0206AAA8 (VarsFlags * param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = sub_0206A8EC(param0, (2400 + 8));
        break;
    case 1:
        v0 = sub_0206A8EC(param0, (2400 + 9));
        break;
    case 2:
        v0 = sub_0206A8EC(param0, (2400 + 10));
        break;
    case 3:
        v0 = sub_0206A8EC(param0, (2400 + 11));
        break;
    case 4:
        v0 = sub_0206A8EC(param0, (2400 + 12));
        break;
    }

    return v0;
}

BOOL Events_HasUnlockedVsSeekerLevel (VarsFlags * param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 1:
        v0 = sub_0206A8EC(param0, (2400 + 31));
        break;
    case 2:
        v0 = sub_0206A8EC(param0, (2400 + 32));
        break;
    case 3:
        v0 = sub_0206A8EC(param0, (2400 + 33));
        break;
    case 4:
        v0 = sub_0206A8EC(param0, (2400 + 34));
        break;
    case 5:
        v0 = sub_0206A8EC(param0, (2400 + 35));
        break;
    }

    return v0;
}

u16 sub_0206AB68 (VarsFlags * param0, int param1)
{
    u16 v0 = 0;

    switch (param1) {
    case 314:
        if (sub_0206A8EC(param0, (2400 + 36)) == 1) {
            v0 = 1070;
        }
        break;
    case 316:
        if (sub_0206A8EC(param0, (2400 + 36)) == 1) {
            v0 = 1065;
        }
        break;
    case 312:
        if (sub_0206A8EC(param0, (2400 + 46)) == 1) {
            v0 = 1070;
        }
        break;
    case 318:
        if (sub_0206A8EC(param0, (2400 + 47)) == 1) {
            v0 = 1070;
        }
        break;
    case 251:
        if (sub_0206A8EC(param0, (2400 + 53)) == 1) {
            v0 = 1069;
        }
        break;
    case 422:
        if (sub_0206A8EC(param0, (2400 + 51)) == 1) {
            v0 = 1098;
        }
        break;
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
    case 310:
    case 494:
    case 497:
        if (sub_0206A8EC(param0, (2400 + 37)) == 1) {
            if (IsNight() == 0) {
                v0 = 1016;
            } else {
                v0 = 1045;
            }
            break;
        }

        if (param1 == 305) {
            if (sub_0206A8EC(param0, (2400 + 38)) == 1) {
                v0 = 1067;
            }
        }
        break;
    case 72:
    case 73:
    case 74:
    case 75:
        if (sub_0206A8EC(param0, (2400 + 39)) == 1) {
            if (IsNight() == 0) {
                v0 = 1013;
            } else {
                v0 = 1042;
            }
        }
        break;
    case 201:
        if (sub_0206A8EC(param0, (2400 + 40)) == 1) {
            if (IsNight() == 0) {
                v0 = 1023;
            } else {
                v0 = 1052;
            }
        }
        break;
    case 256:
        if (sub_0206A8EC(param0, (2400 + 41)) == 1) {
            if (IsNight() == 0) {
                v0 = 1006;
            } else {
                v0 = 1035;
            }
        }
        break;
    case 399:
        if (sub_0206A8EC(param0, (2400 + 42)) == 1) {
            if (IsNight() == 0) {
                v0 = 1006;
            } else {
                v0 = 1035;
            }
        }
        break;
    case 185:
        if (sub_0206A8EC(param0, (2400 + 43)) == 1) {
            v0 = 1001;
        }
        break;
    }

    return v0;
}

void sub_0206AD9C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 6));
    return;
}

void CommClub_ResetAvailable (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 6));
    return;
}

BOOL CommClub_IsAvailable (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 6));
}

BOOL ContestHall_IsVisited (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 24));
}

BOOL sub_0206ADDC (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 50));
}

BOOL sub_0206ADEC (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 29));
}

BOOL sub_0206ADFC (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 30));
}

void sub_0206AE0C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 28));
}

void sub_0206AE1C (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 28));
}

BOOL sub_0206AE2C (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 28));
}

void sub_0206AE3C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 7));
}

void sub_0206AE4C (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 7));
}

BOOL sub_0206AE5C (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 7));
}

void sub_0206AE6C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 25));
}

void sub_0206AE7C (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 25));
}

BOOL sub_0206AE8C (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 25));
}

void sub_0206AE9C (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 52));
}

BOOL sub_0206AEAC (VarsFlags * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 2));
}

void sub_0206AEBC (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 26));
}

void sub_0206AECC (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 26));
}

BOOL Overworld_IsFlashActive (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 26));
}

void sub_0206AEEC (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 27));
}

void sub_0206AEFC (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 27));
}

BOOL Overworld_IsDefogActive (VarsFlags * param0)
{
    return sub_0206A8EC(param0, (2400 + 27));
}

BOOL sub_0206AF1C (VarsFlags * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 54));
}

BOOL sub_0206AF2C (VarsFlags * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 3));
}

BOOL sub_0206AF3C (VarsFlags * param0, int param1, u32 param2)
{
    GF_ASSERT(param2 < 69);
    return sub_0206A8F4(param0, param1, (2400 + 80) + param2);
}

void sub_0206AF5C (VarsFlags * param0)
{
    sub_0206A8DC(param0, (2400 + 44));
}

BOOL sub_0206AF6C (VarsFlags * param0, int param1, int param2)
{
    GF_ASSERT(param2 < 20);
    return sub_0206A8F4(param0, param1, (2400 + 55) + param2);
}

void sub_0206AF90 (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 75));
    return;
}

void sub_0206AFA0 (VarsFlags * param0)
{
    sub_0206A8E4(param0, (2400 + 76));
    return;
}

BOOL sub_0206AFB0 (VarsFlags * param0, int param1, int param2)
{
    return sub_0206A8F4(param0, param1, (2400 + 78) + param2);
}

BOOL sub_0206AFC0 (VarsFlags * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 77));
}

BOOL sub_0206AFD0 (VarsFlags * param0)
{
    return sub_0206A8F4(param0, 2, (2400 + 23));
}
