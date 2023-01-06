#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "assert.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02005474.h"
#include "unk_020068C8.h"
#include "unk_0200C6E4.h"
#include "unk_0200D9E8.h"
#include "unk_02017E74.h"
#include "unk_020218BC.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_0226D094.h"

typedef struct {
    UnkStruct_0200D0F4 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkEnum_ov16_0226D220 unk_08;
    UnkEnum_ov16_0226D194 unk_0C;
    UnkEnum_ov16_0226D194_3 unk_10;
    s32 unk_14;
    s16 unk_18;
    u8 unk_1A;
    u8 unk_1B;
} UnkStruct_ov16_0226D2A0;

typedef struct {
    UnkStruct_0200D0F4 * unk_00;
    UnkStruct_0201CD38 * unk_04;
    UnkEnum_ov16_0226D194 unk_08;
    UnkEnum_ov16_0226D194_3 unk_0C;
    UnkEnum_ov16_0226D194_2 unk_10;
    s8 * unk_14;
    s16 * unk_18;
    s32 unk_1C;
    s32 unk_20;
    s32 unk_24;
    s16 unk_28;
    u16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
} UnkStruct_ov16_0226D540;

typedef struct UnkStruct_ov16_0226D160_t {
    UnkStruct_ov16_0226D2A0 unk_00;
    UnkStruct_ov16_0226D540 unk_1C[6];
    s8 unk_13C;
} UnkStruct_ov16_0226D160;

