#include <nitro.h>
#include <string.h>

#include "coresys.h"

#include "struct_decls/struct_0201CD38_decl.h"

#include "overlay022/struct_ov22_02255040.h"
#include "overlay022/struct_ov22_02257964.h"
#include "overlay022/struct_ov22_02257F50.h"
#include "overlay022/struct_ov22_02258A48.h"
#include "overlay022/struct_ov22_02259560.h"
#include "overlay022/struct_ov22_0225A0E4.h"
#include "overlay022/struct_ov22_0225A428.h"

#include "unk_02005474.h"
#include "unk_0200679C.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "overlay022/ov22_02255094.h"
#include "overlay022/ov22_022578F4.h"
#include "overlay022/ov22_02257F50.h"
#include "overlay022/ov22_022588F0.h"
#include "overlay022/ov22_022589E0.h"
#include "overlay022/ov22_02259098.h"
#include "overlay022/ov22_02259560.h"
#include "overlay022/ov22_0225A428.h"

typedef struct {
    UnkStruct_ov22_0225A0E4 * unk_00;
    UnkStruct_ov22_02257964 * unk_04;
    UnkStruct_ov22_02257F50 * unk_08;
    UnkStruct_ov22_0225A428 * unk_0C;
    UnkStruct_ov22_02259560 * unk_10;
    int unk_14;
    int unk_18;
    s16 unk_1C;
    s16 unk_1E;
    u8 unk_20;
    u8 unk_21;
    int unk_24;
    int unk_28;
    BOOL unk_2C;
    u32 unk_30;
} UnkStruct_ov22_02258EE4;

typedef struct {
    UnkStruct_ov22_02257F50 * unk_00;
    UnkStruct_ov22_02259560 * unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int * unk_24;
    u32 * unk_28;
} UnkStruct_ov22_02258FC0;

