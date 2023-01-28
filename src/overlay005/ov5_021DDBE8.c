#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02014014_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "overlay005/struct_ov5_021DE6BC_decl.h"
#include "overlay005/struct_ov5_021DE79C_decl.h"
#include "overlay005/struct_ov5_021DE928_decl.h"
#include "overlay005/struct_ov5_021DEA98_decl.h"
#include "overlay005/struct_ov5_021DEC18_decl.h"
#include "overlay005/struct_ov5_021EF3BC_decl.h"
#include "overlay005/struct_ov5_021EF43C_decl.h"

#include "functypes/funcptr_0201CE28.h"
#include "struct_defs/struct_0203CDB0.h"
#include "struct_defs/struct_0203CDB0_sub2_t.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay005/struct_ov5_021DDC28.h"
#include "overlay005/struct_ov5_021DDD80.h"
#include "overlay005/struct_ov5_021DDDBC.h"
#include "overlay005/struct_ov5_021DDE14.h"
#include "overlay005/struct_ov5_021DDF24.h"
#include "overlay005/struct_ov5_021DE47C.h"
#include "overlay005/struct_ov5_021DE5A4.h"
#include "overlay005/struct_ov5_021DE5D0.h"
#include "overlay006/struct_ov6_02240D5C.h"
#include "overlay083/struct_ov83_0223D9A8.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002F38.h"
#include "unk_0200679C.h"
#include "filesystem.h"
#include "unk_02006E3C.h"
#include "unk_020093B4.h"
#include "unk_02009714.h"
#include "unk_0200A328.h"
#include "unk_0200D9E8.h"
#include "unk_02014000.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "gx_layers.h"
#include "unk_02020020.h"
#include "unk_020218BC.h"
#include "unk_02054884.h"
#include "unk_02073C2C.h"
#include "overlay005/ov5_021D0D80.h"
#include "overlay005/ov5_021DDBE8.h"
#include "overlay005/ov5_021E2338.h"
#include "overlay005/ov5_021EF3A8.h"

typedef struct UnkStruct_ov5_021DE6BC_t {
    UnkStruct_ov5_021DDD80 unk_00;
    UnkStruct_ov5_021DDD80 unk_14;
    UnkStruct_0205AA50 * unk_28;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
};

typedef struct UnkStruct_ov5_021DE79C_t {
    UnkStruct_ov5_021DDD80 unk_00;
    UnkStruct_ov5_021DDD80 unk_14;
    UnkStruct_0205AA50 * unk_28;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
};

typedef struct UnkStruct_ov5_021DE928_t {
    UnkStruct_0205AA50 * unk_00;
    UnkStruct_ov5_021DE79C * unk_04[48];
    u8 unk_C4;
    u8 unk_C5;
    u8 unk_C6;
    u8 unk_C7;
    s8 unk_C8;
    u8 unk_C9;
    u8 unk_CA;
    u8 unk_CB[1];
};

typedef struct UnkStruct_ov5_021DEA98_t {
    UnkStruct_0205AA50 * unk_00;
    UnkStruct_ov5_021DDD80 unk_04;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A[2];
};

typedef struct UnkStruct_ov5_021DEC18_t {
    UnkStruct_ov5_021DEA98 * unk_00[8];
    u8 unk_20;
    u8 unk_21[3];
};

typedef struct {
    int unk_00;
    u32 unk_04;
    int unk_08;
    int unk_0C;
    u32 unk_10;
    u32 unk_14;
    UnkStruct_ov5_021DDF24 unk_18;
    UnkStruct_ov5_021DDF24 unk_30;
    BOOL * unk_48;
} UnkStruct_ov5_021DDC44;

typedef struct UnkStruct_ov5_021DDF74_t {
    UnkStruct_ov5_021DDE14 unk_00;
    u32 unk_18;
    u32 unk_1C;
    UnkStruct_ov5_021EF3BC * unk_20;
    UnkStruct_ov5_021EF43C * unk_24;
    UnkStruct_0201CD38 * unk_28;
    BOOL * unk_2C;
} UnkStruct_ov5_021DDF74;

typedef struct UnkStruct_ov5_021DE374_t {
    UnkStruct_ov5_021DDE14 unk_00;
    UnkStruct_ov5_021DDE14 unk_18;
    u32 unk_30;
    u32 unk_34;
    UnkStruct_ov5_021EF3BC * unk_38;
    UnkStruct_ov5_021EF43C * unk_3C;
    UnkStruct_0201CD38 * unk_40;
    BOOL * unk_44;
} UnkStruct_ov5_021DE374;

typedef struct UnkStruct_ov5_021DED04_t {
    UnkStruct_ov5_021DDD80 unk_00;
    u32 unk_14;
    u8 unk_18[192];
    UnkStruct_ov5_021EF3BC * unk_D8;
    UnkStruct_ov5_021EF43C * unk_DC;
    UnkStruct_0201CD38 * unk_E0;
    BOOL * unk_E4;
} UnkStruct_ov5_021DED04;

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_0203CDB0 * unk_04;
    UnkStruct_02014014 * unk_08;
    void * unk_0C;
    u32 unk_10;
    u32 unk_14;
} UnkStruct_ov5_02202120;

