#include "overlay117/ov117_02263AF0.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_020127E8.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay117/ov117_02260668.h"
#include "overlay117/ov117_022666C0.h"
#include "overlay117/struct_ov117_02261280.h"
#include "overlay117/struct_ov117_02263DAC.h"
#include "overlay117/struct_ov117_02263EF8.h"
#include "overlay117/struct_ov117_02264508.h"
#include "overlay117/struct_ov117_02264808.h"
#include "overlay117/struct_ov117_02264930.h"
#include "overlay117/struct_ov117_02264E84.h"
#include "overlay117/struct_ov117_0226504C.h"
#include "overlay117/struct_ov117_022653F4.h"
#include "overlay117/struct_ov117_02265428.h"
#include "overlay117/struct_ov117_02265C1C.h"
#include "overlay117/struct_ov117_02265C3C.h"
#include "overlay117/struct_ov117_02265EB0.h"
#include "overlay117/struct_ov117_02265EC8.h"
#include "overlay117/struct_ov117_02266274.h"
#include "overlay117/struct_ov117_02266344.h"
#include "overlay117/struct_ov117_02266F10.h"

#include "communication_system.h"
#include "error_handling.h"
#include "font.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"
#include "text.h"
#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "unk_0201E86C.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    fx32 unk_04;
} UnkStruct_ov117_02266BEC;

typedef struct {
    s32 unk_00[3];
} UnkStruct_ov117_02266ED4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov117_02266BC4;

static void ov117_02263BA4(BGL *param0, UnkStruct_ov117_02263DAC *param1, int param2);
int ov117_02263DAC(UnkStruct_ov117_02261280 *param0);
static void ov117_02263C8C(int param0, int param1, int param2, fx32 *param3, fx32 *param4);
static int ov117_02263D08(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02263DAC *param1, int param2, int param3, int param4);
static int ov117_02263E1C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_02264E84 *param1, UnkStruct_ov117_02263EF8 *param2);
static BOOL ov117_02263F80(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02263EF8 *param1);
static CellActorData *ov117_0226417C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_02266F10 *param1);
static void ov117_02264214(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264808 *param1, UnkStruct_ov117_02263DAC *param2);
static void ov117_02263B8C(BGL *param0, UnkStruct_ov117_02263DAC *param1);
static CellActorData *ov117_02264884(UnkStruct_ov117_02261280 *param0, int param1, int param2);
void ov117_022648E0(UnkStruct_ov117_02261280 *param0);
BOOL ov117_02264930(UnkStruct_ov117_02261280 *param0);
static BOOL ov117_02264958(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264930 *param1, int param2, int param3);
static void ov117_0226498C(UnkStruct_ov117_02264930 *param0);
static void ov117_022649D8(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264930 *param1);
static int ov117_02264A70(int param0);
static void ov117_02264A84(UnkStruct_ov117_02261280 *param0);
static void ov117_02265438(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2);
static void ov117_02265428(UnkStruct_ov117_02265428 *param0, int param1);
static int ov117_0226544C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2);
static int ov117_02265454(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2);
static int ov117_02265644(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2);
static int ov117_022657C4(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2);
static int ov117_022653F4(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 **param1);
static BOOL ov117_02265C3C(UnkStruct_ov117_02265C3C *param0, UnkStruct_ov117_02265C1C *param1);
static void ov117_02265FD4(UnkStruct_ov117_02265EC8 *param0);
static BOOL ov117_02266008(UnkStruct_ov117_02265EC8 *param0);
static BOOL ov117_02266030(UnkStruct_ov117_02265EC8 *param0);
static void ov117_02266344(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02266344 *param1);
static void ov117_02266384(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02266344 *param1);
static void ov117_0226639C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 *param1, UnkStruct_ov117_02266344 *param2);
static void ov117_02266440(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 *param1, UnkStruct_ov117_02266344 *param2);

static const u16 Unk_ov117_02266C7C[][4] = {
    { 0x16, 0x15, 0x17, 0x18 },
    { 0x16, 0x15, 0x17, 0x18 },
    { 0x16, 0x17 },
    { 0x16, 0x18, 0x17 },
    { 0x16, 0x15, 0x17, 0x18 }
};

__attribute__((aligned(4))) static const u16 Unk_ov117_02266B6C[] = {
    0x6,
    0x8,
    0x7
};

static const UnkStruct_ov117_02266F10 Unk_ov117_02266F10[][4] = {
    {
        { 0x80, 0xD0, 0x7, 0x2, 0x2 },
    },
    {
        { 0x80, 0xD0, 0x7, 0x2, 0x2 },
    },
    {
        { 0x80, 0xD0, 0x7, 0x2, 0x2 },
        { 0x80, 0xFFFFFFFFFFFFFFF0, 0xA, 0x1, 0x0 },
    },
    {
        { 0x80, 0xD0, 0x7, 0x2, 0x2 },
        { 0xFFFFFFFFFFFFFFF0, 0x60, 0x9, 0x3, 0x3 },
        { 0x110, 0x60, 0x8, 0x1, 0x1 },
    },
    {
        { 0x80, 0xD0, 0x7, 0x2, 0x2 },
        { 0xFFFFFFFFFFFFFFF0, 0x60, 0x9, 0x4, 0x3 },
        { 0x80, 0xFFFFFFFFFFFFFFF0, 0xA, 0x1, 0x0 },
        { 0x100, 0x60, 0x8, 0x3, 0x1 },
    },
};

