#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_020203AC_decl.h"
#include "overlay113/struct_ov113_0225DBCC_decl.h"

#include "struct_defs/struct_020170F4.h"
#include "struct_defs/struct_02017294.h"
#include "overlay113/struct_ov113_0225EB20.h"
#include "overlay113/struct_ov113_0225EB20_sub1.h"
#include "overlay113/struct_ov113_0225EDCC.h"
#include "overlay113/struct_ov113_0225FD80.h"
#include "overlay113/struct_ov113_0225FE30.h"
#include "overlay113/struct_ov113_0225FEE0.h"
#include "overlay113/struct_ov113_0225FF8C.h"
#include "overlay113/struct_ov113_02260064.h"
#include "overlay113/struct_ov113_0226013C.h"
#include "overlay113/struct_ov113_02260218.h"
#include "overlay113/struct_ov113_022602E4.h"
#include "overlay113/struct_ov113_02260394.h"
#include "overlay113/struct_ov113_0226046C.h"
#include "overlay113/struct_ov113_02260544.h"
#include "overlay113/struct_ov113_02260818.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_020170BC.h"
#include "unk_02017E74.h"
#include "unk_0201C970.h"
#include "unk_0201D15C.h"
#include "unk_02020020.h"
#include "unk_02073C2C.h"
#include "overlay113/ov113_0225E368.h"
#include "overlay113/ov113_02260620.h"

__attribute__((aligned(4))) static const s16 Unk_ov113_02260BCC[] = {
	0xFF,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA,
	0xA
};

typedef int (* UnkFuncPtr_ov113_02260CAC)(UnkStruct_ov113_0225EB20 *, UnkStruct_ov113_0225E6B8 *);
typedef void (* UnkFuncPtr_ov113_02260CAC_1)(UnkStruct_ov113_0225EB20 *, UnkStruct_ov113_0225E6B8 *);
typedef BOOL (* UnkFuncPtr_ov113_02260CAC_2)(UnkStruct_ov113_0225EB20 *, UnkStruct_ov113_0225E6B8 *, UnkStruct_ov113_0225E6B8 *);
typedef BOOL (* UnkFuncPtr_ov113_02260C0C)(UnkStruct_ov113_0225EB20 *, UnkStruct_ov113_0225EB20_sub1 *, UnkStruct_020203AC *);

typedef struct {
    UnkFuncPtr_ov113_02260CAC unk_00;
    UnkFuncPtr_ov113_02260CAC_1 unk_04;
    UnkFuncPtr_ov113_02260CAC_2 unk_08;
} UnkStruct_ov113_02260CAC;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
} UnkStruct_ov113_0225EDA4;

typedef struct {
    s32 unk_00;
    UnkStruct_ov113_0225EDA4 unk_04;
} UnkStruct_ov113_0225EF0C;

typedef struct {
    int unk_00;
    fx32 unk_04;
    u8 unk_08;
    u8 unk_09;
    UnkStruct_ov113_0225EDA4 unk_0C;
} UnkStruct_ov113_0225EF78;

typedef struct {
    UnkStruct_02017294 unk_00[3];
    u16 unk_168;
    u8 unk_16A;
    UnkStruct_ov113_0225EDA4 unk_16C[4];
} UnkStruct_ov113_0225F060;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov113_0225EDA4 unk_0C;
} UnkStruct_ov113_0225F1E4;

typedef struct {
    int unk_00;
    fx32 unk_04;
    int unk_08;
    fx32 unk_0C;
    UnkStruct_ov113_0225EDA4 unk_10;
} UnkStruct_ov113_0225F368;

typedef struct {
    UnkStruct_02017294 unk_00[3];
    u16 unk_168;
    u8 unk_16A;
    u8 unk_16B;
    u8 unk_16C;
    u8 unk_16D;
    UnkStruct_ov113_0225EDA4 unk_170;
} UnkStruct_ov113_0225F51C;

typedef struct {
    int unk_00;
    fx32 unk_04;
    fx32 unk_08;
    UnkStruct_ov113_0225EDA4 unk_0C;
} UnkStruct_ov113_0225F728;

typedef struct {
    fx32 unk_00;
    u16 unk_04;
    u8 unk_06;
    UnkStruct_ov113_0225EDA4 unk_08;
} UnkStruct_ov113_0225F818;

typedef struct {
    UnkStruct_02017294 unk_00[2];
    fx32 unk_F0;
    u16 unk_F4;
    u8 unk_F6;
    u8 unk_F7;
    UnkStruct_ov113_0225EDA4 unk_F8[3];
} UnkStruct_ov113_0225F890;

typedef struct {
    UnkStruct_02017294 unk_00[2];
    fx32 unk_F0;
    u16 unk_F4;
    u8 unk_F6;
    u8 unk_F7;
    UnkStruct_ov113_0225EDA4 unk_F8[3];
} UnkStruct_ov113_0225FAB0;

typedef struct {
    fx32 unk_00;
    u16 unk_04;
    u8 unk_06;
    UnkStruct_ov113_0225EDA4 unk_08;
} UnkStruct_ov113_0225FCD0;

typedef union {
    UnkStruct_ov113_0225EF0C val1;
    UnkStruct_ov113_0225EF78 val2;
    UnkStruct_ov113_0225F060 val3;
    UnkStruct_ov113_0225F1E4 val4;
    UnkStruct_ov113_0225F368 val5;
    UnkStruct_ov113_0225F51C val6;
    UnkStruct_ov113_0225F728 val7;
    UnkStruct_ov113_0225F818 val8;
    UnkStruct_ov113_0225F890 val9;
    UnkStruct_ov113_0225FAB0 val10;
    UnkStruct_ov113_0225FCD0 val11;
} UnkStruct_ov113_0225E6B8_sub1;

typedef struct UnkStruct_ov113_0225E6B8_t {
    UnkStruct_ov113_02260818 unk_00;
    UnkStruct_020170F4 unk_0C;
    UnkStruct_02017294 unk_1C;
    UnkStruct_ov113_0225E6B8_sub1 unk_94;
    u32 unk_240_0 : 4;
    u32 unk_240_4 : 4;
    u32 unk_240_8 : 8;
    u32 unk_240_16 : 8;
    u32 unk_240_24 : 8;
} UnkStruct_ov113_0225E6B8;

