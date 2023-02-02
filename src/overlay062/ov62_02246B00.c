#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020279FC.h"
#include "overlay062/struct_ov62_02246B00.h"
#include "overlay062/struct_ov62_02246BF4.h"
#include "overlay062/struct_ov62_02246BF4_sub1.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_02023790.h"
#include "unk_02023FCC.h"
#include "overlay062/ov62_02246B00.h"

static inline void inline_ov62_02247CE0(UnkStruct_ov62_02246BF4 * param0, int param1, s16 param2, s16 param3);

UnkStruct_ov62_02246B00 * ov62_02246B00 (int param0, int param1, int param2[], UnkStruct_020279FC * param3)
{
    int v0;
    UnkStruct_ov62_02246B00 * v1 = NULL;

    v1 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov62_02246B00));
    MI_CpuFill8(v1, 0, sizeof(UnkStruct_ov62_02246B00));
    v1->unk_00 = param1;
    v1->unk_18 = sub_02023790(param1 + 1, param0);
    v1->unk_1C = param3;

    for (v0 = 0; v0 < 3; v0++) {
        v1->unk_04[v0] = param2[v0];
    }

    v1->unk_04[v0] = param2[v0 - 1];

    return v1;
}

void ov62_02246B4C (UnkStruct_ov62_02246B00 * param0)
{
    GF_ASSERT(param0->unk_18 != NULL);
    GF_ASSERT(param0 != NULL);

    sub_020237BC(param0->unk_18);
    Heap_FreeToHeap(param0);
}

void ov62_02246B70 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    int v0;

    param0->unk_20C = param0->unk_208;
    param0->unk_208 = param1;
    param0->unk_210 = 0;
    param0->unk_214 = 0;
    param0->unk_218 = 0;
    param0->unk_21C = 0;

    if (param0->unk_208 != 0) {
        param0->unk_210 = param0->unk_1E4[param0->unk_208 - 1][0];
        param0->unk_214 = param0->unk_1E4[param0->unk_208 - 1][1];
    }

    if (param0->unk_20C != 0) {
        param0->unk_218 = param0->unk_1E4[param0->unk_20C - 1][0];
        param0->unk_21C = param0->unk_1E4[param0->unk_20C - 1][1];
    }
}

void ov62_02246BF4 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;

    param0->unk_220.unk_78 = 1;

    {
        param0->unk_1E4[0][0] = 0;
        param0->unk_1E4[0][1] = param0->unk_2A8.unk_04[0];
        param0->unk_1E4[1][0] = param0->unk_2A8.unk_04[0];
        param0->unk_1E4[1][1] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1];
        param0->unk_1E4[2][0] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1];
        param0->unk_1E4[2][1] = param0->unk_2A8.unk_04[0] + param0->unk_2A8.unk_04[1] + param0->unk_2A8.unk_04[2];
    }

    ov62_02246B70(param0, 1);

    for (v0 = 0; v0 < 3; v0++) {
        param0->unk_204 += param0->unk_2A8.unk_04[v0];
    }

    {
        int v1 = 0;
        const v2[][3] = {
            {56, 20, 8},
            {56, 12, 0},
        };

        if (param0->unk_2A8.unk_04[0] != 4) {
            v1 = 1;
        }

        for (v0 = 0; v0 < 3; v0++) {
            param0->unk_1DC[v0] = v2[v1][v0];
        }

        param0->unk_1DC[v0] = v2[v1][v0 - 1];
    }

    {
        int v3 = 0;

        for (v0 = 0; v0 < 3 - 1; v0++) {
            v3 += param0->unk_2A8.unk_04[v0];
            param0->unk_150[v0].unk_00 = v3 - 1;
        }
    }

    {
        int v4;
        int v5 = 0;

        v0 = 0;

        do {
            for (v4 = 0; v4 < param0->unk_2A8.unk_04[v5]; v4++) {
                param0->unk_00[v0].unk_04 = v5 + 1;
                v0++;
            }

            v5++;
        } while (v0 < param0->unk_204);
    }
}

