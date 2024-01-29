#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020507E4_decl.h"

#include "rtc.h"
#include "unk_020507CC.h"
#include "unk_0206A8DC.h"

static void sub_0206A8DC(UnkStruct_020507E4 * param0, u16 param1);
static void sub_0206A8E4(UnkStruct_020507E4 * param0, u16 param1);
static BOOL sub_0206A8EC(UnkStruct_020507E4 * param0, u16 param1);
static BOOL sub_0206A8F4(UnkStruct_020507E4 * param0, int param1, u32 param2);

static void sub_0206A8DC (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_0205081C(param0, param1);
    return;
}

static void sub_0206A8E4 (UnkStruct_020507E4 * param0, u16 param1)
{
    sub_02050844(param0, param1);
    return;
}

static BOOL sub_0206A8EC (UnkStruct_020507E4 * param0, u16 param1)
{
    return sub_020507F0(param0, param1);
}

static BOOL sub_0206A8F4 (UnkStruct_020507E4 * param0, int param1, u32 param2)
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

void sub_0206A92C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 0));
    return;
}

BOOL sub_0206A938 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 0));
}

void sub_0206A944 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 4));
    return;
}

BOOL sub_0206A954 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 4));
}

void sub_0206A964 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 1));
    return;
}

void sub_0206A974 (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 1));
    return;
}

BOOL sub_0206A984 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 1));
}

void sub_0206A994 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 5));
    return;
}

void sub_0206A9A4 (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 5));
    return;
}

BOOL sub_0206A9B4 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 5));
}

void sub_0206A9C4 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 13));
    return;
}

void sub_0206A9D4 (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 13));
    return;
}

BOOL sub_0206A9E4 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 13));
}

void sub_0206A9F4 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 14));
    return;
}

void sub_0206AA04 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 15));
    return;
}

void sub_0206AA14 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 16));
    return;
}

void sub_0206AA20 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 17));
    return;
}

void sub_0206AA30 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 18));
    return;
}

void sub_0206AA40 (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 19));
    return;
}

void sub_0206AA50 (UnkStruct_020507E4 * param0, int param1)
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

BOOL sub_0206AAA8 (UnkStruct_020507E4 * param0, int param1)
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

BOOL sub_0206AB00 (UnkStruct_020507E4 * param0, int param1)
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

u16 sub_0206AB68 (UnkStruct_020507E4 * param0, int param1)
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

void sub_0206AD9C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 6));
    return;
}

void sub_0206ADAC (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 6));
    return;
}

BOOL sub_0206ADBC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 6));
}

BOOL sub_0206ADCC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 24));
}

BOOL sub_0206ADDC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 50));
}

BOOL sub_0206ADEC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 29));
}

BOOL sub_0206ADFC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 30));
}

void sub_0206AE0C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 28));
}

void sub_0206AE1C (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 28));
}

BOOL sub_0206AE2C (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 28));
}

void sub_0206AE3C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 7));
}

void sub_0206AE4C (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 7));
}

BOOL sub_0206AE5C (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 7));
}

void sub_0206AE6C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 25));
}

void sub_0206AE7C (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 25));
}

BOOL sub_0206AE8C (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 25));
}

void sub_0206AE9C (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 52));
}

BOOL sub_0206AEAC (UnkStruct_020507E4 * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 2));
}

void sub_0206AEBC (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 26));
}

void sub_0206AECC (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 26));
}

BOOL sub_0206AEDC (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 26));
}

void sub_0206AEEC (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 27));
}

void sub_0206AEFC (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 27));
}

BOOL sub_0206AF0C (UnkStruct_020507E4 * param0)
{
    return sub_0206A8EC(param0, (2400 + 27));
}

BOOL sub_0206AF1C (UnkStruct_020507E4 * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 54));
}

BOOL sub_0206AF2C (UnkStruct_020507E4 * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 3));
}

BOOL sub_0206AF3C (UnkStruct_020507E4 * param0, int param1, u32 param2)
{
    GF_ASSERT(param2 < 69);
    return sub_0206A8F4(param0, param1, (2400 + 80) + param2);
}

void sub_0206AF5C (UnkStruct_020507E4 * param0)
{
    sub_0206A8DC(param0, (2400 + 44));
}

BOOL sub_0206AF6C (UnkStruct_020507E4 * param0, int param1, int param2)
{
    GF_ASSERT(param2 < 20);
    return sub_0206A8F4(param0, param1, (2400 + 55) + param2);
}

void sub_0206AF90 (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 75));
    return;
}

void sub_0206AFA0 (UnkStruct_020507E4 * param0)
{
    sub_0206A8E4(param0, (2400 + 76));
    return;
}

BOOL sub_0206AFB0 (UnkStruct_020507E4 * param0, int param1, int param2)
{
    return sub_0206A8F4(param0, param1, (2400 + 78) + param2);
}

BOOL sub_0206AFC0 (UnkStruct_020507E4 * param0, int param1)
{
    return sub_0206A8F4(param0, param1, (2400 + 77));
}

BOOL sub_0206AFD0 (UnkStruct_020507E4 * param0)
{
    return sub_0206A8F4(param0, 2, (2400 + 23));
}