static void ov5_021DE89C(UnkStruct_0205AA50 * param0, s32 param1, s32 param2, s32 param3, s32 param4, u8 param5);
static void ov5_021DEB04(UnkStruct_0205AA50 * param0, u16 param1, u16 param2, u8 param3);
static void ov5_021DDF24(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DDC88(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DE028(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DE088(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DE14C(UnkStruct_ov5_021EF43C * param0, void * param1);
static void ov5_021DE0F0(UnkStruct_ov5_021DDF74 * param0);
static void ov5_021DE2AC(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DE2DC(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DE344(UnkStruct_ov5_021EF43C * param0, void * param1);
static void ov5_021DE374(UnkStruct_ov5_021DE374 * param0);
static void ov5_021DEDE8(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DEE24(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DEE50(UnkStruct_ov5_021EF43C * param0, void * param1);
static void ov5_021DEE84(UnkStruct_ov5_021DED04 * param0);
static void ov5_021DE67C(UnkStruct_02022550 * param0, void * param1, u32 param2);
static void ov5_021DF258(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DF28C(UnkStruct_0201CD38 * param0, void * param1);
static void ov5_021DF30C(UnkStruct_0203CDB0 * param0);
static void ov5_021DF3D4(UnkStruct_0203CDB0 * param0);
static u32 ov5_021DF3E8(u32 param0, BOOL param1);
static u32 ov5_021DF414(u32 param0, BOOL param1);
static void include_ov5_021DDBE8_rodata(UnkStruct_0201CD38 * dummy1, void * dummy2);
void include_ov5_021DDBE8_rodata_funcptr(void);

static const UnkFuncPtr_0201CE28 Unk_ov5_021F9A74[] = {
    ov5_021E24A8,
    ov5_021E2338,
    ov5_021E261C,
    ov5_021E2748,
    ov5_021E2944,
    ov5_021E2A4C,
    ov5_021E2B54,
    ov5_021E2EB0,
    ov5_021E31A4,
    ov5_021E3560,
    ov5_021E3AD0,
    ov5_021E3D8C,
    ov5_021E5760,
    ov5_021E5784,
    ov5_021E57A8,
    ov5_021E57CC,
    ov5_021E57F0,
    ov5_021E5814,
    ov5_021E5838,
    ov5_021E585C,
    ov5_021E6178,
    ov5_021E619C,
    ov5_021E61C0,
    ov5_021E61E4,
    ov5_021E6208,
    ov5_021E4E14,
    ov5_021E4F7C,
    ov5_021E4738,
    ov5_021E4B3C,
    ov5_021E4260,
    ov5_021E44C0
};

static const u8 Unk_ov5_021F9988[8] = {
    0x0,
    0x2,
    0x5,
    0x7,
    0x1,
    0x6,
    0x3,
    0x4
};

static const u16 Unk_ov5_021F9A2C[8][2] = {
    {0x0, 0x17},
    {0x2D, 0x16},
    {0x2D, 0x44},
    {0x5A, 0x43},
    {0x5B, 0x71},
    {0x87, 0x70},
    {0x87, 0x9E},
    {0xB4, 0x9D}
};

static UnkStruct_ov5_02202120 * Unk_ov5_02202120 = NULL;

void ov5_021DDBE8 (int param0, UnkStruct_0203CDB0 * param1, BOOL * param2)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov5_021DDC28 * v1;

    v0 = sub_0200679C(Unk_ov5_021F9A74[param0], sizeof(UnkStruct_ov5_021DDC28), 5, 4);
    v1 = sub_0201CED0(v0);
    v1->unk_10 = param1;
    v1->unk_14 = param2;
    v1->unk_20 = NARC_ctor(112, 4);

    if (v1->unk_14 != NULL) {
        *(v1->unk_14) = 0;
    }

    v1->unk_18 = 0;
}

void ov5_021DDC28 (UnkStruct_ov5_021DDC28 * param0, UnkStruct_0201CD38 * param1)
{
    NARC_dtor(param0->unk_20);
    FreeToHeapExplicit(4, param0->unk_0C);
    sub_020067D0(param1);
}

void ov5_021DDC44 (int param0, u32 param1, u32 param2, BOOL * param3, u32 param4)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_ov5_021DDC44 * v1;

    v1 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021DDC44));
    memset(v1, 0, sizeof(UnkStruct_ov5_021DDC44));
    sub_0200D9E8(ov5_021DDC88, v1, 5);

    v1->unk_48 = param3;

    if (v1->unk_48 != NULL) {
        *(v1->unk_48) = 0;
    }

    v1->unk_0C = param0;
    v1->unk_10 = param1;
    v1->unk_14 = param2;
    v1->unk_04 = param4;
}

static void ov5_021DDC88 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DDC44 * v0 = param1;

    switch (v0->unk_00) {
    case 0:
        if (v0->unk_0C == 1) {
            ov5_021DDEFC(&v0->unk_30, 0, v0->unk_14, 2, 8);
        } else {
            if (v0->unk_0C == 2) {
                ov5_021DDEFC(&v0->unk_30, 0, v0->unk_14, 1, 8);
            }
        }

        v0->unk_00++;
        break;
    case 1:
        ov5_021DDEFC(&v0->unk_18, 0, v0->unk_10, v0->unk_0C, 3);
        v0->unk_00++;
        break;
    case 2:
        if (ov5_021DDF08(&v0->unk_18)) {
            v0->unk_00++;
        }
        break;
    case 3:
        ov5_021DDEFC(&v0->unk_18, v0->unk_10, 0, v0->unk_0C, 3);
        v0->unk_00++;
        break;
    case 4:
        if (ov5_021DDF08(&v0->unk_18)) {
            v0->unk_08++;

            if (v0->unk_08 == v0->unk_04) {
                v0->unk_00 = 5;
            } else {
                v0->unk_00 = 1;
            }
        }
        break;
    case 5:
        v0->unk_00 = 0;
        v0->unk_08 = 0;

        if (v0->unk_48 != NULL) {
            *(v0->unk_48) = 1;
        }

        sub_0200DA58(param0);
        FreeToHeap(v0);

        return;
    }

    ov5_021DDF08(&v0->unk_30);
}

BOOL ov5_021DDD7C (UnkStruct_ov5_021DDC28 * param0)
{
    return param0->unk_18;
}

void ov5_021DDD80 (UnkStruct_ov5_021DDD80 * param0, int param1, int param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

BOOL ov5_021DDD90 (UnkStruct_ov5_021DDD80 * param0)
{
    int v0;

    v0 = param0->unk_08 * param0->unk_0C;
    v0 = v0 / param0->unk_10;

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_10;
    return 1;
}

void ov5_021DDDBC (UnkStruct_ov5_021DDDBC * param0, fx32 param1, fx32 param2, int param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_10 = param3;
    param0->unk_0C = 0;
}

BOOL ov5_021DDDCC (UnkStruct_ov5_021DDDBC * param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_08, param0->unk_0C << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_10 << FX32_SHIFT);

    param0->unk_00 = v0 + param0->unk_04;

    if ((param0->unk_0C + 1) <= param0->unk_10) {
        param0->unk_0C++;
        return 0;
    }

    param0->unk_0C = param0->unk_10;
    return 1;
}

void ov5_021DDE14 (UnkStruct_ov5_021DDE14 * param0, fx32 param1, fx32 param2, fx32 param3, int param4)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v2 = param2 - param1;
    v0 = (param4 * param4) << FX32_SHIFT;
    v1 = FX_Mul(param3, param4 * FX32_ONE);
    v1 = v2 - v1;
    v1 = FX_Mul(v1, 2 * FX32_ONE);
    v3 = FX_Div(v1, v0);

    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param3;
    param0->unk_0C = v3;
    param0->unk_10 = 0;
    param0->unk_14 = param4;
}

BOOL ov5_021DDE74 (UnkStruct_ov5_021DDE14 * param0)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;

    v3 = FX_Mul(param0->unk_08, param0->unk_10 << FX32_SHIFT);
    v1 = (param0->unk_10 * param0->unk_10) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    if ((param0->unk_10 + 1) <= param0->unk_14) {
        param0->unk_10++;
        return 0;
    }

    param0->unk_10 = param0->unk_14;
    return 1;
}

void ov5_021DDEDC (int param0, int param1)
{
    if (param0 == 1) {
        GX_SetMasterBrightness(param1);
    } else {
        GXS_SetMasterBrightness(param1);
    }
}

void ov5_021DDEFC (UnkStruct_ov5_021DDF24 * param0, int param1, int param2, int param3, int param4)
{
    param0->unk_14 = param3;
    ov5_021DDD80(&param0->unk_00, param1, param2, param4);
}

BOOL ov5_021DDF08 (UnkStruct_ov5_021DDF24 * param0)
{
    BOOL v0;

    v0 = ov5_021DDD90(&param0->unk_00);
    sub_0200DA3C(ov5_021DDF24, param0, 10);

    return v0;
}

static void ov5_021DDF24 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DDF24 * v0 = param1;

    ov5_021DDEDC(v0->unk_14, v0->unk_00.unk_00);
    sub_0200DA58(param0);
}

UnkStruct_ov5_021DDF74 * ov5_021DDF38 (void)
{
    UnkStruct_ov5_021DDF74 * v0;

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021DDF74));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DDF74));

    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_NONE, 0);

    return v0;
}