void ov62_02246D60 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    param0->unk_1F4 = param1;
    param0->unk_1F8 = 0;
    param0->unk_1FC = 0;
    param0->unk_200 = 0;
}

BOOL ov62_02246D78 (UnkStruct_ov62_02246BF4 * param0)
{
    ov62_02246BF4(param0);
    ov62_02247220(param0);
    ov62_02247574(param0);
    ov62_02247B48(param0);
    ov62_02247754(param0);
    ov62_02247B88(param0, 0);
    ov62_0224784C(param0);
    ov62_02247CE0(param0);
    ov62_02246D60(param0, 1);

    return 0;
}

BOOL ov62_02246DB8 (UnkStruct_ov62_02246BF4 * param0)
{
    sub_02024034(param0->unk_220.unk_14);
    ov62_02247694(param0);

    return 1;
}

BOOL ov62_02246DD0 (UnkStruct_ov62_02246BF4 * param0)
{
    switch (param0->unk_1FC) {
    case 0:
        param0->unk_1FC++;
        break;
    default:
        ov62_022474A8(param0);
        sub_0202404C(param0->unk_220.unk_14);
        break;
    }

    return 0;
}

BOOL ov62_02246DF8 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;
    static f32 v1[] = {
        0.5f, 0.2f, 0.5f, 1.0f, 1.2f, 1.0f, 1.0f
    };
    static f32 v2[] = {
        0.8f, 0.6f, 0.4f, 0.2f, 0.8f, 1.0f, 1.0f
    };

    switch (param0->unk_1FC) {
    case 0:
        ov62_02247968(param0, 0, 0);
        {
            for (v0 = 0; v0 < param0->unk_204; v0++) {
                if (param0->unk_00[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                sub_0200D5DC(param0->unk_00[v0].unk_0C, param0->unk_00[v0].unk_14.unk_00, param0->unk_00[v0].unk_14.unk_02);
                param0->unk_00[v0].unk_14.unk_04--;

                if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
                    sub_0200D6E8(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                    sub_0200D6A4(param0->unk_00[v0].unk_0C, 2);
                }

                if ((v0 >= param0->unk_218) && (v0 < param0->unk_21C)) {
                    sub_0200D6E8(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
                    param0->unk_00[v0].unk_14.unk_05++;
                    sub_0200D6A4(param0->unk_00[v0].unk_0C, 2);
                }
            }

            for (v0 = 0; v0 < 3 - 1; v0++) {
                if (param0->unk_150[v0].unk_14.unk_04 == 0) {
                    continue;
                }

                sub_0200D5DC(param0->unk_150[v0].unk_0C, param0->unk_150[v0].unk_14.unk_00, param0->unk_150[v0].unk_14.unk_02);
                param0->unk_150[v0].unk_14.unk_04--;
            }

            if (param0->unk_00[0].unk_14.unk_04 == 0) {
                for (v0 = param0->unk_210; v0 < param0->unk_214; v0++) {
                    sub_0200D364(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    sub_0200D330(param0->unk_00[v0].unk_0C);
                }

                for (v0 = param0->unk_218; v0 < param0->unk_21C; v0++) {
                    sub_0200D364(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
                    sub_0200D330(param0->unk_00[v0].unk_0C);
                }
                param0->unk_1FC++;
            }
            param0->unk_200++;
        }
        break;
    case 1:
        for (v0 = param0->unk_210; v0 < param0->unk_214; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                sub_0200D6A4(param0->unk_00[v0].unk_0C, 1);
                continue;
            }

            sub_0200D6E8(param0->unk_00[v0].unk_0C, v1[param0->unk_00[v0].unk_14.unk_05], v1[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        for (v0 = param0->unk_218; v0 < param0->unk_21C; v0++) {
            if (param0->unk_00[v0].unk_14.unk_05 == 6) {
                sub_0200D6A4(param0->unk_00[v0].unk_0C, 1);
                continue;
            }

            sub_0200D6E8(param0->unk_00[v0].unk_0C, v2[param0->unk_00[v0].unk_14.unk_05], v2[param0->unk_00[v0].unk_14.unk_05]);
            param0->unk_00[v0].unk_14.unk_05++;
        }

        param0->unk_200++;

        if (param0->unk_200 == 6) {
            param0->unk_1FC++;
        }
        break;
    default:
        ov62_02247CE0(param0);

        if (param0->unk_29C.unk_08 == 0) {
            ov62_02247998(param0, ov62_02247518(param0, param0->unk_29C.unk_04));
        } else {
            ov62_02247998(param0, ov62_02247540(param0, param0->unk_29C.unk_04));
        }

        if (param0->unk_208 != 0) {
            ov62_02247968(param0, 0, 1);
        }

        ov62_02247504(param0);
        ov62_02246D60(param0, 1);
        break;
    }

    return 0;
}

static BOOL(*const Unk_ov62_02249700[])(UnkStruct_ov62_02246BF4 * wk) = {
    ov62_02246D78,
    ov62_02246DD0,
    ov62_02246DF8,
    ov62_02246DB8,
};

BOOL ov62_02247084 (UnkStruct_ov62_02246BF4 * param0)
{
    BOOL v0;

    v0 = Unk_ov62_02249700[param0->unk_1F4](param0);

    if (v0 == 0) {
        ov62_02247A70(param0);
    }

    return v0;
}

void ov62_022470A8 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;
    u32 v1 = 0;
    UnkStruct_02023790 * v2 = sub_02023790(100, 102);

    param0->unk_2C8 = 1;
    param0->unk_2CC = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_00 == 0) {
            param0->unk_00[v0].unk_00 = 1;
            sub_0200D364(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        }

        v1 = param0->unk_00[v0].unk_00 - 1;

        if (v0 != 0) {
            param0->unk_2CC *= 10;
        }

        param0->unk_2CC += v1;

        sub_020238A0(v2, v1, 1, 1, 1);
        sub_02023E4C(param0->unk_2A8.unk_18, v2);
    }

    sub_020237BC(v2);
    ov62_02246D60(param0, 3);
}

void ov62_02247160 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;
    int v1;
    int v2;

    if (param0->unk_208 == 0) {
        v0 = param0->unk_188[0].unk_00 = param0->unk_204 - 1;
        v2 = param0->unk_00[v0].unk_04;
        param0->unk_29C.unk_00 = 1;
        param0->unk_29C.unk_04 = v2;
        param0->unk_29C.unk_08 = 1;
        return;
    }

    v0 = param0->unk_188[0].unk_00;
    param0->unk_00[v0].unk_00 = 0;

    sub_0200D364(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));

    v1 = param0->unk_00[v0].unk_04;

    if (v0 > 0) {
        v0--;
        sub_0200D364(param0->unk_00[v0].unk_0C, ov62_02247B3C(param0->unk_00[v0].unk_00, param0->unk_00[v0].unk_08));
        v2 = param0->unk_00[v0].unk_04;

        if (v1 != v2) {
            param0->unk_29C.unk_00 = 1;
            param0->unk_29C.unk_04 = v2;
            param0->unk_29C.unk_08 = 1;
        } else {
            param0->unk_29C.unk_00 = 2;
            param0->unk_29C.unk_04 = v0;
        }
    } else {
        param0->unk_2C8 = 0;
        ov62_02246D60(param0, 3);
    }
}

void ov62_02247220 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < 11 + 1; v0++) {
        param0->unk_00[v0].unk_10 = &param0->unk_220.unk_18[v0];
    }

    {
        const s16 v1[][4] = {
            {32, 80, 20, 20},
            {80, 80, 20, 20},
            {128, 80, 20, 20},
            {176, 80, 20, 20},
            {224, 80, 20, 20},
            {32, 128, 20, 20},
            {80, 128, 20, 20},
            {128, 128, 20, 20},
            {176, 128, 20, 20},
            {224, 128, 20, 20},
            {64 + 12, 176, 60, 12},
            {192, 176, 60, 12},
        };

        for ( ; v0 < 24; v0++) {
            param0->unk_220.unk_18[v0].val1.unk_00 = v1[v0 - 12][1] - v1[v0 - 12][3];
            param0->unk_220.unk_18[v0].val1.unk_02 = v1[v0 - 12][0] - v1[v0 - 12][2];
            param0->unk_220.unk_18[v0].val1.unk_01 = v1[v0 - 12][1] + v1[v0 - 12][3];
            param0->unk_220.unk_18[v0].val1.unk_03 = v1[v0 - 12][0] + v1[v0 - 12][2];
        }

        param0->unk_220.unk_18[22].val1.unk_00 = 152;
        param0->unk_220.unk_18[22].val1.unk_02 = 32;
        param0->unk_220.unk_18[22].val1.unk_01 = 152 + 32;
        param0->unk_220.unk_18[22].val1.unk_03 = 128;
        param0->unk_220.unk_18[23].val1.unk_00 = 152;
        param0->unk_220.unk_18[23].val1.unk_02 = 128;
        param0->unk_220.unk_18[23].val1.unk_01 = 152 + 32;
        param0->unk_220.unk_18[23].val1.unk_03 = 224;
    }

    param0->unk_220.unk_14 = sub_02023FCC(param0->unk_220.unk_18, 24, ov62_0224730C, param0, 102);
}

