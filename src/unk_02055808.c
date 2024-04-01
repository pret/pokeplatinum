#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020508D4_decl.h"

#include "struct_defs/struct_0203CDB0.h"

#include "unk_0200F174.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"
#include "unk_02055808.h"
#include "overlay005/ov5_021DD6FC.h"

static BOOL sub_02055808 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (!sub_0203CD4C(v0)) {
        return 1;
    }

    return 0;
}

void sub_02055820 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (!sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    sub_0203CD44(v0);
    sub_02050944(param0, sub_02055808, NULL);
}

static BOOL sub_02055850 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (sub_020509DC(v0)) {
        return 1;
    }

    return 0;
}

void sub_02055868 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    sub_020509D4(v0);
    sub_02050944(param0, sub_02055850, NULL);
}

static BOOL sub_02055898 (UnkStruct_020508D4 * param0)
{
    if (ScreenWipe_Done()) {
        return 1;
    }

    return 0;
}

void sub_020558AC (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (!sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 4);
        sub_02050944(param0, sub_02055898, NULL);
    }
}

void sub_020558F0 (UnkStruct_020508D4 * param0)
{
    FieldSystem * v0 = sub_02050A60(param0);

    if (!sub_0203CD4C(v0)) {
        GF_ASSERT(FALSE);
        return;
    }

    {
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 4);
        sub_02050944(param0, sub_02055898, NULL);
    }
}

static BOOL sub_02055934 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);

    switch (*v0) {
    case 0:
        sub_020558AC(param0);
        (*v0)++;
        break;
    case 1:
        sub_02055820(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

void sub_02055974 (UnkStruct_020508D4 * param0)
{
    sub_02050944(param0, sub_02055934, NULL);
}

static BOOL sub_02055984 (UnkStruct_020508D4 * param0)
{
    int * v0 = sub_02050A68(param0);
    FieldSystem * v1 = sub_02050A60(param0);

    switch (*v0) {
    case 0:
        sub_02055868(param0);
        (*v0)++;
        break;
    case 1:
        ov5_021DDAA4(v1);
        sub_020558F0(param0);
        (*v0)++;
        break;
    case 2:
        return 1;
    }

    return 0;
}

void sub_020559CC (UnkStruct_020508D4 * param0)
{
    sub_02050944(param0, sub_02055984, NULL);
}
