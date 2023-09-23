#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203068C.h"
#include "struct_defs/struct_02030698.h"

#include "unk_020244AC.h"
#include "unk_0202D05C.h"
#include "unk_0202FF4C.h"
#include "unk_02030108.h"
#include "unk_020302D0.h"
#include "unk_02030494.h"
#include "unk_0203061C.h"

int Frontier_SaveSize (void)
{
    return sizeof(UnkStruct_0203068C);
}

void Frontier_Init (UnkStruct_0203068C * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_0203068C));

    sub_0202D06C(&param0->unk_950.unk_00);
    sub_0202D080(&param0->unk_950.unk_168);
    sub_0202D0AC(&param0->unk_950.unk_188);
    sub_020300A4(&param0->unk_1614.unk_00);
    sub_02030260(&param0->unk_1618.unk_00);
    sub_02030410(&param0->unk_161C.unk_00);
    sub_020305AC(&param0->unk_1620.unk_00);

    return;
}

UnkStruct_0203068C * sub_0203068C (SaveData * param0)
{
    return sub_020245BC(param0, 23);
}

u16 sub_02030698 (UnkStruct_0203068C * param0, int param1, int param2)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;

    if (param1 < 112) {
        if (param1 >= 100) {
            int v1, v2;

            if (param2 < 16) {
                v1 = param1;
                v2 = param2;
            } else {
                v1 = param1 + 1;
                v2 = param2 - 16;
            }

            return (v0->unk_00[v1] >> v2) & 1;
        }

        return v0->unk_00[param1];
    } else {
        if (param2 == -1) {
            GF_ASSERT(0);
            return 0;
        }

        return v0->unk_E0[param2][param1 - 112];
    }
}

u16 sub_020306E4 (UnkStruct_0203068C * param0, int param1, int param2, u16 param3)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;

    if (param3 > 9999) {
        param3 = 9999;
    }

    if (param1 < 112) {
        if (param1 >= 100) {
            int v1, v2;

            GF_ASSERT(param2 != 0xff);

            if (param2 < 16) {
                v1 = param1;
                v2 = param2;
            } else {
                v1 = param1 + 1;
                v2 = param2 - 16;
            }

            if (param3 == 0) {
                v0->unk_00[v1] &= 0xffff ^ (1 << v2);
            } else {
                v0->unk_00[v1] |= 1 << v2;
            }
        } else {
            GF_ASSERT(param2 == 0xff);
            v0->unk_00[param1] = param3;
        }
    } else {
        GF_ASSERT(param2 != 0xff);
        v0->unk_E0[param2][param1 - 112] = param3;
    }

    return param3;
}

void sub_02030764 (UnkStruct_0203068C * param0)
{
    int v0;
    UnkStruct_02030698 * v1 = &param0->unk_00;

    MI_CpuClear8(v1->unk_E0, (sizeof(u16) * (144 - 112)) * 32);

    for (v0 = 100; v0 <= 111; v0++) {
        v1->unk_00[v0] = 0;
    }
}

void sub_02030788 (UnkStruct_0203068C * param0, int param1)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;
    int v1, v2;
    u16 v3;

    GF_ASSERT(param1 != 0xff);

    for (v1 = param1; v1 < (32 - 1); v1++) {
        MI_CpuCopy8(v0->unk_E0[v1 + 1], v0->unk_E0[v1], sizeof(u16) * (144 - 112));

        for (v2 = 100; v2 < 111; v2 += 2) {
            v3 = sub_02030698(param0, v2, v1 + 1);
            sub_020306E4(param0, v2, v1, v3);
        }
    }

    v1 = 32 - 1;
    MI_CpuClear8(v0->unk_E0[v1], sizeof(u16) * (144 - 112));
}

void sub_020307F0 (UnkStruct_0203068C * param0, int param1, int param2)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;
    MI_CpuClear8(v0->unk_E0[param1], sizeof(u16) * (144 - 112));
}

u16 sub_02030804 (UnkStruct_0203068C * param0, int param1, int param2, int param3)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;
    u16 v1;

    v1 = sub_02030698(param0, param1, param2);
    v1 += param3;

    return sub_020306E4(param0, param1, param2, v1);
}

u16 sub_02030824 (UnkStruct_0203068C * param0, int param1, int param2, int param3)
{
    UnkStruct_02030698 * v0 = &param0->unk_00;
    int v1;

    v1 = sub_02030698(param0, param1, param2);
    v1 -= param3;

    if (v1 < 0) {
        v1 = 0;
    }

    return sub_020306E4(param0, param1, param2, v1);
}

u16 sub_02030848 (UnkStruct_0203068C * param0, int param1, int param2, u16 param3)
{
    u16 v0;

    v0 = sub_02030698(param0, param1, param2);

    if (v0 < param3) {
        return sub_020306E4(param0, param1, param2, param3);
    } else {
        if (v0 > 9999) {
            return sub_020306E4(param0, param1, param2, 9999);
        }

        return v0;
    }
}
