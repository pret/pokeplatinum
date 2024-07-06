#include "overlay104/ov104_0222E930.h"

#include <nitro.h>
#include <string.h>

#include "overlay104/funcptr_ov104_0222E930.h"
#include "overlay104/funcptr_ov104_0222E974.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222E930_t.h"

void ov104_0222E930(UnkStruct_ov104_0222E930 *param0, const UnkFuncPtr_ov104_0222E930 *param1, u32 param2);
u8 ov104_0222E968(UnkStruct_ov104_0222E930 *param0, const u8 *param1);
void ov104_0222E974(UnkStruct_ov104_0222E930 *param0, UnkFuncPtr_ov104_0222E974 param1);
void ov104_0222E980(UnkStruct_ov104_0222E930 *param0);
u8 ov104_0222E988(UnkStruct_ov104_0222E930 *param0);
u8 ov104_0222E9F8(UnkStruct_ov104_0222E930 *param0, const u8 *param1);
const u8 *ov104_0222EA14(UnkStruct_ov104_0222E930 *param0);
void ov104_0222EA2C(UnkStruct_ov104_0222E930 *param0, u8 *param1);
void ov104_0222EA3C(UnkStruct_ov104_0222E930 *param0);
u16 ov104_0222EA48(UnkStruct_ov104_0222E930 *param0);
u32 ov104_0222EA60(UnkStruct_ov104_0222E930 *param0);

void ov104_0222E930(UnkStruct_ov104_0222E930 *param0, const UnkFuncPtr_ov104_0222E930 *param1, u32 param2)
{
    u32 v0;

    param0->unk_19 = 0;
    param0->unk_1C = NULL;
    param0->unk_18 = 0;
    param0->unk_88 = NULL;
    param0->unk_70 = param1;
    param0->unk_74 = param2;

    for (v0 = 0; v0 < (((((((0x8000 + 7) + 1) + 7) + 1) + 3) + 1) - ((((0x8000 + 7) + 1) + 7) + 1)); v0++) {
        param0->unk_78[v0] = 0;
    }

    for (v0 = 0; v0 < 20; v0++) {
        param0->unk_20[v0] = NULL;
    }
}

u8 ov104_0222E968(UnkStruct_ov104_0222E930 *param0, const u8 *param1)
{
    param0->unk_1C = param1;
    param0->unk_19 = 1;

    return 1;
}

void ov104_0222E974(UnkStruct_ov104_0222E930 *param0, UnkFuncPtr_ov104_0222E974 param1)
{
    param0->unk_19 = 2;
    param0->unk_88 = param1;
}

void ov104_0222E980(UnkStruct_ov104_0222E930 *param0)
{
    param0->unk_19 = 0;
    param0->unk_1C = NULL;
}

u8 ov104_0222E988(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0;

    switch (param0->unk_19) {
    case 0:
        return 0;
    case 2:
        if (param0->unk_88 != NULL) {
            if (param0->unk_88(param0) == 1) {
                param0->unk_19 = 1;
                param0->unk_88 = NULL;
            }

            return 1;
        }

        param0->unk_19 = 1;
    case 1:
        while (TRUE) {
            if (param0->unk_1C == NULL) {
                param0->unk_19 = 0;
                return 0;
            }

            v0 = ov104_0222EA48(param0);

            if (v0 >= param0->unk_74) {
                GF_ASSERT(0);
                param0->unk_19 = 0;
                return 0;
            }

            if (param0->unk_70[v0](param0) == 1) {
                break;
            }
        }

        break;
    }

    return 1;
}

u8 ov104_0222E9F8(UnkStruct_ov104_0222E930 *param0, const u8 *param1)
{
    if (param0->unk_18 + 1 >= 20) {
        return 1;
    }

    param0->unk_20[param0->unk_18] = param1;
    param0->unk_18++;

    return 0;
}

const u8 *ov104_0222EA14(UnkStruct_ov104_0222E930 *param0)
{
    if (param0->unk_18 == 0) {
        return NULL;
    }

    param0->unk_18--;

    return param0->unk_20[param0->unk_18];
}

void ov104_0222EA2C(UnkStruct_ov104_0222E930 *param0, u8 *param1)
{
    ov104_0222E9F8(param0, param0->unk_1C);
    param0->unk_1C = param1;
}

void ov104_0222EA3C(UnkStruct_ov104_0222E930 *param0)
{
    param0->unk_1C = ov104_0222EA14(param0);
}

u16 ov104_0222EA48(UnkStruct_ov104_0222E930 *param0)
{
    u16 v0;

    v0 = (u16)(*((param0)->unk_1C++));
    v0 += (u16)(*((param0)->unk_1C++)) << 8;

    return v0;
}

u32 ov104_0222EA60(UnkStruct_ov104_0222E930 *param0)
{
    u32 v0;
    u8 v1, v2, v3, v4;

    v1 = (*((param0)->unk_1C++));
    v2 = (*((param0)->unk_1C++));
    v3 = (*((param0)->unk_1C++));
    v4 = (*((param0)->unk_1C++));
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