static UnkStruct_ov113_0225E6B8 * ov113_0225E6B8(UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225EB20 * param1, const UnkStruct_ov113_02260818 * param2, NARC * param3, NARC * param4, BOOL param5);
static void ov113_0225EB0C(UnkStruct_ov113_0225E6B8 * param0);
static void ov113_0225EB20(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, int param2);
static void ov113_0225EB64(UnkStruct_ov113_0225DBCC * param0, int param1, int param2, fx32 * param3, fx32 * param4);
static BOOL ov113_0225E774(UnkStruct_ov113_0225EB20 * param0, UnkStruct_020170F4 * param1, NARC * param2, NARC * param3, const UnkStruct_ov113_02260818 * param4, BOOL param5);
static void ov113_0225E920(NNSG3dResTex * param0, NARC * param1, NARC * param2, const UnkStruct_ov113_02260818 * param3, BOOL param4);
static void ov113_0225EA60(NNSG3dResTex * param0, int param1);
static BOOL ov113_0225E8B0(NNSG3dResTex * param0);
static BOOL ov113_0225E854(UnkStruct_ov113_0225EB20 * param0, NNSG3dResTex * param1);
static void ov113_0225E884(UnkStruct_ov113_0225EB20 * param0, NNSG3dResTex * param1);
static BOOL ov113_0225EEBC(UnkStruct_ov113_0225E6B8 * param0, int param1);
static u8 ov113_0225EEF8(const UnkStruct_ov113_02260818 * param0);
static int ov113_0225EBFC(UnkStruct_ov113_0225EB20 * param0);
static void ov113_0225EC60(UnkStruct_ov113_0225EB20 * param0, int param1);
static void ov113_0225ECA0(UnkStruct_02017294 * param0, const UnkStruct_ov113_02260818 * param1, UnkStruct_ov113_0225EDA4 * param2, int param3);
static BOOL ov113_0225EDA4(const UnkStruct_ov113_0225EDA4 * param0, const UnkStruct_ov113_0225EDA4 * param1);
static void ov113_0225EDCC(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225EE0C(UnkStruct_ov113_0225EB20 * param0, int param1, int param2);
static void ov113_0225EE78(UnkStruct_ov113_0225EB20 * param0, int param1);
static void ov113_0225EE98(UnkStruct_ov113_0225EB20 * param0);
static BOOL ov113_0225FD80(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225FD80 * param1, int param2, int param3);
static int ov113_0225EF0C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225EF78(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F060(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F1E4(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F368(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F51C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F728(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F818(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225F890(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225FAB0(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static int ov113_0225FCD0(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static void ov113_0225EFFC(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static void ov113_0225F194(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static void ov113_0225F680(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static void ov113_0225FA24(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static void ov113_0225FC44(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1);
static BOOL ov113_0225EF74(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F044(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F1B8(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F34C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F500(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F70C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F7FC(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225F874(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225FA84(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225FCA4(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225FD64(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2);
static BOOL ov113_0225FE30(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_0225FEE0(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_0225FF8C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_02260064(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_0226013C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_02260218(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_022602E4(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_02260394(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_0226046C(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);
static BOOL ov113_02260544(UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2);

static const struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
} Unk_ov113_02260BBC = {
    -FX32_ONE * 16 * (5 + 0),
    FX32_ONE * 16 * (5 + 0),
    FX32_ONE * 16 * (3 + 0),
    -FX32_ONE * 16 * (3 + 0)
};

static const UnkStruct_ov113_02260CAC Unk_ov113_02260CAC[] = {
    {ov113_0225EF0C, NULL, ov113_0225EF74},
    {ov113_0225EF78, ov113_0225EFFC, ov113_0225F044},
    {ov113_0225F060, ov113_0225F194, ov113_0225F1B8},
    {ov113_0225F1E4, NULL, ov113_0225F34C},
    {ov113_0225F368, NULL, ov113_0225F500},
    {ov113_0225F51C, ov113_0225F680, ov113_0225F70C},
    {ov113_0225F728, NULL, ov113_0225F7FC},
    {ov113_0225F818, NULL, ov113_0225F874},
    {ov113_0225F890, ov113_0225FA24, ov113_0225FA84},
    {ov113_0225FAB0, ov113_0225FC44, ov113_0225FCA4},
    {ov113_0225FCD0, NULL, ov113_0225FD64}
};

__attribute__((aligned(4))) static const u8 Unk_ov113_02260D30[] = {
    0x5,
    0x1,
    0x5,
    0x6,
    0x6,
    0x4,
    0x3,
    0x9,
    0x7,
    0x8,
    0x1,
    0x5,
    0x3,
    0x8,
    0x2,
    0xA,
    0x4,
    0x3,
    0x9,
    0x7,
    0xA,
    0x4,
    0x6,
    0x1,
    0x2
};

static const UnkStruct_ov113_0225EDA4 Unk_ov113_02260C38[] = {
    {
        -(((FX32_ONE * 16 * 1) / 2) / 3),
        ((FX32_ONE * 16 * 1) / 2) / 3,
        ((FX32_ONE * 16 * 1) / 2) / 3,
        -(((FX32_ONE * 16 * 1) / 2) / 3)
    },
    {
        -(((FX32_ONE * 16 * 1) / 2) / 2),
        ((FX32_ONE * 16 * 1) / 2) / 2,
        ((FX32_ONE * 16 * 1) / 2) / 2,
        -(((FX32_ONE * 16 * 1) / 2) / 2)
    },
    {
        -(((FX32_ONE * 16 * 1) / 2) / 3 * 2),
        ((FX32_ONE * 16 * 1) / 2) / 3 * 2,
        ((FX32_ONE * 16 * 1) / 2) / 3 * 2,
        -(((FX32_ONE * 16 * 1) / 2) / 3 * 2)
    }
};

static const UnkFuncPtr_ov113_02260C0C Unk_ov113_02260C0C[] = {
    NULL,
    ov113_0225FE30,
    ov113_0225FEE0,
    ov113_0225FF8C,
    ov113_02260064,
    ov113_0226013C,
    ov113_02260218,
    ov113_022602E4,
    ov113_02260394,
    ov113_0226046C,
    ov113_02260544
};

static const s32 Unk_ov113_02260C68[] = {
    0xFFFFFFFFFFFC5E04,
    0xFFFFFFFFFFFCCE04,
    0xFFFFFFFFFFFD3E04,
    0xFFFFFFFFFFFDB604,
    0xFFFFFFFFFFFE2604,
    0xFFFFFFFFFFFE9E04,
    0xFFFFFFFFFFFF0E04,
    0xFFFFFFFFFFFF8604,
    0xFFFFFFFFFFFFFC04,
    0x7004,
    0xE004,
    0x15804,
    0x1C804,
    0x24004,
    0x2B004,
    0x32804,
    0x39804
};

static const s32 Unk_ov113_02260BE0[] = {
    0x23B0F,
    0x1CB0F,
    0x1550F,
    0xE10F,
    0x6D0F,
    0xFFFFFFFFFFFFF70F,
    0xFFFFFFFFFFFF830F,
    0xFFFFFFFFFFFF0F0F,
    0xFFFFFFFFFFFE9B0F,
    0xFFFFFFFFFFFE270F,
    0xFFFFFFFFFFFDB70F
};

void ov113_0225E368 (UnkStruct_ov113_0225EB20 * param0, BOOL param1)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_ov113_0225EB20));
}

void ov113_0225E378 (UnkStruct_ov113_0225EB20 * param0)
{
    int v0;

    for (v0 = 0; v0 < 128; v0++) {
        if (param0->unk_B4[v0] != NULL) {
            ov113_0225EB0C(param0->unk_B4[v0]);
        }
    }
}

BOOL ov113_0225E398 (UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225EB20 * param1, const UnkStruct_ov113_02260818 * param2, NARC * param3, NARC * param4, BOOL param5)
{
    int v0;

    if (param1->unk_73C != 0) {
        return 0;
    }

    for (v0 = 0; v0 < 128; v0++) {
        if (param1->unk_B4[v0] == NULL) {
            param1->unk_B4[v0] = ov113_0225E6B8(param0, param1, param2, param3, param4, param5);

            if (param1->unk_B4[v0] == NULL) {
                return 0;
            }

            return 1;
        }
    }

    return 0;
}

void ov113_0225E3F0 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_020203AC * param1, int param2, int param3)
{
    int v0;
    UnkStruct_ov113_0225E6B8 * v1;
    int v2;
    BOOL v3;

    if (param0->unk_73D != 0) {
        ov113_0225FD80(param0, &param0->unk_B0, param2, param3);
    }

    if (param0->unk_73C != 0) {
        if (Unk_ov113_02260C0C[param0->unk_73C](param0, &param0->unk_00, param1) == 1) {
            param0->unk_73C = 0;
        }
    }

    for (v0 = 0; v0 < 128; v0++) {
        v1 = param0->unk_B4[v0];

        if (v1 != NULL) {
            if ((v1->unk_240_8 == 0) && (v1->unk_240_16 != 0)) {
                v1->unk_240_8 = v1->unk_240_16;
            }

            v2 = Unk_ov113_02260CAC[v1->unk_240_8].unk_00(param0, v1);

            switch (v2) {
            case 1:
                ov113_0225EB20(param0, v1, v0);
                break;
            }
        }

        v1++;
    }
}

void ov113_0225E4A0 (UnkStruct_ov113_0225EB20 * param0)
{
    int v0;
    UnkStruct_ov113_0225E6B8 * v1;

    for (v0 = 0; v0 < 128; v0++) {
        v1 = param0->unk_B4[v0];

        if (v1 != NULL) {
            if (Unk_ov113_02260CAC[v1->unk_240_8].unk_04 != NULL) {
                Unk_ov113_02260CAC[v1->unk_240_8].unk_04(param0, v1);
            } else {
                sub_02017294(&v1->unk_1C);
            }
        }
    }
}

void ov113_0225E4E8 (UnkStruct_ov113_0225EB20 * param0)
{
    int v0, v1, v2, v3, v4;
    UnkStruct_ov113_0225E6B8 * v5;
    UnkStruct_ov113_0225E6B8 * v6;
    BOOL v7;
    int v8 = 0;

    v1 = 0;
    v2 = 0;

    for (v0 = 0; v0 < 128; v0++) {
        v5 = param0->unk_B4[v0];

        if (v5 != NULL) {
            if (v5->unk_240_8 != 0) {
                param0->unk_2B4[v1] = v5;
                v1++;
            } else {
                param0->unk_2B4[128 - 1 - v2] = v5;
                v2++;
            }
        }
    }

    for (v4 = 0; v4 < v2; v4++) {
        v6 = param0->unk_2B4[128 - 1 - v4];

        for (v3 = 0; v3 < v1; v3++) {
            v5 = param0->unk_2B4[v3];

            if (Unk_ov113_02260CAC[v5->unk_240_8].unk_08(param0, v5, v6) == 1) {
                v7 = ov113_0225EEBC(v6, v5->unk_240_8);

                if ((v7 == 1) && (v6->unk_240_24 == 0xff)) {
                    v6->unk_240_24 = v5->unk_240_24;

                    if (ov113_0225EE0C(param0, v5->unk_240_24, v5->unk_240_8) == 1) {
                        v8++;
                    }

                    break;
                }
            }
        }
    }

    if ((param0->unk_73D != 0) && (param0->unk_73E == 1)) {
        for (v0 = 0; v0 < 128; v0++) {
            v5 = param0->unk_B4[v0];

            if ((v5 != NULL) && (v5->unk_240_8 != param0->unk_73D) && (v5->unk_240_16 != param0->unk_73D)) {
                if (ov113_0225EEBC(v5, param0->unk_73D) == 0) {
                    ov113_0225EB20(param0, v5, v0);
                }
            }
        }

        ov113_0225EE98(param0);
    }
}

void ov113_0225E65C (UnkStruct_ov113_0225EB20 * param0, int param1)
{
    int v0;
    NNSG3dResTex ** v1;

    v1 = param0->unk_4B4;

    for (v0 = 0; v0 < 32; v0++) {
        if (*v1 != NULL) {
            DC_FlushRange(*v1, (*v1)->header.size);

            NNS_G3dTexLoad(*v1, 1);
            NNS_G3dPlttLoad(*v1, 1);

            *v1 = NULL;
        }

        v1++;
    }

    if (param0->unk_740 && (param1 != 3)) {
        sub_0200F44C(0, param0->unk_742);
        param0->unk_740 = 0;
    }
}

static UnkStruct_ov113_0225E6B8 * ov113_0225E6B8 (UnkStruct_ov113_0225DBCC * param0, UnkStruct_ov113_0225EB20 * param1, const UnkStruct_ov113_02260818 * param2, NARC * param3, NARC * param4, BOOL param5)
{
    UnkStruct_ov113_0225E6B8 * v0;
    fx32 v1, v2;
    BOOL v3;

    v0 = sub_02018144(118, sizeof(UnkStruct_ov113_0225E6B8));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov113_0225E6B8));

    v0->unk_240_24 = 0xff;
    v0->unk_00 = *param2;

    if (v0->unk_00.unk_02 > 493) {
        GF_ASSERT(0);
        v0->unk_00.unk_02 = 132;
    }

    v3 = ov113_0225E774(param1, &v0->unk_0C, param3, param4, &v0->unk_00, param5);

    if (v3 == 0) {
        return NULL;
    }

    sub_02017258(&v0->unk_1C, &v0->unk_0C);
    ov113_0225EB64(param0, param2->unk_09, param2->unk_0A, &v1, &v2);
    sub_02017350(&v0->unk_1C, v1, v2, (FX32_ONE * 16));
    sub_0201736C(&v0->unk_1C, (FX32_CONST(1.00f)), (FX32_CONST(1.00f)), (FX32_CONST(1.00f)));
    sub_02017348(&v0->unk_1C, 0);

    return v0;
}

static BOOL ov113_0225E774 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_020170F4 * param1, NARC * param2, NARC * param3, const UnkStruct_ov113_02260818 * param4, BOOL param5)
{
    param1->unk_00 = sub_0200723C(param2, 29, 0, 118, 0);

    {
        BOOL v0;

        GF_ASSERT(param1->unk_00);

        param1->unk_04 = NNS_G3dGetMdlSet(param1->unk_00);
        param1->unk_08 = NNS_G3dGetMdlByIdx(param1->unk_04, 0);
        param1->unk_0C = NNS_G3dGetTex(param1->unk_00);

        if (param1->unk_0C) {
            ov113_0225E920(param1->unk_0C, param2, param3, param4, param5);
            v0 = ov113_0225E8B0(param1->unk_0C);

            if ((v0 == 0) || (ov113_0225E854(param0, param1->unk_0C) == 0)) {
                NNSG3dTexKey v1;
                NNSG3dTexKey v2;
                NNSG3dPlttKey v3;

                if (v0 == 1) {
                    NNS_G3dTexReleaseTexKey(param1->unk_0C, &v1, &v2);
                    NNS_GfdFreeTexVram(v1);
                    NNS_GfdFreeTexVram(v2);
                    v3 = NNS_G3dPlttReleasePlttKey(param1->unk_0C);
                    NNS_GfdFreePlttVram(v3);
                }

                if (param1->unk_00) {
                    sub_020181C4(param1->unk_00);
                }

                memset(param1, 0, sizeof(UnkStruct_020170F4));
                return 0;
            }

            sub_0201CBB0(param1->unk_00, param1->unk_0C);
        }
    }

    return 1;
}

static BOOL ov113_0225E854 (UnkStruct_ov113_0225EB20 * param0, NNSG3dResTex * param1)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param0->unk_4B4[v0] == NULL) {
            param0->unk_4B4[v0] = param1;
            return 1;
        }
    }

    return 0;
}

static void ov113_0225E884 (UnkStruct_ov113_0225EB20 * param0, NNSG3dResTex * param1)
{
    int v0;

    for (v0 = 0; v0 < 32; v0++) {
        if (param0->unk_4B4[v0] == param1) {
            param0->unk_4B4[v0] = NULL;
            return;
        }
    }
}

static BOOL ov113_0225E8B0 (NNSG3dResTex * param0)
{
    u32 v0, v1;
    NNSG3dTexKey v2;
    NNSG3dPlttKey v3;

    param0->texInfo.vramKey = 0;

    v0 = NNS_G3dTexGetRequiredSize(param0);
    v1 = NNS_G3dPlttGetRequiredSize(param0);
    v2 = NNS_GfdAllocTexVram(v0, 0, 0);

    if (v2 == NNS_GFD_ALLOC_ERROR_TEXKEY) {
        return 0;
    }

    v3 = NNS_GfdAllocPlttVram(v1, param0->tex4x4Info.flag & NNS_G3D_RESPLTT_USEPLTT4, 0);

    if (v3 == NNS_GFD_ALLOC_ERROR_PLTTKEY) {
        NNS_GfdFreeTexVram(v2);
        return 0;
    }

    NNS_G3dTexSetTexKey(param0, v2, 0);
    NNS_G3dPlttSetPlttKey(param0, v3);

    return 1;
}

static void ov113_0225E920 (NNSG3dResTex * param0, NARC * param1, NARC * param2, const UnkStruct_ov113_02260818 * param3, BOOL param4)
{
    u16 * v0;
    u8 * v1, * v2;
    NNSG2dCharacterData * v3;
    int v4;

    v4 = ov113_02260788(param3->unk_02, param3->unk_08, param4);
    v1 = (u8 *)((u8 *)param0 + param0->texInfo.ofsTex);

    if (v4 == 1) {
        v2 = sub_0200723C(param2, 3 + param3->unk_02, 1, 118, 1);
        NNS_G2dGetUnpackedCharacterData(v2, &v3);
    } else {
        v2 = sub_0200723C(param1, 16, 0, 118, 1);
        NNS_G2dGetUnpackedCharacterData(v2, &v3);
    }

    MI_CpuClear16(v1, (16 * 16 / 4));

    {
        int v5, v6, v7, v8, v9, v10;
        u8 * v11, * v12;
        u16 * v13;

        v11 = v3->pRawData;
        v12 = v11;
        v13 = (u16 *)v1;

        for (v9 = 0; v9 < 4; v9++) {
            switch (v9) {
            case 0:
                if (v4 == 1) {
                    v12 = &v11[0x20 * 4];
                } else {
                    v12 = &v11[0x20 * 0];
                }

                v13 = (u16 *)v1;
                break;
            case 1:
                if (v4 == 1) {
                    v12 = &v11[0x20 * 5];
                } else {
                    v12 = &v11[0x20 * 1];
                }

                v13 = (u16 *)v1;
                v13++;
                break;
            case 2:
                if (v4 == 1) {
                    v12 = v11;
                } else {
                    v12 = &v11[0x20 * 2];
                }

                v13 = (u16 *)v1;
                v13 = &v13[2 * 8];
                break;
            case 3:
                if (v4 == 1) {
                    v12 = &v11[0x20 * 1];
                } else {
                    v12 = &v11[0x20 * 3];
                }

                v13 = (u16 *)v1;
                v13 = &v13[2 * 8 + 1];

                break;
            }

            v7 = 0;

            for (v6 = 0; v6 < 8; v6++) {
                v10 = 0;

                for (v8 = 0; v8 < 4; v8++) {
                    if (v12[v7] & 0xf) {
                        *v13 |= 1 << v10;
                    }

                    v10 += 2;

                    if (v12[v7] & 0xf0) {
                        *v13 |= 1 << v10;
                    }

                    v10 += 2;
                    v7++;
                }

                v13++;
                v13++;
            }
        }
    }

    v0 = (u16 *)((u8 *)param0 + param0->plttInfo.ofsPlttData);
    v0[1] = param3->unk_00;

    sub_020181C4(v2);
}

static void ov113_0225EA60 (NNSG3dResTex * param0, int param1)
{
    u32 * v0;
    u32 * v1;
    int v2, v3, v4, v5, v6;

    v0 = (u32 *)((u8 *)param0 + param0->texInfo.ofsTex);
    v1 = sub_02018144(118, (16 * 16 / 4));

    MI_CpuCopy16(v0, v1, (16 * 16 / 4));
    MI_CpuClear16(v0, (16 * 16 / 4));

    switch (param1) {
    case 3:
        v4 = 30;

        for (v3 = 0; v3 < 16; v3++) {
            v5 = 0;

            for (v2 = 0; v2 < 32; v2 += 2) {
                v6 = (v1[v3] >> v2) & 3;
                v0[v5] |= v6 << v4;
                v5++;
            }

            v4 -= 2;
        }
        break;
    case 4:
        v4 = 0;

        for (v3 = 0; v3 < 16; v3++) {
            v5 = 15;

            for (v2 = 0; v2 < 32; v2 += 2) {
                v6 = (v1[v3] >> v2) & 3;
                v0[v5] |= v6 << v4;
                v5--;
            }

            v4 += 2;
        }
        break;
    }

    sub_020181C4(v1);
}

static void ov113_0225EB0C (UnkStruct_ov113_0225E6B8 * param0)
{
    sub_02017110(&param0->unk_0C);
    sub_020181C4(param0);
}

static void ov113_0225EB20 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, int param2)
{
    if ((param1->unk_240_0 == 0) || (param1->unk_240_4 == 1)) {
        ov113_0225E884(param0, param1->unk_0C.unk_0C);
    }

    ov113_0225EE78(param0, param1->unk_240_24);
    ov113_0225EB0C(param1);

    param0->unk_B4[param2] = NULL;
}

static void ov113_0225EB64 (UnkStruct_ov113_0225DBCC * param0, int param1, int param2, fx32 * param3, fx32 * param4)
{
    int v0;

    v0 = param1 / 16;

    if (v0 >= NELEMS(Unk_ov113_02260C68)) {
        v0 = NELEMS(Unk_ov113_02260C68) - 1;
    }

    *param3 = Unk_ov113_02260C68[v0];

    if (v0 < NELEMS(Unk_ov113_02260C68) - 1) {
        *param3 += (Unk_ov113_02260C68[v0 + 1] - Unk_ov113_02260C68[v0]) / 16 * (param1 % 16);
    }

    v0 = param2 / 16;

    if (v0 >= NELEMS(Unk_ov113_02260BE0)) {
        v0 = NELEMS(Unk_ov113_02260BE0) - 1;
    }

    *param4 = Unk_ov113_02260BE0[v0];

    if (v0 < NELEMS(Unk_ov113_02260BE0) - 1) {
        *param4 += (Unk_ov113_02260BE0[v0 + 1] - Unk_ov113_02260BE0[v0]) / 16 * (param2 % 16);
    }
}

static int ov113_0225EBFC (UnkStruct_ov113_0225EB20 * param0)
{
    int v0, v1;

    for (v0 = 1; v0 < 32; v0++) {
        if ((param0->unk_534[0] & (1 << v0)) == 0) {
            param0->unk_534[0] |= 1 << v0;
            return v0;
        }
    }

    v1 = 0;

    for ( ; v0 < 63; v0++) {
        if ((param0->unk_534[1] & (1 << v1)) == 0) {
            param0->unk_534[1] |= 1 << v1;
            return v0;
        }

        v1++;
    }

    return 0xff;
}

static void ov113_0225EC60 (UnkStruct_ov113_0225EB20 * param0, int param1)
{
    if (param1 == 0xff) {
        return;
    }

    if (param1 < 32) {
        param0->unk_534[0] &= 0xffffffff ^ (1 << param1);
    } else {
        param0->unk_534[1] &= 0xffffffff ^ (1 << (param1 - 32));
    }
}

static void ov113_0225ECA0 (UnkStruct_02017294 * param0, const UnkStruct_ov113_02260818 * param1, UnkStruct_ov113_0225EDA4 * param2, int param3)
{
    fx32 v0, v1, v2;
    fx32 v3, v4, v5;
    int v6;
    fx64 v7, v8, v9, v10;

    v6 = ov113_022607B8(param1->unk_02, param1->unk_08);
    GF_ASSERT(v6 < NELEMS(Unk_ov113_02260C38));

    sub_02017358(param0, &v0, &v1, &v2);

    param2->unk_00 = v0 + Unk_ov113_02260C38[v6].unk_00;
    param2->unk_04 = v0 + Unk_ov113_02260C38[v6].unk_04;
    param2->unk_08 = v1 + Unk_ov113_02260C38[v6].unk_08;
    param2->unk_0C = v1 + Unk_ov113_02260C38[v6].unk_0C;

    if (param3 == 1) {
        sub_02017374(param0, &v3, &v4, &v5);

        v7 = ((fx64)v3) * 100 / FX32_ONE;
        v9 = (param2->unk_04 - param2->unk_00) * v7 / 100 - (param2->unk_04 - param2->unk_00);

        param2->unk_04 += v9 / 2;
        param2->unk_00 += -(v9 / 2);

        v8 = ((fx64)v4) * 100 / FX32_ONE;
        v10 = (param2->unk_08 - param2->unk_0C) * v8 / 100 - (param2->unk_08 - param2->unk_0C);

        param2->unk_08 += v10 / 2;
        param2->unk_0C += -(v10 / 2);
    }
}

static BOOL ov113_0225EDA4 (const UnkStruct_ov113_0225EDA4 * param0, const UnkStruct_ov113_0225EDA4 * param1)
{
    if ((param0->unk_00 <= param1->unk_04) && (param1->unk_00 <= param0->unk_04) && (param0->unk_08 >= param1->unk_0C) && (param1->unk_08 >= param0->unk_0C)) {
        return 1;
    } else {
        return 0;
    }
}

static void ov113_0225EDCC (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    int v0;
    UnkStruct_ov113_0225EDCC * v1;

    v1 = param0->unk_53C;

    for (v0 = 0; v0 < 128; v0++) {
        if (v1->unk_01 == 0) {
            param1->unk_240_24 = v0;
            v1->unk_00 = 0;
            v1->unk_01++;
            return;
        }

        v1++;
    }

    GF_ASSERT(0);
}

static int ov113_0225EE0C (UnkStruct_ov113_0225EB20 * param0, int param1, int param2)
{
    if (param1 == 0xff) {
        return 0;
    }

    param0->unk_53C[param1].unk_00++;
    param0->unk_53C[param1].unk_01++;

    if ((param0->unk_73C == 0) && (param0->unk_73D == 0) && (param0->unk_53C[param1].unk_00 >= Unk_ov113_02260BCC[param0->unk_73F])) {
        param0->unk_73D = param2;
        MI_CpuClear8(&param0->unk_B0, sizeof(UnkStruct_ov113_0225FD80));
        return 1;
    }

    return 0;
}

static void ov113_0225EE78 (UnkStruct_ov113_0225EB20 * param0, int param1)
{
    int v0;

    if (param1 == 0xff) {
        return;
    }

    v0 = param0->unk_53C[param1].unk_01;
    v0--;

    if (v0 < 0) {
        GF_ASSERT(0);
        v0 = 0;
    }

    param0->unk_53C[param1].unk_01 = v0;
}

static void ov113_0225EE98 (UnkStruct_ov113_0225EB20 * param0)
{
    MI_CpuClear8(&param0->unk_00, sizeof(UnkStruct_ov113_0225EB20_sub1));

    param0->unk_73C = param0->unk_73D;
    param0->unk_73D = 0;
    param0->unk_73E = 0;
}

static BOOL ov113_0225EEBC (UnkStruct_ov113_0225E6B8 * param0, int param1)
{
    if ((param0->unk_240_8 != 0) || (param0->unk_240_16 != 0) || (param0->unk_240_0 == 0)) {
        return 0;
    }

    param0->unk_240_16 = param1;
    MI_CpuClear8(&param0->unk_94, sizeof(UnkStruct_ov113_0225E6B8_sub1));
    return 1;
}

static u8 ov113_0225EEF8 (const UnkStruct_ov113_02260818 * param0)
{
    u8 v0;

    v0 = sub_02075BFC(param0->unk_04);
    return Unk_ov113_02260D30[v0];
}

static int ov113_0225EF0C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225EF0C * v0 = &param1->unk_94.val1;

    v0->unk_00++;

    if (v0->unk_00 == 2) {
        ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_04, 0);
        sub_02017348(&param1->unk_1C, 1);
        param1->unk_240_0 = 1;
    }

    if (v0->unk_00 > 40) {
        ov113_0225EDCC(param0, param1);
        ov113_0225EEBC(param1, ov113_0225EEF8(&param1->unk_00));
    }

    return 0;
}

static BOOL ov113_0225EF74 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    return 0;
}

static int ov113_0225EF78 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225EF78 * v0 = &param1->unk_94.val2;

    switch (v0->unk_08) {
    case 0:
        v0->unk_00 = 31 << 8;
        v0->unk_09 = ov113_0225EBFC(param0);
        v0->unk_04 = FX32_ONE;
        v0->unk_08++;
    case 1:
        v0->unk_04 += 0xc0;

        if (v0->unk_00 - 0xc0 < 0x100) {
            sub_02017348(&param1->unk_1C, 0);
            v0->unk_08++;
            break;
        }

        v0->unk_00 -= 0xc0;
        sub_0201736C(&param1->unk_1C, v0->unk_04, v0->unk_04, FX32_ONE);
        break;
    default:
        ov113_0225EC60(param0, v0->unk_09);
        return 1;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_0C, 1);
    return 0;
}

static void ov113_0225EFFC (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225EF78 * v0 = &param1->unk_94.val2;

    if (v0->unk_09 != 0xff) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, v0->unk_09, v0->unk_00 >> 8, 0);
        NNS_G3dMdlUseGlbPolygonID(param1->unk_0C.unk_08);
        NNS_G3dMdlUseGlbAlpha(param1->unk_0C.unk_08);
    }

    sub_02017294(&param1->unk_1C);
}

static BOOL ov113_0225F044 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225EF78 * v0 = &param1->unk_94.val2;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_0C, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F060 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F060 * v0 = &param1->unk_94.val3;
    int v1;
    fx32 v2, v3, v4;

    switch (v0->unk_16A) {
    case 0:
        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);

        for (v1 = 0; v1 < 3; v1++) {
            sub_02017258(&v0->unk_00[v1], &param1->unk_0C);
            sub_02017350(&v0->unk_00[v1], v2, v3, v4);
        }

        v0->unk_16A++;
    case 1:
        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);
        sub_02017350(&param1->unk_1C, v2 - 0x2000, v3 - 0x2000, v4);
        sub_02017358(&v0->unk_00[0], &v2, &v3, &v4);
        sub_02017350(&v0->unk_00[0], v2 + 0x2000, v3 - 0x2000, v4);
        sub_02017358(&v0->unk_00[1], &v2, &v3, &v4);
        sub_02017350(&v0->unk_00[1], v2 - 0x2000, v3 + 0x2000, v4);
        sub_02017358(&v0->unk_00[2], &v2, &v3, &v4);
        sub_02017350(&v0->unk_00[2], v2 + 0x2000, v3 + 0x2000, v4);

        v0->unk_168++;

        if (v0->unk_168 > 30) {
            return 1;
        }
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_16C[0], 0);

    for (v1 = 0; v1 < 3; v1++) {
        ov113_0225ECA0(&v0->unk_00[v1], &param1->unk_00, &v0->unk_16C[1 + v1], 0);
    }

    return 0;
}

static void ov113_0225F194 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F060 * v0 = &param1->unk_94.val3;
    int v1;

    for (v1 = 0; v1 < 3; v1++) {
        sub_02017294(&v0->unk_00[v1]);
    }

    sub_02017294(&param1->unk_1C);
}

static BOOL ov113_0225F1B8 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F060 * v0 = &param1->unk_94.val3;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;
    int v2;

    for (v2 = 0; v2 < 3 + 1; v2++) {
        if (ov113_0225EDA4(&v0->unk_16C[v2], &v1->unk_04) == 1) {
            return 1;
        }
    }

    return 0;
}

static int ov113_0225F1E4 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F1E4 * v0 = &param1->unk_94.val4;
    u16 v1, v2;
    fx32 v3, v4, v5;

    switch (v0->unk_00) {
    case 0:
        v1 = sub_02017394(&param1->unk_1C, 2);
        v1 -= 65536 / 4 / 6;

        if (v1 <= 65536 / 8 * 7) {
            ov113_0225EA60(param1->unk_0C.unk_0C, param1->unk_240_8);
            ov113_0225E854(param0, param1->unk_0C.unk_0C);
            param1->unk_240_4 = 1;
            v1 += 65536 / 4;
            v0->unk_00++;
        }

        sub_02017388(&param1->unk_1C, v1, 2);
        break;
    case 1:
        param1->unk_240_4 = 0;

        v1 = sub_02017394(&param1->unk_1C, 2);
        v1 -= 65536 / 4 / 6;

        if (v1 >= 65536 / 4 * 3) {
            v1 = 0;
            v0->unk_00++;
        }

        sub_02017388(&param1->unk_1C, v1, 2);
        break;
    case 2:
        v0->unk_04++;

        if (v0->unk_04 < 4) {
            break;
        }

        v0->unk_04 = 0;
        v0->unk_00++;
    case 3:
        sub_02017358(&param1->unk_1C, &v3, &v4, &v5);

        if ((v3 < Unk_ov113_02260BBC.unk_00) || (v3 > Unk_ov113_02260BBC.unk_04) || (v4 > Unk_ov113_02260BBC.unk_08) || (v4 < Unk_ov113_02260BBC.unk_0C)) {
            return 1;
        }

        if (v0->unk_08 < 5) {
            sub_02017350(&param1->unk_1C, v3 + 0x3000, v4 - 0x3000, v5);
        } else {
            sub_02017350(&param1->unk_1C, v3 + 0x3000, v4 + 0x3000, v5);
        }

        v0->unk_08++;

        if (v0->unk_08 >= 5 * 2) {
            v0->unk_08 = 0;
        }

        break;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_0C, 0);
    return 0;
}

static BOOL ov113_0225F34C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F1E4 * v0 = &param1->unk_94.val4;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_0C, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F368 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F368 * v0 = &param1->unk_94.val5;
    u16 v1;
    fx32 v2, v3, v4;
    fx32 v5;

    switch (v0->unk_00) {
    case 0:
        v1 = sub_02017394(&param1->unk_1C, 2);
        v1 += 65536 / 4 / 6;

        if (v1 >= 65536 / 4 / 2) {
            ov113_0225EA60(param1->unk_0C.unk_0C, param1->unk_240_8);
            v1 -= 65536 / 4;
            ov113_0225E854(param0, param1->unk_0C.unk_0C);
            param1->unk_240_4 = 1;
            v0->unk_00++;
        }

        sub_02017388(&param1->unk_1C, v1, 2);
        break;
    case 1:
        param1->unk_240_4 = 0;

        v1 = sub_02017394(&param1->unk_1C, 2);
        v1 += 65536 / 4 / 6;

        if ((v1 >= 0) && (v1 < 65536 / 4 * 1)) {
            v1 = 0;
            v0->unk_00++;
        }

        sub_02017388(&param1->unk_1C, v1, 2);
        break;
    case 2:
        v0->unk_08++;

        if (v0->unk_08 < 4) {
            break;
        }

        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);

        v0->unk_0C = v3;
        v0->unk_08 = 0;
        v0->unk_00++;
    case 3:
        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);

        if ((v2 < Unk_ov113_02260BBC.unk_00) || (v2 > Unk_ov113_02260BBC.unk_04) || (v3 > Unk_ov113_02260BBC.unk_08) || (v3 < Unk_ov113_02260BBC.unk_0C)) {
            return 1;
        }

        v0->unk_04 += 0x8000;

        if (v0->unk_04 >= (360 << FX32_SHIFT)) {
            v0->unk_04 -= 360 << FX32_SHIFT;
        }

        v5 = FX_Mul(sub_0201D2B8(v0->unk_04), 0x8000);
        sub_02017350(&param1->unk_1C, v2 - 0x1000, v0->unk_0C + v5, v4);
        break;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_10, 0);
    return 0;
}

static BOOL ov113_0225F500 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F368 * v0 = &param1->unk_94.val5;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_10, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F51C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F51C * v0 = &param1->unk_94.val6;
    fx32 v1, v2, v3;
    int v4;

    switch (v0->unk_16D) {
    case 0:
        v0->unk_16C = ov113_0225EBFC(param0);

        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        for (v4 = 0; v4 < 3; v4++) {
            sub_02017258(&v0->unk_00[v4], &param1->unk_0C);
            sub_02017350(&v0->unk_00[v4], v1, v2, v3);
            sub_02017348(&v0->unk_00[v4], 0);
        }

        v0->unk_16D++;
    case 1:
        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        if ((v1 < Unk_ov113_02260BBC.unk_00) || (v1 > Unk_ov113_02260BBC.unk_04) || (v2 > Unk_ov113_02260BBC.unk_08) || (v2 < Unk_ov113_02260BBC.unk_0C) || (v0->unk_16B == 1)) {
            for (v4 = 0; v4 < 3; v4++) {
                sub_02017348(&v0->unk_00[v4], 0);
            }

            sub_02017348(&param1->unk_1C, 0);
            v0->unk_16D++;
            break;
        }

        sub_02017350(&param1->unk_1C, v1, v2 + 0x2800, v3);

        if (v0->unk_168 % 3 == 0) {
            sub_02017350(&v0->unk_00[v0->unk_16A], v1, v2 + 0x2800, v3);
            sub_02017348(&v0->unk_00[v0->unk_16A], 1);

            v0->unk_16A++;

            if (v0->unk_16A >= 3) {
                v0->unk_16A = 0;
            }
        }

        v0->unk_168++;
        break;
    default:
        ov113_0225EC60(param0, v0->unk_16C);
        return 1;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_170, 0);
    return 0;
}