void ov5_021DDF74 (UnkStruct_ov5_021DDF74 * param0)
{
    if (param0->unk_24 != NULL) {
        ov5_021DE0F0(param0);
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    FreeToHeap(param0);
}

void ov5_021DDF9C (UnkStruct_ov5_021DDC28 * param0, UnkStruct_ov5_021DDF74 * param1, u8 param2, u32 param3, int param4, int param5, fx32 param6)
{
    GF_ASSERT(param1->unk_24 == NULL);

    param0->unk_18 = 0;
    param1->unk_20 = param0->unk_10->unk_04->unk_1C;
    param1->unk_18 = param2;
    param1->unk_1C = 0;
    param1->unk_2C = &param0->unk_18;

    ov5_021DDE14(&param1->unk_00, param4, param5, param6, param3);

    if (param4 >= 0) {
        G2_SetWnd0Position(0, 0, 255 - param4, 192);
        G2_SetWnd1Position(0, 0, 1 + param4, 192);
    } else {
        G2_SetWnd0Position(0, 0, 255 + param4, 192);
        G2_SetWnd1Position(0, 0, 1 - param4, 192);
    }

    sub_0200DA3C(ov5_021DE028, param1, 1024);
}

static void ov5_021DE028 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DDF74 * v0 = param1;

    v0->unk_28 = sub_0200DA3C(ov5_021DE088, v0, 1024);
    v0->unk_24 = ov5_021EF418(v0->unk_20, ov5_021DE14C, v0);

    sub_0200DA58(param0);
}

void ov5_021DE058 (UnkStruct_ov5_021DDC28 * param0, UnkStruct_ov5_021DDF74 * param1, u8 param2, u32 param3, int param4, int param5, fx32 param6)
{
    GF_ASSERT(ov5_021DDD7C(param0) == 0);

    param1->unk_18 = param2;
    param1->unk_1C = 0;

    ov5_021DDE14(&param1->unk_00, param4, param5, param6, param3);
}

static void ov5_021DE088 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DDF74 * v0 = param1;
    s32 v1;

    switch (v0->unk_1C) {
    case 0:
        if (ov5_021DDE74(&v0->unk_00)) {
            v0->unk_1C++;
        }

        v1 = v0->unk_00.unk_00 >> FX32_SHIFT;

        if (v1 >= 0) {
            G2_SetWnd0Position(0, 0, 255 - v1, 192);
            G2_SetWnd1Position(0, 0, 1 + v1, 192);
        } else {
            G2_SetWnd0Position(0, 0, 255 + v1, 192);
            G2_SetWnd1Position(0, 0, 1 - v1, 192);
        }
        break;
    case 1:
        ov5_021DE0F0(param1);
        break;
    }
}

static void ov5_021DE0F0 (UnkStruct_ov5_021DDF74 * param0)
{
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    G2_SetWnd0Position(0, 0, 0, 0);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    *(param0->unk_2C) = 1;

    ov5_021EF43C(param0->unk_24);
    param0->unk_24 = NULL;
    sub_0200DA58(param0->unk_28);
    param0->unk_28 = NULL;
}

static void ov5_021DE14C (UnkStruct_ov5_021EF43C * param0, void * param1)
{
    UnkStruct_ov5_021DDF74 * v0 = param1;
    int v1;
    int v2;

    v1 = GX_GetVCount();

    if (((v1 / v0->unk_18) % 2) == 0) {
        v2 = v0->unk_00.unk_00 >> FX32_SHIFT;
    } else {
        v2 = -v0->unk_00.unk_00 >> FX32_SHIFT;
    }

    G2_SetBG0Offset(v2, 0);
    G2_SetBG1Offset(v2, 0);
    G2_SetBG2Offset(v2, 0);
    G2_SetBG3Offset(v2, 0);

    if (v2 >= 0) {
        GX_SetVisibleWnd(GX_WNDMASK_W0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    } else {
        GX_SetVisibleWnd(GX_WNDMASK_W1);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    }
}

UnkStruct_ov5_021DE374 * ov5_021DE1CC (void)
{
    UnkStruct_ov5_021DE374 * v0;

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021DE374));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE374));

    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);

    return v0;
}