static const SpriteTemplate Unk_ov117_02266CCC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x14,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266D00 = {
    0x80,
    0x60,
    0x0,
    0x0,
    0xC,
    0x5,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov117_02266D34 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xB,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov117_02266D68 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x13,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266D9C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x10,
    0x2,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266DD0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xF,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266E04 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x12,
    0x1,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266E38 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x11,
    0x0,
    NNS_G2D_VRAM_TYPE_2DSUB,
    { 0x2714, 0x2716, 0x2714, 0x2714, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266E6C = {
    0x28,
    0xB0,
    0x0,
    0x0,
    0xD,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2712, 0x2714, 0x2712, 0x2712, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov117_02266EA0 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xB,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x2711, 0x2712, 0x2711, 0x2711, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

static const u16 Unk_ov117_02266CA4[][4] = {
    { 0x1D, 0x2D, 0xD, 0x3D },
    { 0x1D, 0x2D, 0xD, 0x3D },
    { 0x1D, 0xD },
    { 0x1D, 0x3D, 0xD },
    { 0x1D, 0x2D, 0xD, 0x3D }
};

static const u16 Unk_ov117_02266B72[4] = {
    0x1D,
    0xD,
    0x3D,
    0x2D
};

static const u16 Unk_ov117_02266C04[][4] = {
    { 0x20, 0x10, 0x30, 0x40 },
    { 0x20, 0x10, 0x30, 0x40 },
    { 0x20, 0x10 },
    { 0x20, 0x30, 0x10 },
    { 0x20, 0x40, 0x10, 0x30 }
};

static const u16 Unk_ov117_02266B8A[4] = {
    0x20,
    0x10,
    0x30,
    0x40
};

static const fx32 Unk_ov117_02266BA4[] = {
    FX32_ONE,
    0x1800,
    0xA00,
    0x2000
};

static const u16 Unk_ov117_02266C54[][4] = {
    { 0x52, 0x51, 0x53, 0x54 },
    { 0x52, 0x51, 0x53, 0x54 },
    { 0x52, 0x51 },
    { 0x52, 0x53, 0x51 },
    { 0x52, 0x54, 0x51, 0x53 }
};

static const u16 Unk_ov117_02266B82[4] = {
    0x52,
    0x51,
    0x53,
    0x54
};

static const struct {
    s16 unk_00;
    s16 unk_02;
} Unk_ov117_02266BB4[] = {
    { 0x80, 0xA4 },
    { 0x80, 0x1C },
    { 0x34, 0x60 },
    { 0xCC, 0x60 }
};

static const u16 Unk_ov117_02266B7A[] = {
    0xC,
    0xC,
    0xF,
    0x12
};

static const u16 Unk_ov117_02266C2C[][4] = {
    { 0x2, 0x4, 0x1, 0x3 },
    { 0x2, 0x4, 0x1, 0x3 },
    { 0x2, 0x1 },
    { 0x2, 0x3, 0x1 },
    { 0x2, 0x4, 0x1, 0x3 }
};

static const u8 Unk_ov117_02266BD8[][4] = {
    { 0x0 },
    { 0x0, 0x2, 0x1, 0x3 },
    { 0x0, 0x1 },
    { 0x0, 0x2, 0x3 },
    { 0x0, 0x2, 0x1, 0x3 }
};

static const UnkStruct_ov117_02266ED4 Unk_ov117_02266ED4[] = {
    { 0xBB8, 0x1770, 0x1F40 },
    { 0x3E8, 0x3E8, 0x3E8 },
    { 0x19A6, 0x20FA, 0x284E },
    { 0x20EC, 0x2A54, 0x33BC },
    { 0x2648, 0x3138, 0x3C28 }
};

static const UnkStruct_ov117_02266BEC Unk_ov117_02266BEC[] = {
    { 0xB, 0xC, 0x1100 },
    { 0x9, 0xA, 0x1700 },
    { 0x7, 0x8, 0x1D00 }
};

static const UnkStruct_ov117_02266BC4 Unk_ov117_02266BC4[] = {
    { 0x8, 0x14, 0x7 },
    { 0x8, 0x11, 0x7 },
    { 0x8, 0xE, 0x6 },
    { 0x8, 0xA, 0x6 },
    { 0x8, 0x6, 0x5 }
};

const s32 Unk_ov117_02266FD8[] = {
    0x64,
    0x7D,
    0x58
};

static int (*const Unk_ov117_02266B94[])(UnkStruct_ov117_02261280 *, UnkStruct_ov117_022653F4 *, UnkStruct_ov117_02265428 *) = {
    ov117_0226544C,
    ov117_02265454,
    ov117_02265644,
    ov117_022657C4,
};

void ov117_02263AF0(BGL *param0, int param1, int param2, UnkStruct_ov117_02263DAC *param3)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_APPLICATION__BALLOON__GRAPHIC__BALLOON_GRA, 110);

    sub_020070E8(v0, Unk_ov117_02266BEC[param2].unk_00, param0, 7, 0, 0, 0, 110);
    sub_0200710C(v0, Unk_ov117_02266BEC[param2].unk_02, param0, 7, 0, 0, 0, 110);
    NARC_dtor(v0);

    MI_CpuClear8(param3, sizeof(UnkStruct_ov117_02263DAC));

    param3->unk_0C = Unk_ov117_02266ED4[param1].unk_00[param2];
    param3->unk_04 = param2;
    param3->unk_00 = 1;
    param3->unk_2C = 1;

    ov117_02263BA4(param0, param3, param1);
    Sound_PlayEffect(1515);
}

static void ov117_02263B8C(BGL *param0, UnkStruct_ov117_02263DAC *param1)
{
    sub_02019EBC(param0, 7);
    param1->unk_00 = 0;
    param1->unk_2D = 1;
}

static void ov117_02263BA4(BGL *param0, UnkStruct_ov117_02263DAC *param1, int param2)
{
    fx32 v0, v1;
    int v2, v3;

    if (param1->unk_00 == 0) {
        return;
    }

    ov117_02263C8C(param2, param1->unk_04, param1->unk_08, &v0, &v1);

    v2 = 0;
    v3 = 0;

    if (v0 == FX32_ONE) {
        v2 = 0;
    } else if (v0 < FX32_ONE) {
        v2 = 128 - (128 * v0 / FX32_ONE);
    } else {
        v2 = -(128 * (v0 - FX32_ONE) / FX32_ONE);
    }

    if (v1 == FX32_ONE) {
        v3 = 0;
    } else if (v1 < FX32_ONE) {
        v3 = 128 - (128 * v1 / FX32_ONE);
    } else {
        v3 = -(128 * (v1 - FX32_ONE) / FX32_ONE);
    }

    {
        MtxFx22 v4;
        fx32 v5, v6;
        int v7;

        if (param1->unk_10 == 0) {
            v7 = 0;
        } else {
            v7 = (LCRNG_Next() & 7) + 1;

            if (param1->unk_28 & 1) {
                v7 = -v7;
            }

            param1->unk_28 ^= 1;
        }

        v5 = FX_Inv(v0);
        v6 = FX_Inv(v1);

        sub_0201C6A8(param0, 7, 3, v5);
        sub_0201C6A8(param0, 7, 6, v6);
        sub_0201C63C(param0, 7, 0, 0 - v2 + v7);
        sub_0201C63C(param0, 7, 3, (256 - 192) / 2 + 7 - v3);
    }
}

static void ov117_02263C8C(int param0, int param1, int param2, fx32 *param3, fx32 *param4)
{
    fx32 v0;

    v0 = Unk_ov117_02266BEC[param1].unk_04 * param2 / Unk_ov117_02266ED4[param0].unk_00[param1];
    v0 += 0x300;

    *param3 = v0;
    *param4 = v0;

    if (v0 > (FX32_ONE)) {
        *param3 += FX_Mul((v0 - (FX32_ONE)), (FX32_CONST(1.1)));
    }
}

int ov117_02263CF4(int param0)
{
    if (10 <= param0) {
        return 2;
    } else if (5 <= param0) {
        return 1;
    }

    return 0;
}

static int ov117_02263D08(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02263DAC *param1, int param2, int param3, int param4)
{
    param1->unk_10 += param2;
    param1->unk_14 = param1->unk_10 / 6;
    param1->unk_18[ov117_022622C4(param0, param3)] += param2;

    if (param3 == CommSys_CurNetId()) {
        param0->unk_3D4C += param2;
        ov117_02265F98(&param0->unk_15A8, param0->unk_3D4C);
    }

    return param1->unk_10;
}

static int ov117_02263D5C(UnkStruct_ov117_02263DAC *param0)
{
    int v0;

    if (param0->unk_10 == 0) {
        return 0;
    }

    if (param0->unk_10 >= param0->unk_14) {
        v0 = param0->unk_14;
    } else {
        v0 = param0->unk_10;
    }

    param0->unk_10 -= v0;
    param0->unk_08 += v0;

    return 1;
}

void ov117_02263D80(UnkStruct_ov117_02261280 *param0, BGL *param1, UnkStruct_ov117_02263DAC *param2)
{
    if (param0->unk_2FCC == 0) {
        return;
    }

    ov117_02263D5C(param2);
    ov117_02263BA4(param1, param2, param0->unk_00->unk_30);
}

int ov117_02263DAC(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02263DAC *v0 = &param0->unk_1428;
    return 100 * v0->unk_08 / v0->unk_0C;
}

BOOL ov117_02263DC4(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_02264E84 *param1)
{
    int v0, v1;

    if (param0->unk_2FC8 != param1->unk_02) {
        (void)0;
    }

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_2FDC[v0].unk_00 == 0) {
            v1 = ov117_02263E1C(param0, param1, &param0->unk_2FDC[v0]);
            ov117_02265B58(param0, &param0->unk_1560, param1->unk_01, param1->unk_00, v1);

            return 1;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static int ov117_02263E1C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_02264E84 *param1, UnkStruct_ov117_02263EF8 *param2)
{
    int v0;
    const UnkStruct_ov117_02266F10 *v1;
    int v2;

    GF_ASSERT(param2->unk_00 == 0);

    MI_CpuClear8(param2, sizeof(UnkStruct_ov117_02263EF8));

    v0 = ov117_022622C4(param0, param1->unk_00);
    v1 = &Unk_ov117_02266F10[param0->unk_00->unk_30][v0];

    param2->unk_04 = param1->unk_00;
    param2->unk_06 = param1->unk_02;
    param2->unk_08 = param1->unk_08;
    param2->unk_14 = v1;
    param2->unk_0E = param1->unk_01;
    param2->unk_10 = ov117_0226417C(param0, v1);

    if (param1->unk_00 == CommSys_CurNetId()) {
        ov117_02261E38(param0, param1->unk_04);
        param2->unk_0C = 25;
        SpriteActor_EnableObject(param2->unk_10, 0);
    }

    param2->unk_00 = 1;

    {
        s16 v3, v4;
        s32 v5 = 0;

        sub_0200D5A0(param2->unk_10, &v3, &v4, ((192 + 160) << FX32_SHIFT));

        switch (v1->unk_07) {
        case 0:
            v5 = Unk_ov117_02266BB4[1].unk_02 - v4;
            break;
        case 1:
            v5 = v3 - Unk_ov117_02266BB4[3].unk_00;
            break;
        case 2:
            v5 = v4 - Unk_ov117_02266BB4[0].unk_02;
            break;
        case 3:
            v5 = Unk_ov117_02266BB4[2].unk_00 - v3;
            break;
        }

        v2 = (v5 * FX32_ONE) / (FX32_CONST(5.0));
    }
    return v2;
}

void ov117_02263EF8(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02263EF8 *v1;

    v1 = param0->unk_2FDC;

    for (v0 = 0; v0 < 40; v0++) {
        if (v1->unk_00 == 1) {
            if (v1->unk_0C > 0) {
                v1->unk_0C--;

                if (v1->unk_0C == 0) {
                    SpriteActor_EnableObject(v1->unk_10, 1);
                }
            } else if (ov117_02263F80(param0, v1) == 1) {
                if ((param0->unk_2FCC == 1) && (param0->unk_2FBC == 0)) {
                    ov117_02263D08(param0, &param0->unk_1428, v1->unk_08, v1->unk_04, v1->unk_0E);
                }

                sub_0200D0F4(v1->unk_10);
                v1->unk_00 = 0;
            }
        }

        v1++;
    }
}

static BOOL ov117_02263F80(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02263EF8 *param1)
{
    s16 v0, v1, v2, v3;
    int v4 = 0;
    s32 v5, v6;
    f32 v7;
    fx32 v8;

    sub_0200D5A0(param1->unk_10, &v2, &v3, ((192 + 160) << FX32_SHIFT));

    switch (param1->unk_14->unk_07) {
    case 0:
        v6 = Unk_ov117_02266BB4[1].unk_02 - v3;

        sub_0200D5E8(param1->unk_10, 0, (FX32_CONST(5.0)));
        sub_0200D5A0(param1->unk_10, &v0, &v1, ((192 + 160) << FX32_SHIFT));

        v5 = Unk_ov117_02266BB4[1].unk_02 - v1;

        if (v1 > (98 - 24)) {
            v4 = 1;
        }
        break;
    case 1:
        v6 = v2 - Unk_ov117_02266BB4[3].unk_00;

        sub_0200D5E8(param1->unk_10, -(FX32_CONST(5.0)), 0);
        sub_0200D5A0(param1->unk_10, &v0, &v1, ((192 + 160) << FX32_SHIFT));

        v5 = v0 - Unk_ov117_02266BB4[3].unk_00;

        if (v0 < (128 + 24)) {
            v4 = 1;
        }
        break;
    case 2:
        v6 = v3 - Unk_ov117_02266BB4[0].unk_02;

        sub_0200D5E8(param1->unk_10, 0, -(FX32_CONST(5.0)));
        sub_0200D5A0(param1->unk_10, &v0, &v1, ((192 + 160) << FX32_SHIFT));

        v5 = v1 - Unk_ov117_02266BB4[0].unk_02;

        if (v1 < (98 + 16)) {
            v4 = 1;
        }
        break;
    case 3:
        v6 = Unk_ov117_02266BB4[2].unk_00 - v2;

        sub_0200D5E8(param1->unk_10, (FX32_CONST(5.0)), 0);
        sub_0200D5A0(param1->unk_10, &v0, &v1, ((192 + 160) << FX32_SHIFT));

        v5 = Unk_ov117_02266BB4[2].unk_00 - v0;

        if (v0 > (128 - 24)) {
            v4 = 1;
        }
        break;
    }
    if (v5 >= 0) {
        if (v5 < (24 / 2 + 2)) {
            v8 = FX32_ONE * v5 / (24 / 2 + 2);

            if (v8 < 0x400) {
                v8 = 0x400;
            }

            v7 = FX_FX32_TO_F32(v8);
            sub_0200D6E8(param1->unk_10, v7, v7);
        }
    } else {
        if (v5 > -(24 / 2 + 2)) {
            v8 = Unk_ov117_02266BA4[param1->unk_0E] * (-v5) / (24 / 2 + 2);

            if (v8 < 0x400) {
                v8 = 0x400;
            }

            v7 = FX_FX32_TO_F32(v8);
            sub_0200D6E8(param1->unk_10, v7, v7);
        }
    }
    if ((param1->unk_04 == CommSys_CurNetId()) && (v6 >= 0) && (v5 <= 0)) {
        UnkStruct_ov117_02265428 *v9;

        param1->unk_0E = ov117_022653F4(param0, &v9);

        switch (param1->unk_0E) {
        case 1:
            param1->unk_08 *= 2;
            break;
        case 2:
            param1->unk_08 /= 2;
            break;
        case 3:
            param1->unk_08 *= 3;
            break;
        }

        ov117_02264EB8(param0, param1->unk_0E);

        if (param1->unk_0E != 0) {
            ov117_02265428(v9, 3);
        }

        {
            UnkStruct_ov117_02264E84 *v10;

            v10 = ov117_02264E84(param0);

            if (v10 != NULL) {
                ov117_022666E8(param0, v10);
            } else {
                (void)0;
            }
        }
    }

    if (v4 == 1) {
        return 1;
    }

    return 0;
}

static CellActorData *ov117_0226417C(UnkStruct_ov117_02261280 *param0, const UnkStruct_ov117_02266F10 *param1)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1 = Unk_ov117_02266CCC;
    v1.x = param1->unk_00;
    v1.y = param1->unk_02;
    v1.plttIdx = param1->unk_06;
    v0 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v1);

    sub_0200D500(v0, param1->unk_00, param1->unk_02, ((192 + 160) << FX32_SHIFT));
    sub_0200D364(v0, param1->unk_04);
    sub_0200D6A4(v0, 2);
    SpriteActor_UpdateObject(v0->unk_00);

    return v0;
}