void ov62_0224730C (u32 param0, u32 param1, void * param2)
{
    UnkStruct_ov62_02246BF4 * v0 = param2;

    if (v0->unk_1F4 != 1) {
        return;
    }

    if (v0->unk_220.unk_78 != 1) {
        v0->unk_220.unk_78 = 1;
    }

    if (param1 == 0) {
        if ((param0 >= 0) && (param0 <= 11)) {
            if (v0->unk_00[param0].unk_08 == 1) {
                v0->unk_29C.unk_00 = 2;
                v0->unk_29C.unk_04 = param0;
            } else {
                v0->unk_29C.unk_00 = 1;
                v0->unk_29C.unk_04 = v0->unk_00[param0].unk_04;
            }

            sub_02005748(1379);
        } else {
            if (param0 == 22) {
                v0->unk_188[1].unk_14.unk_00 = 0;
                v0->unk_188[1].unk_14.unk_02 = 2;
            } else if (param0 == 23) {
                v0->unk_188[1].unk_14.unk_00 = 3;
                v0->unk_188[1].unk_14.unk_02 = 2;
            } else {
                v0->unk_188[1].unk_14.unk_00 = (param0 - 12) % 5;
                v0->unk_188[1].unk_14.unk_02 = (param0 - 12) / 5;
            }

            if ((param0 >= 12) && (param0 <= 21)) {
                int v1;
                int v2;
                int v3;

                if (v0->unk_208 == 0) {
                    return;
                }

                sub_02005748(1379);

                v1 = v0->unk_188[0].unk_00;
                v0->unk_00[v1].unk_00 = param0 - 12 + 1;

                sub_0200D364(v0->unk_00[v1].unk_0C, ov62_02247B3C(v0->unk_00[v1].unk_00, v0->unk_00[v1].unk_08));
                ov62_02247968(v0, 1, 1);
                ov62_022479D4(v0, param0 - 12);
                ov62_02247968(v0, 1, 0);
                ov62_02247968(v0, 2, 1);
                ov62_02247A20(v0, param0 - 12, 2);
                sub_0200D364(v0->unk_188[2].unk_0C, 3);

                v2 = v0->unk_00[v1].unk_04;
                v1++;

                if (v1 == v0->unk_204) {
                    v0->unk_29C.unk_00 = 1;
                    v0->unk_29C.unk_04 = 0;
                    v0->unk_29C.unk_08 = 0;
                } else {
                    v3 = v0->unk_00[v1].unk_04;

                    if (v2 != v3) {
                        v0->unk_29C.unk_00 = 1;
                        v0->unk_29C.unk_04 = v3;
                        v0->unk_29C.unk_08 = 0;
                    } else {
                        v0->unk_29C.unk_00 = 2;
                        v0->unk_29C.unk_04 = v1;
                    }
                }
            } else {
                if (param0 == 22) {
                    sub_02005748(1379);
                    ov62_02247160(v0);
                } else {
                    sub_02005748(1379);
                    ov62_022470A8(v0);
                }
            }
        }
    }
}

