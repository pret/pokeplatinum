#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0202440C.h"
#include "struct_defs/struct_0202E768.h"
#include "struct_defs/struct_0202E794.h"

#include "unk_020021B0.h"
#include "heap.h"
#include "unk_0202440C.h"
#include "unk_020244AC.h"
#include "unk_02025E08.h"
#include "unk_02025E68.h"
#include "unk_020329E0.h"
#include "overlay059/ov59_021D2B44.h"

__attribute__((aligned(4))) static const u8 Unk_ov59_021D33B0[] = {
    0x2,
    0x4,
    0x6,
    0x7,
    0x9,
    0xA,
    0xB,
    0xD,
    0xE,
    0xF,
    0x10,
    0x11,
    0x12,
    0x13,
    0xff
};

__attribute__((aligned(4))) static const u8 Unk_ov59_021D33D0[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x6,
    0x7,
    0x8,
    0xA,
    0xD,
    0xF,
    0x10,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0x19,
    0x1A,
    0xff
};

__attribute__((aligned(4))) static const u8 Unk_ov59_021D3398[] = {
    0x1,
    0x3,
    0x4,
    0x5,
    0x8,
    0x9,
    0xA,
    0xB,
    0xff
};

__attribute__((aligned(4))) static const u8 Unk_ov59_021D33A4[] = {
    0x2,
    0x4,
    0x6,
    0x7,
    0x9,
    0xA,
    0xB,
    0xD,
    0xff
};

__attribute__((aligned(4))) static const u8 Unk_ov59_021D33C0[] = {
    0x1,
    0x2,
    0x3,
    0x4,
    0x6,
    0xA,
    0xD,
    0xF,
    0x11,
    0x12,
    0x13,
    0x14,
    0x15,
    0x16,
    0x17,
    0xff
};

__attribute__((aligned(4))) static const u8 Unk_ov59_021D3390[] = {
    0x1,
    0x3,
    0x4,
    0x6,
    0x8,
    0x9,
    0xff
};

static const u8 * const Unk_ov59_021D33E4[] = {
    Unk_ov59_021D33B0,
    Unk_ov59_021D33D0,
    Unk_ov59_021D3398,
    Unk_ov59_021D33A4,
    Unk_ov59_021D33C0,
    Unk_ov59_021D3390
};

u32 ov59_021D2B44 (const UnkStruct_021C0794 * param0)
{
    return sizeof(UnkStruct_0202E794) * 4;
}

u32 ov59_021D2B4C (const UnkStruct_021C0794 * param0)
{
    return sizeof(UnkStruct_0202E794) * 4;
}

u32 ov59_021D2B54 (const UnkStruct_021C0794 * param0)
{
    return sizeof(UnkStruct_0202E794) * 4;
}

static BOOL ov59_021D2B5C (int param0, int param1)
{
    int v0;

    for (v0 = 0; Unk_ov59_021D33E4[param0][v0] != 0xff; v0++) {
        if (Unk_ov59_021D33E4[param0][v0] == param1) {
            return 1;
        }
    }

    return 0;
}

static void ov59_021D2B90 (UnkStruct_021C0794 * param0, UnkStruct_0202E794 * param1, UnkStruct_0202E768 * param2, int param3, int param4, int param5)
{
    int v0;
    UnkStruct_02025E6C * v1 = sub_02025E38(param0);

    for (v0 = 0; v0 < param3; v0++, param1++) {
        MI_CpuClearFast(param1, sizeof(UnkStruct_0202E794));

        param1->unk_00 = sub_02025F20(v1);
        param1->unk_04 = sub_02025F30(v1);
        param1->unk_05 = GAME_VERSION;
        param1->unk_06 = GAME_LANGUAGE;

        sub_020021D0(param1->unk_08, sub_02025EF0(v1), 7 + 1);

        param1->unk_18 = param2[v0].unk_00;
        param1->unk_18.unk_01 = 0;

        if ((param4 == 1) && (ov59_021D2B5C(param5, param1->unk_18.unk_00) == 0)) {
            param1->unk_18.unk_00 = 0;
        }
    }
}

