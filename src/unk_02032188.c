#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02032188.h"

#include "unk_02032188.h"
#include "communication_system.h"

static int sub_020322BC(UnkStruct_02032188 * param0, int param1);
static int sub_0203229C(UnkStruct_02032188 * param0);

void sub_02032188 (UnkStruct_02032188 * param0, u8 * param1, int param2)
{
    param0->unk_00 = param1;
    param0->unk_0A = param2;
    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_08 = 0;
}

void sub_02032198 (UnkStruct_02032188 * param0, u8 * param1, int param2, int param3)
{
    int v0, v1;

    if (sub_0203229C(param0) <= param2) {
        sub_020363BC();
        return;
    }

    v1 = 0;

    for (v0 = param0->unk_08; v0 < param0->unk_08 + param2; v0++, v1++) {
        GF_ASSERT(param1);
        param0->unk_00[sub_020322BC(param0, v0)] = param1[v1];
    }

    param0->unk_08 = sub_020322BC(param0, v0);
}

int sub_020321F4 (UnkStruct_02032188 * param0, u8 * param1, int param2)
{
    int v0, v1;

    v0 = sub_02032220(param0, param1, param2);
    param0->unk_04 = sub_020322BC(param0, param0->unk_04 + v0);

    return v0;
}

u8 sub_02032210 (UnkStruct_02032188 * param0)
{
    u8 v0;

    sub_020321F4(param0, &v0, 1);
    return v0;
}

int sub_02032220 (UnkStruct_02032188 * param0, u8 * param1, int param2)
{
    int v0, v1;

    v1 = 0;

    for (v0 = param0->unk_04; v0 < param0->unk_04 + param2; v0++, v1++) {
        if (param0->unk_06 == sub_020322BC(param0, v0)) {
            return v1;
        }

        param1[v1] = param0->unk_00[sub_020322BC(param0, v0)];
    }

    return v1;
}

int sub_0203226C (UnkStruct_02032188 * param0)
{
    if (param0->unk_04 > param0->unk_06) {
        return param0->unk_0A + param0->unk_06 - param0->unk_04;
    }

    return param0->unk_06 - param0->unk_04;
}

int sub_0203228C (UnkStruct_02032188 * param0)
{
    return param0->unk_0A - sub_0203226C(param0);
}

static int sub_0203229C (UnkStruct_02032188 * param0)
{
    if (param0->unk_04 > param0->unk_08) {
        return param0->unk_04 - param0->unk_08;
    }

    return param0->unk_0A - (param0->unk_08 - param0->unk_04);
}

int sub_020322BC (UnkStruct_02032188 * param0, int param1)
{
    return param1 % param0->unk_0A;
}

void sub_020322D0 (UnkStruct_02032188 * param0)
{
    param0->unk_06 = param0->unk_08;
}