void ov117_022641E4(UnkStruct_ov117_02261280 *param0)
{
    int v0;

    for (v0 = 0; v0 < 40; v0++) {
        if (param0->unk_2FDC[v0].unk_00 == 1) {
            sub_0200D0F4(param0->unk_2FDC[v0].unk_10);
            param0->unk_2FDC[v0].unk_00 = 0;
        }
    }
}

static void ov117_02264214(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264808 *param1, UnkStruct_ov117_02263DAC *param2)
{
    SpriteTemplate v0;
    CellActorData *v1;
    int v2;
    int v3[4];
    int v4, v5, v6;
    int v7 = 0;
    int v8, v9;

    v0 = Unk_ov117_02266D00;
    v4 = param2->unk_08 + param2->unk_10;

    for (v8 = 0; v8 < param0->unk_00->unk_30; v8++) {
        v2 = ov117_022622C4(param0, param0->unk_00->unk_2C[v8]);
        v3[v8] = param2->unk_18[v2] * 36 / v4;
        v6 = Unk_ov117_02266C7C[param0->unk_00->unk_30][v2];

        for (v9 = 0; v9 < v3[v8]; v9++) {
            UnkStruct_ov117_02264508 *v10 = &param1->unk_04[v7];

            v1 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v0);

            if (v1 == NULL) {
                break;
            }

            sub_0200D500(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
            sub_0200D364(v1, v6);
            SpriteActor_UpdateObject(v1->unk_00);

            v10->unk_04 = LCRNG_Next() % 0x2000 + 0x2000;
            v10->unk_08 = LCRNG_Next() % 0x4000 + 0x2000;
            v10->unk_0C = (LCRNG_Next() % 360) << FX32_SHIFT;
            v10->unk_10 = LCRNG_Next() % 0x14000 + 0xa000;
            v10->unk_14 = LCRNG_Next() % 15 + 20;

            param1->unk_04[v7].unk_00 = v1;

            v7++;
        }
    }

    v0.priority = 14;
    v0.plttIdx = 0;

    for (v8 = 0; v8 < 8; v8++) {
        UnkStruct_ov117_02264508 *v11 = &param1->unk_868[v8];

        v1 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v0);

        if (v1 == NULL) {
            break;
        }

        sub_0200D500(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(v1, 28 + LCRNG_Next() % 3);
        SpriteActor_UpdateObject(v1->unk_00);

        v11->unk_04 = LCRNG_Next() % 0x2000 + 0x2000;
        v11->unk_08 = LCRNG_Next() % 0x4000 + 0x2000;
        v11->unk_0C = (LCRNG_Next() % 360) << FX32_SHIFT;
        v11->unk_10 = LCRNG_Next() % 0x14000 + 0x10000;
        v11->unk_14 = LCRNG_Next() % 15 + 20;

        param1->unk_868[v8].unk_00 = v1;
    }

    v0.priority = 13;
    v0.plttIdx = Unk_ov117_02266B6C[param2->unk_04];

    for (v8 = 0; v8 < 3; v8++) {
        UnkStruct_ov117_02264508 *v12 = &param1->unk_928[v8];

        v1 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v0);

        if (v1 == NULL) {
            break;
        }

        sub_0200D500(v1, 128, 96, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(v1, 11);
        SpriteActor_UpdateObject(v1->unk_00);

        v12->unk_04 = LCRNG_Next() % 0x2000 + 0x2000;
        v12->unk_08 = LCRNG_Next() % 0x4000 + 0x2000;
        v12->unk_0C = (LCRNG_Next() % 360) << FX32_SHIFT;
        v12->unk_10 = LCRNG_Next() % 0x14000 + 0x10000;
        v12->unk_14 = LCRNG_Next() % 15 + 20;

        param1->unk_928[v8].unk_00 = v1;
    }
}

