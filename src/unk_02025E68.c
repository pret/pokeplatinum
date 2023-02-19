#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_plstring_decl.h"

#include "struct_defs/struct_02025E6C.h"

#include "unk_020021B0.h"
#include "heap.h"
#include "plstring.h"
#include "unk_02025E68.h"

int sub_02025E68 (void)
{
    return sizeof(UnkStruct_02025E6C);
}

UnkStruct_02025E6C * sub_02025E6C (u32 param0)
{
    UnkStruct_02025E6C * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02025E6C));
    sub_02025E8C(v0);

    return v0;
}

void sub_02025E80 (const UnkStruct_02025E6C * param0, UnkStruct_02025E6C * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(UnkStruct_02025E6C));
}

void sub_02025E8C (UnkStruct_02025E6C * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02025E6C));
    param0->unk_19 = GAME_LANGUAGE;

    sub_02025FD0(param0, GAME_VERSION);
}

BOOL sub_02025EA8 (const UnkStruct_02025E6C * param0)
{
    int v0;

    for (v0 = 0; v0 < 7 + 1; v0++) {
        if (param0->unk_00[v0] != 0) {
            return 0;
        }
    }

    return 1;
}

void sub_02025EC0 (UnkStruct_02025E6C * param0, const u16 * param1)
{
    int v0;

    v0 = sub_020021F0(param1);
    GF_ASSERT(v0 < 7 + 1);

    sub_020021B0(param0->unk_00, param1);
}

void sub_02025EE0 (UnkStruct_02025E6C * param0, const PLString * param1)
{
    PLString_Dump(param1, param0->unk_00, 7 + 1);
}

const u16 * sub_02025EF0 (const UnkStruct_02025E6C * param0)
{
    return param0->unk_00;
}

void sub_02025EF4 (const UnkStruct_02025E6C * param0, PLString * param1)
{
    PLString_FillWithChars(param1, param0->unk_00);
}

PLString * sub_02025F04 (const UnkStruct_02025E6C * param0, int param1)
{
    PLString * v0 = PLString_Init(7 + 1, param1);

    sub_02025EF4(param0, v0);
    return v0;
}

void sub_02025F1C (UnkStruct_02025E6C * param0, u32 param1)
{
    param0->unk_10 = param1;
}

u32 sub_02025F20 (const UnkStruct_02025E6C * param0)
{
    return param0->unk_10;
}

u16 sub_02025F24 (const UnkStruct_02025E6C * param0)
{
    return (u16)(param0->unk_10 & 0xffff);
}

void sub_02025F2C (UnkStruct_02025E6C * param0, int param1)
{
    param0->unk_18 = param1;
}

u32 sub_02025F30 (const UnkStruct_02025E6C * param0)
{
    return param0->unk_18;
}

BOOL sub_02025F34 (const UnkStruct_02025E6C * param0, int param1)
{
    if (param0->unk_1A & (1 << param1)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_02025F48 (UnkStruct_02025E6C * param0, int param1)
{
    param0->unk_1A |= (1 << param1);
}

int sub_02025F58 (const UnkStruct_02025E6C * param0)
{
    int v0 = 0;
    u32 v1;

    for (v1 = param0->unk_1A; v1 != 0; v1 >>= 1) {
        if (v1 & 1) {
            v0++;
        }
    }

    return v0;
}

u32 sub_02025F74 (const UnkStruct_02025E6C * param0)
{
    return param0->unk_14;
}

u32 sub_02025F78 (UnkStruct_02025E6C * param0, u32 param1)
{
    if (param1 > 999999) {
        param1 = 999999;
    }

    param0->unk_14 = param1;
    return param0->unk_14;
}

u8 sub_02025F8C (const UnkStruct_02025E6C * param0)
{
    return param0->unk_1B;
}

void sub_02025F90 (UnkStruct_02025E6C * param0, u8 param1)
{
    param0->unk_1B = param1;
}

u32 sub_02025F94 (UnkStruct_02025E6C * param0, u32 param1)
{
    if (param1 > 999999) {
        param0->unk_14 = 999999;
    } else {
        param0->unk_14 += param1;
    }

    if (param0->unk_14 > 999999) {
        param0->unk_14 = 999999;
    }

    return param0->unk_14;
}

u32 sub_02025FB8 (UnkStruct_02025E6C * param0, u32 param1)
{
    if (param0->unk_14 < param1) {
        param0->unk_14 = 0;
    } else {
        param0->unk_14 -= param1;
    }

    return param0->unk_14;
}

u8 sub_02025FCC (const UnkStruct_02025E6C * param0)
{
    return param0->unk_1C;
}

void sub_02025FD0 (UnkStruct_02025E6C * param0, u8 param1)
{
    param0->unk_1C = param1;
}

u8 sub_02025FD4 (void)
{
    return 0;
}

u8 sub_02025FD8 (const UnkStruct_02025E6C * param0)
{
    return param0->unk_19;
}

void sub_02025FDC (UnkStruct_02025E6C * param0, u8 param1)
{
    param0->unk_19 = param1;
}

void sub_02025FE0 (UnkStruct_02025E6C * param0)
{
    param0->unk_1D_0 = 1;
}

int sub_02025FF0 (UnkStruct_02025E6C * param0)
{
    return param0->unk_1D_0;
}

void sub_02025FF8 (UnkStruct_02025E6C * param0)
{
    param0->unk_1D_1 = 1;
}

int sub_02026004 (UnkStruct_02025E6C * param0)
{
    return param0->unk_1D_1;
}

BOOL sub_0202600C (const UnkStruct_02025E6C * param0, const UnkStruct_02025E6C * param1)
{
    if (0 == sub_02002238(param0->unk_00, param1->unk_00, 7)) {
        if (param0->unk_10 == param1->unk_10) {
            return 1;
        }
    }

    return 0;
}
