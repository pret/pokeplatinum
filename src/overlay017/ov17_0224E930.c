#include "overlay017/ov17_0224E930.h"

#include <nitro.h>
#include <string.h>

#include "overlay017/ov17_0223DAD0.h"
#include "overlay017/ov17_0224CFB8.h"
#include "overlay017/struct_ov17_0224D69C.h"
#include "overlay017/struct_ov17_0224DF54.h"
#include "overlay017/struct_ov17_0224E958.h"
#include "overlay017/struct_ov17_0224EDE0.h"
#include "overlay017/struct_ov17_02253084.h"

#include "unk_020933F8.h"

static int ov17_0224EBE0(int param0, int param1);
static int ov17_0224EC24(int param0, int param1, int param2, int param3, int param4, int param5, int param6);
static int ov17_0224ECC4(int param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7);
static void ov17_0224EDE0(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0224E958 *param1, u32 param2, u32 param3, u32 param4, const UnkStruct_ov17_02253084 *param5, UnkStruct_ov17_0224D69C *param6);
static void ov17_0224EE90(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0224E958 *param1, u32 param2, u32 param3, u32 param4, const UnkStruct_ov17_02253084 *param5, UnkStruct_ov17_0224D69C *param6);

__attribute__((aligned(4))) static const s8 Unk_ov17_02254A80[] = {
    0x1,
    0x2,
    0x3,
    0x4
};

__attribute__((aligned(4))) static const u8 Unk_ov17_02254A84[] = {
    0x5A,
    0x28,
    0x0,
    0x0
};

void ov17_0224E930(UnkStruct_ov17_0224E958 *param0, int param1, int param2, u32 param3, int param4) {
    MI_CpuClear8(param0, sizeof(UnkStruct_ov17_0224E958));

    param0->unk_37 = param1;
    param0->unk_38 = param2;
    param0->unk_30 = param3;
    param0->unk_39 = param4;
}

void ov17_0224E958(UnkStruct_ov17_0224E958 *param0) {
    u32 v0;
    int v1, v2, v3;

    v0 = param0->unk_30;
    v1 = param0->unk_37;
    v2 = param0->unk_38;
    v3 = param0->unk_39;

    MI_CpuClear8(param0, sizeof(UnkStruct_ov17_0224E958));

    param0->unk_30 = v0;
    param0->unk_37 = v1;
    param0->unk_38 = v2;
    param0->unk_39 = v3;
}

void ov17_0224E990(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0224E958 *param1, u32 param2, u32 param3) {
    int v0, v1, v2, v3, v4;
    u8 v5[(16 * 2) / 2];
    u32 v6;
    s32 v7;
    int v8;
    u32 v9;
    int v10 = ov17_0223F0BC(param0->unk_A3C.unk_2F, 4);

    if (param0->unk_A3C.unk_2F == 0) {
        v9 = (param3 / 4 + 10000 / 2) / 10000;
    } else {
        v9 = (param3 / 6 + 10000 / 2) / 10000;
    }

    switch (param0->unk_00->unk_00.unk_110) {
    case 0:
    case 1:
        v8 = 0;
        v1 = v10 / 2 / 2;
        v6 = param3;
        break;
    default:
        v8 = 1;
        v1 = v10 / 2;
        v6 = param3 / 2;
        break;
    }

    for (v0 = 0; v0 < v10 / 2; v0++) {
        v5[v0] = 0;
    }

    v3 = 0;

    while (TRUE) {
        v2 = sub_02094EA0(param1->unk_30, &param1->unk_30) % v1;

        if (v2 == 0) {
            continue;
        }

        if (v5[v2] == 0) {
            if (v8 == 1) {
                if ((v2 == v1 - 1) && ((v5[v2 - 1]) == 1)) {
                    continue;
                } else if ((v5[v2 - 1] == 1) || (v5[v2 + 1] == 1)) {
                    continue;
                }

                if ((v2 & 1) && ((sub_02094EA0(param1->unk_30, &param1->unk_30) & 0xff) < 128)) {
                    continue;
                }
            }

            v5[v2] = 1;
            v3++;

            if (v3 >= param0->unk_A3C.unk_2E) {
                break;
            }
        }
    }

    v3 = 0;

    for (v0 = 0; v0 < v10 / 2; v0++) {
        if (v5[v0] == 1) {
            param1->unk_00_val1.unk_00[v3] = (v0 * v6 + 10000 / 2) / 10000;
            v3++;
        }
    }

    v4 = ov17_0224EBE0(param0->unk_00->unk_00.unk_110, param1->unk_39);

    for (v0 = 0; v0 < param0->unk_A3C.unk_2E; v0++) {
        s32 v11;

        v11 = param1->unk_00_val1.unk_00[v0] + (sub_02094EA0(param1->unk_30, &param1->unk_30) % (2 + v4)) - (1 + v4 / 2);

        if (v11 < 0) {
            v11 = 0;
        }

        if (v11 - param1->unk_00_val1.unk_00[v0] >= v9) {
            v11 = param1->unk_00_val1.unk_00[v0] + v9 - 1;
        }

        param1->unk_00_val1.unk_00[v0] = v11;
        param1->unk_00_val1.unk_28[v0] = 1;
    }

    {
        int v12;

        v12 = Unk_ov17_02254A84[param0->unk_00->unk_00.unk_110];
        param1->unk_00_val1.unk_20[0] = 0 + (sub_02094EA0(param1->unk_30, &param1->unk_30) % 4);

        for (v0 = 1; v0 < param0->unk_A3C.unk_2E; v0++) {
            if ((v0 < param0->unk_A3C.unk_2E - 1) && (v12 > sub_02094EA0(param1->unk_30, &param1->unk_30) % 100)) {
                param1->unk_00_val1.unk_20[v0] = param1->unk_00_val1.unk_20[v0 - 1];
            } else {
                param1->unk_00_val1.unk_20[v0] = 0 + (sub_02094EA0(param1->unk_30, &param1->unk_30) % 4);
            }
        }
    }
}