void ov5_021DE218 (UnkStruct_ov5_021DE374 * param0)
{
    if (param0->unk_3C != NULL) {
        ov5_021DE374(param0);
    }

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    FreeToHeap(param0);
}

void ov5_021DE240 (UnkStruct_ov5_021DDC28 * param0, UnkStruct_ov5_021DE374 * param1, u32 param2, fx32 param3, fx32 param4)
{
    GF_ASSERT(param1->unk_3C == NULL);

    param0->unk_18 = 0;
    param1->unk_38 = param0->unk_10->unk_04->unk_1C;
    param1->unk_30 = 96;
    param1->unk_34 = 0;
    param1->unk_44 = &param0->unk_18;

    ov5_021DDE14(&param1->unk_00, 0, (255 * FX32_ONE), param3, param2);
    ov5_021DDE14(&param1->unk_18, 0, (96 * FX32_ONE), param4, param2);

    G2_SetWnd0Position(0, 0, 255, 192);
    G2_SetWnd1Position(0, 0, 255, 192);

    sub_0200DA3C(ov5_021DE2AC, param1, 1024);
}

static void ov5_021DE2AC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DE374 * v0 = param1;

    v0->unk_40 = sub_0200DA3C(ov5_021DE2DC, v0, 1024);
    v0->unk_3C = ov5_021EF418(v0->unk_38, ov5_021DE344, v0);

    sub_0200DA58(param0);
}

static void ov5_021DE2DC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DE374 * v0 = param1;
    s32 v1;
    s32 v2;

    switch (v0->unk_34) {
    case 0:
        ov5_021DDE74(&v0->unk_18);

        if (ov5_021DDE74(&v0->unk_00)) {
            v0->unk_34++;
        }

        v1 = v0->unk_00.unk_00 >> FX32_SHIFT;
        v2 = v0->unk_18.unk_00 >> FX32_SHIFT;
        G2_SetWnd0Position(0, 0, 255 - v1, 96 - v2);
        G2_SetWnd1Position(v1, 96 + v2, 255, 192);
        break;
    case 1:
        ov5_021DE374(param1);
        break;
    }
}

static void ov5_021DE344 (UnkStruct_ov5_021EF43C * param0, void * param1)
{
    UnkStruct_ov5_021DE374 * v0 = param1;
    int v1;
    int v2;
    int v3;

    v1 = GX_GetVCount();

    if (v1 <= v0->unk_30) {
        GX_SetVisibleWnd(GX_WNDMASK_W0);
    } else {
        GX_SetVisibleWnd(GX_WNDMASK_W1);
    }
}

static void ov5_021DE374 (UnkStruct_ov5_021DE374 * param0)
{
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
    G2_SetWnd0Position(0, 0, 0, 0);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    *(param0->unk_44) = 1;

    ov5_021EF43C(param0->unk_3C);
    param0->unk_3C = NULL;
    sub_0200DA58(param0->unk_40);
    param0->unk_40 = NULL;
}

void include_ov5_021DDBE8_rodata_funcptr (void)
{
    UnkFuncPtr_0201CE28 dummy = include_ov5_021DDBE8_rodata;
}

static void include_ov5_021DDBE8_rodata (UnkStruct_0201CD38 * dummy1, void * dummy2)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_1,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x04000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_23,
            0,
            1,
            0,
            0
        };
    }
}

void ov5_021DE3D0 (NARC * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5, UnkStruct_02018340 * param6, u32 param7)
{
    void * v0;
    NNSG2dScreenData * v1;

    sub_02007130(param0, param3, 0, param4 * 32, param5 * 32, 4);
    sub_020070E8(param0, param2, param6, param7, 0, 0, 0, 4);

    v0 = sub_020071D0(param0, param1, 0, &v1, 4);

    sub_020198C0(param6, param7, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    sub_02019E2C(param6, param7, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8, param4);
    FreeToHeap(v0);
    sub_0201C3C0(param6, param7);
}

void ov5_021DE47C (UnkStruct_ov5_021DE47C * param0, int param1, int param2)
{
    int v0;

    param0->unk_00 = sub_020095C4(param1, &param0->unk_04, 4);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_190[v0] = sub_02009714(param2, v0, 4);
    }
}

void ov5_021DE4AC (UnkStruct_ov5_021DE47C * param0)
{
    int v0;

    sub_02021964(param0->unk_00);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009754(param0->unk_190[v0]);
    }
}

void ov5_021DE4CC (NARC * param0, UnkStruct_ov5_021DE47C * param1, UnkStruct_ov5_021DE5A4 * param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8)
{
    param2->unk_00[0] = sub_02009AA8(param1->unk_190[0], param0, param5, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, 4, 1);
    param2->unk_00[1] = sub_02009B04(param1->unk_190[1], param0, param3, 0, param8, NNS_G2D_VRAM_TYPE_2DMAIN, param4, 4);
    param2->unk_00[2] = sub_02009BC4(param1->unk_190[2], param0, param6, 0, param8, 2, 4);
    param2->unk_00[3] = sub_02009BC4(param1->unk_190[3], param0, param7, 0, param8, 3, 4);

    sub_0200A3DC(param2->unk_00[0]);
    sub_02009D4C(param2->unk_00[0]);
    sub_0200A640(param2->unk_00[1]);
    sub_020093B4(&param2->unk_10, param8, param8, param8, param8, 0xffffffff, 0xffffffff, 0, 0, param1->unk_190[0], param1->unk_190[1], param1->unk_190[2], param1->unk_190[3], NULL, NULL);
}

void ov5_021DE5A4 (UnkStruct_ov5_021DE47C * param0, UnkStruct_ov5_021DE5A4 * param1)
{
    int v0;

    sub_0200A4E4(param1->unk_00[0]);
    sub_0200A6DC(param1->unk_00[1]);

    for (v0 = 0; v0 < 4; v0++) {
        sub_02009D68(param0->unk_190[v0], param1->unk_00[v0]);
    }
}

