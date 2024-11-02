#include "system_flags.h"

#include <nitro.h>
#include <string.h>

#include "rtc.h"
#include "vars_flags.h"

enum HandleFlagOp {
    HANDLE_FLAG_CLEAR = 0,
    HANDLE_FLAG_SET,
    HANDLE_FLAG_CHECK,
};

static void SetFlag(VarsFlags *varsFlags, u16 flagID);
static void ClearFlag(VarsFlags *varsFlags, u16 flagID);
static BOOL CheckFlag(VarsFlags *varsFlags, u16 flagID);
static BOOL HandleFlag(VarsFlags *varsFlags, enum HandleFlagOp op, u32 flagID);

static void SetFlag(VarsFlags *varsFlags, u16 flagID)
{
    VarsFlags_SetFlag(varsFlags, flagID);
}

static void ClearFlag(VarsFlags *varsFlags, u16 flagID)
{
    VarsFlags_ClearFlag(varsFlags, flagID);
}

static BOOL CheckFlag(VarsFlags *varsFlags, u16 flagID)
{
    return VarsFlags_CheckFlag(varsFlags, flagID);
}

static BOOL HandleFlag(VarsFlags *varsFlags, enum HandleFlagOp op, u32 flagID)
{
    switch (op) {
    case HANDLE_FLAG_SET:
        SetFlag(varsFlags, flagID);
        break;

    case HANDLE_FLAG_CLEAR:
        ClearFlag(varsFlags, flagID);
        break;

    case HANDLE_FLAG_CHECK:
        return CheckFlag(varsFlags, flagID);

    default:
        GF_ASSERT(FALSE);
    }

    return FALSE;
}

void VarsFlags_SetBagAvailable(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 0));
}

BOOL VarsFlags_CheckBagAvailable(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 0));
}

void sub_0206A944(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 4));
    return;
}

BOOL sub_0206A954(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 4));
}

void sub_0206A964(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 1));
    return;
}

void sub_0206A974(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 1));
    return;
}

BOOL sub_0206A984(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 1));
}

void sub_0206A994(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 5));
    return;
}

void sub_0206A9A4(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 5));
    return;
}

BOOL sub_0206A9B4(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 5));
}

void VsSeeker_SetUsedFlag(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 13));
}

void VsSeeker_ClearUsedFlag(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 13));
}

BOOL VsSeeker_GetUsedFlag(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 13));
}

void sub_0206A9F4(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 14));
    return;
}

void sub_0206AA04(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 15));
    return;
}

void sub_0206AA14(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 16));
    return;
}

void sub_0206AA20(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 17));
    return;
}

void sub_0206AA30(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 18));
    return;
}

void sub_0206AA40(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 19));
    return;
}

void sub_0206AA50(VarsFlags *param0, int param1)
{
    switch (param1) {
    case 0:
        SetFlag(param0, (2400 + 8));
        break;
    case 1:
        SetFlag(param0, (2400 + 9));
        break;
    case 2:
        SetFlag(param0, (2400 + 10));
        break;
    case 3:
        SetFlag(param0, (2400 + 11));
        break;
    case 4:
        SetFlag(param0, (2400 + 12));
        break;
    }

    return;
}

BOOL sub_0206AAA8(VarsFlags *param0, int param1)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = CheckFlag(param0, (2400 + 8));
        break;
    case 1:
        v0 = CheckFlag(param0, (2400 + 9));
        break;
    case 2:
        v0 = CheckFlag(param0, (2400 + 10));
        break;
    case 3:
        v0 = CheckFlag(param0, (2400 + 11));
        break;
    case 4:
        v0 = CheckFlag(param0, (2400 + 12));
        break;
    }

    return v0;
}

BOOL VsSeeker_HasUnlockedLevel(VarsFlags *param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 1:
        v0 = CheckFlag(param0, (2400 + 31));
        break;
    case 2:
        v0 = CheckFlag(param0, (2400 + 32));
        break;
    case 3:
        v0 = CheckFlag(param0, (2400 + 33));
        break;
    case 4:
        v0 = CheckFlag(param0, (2400 + 34));
        break;
    case 5:
        v0 = CheckFlag(param0, (2400 + 35));
        break;
    }

    return v0;
}