void ov62_022474A8 (UnkStruct_ov62_02246BF4 * param0)
{
    switch (param0->unk_29C.unk_00) {
    case 0:
        break;
    case 1:
        ov62_02246B70(param0, param0->unk_29C.unk_04);
        ov62_02247B48(param0);
        ov62_02247B88(param0, 1);
        ov62_02246D60(param0, 2);
        param0->unk_29C.unk_00 = 255;
        break;
    case 2:
        ov62_02247998(param0, param0->unk_29C.unk_04);
        ov62_02247504(param0);
        break;
    case 255:
        break;
    }
}

void ov62_02247504 (UnkStruct_ov62_02246BF4 * param0)
{
    param0->unk_29C.unk_00 = 0;
    param0->unk_29C.unk_04 = 0;
    param0->unk_29C.unk_08 = 0;
}

int ov62_02247518 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            return v0;
        }
    }

    return 0;
}

int ov62_02247540 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    int v0;
    int v1 = 0;
    int v2 = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if (param0->unk_00[v0].unk_04 == param1) {
            v2 = 1;
        } else {
            if (v2 == 1) {
                return v0 - 1;
            }
        }
    }

    return param0->unk_204 - 1;
}

void ov62_02247574 (UnkStruct_ov62_02246BF4 * param0)
{
    NARC * v0;
    UnkStruct_02018340 * v1;
    UnkStruct_0200C6E4 * v2;
    UnkStruct_0200C704 * v3;
    UnkStruct_02002F38 * v4;

    v2 = param0->unk_220.unk_04;
    v3 = param0->unk_220.unk_08;
    v4 = param0->unk_220.unk_10;
    v1 = param0->unk_220.unk_0C;
    v0 = param0->unk_220.unk_00;

    sub_020070E8(v0, 54, param0->unk_220.unk_0C, 3, 0, 0, 0, 102);
    sub_0200710C(v0, 43, v1, 3, 0, 0, 0, 102);
    sub_0200CDC4(v4, 2, v2, v3, v0, 44, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    sub_0200CC3C(v2, v3, v0, 40, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1000);
    sub_0200CE24(v2, v3, v0, 41, 0, 1000);
    sub_0200CE54(v2, v3, v0, 42, 0, 1000);
    sub_0200CDC4(v4, 2, v2, v3, v0, 88, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    sub_0200CC3C(v2, v3, v0, 87, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1001);
    sub_0200CE24(v2, v3, v0, 85, 0, 1001);
    sub_0200CE54(v2, v3, v0, 86, 0, 1001);
}

void ov62_02247694 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        sub_0200D0F4(param0->unk_00[v0].unk_0C);
    }

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200D0F4(param0->unk_150[v0].unk_0C);
    }

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200D0F4(param0->unk_188[v0].unk_0C);
    }

    sub_0200D070(param0->unk_220.unk_08, 1000);
    sub_0200D080(param0->unk_220.unk_08, 1000);
    sub_0200D090(param0->unk_220.unk_08, 1000);
    sub_0200D0A0(param0->unk_220.unk_08, 1000);
    sub_0200D070(param0->unk_220.unk_08, 1001);
    sub_0200D080(param0->unk_220.unk_08, 1001);
    sub_0200D090(param0->unk_220.unk_08, 1001);
    sub_0200D0A0(param0->unk_220.unk_08, 1001);
}