void ov5_021DE5D0 (UnkStruct_02022550 * param0, u32 param1, u32 param2, u8 param3, u16 param4)
{
    UnkStruct_ov5_021DE5D0 v0;
    NNSG2dPaletteData * v1;
    void * v2;
    u16 * v3;

    sub_02076AAC(param2, 2, &v0);
    v3 = AllocFromHeap(param1, 32);
    v2 = sub_02006F88(v0.unk_00, v0.unk_08, &v1, param1);
    sub_0200393C(v1->pRawData, v3, 16, param3, param4);

    ov5_021DE67C(param0, v3, 32);

    FreeToHeap(v3);
    FreeToHeap(v2);
}

UnkStruct_02022550 * ov5_021DE62C (UnkStruct_ov5_021DE47C * param0, UnkStruct_ov5_021DE5A4 * param1, fx32 param2, fx32 param3, fx32 param4, int param5)
{
    UnkStruct_ov83_0223D9A8 v0;
    UnkStruct_02022550 * v1;

    v0.unk_00 = param0->unk_00;
    v0.unk_04 = &param1->unk_10;
    v0.unk_08.x = param2;
    v0.unk_08.y = param3;
    v0.unk_08.z = param4;
    v0.unk_14 = param5;
    v0.unk_18 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.unk_1C = 4;

    v1 = sub_02021B90(&v0);
    GF_ASSERT(v1);
    return v1;
}

VecFx32 ov5_021DE660 (fx32 param0, fx32 param1, fx32 param2)
{
    VecFx32 v0;

    v0.x = param0;
    v0.y = param1;
    v0.z = param2;

    return v0;
}

static void ov5_021DE67C (UnkStruct_02022550 * param0, void * param1, u32 param2)
{
    NNSG2dImagePaletteProxy * v0;

    v0 = sub_02021F9C(param0);

    DC_FlushRange(param1, param2);
    GX_LoadOBJPltt(param1, NNS_G2dGetImagePaletteLocation(v0, NNS_G2D_VRAM_TYPE_2DMAIN), param2);
}

UnkStruct_ov5_021DE6BC * ov5_021DE6A4 (u32 param0)
{
    UnkStruct_ov5_021DE6BC * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DE6BC));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE6BC));

    return v0;
}

void ov5_021DE6BC (UnkStruct_ov5_021DE6BC * param0)
{
    FreeToHeap(param0);
}

void ov5_021DE6C4 (UnkStruct_ov5_021DE6BC * param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_0205AA50 * param6, u32 param7, u32 param8, u8 param9)
{
    GF_ASSERT(param0->unk_2E == 0);

    ov5_021DDD80(&param0->unk_00, param1, param2, param5);
    ov5_021DDD80(&param0->unk_14, param3, param4, param5);

    param0->unk_28 = param6;
    param0->unk_2C = param7;
    param0->unk_2D = param8;
    param0->unk_2F = param9;
    param0->unk_2E = 1;
}

BOOL ov5_021DE71C (UnkStruct_ov5_021DE6BC * param0)
{
    BOOL v0;
    s16 v1, v2, v3, v4;

    if (param0->unk_2E == 0) {
        return 1;
    }

    v0 = ov5_021DDD90(&param0->unk_00);
    ov5_021DDD90(&param0->unk_14);

    v3 = param0->unk_00.unk_00 - (param0->unk_2C / 2);
    v1 = param0->unk_14.unk_00 - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, param0->unk_2F);

    return v0;
}

UnkStruct_ov5_021DE79C * ov5_021DE784 (u32 param0)
{
    UnkStruct_ov5_021DE79C * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DE79C));

    memset(v0, 0, sizeof(UnkStruct_ov5_021DE79C));
    return v0;
}

void ov5_021DE79C (UnkStruct_ov5_021DE79C * param0)
{
    FreeToHeap(param0);
}

void ov5_021DE7A4 (UnkStruct_ov5_021DE79C * param0, int param1, int param2, int param3, int param4, int param5, UnkStruct_0205AA50 * param6, u32 param7, u32 param8, u8 param9)
{
    GF_ASSERT(param0->unk_2E == 0);

    ov5_021DDD80(&param0->unk_00, param1, param2, param5);
    ov5_021DDD80(&param0->unk_14, param3, param4, param5);

    param0->unk_28 = param6;
    param0->unk_2C = param7;
    param0->unk_2D = param8;
    param0->unk_2F = param9;
    param0->unk_2E = 1;
}

BOOL ov5_021DE7FC (UnkStruct_ov5_021DE79C * param0)
{
    BOOL v0;
    s16 v1, v2, v3, v4;

    if (param0->unk_2E == 0) {
        return 1;
    }

    v3 = param0->unk_00.unk_00 - (param0->unk_2C / 2);
    v1 = param0->unk_14.unk_00 - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, 0);
    v0 = ov5_021DDD90(&param0->unk_00);
    ov5_021DDD90(&param0->unk_14);

    v3 = param0->unk_00.unk_00 - (param0->unk_2C / 2);
    v1 = param0->unk_14.unk_00 - (param0->unk_2D / 2);
    v4 = v3 + param0->unk_2C;
    v2 = v1 + param0->unk_2D;

    ov5_021DE89C(param0->unk_28, v1, v2, v3, v4, param0->unk_2F);

    return v0;
}

static void ov5_021DE89C (UnkStruct_0205AA50 * param0, s32 param1, s32 param2, s32 param3, s32 param4, u8 param5)
{
    if ((param4 <= 0) || (param2 <= 0)) {
        return;
    }

    if ((param3 == param4) || (param1 == param2)) {
        return;
    }

    if (param3 < 0) {
        param3 = 0;
    }

    if (param4 > 256) {
        param4 = 256;
    }

    if (param1 < 0) {
        param1 = 0;
    }

    if (param2 > 256) {
        param2 = 256;
    }

    sub_0201AE78(param0, param5, param3, param1, param4 - param3, param2 - param1);
}

