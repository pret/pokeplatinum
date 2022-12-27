#include <nitro.h>
#include <string.h>

#include "unk_0203266C.h"

u16 sub_0203266C (u16 param0)
{
    u8 v0[] = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x3,
        0x3,
        0x3,
        0x4,
        0x3,
        0x4,
        0x7,
        0x3,
        0x7,
        0x4,
        0x1,
        0x4,
        0x1,
        0x1,
        0x4,
        0x1,
        0x1,
        0x1,
        0x1,
        0x3,
        0x0,
        0x0,
        0x4,
        0x1,
        0x1,
        0x2,
        0x1,
        0x1,
        0x1,
        0x3,
        0x1,
        0x3,
        0x0
    };

    GF_ASSERT(param0 < sizeof(v0));
    return v0[param0];
}

u16 sub_02032698 (u16 param0)
{
    u8 v0[] = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x3,
        0x3,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x0
    };

    GF_ASSERT(param0 < sizeof(v0));
    return v0[param0];
}

BOOL sub_020326C4 (int param0)
{
    switch (param0) {
    case 18:
    case 9:
    case 13:
    case 7:
    case 26:
        return 1;
    }

    return 0;
}

BOOL sub_020326EC (int param0)
{
    switch (param0) {
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 29:
    case 33:
    case 34:
    case 35:
    case 36:
        return 1;
    }

    return 0;
}

BOOL sub_0203272C (int param0)
{
    switch (param0) {
    case 29:
    case 33:
    case 35:
        return 1;
    }

    return 0;
}

BOOL sub_02032740 (int param0)
{
    switch (param0) {
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 34:
        return 1;
    }

    return 0;
}

BOOL sub_0203276C (int param0)
{
    switch (param0) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 8:
        return 1;
    }

    return 0;
}
