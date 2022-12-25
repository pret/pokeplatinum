#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020F1DB8.h"

#include "unk_0201E010.h"

void sub_0201E010 (const UnkStruct_020F1DB8 * param0, u8 * param1, u8 * param2)
{
    *param1 = param0->unk_00;
    *param2 = param0->unk_01;
}

void sub_0201E01C (const UnkStruct_020F1DB8 * param0, u8 * param1, u8 * param2)
{
    *param1 = param0->unk_02;
    *param2 = param0->unk_03;
}

u8 sub_0201E028 (const UnkStruct_020F1DB8 * param0, u8 * param1, u8 * param2, u8 * param3, u8 * param4, u8 param5, u8 param6)
{
    u8 v0 = param5;

    switch (param6) {
    case 0:
        v0 = param0[param5].unk_04;
        break;
    case 1:
        v0 = param0[param5].unk_05;
        break;
    case 2:
        v0 = param0[param5].unk_06;
        break;
    case 3:
        v0 = param0[param5].unk_07;
        break;
    }

    if (param1 != NULL) {
        *param1 = param0[v0].unk_00;
    }

    if (param2 != NULL) {
        *param2 = param0[v0].unk_01;
    }

    if (param3 != NULL) {
        *param3 = param0[v0].unk_02;
    }

    if (param4 != NULL) {
        *param4 = param0[v0].unk_03;
    }

    return v0;
}
