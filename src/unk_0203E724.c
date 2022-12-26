#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0203E724_decl.h"

#include "functypes/funcptr_0203E724.h"
#include "struct_defs/struct_0203E724_t.h"

#include "unk_0203E724.h"

void sub_0203E724 (UnkStruct_0203E724 * param0, const UnkFuncPtr_0203E724 * param1, u32 param2)
{
    u32 v0;

    param0->unk_01 = 0;
    param0->unk_08 = NULL;
    param0->unk_00 = 0;
    param0->unk_04 = NULL;
    param0->unk_10 = param1;
    param0->unk_14 = param2;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_18[v0] = 0;
    }

    for (v0 = 0; v0 < 20; v0++) {
        param0->unk_0C[v0] = NULL;
    }

    param0->unk_28 = NULL;
}

u8 sub_0203E758 (UnkStruct_0203E724 * param0, const u8 * param1)
{
    param0->unk_08 = param1;
    param0->unk_01 = 1;

    return 1;
}

void sub_0203E764 (UnkStruct_0203E724 * param0, UnkFuncPtr_0203E724 param1)
{
    param0->unk_01 = 2;
    param0->unk_04 = param1;
}

void sub_0203E76C (UnkStruct_0203E724 * param0)
{
    param0->unk_01 = 0;
    param0->unk_08 = NULL;
}

void sub_0203E774 (UnkStruct_0203E724 * param0, void * param1)
{
    param0->unk_28 = param1;
}

u8 sub_0203E778 (UnkStruct_0203E724 * param0)
{
    u16 v0;

    if (param0->unk_01 == 0) {
        return 0;
    }

    switch (param0->unk_01) {
    case 0:
        return 0;
    case 2:
        if (param0->unk_04 != NULL) {
            if (param0->unk_04(param0) == 1) {
                param0->unk_01 = 1;
            }

            return 1;
        }

        param0->unk_01 = 1;
    case 1:
        while (TRUE) {
            if (param0->unk_08 == NULL) {
                param0->unk_01 = 0;
                return 0;
            }

            v0 = sub_0203E838(param0);

            if (v0 >= param0->unk_14) {
                GF_ASSERT(0);
                param0->unk_01 = 0;
                return 0;
            }

            if (param0->unk_10[v0](param0) == 1) {
                break;
            }
        }
    }

    return 1;
}

u8 sub_0203E7E4 (UnkStruct_0203E724 * param0, const u8 * param1)
{
    if (param0->unk_00 + 1 >= 20) {
        return 1;
    }

    param0->unk_0C[param0->unk_00] = param1;
    param0->unk_00++;

    return 0;
}

const u8 * sub_0203E800 (UnkStruct_0203E724 * param0)
{
    if (param0->unk_00 == 0) {
        return NULL;
    }

    param0->unk_00--;

    return param0->unk_0C[param0->unk_00];
}

void sub_0203E818 (UnkStruct_0203E724 * param0, u8 * param1)
{
    param0->unk_08 = param1;
}

void sub_0203E81C (UnkStruct_0203E724 * param0, u8 * param1)
{
    sub_0203E7E4(param0, param0->unk_08);
    param0->unk_08 = param1;
}

void sub_0203E82C (UnkStruct_0203E724 * param0)
{
    param0->unk_08 = sub_0203E800(param0);
}

u16 sub_0203E838 (UnkStruct_0203E724 * param0)
{
    u16 v0;

    v0 = (u16)(*((param0)->unk_08++));
    v0 += (u16)(*((param0)->unk_08++)) << 8;

    return v0;
}

u32 sub_0203E850 (UnkStruct_0203E724 * param0)
{
    u32 v0;
    u8 v1, v2, v3, v4;

    v1 = (*((param0)->unk_08++));
    v2 = (*((param0)->unk_08++));
    v3 = (*((param0)->unk_08++));
    v4 = (*((param0)->unk_08++));
    v0 = 0;

    v0 += (u32)v4;
    v0 <<= 8;
    v0 += (u32)v3;
    v0 <<= 8;
    v0 += (u32)v2;
    v0 <<= 8;
    v0 += (u32)v1;

    return v0;
}
