#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay012/struct_ov12_022267D4_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "functypes/funcptr_020146F4.h"
#include "struct_defs/struct_0202CA28.h"
#include "struct_defs/struct_0202CA64.h"
#include "overlay012/struct_ov12_02223764.h"
#include "overlay012/struct_ov12_02225D50.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02236030.h"
#include "overlay012/struct_ov12_02236690.h"
#include "overlay012/struct_ov12_02237728.h"
#include "overlay104/struct_ov104_0223F9E0.h"
#include "overlay104/struct_ov104_02241308.h"

#include "spl.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "narc.h"
#include "unk_020093B4.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_02014000.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_0202C9F4.h"
#include "pokemon.h"
#include "unk_02097B18.h"
#include "overlay012/ov12_0221FC20.h"
#include "overlay012/ov12_022237EC.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_02235E94.h"
#include "overlay012/ov12_02237E54.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BOOL * unk_0C;
    UnkStruct_02014014 * unk_10;
    UnkStruct_0202CA64 * unk_14;
    UnkFuncPtr_020146F4 unk_18;
} UnkStruct_02236430;

typedef struct UnkStruct_ov12_02235FE0_t {
    int unk_00;
    UnkStruct_ov12_02236030 unk_04;
    int unk_10;
    UnkStruct_02014014 * unk_14[9];
    UnkStruct_0202CA64 * unk_38[9];
    BOOL unk_5C[9];
    UnkSPLStruct6 * unk_80;
    SysTask * unk_84;
    BOOL unk_88;
    NARC * unk_8C;
    int unk_90;
    int unk_94;
    int unk_98;
    int unk_9C;
    UnkStruct_0202CA28 unk_A0;
} UnkStruct_ov12_02235FE0;

typedef struct UnkStruct_ov12_02236648_t {
    UnkStruct_ov12_02236690 unk_00;
    UnkSPLStruct6 * unk_14;
    UnkStruct_02014014 * unk_18;
    int unk_1C;
    int unk_20;
} UnkStruct_ov12_02236648;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov12_02237C54_sub1;

typedef struct BallRotation {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    BOOL unk_1C;
    u8 unk_20;
    u8 unk_21;
    s8 unk_22;
    BOOL unk_24;
    BOOL unk_28;
    AnimationResourceCollection * unk_2C;
    CellActorData * unk_30;
    UnkStruct_ov12_02225D50 unk_34;
    UnkStruct_ov12_02225F6C unk_48[2];
    BallThrow unk_90;
    UnkStruct_ov12_02237C54_sub1 unk_B8;
    SysTask * unk_CC;
    UnkStruct_ov12_02236648 * unk_D0;
    UnkStruct_ov12_022267D4 * unk_D4;
    UnkStruct_ov12_02223764 * unk_D8;
    int unk_DC;
} BallRotation;

static void ov12_022363CC(SysTask * param0, void * param1);
static void ov12_0223646C(UnkStruct_ov12_02235FE0 * param0, UnkFuncPtr_020146F4 param1);
static void ov12_02236598(UnkSPLStruct6 * param0);
static void ov12_022365D4(UnkSPLStruct6 * param0);
static void ov12_02237C54(BallRotation * param0);
static void ov12_02237D8C(BallRotation * param0);
static void ov12_022378A0(BallRotation * param0);
static void ov12_02237B14(BallRotation * param0, s16 * param1, s16 * param2);
static BOOL ov12_02236F24(BallRotation * param0);
static BOOL ov12_022371E4(BallRotation * param0);
static BOOL ov12_02237608(BallRotation * param0);
static BOOL ov12_02236F10(BallRotation * param0);
static BOOL ov12_02237694(BallRotation * param0);
static BOOL ov12_02237474(BallRotation * param0);

static const int Unk_ov12_0223AF00[][4] = {
    {0x120, 0x5C, 0x11F, 0x11E},
    {0x123, 0x5D, 0x122, 0x121},
    {0x126, 0x5E, 0x125, 0x124},
    {0x11D, 0x5B, 0x11C, 0x11B},
    {0x129, 0x5F, 0x128, 0x127},
    {0x12C, 0x60, 0x12B, 0x12A},
    {0x12F, 0x61, 0x12E, 0x12D},
    {0x132, 0x62, 0x131, 0x130},
    {0x135, 0x63, 0x134, 0x133},
    {0x138, 0x64, 0x137, 0x136},
    {0x13B, 0x65, 0x13A, 0x139},
    {0x13E, 0x66, 0x13D, 0x13C},
    {0x144, 0x68, 0x143, 0x142},
    {0x147, 0x69, 0x146, 0x145},
    {0x141, 0x67, 0x140, 0x13F},
    {0x14A, 0x6A, 0x149, 0x148},
    {0x14D, 0x6B, 0x14C, 0x14B},
    {0x153, 0x6D, 0x152, 0x151},
    {0x150, 0x6C, 0x14F, 0x14E},
    {0x150, 0x6C, 0x14F, 0x14E}
};

static const int Unk_ov12_0223AD70[][2] = {
    {0x1, 0x5},
    {0x2, 0x4},
    {0x3, 0x3},
    {0x4, 0x3},
    {0x5, 0x3},
    {0x6, 0x4},
    {0x7, 0x3},
    {0x8, 0x4},
    {0x9, 0x3},
    {0xA, 0x5},
    {0xB, 0x4},
    {0xC, 0x3},
    {0xD, 0x3},
    {0xE, 0x3},
    {0xF, 0x4},
    {0x10, 0x4},
    {0x11, 0x3},
    {0x1, 0x5},
    {0x1, 0x5},
    {0x24, 0x2}
};

static const int Unk_ov12_0223AE10[][3] = {
    {0x13, 0x0, 0x5},
    {0x14, 0x2, 0x5},
    {0x15, 0x1, 0x5},
    {0x16, 0x3, 0x5},
    {0x17, 0x1, 0x5},
    {0x18, 0x1, 0x6},
    {0x19, 0x1, 0x5},
    {0x1A, 0x1, 0x5},
    {0x1B, 0x2, 0x5},
    {0x1C, 0x3, 0x7},
    {0x1D, 0x1, 0x6},
    {0x1E, 0x0, 0x5},
    {0x1F, 0x1, 0x5},
    {0x20, 0x0, 0x5},
    {0x21, 0x1, 0x6},
    {0x22, 0x1, 0x6},
    {0x23, 0x3, 0x5},
    {0x13, 0x0, 0x5},
    {0x13, 0x0, 0x5},
    {0x24, 0xFF, 0x2}
};

static int ov12_02235E94 (int param0)
{
    int v0;

    if ((param0 < 1) || (param0 > ((0xFF + 20)))) {
        v0 = 4;
    } else if (param0 >= 0xFF) {
        v0 = param0 - 0xFF;
    } else {
        v0 = param0;
    }

    return v0 - 1;
}

static BOOL ov12_02235EB0 (int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 17,
    };

    v1 = 0;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 1;
        break;
    }

    return v1;
}

