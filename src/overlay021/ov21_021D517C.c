#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0205AA50.h"

#include "unk_02018340.h"
#include "overlay021/ov21_021D517C.h"

static void ov21_021D5248(UnkStruct_0205AA50 * param0, u8 * param1, u16 param2, u16 param3, int param4, int param5, u8 param6, u8 param7);
static void ov21_021D52A0(u8 * param0, int param1, int param2, int param3, int param4);
static int ov21_021D52D4(u8 * param0, int param1, int param2, int param3, int param4);
static void ov21_021D5304(u8 * param0, int * param1, int param2, int param3, int param4, int param5);
static int ov21_021D5424(int param0);

void ov21_021D517C (UnkStruct_0205AA50 * param0, u8 * param1, u16 param2, u16 param3, u8 param4, u8 * param5, u8 param6, u8 param7, u16 param8, u16 param9)
{
    int v0, v1;

    for (v0 = 0; v0 < param7; v0++) {
        for (v1 = 0; v1 < param6; v1++) {
            ov21_021D5248(param0, param1, param2, param3, param4, param5[(v0 * param7) + v1], param8 + (v1 * param4), param9 + (v0 * param4));
        }
    }
}

void ov21_021D5214 (u8 * param0, u8 param1, u8 param2)
{
    int v0, v1;

    for (v0 = 0; v0 < param2; v0++) {
        for (v1 = 0; v1 < param1; v1++) {
            ov21_021D52A0(param0, v1, v0, param1, param2);
        }
    }
}

static void ov21_021D5248 (UnkStruct_0205AA50 * param0, u8 * param1, u16 param2, u16 param3, int param4, int param5, u8 param6, u8 param7)
{
    int v0;
    int v1;

    if (param5 != 0) {
        v0 = param5 * param4;
        v1 = v0 / param2;
        v0 = v0 % param2;

        sub_0201ADDC(param0, param1, v0, v1, param2, param3, param6, param7, param4, param4);
    }
}

static void ov21_021D52A0 (u8 * param0, int param1, int param2, int param3, int param4)
{
    int v0;
    int v1;

    if (param0[(param2 * param3) + param1] == 0) {
        ov21_021D5304(param0, &v0, param1, param2, param3, param4);

        v1 = ov21_021D5424(v0);
        param0[(param2 * param3) + param1] = v1;
    }
}

static int ov21_021D52D4 (u8 * param0, int param1, int param2, int param3, int param4)
{
    if ((param1 < 0) || (param1 >= param3)) {
        return -1;
    }

    if ((param2 < 0) || (param2 >= param4)) {
        return -1;
    }

    return param0[(param2 * param3) + param1];
}

static void ov21_021D5304 (u8 * param0, int * param1, int param2, int param3, int param4, int param5)
{
    int v0;

    *param1 = 0;

    if (ov21_021D52D4(param0, param2, param3 - 1, param4, param5) == 1) {
        *param1 |= (1 << 0);
    }

    if (ov21_021D52D4(param0, param2, param3 + 1, param4, param5) == 1) {
        *param1 |= (1 << 1);
    }

    if (ov21_021D52D4(param0, param2 - 1, param3, param4, param5) == 1) {
        *param1 |= (1 << 2);
    }

    if (ov21_021D52D4(param0, param2 + 1, param3, param4, param5) == 1) {
        *param1 |= (1 << 3);
    }

    if ((((*param1) & (1 << 0)) == 0) && (((*param1) & (1 << 2)) == 0)) {
        if (ov21_021D52D4(param0, param2 - 1, param3 - 1, param4, param5) == 1) {
            *param1 |= (1 << 4);
        }
    }

    if ((((*param1) & (1 << 0)) == 0) && (((*param1) & (1 << 3)) == 0)) {
        if (ov21_021D52D4(param0, param2 + 1, param3 - 1, param4, param5) == 1) {
            *param1 |= (1 << 5);
        }
    }

    if ((((*param1) & (1 << 1)) == 0) && (((*param1) & (1 << 2)) == 0)) {
        if (ov21_021D52D4(param0, param2 - 1, param3 + 1, param4, param5) == 1) {
            *param1 |= (1 << 6);
        }
    }

    if ((((*param1) & (1 << 1)) == 0) && (((*param1) & (1 << 3)) == 0)) {
        if (ov21_021D52D4(param0, param2 + 1, param3 + 1, param4, param5) == 1) {
            *param1 |= (1 << 7);
        }
    }
}

