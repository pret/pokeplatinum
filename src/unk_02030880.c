#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203068C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_02017E74.h"
#include "unk_0202440C.h"
#include "unk_020244AC.h"
#include "unk_0203061C.h"
#include "unk_02030880.h"

typedef struct {
    u16 unk_00[495];
    u16 unk_3DE[495];
    u16 unk_7BC[495];
    u16 unk_B9A;
} UnkStruct_020308A0_sub1;

typedef struct UnkStruct_020308A0_t {
    u32 unk_00;
    UnkStruct_020308A0_sub1 unk_04;
} UnkStruct_020308A0;

static u16 sub_02030908(UnkStruct_020308A0 * param0, int param1, int param2, u16 param3);
static u16 sub_02030954(UnkStruct_021C0794 * param0, UnkStruct_020308A0 * param1, int param2, int param3, u16 param4);

int sub_02030880 (void)
{
    GF_ASSERT(sizeof(UnkStruct_020308A0) % 4 == 0);
    return sizeof(UnkStruct_020308A0);
}

void sub_02030888 (UnkStruct_020308A0 * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_020308A0));
    param0->unk_00 = 0xffffffff;
}

UnkStruct_020308A0 * sub_020308A0 (UnkStruct_021C0794 * param0, int param1, int * param2)
{
    UnkStruct_020308A0 * v0;

    v0 = sub_0202448C(param0, param1, param2);
    return v0;
}

int sub_020308A8 (UnkStruct_021C0794 * param0, UnkStruct_020308A0 * param1)
{
    int v0;

    v0 = sub_020244A0(param0, param1);
    v0 |= sub_020246E0(param0);

    return v0;
}

u16 sub_020308BC (UnkStruct_021C0794 * param0, UnkStruct_020308A0 * param1, int param2, int param3)
{
    if (sub_020247C8(param0) == 0) {
        return 0;
    }

    switch (param2) {
    case 0:
        return param1->unk_04.unk_00[param3];
    case 1:
        return param1->unk_04.unk_3DE[param3];
    case 2:
        return param1->unk_04.unk_7BC[param3];
    }

    GF_ASSERT(0);
    return 0;
}

static u16 sub_02030908 (UnkStruct_020308A0 * param0, int param1, int param2, u16 param3)
{
    if (param3 > 9999) {
        param3 = 9999;
    }

    switch (param1) {
    case 0:
        param0->unk_04.unk_00[param2] = param3;
        break;
    case 1:
        param0->unk_04.unk_3DE[param2] = param3;
        break;
    case 2:
        param0->unk_04.unk_7BC[param2] = param3;
        break;
    default:
        GF_ASSERT(0);
        return 0;
    }

    return param3;
}

static u16 sub_02030954 (UnkStruct_021C0794 * param0, UnkStruct_020308A0 * param1, int param2, int param3, u16 param4)
{
    u16 v0;

    if (sub_020247C8(param0) == 0) {
        return 0;
    }

    v0 = sub_020308BC(param0, param1, param2, param3);

    if (v0 < param4) {
        return sub_02030908(param1, param2, param3, param4);
    } else {
        if (v0 > 9999) {
            return sub_02030908(param1, param2, param3, 9999);
        }

        return v0;
    }
}

BOOL sub_020309A0 (UnkStruct_021C0794 * param0, int param1, int param2, int param3, int param4, int param5, int * param6, int * param7)
{
    UnkStruct_0203068C * v0;
    UnkStruct_020308A0 * v1;
    u16 v2, v3, v4;
    int v5;
    BOOL v6 = 0;

    GF_ASSERT(param1 >= 34 && param1 <= 60);
    GF_ASSERT(param2 == 36 || param2 == 48 || param2 == 60);

    *param6 = 1;
    *param7 = 2;

    if (param3 != 0xff) {
        return v6;
    }

    if (sub_020247C8(param0) == 0) {
        return v6;
    }

    v0 = sub_0203068C(param0);
    v3 = sub_02030698(v0, param1, param3);
    v5 = sub_02030698(v0, param2, param3);
    v1 = sub_020308A0(param0, param5, param6);

    if (*param6 != 1) {
        v4 = 0;
    } else {
        v4 = sub_020308BC(param0, v1, param4, v5);
    }

    v2 = sub_02030954(param0, v1, param4, v5, v3);

    if (v3 != v4) {
        *param7 = sub_020308A8(param0, v1);
        v6 = 1;
    }

    if (v1 != NULL) {
        sub_020181C4(v1);
    }

    return v6;
}