static BOOL ov12_02235EF0 (int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        6, 7, 8, 9, 10, 11,
    };

    v1 = 0;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 1;
        break;
    }

    return v1;
}

static BOOL ov12_02235F2C (int param0)
{
    int v0;
    BOOL v1;
    int v2[] = {
        3, 5, 1,
    };

    v1 = 1;

    for (v0 = 0; v0 < NELEMS(v2); v0++) {
        if (v2[v0] != param0) {
            continue;
        }

        v1 = 0;
        break;
    }

    return v1;
}

static int ov12_02235F64 (int param0)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AD70[v0][0];
}

static int ov12_02235F78 (int param0)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AD70[v0][1];
}

static int ov12_02235F8C (int param0)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][0];
}

static int ov12_02235FA0 (int param0)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][2];
}

static int ov12_02235FB4 (int param0)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AE10[v0][1];
}

static int ov12_02235FC8 (int param0, int param1)
{
    int v0;

    v0 = ov12_02235E94(param0);
    return Unk_ov12_0223AF00[v0][param1];
}

UnkStruct_ov12_02235FE0 * ov12_02235FE0 (int param0)
{
    UnkStruct_ov12_02235FE0 * v0 = NULL;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov12_02235FE0));

    if (v0 == NULL) {
        GF_ASSERT(0);
        return NULL;
    }

    v0->unk_00 = param0;
    v0->unk_88 = 0;

    return v0;
}

UnkStruct_ov12_02235FE0 * ov12_02236004 (int param0, const UnkStruct_ov12_02236030 * param1)
{
    UnkStruct_ov12_02235FE0 * v0 = NULL;

    v0 = ov12_02235FE0(param0);
    ov12_02236030(v0, param1);

    {
        int v1;

        v0->unk_10 = 0;

        for (v1 = 0; v1 < 9; v1++) {
            v0->unk_14[v1] = NULL;
            v0->unk_38[v1] = NULL;
            v0->unk_5C[v1] = 0;
        }
    }

    return v0;
}

void ov12_02236030 (UnkStruct_ov12_02235FE0 * param0, const UnkStruct_ov12_02236030 * param1)
{
    param0->unk_04 = *param1;
    param0->unk_9C = Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_162, NULL);

    GF_ASSERT(param0->unk_9C < 12 + 1);

    if (param0->unk_9C == 0) {
        param0->unk_94 = 0;

        if (param0->unk_04.unk_04 != 0) {
            param0->unk_98 = param0->unk_04.unk_04;
        } else {
            param0->unk_98 = Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_POKEBALL, NULL);
        }
    } else {
        param0->unk_94 = 1;
        Pokemon_GetValue(param0->unk_04.unk_08, MON_DATA_171, &param0->unk_A0);
    }
}

