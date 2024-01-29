#include <nitro.h>
#include <string.h>

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay012/struct_ov12_0222660C_decl.h"
#include "overlay012/struct_ov12_022267D4_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226454.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_0223595C.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_0200762C.h"
#include "unk_0200C6E4.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_0222D6B0.h"
#include "overlay012/ov12_02235254.h"

typedef struct {
    u8 unk_00;
    u8 unk_01[3];
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    UnkStruct_ov12_0221FCDC * unk_08;
    CellTransferStateData * unk_0C;
    AnimationResourceCollection * unk_10;
    CellActorData * unk_14[3];
    UnkStruct_ov12_02225F6C unk_20;
} UnkStruct_ov12_0222D6B0;

typedef struct {
    u8 unk_00;
    u8 unk_01[6];
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    UnkStruct_ov12_0221FCDC * unk_0C;
    CellTransferStateData * unk_10;
    AnimationResourceCollection * unk_14;
    CellActorData * unk_18[6];
    int unk_30;
    CellActorData * unk_34;
    CellActorData * unk_38;
    UnkStruct_ov12_02225F6C unk_3C;
    UnkStruct_ov12_02225F6C unk_60;
} UnkStruct_ov12_0222D934;

typedef struct {
    UnkStruct_ov12_0221FCDC * unk_00;
    CellTransferStateData * unk_04;
    AnimationResourceCollection * unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    CellActorData * unk_10;
    UnkStruct_ov12_02225F6C unk_14;
    f32 unk_38;
    int * unk_3C;
} UnkStruct_ov12_0222DC98;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    UnkStruct_ov12_0221FCDC * unk_08;
    CellTransferStateData * unk_0C;
    AnimationResourceCollection * unk_10;
    UnkStruct_ov12_0222DC98 unk_14[20];
    int unk_514[20];
} UnkStruct_ov12_0222DE24;

typedef struct {
    int unk_00;
    UnkStruct_ov12_0223595C unk_04;
    CellActorData * unk_20;
    CellActorData * unk_24;
    UnkStruct_ov12_0222660C * unk_28;
    UnkStruct_ov12_02226454 unk_2C;
} UnkStruct_ov12_0222E080;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    s16 unk_1C;
    s16 unk_1E[4];
    CellActorData * unk_28[4];
} UnkStruct_ov12_0222E25C;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    int unk_1C;
    s16 unk_20;
    s16 unk_22[4];
    CellActorData * unk_2C[4];
    UnkStruct_ov12_022267D4 * unk_3C[6];
    int unk_54;
    int unk_58;
} UnkStruct_ov12_0222E390;

static const u8 Unk_ov12_0223A144[][2] = {
    {0x14, 0x2},
    {0xD, 0x1},
    {0x12, 0x3}
};

static void ov12_0222D6B0 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov12_0222D6B0 * v1 = (UnkStruct_ov12_0222D6B0 *)param1;

    switch (v1->unk_00) {
    case 0:
        if (v1->unk_06 < 15) {
            v1->unk_06++;
        }

        if (v1->unk_07 > 0) {
            v1->unk_07--;
        }

        G2_ChangeBlendAlpha(v1->unk_06, v1->unk_07);
        v1->unk_04++;

        for (v0 = 0; v0 < v1->unk_05; v0++) {
            {
                s16 v2, v3;
                sub_0200D550(v1->unk_14[v0], &v2, &v3);
            }

            if (v1->unk_04 >= Unk_ov12_0223A144[v0][0]) {
                v1->unk_01[v0]++;

                if (v1->unk_01[v0] >= Unk_ov12_0223A144[v0][1]) {
                    v1->unk_01[v0] = 0;
                }
            }
        }

        if (v1->unk_04 >= 45) {
            v1->unk_00++;
        }
        break;
    case 1:
        if (v1->unk_06 > 0) {
            v1->unk_06--;
        }

        if (v1->unk_07 < 15) {
            v1->unk_07++;
        }

        if ((v1->unk_06 == 0) && (v1->unk_07 == 15)) {
            v1->unk_00++;
        }

        G2_ChangeBlendAlpha(v1->unk_06, v1->unk_07);
        break;
    default:
        for (v0 = 0; v0 < v1->unk_05; v0++) {
            sub_0200D0F4(v1->unk_14[v0]);
        }

        ov12_02220220(v1->unk_08, param0);
        Heap_FreeToHeap(v1);

        return;
    }

    for (v0 = 0; v0 < v1->unk_05; v0++) {
        sub_0200D324(v1->unk_14[v0]->unk_00);
    }

    sub_0200C7EC(v1->unk_10);
}

