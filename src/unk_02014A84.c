#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_plstring_decl.h"

#include "struct_defs/struct_02014A84.h"

#include "unk_0200AC5C.h"
#include "unk_0200B29C.h"
#include "unk_0200B358.h"
#include "unk_02014A84.h"
#include "unk_02014D38.h"
#include "unk_0201D0C8.h"
#include "plstring.h"

static u32 sub_02014C00(u32 param0, u32 param1);

static const u16 Unk_020E5498[] = {
    0x1C0,
    0x1C2,
    0x1BE,
    0x1BF,
    0x1C1
};

void sub_02014A84 (UnkStruct_02014A84 * param0)
{
    int v0;

    param0->unk_00 = 0xffff;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_04[v0] = 0xffff;
    }
}

void sub_02014A9C (UnkStruct_02014A84 * param0, u32 param1)
{
    int v0;

    param0->unk_00 = param1;
    param0->unk_02 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_04[v0] = 0xffff;
    }
}

void sub_02014AB4 (UnkStruct_02014A84 * param0)
{
    sub_02014A9C(param0, 4);
    param0->unk_02 = 5;
}

void sub_02014AC4 (UnkStruct_02014A84 * param0, int param1)
{
    static const struct {
        u8 unk_00;
        u8 unk_01;
        s16 unk_02;
        u16 unk_04;
        s16 unk_06;
        u16 unk_08;
    } v0[] = {
        {0x0, 0x0, 0x1B7, 0x7, -1, 0x0},
        {0x1, 0x0, 0x1B7, 0x21, -1, 0x0},
        {0x2, 0x0, 0x1BB, 0xA, -1, 0x0},
        {0x1, 0x4, 0x1B7, 0x1, -1, 0x0}
    };

    GF_ASSERT(param1 < NELEMS(v0));

    if (param1 < NELEMS(v0)) {
        sub_02014A9C(param0, v0[param1].unk_00);
        param0->unk_02 = v0[param1].unk_01;

        if (v0[param1].unk_02 != -1) {
            param0->unk_04[0] = sub_02014DFC(
                v0[param1].unk_02, v0[param1].unk_04);
        }

        if (v0[param1].unk_06 != -1) {
            param0->unk_04[1] = sub_02014DFC(
                v0[param1].unk_06, v0[param1].unk_08);
        }
    }
}

PLString * sub_02014B34 (const UnkStruct_02014A84 * param0, u32 param1)
{
    PLString * v0;
    UnkStruct_0200B358 * v1;
    UnkStruct_0200B144 * v2;
    int v3;

    v1 = sub_0200B358(param1);

    for (v3 = 0; v3 < 2; v3++) {
        if (param0->unk_04[v3] != 0xffff) {
            sub_0200BE48(v1, v3, param0->unk_04[v3]);
        } else {
            break;
        }
    }

    v2 = sub_0200B144(1, 26, Unk_020E5498[param0->unk_00], param1);
    v0 = sub_0200B29C(v1, v2, param0->unk_02, param1);

    sub_0200B190(v2);
    sub_0200B3F0(v1);

    return v0;
}

PLString * sub_02014BA0 (const UnkStruct_02014A84 * param0, u32 param1)
{
    return sub_0200B010(26, Unk_020E5498[param0->unk_00], param0->unk_02, param1);
}

BOOL sub_02014BBC (const UnkStruct_02014A84 * param0)
{
    return param0->unk_00 != 0xffff;
}

BOOL sub_02014BD0 (const UnkStruct_02014A84 * param0)
{
    u32 v0, v1;

    v0 = sub_02014C00(param0->unk_00, param0->unk_02);

    for (v1 = 0; v1 < v0; v1++) {
        if (param0->unk_04[v1] == 0xffff) {
            return 0;
        }
    }

    return 1;
}

static u32 sub_02014C00 (u32 param0, u32 param1)
{
    PLString * v0;
    const u16 * v1;
    u32 v2;

    GF_ASSERT(param0 < 5);
    GF_ASSERT(param1 < sub_02014CD4(param0));

    v0 = sub_0200B010(26, Unk_020E5498[param0], param1, 0);
    v1 = PLString_GetCharData(v0);
    v2 = 0;

    while (*v1 != 0xffff) {
        if (*v1 == 0xfffe) {
            if (sub_0201D108(v1)) {
                v2++;
            }

            v1 = sub_0201D0C8(v1);
        } else {
            v1++;
        }
    }

    PLString_FreeToHeap(v0);
    return v2;
}

u16 sub_02014C78 (const UnkStruct_02014A84 * param0, int param1)
{
    return param0->unk_04[param1];
}

u32 sub_02014C80 (const UnkStruct_02014A84 * param0)
{
    return param0->unk_00;
}

u32 sub_02014C84 (const UnkStruct_02014A84 * param0)
{
    return param0->unk_02;
}

BOOL sub_02014C88 (const UnkStruct_02014A84 * param0, const UnkStruct_02014A84 * param1)
{
    int v0;

    if ((param0->unk_00 != param1->unk_00) || (param0->unk_02 != param1->unk_02)) {
        return 0;
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_04[v0] != param1->unk_04[v0]) {
            return 0;
        }
    }

    return 1;
}

void sub_02014CC0 (UnkStruct_02014A84 * param0, const UnkStruct_02014A84 * param1)
{
    *param0 = *param1;
}

u32 sub_02014CD4 (u32 param0)
{
    if (param0 < NELEMS(Unk_020E5498)) {
        return 20;
    }

    return 0;
}

void sub_02014CE0 (UnkStruct_02014A84 * param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 < 5);

    param0->unk_00 = param1;
    param0->unk_02 = param2;
}

void sub_02014CF8 (UnkStruct_02014A84 * param0, u32 param1, u16 param2)
{
    GF_ASSERT(param1 < 2);
    param0->unk_04[param1] = param2;
}

void sub_02014D10 (UnkStruct_02014A84 * param0)
{
    u32 v0, v1;

    v0 = sub_02014C00(param0->unk_00, param0->unk_02);

    for (v1 = v0; v1 < 2; v1++) {
        param0->unk_04[v1] = 0xffff;
    }
}