static void ov12_022360A0 (SysTask * param0, void * param1)
{
    UnkStruct_ov12_02235FE0 * v0 = param1;
    int v1;
    int v2;
    int v3;
    int v4;
    UnkStruct_0202CA64 * v5;

    switch (v0->unk_90) {
    case 0:
        v0->unk_8C = NARC_ctor(NARC_INDEX_WAZAEFFECT__EFFECTDATA__BALL_PARTICLE, v0->unk_00);

        for (v1 = 0; v1 < 2; v1++) {
            v5 = sub_0202CA64(&v0->unk_A0, v1);

            if (v5 == NULL) {
                continue;
            }

            v2 = sub_0202CA7C(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->unk_00, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 1:
        for (v1 = 2; v1 < 4; v1++) {
            v5 = sub_0202CA64(&v0->unk_A0, v1);

            if (v5 == NULL) {
                continue;
            }

            v2 = sub_0202CA7C(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->unk_00, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 2:
        for (v1 = 4; v1 < 6; v1++) {
            v5 = sub_0202CA64(&v0->unk_A0, v1);

            if (v5 == NULL) {
                continue;
            }

            v2 = sub_0202CA7C(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->unk_00, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90++;
        break;
    case 3:
        for (v1 = 6; v1 < 8; v1++) {
            v5 = sub_0202CA64(&v0->unk_A0, v1);

            if (v5 == NULL) {
                continue;
            }

            v2 = sub_0202CA7C(v5);

            if (v2 == 0) {
                continue;
            }

            if (v2 >= (80 + 1)) {
                continue;
            }

            v3 = sub_02098188(v2);

            v0->unk_38[v0->unk_10] = v5;
            GF_ASSERT(v0->unk_14[v0->unk_10] == NULL);
            v0->unk_14[v0->unk_10] = ov12_0222384C(v0->unk_8C, v0->unk_00, v3, 0);

            if (v0->unk_14[v0->unk_10] == NULL) {
                GF_ASSERT(v0->unk_14[v0->unk_10] != NULL);
                continue;
            }

            v0->unk_10++;
        }

        v0->unk_90 = 0xFF;

        NARC_dtor(v0->unk_8C);
        SysTask_Done(param0);
        break;
    default:
        break;
    }
}

void ov12_02236320 (UnkStruct_ov12_02235FE0 * param0)
{
    int v0;
    int v1;
    int v2;
    int v3;
    UnkStruct_0202CA64 * v4;

    if (param0->unk_94 == 0) {
        v3 = ov12_02235F64(param0->unk_98);

        param0->unk_10 = 1;
        param0->unk_14[0] = ov12_02223818(param0->unk_00, 99, v3, 0);
        param0->unk_90 = 0xFF;
    } else {
        param0->unk_10 = 0;
        param0->unk_90 = 0;

        {
            SysTask * v5;

            v5 = SysTask_Start(ov12_022360A0, param0, 1000);
            ov12_022360A0(v5, param0);
        }
    }
}

BOOL ov12_02236374 (UnkStruct_ov12_02235FE0 * param0)
{
    if (param0->unk_90 == 0xFF) {
        return 1;
    }

    return 0;
}

void ov12_02236384 (UnkStruct_ov12_02235FE0 * param0, UnkFuncPtr_020146F4 param1)
{
    param0->unk_88 = 1;

    ov12_02220474();
    ov12_0223646C(param0, param1);

    param0->unk_84 = SysTask_Start(ov12_022363CC, param0, 1000);
}

void ov12_022363B4 (UnkStruct_ov12_02235FE0 * param0)
{
    ov12_02236384(param0, ov12_02236598);
}

BOOL ov12_022363C4 (UnkStruct_ov12_02235FE0 * param0)
{
    return param0->unk_88;
}

static void ov12_022363CC (SysTask * param0, void * param1)
{
    int v0;
    BOOL v1;
    UnkStruct_ov12_02235FE0 * v2 = (UnkStruct_ov12_02235FE0 *)param1;

    v1 = 0;

    GF_ASSERT(v2->unk_10 <= 9);

    for (v0 = 0; v0 < v2->unk_10; v0++) {
        if (v2->unk_14[v0] == NULL) {
            continue;
        }

        if ((sub_02014710(v2->unk_14[v0]) == 0) && (v2->unk_5C[v0] != 0)) {
            ov12_02223894(v2->unk_14[v0]);
            v2->unk_14[v0] = NULL;
            v2->unk_5C[v0] = 0;
            continue;
        }

        v1 = 1;
    }

    if (v1 == 0) {
        v2->unk_88 = 0;
        SysTask_Done(param0);
    }
}

void ov12_02236428 (UnkStruct_ov12_02235FE0 * param0)
{
    Heap_FreeToHeap(param0);
}

static void ov12_02236430 (SysTask * param0, void * param1)
{
    UnkStruct_02236430 * v0 = (UnkStruct_02236430 *)param1;

    if (v0->unk_04 == 0) {
        *(v0->unk_0C) = 1;
        sub_020146F4(v0->unk_10, 0, v0->unk_18, v0);
        sub_02014788(v0->unk_10, 1);
        SysTask_Done(param0);
        Heap_FreeToHeap(v0);
    } else {
        v0->unk_04--;
    }
}

static void ov12_0223646C (UnkStruct_ov12_02235FE0 * param0, UnkFuncPtr_020146F4 param1)
{
    int v0, v1;
    int v2;
    int v3;

    if (param0->unk_94 == 0) {
        v3 = ov12_02235F78(param0->unk_98);

        for (v0 = 0; v0 < v3; v0++) {
            sub_020146F4(param0->unk_14[0], v0, param1, param0);
        }

        param0->unk_5C[0] = 1;
        sub_02014788(param0->unk_14[0], 1);
    } else {
        for (v0 = 0; v0 < param0->unk_10; v0++) {
            UnkStruct_02236430 * v4 = Heap_AllocFromHeap(param0->unk_00, sizeof(UnkStruct_02236430));

            GF_ASSERT(v4 != NULL);

            v4->unk_00 = v0;
            v4->unk_08 = param0->unk_04.unk_00;
            v4->unk_18 = ov12_022365D4;

            param0->unk_5C[v0] = 0;

            v4->unk_0C = &param0->unk_5C[v0];
            v4->unk_10 = param0->unk_14[v0];
            v4->unk_14 = param0->unk_38[v0];

            GF_ASSERT(v4->unk_14 != NULL);
            v4->unk_04 = ov12_02237EA0(v4->unk_14);

            SysTask_Start(ov12_02236430, v4, 1001);
        }
    }
}

static void ov12_02236520 (int param0, VecFx32 * param1)
{
    ov12_02235758(param0, param1, 0, 1);

    {
        int v0;
        int v1;
        s16 v2;
        s16 v3;
        VecFx32 v4;

        switch (param0) {
        case 0:
            v2 = 0;
            v3 = -16;
            break;
        case 1:
            v2 = -15;
            v3 = -25;
            break;
        case 2:
            v2 = -8;
            v3 = -12;
            break;
        case 3:
            v2 = -14;
            v3 = -25;
            break;
        case 4:
            v2 = -8;
            v3 = -12;
            break;
        case 5:
        default:
            v2 = -16;
            v3 = -29;
            break;
        }

        v0 = 172 * ((+10) + v2);
        v1 = 172 * (32 + v3);

        VEC_Set(&v4, v0, v1, 0);

        param1->x -= v4.x;
        param1->y -= v4.y;
    }
}

static void ov12_02236598 (UnkSPLStruct6 * param0)
{
    int v0;
    UnkStruct_ov12_02235FE0 * v1;

    v1 = sub_02014764();
    v0 = v1->unk_04.unk_00;

    {
        VecFx32 v2;

        ov12_02236520(v0, &v2);
        SPL_UnkInline1(param0, &v2);
    }
}

static void ov12_022365D4 (UnkSPLStruct6 * param0)
{
    VecFx32 v0;
    int v1;
    UnkStruct_ov12_02235FE0 * v2;
    UnkStruct_02236430 * v3;

    v3 = sub_02014764();
    v1 = v3->unk_08;

    ov12_02236520(v1, &v0);

    {
        u8 v4;
        u8 v5, v6;
        s16 v7, v8;
        int v9, v10;
        VecFx32 v11;

        v4 = sub_0202CA7C(v3->unk_14);

        if (sub_020981AC(v4) == 1) {
            v5 = sub_0202CA80(v3->unk_14);
            v6 = sub_0202CA84(v3->unk_14);
            v7 = (v5 - 190);
            v8 = (70 - v6 + (+30));
            v9 = v7 * 172;
            v10 = v8 * 172;

            VEC_Set(&v11, v9, v10, 0);

            v0.x += v11.x;
            v0.y += v11.y;
            v0.z += v11.z;
        } else {
            v5 = sub_0202CA80(v3->unk_14);
            v6 = sub_0202CA84(v3->unk_14);
            v7 = (v5 - 190);
            v8 = (70 - v6 + (+30));
            v9 = v7 * 172;
            v10 = v8 * 172;

            VEC_Set(&v11, v9, v10, 0);

            v0.x += v11.x;
            v0.y += v11.y;
            v0.z += v11.z;
        }
    }

    SPL_UnkInline1(param0, &v0);
}

static void ov12_02236648 (UnkSPLStruct6 * param0)
{
    UnkStruct_ov12_02236648 * v0 = sub_02014764();

    {
        VecFx32 v1;
        int v2, v3;
        s16 v4, v5;

        v4 = (v0->unk_00.unk_00 - 190 + 61);
        v5 = (70 - v0->unk_00.unk_02 + (+30));
        v2 = v4 * 172;
        v3 = v5 * 172;

        VEC_Set(&v1, v2, v3, 0);
        SPL_UnkInline1(param0, &v1);
    }
}

UnkStruct_ov12_02236648 * ov12_02236690 (UnkStruct_ov12_02236690 * param0)
{
    UnkStruct_ov12_02236648 * v0;

    v0 = Heap_AllocFromHeap(param0->unk_08, sizeof(UnkStruct_ov12_02236648));
    GF_ASSERT(v0 != NULL);

    v0->unk_00 = *param0;

    if (v0->unk_00.unk_10) {
        v0->unk_20 = ov12_02235F8C((0xFF + 20));
        v0->unk_1C = ov12_02235FA0((0xFF + 20));
    } else {
        v0->unk_20 = ov12_02235F8C(v0->unk_00.unk_04);
        v0->unk_1C = ov12_02235FA0(v0->unk_00.unk_04);
    }

    v0->unk_18 = ov12_02223818(v0->unk_00.unk_08, 99, v0->unk_20, 0);

    return v0;
}

void ov12_022366F0 (UnkStruct_ov12_02236648 * param0)
{
    int v0;
    int v1;
    UnkStruct_ov12_02236648 * v2 = param0;

    if (v2->unk_00.unk_0C == 0xFF) {
        if (v2->unk_00.unk_10) {
            for (v0 = 0; v0 < v2->unk_1C; v0++) {
                sub_020146F4(v2->unk_18, v0, ov12_02236648, v2);
            }
        } else {
            for (v0 = 0; v0 < v2->unk_1C; v0++) {
                if (v0 == ov12_02235FB4(v2->unk_00.unk_04)) {
                    continue;
                }

                sub_020146F4(v2->unk_18, v0, ov12_02236648, v2);
            }
        }
    } else {
        v1 = v2->unk_00.unk_0C;
        sub_020146F4(v2->unk_18, v1, ov12_02236648, v2);
    }

    sub_02014788(v2->unk_18, 1);
}

BOOL ov12_02236764 (UnkStruct_ov12_02236648 * param0)
{
    UnkStruct_ov12_02236648 * v0 = param0;

    if (sub_02014710(v0->unk_18) == 0) {
        ov12_02223894(v0->unk_18);
        return 0;
    }

    return 1;
}

void ov12_02236780 (UnkStruct_ov12_02236648 * param0)
{
    Heap_FreeToHeap(param0);
}

static BOOL(*const Unk_ov12_0223AB84[])(BallRotation *) = {
    ov12_02236F24,
    ov12_022371E4,
    ov12_02237608,
    ov12_02236F10,
    ov12_02237694,
    ov12_02237474
};

static BOOL ov12_02236788 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 1);
    }

    v0 = ov12_0223782C(param0, 2);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022367B0 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 3);
    }

    v0 = ov12_0223782C(param0, 4);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022367D8 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 5);
    }

    v0 = ov12_0223782C(param0, 6);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236800 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 7);
    }

    v0 = ov12_0223782C(param0, 14);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236828 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 15);
    }

    v0 = ov12_0223782C(param0, 18);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236850 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 19);
    }

    v0 = ov12_0223782C(param0, 27);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_02236878 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 21);
    }

    v0 = ov12_0223782C(param0, 22);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL ov12_022368A0 (BallRotation * param0)
{
    BOOL v0;

    if (param0->unk_04 == 0) {
        param0->unk_04++;
        ov12_02237828(param0, 23);
    }

    v0 = ov12_0223782C(param0, 27);

    if (v0 == 1) {
        return 0;
    }

    return 1;
}