void ov62_02247754 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;
    int v1 = 0;
    int v2 = 0;
    UnkStruct_ov104_0223F9E0 v3;
    UnkStruct_0200C6E4 * v4;
    UnkStruct_0200C704 * v5;
    UnkStruct_02002F38 * v6;

    v4 = param0->unk_220.unk_04;
    v5 = param0->unk_220.unk_08;
    v6 = param0->unk_220.unk_10;

    v3.unk_00 = 0;
    v3.unk_02 = 0;
    v3.unk_04 = 0;
    v3.unk_06 = 0;
    v3.unk_08 = 10;
    v3.unk_10 = 1;
    v3.unk_2C = 0;
    v3.unk_30 = 0;
    v3.unk_0C = 0;
    v3.unk_14[0] = 1000;
    v3.unk_14[1] = 1000;
    v3.unk_14[2] = 1000;
    v3.unk_14[3] = 1000;
    v3.unk_14[4] = 0xffffffff;
    v3.unk_14[5] = 0xffffffff;

    for (v0 = 0; v0 < param0->unk_204 + 3 - 1; v0++) {
        if (v0 == (param0->unk_150[v2].unk_00 + v2 + 1)) {
            param0->unk_150[v2].unk_0C = sub_0200CE6C(v4, v5, &v3);
            sub_0200D4C4(param0->unk_150[v2].unk_0C, 72 + (v0 * 8) + 4, 24);
            sub_0200D364(param0->unk_150[v2].unk_0C, 22);
            sub_0200D330(param0->unk_150[v2].unk_0C);
            v2++;
        } else {
            param0->unk_00[v1].unk_0C = sub_0200CE6C(v4, v5, &v3);
            sub_0200D4C4(param0->unk_00[v1].unk_0C, 72 + (v0 * 8) + 4, 24);
            sub_0200D364(param0->unk_00[v1].unk_0C, ov62_02247B3C(param0->unk_00[v1].unk_00, param0->unk_00[v1].unk_08));
            sub_0200D6A4(param0->unk_00[v1].unk_0C, 0);
            sub_0200D330(param0->unk_00[v1].unk_0C);
            v1++;
        }
    }
}