void ov12_0222D7C0 (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    int v0;
    UnkStruct_ov12_0222D6B0 * v1;
    UnkStruct_ov104_0223F9E0 v2;

    v1 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222D6B0));

    GF_ASSERT(v1 != NULL);

    v1->unk_04 = 0;
    v1->unk_00 = 0;
    v1->unk_0C = param1;
    v1->unk_10 = param2;
    v1->unk_08 = param0;

    v2 = ov12_0222329C(param0);
    ov12_02235780(v1->unk_08, 0xffffffff, 0xffffffff);

    v1->unk_05 = ov12_02220280(v1->unk_08, 0);
    v1->unk_06 = 0;
    v1->unk_07 = 15;

    G2_ChangeBlendAlpha(v1->unk_06, v1->unk_07);
    v1->unk_14[0] = param3;

    {
        for (v0 = 1; v0 < v1->unk_05; v0++) {
            v1->unk_14[v0] = sub_0200CE6C(v1->unk_0C, v1->unk_10, &v2);
        }
    }

    if (ov12_0223525C(param0, ov12_02220248(param0)) == 0x3) {
        if ((ov12_0223525C(param0, ov12_02220248(param0)) == 0x3) && (ov12_0223525C(param0, ov12_02220240(param0)) == 0x3)) {
            sub_0200D364(v1->unk_14[0], 0);
        } else {
            sub_0200D364(v1->unk_14[0], 1);
        }

        sub_0200D4C4(v1->unk_14[0], 128, 80);
    } else {
        if ((ov12_0223525C(param0, ov12_02220248(param0)) == 0x4) && (ov12_0223525C(param0, ov12_02220240(param0)) == 0x4)) {
            sub_0200D364(v1->unk_14[0], 1);
        } else {
            sub_0200D364(v1->unk_14[0], 0);
        }

        sub_0200D4C4(v1->unk_14[0], 128, 80);
    }

    for (v0 = 0; v0 < v1->unk_05; v0++) {
        v1->unk_01[v0] = 0;
        sub_0200D6A4(v1->unk_14[v0], 2);
        sub_0200D810(v1->unk_14[v0], GX_OAM_MODE_XLU);

        if (ov12_0221FDD4(v1->unk_08) == 1) {
            sub_0200D6E8(v1->unk_14[v0], -1.0f, 1.0f);
        }
    }

    ov12_022201CC(param0, ov12_0222D6B0, v1, 1100);
}

static const UnkStruct_ov12_02235350 Unk_ov12_0223A162[] = {
    {0x50, 0x32},
    {0xB4, 0x32},
    {0x50, 0x64},
    {0xB4, 0x64},
    {0x50, 0x4B},
    {0xB4, 0x4B}
};

static const UnkStruct_ov12_02235350 Unk_ov12_0223A17A[][2] = {
    {
        {0x78, 0x50},
        {0x88, 0x50}
    },
    {
        {0x78, 0x50},
        {0x88, 0x50}
    },
    {
        {0x78, 0x50},
        {0x88, 0x50}
    },
    {
        {0x58, 0x50},
        {0xA8, 0x50}
    }
};

static const u8 Unk_ov12_0223A140[] = {
    0x5,
    0x5,
    0x5,
    0x3
};