void ov117_02264508(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02264508 *v1, *v2, *v3;

    for (v0 = 0; v0 < 36; v0++) {
        v1 = &param0->unk_339C.unk_04[v0];

        if (v1->unk_00 != NULL) {
            sub_0200D0F4(v1->unk_00);
        }
    }

    for (v0 = 0; v0 < 8; v0++) {
        v2 = &param0->unk_339C.unk_868[v0];

        if (v2->unk_00 != NULL) {
            sub_0200D0F4(v2->unk_00);
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        v3 = &param0->unk_339C.unk_928[v0];

        if (v3->unk_00 != NULL) {
            sub_0200D0F4(v3->unk_00);
        }
    }
}

BOOL ov117_02264560(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02264808 *v0 = &param0->unk_339C;
    UnkStruct_ov117_02264508 *v1, *v2, *v3;
    s16 v4, v5;
    int v6 = 0;
    int v7;

    if (v0->unk_00 == 0) {
        return 0;
    }

    for (v7 = 0; v7 < 36; v7++) {
        v1 = &v0->unk_04[v7];

        if (v1->unk_00 != NULL) {
            if (v1->unk_14 == 0) {
                sub_0200D0F4(v1->unk_00);
                v1->unk_00 = NULL;
                continue;
            }

            v1->unk_0C += v1->unk_10;
            v1->unk_04 += v1->unk_08;

            if (v1->unk_04 >= (128 + 32) << FX32_SHIFT) {
                v1->unk_04 = (128 + 32) << FX32_SHIFT;
            }

            v4 = 128 + (FX_Mul(sub_0201D2B8(v1->unk_0C), v1->unk_04)) / FX32_ONE;
            v5 = 96 + (-FX_Mul(sub_0201D2C4(v1->unk_0C), v1->unk_04)) / FX32_ONE;

            sub_0200D500(v1->unk_00, v4, v5, ((192 + 160) << FX32_SHIFT));

            v1->unk_14--;
            v6++;
        }
    }

    for (v7 = 0; v7 < 8; v7++) {
        v2 = &v0->unk_868[v7];

        if (v2->unk_00 != NULL) {
            if (v2->unk_14 == 0) {
                sub_0200D0F4(v2->unk_00);
                v2->unk_00 = NULL;
                continue;
            }

            v2->unk_0C += v2->unk_10;
            v2->unk_04 += v2->unk_08;

            if (v2->unk_04 >= (128 + 32) << FX32_SHIFT) {
                v2->unk_04 = (128 + 32) << FX32_SHIFT;
            }

            v4 = 128 + (FX_Mul(sub_0201D2B8(v2->unk_0C), v2->unk_04)) / FX32_ONE;
            v5 = 96 + (-FX_Mul(sub_0201D2C4(v2->unk_0C), v2->unk_04)) / FX32_ONE;

            sub_0200D500(v2->unk_00, v4, v5, ((192 + 160) << FX32_SHIFT));

            v2->unk_14--;
            v6++;
        }
    }

    for (v7 = 0; v7 < 3; v7++) {
        v3 = &v0->unk_928[v7];

        if (v3->unk_00 != NULL) {
            if (v3->unk_14 == 0) {
                sub_0200D0F4(v3->unk_00);
                v3->unk_00 = NULL;
                continue;
            }

            v3->unk_0C += v3->unk_10;
            v3->unk_04 += v3->unk_08;

            if (v3->unk_04 >= (128 + 32) << FX32_SHIFT) {
                v3->unk_04 = (128 + 32) << FX32_SHIFT;
            }

            v4 = 128 + (FX_Mul(sub_0201D2B8(v3->unk_0C), v3->unk_04)) / FX32_ONE;
            v5 = 96 + (-FX_Mul(sub_0201D2C4(v3->unk_0C), v3->unk_04)) / FX32_ONE;

            sub_0200D500(v3->unk_00, v4, v5, ((192 + 160) << FX32_SHIFT));

            v3->unk_14--;
            v6++;
        }
    }

    if (v6 == 0) {
        v0->unk_00 = 0;
    }

    return 1;
}

BOOL ov117_02264808(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02264808 *v0 = &param0->unk_339C;
    int v1;

    if (v0->unk_00 == 1) {
        return 0;
    }

    MI_CpuClear8(v0, sizeof(UnkStruct_ov117_02264808));

    ov117_02264214(param0, &param0->unk_339C, &param0->unk_1428);
    ov117_02263B8C(param0->unk_2C, &param0->unk_1428);
    ov117_02264A84(param0);

    param0->unk_2FCC = 0;
    param0->unk_1428.unk_08 = 0;
    param0->unk_1428.unk_10 = 0;

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_1428.unk_18[v1] = 0;
    }

    Sound_PlayEffect(1404);
    v0->unk_00 = 1;
    return 1;
}

static CellActorData *ov117_02264884(UnkStruct_ov117_02261280 *param0, int param1, int param2)
{
    CellActorData *v0;
    SpriteTemplate v1;

    v1 = Unk_ov117_02266D34;
    v0 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v1);

    sub_0200D500(v0, (9 * 8) - param2 * 16, (4 * 8), ((192 + 160) << FX32_SHIFT));
    sub_0200D364(v0, 0 + param1);
    SpriteActor_UpdateObject(v0->unk_00);
    sub_0200D390(v0, 1);

    return v0;
}

void ov117_022648E0(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02264930 *v1;

    for (v0 = 0; v0 < 5; v0++) {
        v1 = &param0->unk_3D10[v0];
        ov117_02264958(param0, v1, v0, v0);
        sub_0200D34C(v1->unk_00, FX32_ONE * 4 * v0);
    }
}

void ov117_02264914(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02264930 *v1;

    for (v0 = 0; v0 < 5; v0++) {
        v1 = &param0->unk_3D10[v0];
        sub_0200D0F4(v1->unk_00);
    }
}

BOOL ov117_02264930(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02264930 *v0;
    int v1;

    for (v1 = 0; v1 < 5; v1++) {
        v0 = &param0->unk_3D10[v1];
        ov117_0226498C(v0);
        ov117_022649D8(param0, v0);
    }

    return 1;
}

static BOOL ov117_02264958(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264930 *param1, int param2, int param3)
{
    MI_CpuClear8(param1, sizeof(UnkStruct_ov117_02264930));

    param1->unk_04 = ov117_02264A70(param3);
    param1->unk_05 = 1;
    param1->unk_00 = ov117_02264884(param0, param1->unk_04, param2);
    param1->unk_06 = param2;
    param1->unk_08 = param3;

    return 1;
}

static void ov117_0226498C(UnkStruct_ov117_02264930 *param0)
{
    s16 v0, v1, v2;

    v0 = (9 * 8) - param0->unk_06 * 16;

    sub_0200D5A0(param0->unk_00, &v1, &v2, ((192 + 160) << FX32_SHIFT));

    if (v0 > v1) {
        v1 += 2;
        if (v1 > v0) {
            v1 = v0;
        }

        sub_0200D500(param0->unk_00, v1, v2, ((192 + 160) << FX32_SHIFT));
    }
}

static void ov117_022649D8(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264930 *param1)
{
    int v0, v1;
    UnkStruct_ov117_02264930 *v2;

    if (param1->unk_06 != 0) {
        return;
    }

    switch (param1->unk_05) {
    case 3:
        if (sub_0200D3B8(param1->unk_00) == 0) {
            param1->unk_08 += 5;
            param1->unk_04 = ov117_02264A70(param1->unk_08);
            param1->unk_05 = 1;

            sub_0200D364(param1->unk_00, 0 + param1->unk_04);
            sub_0200D500(param1->unk_00, (9 * 8) - 5 * 16, (4 * 8), ((192 + 160) << FX32_SHIFT));

            for (v1 = 0; v1 < 5; v1++) {
                v2 = &param0->unk_3D10[v1];

                if (v2->unk_06 == 0) {
                    v2->unk_06 = 5 - 1;
                } else {
                    v2->unk_06--;
                }
            }
        }
        break;

    case 1:
        v0 = ov117_02263DAC(param0);

        if ((param1->unk_05 == 1) && (v0 > 75)) {
            param1->unk_05 = 2;
            sub_0200D364(param1->unk_00, 3 + param1->unk_04);
            Sound_PlayEffect(1406);
        }

        break;
    }
}

static int ov117_02264A70(int param0)
{
    if (param0 >= 10) {
        return 2;
    }

    if (param0 >= 5) {
        return 1;
    }

    return 0;
}

static void ov117_02264A84(UnkStruct_ov117_02261280 *param0)
{
    int v0;
    UnkStruct_ov117_02264930 *v1;

    for (v0 = 0; v0 < 5; v0++) {
        v1 = &param0->unk_3D10[v0];

        if (v1->unk_06 == 0) {
            v1->unk_05 = 3;
            sub_0200D364(v1->unk_00, 6);
            return;
        }
    }
}

void ov117_02264AB0(UnkStruct_ov117_02261280 *param0)
{
    int v0;

    switch (param0->unk_00->unk_30) {
    case 3:
        sub_02019E2C(param0->unk_2C, 4, 0, 13, 12, 4, 3);
        sub_02019E2C(param0->unk_2C, 4, 0x14, 13, 12, 4, 0);
        break;
    }
}

void ov117_02264AF0(UnkStruct_ov117_02261280 *param0)
{
    u16 v0[4][3];
    int v1, v2;
    int v3 = 0;
    int v4, v5, v6, v7;
    u16 *v8, *v9;

    for (v2 = 0; v2 < param0->unk_00->unk_30; v2++) {
        v4 = Unk_ov117_02266B72[v2];

        for (v1 = 0; v1 < 3; v1++) {
            v0[v2][v1] = sub_02003910(param0->unk_8C, 1, 1, v4 + v1);
        }
    }

    v7 = CommSys_CurNetId();

    for (v3 = 0; v3 < param0->unk_00->unk_30; v3++) {
        if (param0->unk_00->unk_2C[v3] == v7) {
            break;
        }
    }

    v8 = sub_02003164(param0->unk_8C, 1);
    v9 = sub_0200316C(param0->unk_8C, 1);

    for (v1 = 0; v1 < param0->unk_00->unk_30; v1++) {
        v4 = v1;
        v5 = Unk_ov117_02266CA4[param0->unk_00->unk_30][ov117_022622C4(param0, param0->unk_00->unk_2C[v1])];

        for (v6 = 0; v6 < 3; v6++) {
            v8[v5 + v6] = v0[v4][v6];
            v9[v5 + v6] = v0[v4][v6];
        }
    }
}

void ov117_02264BF8(UnkStruct_ov117_02261280 *param0)
{
    u16 v0[4][16];
    int v1, v2;
    int v3 = 0;
    int v4, v5, v6, v7;
    u16 *v8, *v9;
    int v10;

    v10 = sub_0200D05C(param0->unk_28, 10006, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < param0->unk_00->unk_30; v2++) {
        v4 = Unk_ov117_02266B8A[v2];

        for (v1 = 0; v1 < 16; v1++) {
            v0[v2][v1] = sub_02003910(param0->unk_8C, 3, 1, v10 * 16 + v4 + v1);
        }
    }

    v7 = CommSys_CurNetId();

    for (v3 = 0; v3 < param0->unk_00->unk_30; v3++) {
        if (param0->unk_00->unk_2C[v3] == v7) {
            break;
        }
    }

    v8 = sub_02003164(param0->unk_8C, 3);
    v9 = sub_0200316C(param0->unk_8C, 3);

    for (v1 = 0; v1 < param0->unk_00->unk_30; v1++) {
        v4 = v1;
        v5 = Unk_ov117_02266C04[param0->unk_00->unk_30][ov117_022622C4(param0, param0->unk_00->unk_2C[v1])] + v10 * 16;

        for (v6 = 0; v6 < 16; v6++) {
            v8[v5 + v6] = v0[v4][v6];
            v9[v5 + v6] = v0[v4][v6];
        }
    }
}