static int ov21_021D5424 (int param0)
{
    int v0;

    switch (param0) {
    case 0:
        v0 = 0;
        break;
    case ((1 << 0)):
        v0 = 2;
        break;
    case ((1 << 1)):
        v0 = 3;
        break;
    case ((1 << 2)):
        v0 = 4;
        break;
    case ((1 << 3)):
        v0 = 5;
        break;
    case ((1 << 0) | (1 << 1)):
        v0 = 6;
        break;
    case ((1 << 0) | (1 << 2)):
        v0 = 7;
        break;
    case ((1 << 0) | (1 << 3)):
        v0 = 8;
        break;
    case ((1 << 1) | (1 << 2)):
        v0 = 9;
        break;
    case ((1 << 1) | (1 << 3)):
        v0 = 10;
        break;
    case ((1 << 2) | (1 << 3)):
        v0 = 11;
        break;
    case ((1 << 0) | (1 << 1) | (1 << 2)):
        v0 = 12;
        break;
    case ((1 << 0) | (1 << 1) | (1 << 3)):
        v0 = 13;
        break;
    case ((1 << 0) | (1 << 2) | (1 << 3)):
        v0 = 14;
        break;
    case ((1 << 1) | (1 << 2) | (1 << 3)):
        v0 = 15;
        break;
    case ((1 << 0) | (1 << 1) | (1 << 2) | (1 << 3)):
        v0 = 16;
        break;
    case ((1 << 4)):
        v0 = 17;
        break;
    case ((1 << 5)):
        v0 = 18;
        break;
    case ((1 << 6)):
        v0 = 19;
        break;
    case ((1 << 7)):
        v0 = 20;
        break;
    case ((1 << 4) | (1 << 5)):
        v0 = 21;
        break;
    case ((1 << 4) | (1 << 6)):
        v0 = 22;
        break;
    case ((1 << 4) | (1 << 7)):
        v0 = 23;
        break;
    case ((1 << 5) | (1 << 6)):
        v0 = 24;
        break;
    case ((1 << 5) | (1 << 7)):
        v0 = 25;
        break;
    case ((1 << 6) | (1 << 7)):
        v0 = 26;
        break;
    case ((1 << 4) | (1 << 5) | (1 << 6)):
        v0 = 27;
        break;
    case ((1 << 4) | (1 << 5) | (1 << 7)):
        v0 = 28;
        break;
    case ((1 << 4) | (1 << 6) | (1 << 7)):
        v0 = 29;
        break;
    case ((1 << 5) | (1 << 6) | (1 << 7)):
        v0 = 30;
        break;
    case ((1 << 4) | (1 << 5) | (1 << 6) | (1 << 7)):
        v0 = 31;
        break;
    case ((1 << 0) | (1 << 6) | (1 << 7)):
        v0 = 32;
        break;
    case ((1 << 1) | (1 << 4) | (1 << 5)):
        v0 = 33;
        break;
    case ((1 << 2) | (1 << 5) | (1 << 7)):
        v0 = 34;
        break;
    case ((1 << 3) | (1 << 4) | (1 << 6)):
        v0 = 35;
        break;
    case ((1 << 0) | (1 << 2) | (1 << 7)):
        v0 = 36;
        break;
    case ((1 << 0) | (1 << 3) | (1 << 6)):
        v0 = 37;
        break;
    case ((1 << 1) | (1 << 2) | (1 << 5)):
        v0 = 38;
        break;
    case ((1 << 1) | (1 << 3) | (1 << 4)):
        v0 = 39;
        break;
    case ((1 << 0) | (1 << 6)):
        v0 = 40;
        break;
    case ((1 << 0) | (1 << 7)):
        v0 = 41;
        break;
    case ((1 << 1) | (1 << 4)):
        v0 = 42;
        break;
    case ((1 << 1) | (1 << 5)):
        v0 = 43;
        break;
    case ((1 << 2) | (1 << 5)):
        v0 = 44;
        break;
    case ((1 << 2) | (1 << 7)):
        v0 = 45;
        break;
    case ((1 << 3) | (1 << 4)):
        v0 = 46;
        break;
    case ((1 << 3) | (1 << 6)):
        v0 = 47;
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}