static void ov113_0225F680 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F51C * v0 = &param1->unk_94.val6;
    int v1;

    if (v0->unk_16C != 0xff) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, v0->unk_16C, 8, 0);
        NNS_G3dMdlUseGlbPolygonID(param1->unk_0C.unk_08);
        NNS_G3dMdlUseGlbAlpha(param1->unk_0C.unk_08);
    }

    for (v1 = 0; v1 < 3; v1++) {
        sub_02017294(&v0->unk_00[v1]);
    }

    if (v0->unk_16C != 0xff) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, v0->unk_16C, 31, 0);
        NNS_G3dMdlUseGlbPolygonID(param1->unk_0C.unk_08);
        NNS_G3dMdlUseGlbAlpha(param1->unk_0C.unk_08);
    }

    sub_02017294(&param1->unk_1C);
}

static BOOL ov113_0225F70C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F51C * v0 = &param1->unk_94.val6;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_170, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F728 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F728 * v0 = &param1->unk_94.val7;
    u16 v1;
    fx32 v2, v3, v4;
    fx32 v5;

    switch (v0->unk_00) {
    case 0:
        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);

        v0->unk_08 = v2;
        v0->unk_00++;
    case 1:
        sub_02017358(&param1->unk_1C, &v2, &v3, &v4);

        if ((v2 < Unk_ov113_02260BBC.unk_00) || (v2 > Unk_ov113_02260BBC.unk_04) || (v3 > Unk_ov113_02260BBC.unk_08) || (v3 < Unk_ov113_02260BBC.unk_0C)) {
            return 1;
        }

        v0->unk_04 += 0x8000;

        if (v0->unk_04 >= (360 << FX32_SHIFT)) {
            v0->unk_04 -= 360 << FX32_SHIFT;
        }

        v5 = FX_Mul(sub_0201D2B8(v0->unk_04), 0x8000);
        sub_02017350(&param1->unk_1C, v0->unk_08 + v5, v3 - 0x1000, v4);
        break;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_0C, 0);
    return 0;
}