static int ov17_0224EBE0(int param0, int param1) {
    int v0;

    GF_ASSERT(NELEMS(Unk_ov17_02254A80) > param1);
    v0 = Unk_ov17_02254A80[param1];

    switch (param0) {
    case 0:
        v0 *= 2;
        break;
    case 1:
        break;
    case 2:
        v0 /= 2;
        break;
    case 3:
    default:
        v0 /= 3;
        break;
    }

    return v0;
}

static int ov17_0224EC24(int param0, int param1, int param2, int param3, int param4, int param5, int param6) {
    int v0 = 0;

    GF_ASSERT(NELEMS(Unk_ov17_02254A80) > param2);

    if (param4 != -1) {
        if (param5 == 0) {
            if ((param3 & 1) != (param4 & 1)) {
                v0 += 3;
            }
        }

        if (param3 - param4 <= 2 * 2) {
            v0--;
        }

        if (param3 - param4 >= 4 * 2) {
            v0 += 3;
        }
    }

    v0 = Unk_ov17_02254A80[param2];

    switch (param0) {
    case 0:
        v0 *= 2;
        break;
    case 1:
        v0 *= 2;
        break;
    case 2:
        if ((param6 == 1) && ((param1 == 2) || (param1 == 3))) {
            v0 = v0 * 3;
        } else {
            v0 += v0 / 2;
        }
        break;
    case 3:
    default:
        if ((param6 == 1) && ((param1 == 2) || (param1 == 3))) {
            v0 = v0 * 2 + v0 / 2;
        }
        break;
    }

    if (v0 < 0) {
        v0 = 0;
    }

    return v0;
}

static int ov17_0224ECC4(int param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7) {
    int v0 = 0;

    switch (param2) {
    case 0:
        if (param5 == 1) {
            v0 += 3;
        }
        break;
    case 1:
        if (param5 == 2) {
            v0 += 3;
        }
        break;
    case 2:
        if (param5 == 4) {
            v0 += 3;
        }
        break;
    case 3:
        if (param5 == 3) {
            v0 += 3;
        }
        break;
    }

    if (param6 != 0) {
        if (param5 != param6) {
            v0 += 8;
        }
    }

    if (param4 != -1) {
        if ((param3 & 1) != (param4 & 1)) {
            v0 += 2;
        }

        if (param3 - param4 >= 4 * 2) {
            v0 += 5;
        }
    }

    switch (param0) {
    case 0:
        v0 *= 2;
        break;
    case 1:
        v0 *= 2;
        break;
    case 2:
        if ((param7 == 1) && ((param1 == 2) || (param1 == 3))) {
            v0 *= 2;
        } else {
            v0 += v0 / 2;
        }
        break;
    case 3:
    default:
        if ((param7 == 1) && ((param1 == 2) || (param1 == 3))) {
            v0 += v0 / 2;
        }
        break;
    }

    return v0;
}

void ov17_0224ED8C(int param0, UnkStruct_ov17_0224DF54 *param1, UnkStruct_ov17_0224E958 *param2, u32 param3, u32 param4, u32 param5, const UnkStruct_ov17_02253084 *param6, UnkStruct_ov17_0224D69C *param7) {
    if ((param2->unk_38 == 0) && (param0 == 0)) {
        ov17_0224EDE0(param1, param2, param3, param4, param5, param6, param7);
    } else if ((param2->unk_38 != 0) && (param0 == 1)) {
        ov17_0224EE90(param1, param2, param3, param4, param5, param6, param7);
    }
}