static void ov12_0222D934 (SysTask * param0, void * param1)
{
    int v0;
    int v1 = 0;
    UnkStruct_ov12_0222D934 * v2 = (UnkStruct_ov12_0222D934 *)param1;

    switch (v2->unk_00) {
    case 0:
        if (v2->unk_09 < 15) {
            v2->unk_09++;
        }

        if (v2->unk_0A > 0) {
            v2->unk_0A--;
        }

        if ((v2->unk_09 == 15) && (v2->unk_0A == 0)) {
            v2->unk_00++;
        }

        G2_ChangeBlendAlpha(v2->unk_09, v2->unk_0A);
        break;
    case 1:
        switch (v2->unk_30) {
        case 0:
            v2->unk_34 = v2->unk_18[0];
            v2->unk_38 = v2->unk_18[3];
            sub_0200D3F4(v2->unk_34, 1);
            sub_0200D3F4(v2->unk_38, 1);
            break;
        case 1:
            v2->unk_34 = v2->unk_18[1];
            v2->unk_38 = v2->unk_18[2];
            sub_0200D3F4(v2->unk_34, 1);
            sub_0200D3F4(v2->unk_38, 1);
            break;
        case 2:
        case 3:
            v2->unk_34 = v2->unk_18[4];
            v2->unk_38 = v2->unk_18[5];
            sub_0200D3F4(v2->unk_34, 1);
            sub_0200D3F4(v2->unk_38, 1);
            break;
        }

        {
            s16 v3, v4;

            sub_0200D550(v2->unk_34, &v3, &v4);
            ov12_02225BC8(&v2->unk_3C, v3, Unk_ov12_0223A17A[v2->unk_30][0].unk_00, v4, Unk_ov12_0223A17A[v2->unk_30][0].unk_02, Unk_ov12_0223A140[v2->unk_30]);

            sub_0200D550(v2->unk_38, &v3, &v4);
            ov12_02225BC8(&v2->unk_60, v3, Unk_ov12_0223A17A[v2->unk_30][1].unk_00, v4, Unk_ov12_0223A17A[v2->unk_30][1].unk_02, Unk_ov12_0223A140[v2->unk_30]);
        }
        v2->unk_30++;
        v2->unk_00++;
        break;
    case 2:
    {
        int v5 = 0;
        BOOL v6;

        v6 = ov12_02225C50(&v2->unk_3C, v2->unk_34);

        if (v6 == 0) {
            v5++;
        }

        v6 = ov12_02225C50(&v2->unk_60, v2->unk_38);

        if (v6 == 0) {
            v5++;
        }

        if (v5 >= 2) {
            if (v2->unk_30 <= 3) {
                sub_0200D3F4(v2->unk_34, 0);
                sub_0200D3F4(v2->unk_38, 0);
                v2->unk_00--;
            } else {
                v2->unk_00++;
            }
        }
    }
    break;
    case 3:
        if (v2->unk_09 > 0) {
            v2->unk_09--;
        }

        if (v2->unk_0A < 15) {
            v2->unk_0A++;
        }

        if (v2->unk_0A >= (15 / 2)) {
            v1 = 1;
        }

        if ((v2->unk_09 == 0) && (v2->unk_0A == 15)) {
            v2->unk_00++;
        }

        G2_ChangeBlendAlpha(v2->unk_09, v2->unk_0A);
        break;
    default:
        for (v0 = 0; v0 < v2->unk_08; v0++) {
            sub_0200D0F4(v2->unk_18[v0]);
        }

        ov12_02220220(v2->unk_0C, param0);
        Heap_FreeToHeap(v2);
        return;
    }

    if ((v2->unk_00 < 3) && (v1 == 0)) {
        for (v0 = 0; v0 < v2->unk_08; v0++) {
            sub_0200D324(v2->unk_18[v0]->unk_00);
        }
    }

    sub_0200C7EC(v2->unk_14);
}