static BOOL ov113_0225F7FC (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F728 * v0 = &param1->unk_94.val7;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_0C, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F818 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F818 * v0 = &param1->unk_94.val8;

    switch (v0->unk_06) {
    case 0:
        v0->unk_00 = FX32_ONE;
        v0->unk_06++;
    case 1:
        v0->unk_04++;

        if (v0->unk_04 > 8) {
            return 1;
        }

        v0->unk_00 += 0x300;
        sub_0201736C(&param1->unk_1C, v0->unk_00, v0->unk_00, FX32_ONE);
        break;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_08, 1);
    return 0;
}

static BOOL ov113_0225F874 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F818 * v0 = &param1->unk_94.val8;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_08, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static int ov113_0225F890 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F890 * v0 = &param1->unk_94.val9;
    fx32 v1, v2, v3;
    fx32 v4;
    int v5;

    switch (v0->unk_F7) {
    case 0:
        v0->unk_F6 = ov113_0225EBFC(param0);
        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        for (v5 = 0; v5 < 2; v5++) {
            sub_02017258(&v0->unk_00[v5], &param1->unk_0C);
            sub_02017350(&v0->unk_00[v5], v1, v2, v3);
            sub_02017348(&v0->unk_00[v5], 1);
        }

        v0->unk_F4 = 31 << 8;
        v0->unk_F7++;
    case 1:
        if (v0->unk_F4 - 0xa0 < 0x100) {
            for (v5 = 0; v5 < 2; v5++) {
                sub_02017348(&v0->unk_00[v5], 0);
            }

            sub_02017348(&param1->unk_1C, 0);
            v0->unk_F7++;
            break;
        }

        v0->unk_F4 -= 0xa0;
        v0->unk_F0 += 0x20000;

        if (v0->unk_F0 >= (360 << FX32_SHIFT)) {
            v0->unk_F0 -= 360 << FX32_SHIFT;
        }

        v4 = FX_Mul(sub_0201D2B8(v0->unk_F0), 0x10000);

        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        for (v5 = 0; v5 < 2; v5++) {
            if (v5 & 1) {
                sub_02017350(&v0->unk_00[v5], v1 + v4, v2, v3);
            } else {
                sub_02017350(&v0->unk_00[v5], v1 - v4, v2, v3);
            }
        }
        break;
    default:
        ov113_0225EC60(param0, v0->unk_F6);
        return 1;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_F8[0], 0);

    for (v5 = 0; v5 < 2; v5++) {
        ov113_0225ECA0(&v0->unk_00[v5], &param1->unk_00, &v0->unk_F8[1 + v5], 0);
    }

    return 0;
}