UnkStruct_0202E794 * ov59_021D2C28 (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B44(param0));
    ov59_021D2B90(param0, v0, v1->unk_17C, 4, 1, 3);

    return v0;
}

UnkStruct_0202E794 * ov59_021D2C70 (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B4C(param0));
    ov59_021D2B90(param0, v0, v1->unk_0C, 4, 1, 4);

    return v0;
}

UnkStruct_0202E794 * ov59_021D2CB4 (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B54(param0));
    ov59_021D2B90(param0, v0, v1->unk_C4, 4, 1, 5);

    return v0;
}

UnkStruct_0202E794 * ov59_021D2CF8 (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B44(param0));
    ov59_021D2B90(param0, v0, v1->unk_17C, 4, 0, 0);

    return v0;
}

UnkStruct_0202E794 * ov59_021D2D3C (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B4C(param0));
    ov59_021D2B90(param0, v0, v1->unk_0C, 4, 0, 1);

    return v0;
}

UnkStruct_0202E794 * ov59_021D2D80 (UnkStruct_021C0794 * param0, int param1, u32 param2)
{
    UnkStruct_0202E794 * v0;
    UnkStruct_0202440C * v1;

    v0 = AllocFromHeapAtEnd(param1, param2);
    v1 = sub_0202440C(param0);

    GF_ASSERT(param2 == ov59_021D2B54(param0));
    ov59_021D2B90(param0, v0, v1->unk_C4, 4, 0, 2);

    return v0;
}

static BOOL ov59_021D2DC4 (UnkStruct_0202E794 * param0, int param1, const UnkStruct_0202E794 * param2, int param3)
{
    int v0;

    if (param2->unk_18.unk_00 == 0) {
        return 0;
    }

    if (ov59_021D2B5C(param3, param2->unk_18.unk_00) == 0) {
        return -1;
    }

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_18.unk_00 == 0) {
            param0[v0] = *param2;
            return 1;
        }
    }

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_18.unk_01 >= 3) {
            param0[v0] = *param2;
            return 1;
        }
    }

    return 0;
}

static const void ** ov59_021D2E40 (int param0, const void ** param1, const void ** param2)
{
    UnkStruct_02025E6C * v0;

    v0 = sub_02032EE8(param0);

    if (v0 == NULL) {
        return NULL;
    }

    if (sub_02025FCC(v0) == 0) {
        return param2;
    }

    return param1;
}

static void ov59_021D2E60 (UnkStruct_0202E794 * param0, int param1, int param2, int param3, const void ** param4, const void ** param5, int param6)
{
    u8 v0[16];
    int v1, v2, v3;
    const void ** v4;

    for (v2 = 0; v2 < param2; v2++) {
        (void)0;
    }

    MI_CpuClear8(v0, 16);

    v1 = 0;

    for (v2 = 0; v2 < param2; v2++) {
        if (param4[v2] == NULL) {
            continue;
        }

        for (v3 = 0; v3 < 4; v3++) {
            while (param4[v1] == NULL || v1 == v2 || v0[v1] == 4) {
                v1++;
                v1 %= param2;
            }

            v0[v1]++;

            if (v1 != param3) {
                v4 = ov59_021D2E40(v1, param4, param5);

                if (v4 != NULL) {
                    ov59_021D2DC4(param0, param1, &((UnkStruct_0202E794 *)v4[v1])[v3], param6);
                }
            }
        }
    }

    sub_02025C84(27);
}

void ov59_021D2F10 (UnkStruct_0202440C * param0, int param1, int param2, const void ** param3, const void ** param4)
{
    ov59_021D2E60(param0->unk_234, 16, param1, param2, param3, param4, 1);
}

void ov59_021D2F38 (UnkStruct_0202440C * param0, int param1, int param2, const void ** param3, const void ** param4)
{
    ov59_021D2E60(param0->unk_684, 8, param1, param2, param3, param4, 2);
}

void ov59_021D2F60 (UnkStruct_0202440C * param0, int param1, int param2, const void ** param3, const void ** param4)
{
    ov59_021D2E60(param0->unk_8AC, 8, param1, param2, param3, param4, 0);
}