void ov117_02264D1C(UnkStruct_ov117_02261280 *param0)
{
    u16 v0[4][1];
    int v1, v2;
    int v3 = 0;
    int v4, v5, v6, v7;
    u16 *v8, *v9;
    int v10;

    v10 = sub_0200D05C(param0->unk_28, 10006, NNS_G2D_VRAM_TYPE_2DSUB);

    for (v2 = 0; v2 < param0->unk_00->unk_30; v2++) {
        v4 = Unk_ov117_02266B82[v2];

        for (v1 = 0; v1 < 1; v1++) {
            v0[v2][v1] = sub_02003910(param0->unk_8C, 3, 1, v10 * 16 + v4 + v1);
        }
    }

    v7 = CommSys_CurNetId();

    for (v3 = 0; v3 < param0->unk_00->unk_30; v3++) {
        if (param0->unk_00->unk_2C[v3] == v7) {
            break;
        }
    }

    v8 = sub_02003164(param0->unk_8C, 3);
    v9 = sub_0200316C(param0->unk_8C, 3);

    for (v1 = 0; v1 < param0->unk_00->unk_30; v1++) {
        v4 = v1;
        v5 = Unk_ov117_02266C54[param0->unk_00->unk_30][ov117_022622C4(param0, param0->unk_00->unk_2C[v1])] + v10 * 16;

        for (v6 = 0; v6 < 1; v6++) {
            v8[v5 + v6] = v0[v4][v6];
            v9[v5 + v6] = v0[v4][v6];
        }
    }
}

void ov117_02264E14(UnkStruct_ov117_02261280 *param0, int param1, s32 param2, UnkStruct_ov117_02264E84 *param3)
{
    MI_CpuClear8(param3, sizeof(UnkStruct_ov117_02264E84));

    param3->unk_00 = CommSys_CurNetId();
    param3->unk_02 = param1;
    param3->unk_04 = param2;
    param3->unk_08 = param2;
    param3->unk_01 = 0;
    param3->unk_0C = 0;
}

BOOL ov117_02264E3C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02264E84 *param1)
{
    if (param0->unk_2FB0 - param0->unk_2FAC >= 8) {
        return 0;
    }

    param0->unk_2F2C[param0->unk_2FB0 % 8] = *param1;
    param0->unk_2FB0++;
    return 1;
}

UnkStruct_ov117_02264E84 *ov117_02264E84(UnkStruct_ov117_02261280 *param0)
{
    UnkStruct_ov117_02264E84 *v0;

    if (param0->unk_2FAC >= param0->unk_2FB0) {
        return NULL;
    }

    v0 = &param0->unk_2F2C[param0->unk_2FAC % 8];
    param0->unk_2FAC++;
    return v0;
}

BOOL ov117_02264EB8(UnkStruct_ov117_02261280 *param0, int param1)
{
    UnkStruct_ov117_02264E84 *v0 = NULL;
    int v1, v2, v3;

    if ((param0->unk_2FAC == param0->unk_2FB0) || (param1 == 0)) {
        return 0;
    }

    v2 = param0->unk_2FAC % 8;
    v3 = param0->unk_2FB0 % 8;

    if (v2 < v3) {
        for (v1 = v2; v1 < v3; v1++) {
            if (param0->unk_2F2C[v1].unk_0C == 0) {
                v0 = &param0->unk_2F2C[v1];
                break;
            }
        }
    } else {
        for (v1 = v2; v1 < 8; v1++) {
            if (param0->unk_2F2C[v1].unk_0C == 0) {
                v0 = &param0->unk_2F2C[v1];
                break;
            }
        }

        if (v0 == NULL) {
            for (v1 = 0; v1 < v3; v1++) {
                if (param0->unk_2F2C[v1].unk_0C == 0) {
                    v0 = &param0->unk_2F2C[v1];
                    break;
                }
            }
        }
    }

    if (v0 == NULL) {
        GF_ASSERT(0);
        return 0;
    }

    GF_ASSERT(v0->unk_01 == 0);

    v0->unk_01 = param1;
    v0->unk_0C = 1;

    switch (param1) {
    case 1:
        v0->unk_08 = v0->unk_04 * 2;
        break;
    case 2:
        v0->unk_08 = v0->unk_04 / 2;
        break;
    case 3:
        v0->unk_08 = v0->unk_04 * 3;
        break;
    }

    return 1;
}

void ov117_02264FB0(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_0226504C *param1)
{
    CellActorData *v0;
    SpriteTemplate v1;
    int v2;

    v1 = Unk_ov117_02266D68;

    for (v2 = 0; v2 < 4; v2++) {
        param1->unk_00[v2] = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v1);
        sub_0200D500(param1->unk_00[v2], Unk_ov117_02266BB4[v2].unk_00, Unk_ov117_02266BB4[v2].unk_02, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param1->unk_00[v2], 31 + v2 / 2);
        SpriteActor_UpdateObject(param1->unk_00[v2]->unk_00);
    }

    switch (param0->unk_00->unk_30) {
    case 2:
        SpriteActor_EnableObject(param1->unk_00[2], 0);
        SpriteActor_EnableObject(param1->unk_00[3], 0);
        break;
    case 3:
        SpriteActor_EnableObject(param1->unk_00[1], 0);
        break;
    }
}

void ov117_0226504C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_0226504C *param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        sub_0200D0F4(param1->unk_00[v0]);
    }
}

void ov117_02265064(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1)
{
    SpriteTemplate v0;
    int v1, v2;
    fx32 v3, v4;

    v0 = Unk_ov117_02266D9C;

    for (v1 = 0; v1 < 3; v1++) {
        v3 = 256 / 2 + FX_Mul(sub_0201D2B8(param1->unk_E4 + param1->unk_00[v1].unk_0C), 76);
        v4 = 196 / 2 + (-FX_Mul(sub_0201D2C4(param1->unk_E4 + param1->unk_00[v1].unk_0C), (64 + 4)));

        param1->unk_00[v1].unk_00 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v0);
        sub_0200D500(param1->unk_00[v1].unk_00, v3, v4 + -24, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param1->unk_00[v1].unk_00, Unk_ov117_02266B7A[v1 + 1]);
        SpriteActor_UpdateObject(param1->unk_00[v1].unk_00->unk_00);
        SpriteActor_EnableObject(param1->unk_00[v1].unk_00, 0);

        param1->unk_00[v1].unk_04 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266DD0);
        sub_0200D500(param1->unk_00[v1].unk_04, 0, 0, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param1->unk_00[v1].unk_04, 33);
        SpriteActor_UpdateObject(param1->unk_00[v1].unk_04->unk_00);
        SpriteActor_EnableObject(param1->unk_00[v1].unk_04, 0);

        param1->unk_00[v1].unk_08 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266E04);
        sub_0200D500(param1->unk_00[v1].unk_08, v3, v4 + -24 + 24, ((192 + 160) << FX32_SHIFT));
        SpriteActor_SetOAMMode(param1->unk_00[v1].unk_08, GX_OAM_MODE_XLU);
        sub_0200D6A4(param1->unk_00[v1].unk_08, 1);
        sub_0200D6E8(param1->unk_00[v1].unk_08, 1.0f, 1.0f);
        sub_0200D364(param1->unk_00[v1].unk_08, 34 + v1);
        SpriteActor_UpdateObject(param1->unk_00[v1].unk_08->unk_00);
        SpriteActor_EnableObject(param1->unk_00[v1].unk_08, 0);

        ov117_02266344(param0, &param1->unk_00[v1].unk_30);
    }

    SpriteActor_EnableObject(param1->unk_00[0].unk_00, 1);
    SpriteActor_EnableObject(param1->unk_00[0].unk_08, 1);
}

void ov117_022651E0(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200D0F4(param1->unk_00[v0].unk_00);
        sub_0200D0F4(param1->unk_00[v0].unk_04);
        sub_0200D0F4(param1->unk_00[v0].unk_08);
        ov117_02266384(param0, &param1->unk_00[v0].unk_30);
    }
}

void ov117_02265210(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1)
{
    int v0;

    param1->unk_E8 = (360 << FX32_SHIFT) / 12 / Unk_ov117_02266BC4[param1->unk_F4].unk_00;

    for (v0 = 0; v0 < 3; v0++) {
        param1->unk_00[v0].unk_0C = (v0 * 90) << FX32_SHIFT;
        param1->unk_00[v0].unk_14 = 1 + v0;
    }

    param1->unk_00[0].unk_10 = 2;
    param1->unk_F1 = 1;
}