static void ov113_0225FA24 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225F890 * v0 = &param1->unk_94.val9;
    int v1;

    if (v0->unk_F6 != 0xff) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, v0->unk_F6, v0->unk_F4 >> 8, 0);
        NNS_G3dMdlUseGlbPolygonID(param1->unk_0C.unk_08);
        NNS_G3dMdlUseGlbAlpha(param1->unk_0C.unk_08);
    }

    for (v1 = 0; v1 < 2; v1++) {
        sub_02017294(&v0->unk_00[v1]);
    }

    sub_02017294(&param1->unk_1C);
}

static BOOL ov113_0225FA84 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225F890 * v0 = &param1->unk_94.val9;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;
    int v2;

    for (v2 = 0; v2 < 2 + 1; v2++) {
        if (ov113_0225EDA4(&v0->unk_F8[v2], &v1->unk_04) == 1) {
            return 1;
        }
    }

    return 0;
}

static int ov113_0225FAB0 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225FAB0 * v0 = &param1->unk_94.val10;
    fx32 v1, v2, v3;
    fx32 v4;
    int v5;

    switch (v0->unk_F7) {
    case 0:
        v0->unk_F6 = ov113_0225EBFC(param0);

        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        for (v5 = 0; v5 < 2; v5++) {
            sub_02017258(&v0->unk_00[v5], &param1->unk_0C);
            sub_02017350(&v0->unk_00[v5], v1, v2, v3);
            sub_02017348(&v0->unk_00[v5], 1);
        }

        v0->unk_F4 = 31 << 8;
        v0->unk_F7++;
    case 1:
        if (v0->unk_F4 - 0xa0 < 0x100) {
            for (v5 = 0; v5 < 2; v5++) {
                sub_02017348(&v0->unk_00[v5], 0);
            }

            sub_02017348(&param1->unk_1C, 0);
            v0->unk_F7++;
            break;
        }

        v0->unk_F4 -= 0xa0;
        v0->unk_F0 += 0x20000;

        if (v0->unk_F0 >= (360 << FX32_SHIFT)) {
            v0->unk_F0 -= 360 << FX32_SHIFT;
        }

        v4 = FX_Mul(sub_0201D2B8(v0->unk_F0), 0x10000);

        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);

        for (v5 = 0; v5 < 2; v5++) {
            if (v5 & 1) {
                sub_02017350(&v0->unk_00[v5], v1, v2 + v4, v3);
            } else {
                sub_02017350(&v0->unk_00[v5], v1, v2 - v4, v3);
            }
        }
        break;
    default:
        ov113_0225EC60(param0, v0->unk_F6);
        return 1;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_F8[0], 0);

    for (v5 = 0; v5 < 2; v5++) {
        ov113_0225ECA0(&v0->unk_00[v5], &param1->unk_00, &v0->unk_F8[1 + v5], 0);
    }

    return 0;
}

