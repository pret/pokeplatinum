#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "struct_defs/struct_02010658.h"
#include "struct_defs/struct_02012634.h"
#include "struct_defs/struct_02012650.h"
#include "struct_defs/struct_02012678.h"
#include "struct_defs/struct_02012698.h"

#include "unk_0200D9E8.h"
#include "unk_02012480.h"

static void sub_020126CC(SysTask * param0, void * param1);
static void sub_020126E0(SysTask * param0, void * param1);
static void sub_020126FC(SysTask * param0, void * param1);
static void sub_02012714(SysTask * param0, void * param1);

void sub_02012480 (int param0, int param1)
{
    if (param1 == 0) {
        GX_SetVisibleWnd(param0);
    } else {
        GXS_SetVisibleWnd(param0);
    }
}

void sub_020124AC (int param0, BOOL param1, int param2, int param3)
{
    if (param2 == 0) {
        if (param3 == 0) {
            G2_SetWnd0InsidePlane(param0, param1);
        } else {
            G2S_SetWnd0InsidePlane(param0, param1);
        }
    } else {
        if (param3 == 0) {
            G2_SetWnd1InsidePlane(param0, param1);
        } else {
            G2S_SetWnd1InsidePlane(param0, param1);
        }
    }
}

void sub_02012534 (int param0, BOOL param1, int param2)
{
    if (param2 == 0) {
        G2_SetWndOutsidePlane(param0, param1);
    } else {
        G2S_SetWndOutsidePlane(param0, param1);
    }
}

void sub_02012574 (int param0, int param1, int param2, int param3, int param4, int param5)
{
    if (param4 == 0) {
        if (param5 == 0) {
            G2_SetWnd0Position(param0, param1, param2, param3);
        } else {
            G2S_SetWnd0Position(param0, param1, param2, param3);
        }
    } else {
        if (param5 == 0) {
            G2_SetWnd1Position(param0, param1, param2, param3);
        } else {
            G2S_SetWnd1Position(param0, param1, param2, param3);
        }
    }
}

void sub_02012634 (UnkStruct_02010658 * param0, int param1, int param2)
{
    UnkStruct_02012634 * v0;

    v0 = &param0->unk_00[param2];

    v0->unk_00 = param1;
    v0->unk_04 = param2;

    sub_0200DA3C(sub_020126CC, v0, 1);
}

void sub_02012650 (UnkStruct_02010658 * param0, int param1, BOOL param2, int param3, int param4)
{
    UnkStruct_02012650 * v0;

    v0 = &param0->unk_10[param4][param3];

    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;
    v0->unk_0C = param4;

    sub_0200DA3C(sub_020126E0, v0, 1);
}

void sub_02012678 (UnkStruct_02010658 * param0, int param1, BOOL param2, int param3)
{
    UnkStruct_02012678 * v0;

    v0 = &param0->unk_5C[param3];

    v0->unk_00 = param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;

    sub_0200DA3C(sub_020126FC, v0, 1);
}

void sub_02012698 (UnkStruct_02010658 * param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    UnkStruct_02012698 * v0;

    v0 = &param0->unk_74[param6][param5];

    v0->unk_00 = param1;
    v0->unk_02 = param2;
    v0->unk_04 = param3;
    v0->unk_06 = param4;
    v0->unk_08 = param5;
    v0->unk_0C = param6;

    sub_0200DA3C(sub_02012714, v0, 1);
}

static void sub_020126CC (SysTask * param0, void * param1)
{
    UnkStruct_02012634 * v0 = (UnkStruct_02012634 *)param1;

    sub_02012480(v0->unk_00, v0->unk_04);
    SysTask_Done(param0);
}

static void sub_020126E0 (SysTask * param0, void * param1)
{
    UnkStruct_02012650 * v0 = (UnkStruct_02012650 *)param1;

    sub_020124AC(v0->unk_00, v0->unk_04, v0->unk_08, v0->unk_0C);
    SysTask_Done(param0);
}

static void sub_020126FC (SysTask * param0, void * param1)
{
    UnkStruct_02012678 * v0 = (UnkStruct_02012678 *)param1;

    sub_02012534(v0->unk_00, v0->unk_04, v0->unk_08);
    SysTask_Done(param0);
}

static void sub_02012714 (SysTask * param0, void * param1)
{
    UnkStruct_02012698 * v0 = (UnkStruct_02012698 *)param1;

    sub_02012574(v0->unk_00, v0->unk_02, v0->unk_04, v0->unk_06, v0->unk_08, v0->unk_0C);
    SysTask_Done(param0);
}