void ov62_0224784C (UnkStruct_ov62_02246BF4 * param0)
{
    UnkStruct_ov104_0223F9E0 v0;
    UnkStruct_0200C6E4 * v1;
    UnkStruct_0200C704 * v2;
    UnkStruct_02002F38 * v3;

    v1 = param0->unk_220.unk_04;
    v2 = param0->unk_220.unk_08;
    v3 = param0->unk_220.unk_10;

    v0.unk_00 = 0;
    v0.unk_02 = 0;
    v0.unk_04 = 0;
    v0.unk_06 = 0;
    v0.unk_08 = 0;
    v0.unk_10 = 1;
    v0.unk_2C = 0;
    v0.unk_30 = 0;
    v0.unk_0C = 0;
    v0.unk_14[0] = 1001;
    v0.unk_14[1] = 1001;
    v0.unk_14[2] = 1001;
    v0.unk_14[3] = 1001;
    v0.unk_14[4] = 0xffffffff;
    v0.unk_14[5] = 0xffffffff;

    param0->unk_188[0].unk_0C = sub_0200CE6C(v1, v2, &v0);
    param0->unk_188[1].unk_0C = sub_0200CE6C(v1, v2, &v0);
    param0->unk_188[2].unk_0C = sub_0200CE6C(v1, v2, &v0);

    ov62_02247998(param0, 0);
    sub_0200D364(param0->unk_188[0].unk_0C, 0);
    sub_0200D330(param0->unk_188[0].unk_0C);

    param0->unk_188[1].unk_14.unk_00 = 0;
    param0->unk_188[1].unk_14.unk_02 = 0;
    param0->unk_188[1].unk_00 = 1;

    ov62_022479D4(param0, 0);
    sub_0200D364(param0->unk_188[1].unk_0C, param0->unk_188[1].unk_00);
    sub_0200D330(param0->unk_188[1].unk_0C);
    sub_0200D810(param0->unk_188[1].unk_0C, GX_OAM_MODE_XLU);

    param0->unk_188[2].unk_14.unk_00 = 0;
    param0->unk_188[2].unk_14.unk_02 = 0;
    param0->unk_188[2].unk_00 = 1;

    ov62_022479D4(param0, 0);
    sub_0200D364(param0->unk_188[2].unk_0C, param0->unk_188[2].unk_00);
    sub_0200D330(param0->unk_188[2].unk_0C);
    sub_0200D810(param0->unk_188[2].unk_0C, GX_OAM_MODE_XLU);
    ov62_02247968(param0, 1, 0);
    ov62_02247968(param0, 2, 0);
}