void ov12_0222DB60 (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    int v0;
    UnkStruct_ov12_0222D934 * v1;
    UnkStruct_ov104_0223F9E0 v2;

    v1 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222D934));

    GF_ASSERT(v1 != NULL);

    v1->unk_07 = 0;
    v1->unk_00 = 0;
    v1->unk_10 = param1;
    v1->unk_14 = param2;
    v1->unk_30 = 0;
    v1->unk_0C = param0;

    v2 = ov12_0222329C(param0);
    ov12_02235780(v1->unk_0C, 0xffffffff, 0xffffffff);

    v1->unk_09 = 0;
    v1->unk_0A = 15;

    G2_ChangeBlendAlpha(v1->unk_09, v1->unk_0A);

    v1->unk_08 = ov12_02220280(v1->unk_0C, 0);
    v1->unk_18[0] = param3;

    {
        for (v0 = 1; v0 < v1->unk_08; v0++) {
            v1->unk_18[v0] = sub_0200CE6C(v1->unk_10, v1->unk_14, &v2);
        }
    }

    sub_0200D364(v1->unk_18[0], 0);
    sub_0200D364(v1->unk_18[1], 0);
    sub_0200D364(v1->unk_18[2], 1);
    sub_0200D364(v1->unk_18[3], 1);
    sub_0200D364(v1->unk_18[4], 2);
    sub_0200D364(v1->unk_18[5], 3);
    sub_0200D7D4(v1->unk_18[0], 1);
    sub_0200D7D4(v1->unk_18[3], 1);

    for (v0 = 0; v0 < v1->unk_08; v0++) {
        sub_0200D390(v1->unk_18[v0], 1);
        sub_0200D4C4(v1->unk_18[v0], Unk_ov12_0223A162[v0].unk_00, Unk_ov12_0223A162[v0].unk_02);
        sub_0200D810(v1->unk_18[v0], GX_OAM_MODE_XLU);
    }

    sub_0200D3F4(v1->unk_18[1], 0);
    sub_0200D3F4(v1->unk_18[2], 0);
    sub_0200D3F4(v1->unk_18[4], 0);
    sub_0200D3F4(v1->unk_18[5], 0);

    ov12_022201CC(param0, ov12_0222D934, v1, 1100);
}

static const UnkStruct_ov12_02235350 Unk_ov12_0223A14A[] = {
    {0x0, 0x0},
    {0x80, 0x0},
    {0x100, 0x0},
    {0x0, 0xAA},
    {0x80, 0xAA},
    {0x100, 0xAA}
};

static void ov12_0222DC98 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222DC98 * v0 = (UnkStruct_ov12_0222DC98 *)param1;

    switch (v0->unk_0C) {
    case 0:
        if ((--v0->unk_0E) <= 10) {
            v0->unk_0C++;
        }
        break;
    case 1:
        if ((++v0->unk_0D) >= 3) {
            sub_0200D3F4(v0->unk_10, 1);
            v0->unk_0D = 0;
            v0->unk_0C++;
        }
        break;
    case 2:
        if ((++v0->unk_0D) <= 3) {
            v0->unk_38 += 0.1f;
            sub_0200D6E8(v0->unk_10, v0->unk_38, v0->unk_38);
        } else {
            v0->unk_0D = 0;
            v0->unk_0C++;
        }
        break;
    case 3:
        if ((++v0->unk_0D) <= 3) {
            v0->unk_38 -= 0.1f;
            sub_0200D6E8(v0->unk_10, v0->unk_38, v0->unk_38);
        } else {
            v0->unk_0D = 0;
            v0->unk_0C++;
        }
        break;
    case 4:
        if ((--v0->unk_0E) <= 10) {
            *(v0->unk_3C) = 1;
            v0->unk_0D = 0;
            v0->unk_0C++;
        }
        break;
    case 5:
        if ((++v0->unk_0D) > 30) {
            v0->unk_0D = 0;
            v0->unk_0C++;
            break;
        }

        if ((*v0->unk_3C) == 2) {
            v0->unk_0C++;
        }
        break;
    case 6:
    {
        UnkStruct_ov12_02235350 v1;
        int v2;

        v2 = 10 + (LCRNG_Next() % 10);

        sub_0200D550(v0->unk_10, &v1.unk_00, &v1.unk_02);
        ov12_02225BC8(&v0->unk_14, v1.unk_00, Unk_ov12_0223A14A[v0->unk_0F].unk_00, v1.unk_02, Unk_ov12_0223A14A[v0->unk_0F].unk_02, v2);
        v0->unk_0C++;
    }
    break;
    case 7:
    {
        BOOL v3;

        v3 = ov12_02225C50(&v0->unk_14, v0->unk_10);

        if (v3 == 0) {
            sub_0200D3F4(v0->unk_10, 0);
            v0->unk_0C++;
        } else {
            break;
        }
    }
    default:
        *(v0->unk_3C) = 3;
        ov12_02220220(v0->unk_00, param0);
        break;
    }

    sub_0200D330(v0->unk_10);
}