static void ov17_0224EDE0(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0224E958 *param1, u32 param2, u32 param3, u32 param4, const UnkStruct_ov17_02253084 *param5, UnkStruct_ov17_0224D69C *param6) {
    UnkStruct_ov17_0224EDE0 v0;
    u32 v1 = param4 / 2;

    if ((param1->unk_38 != 0) || (param1->unk_36 >= param5->unk_05)) {
        return;
    }

    if (param1->unk_34 > 0) {
        param1->unk_34--;
        return;
    }

    {
        int v2;

        for (v2 = 0; v2 < 8; v2++) {
            if (param1->unk_00_val1.unk_28[v2] == 1) {
                break;
            }
        }

        if (v2 >= 8) {
            return;
        }

        if (param1->unk_00_val1.unk_00[v2] <= param2) {
            ov17_0224DE54(param1->unk_37, param1->unk_00_val1.unk_20[v2], param2, param4, &param5->unk_08, &v0, NULL, param1->unk_38, param1->unk_36, param5->unk_05, param0->unk_A3C.unk_2F);
            ov17_0224D6B0(param6, &v0);

            param1->unk_00_val1.unk_28[v2] = 0;
            param1->unk_36++;
            param1->unk_34 = param4 / 10000 - 2;
        }
    }
}

static void ov17_0224EE90(UnkStruct_ov17_0224DF54 *param0, UnkStruct_ov17_0224E958 *param1, u32 param2, u32 param3, u32 param4, const UnkStruct_ov17_02253084 *param5, UnkStruct_ov17_0224D69C *param6) {
    UnkStruct_ov17_0224EDE0 v0;
    UnkStruct_ov17_0224EDE0 *v1;
    u32 v2, v3;

    v2 = param4 / 2;

    if ((param1->unk_38 == 0) || (param1->unk_36 >= param5->unk_05) || (param0->unk_1AD4[param1->unk_36].unk_08_2 == 0)) {
        return;
    }

    if (param1->unk_34 > 0) {
        param1->unk_34--;
        return;
    }

    v1 = &param0->unk_1AD4[param1->unk_36];
    v3 = param2 - param3 / 2;

    if (param1->unk_00_val2.unk_05 == 0) {
        u32 v4;
        s32 v5;
        int v6, v7;
        int v8, v9, v10;

        if (param1->unk_36 == 0) {
            v10 = -1;
            v9 = 0;
        } else {
            v10 = param0->unk_1AD4[param1->unk_36 - 1].unk_06;
            v9 = param0->unk_1AD4[param1->unk_36 - 1].unk_03;
        }

        v6 = ov17_0224EC24(param0->unk_00->unk_00.unk_110, param0->unk_00->unk_00.unk_10F, param1->unk_39, v1->unk_06, v10, param0->unk_A3C.unk_2F, param0->unk_1B26);
        v7 = ov17_0224ECC4(param0->unk_00->unk_00.unk_110, param0->unk_00->unk_00.unk_10F, param1->unk_39, v1->unk_06, v10, v1->unk_03, v9, param0->unk_1B26);
        v4 = (v1->unk_06 * v2 + 10000 / 2) / 10000;
        v5 = (sub_02094EA0(param1->unk_30, &param1->unk_30) % (2 + v6)) - (1 + v6 / 2);

        if (v5 + (s32)v4 < 0) {
            v4 = 0;
        } else {
            v4 += v5;
        }

        if ((sub_02094EA0(param1->unk_30, &param1->unk_30) % 100) < (0 + v6 + v7)) {
            do {
                v8 = 0 + (sub_02094EA0(param1->unk_30, &param1->unk_30) % 4);
            } while (ov17_0224DD28(v8) == v1->unk_03);
        } else {
            v8 = ov17_0224DD5C(v1->unk_03);
        }

        param1->unk_00_val2.unk_00 = v4;
        param1->unk_00_val2.unk_04 = v8;
        param1->unk_00_val2.unk_05 = 1;
    }

    {
        if (param1->unk_00_val2.unk_00 <= v3) {
            ov17_0224DE54(param1->unk_37, param1->unk_00_val2.unk_04, param2, param4, &param5->unk_08, &v0, param0->unk_1AD4, param1->unk_38, param1->unk_36, param5->unk_05, param0->unk_A3C.unk_2F);
            ov17_0224D6B0(param6, &v0);

            param1->unk_00_val2.unk_05 = 0;
            param1->unk_36++;
            param1->unk_34 = param4 / 10000 - 2;
        }
    }
}