UnkStruct_ov5_021DE928 * ov5_021DE8F8 (u32 param0)
{
    UnkStruct_ov5_021DE928 * v0;
    int v1;

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021DE928));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DE928));

    for (v1 = 0; v1 < 48; v1++) {
        v0->unk_04[v1] = ov5_021DE784(param0);
    }

    return v0;
}

void ov5_021DE928 (UnkStruct_ov5_021DE928 * param0)
{
    int v0;

    for (v0 = 0; v0 < 48; v0++) {
        ov5_021DE79C(param0->unk_04[v0]);
    }

    FreeToHeap(param0);
}

void ov5_021DE948 (UnkStruct_ov5_021DE928 * param0, u8 param1, u8 param2, UnkStruct_0205AA50 * param3, u8 param4)
{
    param0->unk_00 = param3;
    param0->unk_C9 = param4;
    param0->unk_C6 = param1;
    param0->unk_C7 = param2;
    param0->unk_C4 = 0;
    param0->unk_C5 = 0;
    param0->unk_C8 = 0;
    param0->unk_CA = 1;
}

BOOL ov5_021DE988 (UnkStruct_ov5_021DE928 * param0)
{
    int v0, v1, v2;
    int v3;
    BOOL v4;

    if (param0->unk_CA == 0) {
        return 1;
    }

    if (param0->unk_C4 < 48) {
        param0->unk_C8--;

        if (param0->unk_C8 <= 0) {
            param0->unk_C8 = param0->unk_C7;

            v0 = Unk_ov5_021F9988[param0->unk_C4 % 8];
            v0 = (32 / 2) + (v0 * 32);
            v1 = -16 - ((param0->unk_C4 / 8) * 32);
            v2 = (192 + -16) - ((param0->unk_C4 / 8) * 32);

            ov5_021DE7A4(param0->unk_04[param0->unk_C4], v0, v0, v1, v2, param0->unk_C6, param0->unk_00, 32, 32, param0->unk_C9);
            param0->unk_C4++;
        }
    }

    for (v3 = param0->unk_C5; v3 < param0->unk_C4; v3++) {
        v4 = ov5_021DE7FC(param0->unk_04[v3]);

        if (v4 == 1) {
            param0->unk_C5++;
        }
    }

    if ((param0->unk_C5 >= 48) && (v4 == 1)) {
        param0->unk_CA = 0;
        return 1;
    }

    return 0;
}

UnkStruct_ov5_021DEA98 * ov5_021DEA80 (u32 param0)
{
    UnkStruct_ov5_021DEA98 * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DEA98));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DEA98));
    return v0;
}

void ov5_021DEA98 (UnkStruct_ov5_021DEA98 * param0)
{
    FreeToHeap(param0);
}

void ov5_021DEAA0 (UnkStruct_ov5_021DEA98 * param0, u8 param1, u16 param2, u16 param3, UnkStruct_0205AA50 * param4, u8 param5)
{
    param0->unk_00 = param4;
    param0->unk_19 = param5;
    param0->unk_18 = 1;

    ov5_021DDD80(&param0->unk_04, param2, param3, param1);
}

BOOL ov5_021DEAC8 (UnkStruct_ov5_021DEA98 * param0)
{
    BOOL v0;
    u16 v1;

    if (param0->unk_18 == 0) {
        return 1;
    }

    v1 = param0->unk_04.unk_00;
    v0 = ov5_021DDD90(&param0->unk_04);

    ov5_021DEB04(param0->unk_00, v1, param0->unk_04.unk_00, param0->unk_19);

    if (v0 == 1) {
        param0->unk_18 = 0;
        return 1;
    }

    return 0;
}

static inline fx32 inline_ov5_021DEB04 (u16 param0)
{
    return FX_Div(FX_SinIdx(param0), FX_CosIdx(param0));
}

static void ov5_021DEB04 (UnkStruct_0205AA50 * param0, u16 param1, u16 param2, u8 param3)
{
    int v0, v1, v2;
    int v3, v4;
    int v5;
    int v6;
    fx32 v7, v8;

    v7 = inline_ov5_021DEB04(param2);
    v8 = inline_ov5_021DEB04(param1);

    for (v5 = 0; v5 < 96; v5++) {
        v6 = 95 - v5;
        v0 = FX_Mul(v7, v6 * FX32_ONE) >> FX32_SHIFT;
        v1 = FX_Mul(v8, v6 * FX32_ONE) >> FX32_SHIFT;
        v3 = 128 + v0;
        v4 = 128 + v1;
        v0 = 128 - v0;
        v1 = 128 - v1;

        if (v1 > v0) {
            v2 = v1;
            v1 = v0;
            v0 = v2;
        }

        if (v4 > v3) {
            v2 = v4;
            v4 = v3;
            v3 = v2;
        }

        ov5_021DE89C(param0, v5, v5 + 1, v1, v0 + 1, param3);
        ov5_021DE89C(param0, 191 - v5, 192 - v5, v4, v3 + 1, param3);
    }
}

UnkStruct_ov5_021DEC18 * ov5_021DEBEC (u32 param0)
{
    UnkStruct_ov5_021DEC18 * v0;
    int v1;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_ov5_021DEC18));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DEC18));

    for (v1 = 0; v1 < 8; v1++) {
        v0->unk_00[v1] = ov5_021DEA80(param0);
    }

    return v0;
}

void ov5_021DEC18 (UnkStruct_ov5_021DEC18 * param0)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        ov5_021DEA98(param0->unk_00[v0]);
    }

    FreeToHeap(param0);
}

void ov5_021DEC38 (UnkStruct_ov5_021DEC18 * param0, u8 param1, UnkStruct_0205AA50 * param2, u8 param3)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        ov5_021DEAA0(param0->unk_00[v0], param1, ((Unk_ov5_021F9A2C[v0][0] * 0xffff) / 360), ((Unk_ov5_021F9A2C[v0][1] * 0xffff) / 360), param2, param3);
    }

    param0->unk_20 = 1;
    ov5_021DE89C(param2, 93, 99, 0, 256, param3);
}