static BOOL(*const Unk_ov12_0223AB9C[])(BallRotation *) = {
    ov12_02236788,
    ov12_022367B0,
    ov12_022367D8,
    ov12_02236800,
    ov12_02236828,
    ov12_02236850,
    ov12_02236878,
    ov12_022368A0
};

void ov12_022368C8 (BallRotation * param0, int param1)
{
    param0->unk_00 = param1;
    param0->unk_04 = 0;
}

BOOL ov12_022368D0 (BallRotation * param0, int param1)
{
    BOOL v0;

    v0 = Unk_ov12_0223AB9C[param0->unk_00](param0);
    return v0;
}

static void ov12_022368E4 (BallRotation * param0, int param1)
{
    param0->unk_14 = param1;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
}

static BOOL ov12_022368F0 (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_022368F4 (BallRotation * param0)
{
    BOOL v0;

    v0 = ov12_02236F24(param0);

    if (v0 == 0) {
        ov12_022368E4(param0, 2);
    }

    return 1;
}

static BOOL ov12_0223690C (BallRotation * param0)
{
    ov12_022368E4(param0, 3);
    return 1;
}

static BOOL ov12_02236918 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        sub_0200D364(param0->unk_30, 1);
        {
            UnkStruct_ov12_02236690 v0;

            v0.unk_04 = param0->unk_90.ballID;
            v0.unk_08 = param0->unk_90.heapID;
            v0.unk_0C = 0xFF;
            v0.unk_10 = 0;

            sub_0200D550(param0->unk_30, &v0.unk_00, &v0.unk_02);

            param0->unk_D8 = ov12_02223764(param0->unk_90.battleSys, param0->unk_90.heapID);
            param0->unk_D0 = ov12_02236690(&v0);
        }
        param0->unk_08++;
        break;
    case 1:
    {
        int v1 = sub_0200D3E0(param0->unk_30);

        if (v1 >= 2) {
            param0->unk_24 = 0;
            param0->unk_08++;
        }
    }
    break;
    case 2:
        ov12_022366F0(param0->unk_D0);
        ov12_02223770(param0->unk_D8);
        param0->unk_08++;
        break;
    case 3:
    {
        if (ov12_02236764(param0->unk_D0) == 0) {
            sub_0200D3CC(param0->unk_30, 0);
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
    }
    break;
    default:
        ov12_022368E4(param0, 4);
        break;
    }

    return 1;
}

static BOOL ov12_022369F8 (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_022369FC (BallRotation * param0)
{
    BOOL v0;

    switch (param0->unk_0C) {
    case 0:
        sub_0200D550(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
        param0->unk_B8.unk_04 = 60;
        param0->unk_B8.unk_06 = 180;
        param0->unk_B8.unk_08 = 10;
        param0->unk_B8.unk_10 = 12;
        param0->unk_0C++;
        break;
    default:
    {
        v0 = ov12_02236F24(param0);

        if (v0 == 0) {
            ov12_022368E4(param0, 6);
        }
    }
    break;
    }

    return 1;
}

static BOOL ov12_02236A50 (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_02236A54 (BallRotation * param0)
{
    ov12_022368E4(param0, 8);
    return 1;
}

static BOOL ov12_02236A60 (BallRotation * param0)
{
    ov12_022368E4(param0, 9);
    return 1;
}

static BOOL ov12_02236A6C (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:

    {
        int v0;

        v0 = sub_0200D43C(param0->unk_30);
        sub_02003178(param0->unk_90.paletteSys, 0x4, 1 << v0, -1, 0, 12, 0x37F);

        param0->unk_08++;
    }
    break;
    case 1:
        if (sub_0200384C(param0->unk_90.paletteSys) != 0) {
            break;
        }

        {
            int v1;

            v1 = sub_0200D43C(param0->unk_30);
            sub_02003178(param0->unk_90.paletteSys, 0x4, 1 << v1, -1, 12, 0, 0x37F);
        }

        param0->unk_08++;
        break;
    default:
        if (sub_0200384C(param0->unk_90.paletteSys) != 0) {
            break;
        }

        ov12_022368E4(param0, 10);
        break;
    }

    return 1;
}

static BOOL ov12_02236B14 (BallRotation * param0)
{
    ov12_022368E4(param0, 11);
    return 1;
}

static BOOL ov12_02236B20 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        if ((++param0->unk_0C) < 1) {
            break;
        }

        {
            s16 v0, v1;

            sub_0200D550(param0->unk_30, &v0, &v1);
            ov12_02225BC8(&param0->unk_48[0], v0, v0, v1, v1 + 32, 32 / 3);

            param0->unk_08++;
        }
        break;
    case 1:
        if (ov12_02225C50(&param0->unk_48[0], param0->unk_30) == 0) {
            param0->unk_08++;

            ov12_022368E4(param0, 13);
        }
        break;
    default:
        break;
    }

    return 1;
}

static BOOL ov12_02236B94 (BallRotation * param0)
{
    return 1;
}