static void ov113_0225FC44 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225FAB0 * v0 = &param1->unk_94.val10;
    int v1;

    if (v0->unk_F6 != 0xff) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, v0->unk_F6, v0->unk_F4 >> 8, 0);
        NNS_G3dMdlUseGlbPolygonID(param1->unk_0C.unk_08);
        NNS_G3dMdlUseGlbAlpha(param1->unk_0C.unk_08);
    }

    for (v1 = 0; v1 < 2; v1++) {
        sub_02017294(&v0->unk_00[v1]);
    }

    sub_02017294(&param1->unk_1C);
}

static BOOL ov113_0225FCA4 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225FAB0 * v0 = &param1->unk_94.val10;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;
    int v2;

    for (v2 = 0; v2 < 2 + 1; v2++) {
        if (ov113_0225EDA4(&v0->unk_F8[v2], &v1->unk_04) == 1) {
            return 1;
        }
    }

    return 0;
}

static int ov113_0225FCD0 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1)
{
    UnkStruct_ov113_0225FCD0 * v0 = &param1->unk_94.val11;
    fx32 v1, v2, v3;
    fx32 v4;

    switch (v0->unk_06) {
    case 0:
        v0->unk_00 = FX32_ONE;
        v0->unk_06++;
    case 1:
        v0->unk_04++;

        if (v0->unk_04 > 30) {
            return 1;
        }

        v0->unk_00 += 0x180;
        sub_0201736C(&param1->unk_1C, FX32_ONE, v0->unk_00, FX32_ONE);

        v4 = -(FX32_ONE * 2 / 2 * (v0->unk_00 - FX32_ONE) / FX32_ONE);
        sub_02017358(&param1->unk_1C, &v1, &v2, &v3);
        sub_02017350(&param1->unk_1C, v1, v2 + v4, v3);

        break;
    }

    ov113_0225ECA0(&param1->unk_1C, &param1->unk_00, &v0->unk_08, 1);
    return 0;
}