void ov62_02247968 (UnkStruct_ov62_02246BF4 * param0, int param1, BOOL param2)
{
    if (param2 == 1) {
        sub_0200D3F4(param0->unk_188[param1].unk_0C, 1);
    } else {
        sub_0200D3F4(param0->unk_188[param1].unk_0C, 0);
    }
}

void ov62_02247998 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    s16 v0, v1;
    UnkStruct_0200D0F4 * v2;

    v2 = param0->unk_00[param1].unk_0C;
    param0->unk_188[0].unk_00 = param1;

    sub_0200D550(v2, &v0, &v1);
    sub_0200D4C4(param0->unk_188[0].unk_0C, v0, v1 + 16);
}

void ov62_022479D4 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    s16 v0, v1;

    v0 = (param0->unk_220.unk_18[param1 + 12].val1.unk_02 + param0->unk_220.unk_18[param1 + 12].val1.unk_03) / 2;
    v1 = (param0->unk_220.unk_18[param1 + 12].val1.unk_00 + param0->unk_220.unk_18[param1 + 12].val1.unk_01) / 2;

    sub_0200D4C4(param0->unk_188[1].unk_0C, v0 - 0, v1 - 8);
}

void ov62_02247A20 (UnkStruct_ov62_02246BF4 * param0, int param1, int param2)
{
    s16 v0, v1;

    v0 = (param0->unk_220.unk_18[param1 + 12].val1.unk_02 + param0->unk_220.unk_18[param1 + 12].val1.unk_03) / 2;
    v1 = (param0->unk_220.unk_18[param1 + 12].val1.unk_00 + param0->unk_220.unk_18[param1 + 12].val1.unk_01) / 2;

    sub_0200D4C4(param0->unk_188[param2].unk_0C, v0 - 0, v1 - 8);
}

void ov62_02247A70 (UnkStruct_ov62_02246BF4 * param0)
{
    sub_0200D330(param0->unk_188[0].unk_0C);
    sub_0200D330(param0->unk_188[1].unk_0C);
    sub_0200D330(param0->unk_188[2].unk_0C);

    {
        int v0 = 2;
        int v1;
        BOOL v2;

        for (v0 = 1; v0 < 3; v0++) {
            v1 = sub_0200D37C(param0->unk_188[v0].unk_0C);

            if (v1 == 3) {
                v2 = sub_0200D3B8(param0->unk_188[v0].unk_0C);

                if (v2 == 0) {
                    sub_0200D364(param0->unk_188[v0].unk_0C, param0->unk_188[v0].unk_00);

                    if (param0->unk_220.unk_78 == 1) {
                        ov62_02247968(param0, 1, 0);
                    } else {
                        ov62_02247968(param0, 1, 1);
                    }

                    ov62_02247968(param0, 2, 0);
                }
            } else {
                if (v1 != param0->unk_188[v0].unk_00) {
                    sub_0200D364(param0->unk_188[v0].unk_0C, param0->unk_188[v0].unk_00);
                }

                {
                    v1 = sub_0200D37C(param0->unk_188[2].unk_0C);

                    if (v1 != 3) {
                        if (param0->unk_220.unk_78 == 1) {
                            ov62_02247968(param0, 1, 0);
                        } else {
                            ov62_02247968(param0, 1, 1);
                        }
                    }
                }
            }
        }
    }
}