static void ov12_0222DE24 (SysTask * param0, void * param1)
{
    int v0;
    UnkStruct_ov12_0222DE24 * v1 = (UnkStruct_ov12_0222DE24 *)param1;

    switch (v1->unk_00) {
    case 0:
    {
        BOOL v2 = 1;

        for (v0 = 0; v0 < v1->unk_02; v0++) {
            if (v1->unk_514[v0] != 1) {
                v2 = 0;
                break;
            }
        }

        if (v2 == 1) {
            v1->unk_00++;
        }
    }
    break;
    case 1:
        for (v0 = 0; v0 < v1->unk_02; v0++) {
            v1->unk_514[v0] = 2;
        }

        v1->unk_00++;
        break;
    case 2:
    {
        BOOL v3 = 1;

        for (v0 = 0; v0 < v1->unk_02; v0++) {
            if (v1->unk_514[v0] != 3) {
                v3 = 0;
                break;
            }
        }

        if (v3 == 1) {
            v1->unk_00++;
        }
    }
    break;
    case 3:
        for (v0 = 0; v0 < v1->unk_02; v0++) {
            sub_0200D0F4(v1->unk_14[v0].unk_10);
        }

        v1->unk_00++;
        break;
    default:
        ov12_02220220(v1->unk_08, param0);
        Heap_FreeToHeap(v1);
        return;
    }

    sub_0200C7EC(v1->unk_10);
}

static const s16 Unk_ov12_0223A19A[][4] = {
    {0x1E, 0x28, 0x32, 0x35},
    {0x1E, 0x5D, 0x32, 0x35},
    {0x1E, 0x92, 0x32, 0x35},
    {0x50, 0x28, 0x32, 0x35},
    {0x50, 0x5D, 0x32, 0x35},
    {0x50, 0x92, 0x32, 0x35}
};

void ov12_0222DEFC (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    int v0;
    int v1;
    UnkStruct_ov12_0222DE24 * v2;
    UnkStruct_ov104_0223F9E0 v3;

    v2 = Heap_AllocFromHeap(ov12_0221FDE4(param0), sizeof(UnkStruct_ov12_0222DE24));
    GF_ASSERT(v2 != NULL);

    v2->unk_01 = 0;
    v2->unk_00 = 0;
    v2->unk_0C = param1;
    v2->unk_10 = param2;
    v2->unk_08 = param0;

    v3 = ov12_0222329C(param0);
    ov12_02235780(v2->unk_08, 0xffffffff, 0xffffffff);

    v2->unk_02 = ov12_02220280(v2->unk_08, 0);
    v2->unk_02 = 12;

    {
        s16 v4, v5;
        CellActorData * v6;

        v2->unk_14[0].unk_10 = param3;
        v0 = 0;

        for (v1 = 0; v1 < v2->unk_02; v1++) {
            if (v1 != 0) {
                v2->unk_14[v1].unk_10 = sub_0200CE6C(v2->unk_0C, v2->unk_10, &v3);
            }

            v6 = v2->unk_14[v1].unk_10;

            v2->unk_14[v1].unk_0C = 0;
            v2->unk_14[v1].unk_0D = 0;
            v2->unk_14[v1].unk_0E = 10 + (LCRNG_Next() % 10) + v1;
            v2->unk_14[v1].unk_0F = (LCRNG_Next() % 6);
            v2->unk_14[v1].unk_38 = 1.0f;
            v2->unk_14[v1].unk_00 = v2->unk_08;
            v2->unk_14[v1].unk_04 = v2->unk_0C;
            v2->unk_14[v1].unk_08 = v2->unk_10;
            v2->unk_14[v1].unk_3C = &v2->unk_514[v1];

            v4 = Unk_ov12_0223A19A[v0][1] + (LCRNG_Next() % Unk_ov12_0223A19A[v0][3]);
            v5 = Unk_ov12_0223A19A[v0][0] + (LCRNG_Next() % Unk_ov12_0223A19A[v0][2]);

            sub_0200D4C4(v6, v4, v5);
            sub_0200D6A4(v6, 2);
            sub_0200D6E8(v6, v2->unk_14[v1].unk_38, v2->unk_14[v1].unk_38);
            sub_0200D3F4(v6, 0);

            ov12_022201CC(param0, ov12_0222DC98, &v2->unk_14[v1], 1100 - 1);

            v0++;
            v0 %= 6;
        }
    }

    ov12_022201CC(param0, ov12_0222DE24, v2, 1100 + 1);
}