static const s16 Unk_ov12_0223ACF0[][3] = {
    {0x0, -7, 0x1},
    {0x1, -5, 0x0},
    {0x0, -3, 0x0},
    {0x1, -2, 0x0},
    {0x1, 0x2, 0x0},
    {0x1, 0x3, 0x0},
    {0x0, 0x5, 0x0},
    {0x1, 0x7, 0x1},
    {0x0, -5, 0x1},
    {0x0, -3, 0x0},
    {0x1, -2, 0x0},
    {0x1, 0x2, 0x0},
    {0x0, 0x3, 0x0},
    {0x0, 0x5, 0x1},
    {0x0, -2, 0x0},
    {0x1, -1, 0x0},
    {0x0, 0x1, 0x0},
    {0x0, 0x2, 0x0},
    {0x0, -2, 0x1},
    {0x0, 0x2, 0x1},
    {0xFF, 0xFF, 0x0}
};

static const int Unk_ov12_0223ABE4[][2] = {
    {0x1, 0x5E6},
    {0x8, 0x5E6},
    {0xE, 0x5E7},
    {0x12, 0x5E8},
    {0x14, 0x5E9}
};

static BOOL ov12_02236B98 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        sub_0200D364(param0->unk_30, 1);
        sub_0200D3CC(param0->unk_30, 0);
        param0->unk_08++;
    case 1:
    {
        s16 v0, v1;
        int v2;

        v0 = 0;
        v1 = Unk_ov12_0223ACF0[param0->unk_0C][1];
        v2 = Unk_ov12_0223ACF0[param0->unk_0C][2];

        sub_0200D3CC(param0->unk_30, v2);

        param0->unk_0C++;

        {
            int v3;

            for (v3 = 0; v3 < 5; v3++) {
                if (Unk_ov12_0223ABE4[v3][0] == param0->unk_0C) {
                    sub_02005728(Unk_ov12_0223ABE4[v3][1], 117);
                }
            }
        }

        if ((param0->unk_0C > 20) || (v0 == 0xFF) || (v1 == 0xFF)) {
            param0->unk_08++;
        } else {
            sub_0200D5DC(param0->unk_30, v0, v1);
        }
    }
    break;
    default:
        ov12_022368E4(param0, 14);
        break;
    }

    return 1;
}

static BOOL ov12_02236C34 (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_02236C38 (BallRotation * param0)
{
    param0->unk_0C++;

    if (param0->unk_0C >= 14) {
        param0->unk_08++;
        param0->unk_0C = 0;
        ov12_022368E4(param0, 16);
    }

    return 1;
}

static BOOL ov12_02236C58 (BallRotation * param0)
{
    ov12_022368E4(param0, 17);
    return 1;
}

static const s16 Unk_ov12_0223AC38[][12] = {
    {-2, -0, 0x2, 0x2, 0x0, -2, 0xFF, 0xFF, 0xFF},
    {-1, -0, 0x1, 0x1, 0x0, -1, 0xFF, 0xFF, 0xFF},
    {-1, 0x0, 0x1, 0x1, 0x0, -1, 0x0, 0x0, 0x0, 0x0, 0x0, 0xFF}
};

static BOOL ov12_02236C64 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        GF_ASSERT(param0->unk_18 < 3);
        param0->unk_08++;
    case 1:
    {
        s16 v0;

        v0 = Unk_ov12_0223AC38[param0->unk_18][param0->unk_0C];
        param0->unk_0C++;

        if ((param0->unk_0C > 11) || (v0 == 0xFF)) {
            param0->unk_08++;
            param0->unk_18++;
            sub_0200D79C(param0->unk_30, 0);
            ov12_022368E4(param0, 18);
            return 1;
        } else {
            if (param0->unk_0C == 5) {
                sub_02005728(1534, 117);
            }

            sub_0200D5DC(param0->unk_30, v0, 0);
            sub_0200D7C0(param0->unk_30, (((((v0) * 2) * 0xffff) / 360)));
        }
    }
    break;
    default:
        break;
    }

    return 1;
}

static BOOL ov12_02236CFC (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_02236D00 (BallRotation * param0)
{
    ov12_022368E4(param0, 20);
    return 1;
}

static BOOL ov12_02236D0C (BallRotation * param0)
{
    ov12_022368E4(param0, 27);
    return 1;
}

static BOOL ov12_02236D18 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:

    {
        int v0;

        v0 = sub_0200D43C(param0->unk_30);
        sub_02003178(param0->unk_90.paletteSys, 0x4, 1 << v0, -5, 0, 10, 0x0);

        param0->unk_08++;
    }
    break;
    case 1:
        if (sub_0200384C(param0->unk_90.paletteSys) != 0) {
            break;
        }

        {
            UnkStruct_ov12_02236690 v1;

            v1.unk_04 = param0->unk_90.ballID;
            v1.unk_08 = param0->unk_90.heapID;
            v1.unk_0C = ov12_02235FB4(v1.unk_04);
            v1.unk_10 = 0;

            sub_0200D550(param0->unk_30, &v1.unk_00, &v1.unk_02);
            param0->unk_D0 = ov12_02236690(&v1);
        }
        param0->unk_08++;
        break;
    case 2:
        ov12_022366F0(param0->unk_D0);
        param0->unk_08++;
        break;
    case 3:
    {
        if (ov12_02236764(param0->unk_D0) == 0) {
            sub_0200D3CC(param0->unk_30, 0);
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
    }
    break;
    default:
        if (sub_0200384C(param0->unk_90.paletteSys) != 0) {
            break;
        }

        ov12_022368E4(param0, 22);
        break;
    }

    return 1;
}

static BOOL ov12_02236E08 (BallRotation * param0)
{
    return 1;
}

static BOOL ov12_02236E0C (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
    {
        int v0;

        v0 = sub_0200D43C(param0->unk_30);
        sub_02003178(param0->unk_90.paletteSys, 0x4, 1 << v0, -5, 10, 0, 0x0);
    }
        param0->unk_08++;
        break;
    case 1:
        if (sub_0200384C(param0->unk_90.paletteSys) != 0) {
            break;
        }

        param0->unk_08++;
        break;
    default:
        ov12_022368E4(param0, 24);
        break;
    }

    return 1;
}

static BOOL ov12_02236E70 (BallRotation * param0)
{
    ov12_022368E4(param0, 25);
    return 1;
}

static BOOL ov12_02236E7C (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        sub_0200D810(param0->unk_30, GX_OAM_MODE_XLU);
        param0->unk_08++;
    case 1:
        if (param0->unk_20 > 0) {
            param0->unk_20--;
            param0->unk_21++;
        } else {
            param0->unk_20 = 0;
            param0->unk_21 = 15;
            sub_0200D3F4(param0->unk_30, 0);
            param0->unk_08++;
        }

        G2_ChangeBlendAlpha(param0->unk_20, param0->unk_21);
        break;
    default:
        ov12_022368E4(param0, 26);
        break;
    }

    return 1;
}

static BOOL ov12_02236F00 (BallRotation * param0)
{
    ov12_022368E4(param0, 27);
    return 1;
}

static BOOL ov12_02236F0C (BallRotation * param0)
{
    return 0;
}