BOOL ov5_021DECB8 (UnkStruct_ov5_021DEC18 * param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_20 == 0) {
        return 1;
    }

    for (v0 = 0; v0 < 8; v0++) {
        v1 = ov5_021DEAC8(param0->unk_00[v0]);
    }

    if (v1 == 1) {
        param0->unk_20 = 0;
        return 1;
    }

    return 0;
}

UnkStruct_ov5_021DED04 * ov5_021DECEC (void)
{
    UnkStruct_ov5_021DED04 * v0;

    v0 = AllocFromHeap(4, sizeof(UnkStruct_ov5_021DED04));
    memset(v0, 0, sizeof(UnkStruct_ov5_021DED04));

    return v0;
}

void ov5_021DED04 (UnkStruct_ov5_021DED04 * param0)
{
    if (param0->unk_E0 != NULL) {
        ov5_021DEE84(param0);
    }

    FreeToHeap(param0);
}

void ov5_021DED20 (UnkStruct_ov5_021DDC28 * param0, UnkStruct_ov5_021DED04 * param1, u32 param2, u32 param3, u32 param4, u32 param5, u32 param6)
{
    int v0;
    int v1;
    int v2;

    GF_ASSERT(param1->unk_E0 == NULL);

    param0->unk_18 = 0;
    param1->unk_D8 = param0->unk_10->unk_04->unk_1C;
    param1->unk_14 = 0;
    param1->unk_E4 = &param0->unk_18;

    ov5_021DDD80(&param1->unk_00, 255, 0, param2);

    for (v0 = 0; v0 < 192; v0++) {
        v1 = v0 % param3;
        v2 = v1 * param4;
        v2 = v2 / param3;

        if (((v0 / param3) % 2) == 0) {
            param1->unk_18[v0] = v2;
        } else {
            param1->unk_18[v0] = param4 - v2;
        }
    }

    G2_SetWnd0InsidePlane(param5, 1);
    G2_SetWndOutsidePlane(param6, 0);
    G2_SetWnd0Position(0, 0, 0, 192);
    GX_SetVisibleWnd(GX_WNDMASK_W0);

    sub_0200DA3C(ov5_021DEDE8, param1, 1024);
}

static void ov5_021DEDE8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DED04 * v0 = param1;

    v0->unk_DC = ov5_021EF418(v0->unk_D8, ov5_021DEE50, v0);
    v0->unk_E0 = sub_0200DA3C(ov5_021DEE24, v0, 1024);

    sub_0200DA58(param0);
}

static void ov5_021DEE24 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_021DED04 * v0 = param1;
    BOOL v1;

    switch (v0->unk_14) {
    case 0:
        v1 = ov5_021DDD90(&v0->unk_00);

        if (v1 == 1) {
            v0->unk_14++;
        }
        break;
    case 1:
        ov5_021DEE84(v0);
        break;
    }
}

static void ov5_021DEE50 (UnkStruct_ov5_021EF43C * param0, void * param1)
{
    UnkStruct_ov5_021DED04 * v0 = param1;
    int v1;
    int v2;

    v2 = GX_GetVCount();

    if (v2 < 192) {
        v1 = -v0->unk_18[v2] + v0->unk_00.unk_00;

        if (v1 < 0) {
            v1 = 0;
        }

        G2_SetWnd0Position(v1, 0, 255, 192);
    }
}

static void ov5_021DEE84 (UnkStruct_ov5_021DED04 * param0)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);

    *(param0->unk_E4) = 1;
    ov5_021EF43C(param0->unk_DC);
    param0->unk_DC = NULL;
    sub_0200DA58(param0->unk_E0);
    param0->unk_E0 = NULL;
}

u32 ov5_021DEEC8 (const UnkStruct_ov6_02240D5C * param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_02073C74 * v3;
    UnkStruct_02073C74 * v4;
    int v5, v6;

    if (param0->unk_00 & 0x1) {
        v2 = 1;
    } else if ((param0->unk_00 & (0x100 | 0x20 | 0x200 | 0x400)) || (param0->unk_00 == 0x0)) {
        v2 = 0;
    } else {
        GF_ASSERT(0);
        v2 = 0;
    }

    v3 = sub_02054A40(param0->unk_04[0]);
    v4 = sub_02054A40(param0->unk_04[1]);
    v5 = sub_02074470(v3, 161, NULL);
    v6 = sub_02074470(v4, 161, NULL);
    v0 = v6 - v5;

    switch (param0->unk_12C) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 8:
    case 10:
    case 11:
    case 9:
    case 24:
        v1 = 0 * 2;
        break;
    case 7:
        v1 = 1 * 2;
        break;
    case 5:
        v1 = 2 * 2;
        break;
    }

    if (v0 > 0) {
        v1++;
    }

    return (v2 * 6) + v1;
}

static void ov5_021DEF74 (UnkStruct_0201CD38 * param0, void * param1)
{
    int * v0 = param1;

    GX_SetMasterBrightness(*v0);
    sub_0200DA58(param0);
}

void ov5_021DEF8C (int * param0)
{
    sub_0200DA3C(ov5_021DEF74, param0, 1024);
}

void ov5_021DEFA0 (UnkStruct_0203CDB0 * param0)
{
    GF_ASSERT(Unk_ov5_02202120 == NULL);

    Unk_ov5_02202120 = AllocFromHeap(4, sizeof(UnkStruct_ov5_02202120));
    memset(Unk_ov5_02202120, 0, sizeof(UnkStruct_ov5_02202120));

    Unk_ov5_02202120->unk_00 = 0;
    Unk_ov5_02202120->unk_02 = 0;
    Unk_ov5_02202120->unk_04 = param0;

    GX_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GX_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GX_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

    GX_ResetBankForBG();
    MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
    GX_SetCapture(GX_CAPTURE_SIZE_256x192, GX_CAPTURE_MODE_AB, GX_CAPTURE_SRCA_2D3D, GX_CAPTURE_SRCB_VRAM_0x00000, GX_CAPTURE_DEST_VRAM_C_0x00000, 4, 12);

    sub_0200DA3C(ov5_021DF258, Unk_ov5_02202120, 1024);
    sub_0200D9E8(ov5_021DF28C, Unk_ov5_02202120, 1024);
}