static void ov12_0222E080 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222E080 * v0 = (UnkStruct_ov12_0222E080 *)param1;

    switch (v0->unk_04.unk_00) {
    case 0:
    {
        Sprite * v1;

        v1 = ov12_022232FC(v0->unk_04.unk_04, ov12_02220240(v0->unk_04.unk_04));
        sub_02007DEC(v1, 6, 1);
    }
        v0->unk_04.unk_00++;
        break;
    case 1:
        if (ov12_02226454(&v0->unk_2C) == 0) {
            break;
        }

        v0->unk_00 = 0;
        v0->unk_28 = ov12_0222662C(0, 160, (((2 * 0xffff) / 360)), (12 * FX32_ONE), (2 * 100), ov12_022233EC(v0->unk_04.unk_04, 1), 0, ov12_022266E8(0, 0), ov12_0221FDE4(v0->unk_04.unk_04));
        v0->unk_04.unk_00++;
        break;
    case 2:
        v0->unk_00++;

        if (v0->unk_00 < 120) {
            break;
        }

        ov12_0222669C(v0->unk_28);
        ov12_02226424(&v0->unk_2C, 2, 16, 16, 2, 16);
        v0->unk_04.unk_00++;
        break;
    case 3:
        if (ov12_02226454(&v0->unk_2C) == 0) {
            break;
        }

        {
            Sprite * v2;

            v2 = ov12_022232FC(v0->unk_04.unk_04, ov12_02220240(v0->unk_04.unk_04));
            sub_02007DEC(v2, 6, 0);
        }
        v0->unk_04.unk_00++;
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        ov12_02222664(v0->unk_04.unk_04, 2);
        ov12_02220220(v0->unk_04.unk_04, param0);
        Heap_FreeToHeap(v0);
        return;
    }

    sub_0200D330(v0->unk_24);
    sub_0200D330(v0->unk_20);
    sub_0200C7EC(v0->unk_04.unk_0C);
}

void ov12_0222E1A8 (UnkStruct_ov12_0221FCDC * param0)
{
    UnkStruct_ov12_0222E080 * v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222E080));
    ov12_0223595C(param0, &v0->unk_04);

    v0->unk_20 = ov12_022202C0(v0->unk_04.unk_04, 0);
    sub_0200D810(v0->unk_20, GX_OAM_MODE_OBJWND);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_OBJ, 0);

    v0->unk_24 = ov12_022202C0(v0->unk_04.unk_04, 1);
    sub_0200D810(v0->unk_24, GX_OAM_MODE_XLU);

    ov12_02226424(&v0->unk_2C, 16, 2, 2, 16, 16);
    ov12_02222590(v0->unk_04.unk_04, 2);

    sub_02019120(2, 1);
    ov12_022201E8(v0->unk_04.unk_04, ov12_0222E080, v0);
}