void ov117_02265254(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1)
{
    int v0, v1, v2 = 0;

    if (param1->unk_F1 == 1) {
        return;
    }

    param1->unk_EC++;

    if (param1->unk_F2 == 0) {
        param1->unk_E4 += param1->unk_E8;
        param1->unk_F3++;

        if (param1->unk_F3 >= Unk_ov117_02266BC4[param1->unk_F4].unk_00) {
            param1->unk_F3 = 0;
            param1->unk_F0++;
            param1->unk_E4 = (360 << FX32_SHIFT) / 12 * param1->unk_F0;
            param1->unk_F2 = Unk_ov117_02266BC4[param1->unk_F4].unk_01;
        }
    } else {
        param1->unk_F2--;

        if (param1->unk_F2 == 0) {
            if (param1->unk_F0 >= 12) {
                param1->unk_F0 = 0;
                param1->unk_F4++;

                if (param1->unk_F4 >= NELEMS(Unk_ov117_02266BC4)) {
                    param1->unk_F4 = NELEMS(Unk_ov117_02266BC4) - 1;
                }

                param1->unk_E8 = (360 << FX32_SHIFT) / 12 / Unk_ov117_02266BC4[param1->unk_F4].unk_00;
            }
        }
    }

    if (param1->unk_F4 == 2 - 1) {
        for (v0 = 0; v0 < 2; v0++) {
            v2 += Unk_ov117_02266BC4[v0].unk_00 * 12 + Unk_ov117_02266BC4[v0].unk_01 * 12;
        }

        if (v2 - 15 == param1->unk_EC) {
            ov117_02265428(&param1->unk_00[1], 1);
        }
    } else if (param1->unk_F4 == 3 - 1) {
        for (v0 = 0; v0 < 3; v0++) {
            v2 += Unk_ov117_02266BC4[v0].unk_00 * 12 + Unk_ov117_02266BC4[v0].unk_01 * 12;
        }

        if (v2 - 15 == param1->unk_EC) {
            ov117_02265428(&param1->unk_00[2], 1);
        }
    }

    for (v0 = 0; v0 < 3; v0++) {
        ov117_02265438(param0, param1, &param1->unk_00[v0]);
        ov117_02266440(param0, &param1->unk_00[v0], &param1->unk_00[v0].unk_30);
    }
}

static int ov117_022653F4(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 **param1)
{
    UnkStruct_ov117_022653F4 *v0 = &param0->unk_1468;
    int v1;

    for (v1 = 0; v1 < 3; v1++) {
        if (v0->unk_00[v1].unk_15 == 1) {
            *param1 = &v0->unk_00[v1];
            return v0->unk_00[v1].unk_14;
        }
    }

    *param1 = NULL;
    return 0;
}

static void ov117_02265428(UnkStruct_ov117_02265428 *param0, int param1)
{
    param0->unk_10 = param1;
    param0->unk_11 = 0;
    param0->unk_12 = 0;
    param0->unk_18 = 0;
    param0->unk_15 = 0;
}

static void ov117_02265438(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2)
{
    Unk_ov117_02266B94[param2->unk_10](param0, param1, param2);
}

static int ov117_0226544C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2)
{
    param2->unk_15 = 0;
    return 1;
}

static int ov117_02265454(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2)
{
    s16 v0, v1, v2, v3, v4, v5;
    fx32 v6;
    int v7 = 0;
    fx32 v8;
    f32 v9;

    v2 = 0;
    v3 = 0;
    v0 = param2->unk_1C;
    v1 = param2->unk_1E;

    switch (param2->unk_11) {
    case 0:
        SpriteActor_EnableObject(param2->unk_00, 1);
        SpriteActor_EnableObject(param2->unk_08, 1);
        sub_0200D5A0(param2->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        param2->unk_1C = v0;
        param2->unk_1E = v1;
        param2->unk_11++;

    case 1:
        switch (param2->unk_0C) {
        case 0:
            v4 = param2->unk_1E - -32;
            v3 = param2->unk_12 * v4 / 15;
            v1 = -32 + v3;
            break;
        case 90 << FX32_SHIFT:
            v5 = param2->unk_1C - (256 + 32);
            v2 = param2->unk_12 * v5 / 15;
            v0 = (256 + 32) + v2;
            break;
        case 180 << FX32_SHIFT:
            v4 = param2->unk_1E - (196 + 32);
            v3 = param2->unk_12 * v4 / 15;
            v1 = (196 + 32) + v3;
            break;
        case 270 << FX32_SHIFT:
            v5 = param2->unk_1C - -32;
            v2 = param2->unk_12 * v5 / 15;
            v0 = -32 + v2;
            break;
        default:
            GF_ASSERT(0);
            break;
        }
        if (param2->unk_12 >= 15) {
            sub_0200D500(param2->unk_00, param2->unk_1C, param2->unk_1E, ((192 + 160) << FX32_SHIFT));
            sub_0200D500(param2->unk_08, param2->unk_1C, param2->unk_1E + 24, ((192 + 160) << FX32_SHIFT));
            ov117_02265428(param2, 2);
            ov117_0226639C(param0, param2, &param2->unk_30);

            return 1;
        }

        v6 = ((180 * param2->unk_12) << FX32_SHIFT) / 15;
        v7 = -(FX_Mul(sub_0201D2B8(v6), (24 << FX32_SHIFT))) / FX32_ONE;

        sub_0200D500(param2->unk_00, v0, v1 + v7, ((192 + 160) << FX32_SHIFT));
        sub_0200D500(param2->unk_08, v0, v1 + 24, ((192 + 160) << FX32_SHIFT));

        v8 = FX32_ONE - (FX32_ONE * (-v7 / 3) / ((24 << FX32_SHIFT) >> FX32_SHIFT));
        v9 = FX_FX32_TO_F32(v8);

        sub_0200D6E8(param2->unk_08, v9, v9);
        break;
    }

    param2->unk_12++;
    return 1;
}

static int ov117_02265644(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2)
{
    fx32 v0, v1;
    fx32 v2;
    int v3 = 0;
    fx32 v4;
    f32 v5;

    if (param1->unk_F3 > 0) {
        sub_0200D34C(param2->unk_00, ((8 + 8 + 12 + 8 + 8) << FX32_SHIFT) / Unk_ov117_02266BC4[param1->unk_F4].unk_00);
    } else {
        sub_0200D3CC(param2->unk_00, 0);
    }

    v2 = ((180 * param1->unk_F3) << FX32_SHIFT) / Unk_ov117_02266BC4[param1->unk_F4].unk_00;
    v3 = -(FX_Mul(sub_0201D2B8(v2), (12 << FX32_SHIFT))) / FX32_ONE;
    v0 = 256 / 2 + FX_Mul(sub_0201D2B8(param1->unk_E4 + param2->unk_0C), 76);
    v1 = 196 / 2 + (-FX_Mul(sub_0201D2C4(param1->unk_E4 + param2->unk_0C), (64 + 4)));

    sub_0200D500(param2->unk_00, v0, v1 + -24 + v3, ((192 + 160) << FX32_SHIFT));
    sub_0200D500(param2->unk_08, v0, v1 + -24 + 24, ((192 + 160) << FX32_SHIFT));

    v4 = FX32_ONE - (FX32_ONE * (-v3 / 3) / ((12 << FX32_SHIFT) >> FX32_SHIFT));
    v5 = FX_FX32_TO_F32(v4);

    sub_0200D6E8(param2->unk_08, v5, v5);

    if (param1->unk_F3 == Unk_ov117_02266BC4[param1->unk_F4].unk_00 - 1) {
        ov117_0226639C(param0, param2, &param2->unk_30);
    }

    if (((param1->unk_E4 + param2->unk_0C) >> FX32_SHIFT) % 360 == 180) {
        param2->unk_15 = 1;
    } else {
        param2->unk_15 = 0;
    }

    return 1;
}

static int ov117_022657C4(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_022653F4 *param1, UnkStruct_ov117_02265428 *param2)
{
    s16 v0, v1;
    int v2, v3;
    s16 v4, v5, v6, v7;
    fx32 v8;
    int v9 = 0;

    switch (param2->unk_11) {
    case 0:
        Sound_PlayEffect(1403);
        sub_0200D5A0(param2->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        sub_0200D500(param2->unk_04, v0, v1 + -32, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param2->unk_04, 33);
        SpriteActor_EnableObject(param2->unk_04, 1);
        sub_0200D364(param2->unk_00, Unk_ov117_02266B7A[param2->unk_14] + 2);

        param2->unk_12 = Unk_ov117_02266BC4[param1->unk_F4].unk_02;
        param2->unk_13 = Unk_ov117_02266BC4[param1->unk_F4].unk_02 / 2;
        param2->unk_11++;
        break;
    case 1:
        if (param2->unk_12 == param2->unk_13) {
            sub_0200D364(param2->unk_00, Unk_ov117_02266B7A[param2->unk_14] + 1);
            SpriteActor_EnableObject(param2->unk_04, 0);
            sub_0200D34C(param2->unk_04, (4 * FX32_ONE));
        }

        if (param2->unk_12 == 0) {
            SpriteActor_EnableObject(param2->unk_04, 0);
            sub_0200D364(param2->unk_00, Unk_ov117_02266B7A[param2->unk_14] + 0);
            param2->unk_11++;
            break;
        }
        param2->unk_12--;
        break;
    case 2:
        v2 = 0;

        if (param1->unk_F2 == 0) {
            v2 += Unk_ov117_02266BC4[param1->unk_F4].unk_00 - param1->unk_F3;
            v2 += Unk_ov117_02266BC4[param1->unk_F4].unk_01;
            v2 += Unk_ov117_02266BC4[param1->unk_F4].unk_00;
            v3 = param1->unk_F0 + 2;
        } else {
            v2 += param1->unk_F2;

            if (param1->unk_F0 >= 12) {
                v2 += Unk_ov117_02266BC4[param1->unk_F4 + 1].unk_00;
                v3 = 1;
            } else {
                v2 += Unk_ov117_02266BC4[param1->unk_F4].unk_00;
                v3 = param1->unk_F0 + 1;

                if (v3 >= 12) {
                    (void)0;
                }
            }
        }

        v3 += param2->unk_0C / ((360 / 12) << FX32_SHIFT);
        v3 %= 12;
        v4 = 256 / 2 + FX_Mul(sub_0201D2B8((360 << FX32_SHIFT) / 12 * v3), 76);
        v5 = 196 / 2 + (-FX_Mul(sub_0201D2C4((360 << FX32_SHIFT) / 12 * v3), (64 + 4)));

        sub_0200D5A0(param2->unk_00, &v6, &v7, ((192 + 160) << FX32_SHIFT));

        v7 -= -24;

        param2->unk_20 = (v4 - v6) * FX32_ONE / v2;
        param2->unk_24 = (v5 - v7) * FX32_ONE / v2;
        param2->unk_28 = v6 * FX32_ONE;
        param2->unk_2C = v7 * FX32_ONE;
        param2->unk_12 = v2;
        param2->unk_18 = v2;
        param2->unk_11++;

    case 3:
        param2->unk_28 += param2->unk_20;
        param2->unk_2C += param2->unk_24;

        v8 = ((180 * param2->unk_12) << FX32_SHIFT) / param2->unk_18;
        v9 = -(FX_Mul(sub_0201D2B8(v8), (12 << FX32_SHIFT))) / FX32_ONE;

        sub_0200D500(param2->unk_00, param2->unk_28 / FX32_ONE, param2->unk_2C / FX32_ONE + -24 + v9, ((192 + 160) << FX32_SHIFT));
        sub_0200D34C(param2->unk_00, ((8 + 8 + 12 + 8 + 8) << FX32_SHIFT) / param2->unk_18);
        sub_0200D500(param2->unk_08, param2->unk_28 / FX32_ONE, param2->unk_2C / FX32_ONE + -24 + 24, ((192 + 160) << FX32_SHIFT));

        param2->unk_12--;

        if (param2->unk_12 <= 0) {
            sub_0200D364(param2->unk_00, Unk_ov117_02266B7A[param2->unk_14] + 0);
            sub_0200D3CC(param2->unk_00, 0);
            ov117_02265428(param2, 2);
            return 1;
        }

        break;
    }

    return 1;
}

void ov117_02265ABC(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265C3C *param1)
{
    SpriteTemplate v0;
    int v1;

    v0 = Unk_ov117_02266D9C;

    for (v1 = 0; v1 < 3; v1++) {
        param1->unk_00[v1].unk_00 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &v0);

        sub_0200D500(param1->unk_00[v1].unk_00, 0, 0, ((192 + 160) << FX32_SHIFT));
        SpriteActor_EnableObject(param1->unk_00[v1].unk_00, 0);

        param1->unk_00[v1].unk_04 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266DD0);

        sub_0200D500(param1->unk_00[v1].unk_04, 0, 0, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param1->unk_00[v1].unk_04, 33);
        SpriteActor_UpdateObject(param1->unk_00[v1].unk_04->unk_00);
        SpriteActor_EnableObject(param1->unk_00[v1].unk_04, 0);
    }
}

