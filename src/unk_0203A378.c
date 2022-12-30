#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203A3E8_decl.h"

#include "struct_defs/struct_0203A4AC.h"
#include "struct_defs/struct_0203A55C.h"
#include "struct_defs/struct_0203A594.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_020619DC.h"
#include "overlay006/struct_ov6_02242634.h"

#include "unk_020068C8.h"
#include "unk_02017E74.h"
#include "unk_0203A024.h"
#include "unk_0203A378.h"
#include "unk_02061804.h"

struct UnkStruct_0203A3E8_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    const UnkStruct_0203A594 * unk_10;
    const struct UnkStruct_020619DC_t * unk_14;
    const UnkStruct_0203A55C * unk_18;
    const UnkStruct_0203A4AC * unk_1C;
    u32 unk_20[512];
    u32 unk_820[64];
    UnkStruct_ov6_02242634 unk_920;
};

static void sub_0203A3E8(UnkStruct_0203A3E8 * param0, int param1);
static void sub_0203A5B0(UnkStruct_0203A3E8 * param0);
static void sub_0203A64C(UnkStruct_0203A3E8 * param0, int param1);
BOOL sub_0203A4FC(UnkStruct_0203CDB0 * param0, int param1, int param2);
BOOL sub_0203A52C(UnkStruct_0203CDB0 * param0, int param1, int param2);
BOOL sub_0203A55C(UnkStruct_0203CDB0 * param0, u16 param1, u16 param2, u16 param3);
BOOL sub_0203A574(UnkStruct_0203CDB0 * param0, u16 param1, u16 param2);
BOOL sub_0203A584(UnkStruct_0203CDB0 * param0, u16 param1, u16 param2);
BOOL sub_0203A594(UnkStruct_0203CDB0 * param0, u16 param1, u16 param2, u16 param3);

void sub_0203A378 (UnkStruct_0203CDB0 * param0, int param1)
{
    UnkStruct_0203A3E8 * v0;

    GF_ASSERT(param0->unk_14 == NULL);
    param0->unk_14 = sub_02018144(param1, sizeof(UnkStruct_0203A3E8));
}

void sub_0203A398 (UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(param0->unk_14 != NULL);
    sub_020181C4(param0->unk_14);
}

void sub_0203A3B0 (UnkStruct_0203CDB0 * param0, int param1)
{
    GF_ASSERT(param0->unk_14 != NULL);

    sub_0203A3E8(param0->unk_14, param1);
    sub_0203A5B0(param0->unk_14);
    sub_0203A614(&param0->unk_14->unk_920, param1);
    sub_0203A64C(param0->unk_14, param1);
}

static void sub_0203A3E8 (UnkStruct_0203A3E8 * param0, int param1)
{
    int v0;

    v0 = sub_0203A124(param1);
    GF_ASSERT(sub_02006B58(32, v0) < sizeof(param0->unk_20));
    sub_02006AA4(param0->unk_20, 32, v0);
}

void sub_0203A418 (UnkStruct_0203CDB0 * param0)
{
    int v0 = param0->unk_14->unk_04;

    GF_ASSERT(param0->unk_14 != NULL);

    if (v0 != 0) {
        sub_02062068(param0->unk_38, param0->unk_1C->unk_00, v0, param0->unk_14->unk_14);
    }
}

const UnkStruct_0203A594 * sub_0203A440 (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_10;
}

int sub_0203A448 (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_00;
}

const UnkStruct_0203A55C * sub_0203A450 (const UnkStruct_0203CDB0 * param0, int param1)
{
    if (param1 >= param0->unk_14->unk_08) {
        return NULL;
    }

    return &param0->unk_14->unk_18[param1];
}

int sub_0203A468 (const UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_14->unk_08; v0++) {
        if ((param0->unk_14->unk_18[v0].unk_00 == param1) && (param0->unk_14->unk_18[v0].unk_02 == param2)) {
            return v0;
        }
    }

    return -1;
}

int sub_0203A4A4 (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_0C;
}

const UnkStruct_0203A4AC * sub_0203A4AC (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_1C;
}

u32 sub_0203A4B4 (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_04;
}

const UnkStruct_020619DC * sub_0203A4BC (const UnkStruct_0203CDB0 * param0)
{
    return param0->unk_14->unk_14;
}