void ov5_021DF038 (void)
{
    GF_ASSERT(Unk_ov5_02202120);
    Unk_ov5_02202120->unk_03 = 1;
}

BOOL ov5_021DF054 (void)
{
    GF_ASSERT(Unk_ov5_02202120);
    return Unk_ov5_02202120->unk_02;
}

void ov5_021DF070 (void)
{
    if (Unk_ov5_02202120 == NULL) {
        return;
    }

    sub_0201469C();
}

void ov5_021DF084 (void)
{
    GF_ASSERT(Unk_ov5_02202120);

    sub_020141E4();

    ov5_021DF3D4(Unk_ov5_02202120->unk_04);
    ov5_021D16F4(Unk_ov5_02202120->unk_04, 1);
    ov5_021D1718(Unk_ov5_02202120->unk_04, 1);

    FreeToHeap(Unk_ov5_02202120);
    Unk_ov5_02202120 = NULL;
}

void ov5_021DF0CC (NARC * param0, u32 param1)
{
    void * v0;
    UnkStruct_020203AC * v1;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(Unk_ov5_02202120->unk_08 == NULL);

    Unk_ov5_02202120->unk_0C = AllocFromHeap(4, 0x4800);
    Unk_ov5_02202120->unk_08 = sub_02014014(ov5_021DF3E8, ov5_021DF414, Unk_ov5_02202120->unk_0C, 0x4800, 1, 4);
    GF_ASSERT(Unk_ov5_02202120->unk_08);

    sub_02014788(Unk_ov5_02202120->unk_08, 1);

    v1 = sub_02014784(Unk_ov5_02202120->unk_08);
    sub_020206BC(FX32_ONE, FX32_ONE * 900, v1);

    v0 = sub_0200723C(param0, param1, 0, 4, 0);
    sub_020144CC(Unk_ov5_02202120->unk_08, v0, 0 | 0, 0);
}

void ov5_021DF17C (u32 param0)
{
    int v0;
    VecFx32 v1 = {0, 0, 0};

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(Unk_ov5_02202120->unk_08);

    for (v0 = 0; v0 < param0; v0++) {
        sub_020146E4(Unk_ov5_02202120->unk_08, v0, &v1);
    }
}

BOOL ov5_021DF1CC (void)
{
    GF_ASSERT(Unk_ov5_02202120);

    if (Unk_ov5_02202120->unk_08 == NULL) {
        return 1;
    }

    sub_020146C0();

    if (sub_02014710(Unk_ov5_02202120->unk_08) == 0) {
        return 1;
    }

    return 0;
}

BOOL ov5_021DF208 (void)
{
    if (sub_02014710(Unk_ov5_02202120->unk_08) == 0) {
        return 1;
    }

    return 0;
}

void ov5_021DF224 (void)
{
    GF_ASSERT(Unk_ov5_02202120);

    sub_0201411C(Unk_ov5_02202120->unk_08);
    FreeToHeap(Unk_ov5_02202120->unk_0C);

    Unk_ov5_02202120->unk_08 = NULL;
    Unk_ov5_02202120->unk_0C = NULL;
}

static void ov5_021DF258 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_02202120 * v0 = param1;

    switch (v0->unk_00) {
    case 0:
        v0->unk_00++;
        break;
    case 1:
        if (v0->unk_03 == 1) {
            ov5_021DF30C(v0->unk_04);
            sub_0200DA58(param0);
            v0->unk_00++;
        }
        break;
    }
}

static void ov5_021DF28C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov5_02202120 * v0 = param1;

    switch (v0->unk_00) {
    case 2:

        sub_02014000();

        {
            VecFx32 v1 = {0};
            VecFx32 v2 = {FX32_ONE, FX32_ONE, FX32_ONE};
            MtxFx33 v3;

            MTX_Identity33(&v3);

            NNS_G3dGlbSetBaseTrans(&v1);
            NNS_G3dGlbSetBaseScale(&v2);
            NNS_G3dGlbSetBaseRot(&v3);
        }

        ov5_021D16F4(v0->unk_04, 0);
        ov5_021D1718(v0->unk_04, 0);

        sub_02019060(0, 0);

        v0->unk_02 = 1;
        sub_0200DA58(param0);
        break;
    default:
        break;
    }
}

static void ov5_021DF30C (UnkStruct_0203CDB0 * param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_BC,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_32_H,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_16_F,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_A,
            GX_VRAM_TEXPLTT_0123_E
        };

        GX_SetBanks(&v0);
    }

    GX_EngineAToggleLayers(
        GX_PLANEMASK_BG0, 0);

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_3,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v1);
    }

    {
        ov5_021D143C(param0->unk_08);

        {
            G2_SetBG3ControlDCBmp(GX_BG_SCRSIZE_DCBMP_256x256, GX_BG_AREAOVER_XLU, GX_BG_BMPSCRBASE_0x20000);

            sub_02019060(3, 3);
            GX_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);

            {
                MtxFx22 v2;

                MTX_Identity22(&v2);
                G2_SetBG3Affine(&v2, 0, 0, 0, 0);
            }
        }

        {
            UnkStruct_ov97_0222DB78 v3 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_23,
                0,
                0,
                0,
                0
            };

            sub_020183C4(param0->unk_08, 2, &v3, 0);
            sub_02019690(2, 32, 0, 4);
            sub_02019EBC(param0->unk_08, 2);
        }
    }

    GX_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov5_021DF3D4 (UnkStruct_0203CDB0 * param0)
{
    sub_02019044(param0->unk_08, 2);
    ov5_021D1434(param0->unk_08);
}

static u32 ov5_021DF3E8 (u32 param0, BOOL param1)
{
    u32 v0;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(param1 == 0);

    v0 = Unk_ov5_02202120->unk_10;
    Unk_ov5_02202120->unk_10 += param0;

    return v0;
}

static u32 ov5_021DF414 (u32 param0, BOOL param1)
{
    u32 v0;

    GF_ASSERT(Unk_ov5_02202120);
    GF_ASSERT(param1 == 0);

    v0 = Unk_ov5_02202120->unk_14;
    Unk_ov5_02202120->unk_14 += param0;

    return v0;
}