u16 sub_0206AB68(VarsFlags *param0, int param1)
{
    u16 v0 = 0;

    switch (param1) {
    case 314:
        if (CheckFlag(param0, (2400 + 36)) == 1) {
            v0 = 1070;
        }
        break;
    case 316:
        if (CheckFlag(param0, (2400 + 36)) == 1) {
            v0 = 1065;
        }
        break;
    case 312:
        if (CheckFlag(param0, (2400 + 46)) == 1) {
            v0 = 1070;
        }
        break;
    case 318:
        if (CheckFlag(param0, (2400 + 47)) == 1) {
            v0 = 1070;
        }
        break;
    case 251:
        if (CheckFlag(param0, (2400 + 53)) == 1) {
            v0 = 1069;
        }
        break;
    case 422:
        if (CheckFlag(param0, (2400 + 51)) == 1) {
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
        if (CheckFlag(param0, (2400 + 37)) == 1) {
            if (IsNight() == 0) {
                v0 = 1016;
            } else {
                v0 = 1045;
            }
            break;
        }

        if (param1 == 305) {
            if (CheckFlag(param0, (2400 + 38)) == 1) {
                v0 = 1067;
            }
        }
        break;
    case 72:
    case 73:
    case 74:
    case 75:
        if (CheckFlag(param0, (2400 + 39)) == 1) {
            if (IsNight() == 0) {
                v0 = 1013;
            } else {
                v0 = 1042;
            }
        }
        break;
    case 201:
        if (CheckFlag(param0, (2400 + 40)) == 1) {
            if (IsNight() == 0) {
                v0 = 1023;
            } else {
                v0 = 1052;
            }
        }
        break;
    case 256:
        if (CheckFlag(param0, (2400 + 41)) == 1) {
            if (IsNight() == 0) {
                v0 = 1006;
            } else {
                v0 = 1035;
            }
        }
        break;
    case 399:
        if (CheckFlag(param0, (2400 + 42)) == 1) {
            if (IsNight() == 0) {
                v0 = 1006;
            } else {
                v0 = 1035;
            }
        }
        break;
    case 185:
        if (CheckFlag(param0, (2400 + 43)) == 1) {
            v0 = 1001;
        }
        break;
    }

    return v0;
}

void sub_0206AD9C(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 6));
    return;
}

void CommClub_ResetAvailable(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 6));
    return;
}

BOOL CommClub_IsAvailable(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 6));
}

BOOL ContestHall_IsVisited(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 24));
}

BOOL sub_0206ADDC(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 50));
}

BOOL sub_0206ADEC(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 29));
}

BOOL sub_0206ADFC(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 30));
}

void sub_0206AE0C(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 28));
}

void sub_0206AE1C(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 28));
}

BOOL sub_0206AE2C(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 28));
}

void sub_0206AE3C(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 7));
}

void sub_0206AE4C(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 7));
}

BOOL sub_0206AE5C(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 7));
}

void sub_0206AE6C(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 25));
}

void sub_0206AE7C(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 25));
}

BOOL sub_0206AE8C(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 25));
}

void sub_0206AE9C(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 52));
}

BOOL sub_0206AEAC(VarsFlags *param0, int param1)
{
    return HandleFlag(param0, param1, (2400 + 2));
}

void sub_0206AEBC(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 26));
}

void sub_0206AECC(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 26));
}

BOOL Overworld_IsFlashActive(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 26));
}

void sub_0206AEEC(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 27));
}

void sub_0206AEFC(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 27));
}

BOOL Overworld_IsDefogActive(VarsFlags *param0)
{
    return CheckFlag(param0, (2400 + 27));
}

BOOL sub_0206AF1C(VarsFlags *param0, int param1)
{
    return HandleFlag(param0, param1, (2400 + 54));
}

BOOL sub_0206AF2C(VarsFlags *param0, int param1)
{
    return HandleFlag(param0, param1, (2400 + 3));
}

BOOL sub_0206AF3C(VarsFlags *param0, int param1, u32 param2)
{
    GF_ASSERT(param2 < 69);
    return HandleFlag(param0, param1, (2400 + 80) + param2);
}

void sub_0206AF5C(VarsFlags *param0)
{
    SetFlag(param0, (2400 + 44));
}

BOOL sub_0206AF6C(VarsFlags *param0, int param1, int param2)
{
    GF_ASSERT(param2 < 20);
    return HandleFlag(param0, param1, (2400 + 55) + param2);
}

void sub_0206AF90(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 75));
    return;
}

void sub_0206AFA0(VarsFlags *param0)
{
    ClearFlag(param0, (2400 + 76));
    return;
}

BOOL sub_0206AFB0(VarsFlags *param0, int param1, int param2)
{
    return HandleFlag(param0, param1, (2400 + 78) + param2);
}

BOOL sub_0206AFC0(VarsFlags *param0, int param1)
{
    return HandleFlag(param0, param1, (2400 + 77));
}

BOOL sub_0206AFD0(VarsFlags *param0)
{
    return HandleFlag(param0, 2, (2400 + 23));
}