void ov12_0222E248 (CellActorData * param0)
{
    if (sub_0200D408(param0) == 1) {
        sub_0200D330(param0);
    }
}

static void ov12_0222E25C (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222E25C * v0 = (UnkStruct_ov12_0222E25C *)param1;

    if (v0->unk_1C <= 0) {
        ov12_0222E248(v0->unk_28[2]);
        ov12_0222E248(v0->unk_28[3]);
    } else {
        v0->unk_1C--;
    }

    ov12_0222E248(v0->unk_28[0]);
    ov12_0222E248(v0->unk_28[1]);

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_1E[v1]++;

            if (v0->unk_1E[v1] >= 40) {
                sub_0200D3F4(v0->unk_28[v1], 0);
                v2++;
            }
        }

        if (v2 == 4) {
            for (v1 = 0; v1 < 4; v1++) {
                sub_0200D0F4(v0->unk_28[v1]);
            }

            ov12_02220220(v0->unk_00.unk_04, param0);
            Heap_FreeToHeap(v0);
            return;
        }
    }

    sub_0200C7EC(v0->unk_00.unk_10);
}

void ov12_0222E2F8 (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    UnkStruct_ov12_0222E25C * v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222E25C));
    v0->unk_1C = 10;

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v1;
        UnkStruct_ov104_0223F9E0 v2;

        v2 = ov12_0222329C(v0->unk_00.unk_04);

        v0->unk_28[0] = param3;
        v0->unk_1E[0] = 0;

        for (v1 = 1; v1 < 4; v1++) {
            v0->unk_1E[v1] = 0;
            v0->unk_28[v1] = sub_0200CE6C(v0->unk_00.unk_08, v0->unk_00.unk_10, &v2);
        }

        sub_0200D7D4(v0->unk_28[0], 1);
        sub_0200D7D4(v0->unk_28[1], 1);

        {
            UnkStruct_ov12_02235350 v3;
        }

        sub_0200D5DC(v0->unk_28[0], -32, 0);
        sub_0200D5DC(v0->unk_28[1], -32, +32);
        sub_0200D5DC(v0->unk_28[2], +32, 0);
        sub_0200D5DC(v0->unk_28[3], +32, +32);
    }

    ov12_022201E8(v0->unk_00.unk_04, ov12_0222E25C, v0);
}

static void ov12_0222E390 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_0222E390 * v0 = (UnkStruct_ov12_0222E390 *)param1;

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_22[v1]++;

            if (v0->unk_22[v1] < 20) {
                continue;
            }

            ov12_0222E248(v0->unk_2C[v1]);

            if (v0->unk_22[0] == 110) {
                ov12_02235780(v0->unk_00.unk_04, 0xffffffff, 0xffffffff);

                sub_0200D810(v0->unk_2C[0], GX_OAM_MODE_XLU);
                sub_0200D810(v0->unk_2C[1], GX_OAM_MODE_XLU);
                sub_0200D810(v0->unk_2C[2], GX_OAM_MODE_XLU);
                sub_0200D810(v0->unk_2C[3], GX_OAM_MODE_XLU);

                v0->unk_54 = 15;
                v0->unk_58 = 0;
            }
        }

        if (v0->unk_22[0] == 40 + 10) {
            v0->unk_3C[0] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 50 + 10) {
            v0->unk_3C[1] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 60 + 10) {
            v0->unk_3C[2] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 70 + 10) {
            v0->unk_3C[3] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 80 + 10) {
            v0->unk_3C[4] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 90 + 10) {
            v0->unk_3C[5] = ov12_02226870(v0->unk_00.unk_18, ov12_0221FDE4(v0->unk_00.unk_04), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 110) {
            ov12_02235780(v0->unk_00.unk_04, 0xffffffff, 0xffffffff);

            sub_0200D810(v0->unk_2C[0], GX_OAM_MODE_XLU);
            sub_0200D810(v0->unk_2C[1], GX_OAM_MODE_XLU);
            sub_0200D810(v0->unk_2C[2], GX_OAM_MODE_XLU);
            sub_0200D810(v0->unk_2C[3], GX_OAM_MODE_XLU);

            v0->unk_54 = 15;
            v0->unk_58 = 0;
        }

        if (v0->unk_22[0] >= 110) {
            if (v0->unk_54 > 0) {
                v0->unk_54--;
            }

            if (v0->unk_58 < 15) {
                v0->unk_58++;
            }

            G2_ChangeBlendAlpha(v0->unk_54, v0->unk_58);

            if ((v0->unk_54 == 0) && (v0->unk_58 == 15)) {
                v2 = 4;
            }
        }

        if (v2 == 4) {
            for (v1 = 0; v1 < 4; v1++) {
                sub_0200D0F4(v0->unk_2C[v1]);
            }

            for (v1 = 0; v1 < 6; v1++) {
                ov12_02226858(v0->unk_3C[v1]);
            }

            ov12_02220220(v0->unk_00.unk_04, param0);
            Heap_FreeToHeap(v0);
            return;
        }
    }

    sub_0200C7EC(v0->unk_00.unk_10);
}