static BOOL(*const Unk_ov12_0223AC80[])(BallRotation *) = {
    ov12_022368F0,
    ov12_022368F4,
    ov12_0223690C,
    ov12_02236918,
    ov12_022369F8,
    ov12_022369FC,
    ov12_02236A50,
    ov12_02236A54,
    ov12_02236A60,
    ov12_02236A6C,
    ov12_02236B14,
    ov12_02236B20,
    ov12_02236B94,
    ov12_02236B98,
    ov12_02236C34,
    ov12_02236C38,
    ov12_02236C58,
    ov12_02236C64,
    ov12_02236CFC,
    ov12_02236D00,
    ov12_02236D0C,
    ov12_02236D18,
    ov12_02236E08,
    ov12_02236E0C,
    ov12_02236E70,
    ov12_02236E7C,
    ov12_02236F00,
    ov12_02236F0C
};

static BOOL ov12_02236F10 (BallRotation * param0)
{
    BOOL v0;

    v0 = Unk_ov12_0223AC80[param0->unk_14](param0);
    return v0;
}

static BOOL ov12_02236F24 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        ov12_02225C98(&param0->unk_48[0], &param0->unk_48[1], param0->unk_B8.unk_00, param0->unk_B8.unk_04, param0->unk_B8.unk_02, param0->unk_B8.unk_06, param0->unk_B8.unk_08, param0->unk_B8.unk_10 * FX32_ONE);

        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        param0->unk_D4 = NULL;

        {
            int v0;

            if (ov12_02235EB0(param0->unk_90.type) == 1) {
                v0 = (LCRNG_Next() % 20) + 10;

                sub_0200D7C0(param0->unk_30, 0x2000 * v0);
            }
        }
        break;
    case 1:
        if (ov12_02235EB0(param0->unk_90.type) == 1) {
            sub_0200D7C0(param0->unk_30, 0x2000);

            if (param0->unk_B8.unk_0C > ((param0->unk_B8.unk_08 / 2) + 10)) {
                sub_0200D7C0(param0->unk_30, 0x2000);
            }

            if (ov12_02235EF0(param0->unk_90.type) == 1) {
                if (param0->unk_B8.unk_0C == ((param0->unk_B8.unk_08 / 2) + 10)) {
                    int v1;

                    v1 = sub_0200D43C(param0->unk_30);
                    param0->unk_D4 = ov12_02226870(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v1 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
        }

        param0->unk_B8.unk_0C++;

        if ((param0->unk_90.type >= 6) && (param0->unk_90.type <= 8)) {
            if ((param0->unk_B8.unk_0C > (param0->unk_B8.unk_08 / 2)) && (param0->unk_B8.unk_0C < ((param0->unk_B8.unk_08 / 2) + 5))) {
                break;
            }
        }

        if (ov12_02225D2C(&param0->unk_48[0], &param0->unk_48[1], param0->unk_30) == 0) {
            ov12_02237E24(param0, 0);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((ov12_02235EF0(param0->unk_90.type) == 1) && (param0->unk_D4 != NULL)) {
            if (ov12_02226848(param0->unk_D4) == 1) {
                break;
            }

            ov12_02226858(param0->unk_D4);
            param0->unk_28 = 1;

            return 0;
        } else {
            if (param0->unk_90.type >= 15) {
                param0->unk_28 = 1;
                return 0;
            }

            if (param0->unk_90.ballID == (0xFF + 18)) {
                sub_02005728(2024, 117);
            }

            param0->unk_08++;
        }
        break;
    case 3:
        sub_0200D364(param0->unk_30, 1);
        ov12_02237E30(param0, 1);
        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        break;
    default:
        if (param0->unk_B8.unk_0C == 5) {
            {
                int v2;

                if ((param0->unk_90.type != 12) && (param0->unk_90.type != 13)) {
                    v2 = sub_0200D43C(param0->unk_30);
                    param0->unk_D4 = ov12_02226870(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v2 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
            param0->unk_28 = 1;
        }

        if ((++param0->unk_B8.unk_0C) <= 15) {
            break;
        }

        if ((param0->unk_90.type != 12) && (param0->unk_90.type != 13)) {
            if (ov12_02226848(param0->unk_D4) == 1) {
                break;
            }

            ov12_02226858(param0->unk_D4);
        }

        return 0;
    }

    return 1;
}

static BOOL ov12_022371E4 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        ov12_02225C98(&param0->unk_48[0], &param0->unk_48[1], param0->unk_B8.unk_00, param0->unk_B8.unk_04, param0->unk_B8.unk_02, param0->unk_B8.unk_06, param0->unk_B8.unk_08, param0->unk_B8.unk_10 * FX32_ONE);

        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        param0->unk_D4 = NULL;

        {
            int v0;

            if (ov12_02235EB0(param0->unk_90.type) == 1) {
                v0 = (LCRNG_Next() % 20) + 10;

                sub_0200D7C0(param0->unk_30, 0x2000 * v0);
            }
        }
        break;
    case 1:
        if (ov12_02235EB0(param0->unk_90.type) == 1) {
            sub_0200D7C0(param0->unk_30, 0x2000);

            if (param0->unk_B8.unk_0C > ((param0->unk_B8.unk_08 / 2) + 10)) {
                sub_0200D7C0(param0->unk_30, 0x2000);
            }

            if (ov12_02235EF0(param0->unk_90.type) == 1) {
                if (param0->unk_B8.unk_0C == ((param0->unk_B8.unk_08 / 2) + 10)) {
                    int v1;

                    v1 = sub_0200D43C(param0->unk_30);
                    param0->unk_D4 = ov12_02226870(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v1 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
                }
            }
        }

        param0->unk_B8.unk_0C++;

        if ((param0->unk_90.type >= 6) && (param0->unk_90.type <= 8)) {
            if ((param0->unk_B8.unk_0C > (param0->unk_B8.unk_08 / 2)) && (param0->unk_B8.unk_0C < ((param0->unk_B8.unk_08 / 2) + 5))) {
                break;
            }
        }

        if (ov12_02225D2C(&param0->unk_48[0], &param0->unk_48[1], param0->unk_30) == 0) {
            ov12_02237E24(param0, 0);
            param0->unk_08++;
        }
        break;
    case 2:
        if ((ov12_02235EF0(param0->unk_90.type) == 1) && (param0->unk_D4 != NULL)) {
            if (ov12_02226848(param0->unk_D4) == 1) {
                break;
            }

            ov12_02226858(param0->unk_D4);
            param0->unk_28 = 1;

            return 0;
        } else {
            if (param0->unk_90.type >= 15) {
                param0->unk_28 = 1;

                return 0;
            }

            param0->unk_08++;
        }
        break;
    case 3:
        sub_0200D364(param0->unk_30, 1);
        ov12_02237E30(param0, 0);
        param0->unk_B8.unk_0C = 0;
        param0->unk_08++;
        break;
    default:
        if (param0->unk_B8.unk_0C == 5) {
            sub_0200D3CC(param0->unk_30, 2);

            {
                int v2;

                v2 = sub_0200D43C(param0->unk_30);
                param0->unk_D4 = ov12_02226870(param0->unk_90.paletteSys, param0->unk_90.heapID, 2, v2 * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
            }

            param0->unk_28 = 1;
        }

        if ((++param0->unk_B8.unk_0C) <= 15) {
            break;
        }

        if (ov12_02226848(param0->unk_D4) == 1) {
            break;
        }

        ov12_02226858(param0->unk_D4);

        return 0;
    }

    return 1;
}

static const int Unk_ov12_0223ABBC[][2] = {
    {0x0, 0x2},
    {0x2, 0x2},
    {0x2, 0x6},
    {0x1, 0x6},
    {0x0, 0x6}
};

static BOOL ov12_02237474 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
        ov12_02237E30(param0, 0);
        sub_0200D364(param0->unk_30, 1);
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[0][1]) {
            sub_0200D3CC(param0->unk_30, Unk_ov12_0223ABBC[0][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[1][1]) {
            sub_0200D3CC(param0->unk_30, Unk_ov12_0223ABBC[1][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 2:
    {
        UnkStruct_ov12_02236690 v0;

        v0.unk_04 = param0->unk_90.ballID;
        v0.unk_08 = param0->unk_90.heapID;
        v0.unk_0C = 0xFF;
        v0.unk_10 = 1;

        sub_0200D550(param0->unk_30, &v0.unk_00, &v0.unk_02);
        param0->unk_D0 = ov12_02236690(&v0);
    }
        param0->unk_08++;
        break;
    case 3:
        ov12_022366F0(param0->unk_D0);
        param0->unk_08++;
        break;
    case 4:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[2][1]) {
            sub_0200D3CC(param0->unk_30, Unk_ov12_0223ABBC[2][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 5:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[3][1]) {
            sub_0200D3CC(param0->unk_30, Unk_ov12_0223ABBC[3][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 6:
        param0->unk_B8.unk_0C++;

        if (param0->unk_B8.unk_0C >= Unk_ov12_0223ABBC[4][1]) {
            sub_0200D3CC(param0->unk_30, Unk_ov12_0223ABBC[4][0]);
            param0->unk_B8.unk_0C = 0;
            param0->unk_08++;
        }
        break;
    case 7:
        if (ov12_02236764(param0->unk_D0) == 0) {
            ov12_02236780(param0->unk_D0);
            param0->unk_08++;
        }
        break;
    default:
        return 0;
        break;
    }

    return 1;
}

static BOOL ov12_02237608 (BallRotation * param0)
{
    switch (param0->unk_08) {
    case 0:
    {
        if (param0->unk_10 == 0) {
            ov12_02225D50(&param0->unk_34, -((45 * 0xffff) / 360), +((45 * 0xffff) / 360), 10);
        } else {
            ov12_02225D50(&param0->unk_34, +((45 * 0xffff) / 360), -((45 * 0xffff) / 360), 10);
        }

        param0->unk_10 ^= 1;
    }
        param0->unk_08++;
        break;
    case 1:
        sub_0200D79C(param0->unk_30, param0->unk_34.unk_00);

        if (ov12_02225DA0(&param0->unk_34) == 0) {
            if (param0->unk_0C >= 1) {
                param0->unk_08++;
            } else {
                param0->unk_0C++;
                param0->unk_08--;
            }
        }
        break;
    default:
        param0->unk_B8.unk_0C = 0;
        return 0;
        break;
    }

    return 1;
}

static BOOL ov12_02237694 (BallRotation * param0)
{
    if (param0->unk_08 == 0xFF) {
        return 0;
    }

    if (param0->unk_30 != NULL) {
        s16 v0, v1;

        sub_0200D550(param0->unk_30, &v0, &v1);

        param0->unk_B8.unk_00 = v0;
        param0->unk_B8.unk_02 = v1;
    }

    return 1;
}

static void ov12_022376D0 (SysTask * param0, void * param1)
{
    BOOL v0;
    BallRotation * v1 = (BallRotation *)param1;

    if (v1->unk_1C == 0) {
        return;
    }

    if (v1->unk_DC > 0) {
        v1->unk_DC--;
        sub_0200C7EC(v1->unk_2C);
        return;
    }

    v0 = Unk_ov12_0223AB84[v1->unk_90.mode](v1);

    if (v0 == 0) {
        v1->unk_1C = 0;
    }

    if (v1->unk_24 == 1) {
        sub_0200D330(v1->unk_30);
    }

    sub_0200C7EC(v1->unk_2C);
}

BallRotation * ov12_02237728 (BallThrow * param0)
{
    BallRotation * v0 = NULL;

    v0 = Heap_AllocFromHeap(param0->heapID, sizeof(BallRotation));
    MI_CpuClear8(v0, sizeof(BallRotation));

    GF_ASSERT(v0 != NULL);

    v0->unk_90 = (*param0);
    v0->unk_08 = 0;
    v0->unk_10 = 0;
    v0->unk_0C = 0;
    v0->unk_14 = 0;
    v0->unk_18 = 0;
    v0->unk_00 = 0;
    v0->unk_04 = 0;
    v0->unk_2C = sub_0200C704(v0->unk_90.cellActorSys);
    v0->unk_DC = 0;
    v0->unk_24 = ov12_02235F2C(v0->unk_90.type);
    v0->unk_B8.unk_0C = 0;
    v0->unk_20 = 16;
    v0->unk_21 = 0;

    ov12_02220474();

    {
        int v1;

        v1 = LCRNG_Next() % 2;

        if (v1) {
            v0->unk_22 = +1;
        } else {
            v0->unk_22 = -1;
        }
    }

    ov12_02237C54(v0);
    ov12_02237D8C(v0);
    ov12_022378A0(v0);

    v0->unk_1C = 1;
    v0->unk_28 = 0;
    v0->unk_CC = SysTask_Start(ov12_022376D0, v0, 1000);

    return v0;
}

BOOL ov12_022377F8 (BallRotation * param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_1C ? 1 : 0;
}

BOOL ov12_02237810 (BallRotation * param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_28 ? 1 : 0;
}

void ov12_02237828 (BallRotation * param0, int param1)
{
    param0->unk_14 = param1;
}

BOOL ov12_0223782C (BallRotation * param0, int param1)
{
    return (param0->unk_14 == param1) ? 1 : 0;
}

void ov12_0223783C (BallRotation * param0)
{
    int v0 = param0->unk_90.heapID;

    GF_ASSERT(param0 != NULL);

    sub_0200D0B0(param0->unk_90.cellActorSys, param0->unk_2C);
    sub_0200D0F4(param0->unk_30);
    SysTask_Done(param0->unk_CC);
    Heap_FreeToHeap(param0);
}

void ov12_0223786C (BallRotation * param0, int param1)
{
    param0->unk_90.mode = param1;
    param0->unk_08 = 0;
    param0->unk_0C = 0;
    param0->unk_10 = 0;
    param0->unk_1C = 1;

    sub_0200D550(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
}

int ov12_02237890 (BallRotation * param0)
{
    GF_ASSERT(param0 != NULL);

    return param0->unk_90.mode;
}

static void ov12_022378A0 (BallRotation * param0)
{
    sub_0200D550(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);

    switch (param0->unk_90.type) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
        sub_0200D550(param0->unk_30, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 0;
        param0->unk_B8.unk_08 = 12;
        return;
    case 6:
        ov12_02225864(0, 0, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 7:
        sub_0200D550(param0->unk_30, &param0->unk_B8.unk_00, &param0->unk_B8.unk_02);
        ov12_02225864(1, 4, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 8:
        ov12_02225864(1, 2, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 9:
        ov12_02225864(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 10:
        ov12_02225864(1, 3, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 11:
        ov12_02225864(1, 5, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 48;
        param0->unk_B8.unk_06 += 32;
        break;
    case 12:
        ov12_02225864(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 16;
        param0->unk_B8.unk_06 += 16;
        param0->unk_B8.unk_08 = 12;
        return;
    case 13:
        ov12_02225864(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 32;
        param0->unk_B8.unk_04 -= 20;
        param0->unk_B8.unk_06 += 38;
        param0->unk_B8.unk_08 = 16;
        return;
    case 14:
        param0->unk_B8.unk_04 = 128;
        param0->unk_B8.unk_06 = (96 - 32);
        param0->unk_B8.unk_10 = 32;
        param0->unk_B8.unk_06 += 32;
        break;
    case 15:
        ov12_02225864(0, 1, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    case 16:
        ov12_02225864(1, 3, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    case 17:
        ov12_02225864(1, 5, &param0->unk_B8.unk_04, &param0->unk_B8.unk_06);
        param0->unk_B8.unk_10 = 64;
        param0->unk_B8.unk_06 += 8;
        param0->unk_B8.unk_08 = 16;
        return;
    default:
        break;
    }

    param0->unk_B8.unk_08 = 20;
}

static void ov12_02237B14 (BallRotation * param0, s16 * param1, s16 * param2)
{
    switch (param0->unk_90.type) {
    case 0:
        ov12_02225864(0, 0, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 1:
        ov12_02225864(0, 1, param1, param2);
        (*param2) += 38;
        break;
    case 2:
        ov12_02225864(1, 2, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 4:
        ov12_02225864(1, 4, param1, param2);
        (*param2) += (32 + 8);
        break;
    case 3:
        ov12_02225864(1, 3, param1, param2);
        (*param2) += 38;
        break;
    case 5:
        ov12_02225864(1, 5, param1, param2);
        (*param2) += 38;
        break;
    case 6:
        *param1 = 10;
        *param2 = 100;
        break;
    case 7:
        *param1 = 10;
        *param2 = 100;
        break;
    case 8:
        *param1 = 10;
        *param2 = 100;
        break;
    case 9:
        ov12_02225864(0, 0, param1, param2);
        break;
    case 10:
        ov12_02225864(0, 0, param1, param2);
        break;
    case 11:
        ov12_02225864(0, 0, param1, param2);
        break;
    case 12:
        ov12_02225864(0, 0, param1, param2);
        break;
    case 13:
        ov12_02225864(0, 0, param1, param2);
        break;
    case 14:
        *param1 = 230;
        *param2 = 32;
        break;
    case 15:
    case 16:
    case 17:
        *param1 = -30;
        *param2 = 160;
        break;
    default:
        break;
    }
}

static void ov12_02237C54 (BallRotation * param0)
{
    int v0;
    int v1;
    int v2;
    int v3;

    sub_0200C7C0(param0->unk_90.cellActorSys, param0->unk_2C, 10);

    if (param0->unk_90.surface == 0) {
        sub_0200964C(sub_0200C738(param0->unk_90.cellActorSys), 0, ((192 + 80) << FX32_SHIFT));
    }

    {
        int v4;
        UnkStruct_ov104_02241308 v5;

        for (v4 = 0; v4 < 6; v4++) {
            v5.val1[v4] = 10;
        }

        v5.val1[4] = 0;
        v5.val1[5] = 0;

        sub_0200CB30(param0->unk_90.cellActorSys, param0->unk_2C, &v5);
    }

    v0 = ov12_02235FC8(param0->unk_90.ballID, 0);
    v1 = ov12_02235FC8(param0->unk_90.ballID, 1);
    v2 = ov12_02235FC8(param0->unk_90.ballID, 2);
    v3 = ov12_02235FC8(param0->unk_90.ballID, 3);

    {
        NARC * v6;

        v6 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, param0->unk_90.heapID);

        sub_0200CC3C(param0->unk_90.cellActorSys, param0->unk_2C, v6, v0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, param0->unk_90.target + 6000);
        sub_0200CDC4(param0->unk_90.paletteSys, 2, param0->unk_90.cellActorSys, param0->unk_2C, v6, v1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param0->unk_90.target + 6000);
        sub_0200CE24(param0->unk_90.cellActorSys, param0->unk_2C, v6, v2, 1, param0->unk_90.target + 6000);
        sub_0200CE54(param0->unk_90.cellActorSys, param0->unk_2C, v6, v3, 1, param0->unk_90.target + 6000);
        NARC_dtor(v6);
    }
}

static void ov12_02237D8C (BallRotation * param0)
{
    int v0;
    UnkStruct_ov104_0223F9E0 v1;
    int v2;

    ov12_02237B14(param0, &v1.unk_00, &v1.unk_02);

    v1.unk_04 = 0;
    v1.unk_06 = 0;
    v1.unk_08 = 0;
    v1.unk_0C = 0;
    v1.unk_10 = 1;
    v1.unk_2C = param0->unk_90.bgPrio;
    v1.unk_30 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v1.unk_14[v0] = param0->unk_90.target + 6000;
    }

    param0->unk_30 = sub_0200CE6C(param0->unk_90.cellActorSys, param0->unk_2C, &v1);

    sub_0200D3F4(param0->unk_30, 1);
    sub_0200D6A4(param0->unk_30, 2);
    sub_0200D3CC(param0->unk_30, 0);
    sub_0200D364(param0->unk_30, 0);
    sub_0200D330(param0->unk_30);

    ov12_02220474();
}

void ov12_02237E0C (BallRotation * param0, int param1)
{
    sub_0200D3F4(param0->unk_30, param1);
}

void ov12_02237E18 (BallRotation * param0, s16 param1, s16 param2)
{
    sub_0200D4C4(param0->unk_30, param1, param2);
}

void ov12_02237E24 (BallRotation * param0, u16 param1)
{
    sub_0200D79C(param0->unk_30, param1);
}

void ov12_02237E30 (BallRotation * param0, BOOL param1)
{
    param0->unk_24 = param1;
}

void ov12_02237E34 (BallRotation * param0, int param1)
{
    sub_0200D474(param0->unk_30, param1);
}

void ov12_02237E40 (BallRotation * param0, int param1)
{
    sub_0200D460(param0->unk_30, param1);
}

void ov12_02237E4C (BallRotation * param0, int param1)
{
    param0->unk_DC = param1;
}