static void ov16_0226D2A0(UnkStruct_ov16_0226D2A0 * param0, UnkEnum_ov16_0226D194 param1, UnkEnum_ov16_0226D194_3 param2, UnkStruct_0200C6E4 * param3, UnkStruct_0200C704 * param4);
static void ov16_0226D3F8(UnkStruct_ov16_0226D2A0 * param0, UnkEnum_ov16_0226D220 param1);
static void ov16_0226D540(UnkStruct_ov16_0226D540 * param0, s8 * param1, UnkEnum_ov16_0226D194 param2, UnkEnum_ov16_0226D194_1 param3, UnkEnum_ov16_0226D194_3 param4, int param5, int param6, UnkStruct_0200C6E4 * param7, UnkStruct_0200C704 * param8);
static void ov16_0226D938(UnkStruct_ov16_0226D540 * param0, int param1, UnkEnum_ov16_0226D194_2 param2, s16 * param3);
static void ov16_0226D34C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226D434(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226D654(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226D854(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226D99C(UnkStruct_0201CD38 * param0, void * param1);
static void ov16_0226DAAC(UnkStruct_0201CD38 * param0, void * param1);
static int ov16_0226DB04(int param0, UnkEnum_ov16_0226D194 param1);
static int ov16_0226DB44(int param0);
static UnkStruct_ov16_0226D160 * ov16_0226D160(void);
static void ov16_0226D17C(UnkStruct_ov16_0226D160 * param0);

static const UnkStruct_ov104_0223F9E0 Unk_ov16_02270A3C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4FBD, 0x4E45, 0x4FB7, 0x4FAC, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

static const UnkStruct_ov104_0223F9E0 Unk_ov16_02270A70 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x8,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    {0x4FBD, 0x4E45, 0x4FB7, 0x4FAC, 0xFFFFFFFF, 0xFFFFFFFF},
    0x0,
    0x0
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A2C[] = {
    0x54,
    0x78,
    0x78
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A24[] = {
    0x14,
    0x38,
    0x38
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A34[] = {
    0x4E,
    0x72,
    0x72
};

__attribute__((aligned(4))) static const u16 Unk_ov16_02270A1C[] = {
    0xE,
    0x32,
    0x32
};

void ov16_0226D094 (UnkStruct_0200C6E4 * param0, UnkStruct_0200C704 * param1, UnkStruct_02002F38 * param2)
{
    UnkStruct_02006C24 * v0;

    v0 = sub_02006C24(27, 5);

    sub_0200CDC4(param2, 2, param0, param1, v0, 110, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20037);
    sub_0200CC3C(param0, param1, v0, 340, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20413);
    sub_0200CE24(param0, param1, v0, 341, 1, 20407);
    sub_0200CE54(param0, param1, v0, 342, 1, 20396);
    sub_02006CA8(v0);
}

void ov16_0226D12C (UnkStruct_0200C704 * param0)
{
    sub_0200D070(param0, 20413);
    sub_0200D080(param0, 20037);
    sub_0200D090(param0, 20407);
    sub_0200D0A0(param0, 20396);
}

static UnkStruct_ov16_0226D160 * ov16_0226D160 (void)
{
    UnkStruct_ov16_0226D160 * v0;

    v0 = sub_02018144(5, sizeof(UnkStruct_ov16_0226D160));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226D160));
    return v0;
}

static void ov16_0226D17C (UnkStruct_ov16_0226D160 * param0)
{
    GF_ASSERT(param0->unk_00.unk_04 == NULL);
    sub_020181C4(param0);
}

UnkStruct_ov16_0226D160 * ov16_0226D194 (u8 param0[], UnkEnum_ov16_0226D194 param1, UnkEnum_ov16_0226D194_1 param2, UnkEnum_ov16_0226D194_3 param3, UnkStruct_0200C6E4 * param4, UnkStruct_0200C704 * param5)
{
    UnkStruct_ov16_0226D160 * v0;
    int v1, v2;

    v0 = ov16_0226D160();
    ov16_0226D2A0(&v0->unk_00, param1, param3, param4, param5);

    for (v1 = 0; v1 < 6; v1++) {
        v2 = ov16_0226DB04(param0[v1], param1);
        ov16_0226D540(&v0->unk_1C[v1], &v0->unk_13C, param1, param2, param3, v1, v2, param4, param5);
    }

    return v0;
}

BOOL ov16_0226D1FC (UnkStruct_ov16_0226D160 * param0)
{
    int v0;

    if (param0->unk_00.unk_04 == NULL) {
        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_1C[v0].unk_04 != NULL) {
                break;
            }
        }

        if (v0 == 6) {
            return 1;
        }
    }

    return 0;
}

void ov16_0226D220 (UnkStruct_ov16_0226D160 * param0, UnkEnum_ov16_0226D220 param1, UnkEnum_ov16_0226D194_2 param2)
{
    int v0;

    GF_ASSERT(param0 != NULL);

    ov16_0226D3F8(&param0->unk_00, param1);

    for (v0 = 0; v0 < 6; v0++) {
        ov16_0226D938(&param0->unk_1C[v0], v0, param2, &param0->unk_00.unk_18);
    }
}

BOOL ov16_0226D258 (UnkStruct_ov16_0226D160 * param0)
{
    int v0;

    if (param0->unk_00.unk_04 == NULL) {
        for (v0 = 0; v0 < 6; v0++) {
            if (param0->unk_1C[v0].unk_04 != NULL) {
                break;
            }
        }

        if (v0 == 6) {
            return 1;
        }
    }

    return 0;
}

void ov16_0226D27C (UnkStruct_ov16_0226D160 * param0)
{
    int v0;

    sub_0200D0F4(param0->unk_00.unk_00);

    for (v0 = 0; v0 < 6; v0++) {
        sub_0200D0F4(param0->unk_1C[v0].unk_00);
    }

    ov16_0226D17C(param0);
}

static void ov16_0226D2A0 (UnkStruct_ov16_0226D2A0 * param0, UnkEnum_ov16_0226D194 param1, UnkEnum_ov16_0226D194_3 param2, UnkStruct_0200C6E4 * param3, UnkStruct_0200C704 * param4)
{
    GF_ASSERT(param0->unk_00 == NULL && param0->unk_04 == NULL);

    MI_CpuClear8(param0, sizeof(UnkStruct_ov16_0226D2A0));

    param0->unk_00 = sub_0200CE6C(param3, param4, &Unk_ov16_02270A3C);

    if (param1 == UnkEnum_ov16_0226D194_00) {
        sub_0200D4C4(param0->unk_00, (256 + 96), Unk_ov16_02270A2C[param2]);
        sub_02021D6C(param0->unk_00->unk_00, 8);
    } else {
        sub_0200D4C4(param0->unk_00, -96, Unk_ov16_02270A24[param2]);
        sub_02021D6C(param0->unk_00->unk_00, 7);
    }

    sub_0200D324(param0->unk_00->unk_00);

    param0->unk_0C = param1;
    param0->unk_10 = param2;
    param0->unk_1A = 0;
    param0->unk_04 = sub_0200D9E8(ov16_0226D34C, param0, 500);

    sub_02005748(1809);
}

static void ov16_0226D34C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D2A0 * v0 = param1;

    switch (v0->unk_1A) {
    case 0:
    {
        s16 v1, v2;

        sub_0200D550(v0->unk_00, &v1, &v2);
        v0->unk_14 = v1 << 8;
    }
        v0->unk_1A++;

    case 1:
        if (v0->unk_0C == UnkEnum_ov16_0226D194_00) {
            v0->unk_14 -= 0x1200;

            if (v0->unk_14 <= (256 - 32) << 8) {
                v0->unk_14 = (256 - 32) << 8;
                v0->unk_1A++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_14 >> 8, Unk_ov16_02270A2C[v0->unk_10]);
        } else {
            v0->unk_14 += 0x1200;

            if (v0->unk_14 >= 32 << 8) {
                v0->unk_14 = 32 << 8;
                v0->unk_1A++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_14 >> 8, Unk_ov16_02270A24[v0->unk_10]);
        }
        break;
    default:
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static void ov16_0226D3F8 (UnkStruct_ov16_0226D2A0 * param0, UnkEnum_ov16_0226D220 param1)
{
    GF_ASSERT(param0->unk_00 != NULL && param0->unk_04 == NULL);

    param0->unk_1A = 0;
    param0->unk_08 = param1;

    if (param1 == UnkEnum_ov16_0226D220_00) {
        param0->unk_1B = 4;
    } else {
        param0->unk_1B = 0;
    }

    param0->unk_04 = sub_0200D9E8(ov16_0226D434, param0, 500);
}

static void ov16_0226D434 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D2A0 * v0 = param1;

    switch (v0->unk_1A) {
    case 0:
    {
        s16 v1, v2;

        sub_0200D550(v0->unk_00, &v1, &v2);
        v0->unk_14 = v1 << 8;
    }

        sub_0200D810(v0->unk_00, GX_OAM_MODE_XLU);

        v0->unk_18 = 16 << 8;
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, (v0->unk_18 >> 8), 16 - (v0->unk_18 >> 8));
        v0->unk_1A++;
    case 1:
        if (v0->unk_1B > 0) {
            v0->unk_1B--;
            break;
        }

        v0->unk_1A++;
    case 2:
        if (v0->unk_08 == UnkEnum_ov16_0226D220_00) {
            if (v0->unk_0C == UnkEnum_ov16_0226D194_00) {
                v0->unk_14 -= 0x400;
                sub_0200D4C4(v0->unk_00, v0->unk_14 >> 8, Unk_ov16_02270A2C[v0->unk_10]);
            } else {
                v0->unk_14 += 0x400;
                sub_0200D4C4(v0->unk_00, v0->unk_14 >> 8, Unk_ov16_02270A24[v0->unk_10]);
            }
        }

        v0->unk_18 -= 0x100;

        if (v0->unk_18 <= 0) {
            v0->unk_18 = 0;
            sub_0200D3EC(v0->unk_00->unk_00, 0);
            v0->unk_1A++;
        }

        G2_ChangeBlendAlpha(v0->unk_18 >> 8, 16 - (v0->unk_18 >> 8));
        break;
    default:
        ov16_0223F9F0();
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static void ov16_0226D540 (UnkStruct_ov16_0226D540 * param0, s8 * param1, UnkEnum_ov16_0226D194 param2, UnkEnum_ov16_0226D194_1 param3, UnkEnum_ov16_0226D194_3 param4, int param5, int param6, UnkStruct_0200C6E4 * param7, UnkStruct_0200C704 * param8)
{
    GF_ASSERT(param0->unk_00 == NULL && param0->unk_04 == NULL);

    MI_CpuClear8(param0, sizeof(UnkStruct_ov16_0226D540));
    param0->unk_00 = sub_0200CE6C(param7, param8, &Unk_ov16_02270A70);

    if (param2 == UnkEnum_ov16_0226D194_00) {
        sub_0200D4C4(param0->unk_00, (256 + 20), Unk_ov16_02270A34[param4]);
    } else {
        sub_0200D4C4(param0->unk_00, -20, Unk_ov16_02270A1C[param4]);
    }

    sub_02021D6C(param0->unk_00->unk_00, param6);
    sub_0200D324(param0->unk_00->unk_00);

    param0->unk_08 = param2;
    param0->unk_2D = param5;
    param0->unk_0C = param4;
    param0->unk_2E = ov16_0226DB44(param6);
    param0->unk_14 = param1;
    param0->unk_2A = ((param6 == 6) ? 1811 : 1810);

    if (param2 == UnkEnum_ov16_0226D194_00) {
        param0->unk_20 = (256 - 128 + 20 + 14) + param5 * 16;
        param0->unk_24 = (256 - 128 + 20 + 14) + param5 * 15 - 6;
    } else {
        param0->unk_20 = (128 - 20 - 14) - param5 * 16;
        param0->unk_24 = (128 - 20 - 14) - param5 * 15 + 6;
    }

    param0->unk_2C = 0;

    if (param3 == UnkEnum_ov16_0226D194_1_00) {
        param0->unk_28 = 3 * param5 + 5;
        param0->unk_04 = sub_0200D9E8(ov16_0226D654, param0, (500 + 1));
    } else {
        param0->unk_28 = 0;
        param0->unk_04 = sub_0200D9E8(ov16_0226D854, param0, (500 + 1));
    }
}

static void ov16_0226D654 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D540 * v0 = param1;

    switch (v0->unk_2C) {
    case 0:
    {
        s16 v1, v2;

        sub_0200D550(v0->unk_00, &v1, &v2);
        v0->unk_1C = v1 << 8;
    }
        v0->unk_2C++;
    case 1:
        if (v0->unk_28 > 0) {
            v0->unk_28--;
            break;
        }
    case 2:
        if (v0->unk_08 == UnkEnum_ov16_0226D194_00) {
            v0->unk_1C -= 0x1200;

            if (v0->unk_1C <= v0->unk_24 << 8) {
                v0->unk_1C = v0->unk_24 << 8;
                sub_02005748(v0->unk_2A);
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A34[v0->unk_0C]);
        } else {
            v0->unk_1C += 0x1200;

            if (v0->unk_1C >= v0->unk_24 << 8) {
                v0->unk_1C = v0->unk_24 << 8;
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A1C[v0->unk_0C]);
        }

        sub_0200D324(v0->unk_00->unk_00);
        break;
    case 3:

        (*(v0->unk_14))++;
        v0->unk_2C++;

    case 4:
        if (*(v0->unk_14) != 6) {
            sub_0200D324(v0->unk_00->unk_00);
            break;
        }

        if (v0->unk_08 == UnkEnum_ov16_0226D194_00) {
            sub_02021E50(v0->unk_00->unk_00, 1);
        } else {
            sub_02021E50(v0->unk_00->unk_00, 1);
        }

        v0->unk_28 = 0;
        v0->unk_2C++;
    case 5:
        v0->unk_28++;

        if (v0->unk_28 < 0) {
            break;
        }

        sub_02021D6C(v0->unk_00->unk_00, v0->unk_2E);
        v0->unk_28 = 0;
        v0->unk_2C++;
    case 6:
        if (v0->unk_08 == UnkEnum_ov16_0226D194_00) {
            v0->unk_1C += 0x600;

            if (v0->unk_1C >= v0->unk_20 << 8) {
                v0->unk_1C = v0->unk_20 << 8;
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A34[v0->unk_0C]);
        } else {
            v0->unk_1C -= 0x600;

            if (v0->unk_1C <= v0->unk_20 << 8) {
                v0->unk_1C = v0->unk_20 << 8;
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A1C[v0->unk_0C]);
        }

        sub_0200D324(v0->unk_00->unk_00);
        break;
    default:
        sub_02021E50(v0->unk_00->unk_00, 0);
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static void ov16_0226D854 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D540 * v0 = param1;

    switch (v0->unk_2C) {
    case 0:
    {
        s16 v1, v2;

        sub_0200D550(v0->unk_00, &v1, &v2);
        v0->unk_1C = v1 << 8;
    }
        sub_02021E50(v0->unk_00->unk_00, 0);
        v0->unk_2C++;
    case 1:
        if (v0->unk_28 > 0) {
            v0->unk_28--;
            break;
        }
    case 2:
        if (v0->unk_08 == UnkEnum_ov16_0226D194_00) {
            v0->unk_1C -= 0x1200;

            if (v0->unk_1C <= v0->unk_20 << 8) {
                v0->unk_1C = v0->unk_20 << 8;
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A34[v0->unk_0C]);
        } else {
            v0->unk_1C += 0x1200;

            if (v0->unk_1C >= v0->unk_20 << 8) {
                v0->unk_1C = v0->unk_20 << 8;
                v0->unk_2C++;
            }

            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A1C[v0->unk_0C]);
        }
        break;
    default:
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static void ov16_0226D938 (UnkStruct_ov16_0226D540 * param0, int param1, UnkEnum_ov16_0226D194_2 param2, s16 * param3)
{
    GF_ASSERT(param0->unk_00 != NULL && param0->unk_04 == NULL);

    param0->unk_2C = 0;

    if (param2 == UnkEnum_ov16_0226D194_2_00) {
        param0->unk_18 = param3;
        param0->unk_28 = 3 * param1;
        param0->unk_2F = 4;
        param0->unk_04 = sub_0200D9E8(ov16_0226D99C, param0, (500 + 1));
    } else {
        param0->unk_18 = param3;
        param0->unk_28 = 0;
        param0->unk_2F = 0;
        param0->unk_04 = sub_0200D9E8(ov16_0226DAAC, param0, (500 + 1));
    }
}

static void ov16_0226D99C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D540 * v0 = param1;

    if ((*(v0->unk_18)) == 0) {
        v0->unk_2C = 100;
    }

    switch (v0->unk_2C) {
    case 0:
    {
        s16 v1, v2;

        sub_0200D550(v0->unk_00, &v1, &v2);
        v0->unk_1C = v1 << 8;
    }
        sub_0200D810(v0->unk_00, GX_OAM_MODE_XLU);
        v0->unk_2C++;
    case 1:
        if (v0->unk_2F > 0) {
            v0->unk_2F--;
            break;
        }

        if (v0->unk_28 > 0) {
            v0->unk_28--;
            break;
        }
    case 2:
        if (v0->unk_08 == UnkEnum_ov16_0226D194_00) {
            v0->unk_1C -= 0xc00;
            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A34[v0->unk_0C]);
        } else {
            v0->unk_1C += 0xc00;
            sub_0200D4C4(v0->unk_00, v0->unk_1C >> 8, Unk_ov16_02270A1C[v0->unk_0C]);
        }

        if ((v0->unk_1C < -16 * 0x100) || (v0->unk_1C > ((256 + 16) << 8))) {
            v0->unk_2C++;
        }

        sub_0200D324(v0->unk_00->unk_00);
        break;
    case 100:
    default:
        sub_0200D3EC(v0->unk_00->unk_00, 0);
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static void ov16_0226DAAC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov16_0226D540 * v0 = param1;

    if ((*(v0->unk_18)) == 0) {
        v0->unk_2C = 100;
    }

    switch (v0->unk_2C) {
    case 0:
        sub_0200D810(v0->unk_00, GX_OAM_MODE_XLU);
        v0->unk_2C++;
    case 1:
        break;
    case 100:
    default:
        sub_0200D3EC(v0->unk_00->unk_00, 0);
        sub_0200DA58(param0);
        v0->unk_04 = NULL;
        return;
    }
}

static int ov16_0226DB04 (int param0, UnkEnum_ov16_0226D194 param1)
{
    int v0;

    switch (param0) {
    case 0:
    default:
        v0 = 6;
        break;
    case 1:
        v0 = (param1 == UnkEnum_ov16_0226D194_00) ? 3 : 0;
        break;
    case 2:
        v0 = (param1 == UnkEnum_ov16_0226D194_00) ? 5 : 2;
        break;
    case 3:
        v0 = (param1 == UnkEnum_ov16_0226D194_00) ? 4 : 1;
        break;
    }

    return v0;
}

static int ov16_0226DB44 (int param0)
{
    switch (param0) {
    case 6:
    default:
        return param0;
    case 3:
        return 0;
    case 0:
        return 3;
    case 5:
        return 2;
    case 2:
        return 5;
    case 4:
        return 1;
    case 1:
        return 4;
    }
}