static BOOL ov113_0225FD64 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225E6B8 * param1, UnkStruct_ov113_0225E6B8 * param2)
{
    UnkStruct_ov113_0225FCD0 * v0 = &param1->unk_94.val11;
    UnkStruct_ov113_0225EF0C * v1 = &param2->unk_94.val1;

    if (ov113_0225EDA4(&v0->unk_08, &v1->unk_04) == 1) {
        return 1;
    }

    return 0;
}

static BOOL ov113_0225FD80 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225FD80 * param1, int param2, int param3)
{
    int v0;

    if (param2 == 3) {
        return 0;
    }

    if (param3 == 0) {
        v0 = -1;
    } else {
        v0 = 1;
    }

    switch (param1->unk_00) {
    case 0:
        param1->unk_02 += 0x200;

        if (param1->unk_02 >= 0x800) {
            param1->unk_02 = 0x800;
            param1->unk_00++;
        }

        param0->unk_740 = 1;
        param0->unk_742 = (param1->unk_02 >> 8) * v0;
        break;
    case 1:
        param1->unk_02 -= 0x200;

        if (param1->unk_02 <= 0) {
            param1->unk_02 = 0;
            param1->unk_01++;

            if (param1->unk_01 < 2) {
                param1->unk_00 = 0;
            } else {
                param1->unk_00++;
            }
        }

        param0->unk_740 = 1;
        param0->unk_742 = (param1->unk_02 >> 8) * v0;
        break;
    default:
        param0->unk_73E = 1;
        return 1;
    }

    return 0;
}