BOOL sub_0203A4C4 (UnkStruct_0203CDB0 * param0, int param1, u16 param2, u16 param3)
{
    int v0;
    UnkStruct_020619DC * v1 = (UnkStruct_020619DC *)param0->unk_14->unk_14;
    u32 v2 = param0->unk_14->unk_04;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].unk_00 == param1) {
            v1[v0].unk_1A = param2;
            v1[v0].unk_1C = param3;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A4FC (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    int v0;
    UnkStruct_020619DC * v1 = (UnkStruct_020619DC *)param0->unk_14->unk_14;
    u32 v2 = param0->unk_14->unk_04;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].unk_00 == param1) {
            v1[v0].unk_0C = param2;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A52C (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    int v0;
    UnkStruct_020619DC * v1 = (UnkStruct_020619DC *)param0->unk_14->unk_14;
    u32 v2 = param0->unk_14->unk_04;

    for (v0 = 0; v0 < v2; v0++) {
        if (v1[v0].unk_00 == param1) {
            v1[v0].unk_04 = param2;
            return 1;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

BOOL sub_0203A55C (UnkStruct_0203CDB0 * param0, u16 param1, u16 param2, u16 param3)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)param0->unk_14->unk_18;

    v0[param1].unk_00 = param2;
    v0[param1].unk_02 = param3;

    return 1;
}

BOOL sub_0203A574 (UnkStruct_0203CDB0 * param0, u16 param1, u16 param2)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)param0->unk_14->unk_18;

    v0[param1].unk_04 = param2;
    return 1;
}

BOOL sub_0203A584 (UnkStruct_0203CDB0 * param0, u16 param1, u16 param2)
{
    UnkStruct_0203A55C * v0 = (UnkStruct_0203A55C *)param0->unk_14->unk_18;

    v0[param1].unk_06 = param2;
    return 1;
}

BOOL sub_0203A594 (UnkStruct_0203CDB0 * param0, u16 param1, u16 param2, u16 param3)
{
    UnkStruct_0203A594 * v0 = (UnkStruct_0203A594 *)sub_0203A440(param0);

    (v0) += param1;
    v0->unk_04 = param2;
    v0->unk_08 = param3;

    return 1;
}

static void sub_0203A5B0 (UnkStruct_0203A3E8 * param0)
{
    const u8 * v0 = (const u8 *)param0->unk_20;

    param0->unk_00 = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_00 != 0) {
        param0->unk_10 = (const UnkStruct_0203A594 *)v0;
    } else {
        param0->unk_10 = NULL;
    }

    v0 += sizeof(UnkStruct_0203A594) * param0->unk_00;
    param0->unk_04 = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_04 != 0) {
        param0->unk_14 = (const struct UnkStruct_020619DC_t *)v0;
    } else {
        param0->unk_14 = NULL;
    }

    v0 += sizeof(struct UnkStruct_020619DC_t) * param0->unk_04;
    param0->unk_08 = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_08 != 0) {
        param0->unk_18 = (const UnkStruct_0203A55C *)v0;
    } else {
        param0->unk_18 = NULL;
    }

    v0 += sizeof(UnkStruct_0203A55C) * param0->unk_08;
    param0->unk_0C = *(u32 *)v0;
    v0 += sizeof(u32);

    if (param0->unk_0C != 0) {
        param0->unk_1C = (const UnkStruct_0203A4AC *)v0;
    } else {
        param0->unk_1C = NULL;
    }

    v0 += sizeof(UnkStruct_0203A4AC) * param0->unk_0C;
}

void sub_0203A614 (UnkStruct_ov6_02242634 * param0, int param1)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_ov6_02242634));

    if (sub_0203A0EC(param1)) {
        if ((GAME_VERSION == 10) || (GAME_VERSION == 12)) {
            v0 = 161;
        } else {
            v0 = 143;
        }

        sub_02006AA4(param0, v0, sub_0203A110(param1));
    }
}

const UnkStruct_ov6_02242634 * sub_0203A640 (const UnkStruct_0203CDB0 * param0)
{
    return &param0->unk_14->unk_920;
}

static void sub_0203A64C (UnkStruct_0203A3E8 * param0, int param1)
{
    int v0;

    v0 = sub_0203A0B0(param1);

    MI_CpuClearFast(param0->unk_820, sizeof(param0->unk_820));
    GF_ASSERT(sub_02006B58(10, v0) < sizeof(param0->unk_820));

    sub_02006AA4(param0->unk_820, 10, v0);
}

void * sub_0203A68C (const UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(param0->unk_14 != NULL);
    return &param0->unk_14->unk_820;
}

BOOL sub_0203A6A4 (const UnkStruct_0203CDB0 * param0, u16 param1, u16 param2)
{
    const UnkStruct_0203A3E8 * v0 = param0->unk_14;
    u32 v1;

    for (v1 = 0; v1 < v0->unk_04; v1++) {
        if ((v0->unk_14[v1].unk_1A == param1) && (v0->unk_14[v1].unk_1C == param2)) {
            return 0;
        }
    }

    return 1;
}