void ov12_0222E61C (UnkStruct_ov12_0221FCDC * param0, CellTransferStateData * param1, AnimationResourceCollection * param2, CellActorData * param3)
{
    UnkStruct_ov12_0222E390 * v0 = NULL;

    v0 = ov12_02235E50((param0), sizeof(UnkStruct_ov12_0222E390));
    v0->unk_20 = 10;

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v1;
        s16 v2, v3;
        UnkStruct_ov104_0223F9E0 v4;

        v4 = ov12_0222329C(v0->unk_00.unk_04);

        v0->unk_2C[0] = param3;
        v0->unk_22[0] = 0;

        for (v1 = 1; v1 < 4; v1++) {
            v0->unk_22[v1] = (LCRNG_Next() % 4) + (v1 * 5);
            v0->unk_2C[v1] = sub_0200CE6C(v0->unk_00.unk_08, v0->unk_00.unk_10, &v4);
        }

        sub_0200D7D4(v0->unk_2C[1], 1);
        sub_0200D7D4(v0->unk_2C[2], 1);

        {
            s16 v5;
            s16 v6;
            int v7;
            Sprite * v8;

            v7 = ov12_02220240(param0);
            v8 = ov12_022232FC(param0, v7);
            v5 = sub_020080C0(v8, 0);
            v6 = sub_020080C0(v8, 1);
            v6 += sub_020080C0(v8, 41);

            if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x3) {
                v6 = 140;
            } else {
                v6 = 84;
            }

            for (v1 = 0; v1 < 4; v1++) {
                sub_0200D4C4(v0->unk_2C[v1], v5, v6);
            }
        }

        if (ov12_0223525C(param0, ov12_02220240(param0)) == 0x3) {
            v3 = 24;
            v2 = 16;

            sub_0200D474(v0->unk_2C[0], 10);
            sub_0200D474(v0->unk_2C[2], 10);
            sub_0200D474(v0->unk_2C[1], 18);
            sub_0200D474(v0->unk_2C[3], 18);
        } else {
            v3 = 0;
            v2 = 8;

            sub_0200D474(v0->unk_2C[0], 18);
            sub_0200D474(v0->unk_2C[2], 18);
            sub_0200D474(v0->unk_2C[1], 10);
            sub_0200D474(v0->unk_2C[3], 10);
        }

        v2 = 4;
        v3 = 0;

        sub_0200D5DC(v0->unk_2C[0], -32, +v3);
        sub_0200D5DC(v0->unk_2C[3], -40, +v2);
        sub_0200D5DC(v0->unk_2C[2], +32, +v3);
        sub_0200D5DC(v0->unk_2C[1], +40, +v2);
    }

    v0->unk_1C = sub_0200D43C(v0->unk_2C[0]);
    ov12_022201E8(v0->unk_00.unk_04, ov12_0222E390, v0);
}