static BOOL ov113_0225FE30 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_0225FE30 * v0 = &param1->unk_00;

    switch (v0->unk_06) {
    case 0:
        v0->unk_00 = sub_02020A90(param2);
        v0->unk_06++;
        sub_02005748(1470);
    case 1:
        sub_02020A78(((-FX32_ONE * 50) / 30), param2);
        v0->unk_04++;

        if (v0->unk_04 >= 30) {
            v0->unk_04 = 0;
            v0->unk_06++;
        }
        break;
    case 2:
        v0->unk_04++;

        if (v0->unk_04 > 4) {
            v0->unk_04 = 0;
            v0->unk_06++;
        }
        break;
    case 3:
        sub_02020A78((-(-FX32_ONE * 50) / 6), param2);
        v0->unk_04++;

        if ((v0->unk_04 >= 6) || (sub_02020A90(param2) >= v0->unk_00)) {
            sub_02020A50(v0->unk_00, param2);
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov113_0225FEE0 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_0225FEE0 * v0 = &param1->unk_08;
    fx32 v1;

    switch (v0->unk_0C) {
    case 0:
        sub_02005748(1470);
        v0->unk_0C++;
    case 1:
        v0->unk_0D++;
        v1 = FX32_ONE * 4 / 16 * v0->unk_0D;

        if (v1 < FX32_ONE * 2) {
            v0->unk_00.y = FX32_ONE - v1;
        } else {
            v0->unk_00.y = -FX32_ONE + (v1 - FX32_ONE * 2);
        }

        if (v1 < FX32_ONE * 1) {
            v0->unk_00.x = v1;
        } else if (v1 < FX32_ONE * 2) {
            v0->unk_00.x = FX32_ONE - (v1 - FX32_ONE);
        } else if (v1 < FX32_ONE * 3) {
            v0->unk_00.x = -(v1 - FX32_ONE * 2);
        } else {
            v0->unk_00.x = -FX32_ONE + (v1 - FX32_ONE * 3);
        }

        if (v0->unk_0D >= 16) {
            v0->unk_00.y = FX32_ONE;
            v0->unk_00.x = 0;
            v0->unk_0D = 0;
            v0->unk_0E++;

            if (v0->unk_0E >= 2) {
                v0->unk_0C++;
            }
        }

        sub_02020680(&v0->unk_00, param2);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov113_0225FF8C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_0225FF8C * v0 = &param1->unk_18;
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};

    switch (v0->unk_0E) {
    case 0:
        v0->unk_00 = sub_02020A94(param2);
        v0->unk_08 = v0->unk_00.unk_02;
        v0->unk_0E++;
        sub_02005748(1470);
    case 1:
        v1.unk_02 += (-0x2000 / 2);
        v0->unk_08 += (-0x2000 / 2);
        sub_02020A24(&v1, param2);

        if (v0->unk_08 <= v0->unk_00.unk_02 - 0x2000) {
            v0->unk_0E++;
        }
        break;
    case 2:
        v0->unk_0C++;

        if (v0->unk_0C >= 16) {
            v0->unk_0E++;
        }
        break;
    case 3:
        v1.unk_02 += (0x2000 / 16);
        v0->unk_08 += (0x2000 / 16);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 >= v0->unk_00.unk_02) {
            sub_020209D4(&v0->unk_00, param2);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov113_02260064 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_02260064 * v0 = &param1->unk_28;
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};

    switch (v0->unk_0E) {
    case 0:
        v0->unk_00 = sub_02020A94(param2);
        v0->unk_08 = v0->unk_00.unk_02;
        v0->unk_0E++;
        sub_02005748(1470);
    case 1:
        v1.unk_02 += (0x2000 / 2);
        v0->unk_08 += (0x2000 / 2);
        sub_02020A24(&v1, param2);

        if (v0->unk_08 >= v0->unk_00.unk_02 + 0x2000) {
            v0->unk_0E++;
        }
        break;
    case 2:
        v0->unk_0C++;

        if (v0->unk_0C >= 16) {
            v0->unk_0E++;
        }
        break;
    case 3:
        v1.unk_02 += (-0x2000 / 16);
        v0->unk_08 += (-0x2000 / 16);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 <= v0->unk_00.unk_02) {
            sub_020209D4(&v0->unk_00, param2);
            return 1;
        }
        break;
    }

    return 0;
}

static BOOL ov113_0226013C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_0226013C * v0 = &param1->unk_38;
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};

    switch (v0->unk_0E) {
    case 0:
        v0->unk_00 = sub_02020A94(param2);
        v0->unk_08 = v0->unk_00.unk_00;
        sub_02005748(1470);
        v0->unk_0E++;
    case 1:
        v1.unk_00 += (0x2000 / 3);
        v0->unk_08 += (0x2000 / 3);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 >= v0->unk_00.unk_00 + 0x2000) {
            v0->unk_0E++;
        }

        break;
    case 2:
        v0->unk_0C++;

        if (v0->unk_0C >= 16) {
            v0->unk_0E++;
        }
        break;
    case 3:
        v1.unk_00 += (-0x2000 / 16);
        v0->unk_08 += (-0x2000 / 16);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 <= v0->unk_00.unk_00) {
            sub_020209D4(&v0->unk_00, param2);
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov113_02260218 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_02260218 * v0 = &param1->unk_48;
    fx32 v1;
    UnkStruct_ov115_0226527C v2 = {0, 0, 0, 0};

    switch (v0->unk_0D) {
    case 0:
        v0->unk_00 = sub_02020A94(param2);
        v0->unk_0D++;
        sub_02005748(1470);
    case 1:
        v0->unk_08 += 0x18000;

        if (v0->unk_08 >= (360 << FX32_SHIFT)) {
            v0->unk_08 -= 360 << FX32_SHIFT;
            v0->unk_0C++;

            if (v0->unk_0C >= 2) {
                v0->unk_0D++;
                v0->unk_08 = 0;
            }
        }

        v1 = FX_Mul(sub_0201D2B8(v0->unk_08), 0x1000);
        v2 = v0->unk_00;
        v2.unk_02 = v1;
        sub_020209B0(&v2, param2);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov113_022602E4 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_022602E4 * v0 = &param1->unk_58;

    switch (v0->unk_06) {
    case 0:
        v0->unk_00 = sub_02020A90(param2);
        v0->unk_06++;
        sub_02005748(1470);
    case 1:
        sub_02020A78(((FX32_ONE * 50) / 30), param2);
        v0->unk_04++;

        if (v0->unk_04 >= 30) {
            v0->unk_04 = 0;
            v0->unk_06++;
        }
        break;
    case 2:
        v0->unk_04++;

        if (v0->unk_04 > 4) {
            v0->unk_04 = 0;
            v0->unk_06++;
        }
        break;
    case 3:
        sub_02020A78((-(FX32_ONE * 50) / 6), param2);
        v0->unk_04++;

        if ((v0->unk_04 >= 6) || (sub_02020A90(param2) <= v0->unk_00)) {
            sub_02020A50(v0->unk_00, param2);
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov113_02260394 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_02260394 * v0 = &param1->unk_60;
    VecFx32 v1 = {0, 0, 0};
    fx32 v2;

    switch (v0->unk_1D) {
    case 0:
        v0->unk_0C = sub_02020ABC(param2);
        v0->unk_00 = sub_02020AAC(param2);
        v0->unk_1D++;
        sub_02005748(1470);
    case 1:
        v0->unk_18 += 0x20000;

        if (v0->unk_18 >= (360 << FX32_SHIFT)) {
            v0->unk_18 -= 360 << FX32_SHIFT;
            v0->unk_1C++;

            if (v0->unk_1C >= 4) {
                v0->unk_1D++;
                v0->unk_18 = 0;
            }
        }

        v2 = FX_Mul(sub_0201D2B8(v0->unk_18), 0x10000);
        v1.x = v2;

        sub_02020ACC(&v0->unk_00, param2);
        sub_02020ADC(&v0->unk_0C, param2);
        sub_02020990(&v1, param2);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov113_0226046C (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_0226046C * v0 = &param1->unk_80;
    VecFx32 v1 = {0, 0, 0};
    fx32 v2;

    switch (v0->unk_1D) {
    case 0:
        v0->unk_0C = sub_02020ABC(param2);
        v0->unk_00 = sub_02020AAC(param2);
        v0->unk_1D++;
        sub_02005748(1470);
    case 1:
        v0->unk_18 += 0x20000;

        if (v0->unk_18 >= (360 << FX32_SHIFT)) {
            v0->unk_18 -= 360 << FX32_SHIFT;
            v0->unk_1C++;

            if (v0->unk_1C >= 4) {
                v0->unk_1D++;
                v0->unk_18 = 0;
            }
        }

        v2 = FX_Mul(sub_0201D2B8(v0->unk_18), 0x8000);
        v1.y = v2;

        sub_02020ACC(&v0->unk_00, param2);
        sub_02020ADC(&v0->unk_0C, param2);
        sub_02020990(&v1, param2);
        break;
    default:
        return 1;
    }

    return 0;
}

static BOOL ov113_02260544 (UnkStruct_ov113_0225EB20 * param0, UnkStruct_ov113_0225EB20_sub1 * param1, UnkStruct_020203AC * param2)
{
    UnkStruct_ov113_02260544 * v0 = &param1->unk_A0;
    UnkStruct_ov115_0226527C v1 = {0, 0, 0, 0};

    switch (v0->unk_0E) {
    case 0:
        v0->unk_00 = sub_02020A94(param2);
        v0->unk_08 = v0->unk_00.unk_00;
        v0->unk_0E++;

        sub_02005748(1470);
    case 1:
        v1.unk_00 += (-0x2000 / 3);
        v0->unk_08 += (-0x2000 / 3);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 <= v0->unk_00.unk_00 - 0x2000) {
            v0->unk_0E++;
        }
        break;
    case 2:
        v0->unk_0C++;

        if (v0->unk_0C >= 16) {
            v0->unk_0E++;
        }
        break;
    case 3:
        v1.unk_00 += (0x2000 / 16);
        v0->unk_08 += (0x2000 / 16);

        sub_02020A24(&v1, param2);

        if (v0->unk_08 >= v0->unk_00.unk_00) {
            sub_020209D4(&v0->unk_00, param2);
            return 1;
        }

        break;
    }

    return 0;
}