void ov117_02265B3C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265C3C *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_0200D0F4(param1->unk_00[v0].unk_00);
        sub_0200D0F4(param1->unk_00[v0].unk_04);
    }
}

void ov117_02265B58(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265C3C *param1, int param2, int param3, int param4)
{
    int v0, v1, v2, v3;
    UnkStruct_ov117_02265C1C *v4 = NULL;

    if ((param2 == 0) || (param3 == CommSys_CurNetId())) {
        return;
    }

    for (v0 = 0; v0 < 3; v0++) {
        if (param1->unk_00[v0].unk_15 == 0) {
            v4 = &param1->unk_00[v0];
            break;
        }
    }

    if (v4 == NULL) {
        return;
    }

    v2 = ov117_022622C4(param0, param3);
    v1 = Unk_ov117_02266C2C[param0->unk_00->unk_30][v2];

    sub_0200D41C(v4->unk_00, v1);
    sub_0200D364(v4->unk_00, Unk_ov117_02266B7A[param2] + 0);

    v3 = Unk_ov117_02266BD8[param0->unk_00->unk_30][v2];
    v4->unk_10 = Unk_ov117_02266BB4[v3].unk_02 + -24;

    sub_0200D500(v4->unk_00, Unk_ov117_02266BB4[v3].unk_00, v4->unk_10 + -96, ((192 + 160) << FX32_SHIFT));
    SpriteActor_UpdateObject(v4->unk_00->unk_00);

    v4->unk_12 = param2;
    v4->unk_16 = param4 - (MATH_ABS(-96) * FX32_ONE) / 0x8000;
    v4->unk_13 = 0;
    v4->unk_15 = 1;
}

void ov117_02265C1C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265C3C *param1)
{
    int v0;
    UnkStruct_ov117_02265C1C *v1;

    for (v0 = 0; v0 < 3; v0++) {
        if (param1->unk_00[v0].unk_15 == 1) {
            v1 = &param1->unk_00[v0];
            ov117_02265C3C(param1, v1);
        }
    }
}

static BOOL ov117_02265C3C(UnkStruct_ov117_02265C3C *param0, UnkStruct_ov117_02265C1C *param1)
{
    s16 v0, v1;

    switch (param1->unk_13) {
    case 0:
        sub_0200D5A0(param1->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        param1->unk_08 = v0 * FX32_ONE;
        param1->unk_0C = v1 * FX32_ONE;
        param1->unk_13++;
    case 1:
        if (param1->unk_16 > 0) {
            param1->unk_16--;
            break;
        }

        SpriteActor_EnableObject(param1->unk_00, 1);
        param1->unk_0C += 0x8000;

        if ((param1->unk_0C / FX32_ONE) >= param1->unk_10) {
            param1->unk_0C = param1->unk_10 * FX32_ONE;
            param1->unk_13++;
        }
        break;
    case 2:
        sub_0200D5A0(param1->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        sub_0200D500(param1->unk_04, v0, v1 + -32, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param1->unk_04, 33);
        SpriteActor_EnableObject(param1->unk_04, 1);
        Sound_PlayEffect(1403);
        sub_0200D364(param1->unk_00, Unk_ov117_02266B7A[param1->unk_12] + 2);

        param1->unk_14 = 8;
        param1->unk_13++;
        break;
    case 3:
        param1->unk_14--;

        if (param1->unk_14 == 3) {
            sub_0200D34C(param1->unk_04, (4 * FX32_ONE));
        }

        if (param1->unk_14 == 0) {
            SpriteActor_EnableObject(param1->unk_04, 0);
            sub_0200D364(param1->unk_00, Unk_ov117_02266B7A[param1->unk_12] + 0);
            param1->unk_13++;
        }
        break;
    case 4:
        param1->unk_0C -= 0x8000;

        if ((param1->unk_0C / FX32_ONE) <= param1->unk_10 + -96) {
            SpriteActor_EnableObject(param1->unk_00, 0);
            param1->unk_13 = 0;
            param1->unk_15 = 0;
            return 0;
        }
        break;
    }

    sub_0200D500(param1->unk_00, param1->unk_08 / FX32_ONE, param1->unk_0C / FX32_ONE, ((192 + 160) << FX32_SHIFT));
    return 1;
}

void ov117_02265DB8(BGL *param0, SpriteGfxHandler *param1, UnkStruct_02012744 *param2, UnkStruct_ov117_02265EB0 *param3, const Strbuf *param4, enum Font param5, TextColor param6, int param7, int param8, int param9, int param10, int param11, int param12, int param13, int param14)
{
    UnkStruct_020127E8 v0;
    Window v1;
    SpriteManagerAllocation v2;
    int v3;
    FontOAM *v4;
    int v5, v6;
    int v7 = 0;

    {
        v5 = Font_CalcMaxLineWidth(param5, param4, v7);
        v6 = v5 / 8;

        if (FX_ModS32(v5, 8) != 0) {
            v6++;
        }
    }

    {
        Window_Init(&v1);
        BGL_AddFramelessWindow(param0, &v1, v6, param14, 0, 0);
        Text_AddPrinterWithParamsColorAndSpacing(&v1, param5, param4, 0, 0, TEXT_SPEED_NO_TRANSFER, param6, v7, 0, NULL);
    }

    v3 = sub_02012898(&v1, NNS_G2D_VRAM_TYPE_2DMAIN, 110);
    sub_0201ED94(v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

    if (param11 == 1) {
        param9 -= v5 / 2;
    }

    param10 += 0;

    v0.unk_00 = param2;
    v0.unk_04 = &v1;
    v0.unk_08 = sub_0200D9B0(param1);
    v0.unk_0C = sub_0200D04C(param1, param8);
    v0.unk_10 = NULL;
    v0.unk_14 = v2.unk_04;
    v0.unk_18 = param9;
    v0.unk_1C = param10;
    v0.unk_20 = param12;
    v0.unk_24 = param13;
    v0.unk_28 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_2C = 110;

    v4 = sub_020127E8(&v0);

    if (param7 != 0) {
        sub_02012A90(v4, param7);
    }

    sub_020128C4(v4, param9, param10);
    BGL_DeleteWindow(&v1);

    param3->unk_00 = v4;
    param3->unk_04 = v2;
    param3->unk_10 = v5;
}

void ov117_02265EB0(UnkStruct_ov117_02265EB0 *param0)
{
    sub_02012870(param0->unk_00);
    sub_0201EE28(&param0->unk_04);
    param0->unk_00 = NULL;
}

void ov117_02265EC8(UnkStruct_ov117_02265EC8 *param0)
{
    int v0, v1;
    int v2 = 16 * 5;
    int v3, v4, v5, v6;

    for (v0 = 0; v0 < 6; v0++) {
        v1 = param0->unk_180[v0];

        if (v1 < v2 - 16) {
            v5 = v2 - 16 - v1;
            v6 = v5 - v2;
        } else if (v1 < 160 - 32) {
            v6 = v2 - 16 - (v1 - v2);
            v5 = v6 - v2;
        } else {
            v5 = v2 - 16 - (v1 - 160);
            v6 = v5 - v2;
        }

        sub_020129A4(param0->unk_04[v0][0].unk_00, &v3, &v4);
        sub_020128C4(param0->unk_04[v0][0].unk_00, v3, 168 - v5);
        sub_020128C4(param0->unk_04[v0][1].unk_00, v3, 168 - v6);
    }
}

void ov117_02265F34(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265EC8 *param1)
{
    int v0;
    BOOL v1;

    if (param1->unk_19E > 0) {
        param1->unk_19E--;
        return;
    }

    switch (param1->unk_1A0) {
    case 0:
        if (ov117_02266008(param1) == 1) {
            ov117_02265FD4(param1);
            break;
        } else {
            param1->unk_1A0++;
        }

    case 1:
        v1 = ov117_02266030(param1);
        ov117_02265EC8(param1);

        if (v1 == 1) {
            param1->unk_19E = 15;
            param1->unk_1A0--;
        }
        break;
    }
}

void ov117_02265F98(UnkStruct_ov117_02265EC8 *param0, int param1)
{
    int v0, v1, v2;

    v1 = 100000;
    GF_ASSERT(6 == 6);

    for (v0 = 0; v0 < 6; v0++) {
        v2 = param1 / v1;
        param0->unk_18C[v0] = v2 * 16;
        param1 -= v2 * v1;
        v1 /= 10;
    }
}

static void ov117_02265FD4(UnkStruct_ov117_02265EC8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_186[v0] = param0->unk_18C[v0];
        param0->unk_198[v0] = 2 * (6 - v0 - 1);
        param0->unk_192[v0] = 0;
    }

    param0->unk_19F = 0;
}

static BOOL ov117_02266008(UnkStruct_ov117_02265EC8 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_180[v0] != param0->unk_186[v0]) {
            return 0;
        }
    }

    return 1;
}

