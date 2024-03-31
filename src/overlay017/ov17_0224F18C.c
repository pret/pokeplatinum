#include <nitro.h>
#include <string.h>

#include "overlay017/struct_ov17_02243C28.h"
#include "overlay017/struct_ov17_02243C80.h"
#include "overlay017/struct_ov17_0224F30C.h"
#include "overlay017/struct_ov17_0224F3D8.h"

#include "communication_system.h"
#include "overlay017/ov17_0224F18C.h"

void ov17_0224F18C (UnkStruct_ov17_0224F30C * param0, const UnkStruct_ov17_02243C28 * param1)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_ov17_0224F30C));

    param0->unk_00 = param1->unk_00;
    param0->unk_04 = param1->unk_04;
    param0->unk_06 = param1->unk_06;
    param0->unk_07 = param1->unk_07;
    param0->unk_08 = param1->unk_08;
}

static int ov17_0224F1B4 (UnkStruct_ov17_0224F30C * param0)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if ((param0->unk_0C & (1 << v0)) == 0) {
            param0->unk_0C |= 1 << v0;
            return v0;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void ov17_0224F1E0 (UnkStruct_ov17_0224F30C * param0, int param1)
{
    param0->unk_0C &= 0xffffffff ^ (1 << param1);
}

int ov17_0224F1F8 (UnkStruct_ov17_0224F30C * param0, u8 param1, u16 param2, void * param3, int param4)
{
    UnkStruct_ov17_02243C80 v0;

    GF_ASSERT(sizeof(UnkStruct_ov17_02243C80) + param4 <= 512);

    MI_CpuClear8(param0->unk_10, 512);

    v0.unk_04 = param1;
    v0.unk_02 = param2;
    v0.unk_05 = ov17_0224F1B4(param0);
    v0.unk_06 = 0;
    v0.unk_00 = param4 + sizeof(UnkStruct_ov17_02243C80);

    MI_CpuCopy32(&v0, param0->unk_10, sizeof(UnkStruct_ov17_02243C80));
    MI_CpuCopy8(param3, &param0->unk_10[sizeof(UnkStruct_ov17_02243C80)], param4);

    param0->unk_A15 = 0;
    param0->unk_A10 = 1;

    return v0.unk_05;
}

void ov17_0224F26C (UnkStruct_ov17_0224F30C * param0, const UnkStruct_ov17_02243C80 * param1, void * param2, int param3)
{
    UnkStruct_ov17_02243C80 v0;

    GF_ASSERT(sizeof(UnkStruct_ov17_02243C80) + param3 <= 512);

    MI_CpuClear8(param0->unk_10, 512);

    v0 = *param1;
    v0.unk_04 = 0xfe;
    v0.unk_06 = 1;
    v0.unk_00 = param3 + sizeof(UnkStruct_ov17_02243C80);

    MI_CpuCopy32(&v0, param0->unk_10, sizeof(UnkStruct_ov17_02243C80));

    if (param2 != NULL) {
        MI_CpuCopy8(param2, &param0->unk_10[sizeof(UnkStruct_ov17_02243C80)], param3);
    }

    param0->unk_A10 = 1;
}

static void ov17_0224F2DC (UnkStruct_ov17_0224F30C * param0, int param1, UnkStruct_ov17_02243C80 ** param2, void ** param3)
{
    *param2 = (void *)param0->unk_210[param1];
    *param3 = &param0->unk_210[param1][sizeof(UnkStruct_ov17_02243C80)];
}

static BOOL ov17_0224F2F8 (UnkStruct_ov17_0224F30C * param0)
{
    if (param0->unk_A10 == 1) {
        return 0;
    }

    if (param0->unk_07 == 0) {
        return 1;
    }

    return 1;
}

int ov17_0224F30C (UnkStruct_ov17_0224F30C * param0, void * param1, int param2, void * param3)
{
    if (ov17_0224F2F8(param0) == 0) {
        return 0;
    }

    GF_ASSERT(param2 < param0->unk_04);
    param0->unk_00[param2].unk_00(param0, param1, param2, param3);
    return 1;
}

static BOOL ov17_0224F344 (int param0, int param1, int param2)
{
    if ((param0 == param2) || (param2 == 0xff) || ((param2 == 0xfe) && (param1 == param0))) {
        return 1;
    }

    return 0;
}

BOOL ov17_0224F35C (UnkStruct_ov17_0224F30C * param0)
{
    if (param0->unk_A10 == 0) {
        return 0;
    }

    if (param0->unk_07 == 0) {
        MI_CpuCopy8(param0->unk_10, param0->unk_210[param0->unk_06], 512);
        param0->unk_A11[param0->unk_06] = 1;

        MI_CpuClear8(param0->unk_10, 512);
        param0->unk_A10 = 0;
        return 1;
    } else {
        UnkStruct_ov17_02243C80 * v0;

        v0 = (void *)param0->unk_10;

        if (sub_0203597C(24, param0->unk_10, v0->unk_00) == 1) {
            param0->unk_A10 = 0;
            return 1;
        }
    }

    return 0;
}

BOOL ov17_0224F3D0 (UnkStruct_ov17_0224F30C * param0)
{
    return param0->unk_A10;
}

int ov17_0224F3D8 (UnkStruct_ov17_0224F30C * param0, void * param1)
{
    UnkStruct_ov17_02243C80 * v0;
    void * v1;
    UnkStruct_ov17_0224F3D8 v2;
    int v3;

    MI_CpuClear8(&v2, sizeof(UnkStruct_ov17_0224F3D8));

    if (1) {
        for (v3 = 0; v3 < 4; v3++) {
            if (param0->unk_A11[v3] == 1) {
                ov17_0224F2DC(param0, v3, &v0, &v1);

                if (ov17_0224F344(param0->unk_06, param0->unk_08, v0->unk_04) == 1) {
                    if (v0->unk_02 < param0->unk_04) {
                        if (v0->unk_06 == 0) {
                            param0->unk_00[v0->unk_02].unk_04(param0, param1, v0, v1);
                        } else {
                            if (param0->unk_00[v0->unk_02].unk_08 != NULL) {
                                v2.unk_00[v3] = v1;
                                param0->unk_00[v0->unk_02].unk_08(param0, param1, v0, &v2, v3);
                            }

                            ov17_0224F1E0(param0, v0->unk_05);

                            param0->unk_A15++;
                        }
                    } else {
                        (void)0;
                    }
                }

                param0->unk_A11[v3] = 0;
                MI_CpuClear8(param0->unk_210[v3], 512);
                return 1;
            }
        }
    }

    return 0;
}

BOOL ov17_0224F4B8 (UnkStruct_ov17_0224F30C * param0, int param1, int param2, int param3)
{
    if (param2 != param3) {
        return 1;
    }

    if (param0->unk_A15 >= param1) {
        return 1;
    }

    return 0;
}