static void ov22_02258A48(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258BB8(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258D4C(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258E88(UnkStruct_ov22_02258EE4 * param0, UnkStruct_ov22_02259560 * param1, int param2, int param3, int param4, int param5);
static void ov22_02258EE4(UnkStruct_ov22_02258EE4 * param0);
static void ov22_02259040(UnkStruct_ov22_02258EE4 * param0);
static void ov22_02258D7C(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258DAC(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258EF8(UnkStruct_ov22_02258A48 * param0, int * param1, int * param2, int * param3, int * param4);
static void ov22_02258F38(UnkStruct_ov22_02258A48 * param0, int * param1, int * param2, int * param3, int * param4);
static void ov22_02259074(UnkStruct_ov22_02258A48 * param0, int param1, int param2);
static void ov22_02258B78(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258B74(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258E5C(UnkStruct_ov22_02258A48 * param0);
static void ov22_02258F4C(UnkStruct_ov22_02258EE4 * param0, int param1, int param2, int param3, int param4, int param5);
static void ov22_02258FC0(UnkStruct_0201CD38 * param0, void * param1);

void ov22_022589E0 (UnkStruct_ov22_02258A48 * param0, UnkStruct_ov22_02257964 * param1, UnkStruct_ov22_02257F50 * param2, UnkStruct_ov22_0225A0E4 * param3, UnkStruct_ov22_0225A428 * param4, BOOL param5)
{
    UnkStruct_ov22_02258EE4 * v0;

    ov22_022588F0(param0);

    param0->unk_00 = Heap_AllocFromHeap(13, sizeof(UnkStruct_ov22_02258EE4));
    memset(param0->unk_00, 0, sizeof(UnkStruct_ov22_02258EE4));
    v0 = param0->unk_00;

    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_00 = param3;
    v0->unk_0C = param4;
    v0->unk_2C = param5;

    param0->unk_04 = ov22_02258A48;
    param0->unk_08 = ov22_02258BB8;
    param0->unk_0C = ov22_02258D4C;
    param0->unk_10 = ov22_02258A34;
}

void ov22_02258A34 (UnkStruct_ov22_02258A48 * param0)
{
    Heap_FreeToHeap(param0->unk_00);
    ov22_022588F0(param0);
}

static void ov22_02258A48 (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    UnkStruct_ov22_02259560 * v1;
    BOOL v2;
    int v3, v4;
    int v5;
    int v6;

    v2 = ov22_02257BE8(v0->unk_04);

    if (v2) {
        v1 = ov22_02257C20(v0->unk_04, &v3, &v4, v0->unk_00->unk_38);

        if (v1) {
            if (v1->unk_04 == 3) {
                if (v0->unk_2C == 0) {
                    v1 = NULL;
                }
            }
        }

        if ((v1 != NULL)) {
            if (v1->unk_04 == 0) {
                ov22_02257A80(v0->unk_04, v1);
                v6 = 0;
            } else {
                ov22_022579E8(v1);
                v6 = ov22_022591E0(v1->unk_00);
                ov22_02259648(v1, &v0->unk_24, &v0->unk_28);
            }

            ov22_02257B10(v0->unk_04);
            ov22_02258E88(v0, v1, 1, v3, v4, v6);
            ov22_02255390();
        }
    } else {
        v2 = ov22_022582E8(v0->unk_08);

        if (v2) {
            v1 = ov22_02258320(v0->unk_08, &v3, &v4, v0->unk_00->unk_38);

            if (v1 != NULL) {
                ov22_022581B8(v1);
                ov22_022581EC(v0->unk_08);
                ov22_02258E88(v0, v1, 0, v3, v4, 0);
                ov22_02255390();
            }
        }
    }

    if (v0->unk_10) {
        int v7 = 1515;

        switch (v0->unk_10->unk_04) {
        case 0:
            param0->unk_08 = ov22_02258BB8;
            param0->unk_0C = ov22_02258D4C;
            break;
        case 1:
            param0->unk_08 = ov22_02258B78;
            param0->unk_0C = ov22_02258B74;
            ov22_02258E5C(param0);
            v7 = 1662;
            break;
        case 3:
            param0->unk_08 = ov22_02258D7C;
            param0->unk_0C = ov22_02258DAC;
            break;
        default:
            break;
        }

        sub_02005748(v7);
        ov22_02259040(v0);
    }
}

static void ov22_02258B74 (UnkStruct_ov22_02258A48 * param0)
{
    return;
}

static void ov22_02258B78 (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;

    if (v0->unk_10) {
        GF_ASSERT(v0->unk_10->unk_04 == 1);

        ov22_02258F4C(v0, 4, v0->unk_1C, v0->unk_1E, v0->unk_10->unk_04, v0->unk_21);
        ov22_02258EE4(v0);
    }
}

static void ov22_02258BB8 (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    int v1;
    int v2;
    int v3, v4, v5, v6;
    int v7, v8;
    int v9, v10;
    BOOL v11;

    if (v0->unk_10) {
        ov22_02258F38(param0, &v3, &v4, &v5, &v6);

        v2 = ov22_02257C04(v0->unk_04, v5, v3);
        v2 += ov22_02257C04(v0->unk_04, v6, v3);
        v2 += ov22_02257C04(v0->unk_04, v5, v4);
        v2 += ov22_02257C04(v0->unk_04, v6, v4);

        if (v2 >= 4) {
            v11 = ov22_02257A5C(v0->unk_04, v0->unk_10, v0->unk_00->unk_38);

            if (v11 == 0) {
                v9 = v0->unk_1C;
                v10 = v0->unk_1E;

                sub_02005748(1667);
                ov22_0225A628(v0->unk_0C, 26, 385, 3);
                ov22_02258F4C(v0, 4, v9, v10, v0->unk_10->unk_04, v0->unk_21);
            } else {
                ov22_02257B10(v0->unk_04);
                ov22_02255360();
                v0->unk_30 = 0;
                sub_02005748(1514);
            }
        } else {
            UnkStruct_ov22_02255040 * v12 = v0->unk_10->unk_00;

            ov22_02258EF8(param0, &v3, &v4, &v5, &v6);

            v2 = ov22_02258304(v0->unk_08, v5, v3);
            v2 += ov22_02258304(v0->unk_08, v6, v4);

            if (v2 < 2) {
                if (v0->unk_20 == 1) {
                    ov22_02259698(v0->unk_10, &v7, &v8);

                    v9 = ((8 + 2)) + (MTRNG_Next() % ((112 - (2 * 2)) - v7));
                    v10 = ((16 + 2)) + (MTRNG_Next() % ((129 - (2 * 2)) - v8));
                } else {
                    v9 = v0->unk_1C;
                    v10 = v0->unk_1E;
                }

                sub_02005748(1667);
            } else {
                ov22_02259648(v0->unk_10, &v9, &v10);
                sub_02005748(1515);
            }

            if (v0->unk_20 == 1) {
                v0->unk_21 = ov22_02257FB0(v0->unk_10->unk_04, v12->unk_00, v0->unk_08->unk_00.unk_04);
            }

            ov22_02258F4C(v0, 4, v9, v10, v0->unk_10->unk_04, v0->unk_21);
        }

        ov22_02258EE4(v0);
    }
}

static void ov22_02258D4C (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    int v1, v2;

    if (v0->unk_10 != NULL) {
        if ((coresys.unk_5C != 0xffff) && (coresys.unk_5C != 0xffff)) {
            v1 = coresys.unk_5C - v0->unk_14;
            v2 = coresys.unk_5E - v0->unk_18;

            ov22_022595F8(v0->unk_10, v1, v2);
        }
    }
}

static void ov22_02258D7C (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    BOOL v1, v2;
    int v3, v4;

    if (v0->unk_10) {
        ov22_022579D8(v0->unk_04, v0->unk_10);
        ov22_02257B10(v0->unk_04);
        ov22_02255360();

        v0->unk_30 = 0;

        sub_02005748(1515);
        ov22_02258EE4(v0);
    }
}

static void ov22_02258DAC (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    int v1, v2;
    int v3, v4;
    int v5, v6;
    int v7, v8;
    int v9, v10;

    if (v0->unk_10 != NULL) {
        if ((coresys.unk_5C != 0xffff) && (coresys.unk_5C != 0xffff)) {
            ov22_022596B0(v0->unk_10, &v7, &v9, &v8, &v10);
            ov22_02259698(v0->unk_10, &v1, &v2);

            v3 = coresys.unk_5C - v0->unk_14;
            v4 = coresys.unk_5E - v0->unk_18;

            v5 = v3 + v7;
            v6 = v4 + v8;
            v1 -= v9;
            v2 -= v10;

            if (v5 <= (136 + 2)) {
                v3 = (136 + 2) - v7;
            } else {
                if (v3 + v1 >= ((136 + 2) + (112 - (2 * 2)))) {
                    v3 = ((136 + 2) + (112 - (2 * 2))) - v1;
                }
            }

            if (v6 <= (16 + 2)) {
                v4 = (16 + 2) - v8;
            } else {
                if (v4 + v2 >= ((16 + 2) + (129 - (2 * 2)))) {
                    v4 = ((16 + 2) + (129 - (2 * 2))) - v2;
                }
            }

            ov22_02259074(param0, v3, v4);
            ov22_02257D04(v0->unk_04, &v7, &v8);

            v3 += v7;
            v4 += v8;

            ov22_02259074(param0, v3, v4);
        }
    }
}

static void ov22_02258E5C (UnkStruct_ov22_02258A48 * param0)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    UnkStruct_ov22_02255040 * v1;
    int v2;

    if (v0->unk_10) {
        GF_ASSERT(v0->unk_10->unk_04 == 1);

        v1 = v0->unk_10->unk_00;

        ov22_02257CD4(v0->unk_04);
        ov22_02257C88(v0->unk_04, v1->unk_00, 14);
    }
}

static void ov22_02258E88 (UnkStruct_ov22_02258EE4 * param0, UnkStruct_ov22_02259560 * param1, int param2, int param3, int param4, int param5)
{
    int v0, v1;

    ov22_02259648(param1, &v0, &v1);

    param0->unk_10 = param1;
    param0->unk_1C = v0;
    param0->unk_1E = v1;
    param0->unk_20 = param2;
    param0->unk_14 = param3;
    param0->unk_18 = param4;

    if (param2 == 0) {
        param0->unk_21 = ov22_02258424(param0->unk_08, param0->unk_10->unk_04);
    } else {
        param0->unk_21 = 0;
    }

    param0->unk_30 = 1;

    ov22_02259560(param1, param5);
}

static void ov22_02258EE4 (UnkStruct_ov22_02258EE4 * param0)
{
    param0->unk_10 = NULL;
    param0->unk_1C = 0;
    param0->unk_1E = 0;
    param0->unk_20 = 0;
    param0->unk_21 = 0;
}

static void ov22_02258EF8 (UnkStruct_ov22_02258A48 * param0, int * param1, int * param2, int * param3, int * param4)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;
    int v1, v2;
    int v3, v4;

    ov22_02259698(v0->unk_10, &v1, &v2);
    ov22_02259648(v0->unk_10, &v3, &v4);

    *param1 = v4;
    *param2 = v4 + v2;
    *param3 = v3;
    *param4 = v3 + v1;
}

static void ov22_02258F38 (UnkStruct_ov22_02258A48 * param0, int * param1, int * param2, int * param3, int * param4)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;

    ov22_02259724(v0->unk_10, param1, param2, param3, param4);
}

static void ov22_02258F4C (UnkStruct_ov22_02258EE4 * param0, int param1, int param2, int param3, int param4, int param5)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov22_02258FC0 * v1;
    int v2, v3;

    v0 = sub_0200679C(ov22_02258FC0, sizeof(UnkStruct_ov22_02258FC0), 0, 13);
    v1 = sub_0201CED0(v0);

    v1->unk_00 = param0->unk_08;
    v1->unk_04 = param0->unk_10;
    v1->unk_20 = param1;
    v1->unk_10 = param2;
    v1->unk_14 = param3;
    v1->unk_18 = param4;
    v1->unk_1C = param5;
    v1->unk_24 = &param0->unk_08->unk_00.unk_3C;
    v1->unk_28 = &param0->unk_30;

    ov22_02259648(param0->unk_10, &v2, &v3);

    v1->unk_08 = (v1->unk_10 - v2) / param1;
    v1->unk_0C = (v1->unk_14 - v3) / param1;

    param0->unk_30 = 0;
}

static void ov22_02258FC0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov22_02258FC0 * v0 = param1;
    int v1, v2;

    if (*v0->unk_24 == 1) {
        return;
    }

    ov22_02259648(v0->unk_04, &v1, &v2);

    v1 += v0->unk_08;
    v2 += v0->unk_0C;

    v0->unk_20--;

    if ((v0->unk_20 < 0) || ((v0->unk_08 == 0) && (v0->unk_0C == 0))) {
        ov22_022595F8(v0->unk_04, v0->unk_10, v0->unk_14);
        ov22_0225818C(v0->unk_00, v0->unk_18, v0->unk_1C, v0->unk_04);
        ov22_022581EC(v0->unk_00);

        if (*(v0->unk_28) == 0) {
            ov22_02255360();
        }

        sub_020067D0(param0);
    } else {
        ov22_022595F8(v0->unk_04, v1, v2);
    }
}

static void ov22_02259040 (UnkStruct_ov22_02258EE4 * param0)
{
    if (param0->unk_10->unk_04 == 0) {
        UnkStruct_ov22_02255040 * v0 = param0->unk_10->unk_00;
        ov22_0225A628(param0->unk_0C, 26, 386, v0->unk_00);
    } else if (param0->unk_10->unk_04 == 1) {
        UnkStruct_ov22_02255040 * v0 = param0->unk_10->unk_00;
        ov22_0225A628(param0->unk_0C, 26, 388, v0->unk_00);
    }
}

static void ov22_02259074 (UnkStruct_ov22_02258A48 * param0, int param1, int param2)
{
    UnkStruct_ov22_02258EE4 * v0 = param0->unk_00;

    ov22_022595F8(v0->unk_10, param1, param2);
    ov22_02257ACC(v0->unk_04, param1 - v0->unk_24, param2 - v0->unk_28);

    v0->unk_24 = param1;
    v0->unk_28 = param2;
}