static BOOL ov117_02266030(UnkStruct_ov117_02265EC8 *param0)
{
    int v0;
    int v1 = 6 - 1;
    int v2, v3, v4, v5;

    if (param0->unk_19F > 6) {
        return 1;
    }

    v3 = 0;
    v4 = 0;

    for (v0 = 0; v0 < 6; v0++, v1--) {
        v3 = v4;

        if (param0->unk_198[v1] > 0) {
            param0->unk_198[v1]--;
            v4 = 0;
            continue;
        }

        if ((param0->unk_192[v1] > 1) && (param0->unk_180[v1] == param0->unk_186[v1])) {
            v4 = 1;
            continue;
        }

        v4 = 0;
        v2 = param0->unk_180[v1];
        param0->unk_180[v1] += 23;
        v5 = param0->unk_186[v1] + 16 * 10;

        if (((v2 <= param0->unk_186[v1]) && (param0->unk_180[v1] >= param0->unk_186[v1])) || ((v2 <= v5) && (param0->unk_180[v1] >= v5))) {
            if (param0->unk_192[v1] < 1) {
                param0->unk_192[v1]++;
            } else if ((v1 == 6 - 1) || (v3 == 1)) {
                param0->unk_192[v1]++;
                param0->unk_180[v1] = param0->unk_186[v1];
                param0->unk_19F++;

                if (param0->unk_19F >= 6) {
                    return 1;
                }
            }
        }

        param0->unk_180[v1] %= 10 * 16;
    }

    return 0;
}

CellActorData *ov117_02266130(UnkStruct_ov117_02261280 *param0)
{
    CellActorData *v0;

    v0 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266E6C);
    SpriteActor_UpdateObject(v0->unk_00);
    return v0;
}

void ov117_02266150(UnkStruct_ov117_02261280 *param0)
{
    Strbuf *v0;
    int v1, v2, v3;
    u32 v4;

    v4 = param0->unk_3D4C;
    for (v1 = 6 - 1; v1 >= 0; v1--) {
        GF_ASSERT(param0->unk_15A8.unk_108[v1].unk_00 == NULL);
        v0 = MessageLoader_GetNewStrbuf(param0->unk_80, 4 + (v4 % 10));
        v4 /= 10;
        sub_020129A4(param0->unk_15A8.unk_04[v1][0].unk_00, &v2, &v3);
        ov117_02265DB8(param0->unk_2C, param0->unk_28, param0->unk_90, &param0->unk_15A8.unk_108[v1], v0, FONT_SYSTEM, TEXT_COLOR(14, 15, 0), 0, 10003, v2, 168, 0, 1, 12, 2 * 1);
        Strbuf_Free(v0);
    }
}

void ov117_02266210(UnkStruct_ov117_02261280 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_15A8.unk_108[v0].unk_00 != NULL) {
            ov117_02265EB0(&param0->unk_15A8.unk_108[v0]);
        }
    }
}

void ov117_02266238(UnkStruct_ov117_02261280 *param0, CellActorData *param1)
{
    sub_0200D0F4(param1);
}

CellActorData *ov117_02266244(UnkStruct_ov117_02261280 *param0)
{
    CellActorData *v0;

    v0 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266EA0);

    SpriteActor_EnableObject(v0, 0);
    SpriteActor_UpdateObject(v0->unk_00);

    return v0;
}

void ov117_02266268(UnkStruct_ov117_02261280 *param0, CellActorData *param1)
{
    sub_0200D0F4(param1);
}

BOOL ov117_02266274(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02266274 *param1)
{
    switch (param1->unk_04) {
    case 0:
    case 5:
        sub_0200D500(param1->unk_00, 128, 16, ((192 + 160) << FX32_SHIFT));
        SpriteActor_EnableObject(param1->unk_00, 1);
        param1->unk_04++;
        break;
    case 1:
    case 6:
        param1->unk_06++;

        if (param1->unk_06 > 15) {
            param1->unk_06 = 0;
            param1->unk_14 = 1;
            param1->unk_18 = 1;
            param1->unk_0C = 128;
            param1->unk_10 = 32;
            param1->unk_04++;
        }

        break;
    case 2:
    case 7:
        param1->unk_18 = 0;
        param1->unk_10 += 6;

        sub_0200D5DC(param1->unk_00, 0, 6);

        if (param1->unk_10 > 192 - 96) {
            param1->unk_04++;
        }

        break;
    case 3:
    case 8:
        param1->unk_14 = 0;
        SpriteActor_EnableObject(param1->unk_00, 0);
        param1->unk_04++;

    case 4:
    case 9:
        param1->unk_06++;

        if (param1->unk_06 > 30) {
            param1->unk_06 = 0;
            param1->unk_04++;
        }

        break;
    case 10:
        return 1;
    }

    return 0;
}

static void ov117_02266344(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02266344 *param1)
{
    CellActorData *v0;
    int v1;

    for (v1 = 0; v1 < 2; v1++) {
        v0 = SpriteActor_LoadResources(param0->unk_24, param0->unk_28, &Unk_ov117_02266E38);

        sub_0200D364(v0, 27);
        SpriteActor_SetOAMMode(v0, GX_OAM_MODE_XLU);
        SpriteActor_EnableObject(v0, 0);
        SpriteActor_UpdateObject(v0->unk_00);

        param1->unk_00[v1] = v0;
    }
}

static void ov117_02266384(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02266344 *param1)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        sub_0200D0F4(param1->unk_00[v0]);
    }
}

static void ov117_0226639C(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 *param1, UnkStruct_ov117_02266344 *param2)
{
    s16 v0, v1;
    int v2;

    sub_0200D5A0(param1->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));

    for (v2 = 0; v2 < 2; v2++) {
        sub_0200D500(param2->unk_00[v2], v0, v1 + 28, ((192 + 160) << FX32_SHIFT));
        sub_0200D364(param2->unk_00[v2], 27);
        SpriteActor_SetOAMMode(param2->unk_00[v2], GX_OAM_MODE_XLU);
        SpriteActor_EnableObject(param2->unk_00[v2], 1);

        param2->unk_08[v2] = LCRNG_Next() % 0x1000 + 0x1000;
        param2->unk_10[v2] = LCRNG_Next() % 0x400 + 0x400;

        if (v2 & 1) {
            param2->unk_08[v2] *= -1;
        }
    }

    param2->unk_19 = 0;
    param2->unk_18 = 1;
}

static void ov117_02266440(UnkStruct_ov117_02261280 *param0, UnkStruct_ov117_02265428 *param1, UnkStruct_ov117_02266344 *param2)
{
    int v0;

    switch (param2->unk_18) {
    case 0:
        break;
    case 1:
        for (v0 = 0; v0 < 2; v0++) {
            sub_0200D5E8(param2->unk_00[v0], param2->unk_08[v0], -param2->unk_10[v0]);
            SpriteActor_UpdateObject(param2->unk_00[v0]->unk_00);
        }

        param2->unk_19++;

        if (param2->unk_19 > 8) {
            for (v0 = 0; v0 < 2; v0++) {
                SpriteActor_EnableObject(param2->unk_00[v0], 0);
            }

            param2->unk_18 = 0;
        }

        break;
    }
}