int ov62_02247B3C (int param0, BOOL param1)
{
    int v0 = 0;

    if (param1 == 0) {
        v0 = 11;
    }

    v0 += param0;
    return v0;
}

void ov62_02247B48 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            param0->unk_00[v0].unk_08 = 1;
        } else {
            param0->unk_00[v0].unk_08 = 0;
        }
    }
}

void ov62_02247B88 (UnkStruct_ov62_02246BF4 * param0, int param1)
{
    int v0;
    int v1;
    s16 v2;
    s16 v3, v4;

    v2 = param0->unk_1DC[param0->unk_208];
    v1 = 0;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            if (v0 == param0->unk_210) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 32;
            }
        } else {
            if (v0 == 0) {
                v2 += ((32 + 8) / 2);
            } else {
                v2 += 8;
            }
        }

        sub_0200D550(param0->unk_00[v0].unk_0C, &v3, &v4);

        if (param1 == 0) {
            sub_0200D4C4(param0->unk_00[v0].unk_0C, v2, v4);
        } else {
            param0->unk_00[v0].unk_14.unk_00 = (v2 - v3) / 2;
            param0->unk_00[v0].unk_14.unk_02 = 0;
            param0->unk_00[v0].unk_14.unk_04 = 2;
            param0->unk_00[v0].unk_14.unk_05 = 0;
        }

        if ((v0 == param0->unk_150[v1].unk_00) && (v1 != 3 - 1)) {
            sub_0200D550(param0->unk_150[v1].unk_0C, &v3, &v4);

            if (param0->unk_210 == param0->unk_214) {
                v2 += 8;
            } else {
                if ((v0 > param0->unk_210) && (v0 < param0->unk_214)) {
                    v2 += ((32 + 8) / 2);
                } else {
                    v2 += 8;
                }
            }

            if (param1 == 0) {
                sub_0200D4C4(param0->unk_150[v1].unk_0C, v2, v4);
            } else {
                param0->unk_150[v1].unk_14.unk_00 = (v2 - v3) / 2;
                param0->unk_150[v1].unk_14.unk_02 = 0;
                param0->unk_150[v1].unk_14.unk_04 = 2;
            }

            v1++;
        }
    }
}

static inline void inline_ov62_02247CE0 (UnkStruct_ov62_02246BF4 * param0, int param1, s16 param2, s16 param3)
{
    s16 v0, v1;
    UnkStruct_ov62_02246BF4_sub1 * v2;

    v2 = &param0->unk_00[param1];

    sub_0200D550(v2->unk_0C, &v0, &v1);

    v2->unk_10->val1.unk_00 = v1 - param3;
    v2->unk_10->val1.unk_02 = v0 - param2;
    v2->unk_10->val1.unk_01 = v1 + param3;
    v2->unk_10->val1.unk_03 = v0 + param2;

    if (param1 == 0) {
        v2->unk_10->val1.unk_02 -= 4;
    }
}

void ov62_02247CE0 (UnkStruct_ov62_02246BF4 * param0)
{
    int v0;
    s16 v1;
    s16 v2;

    for (v0 = 0; v0 < param0->unk_204; v0++) {
        if ((v0 >= param0->unk_210) && (v0 < param0->unk_214)) {
            v1 = 32 / 2;
            v2 = 32 / 2;
        } else {
            v1 = 8 / 2;
            v2 = 8;
        }

        inline_ov62_02247CE0(param0, v0, v1, v2);
    }
}
