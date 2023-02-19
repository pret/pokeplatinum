#include "enums.h"

#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_plstring_decl.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_0222E71C_decl.h"
#include "overlay070/struct_ov70_0225C894_decl.h"
#include "overlay070/struct_ov70_0225CA20_decl.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"
#include "overlay070/struct_ov70_0225DEE8_decl.h"
#include "overlay070/struct_ov70_02260AD4_decl.h"
#include "overlay070/struct_ov70_02261E10_decl.h"
#include "overlay070/struct_ov70_022630A4_decl.h"
#include "overlay070/struct_ov70_02263344_decl.h"

#include "overlay063/struct_ov63_0222CC3C.h"
#include "overlay070/struct_ov70_02263910.h"
#include "overlay070/struct_ov70_02265F38.h"
#include "overlay070/struct_ov70_0226DA18.h"
#include "overlay084/struct_ov84_02240FA8.h"

#include "unk_02005474.h"
#include "unk_0201D15C.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_022324F0.h"
#include "overlay070/ov70_0225C700.h"
#include "overlay070/ov70_0225C858.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_0225D9A4.h"
#include "overlay070/ov70_02260A70.h"
#include "overlay070/ov70_02261E10.h"
#include "overlay070/ov70_02262DA8.h"
#include "overlay070/ov70_022630A4.h"
#include "overlay070/ov70_02265F38.h"
#include "overlay070/ov70_02266E9C.h"
#include "overlay070/ov70_0226CC74.h"

typedef struct {
    fx32 unk_00;
    s8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_ov70_02263270;

typedef struct {
    u16 unk_00;
    u16 unk_02;
    s32 unk_04;
    UnkStruct_ov84_02240FA8 unk_08;
    u16 unk_28;
    u16 unk_2A;
} UnkStruct_ov70_022653DC;

typedef struct {
    u32 unk_00;
} UnkStruct_ov70_0226315C;

typedef struct {
    s32 unk_00;
    u16 unk_04;
    u16 unk_06;
    u32 unk_08;
} UnkStruct_ov70_02264324;

typedef struct {
    UnkStruct_ov70_02265F38 unk_00;
} UnkStruct_ov70_022646C8;

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov70_02264974;

typedef struct {
    u32 unk_00;
    u16 unk_04;
    u16 unk_06;
    s16 unk_08;
    u8 unk_0A;
    u8 unk_0B;
    UnkStruct_ov70_0225CC54 * unk_0C;
    UnkStruct_ov70_02263270 unk_10;
} UnkStruct_ov70_02265104;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05[3];
} UnkStruct_ov70_02265CCC;

typedef struct {
    UnkStruct_ov70_02265CCC unk_00;
} UnkStruct_ov70_0226545C;

typedef struct {
    UnkStruct_ov70_0225CC54 * unk_00;
    u32 unk_04;
    u32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    s32 unk_14;
    UnkStruct_ov70_02263270 unk_18;
} UnkStruct_ov70_02265840;

typedef void (* UnkFuncPtr_ov70_0226DBB8)(UnkStruct_ov70_0226315C *, UnkStruct_ov70_0225DEE8 *, u32, u32);

typedef struct {
    u8 unk_00[8];
    u32 unk_08;
    UnkStruct_ov70_0226DA18 unk_0C;
    UnkFuncPtr_ov70_0226DBB8 unk_14;
} UnkStruct_ov70_0226DBB8;

static BOOL ov70_02263120(int param0);
static UnkStruct_ov70_0225CC54 * ov70_022631F8(UnkStruct_ov70_0225DEE8 * param0, u32 param1);
static void ov70_02263230(UnkStruct_ov70_0225DEE8 * param0, u32 param1, u32 param2, u32 param3, int param4);
static void ov70_02263270(UnkStruct_ov70_02263270 * param0);
static fx32 ov70_02263290(UnkStruct_ov70_02263270 * param0);
static void ov70_0226332C(UnkStruct_ov70_02263270 * param0);
static BOOL ov70_02263334(const UnkStruct_ov70_02263270 * param0);
static BOOL ov70_02263344(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02263414(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02263910(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02263A58(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02263BA4(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static void ov70_0226315C(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, const UnkStruct_ov70_0226DBB8 * param3, u32 param4);
static BOOL ov70_02263CC8(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_0226412C(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02264150(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02264324(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_022646C8(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02264974(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static u32 ov70_02264B64(u32 param0);
static u32 ov70_02264BCC(u32 param0);
static u32 ov70_02264C34(u32 param0);
static BOOL ov70_02264C9C(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02264D38(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static void ov70_022650E4(UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02260AD4 * param1);
static BOOL ov70_02265104(const UnkStruct_ov70_02265104 * param0, const UnkStruct_ov70_02261E10 * param1);
static BOOL ov70_02265144(UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_02260AD4 * param2);
static BOOL ov70_022652BC(UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1);
static void ov70_02265344(UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_0225DEE8 * param2);
static void ov70_02265370(UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_0225DEE8 * param2);
static void ov70_022653DC(UnkStruct_ov70_022653DC * param0, UnkStruct_ov70_0225DEE8 * param1);
static void ov70_02265450(UnkStruct_ov70_022653DC * param0, UnkStruct_ov70_0225DEE8 * param1);
static BOOL ov70_0226545C(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02265630(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_022657D0(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02265840(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02265A84(UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2);
static BOOL ov70_02265CCC(UnkStruct_ov70_02265CCC * param0, UnkStruct_ov66_0222DFF8 * param1, UnkStruct_ov70_0225DEE8 * param2, UnkStruct_ov70_0225CC54 * param3, u8 param4, int param5);
static BOOL ov70_02265ED0(const UnkStruct_ov70_0225C894 * param0, const UnkStruct_ov70_0225CA20 * param1, const u32 * param2, u32 param3, UnkStruct_ov63_0222CC3C * param4);

static const UnkStruct_ov84_02240FA8 Unk_ov70_0226DA98 = {
    NULL,
    NULL,
    NULL,
    NULL,
    0x12,
    0x7,
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x1,
    0x0,
    0x0,
    NULL
};

static const u32 Unk_ov70_0226DA28[4] = {
    0x4F,
    0x50,
    0x51,
    0x52
};

static const u32 Unk_ov70_0226DA58[4] = {
    0x53,
    0x54,
    0x55,
    0x56
};

static const u32 Unk_ov70_0226DA38[4] = {
    0x57,
    0x58,
    0x59,
    0x5A
};

static const u32 Unk_ov70_0226DA68[4] = {
    0x36,
    0x37,
    0x38,
    0x39
};

static const u32 Unk_ov70_0226DA48[4] = {
    0x32,
    0x33,
    0x34,
    0x35
};

static const u32 Unk_ov70_0226DAB8[8] = {
    0x22,
    0x23,
    0x24,
    0x25,
    0x26,
    0x27,
    0x28,
    0x29
};

static const u32 Unk_ov70_0226DAD8[8] = {
    0x2A,
    0x2B,
    0x2C,
    0x2D,
    0x2E,
    0x2F,
    0x30,
    0x31
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA18 = {
    ov70_02263344,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA78[4] = {
    {ov70_02263414, NULL},
    {ov70_02263910, NULL},
    {ov70_02263A58, NULL},
    {ov70_02263BA4, NULL}
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9D0 = {
    ov70_02263CC8,
    ov70_0226412C
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA20 = {
    ov70_02265F38,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA00 = {
    ov70_022669B8,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA10 = {
    ov70_0226545C,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9D8 = {
    ov70_02265630,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9E0 = {
    ov70_022657D0,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9E8 = {
    ov70_02265840,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9F0 = {
    ov70_02265A84,
    NULL
};

static const UnkStruct_ov70_0226DBB8 Unk_ov70_0226DBB8[] = {
    {
        {0x1, 0xFF},
        0x0,
        {ov70_02264150, NULL},
        NULL
    },
    {
        {0x16, 0x17, 0x18, 0x19, 0xFF},
        0x0,
        {ov70_02264324, NULL},
        NULL
    },
    {
        {0x1A, 0x1B, 0x1C, 0x1D, 0xFF},
        0x0,
        {ov70_02264324, NULL},
        NULL
    },
    {
        {0x6, 0x7, 0x8, 0x9, 0xA, 0xB, 0xC, 0xD},
        0x0,
        {ov70_02264324, NULL},
        NULL
    },
    {
        {0xE, 0xF, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15},
        0x0,
        {ov70_02264324, NULL},
        NULL
    },
    {
        {0x21, 0x22, 0x23, 0xFF},
        0x0,
        {ov70_02264D38, NULL},
        NULL
    },
    {
        {0x1E, 0x1F, 0x20, 0xFF},
        0x0,
        {ov70_022646C8, NULL},
        NULL
    },
    {
        {0x2C, 0xFF},
        0x0,
        {ov70_02264974, NULL},
        NULL
    },
    {
        {0xFF},
        0x3,
        {NULL, NULL},
        NULL
    }
};

static const UnkStruct_ov70_0226DBB8 Unk_ov70_0226DB28[] = {
    {
        {0x24, 0xFF},
        0x1,
        {ov70_02264C9C, NULL},
        NULL
    },
    {
        {0x25, 0xFF},
        0x1,
        {ov70_02268390, NULL},
        NULL
    },
    {
        {0x26, 0xFF},
        0x1,
        {ov70_0226889C, NULL},
        NULL
    },
    {
        {0x27, 0x28, 0x29, 0xFF},
        0x1,
        {ov70_022669FC, NULL},
        NULL
    },
    {
        {0x2B, 0xFF},
        0x1,
        {ov70_0226CC74, NULL},
        NULL
    },
    {
        {0xFF},
        0x3,
        {NULL, NULL},
        NULL
    }
};

static const UnkStruct_ov70_0226DBB8 Unk_ov70_0226DAF8[] = {
    {
        {0x27, 0x28, 0x29, 0xFF},
        0x1,
        {ov70_022669FC, NULL},
        NULL
    },
    {
        {0xFF},
        0x3,
        {NULL, NULL},
        NULL
    }
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226D9F8 = {
    ov70_02266E9C,
    NULL
};

static const UnkStruct_ov70_0226DA18 Unk_ov70_0226DA08 = {
    ov70_02267A44,
    NULL
};

void ov70_022630A4 (UnkStruct_ov70_0225DEE8 * param0)
{
    UnkStruct_ov70_02263910 * v0;
    UnkStruct_ov70_022630A4 * v1;
    u32 v2;
    u32 v3;

    v0 = ov70_0225DEEC(param0);
    v1 = ov70_0225DF10(param0);
    v2 = ov70_0225DF2C(param0);

    ov66_0222E3E4(ov70_0225DEE8(param0), 1);
    GF_ASSERT(v0->unk_06 < 4);
    ov70_02262E94(v1, v2, &Unk_ov70_0226DA78[v0->unk_06], NULL);
}

void ov70_022630EC (UnkStruct_ov70_0225DEE8 * param0)
{
    int v0;
    u32 v1;
    UnkStruct_ov70_022630A4 * v2;

    v1 = ov70_0225DF2C(param0);
    v2 = ov70_0225DF10(param0);

    for (v0 = 0; v0 < 20; v0++) {
        if (v1 != v0) {
            ov70_02262E94(v2, v0, &Unk_ov70_0226DA10, NULL);
        }
    }
}

static BOOL ov70_02263120 (int param0)
{
    u32 v0;

    switch (param0) {
    case 0:
        v0 = PAD_KEY_UP;
        break;
    case 1:
        v0 = PAD_KEY_DOWN;
        break;
    case 2:
        v0 = PAD_KEY_LEFT;
        break;
    case 3:
        v0 = PAD_KEY_RIGHT;
        break;
    }

    if (Unk_021BF67C.unk_44 & v0) {
        return 1;
    }

    return 0;
}

static void ov70_0226315C (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2, const UnkStruct_ov70_0226DBB8 * param3, u32 param4)
{
    int v0;
    int v1;
    UnkStruct_ov70_0226315C * v2;
    UnkStruct_ov70_022630A4 * v3;

    v2 = ov70_02262E80(param0);

    {
        v3 = ov70_0225DF10(param1);
    }

    v0 = 0;

    while (param3[v0].unk_08 != 3) {
        for (v1 = 0; v1 < 8; v1++) {
            if (param3[v0].unk_00[v1] == 0xff) {
                break;
            }

            if (param3[v0].unk_00[v1] == param4) {
                switch (param3[v0].unk_08) {
                case 0:
                    ov70_02262E64(param0);
                    ov70_02262E94(v3, param2, &param3[v0].unk_0C, NULL);
                    break;
                case 1:
                    if (param3[v0].unk_14) {
                        param3[v0].unk_14(v2, param1, param2, param3[v0].unk_00[v1]);
                    }

                    ov70_02262EC0(v3, param2, &param3[v0].unk_0C, NULL);
                    break;
                }

                return;
            }
        }

        v0++;
    }

    GF_ASSERT(0);
    return;
}

static UnkStruct_ov70_0225CC54 * ov70_022631F8 (UnkStruct_ov70_0225DEE8 * param0, u32 param1)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_02260AD4 * v2;
    VecFx32 v3;

    v1 = ov70_0225DEF0(param0);
    v0 = ov70_0225CB28(v1, param1);
    v2 = ov70_0225DF08(param0);

    ov70_0225D054(v0, &v3);
    ov70_02260B20(v2, v3.x, v3.y, v3.z);

    return v0;
}

static void ov70_02263230 (UnkStruct_ov70_0225DEE8 * param0, u32 param1, u32 param2, u32 param3, int param4)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_02260AD4 * v2;

    v1 = ov70_0225DEF0(param0);
    v2 = ov70_0225DF08(param0);
    v0 = ov70_0225CB5C(v1, param1, param2, param3);

    ov70_0225CD7C(v1, v0, 0, param4);
    ov70_02260B38(v2, v0);
}

static void ov70_02263270 (UnkStruct_ov70_02263270 * param0)
{
    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_05 = 1;
    param0->unk_06 = sub_0201D35C() % 4;
    param0->unk_07 = 1;
}

static fx32 ov70_02263290 (UnkStruct_ov70_02263270 * param0)
{
    u16 v0;

    switch (param0->unk_05) {
    case 0:
        param0->unk_00 = 0;
        break;
    case 1:
        if ((param0->unk_06 - 1) > 0) {
            param0->unk_06--;
        } else {
            param0->unk_05 = 2;
        }
        break;
    case 2:
        param0->unk_04++;

        v0 = (param0->unk_04 * 0x7fff) / 4;
        param0->unk_00 = FX_Mul(FX_SinIdx(v0), (FX32_CONST(6)));

        if (param0->unk_04 >= 4) {
            if (param0->unk_07 == 1) {
                param0->unk_04 = 0;
                param0->unk_05 = 1;
                param0->unk_06 = sub_0201D35C() % 4;
            } else {
                param0->unk_05 = 0;
            }
        }
        break;
    }

    return param0->unk_00;
}

static void ov70_0226332C (UnkStruct_ov70_02263270 * param0)
{
    param0->unk_07 = 0;
}

static BOOL ov70_02263334 (const UnkStruct_ov70_02263270 * param0)
{
    if (param0->unk_05 == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov70_02263344 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CA20 * v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov66_0222DFF8 * v2;

    v0 = ov70_0225DEF0(param1);
    v1 = ov70_0225CC70(v0, param2);
    v2 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        ov70_0225E46C(param1, param2);
        ov70_02262E88(param0, 1);

        if (param2 == ov66_0222E338(v2)) {
            ov70_0225E43C(param1, 0);
        }
        break;
    case 1:
        if (ov70_0225E4AC(param1, param2) == 1) {
            ov70_02262E88(param0, 2);
        }
        break;
    case 2:
        if (param2 == ov66_0222E338(v2)) {
            ov70_0225CDEC(v0, v1, 1);
        } else {
            if ((ov70_0225E3F0(param1) == 1)) {
                if (param2 != ov70_0225E3E0(param1)) {
                    ov70_0225CDEC(v0, v1, 2);
                }
            } else {
                ov70_0225CDEC(v0, v1, 2);
            }

            ov70_0225DF4C(param1, param2, 0);
        }

        ov70_0225E44C(param1);

        return 1;
    }

    return 0;
}

static BOOL ov70_02263414 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_022653DC * v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov70_0225CA20 * v2;
    UnkStruct_ov66_0222DFF8 * v3;
    PLString * v4;

    v3 = ov70_0225DEE8(param1);
    v2 = ov70_0225DEF0(param1);
    v1 = ov70_0225CCAC(v2);
    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_022653DC));

        ov70_022653DC(v0, param1);
        ov66_0222E2CC(v3);

        {
            v0->unk_02 = ov66_0222F0DC(v3);
            ov66_0222E528(v3, v0->unk_02);
        }

        v1 = ov70_022631F8(param1, param2);

        ov70_0225CDEC(v2, v1, 4);
        ov70_02262E8C(param0);
        break;
    case 1:
        if ((ov70_0225DF30(param1) == 0) && (ov70_0225CE38(v1) == 1)) {
            ov70_0225CDEC(v2, v1, 0);

            {
                UnkStruct_ov70_02260AD4 * v5;

                v5 = ov70_0225DF08(param1);
                ov70_02260B38(v5, v1);
            }

            v0->unk_04 = 16;
            ov70_02262E8C(param0);
        }
        break;
    case 2:
        v0->unk_04--;

        if (v0->unk_04 == 0) {
            ov70_0225DF18(param1, 1);
            ov70_02262E8C(param0);
        }
        break;
    case 3:
        ov70_0225CD7C(v2, v1, 2, 0);
        v0->unk_00 = 4;
        ov70_02262E88(param0, 7);
        break;
    case 4:
        ov70_0225CD7C(v2, v1, 2, 0);
        v0->unk_00 = 5;
        ov70_02262E88(param0, 7);
        break;
    case 5:
        ov70_0225CD7C(v2, v1, 1, 3);
        v0->unk_00 = 6;
        ov70_02262E88(param0, 7);
        break;
    case 6:
        ov70_0225CD7C(v2, v1, 2, 3);
        v0->unk_00 = 8;
        ov70_02262E88(param0, 7);
        break;
    case 7:
        if (ov70_0225CD60(v1, 5) == 0) {
            ov70_02262E88(param0, v0->unk_00);
        }
        break;
    case 8:
        v4 = ov70_0225E20C(param1, 1, 0);
        ov70_0225DF8C(param1, v4);
        v0->unk_00 = 16;
        ov70_02262E88(param0, 21);
        break;
    case 9:
        v4 = ov70_0225E20C(param1, 1, 5);
        ov70_0225DF9C(param1, v4);
        ov70_0225E074(param1, &v0->unk_08, 0, 0);
        ov70_0225E0F4(param1, 1);
        ov70_02262E88(param0, 10);
        break;
    case 10:
    {
        u32 v6;
        u32 v7;
        BOOL v8 = 0;

        v6 = ov70_0225E0D4(param1);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            sub_02005748(1500);
        case 0:
            v0->unk_28 = 0;
            v8 = 1;
            break;
        default:
            v0->unk_28 = v6;
            v8 = 1;
            ov70_0225E30C(param1, 0, v6);
            v7 = 8;
            break;
        }

        if (v8 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);

            if (v0->unk_28 != 0) {
                v4 = ov70_0225E20C(param1, 1, v7);
                ov70_0225DF9C(param1, v4);
                ov70_0225E164(param1);
                ov70_02262E88(param0, 11);
            } else {
                ov70_02262E88(param0, 17);
            }
        }
    }
    break;
    case 11:
    {
        int v9;

        v9 = ov70_0225E1C4(param1);

        switch (v9) {
        case 0:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 12);
            ov66_0222E56C(v3, v0->unk_28, v0->unk_2A);
            ov70_0225E390(param1);
            sub_02005748(1509);
            break;
        case 1:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 9);
            break;
        default:
            break;
        }
    }
    break;
    case 12:
        v4 = ov70_0225E20C(param1, 1, 10);
        ov70_0225DF9C(param1, v4);
        ov70_0225E074(param1, &v0->unk_08, 0, 0);
        ov70_0225E0F4(param1, 1);
        ov70_02262E88(param0, 13);
        break;
    case 13:
    {
        u32 v10;
        u32 v11;
        BOOL v12 = 0;

        v10 = ov70_0225E0D4(param1);

        switch (v10) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            sub_02005748(1500);
        case 0:
            v0->unk_2A = 0;
            v12 = 1;
            break;
        default:
            v0->unk_2A = v10;
            v12 = 1;
            ov70_0225E30C(param1, 0, v10);
            v11 = 8;
            break;
        }

        if (v12 == 1) {
            ov70_0225E0E4(param1, NULL, NULL);

            if (v0->unk_2A != 0) {
                v4 = ov70_0225E20C(param1, 1, v11);
                ov70_0225DF9C(param1, v4);
                ov70_0225E164(param1);
                ov70_02262E88(param0, 15);
            } else {
                ov70_02262E88(param0, 19);
            }
        }
    }
    break;
    case 15:
    {
        int v13;

        v13 = ov70_0225E1C4(param1);

        switch (v13) {
        case 0:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 20);
            ov66_0222E56C(v3, v0->unk_28, v0->unk_2A);
            ov70_0225E390(param1);
            sub_02005748(1509);
            break;
        case 1:
            ov70_0225E1F8(param1);
            ov70_02262E88(param0, 12);
            break;
        default:
            break;
        }
    }
    break;
    case 16:
        sub_02005748(1448);
        ov70_0225E430(param1);
        ov70_0225E234(param1, param2, 0);
        ov70_0225E29C(param1, v0->unk_02, 1);
        {
            BOOL v14;

            v14 = ov66_0222E924(v3, param2);

            if (v14 == 0) {
                v4 = ov70_0225E20C(param1, 1, 1);
            } else {
                v4 = ov70_0225E20C(param1, 1, 124);
            }
        }
        ov70_0225DF8C(param1, v4);
        v0->unk_00 = 18;
        ov70_02262E88(param0, 21);
        break;
    case 17:
        v4 = ov70_0225E20C(param1, 1, 2);
        ov70_0225DF8C(param1, v4);
        v0->unk_00 = 22;
        ov70_02262E88(param0, 21);
        break;
    case 18:
        if (!((sub_020057D4(1448) == 0) && (Unk_021BF67C.unk_48 & (PAD_BUTTON_A | PAD_BUTTON_B)))) {
            break;
        }

        sub_02005748(1500);

        v4 = ov70_0225E20C(param1, 1, 4);
        ov70_0225DF8C(param1, v4);

        v0->unk_00 = 9;
        ov70_02262E88(param0, 21);

        ov66_0222E56C(v3, v0->unk_28, v0->unk_2A);
        ov70_0225E328(param1, param2, 0);
        break;
    case 19:
        ov70_0225E30C(param1, 0, v0->unk_28);
        v4 = ov70_0225E20C(param1, 1, 12);

        ov70_0225DF8C(param1, v4);
        v0->unk_00 = 17;

        ov70_02262E88(param0, 21);
        break;
    case 20:
        ov70_0225E30C(param1, 0, v0->unk_28);
        ov70_0225E30C(param1, 1, v0->unk_2A);

        v4 = ov70_0225E20C(param1, 1, 11);
        ov70_0225DF8C(param1, v4);

        v0->unk_00 = 17;
        ov70_02262E88(param0, 21);
        break;

    case 21:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E88(param0, v0->unk_00);
        }
        break;
    case 22:
        ov70_0225CDEC(v2, v1, 1);
        ov70_0225DFEC(param1);
        ov70_02265450(v0, param1);
        ov70_02262E64(param0);

        {
            UnkStruct_ov70_022630A4 * v15;
            u32 v16;

            v15 = ov70_0225DF10(param1);
            v16 = ov70_0225DF2C(param1);

            ov70_02262E94(v15, v16, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02263910 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_02263910 * v2;
    UnkStruct_ov66_0222DFF8 * v3;

    v3 = ov70_0225DEE8(param1);
    v2 = ov70_0225DEEC(param1);
    v1 = ov70_0225DEF0(param1);
    v0 = ov70_0225CCAC(v1);

    switch (ov70_02262E84(param0)) {
    case 0:
        ov70_02263230(param1, param2, v2->unk_00, v2->unk_02, 1);

        if (ov66_02231760() == 0) {
            ov66_02232AA4();
        }

        ov66_0222E31C(v3, 0);
        ov70_02262E8C(param0);
        break;
    case 1:
        if ((ov66_02231760() == 0)) {
            if (ov66_02232AD4() == 0) {
                break;
            }
        }

        v2 = ov70_0225DEEC(param1);

        if (ov70_0225DF30(param1) == 0) {
            ov70_02262E8C(param0);
            ov70_0225CDAC(v1, v0, 2, v2->unk_04);
        }
        break;
    case 2:
    {
        u32 v4;

        v4 = ov70_0225CD60(v0, 5);

        if (v4 == 0) {
            ov70_0225DF18(param1, 1);

            if (ov66_0222E2B4(v3) == 1) {
                ov70_02262E8C(param0);
            } else {
                ov70_02262E88(param0, 5);
            }
        }
    }
    break;
    case 3:
    {
        PLString * v5;

        ov70_0225E27C(param1, v2->unk_08, 0);

        v5 = ov70_0225E20C(param1, 0, 21);

        ov70_0225DF8C(param1, v5);
        ov70_02262E8C(param0);
    }
    break;
    case 4:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_0225DFEC(param1);
            ov70_02262E8C(param0);
        }
        break;
    case 5:
        ov70_0225CDEC(v1, v0, 1);

        {
            UnkStruct_ov70_022630A4 * v6;
            u32 v7;

            v6 = ov70_0225DF10(param1);
            v7 = ov70_0225DF2C(param1);

            ov70_02262E94(v6, v7, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02263A58 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_022630A4 * v2;
    UnkStruct_ov70_02263910 * v3;
    UnkStruct_ov66_0222DFF8 * v4;

    v2 = ov70_0225DF10(param1);
    v1 = ov70_0225DEF0(param1);
    v0 = ov70_0225CCAC(v1);
    v4 = ov70_0225DEE8(param1);
    v3 = ov70_0225DEEC(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
    {
        ov70_02263230(param1, param2, v3->unk_00, v3->unk_02, 1);
        ov70_02262E8C(param0);
        ov70_02262EC0(v2, param2, &Unk_ov70_0226DA00, NULL);
        ov66_0222E2C4(v4, 0);
        ov66_0222E2CC(v4);
    }
    break;
    case 1:

    {
        UnkStruct_ov70_02263910 * v5;

        v5 = ov70_0225DEEC(param1);

        if (ov70_0225DF30(param1) == 0) {
            ov70_02262E8C(param0);
            ov70_0225CDAC(v1, v0, 2, v5->unk_04);
        }
    }
    break;
    case 2:
    {
        u32 v6;

        v6 = ov70_0225CD60(v0, 5);

        if (v6 == 0) {
            ov70_0225DF18(param1, 1);

            if (ov66_0222E220(v4) == 1) {
                ov70_02262E88(param0, 3);
            } else {
                ov70_02262E88(param0, 5);
            }
        }
    }
    break;
    case 3:
    {
        PLString * v7;

        ov70_0225E27C(param1, v3->unk_08, 0);
        v7 = ov70_0225E20C(param1, 0, 8);
        ov70_0225DF8C(param1, v7);
        ov70_02262E8C(param0);
    }
    break;
    case 4:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_0225DFEC(param1);
            ov70_02262E8C(param0);
        }
        break;
    case 5:
        ov70_0225CDEC(v1, v0, 1);

        {
            UnkStruct_ov70_022630A4 * v8;
            u32 v9;

            v8 = ov70_0225DF10(param1);
            v9 = ov70_0225DF2C(param1);

            ov70_02262E94(v8, v9, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02263BA4 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_02263910 * v2;
    UnkStruct_ov66_0222DFF8 * v3;

    v3 = ov70_0225DEE8(param1);
    v2 = ov70_0225DEEC(param1);
    v1 = ov70_0225DEF0(param1);
    v0 = ov70_0225CCAC(v1);

    switch (ov70_02262E84(param0)) {
    case 0:
        ov70_02263230(param1, param2, v2->unk_00, v2->unk_02, 1);
        ov66_0222E31C(v3, 0);
        ov70_02262E8C(param0);
        break;
    case 1:
        v2 = ov70_0225DEEC(param1);

        if (ov70_0225DF30(param1) == 0) {
            ov70_02262E8C(param0);
            ov70_0225CDAC(v1, v0, 2, v2->unk_04);
        }
        break;
    case 2:
    {
        u32 v4;
        v4 = ov70_0225CD60(v0, 5);

        if (v4 == 0) {
            ov70_0225DF18(param1, 1);

            if (ov66_0222E2B4(v3) == 1) {
                ov70_02262E8C(param0);
            } else {
                ov70_02262E88(param0, 5);
            }
        }
    }
    break;

    case 3:
    {
        PLString * v5;

        v5 = ov70_0225E20C(param1, 1, 91);

        ov70_0225DF8C(param1, v5);
        ov70_02262E8C(param0);
    }
    break;
    case 4:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_0225DFEC(param1);
            ov70_02262E8C(param0);
        }
        break;
    case 5:
        ov70_0225CDEC(v1, v0, 1);

        {
            UnkStruct_ov70_022630A4 * v6;
            u32 v7;

            v6 = ov70_0225DF10(param1);
            v7 = ov70_0225DF2C(param1);

            ov70_02262E94(v6, v7, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02263CC8 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0226315C * v0;

    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
        ov70_02262E3C(param0, sizeof(UnkStruct_ov70_0226315C));
        ov70_02262E8C(param0);
        break;
    case 1:
        ov70_0225E43C(param1, 0);

        {
            u32 v1;
            u32 v2;
            UnkStruct_ov70_0225CC54 * v3;
            UnkStruct_ov63_0222CC3C v4, v5;
            u32 v6, v7;
            UnkStruct_ov70_0225CA20 * v8;
            UnkStruct_ov70_02261E10 * v9;
            UnkStruct_ov70_0225C894 * v10;
            UnkStruct_ov66_0222DFF8 * v11;
            UnkStruct_ov70_022630A4 * v12;
            UnkStruct_ov70_0225CC54 * v13;

            v12 = ov70_0225DF10(param1);
            v11 = ov70_0225DEE8(param1);
            v8 = ov70_0225DEF0(param1);
            v10 = ov70_0225DF00(param1);
            v9 = ov70_0225DEF8(param1);
            v13 = ov70_0225CCB0(v8);

            if (v13 != NULL) {
                if ((ov66_0222E12C(v11) == 0) && (ov66_0222E19C(v11) == 1) && (ov66_0222E0F4(v11) == 0)) {
                    if (ov70_0225CE3C(v13) != 9) {
                        ov70_0225CDEC(v8, v13, 9);
                    }
                } else {
                    if (ov70_0225CE3C(v13) != 0) {
                        ov70_0225CDEC(v8, v13, 0);
                    }
                }
            }

            v3 = ov70_0225CCAC(v8);
            v1 = ov70_0225CD60(v3, 5);
            v2 = ov70_0225CD60(v3, 6);
            v4 = ov70_0225CD34(v3);
            v5 = ov63_0222C078(v4, v2);
            v6 = ov70_0225C8C4(v10, (v4.unk_00) / 16, (v4.unk_02) / 16);
            v7 = ov70_0225C8C4(v10, (v5.unk_00) / 16, (v5.unk_02) / 16);

            {
                u32 v14;

                v14 = ov70_0225E3E0(param1);

                if (v14 != param2) {
                    if (ov70_0225DF84(param1, v14)) {
                        ov70_0225E3D0(param1);
                    }
                }
            }

            if (v1 != 0) {
                if (ov70_0225E400(param1) == 1) {
                    UnkStruct_ov70_0225CC54 * v15;
                    u32 v16;

                    if ((v1 == 2) || (v1 == 3) || (v1 == 1)) {
                        v16 = ov70_0225E3E0(param1);

                        if (v16 != param2) {
                            v15 = ov70_0225CC70(v8, v16);

                            if (v15) {
                                if (ov70_0225CE3C(v15) == 0) {
                                    ov70_0225CDEC(v8, v15, v0->unk_00);
                                }
                            }
                        }

                        ov70_0225E3D0(param1);
                    }
                }
            } else {
                ov70_0225E43C(param1, 0);

                if (ov70_0225C930(v6) == 1) {
                    ov70_0226315C(param0, param1, param2, Unk_ov70_0226DBB8, v6);
                    ov70_0225CDEC(v8, v3, 0);
                    ov70_0225DF3C(param1, v6);
                    ov70_0225E43C(param1, 1);
                    return 0;
                }

                if (ov70_0225E45C(param1) == 1) {
                    ov70_0225CDEC(v8, v3, 0);
                    ov70_02262EC0(v12, param2, &Unk_ov70_0226DA18, NULL);
                    ov70_0225E43C(param1, 1);
                    return 0;
                }

                if (ov66_0222EE08(v11)) {
                    ov70_02262EC0(v12, param2, &Unk_ov70_0226DA08, NULL);
                    ov70_0225CDEC(v8, v3, 0);
                    ov70_0225E43C(param1, 1);
                    return 0;
                }

                if (Unk_021BF67C.unk_48 & PAD_BUTTON_A) {
                    {
                        UnkStruct_ov70_0225CC54 * v17;
                        u32 v18;
                        BOOL v19;
                        u32 v20;

                        v17 = ov70_0225CE40(v8, v3);

                        if (v17) {
                            v18 = ov70_0225CD60(v17, 5);
                            v20 = ov70_0225CD60(v17, 4);

                            if (v20 != 0xfe) {
                                v19 = ov70_0225DF64(param1, v20);

                                if ((v18 == 0) && (v19 == 0)) {
                                    ov70_02262EC0(v12, param2, &Unk_ov70_0226D9F8, NULL);
                                    ov70_0225CDEC(v8, v3, 0);
                                    ov70_0225CDEC(v8, v17, 0);
                                    ov70_0225E43C(param1, 1);
                                    return 0;
                                }
                            }
                        }
                    }

                    if (ov70_0225C990(v7) == 1) {
                        u32 v21;

                        v21 = ov70_0225CD60(v3, 6);

                        if (v21 == 0) {
                            ov70_02262484(v9, (v5.unk_00) / 16, (v5.unk_02) / 16);
                            ov70_0225DF3C(param1, v7);
                            ov70_0225E43C(param1, 1);

                            return 0;
                        }
                    }

                    if (ov70_0225C970(v7) == 1) {
                        ov70_0226315C(param0, param1, param2, Unk_ov70_0226DB28, v7);
                        ov70_0225CDEC(v8, v3, 0);
                        ov70_0225DF3C(param1, v7);
                        ov70_0225E43C(param1, 1);

                        return 0;
                    }
                }

                if ((ov70_02263120(v2) == 1)) {
                    if ((v2 == 0)) {
                        if (ov70_0225C950(v7) == 1) {
                            ov70_0226315C(param0, param1, param2, Unk_ov70_0226DAF8, v7);
                            ov70_0225CDEC(v8, v3, 0);
                            ov70_0225DF3C(param1, v7);
                            ov70_0225E43C(param1, 1);

                            return 0;
                        }
                    }

                    {
                        UnkStruct_ov70_0225CC54 * v22;
                        u32 v23;
                        u32 v24;

                        v22 = ov70_0225CE40(v8, v3);

                        if (v22) {
                            v23 = ov70_0225CD60(v22, 4);

                            if (v23 != 0xfe) {
                                if (ov70_0225E3F0(param1) == 0) {
                                    if (ov70_0225DF84(param1, v23) == 0) {
                                        ov70_0225E328(param1, v23, 1);
                                        v0->unk_00 = ov70_0225CE3C(v22);
                                        ov70_0225CDEC(v8, v22, 0);

                                        return 0;
                                    }
                                }
                            }
                        }
                    }
                }

                if (Unk_021BF67C.unk_48 & PAD_BUTTON_X) {
                    if (ov70_0225E3F0(param1) == 0) {
                        ov70_0225E328(param1, ov66_0222E338(v11), 0);
                        sub_02005748(1500);
                    } else {
                        u32 v25;

                        v25 = ov70_0225E3E0(param1);

                        if (v25 == param2) {
                            ov70_0225E3D0(param1);
                            sub_02005748(1500);
                        }
                    }

                    return 0;
                }
            }
        }
        break;
    }

    return 0;
}

static BOOL ov70_0226412C (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    u32 v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov70_0225CA20 * v2;

    v2 = ov70_0225DEF0(param1);
    v1 = ov70_0225CCAC(v2);
    v0 = ov70_0225CD60(v1, 5);

    if (v0 != 0) {
        ov70_0225E43C(param1, 1);
    }

    return 0;
}

static BOOL ov70_02264150 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    switch (ov70_02262E84(param0)) {
    case 0:

    {
        UnkStruct_ov70_0225CA20 * v0;
        UnkStruct_ov70_0225CC54 * v1;

        v0 = ov70_0225DEF0(param1);
        v1 = ov70_0225CCAC(v0);
        ov70_0225CDEC(v0, v1, 0);
    }

        ov66_0222E3E4(ov70_0225DEE8(param1), 11);
        sub_02005748(1501);

        {
            PLString * v2;

            v2 = ov70_0225E20C(param1, 1, 65);

            ov70_0225DF8C(param1, v2);
            ov70_02262E8C(param0);
        }
        break;
    case 1:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E8C(param0);
        }
        break;
    case 2:
    {
        PLString * v3;

        v3 = ov70_0225E20C(param1, 2, 25);

        ov70_0225DF8C(param1, v3);
        ov70_02262E8C(param0);
    }
    break;
    case 3:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E8C(param0);
        }
        break;
    case 4:
        ov70_0225E194(param1);
        ov70_02262E8C(param0);
        break;
    case 5:
    {
        u32 v4;
        BOOL v5 = 0;

        v4 = ov70_0225E1C4(param1);

        switch (v4) {
        case 0:
            ov70_02262E88(param0, 6);
            v5 = 1;
            break;
        case 1:
            ov70_02262E88(param0, 8);
            v5 = 1;
            break;
        default:
        case 2:
            break;
        }

        if (v5 == 1) {
            ov70_0225E1F8(param1);
            ov70_0225DFEC(param1);
        }
    }
    break;
    case 6:
        ov70_0225DF18(param1, 0);

        {
            UnkStruct_ov70_02260AD4 * v6;
            UnkStruct_ov70_0225CA20 * v7;
            UnkStruct_ov70_0225CC54 * v8;

            v7 = ov70_0225DEF0(param1);
            v8 = ov70_0225CCAC(v7);
            v6 = ov70_0225DF08(param1);

            ov70_02260B3C(v6);
            ov70_0225CDEC(v7, v8, 3);
        }

        ov70_02262E88(param0, 7);
        break;
    case 7:
    {
        UnkStruct_ov70_0225CA20 * v9;
        UnkStruct_ov70_0225CC54 * v10;

        v9 = ov70_0225DEF0(param1);
        v10 = ov70_0225CCAC(v9);

        if (ov70_0225CE38(v10) == 1) {
            ov70_0225DF34(param1, 1);
            ov70_0225DF38(param1, 0);
            ov66_0222E3E4(ov70_0225DEE8(param1), 11);

            return 1;
        }
    }
    break;
    case 8:
    {
        UnkStruct_ov70_0225CA20 * v11;
        UnkStruct_ov70_0225CC54 * v12;

        v11 = ov70_0225DEF0(param1);
        v12 = ov70_0225CCAC(v11);

        ov70_0225CDAC(v11, v12, 2, 0);
        ov70_02262E8C(param0);
    }
    break;
    case 9:

    {
        UnkStruct_ov70_0225CA20 * v13;
        UnkStruct_ov70_0225CC54 * v14;
        UnkStruct_ov70_022630A4 * v15;
        u32 v16;

        ov66_0222E3E4(ov70_0225DEE8(param1), 1);

        v13 = ov70_0225DEF0(param1);
        v15 = ov70_0225DF10(param1);
        v14 = ov70_0225CCAC(v13);
        v16 = ov70_0225CD60(v14, 5);

        if (v16 == 0) {
            ov70_0225CDEC(v13, v14, 1);
            ov70_02262E94(v15, param2, &Unk_ov70_0226D9D0, NULL);
        }
    }
    break;
    }

    return 0;
}

static BOOL ov70_02264324 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CA20 * v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov66_0222DFF8 * v2;
    u32 v3;
    UnkStruct_ov70_02264324 * v4;

    v0 = ov70_0225DEF0(param1);
    v1 = ov70_0225CC70(v0, param2);
    v3 = ov70_0225DF40(param1);
    v4 = ov70_02262E80(param0);
    v2 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        v4 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02264324));

        {
            u8 v5;
            v5 = ov70_02264B64(v3);

            switch (v5) {
            case UnkEnum_ov66_022336B8_00:
                v4->unk_08 = UnkEnum_ov66_022324D0_03;
                break;
            case UnkEnum_ov66_022336B8_01:
                v4->unk_08 = UnkEnum_ov66_022324D0_04;
                break;
            case UnkEnum_ov66_022336B8_02:
                v4->unk_08 = UnkEnum_ov66_022324D0_05;
                break;
            case UnkEnum_ov66_022336B8_03:
                v4->unk_08 = UnkEnum_ov66_022324D0_06;
                break;
            default:
                GF_ASSERT(0);
                v4->unk_08 = UnkEnum_ov66_022324D0_05;
                break;
            }
        }

        if (ov66_0222E12C(v2) == 1) {
            v4->unk_04 = 22;
            v4->unk_06 = 0;
            ov70_02262E88(param0, 5);
            break;
        }

        if (ov66_0222E004(v2) == 1) {
            v4->unk_04 = 72;
            v4->unk_06 = 1;
            ov70_02262E88(param0, 5);
            break;
        }

        {
            BOOL v6;
            u8 v7;

            v7 = ov70_02264B64(v3);

            if (ov66_02232B00(v7) == 0) {
                v4->unk_04 = 20;
                v4->unk_06 = 0;
                ov70_02262E88(param0, 3);
                break;
            }

            v6 = ov66_02232A48(v7);
            GF_ASSERT(v6);
            ov70_02262E8C(param0);
        }
        break;
    case 1:
    {
        UnkEnum_ov66_02232A84 v8;

        v8 = ov66_02232A84();

        if (v8 == UnkEnum_ov66_02232A84_01) {
            ov70_02262E88(param0, 2);

            {
                u8 v9;
                u8 v10;
                int v11;
                u8 v12[4] = {0};
                u32 v13;
                u8 v14;
                UnkStruct_ov66_0222DFF8 * v15;

                v15 = ov70_0225DEE8(param1);
                v9 = ov66_0222E964(v15);

                if ((v4->unk_08 == UnkEnum_ov66_022324D0_05) || (v4->unk_08 == UnkEnum_ov66_022324D0_06)) {
                    v14 = 0;

                    for (v11 = 0; v11 < 4; v11++) {
                        v13 = ov66_0222E974(v15, v11);

                        if (v13 != 0xffffffff) {
                            if (v14 < 4) {
                                v12[v14] = v13;
                            }

                            v14++;
                        }
                    }
                } else {
                    v12[0] = param2;
                }

                ov66_0222EA10(v15, v4->unk_08, v9, v12[0], v12[1], v12[2], v12[3], 0);
            }
        } else if (v8 == UnkEnum_ov66_02232A84_02) {
            v4->unk_04 = 20;
            v4->unk_06 = 0;
            ov70_02262E88(param0, 3);
        }
    }
    break;
    case 2:
    {
        u32 v16;
        u32 v17;
        u32 v18;

        v16 = ov70_02264BCC(v3);
        v17 = ov70_02264C34(v3);

        ov70_0225DF34(param1, 1);
        ov70_0225DF38(param1, v16);

        ov66_0222E3E4(ov70_0225DEE8(param1), v17);
        ov66_0222EF94(v2, v4->unk_08);

        switch (v4->unk_08) {
        case UnkEnum_ov66_022324D0_03:
        case UnkEnum_ov66_022324D0_04:
            v18 = 5;
            break;
        case UnkEnum_ov66_022324D0_05:
            v18 = 3;
            break;
        case UnkEnum_ov66_022324D0_06:
            v18 = 4;
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        ov66_0222F040(v2, v18);

        {
            UnkStruct_ov63_0222CC3C v19;
            UnkStruct_ov70_02263910 * v20;
            int v21;

            v21 = ov70_0225CD60(v1, 6);
            v21 = ov63_0222C0AC(v21);
            v20 = ov70_0225DEEC(param1);
            v19 = ov70_0225CD34(v1);

            v20->unk_06 = 1;
            v20->unk_00 = (v19.unk_00) / 16;
            v20->unk_02 = (v19.unk_02) / 16;
            v20->unk_04 = v21;
            v20->unk_08 = v4->unk_08;
        }

        ov70_02262E64(param0);

        return 1;
    }
    break;
    case 3:
    {
        u8 v22;
        u8 v23;

        v23 = ov70_0225CD60(v1, 6);

        switch (v23) {
        case 0:
            v22 = 6;
            break;
        case 1:
            v22 = 5;
            break;
        case 2:
            v22 = 8;
            break;
        case 3:
            v22 = 7;
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        ov70_0225CDEC(v0, v1, v22);
        ov70_02262E8C(param0);
    }
    break;
    case 4:
    {
        BOOL v24;

        v24 = ov70_0225CE38(v1);

        if (v24 == 1) {
            v4->unk_00 = 8;
            ov70_02262E88(param0, 7);
        }
    }
    break;
    case 5:
    {
        u8 v25;

        v25 = ov70_0225CD60(v1, 6);
        v25 = ov63_0222C0AC(v25);

        ov70_0225CDAC(v0, v1, 2, v25);
        ov70_02262E8C(param0);
    }
    break;
    case 6:
    {
        u32 v26;

        v26 = ov70_0225CD60(v1, 5);

        if (v26 == 0) {
            v4->unk_00 = 8;
            ov70_02262E88(param0, 7);
        }
    }
    break;
    case 7:
        v4->unk_00--;

        if (v4->unk_00 <= 0) {
            PLString * v27;

            ov70_0225E27C(param1, v4->unk_08, 0);
            v27 = ov70_0225E20C(param1, v4->unk_06, v4->unk_04);
            ov70_0225DF8C(param1, v27);
            ov70_02262E8C(param0);
        }
        break;
    case 8:
    {
        BOOL v28;

        v28 = ov70_0225DFAC(param1);

        if (v28) {
            ov70_02262E64(param0);
            ov70_0225CDEC(v0, v1, 1);
            ov70_0225DFEC(param1);

            {
                UnkStruct_ov70_022630A4 * v29;

                v29 = ov70_0225DF10(param1);
                ov70_02262E94(v29, param2, &Unk_ov70_0226D9D0, NULL);
            }
        }
    }
    break;
    }

    return 0;
}

static BOOL ov70_022646C8 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_022646C8 * v0;
    UnkStruct_ov70_022630A4 * v1;
    UnkStruct_ov70_0225CA20 * v2;
    UnkStruct_ov70_0225CC54 * v3;
    UnkStruct_ov66_0222DFF8 * v4;

    v0 = ov70_02262E80(param0);
    v1 = ov70_0225DF10(param1);
    v2 = ov70_0225DEF0(param1);
    v3 = ov70_0225CCAC(v2);
    v4 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_022646C8));

        ov70_0225CDEC(v2, v3, 0);
        ov70_02262E8C(param0);

        v0->unk_00.unk_00 = 0;
        {
            u32 v5;

            v5 = ov70_0225DF40(param1);

            switch (v5) {
            case 30:
                v0->unk_00.unk_01 = UnkEnum_ov66_02232F38_00;
                v0->unk_00.unk_02 = UnkEnum_ov66_022324D0_00;
                v0->unk_00.unk_03 = 2;
                break;
            case 31:
                v0->unk_00.unk_01 = UnkEnum_ov66_02232F38_01;
                v0->unk_00.unk_02 = UnkEnum_ov66_022324D0_01;
                v0->unk_00.unk_03 = 3;
                break;
            case 32:
                v0->unk_00.unk_01 = UnkEnum_ov66_02232F38_02;
                v0->unk_00.unk_02 = UnkEnum_ov66_022324D0_02;
                v0->unk_00.unk_03 = 4;
                break;
            default:
                GF_ASSERT(0);
                break;
            }

            ov66_0222E3E4(ov70_0225DEE8(param1), 12);
        }

        ov70_02262EC0(v1, param2, &Unk_ov70_0226DA20, &v0->unk_00);
        break;
    case 1:
        if (v0->unk_00.unk_00 == 8) {
            ov70_02262E88(param0, 2);
        } else {
            ov70_02262E88(param0, 3);
        }
        break;
    case 2:
    {
        u32 v6;
        u32 v7;
        u32 v8;
        u32 v9;

        v8 = ov70_0225DF40(param1);

        switch (v8) {
        case 30:
            v6 = 3;
            v9 = 0;
            break;
        case 31:
            v6 = 4;
            v9 = 1;
            break;
        case 32:
            v6 = 5;
            v9 = 2;
            break;
        }

        ov70_0225DF34(param1, 1);
        ov70_0225DF38(param1, v6);

        ov66_0222EF94(v4, v0->unk_00.unk_02);
        ov66_0222F030(v4);
        ov66_0222F040(v4, v9);

        {
            UnkStruct_ov63_0222CC3C v10;
            UnkStruct_ov70_02263910 * v11;
            int v12;

            v12 = ov70_0225CD60(v3, 6);
            v12 = ov63_0222C0AC(v12);
            v11 = ov70_0225DEEC(param1);
            v10 = ov70_0225CD34(v3);

            v11->unk_06 = 2;
            v11->unk_00 = (v10.unk_00) / 16;
            v11->unk_02 = (v10.unk_02) / 16;
            v11->unk_04 = v12;
            v11->unk_08 = v0->unk_00.unk_02;
        }

        ov66_0222E2C4(ov70_0225DEE8(param1), 1);
        ov70_02262E64(param0);

        return 1;
    }
    break;
    case 3:
    {
        UnkStruct_ov63_0222CC3C v13;
        int v14;

        v14 = ov70_0225CD60(v3, 6);
        v14 = ov63_0222C0AC(v14);

        ov70_0225CDAC(v2, v3, 2, v14);
        ov70_02262E8C(param0);
    }
    break;
    case 4:
    {
        u32 v15;

        v15 = ov70_0225CD60(v3, 5);

        if (v15 == 0) {
            ov70_02262E8C(param0);
        }
    }
    break;
    case 5:
    {
        PLString * v16;
        u32 v17;
        BOOL v18 = 1;

        switch (v0->unk_00.unk_00) {
        case 0:
            ov70_0225E27C(param1, v0->unk_00.unk_02, 0);
            v17 = 4;
            break;
        case 1:
            v17 = 5;
            break;
        case 2:
            ov70_0225E27C(param1, v0->unk_00.unk_02, 0);
            v17 = 6;
            break;
        case 3:
            v17 = 19;
            break;
        case 4:
            v17 = 17;
            break;
        case 6:
            v17 = 29;
            break;
        case 7:
            v17 = 7;
            break;
        default:
        case 5:
            v18 = 0;
            break;
        }

        if (v18) {
            v16 = ov70_0225E20C(param1, 0, v17);
            ov70_0225DF8C(param1, v16);
            ov70_02262E8C(param0);
        } else {
            ov70_02262E88(param0, 7);
        }
    }
    break;
    case 6:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_0225DFEC(param1);
            ov70_02262E8C(param0);
        }
        break;
    case 7:
        ov70_02262E64(param0);
        ov66_0222E3E4(ov70_0225DEE8(param1), 1);
        ov70_0225CDEC(v2, v3, 1);

        {
            UnkStruct_ov70_022630A4 * v19;

            v19 = ov70_0225DF10(param1);
            ov70_02262E94(v19, param2, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02264974 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_02264974 * v0;
    UnkStruct_ov70_022630A4 * v1;
    UnkStruct_ov70_0225CA20 * v2;
    UnkStruct_ov70_0225CC54 * v3;
    UnkStruct_ov66_0222DFF8 * v4;
    PLString * v5;

    v0 = ov70_02262E80(param0);
    v1 = ov70_0225DF10(param1);
    v2 = ov70_0225DEF0(param1);
    v3 = ov70_0225CCAC(v2);
    v4 = ov70_0225DEE8(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02264324));
        ov66_0222E3E4(ov70_0225DEE8(param1), 13);

        if ((ov66_0222E12C(v4) == 1)) {
            v0->unk_00 = 122;
            ov70_02262E88(param0, 2);
            break;
        }

        if ((ov66_0222E19C(v4) == 1)) {
            v0->unk_02 = 10;
        } else {
            if (ov66_0222E0DC(v4) == 1) {
                v0->unk_00 = 98;
                ov70_02262E88(param0, 2);
                break;
            } else {
                v0->unk_02 = 9;
            }
        }

        ov70_02262E88(param0, 1);
        break;
    case 1:
    {
        u32 v6;
        u32 v7;

        if (v0->unk_02 == 9) {
            v6 = 9;
        } else {
            v6 = 10;

            ov66_0222E10C(v4);
        }

        ov70_0225DF34(param1, 1);
        ov70_0225DF38(param1, v6);
        ov66_0222E500(v4, 23, DWC_LOBBY_INVALID_USER_ID);

        {
            UnkStruct_ov63_0222CC3C v8;
            UnkStruct_ov70_02263910 * v9;
            int v10;

            v10 = ov70_0225CD60(v3, 6);
            v10 = ov63_0222C0AC(v10);
            v9 = ov70_0225DEEC(param1);
            v8 = ov70_0225CD34(v3);

            v9->unk_06 = 3;
            v9->unk_00 = (v8.unk_00) / 16;
            v9->unk_02 = (v8.unk_02) / 16;
            v9->unk_04 = v10;
            v9->unk_08 = 0;
        }

        ov70_02262E64(param0);

        return 1;
    }
    break;
    case 2:
    {
        UnkStruct_ov63_0222CC3C v11;
        int v12;

        v12 = ov70_0225CD60(v3, 6);
        v12 = ov63_0222C0AC(v12);

        ov70_0225CDAC(v2, v3, 2, v12);
        ov70_02262E8C(param0);
    }
    break;
    case 3:
    {
        u32 v13;

        v13 = ov70_0225CD60(v3, 5);

        if (v13 == 0) {
            ov70_02262E8C(param0);
        }
    }
    break;
    case 4:
        v5 = ov70_0225E20C(param1, 1, v0->unk_00);
        ov70_0225DF8C(param1, v5);
        ov70_02262E8C(param0);
        break;
    case 5:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_0225DFEC(param1);
            ov70_02262E8C(param0);
        }
        break;
    case 6:
        ov70_02262E64(param0);
        ov66_0222E3E4(ov70_0225DEE8(param1), 1);
        ov70_0225CDEC(v2, v3, 1);

        {
            UnkStruct_ov70_022630A4 * v14;

            v14 = ov70_0225DF10(param1);
            ov70_02262E94(v14, param2, &Unk_ov70_0226D9D0, NULL);
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

static u32 ov70_02264B64 (u32 param0)
{
    u32 v0;

    switch (param0) {
    case 22:
    case 23:
    case 24:
    case 25:
        v0 = UnkEnum_ov66_022336B8_02;
        break;
    case 26:
    case 27:
    case 28:
    case 29:
        v0 = UnkEnum_ov66_022336B8_03;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
        v0 = UnkEnum_ov66_022336B8_00;
        break;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
        v0 = UnkEnum_ov66_022336B8_01;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

static u32 ov70_02264BCC (u32 param0)
{
    u32 v0;

    switch (param0) {
    case 22:
    case 23:
    case 24:
    case 25:
        v0 = 1;
        break;
    case 26:
    case 27:
    case 28:
    case 29:
        v0 = 2;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
        v0 = 6;
        break;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
        v0 = 7;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

static u32 ov70_02264C34 (u32 param0)
{
    u32 v0;

    switch (param0) {
    case 22:
    case 23:
    case 24:
    case 25:
        v0 = 7;
        break;
    case 26:
    case 27:
    case 28:
    case 29:
        v0 = 8;
        break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
        v0 = 5;
        break;
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
        v0 = 6;
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
        break;
    }

    return v0;
}

static BOOL ov70_02264C9C (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    switch (ov70_02262E84(param0)) {
    case 0:
    {
        PLString * v0;
        UnkStruct_ov66_0222DFF8 * v1;

        v1 = ov70_0225DEE8(param1);

        if (ov66_0222E12C(v1) == 1) {
            v0 = ov70_0225E20C(param1, 1, 3);
        } else {
            if (ov66_0222E170(v1) == 1) {
                v0 = ov70_0225E20C(param1, 1, 78);
            } else {
                v0 = ov70_0225E20C(param1, 1, 2);
            }
        }

        ov70_0225DF8C(param1, v0);
        sub_02005748(1500);
        ov70_02262E8C(param0);
    }
    break;
    case 1:
        if (ov70_0225DFAC(param1)) {
            ov70_0225DFEC(param1);
            {
                UnkStruct_ov70_0225CA20 * v2;
                UnkStruct_ov70_0225CC54 * v3;

                v2 = ov70_0225DEF0(param1);
                v3 = ov70_0225CCAC(v2);

                ov70_0225CDEC(v2, v3, 1);
            }
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov70_02264D38 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_02265104 * v0;
    UnkStruct_ov70_02261E10 * v1;
    UnkStruct_ov70_0225CA20 * v2;
    UnkStruct_ov70_02260AD4 * v3;
    UnkStruct_ov66_0222DFF8 * v4;
    BOOL v5;
    PLString * v6;

    v2 = ov70_0225DEF0(param1);
    v1 = ov70_0225DEF8(param1);
    v3 = ov70_0225DF08(param1);
    v4 = ov70_0225DEE8(param1);
    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
    {
        u32 v7;

        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02265104));
        v0->unk_0C = ov70_0225CC70(v2, param2);

        v7 = ov70_0225DF40(param1);

        switch (v7) {
        case 33:
            v0->unk_06 = 2;
            break;
        case 34:
            v0->unk_06 = 1;
            break;
        case 35:
            v0->unk_06 = 0;
            break;
        default:
            GF_ASSERT(0);
            break;
        }
    }
        ov70_02262E88(param0, 1);
        break;
    case 1:
        if (ov66_0222E170(v4) == 0) {
            v0->unk_04 = 8;
            ov70_02262E88(param0, 6);
        } else {
            if (ov66_0222E12C(v4) == 1) {
                v0->unk_04 = 10;
                ov70_02262E88(param0, 6);
            } else {
                v0->unk_00 = ov66_0222EBB4(v4, param2, v0->unk_06);

                if (v0->unk_00 != 0xffffffff) {
                    ov70_02262E88(param0, 2);
                    v6 = ov70_0225E20C(param1, 0, 31);
                    ov70_0225DF9C(param1, v6);
                    ov70_0225DFBC(param1);
                } else {
                    v0->unk_04 = 9;
                    ov70_02262E88(param0, 6);
                }
            }
        }
        break;
    case 2:
        if ((Unk_021BF67C.unk_48 & PAD_BUTTON_B) || (Unk_021BF67C.unk_48 & PAD_KEY_DOWN)) {
            ov66_0222EBC4(v4, param2);
            ov70_0225DFCC(param1);
            v0->unk_0A = 6;
            v0->unk_04 = 15;
            ov70_02262E88(param0, 12);
        } else {
            if (ov70_02265104(v0, v1) == 1) {
                ov70_0225DFCC(param1);
                ov66_0222EC40(v4);

                v0->unk_08 = 0;

                ov66_0222E3E4(ov70_0225DEE8(param1), 10);
                ov70_0225DF44(param1);
                ov70_02260B3C(v3);
                ov70_0225D030(v0->unk_0C, 0);
                ov70_0225D06C(v0->unk_0C, 1);
                sub_02005748(1450);
                ov70_0225E410(param1);

                v0->unk_0A = 3;

                ov70_02262E88(param0, 12);
                ov66_0222F000(v4);
            }
        }
        break;
    case 3:
        v5 = ov70_02265144(v0, v1, v3);

        if (v5 == 1) {
            ov70_0225D06C(v0->unk_0C, 0);
            ov70_0225D060(v0->unk_0C, 2);
            ov70_0225D0B4(v0->unk_0C, 1 << 3);
            ov70_02262E88(param0, 4);

            v0->unk_08 = 0;
        }
        break;
    case 4:
        ov70_02265344(v0, v1, param1);
        ov70_022650E4(v0, v3);

        v5 = ov70_022652BC(v0, v1);

        if (v5 == 1) {
            ov70_02262E88(param0, 5);
            ov70_0225E43C(param1, 0);
        }
        break;
    case 5:
    {
        VecFx32 v8;

        ov70_02265344(v0, v1, param1);
        ov70_022650E4(v0, v3);
        ov70_0225D054(v0->unk_0C, &v8);
        ov70_02265370(v0, v1, param1);

        if (v8.x < (FX32_CONST(96))) {
            v0->unk_0B = 0;
            ov70_02262E88(param0, 13);
        }
    }
    break;
    case 6:
        ov70_0225CDAC(v2, v0->unk_0C, 2, 1);
        ov70_02262E88(param0, 7);
        break;
    case 7:
        if (ov70_0225CD60(v0->unk_0C, 5) == 0) {
            ov70_02262E88(param0, v0->unk_04);
        }
        break;
    case 8:
        v6 = ov70_0225E20C(param1, 0, 30);
        ov70_0225DF8C(param1, v6);
        v0->unk_04 = 15;
        ov70_02262E88(param0, 11);
        break;
    case 9:
        v6 = ov70_0225E20C(param1, 0, 32);
        ov70_0225DF8C(param1, v6);
        v0->unk_04 = 15;
        ov70_02262E88(param0, 11);
        break;
    case 10:
        v6 = ov70_0225E20C(param1, 0, 33);
        ov70_0225DF8C(param1, v6);
        v0->unk_04 = 15;
        ov70_02262E88(param0, 11);
        break;
    case 11:
        if (ov70_0225DFAC(param1) == 1) {
            ov70_02262E88(param0, v0->unk_04);
        }
        break;
    case 12:
        ov70_0225DFEC(param1);
        ov70_02262E88(param0, v0->unk_0A);
        break;
    case 13:
        ov70_02265344(v0, v1, param1);
        ov70_02265370(v0, v1, param1);
        v0->unk_0B++;

        if (v0->unk_0B > 120) {
            ov70_0225DF34(param1, 1);
            ov70_0225DF38(param1, 0);
            ov70_0225DFEC(param1);
            ov66_0222E3E4(ov70_0225DEE8(param1), 11);
            ov70_02262E88(param0, 14);
        }
        break;
    case 14:
        ov70_02265344(v0, v1, param1);
        ov70_02265370(v0, v1, param1);
        break;
    case 15:
    {
        UnkStruct_ov70_022630A4 * v9;

        v9 = ov70_0225DF10(param1);

        ov70_0225DFEC(param1);
        ov70_0225CDEC(v2, v0->unk_0C, 1);
        ov70_02262E64(param0);
        ov70_02262E94(v9, param2, &Unk_ov70_0226D9D0, NULL);
    }
    break;
    }

    return 0;
}

static void ov70_022650E4 (UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02260AD4 * param1)
{
    VecFx32 v0;

    ov70_0225D054(param0->unk_0C, &v0);
    ov70_02260B18(param1, v0.x, v0.y, v0.z);
}

static BOOL ov70_02265104 (const UnkStruct_ov70_02265104 * param0, const UnkStruct_ov70_02261E10 * param1)
{
    VecFx32 v0;
    VecFx32 v1;
    u32 v2, v3;

    ov66_0222EC04(param0->unk_00, &v2, &v3);
    ov70_02262318(param1, v2, v3, &v1);
    ov70_0225D054(param0->unk_0C, &v0);

    if ((v0.x + (FX32_CONST(16))) >= v1.x) {
        return 1;
    }

    return 0;
}

static BOOL ov70_02265144 (UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_02260AD4 * param2)
{
    VecFx32 v0;
    VecFx32 v1;
    u32 v2, v3;
    UnkStruct_ov63_0222CC3C v4;
    VecFx32 v5;
    u16 v6;
    BOOL v7;

    param0->unk_08++;

    if (param0->unk_08 < 24) {
        v7 = 0;
    } else {
        param0->unk_08 = 24;
        v7 = 1;
    }

    ov66_0222EC04(param0->unk_00, &v2, &v3);
    ov70_02262318(param1, v2, v3, &v1);

    v4 = ov70_0225CD34(param0->unk_0C);
    ov70_0225C700(&v4, &v0);

    v5.x = 0;
    v5.y = FX_Div(FX_Mul(FX32_CONST(param0->unk_08), (v1.y - v0.y)), FX32_CONST(24));

    if (param0->unk_08 >= 4) {
        v5.z = FX_Div(FX_Mul(FX32_CONST(param0->unk_08 - 4), (v1.z - v0.z)), FX32_CONST(20));
    } else {
        v5.z = 0;
    }

    VEC_Add(&v5, &v0, &v5);
    ov70_02260B18(param2, v5.x, v5.y, v5.z);

    v6 = (param0->unk_08 * 0x7fff) / 24;
    v5.y += FX_Mul(FX_SinIdx(v6), (FX32_CONST(16)));

    ov70_0225D048(param0->unk_0C, &v5);

    return v7;
}

static BOOL ov70_022652BC (UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1)
{
    s32 v0;
    BOOL v1;
    u16 v2;
    fx32 v3;
    VecFx32 v4;

    param0->unk_08++;

    if (param0->unk_08 < 16) {
        v1 = 0;
    } else {
        param0->unk_08 = 16;
        v1 = 1;
    }

    v0 = param0->unk_08 % 8;
    v2 = (v0 * 0x7fff) / 8;
    v3 = FX_Mul(FX_SinIdx(v2), (FX32_CONST(3)));

    ov70_0225D054(param0->unk_0C, &v4);
    v4.y += v3;
    ov70_0225D048(param0->unk_0C, &v4);

    return v1;
}

static void ov70_02265344 (UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_0225DEE8 * param2)
{
    VecFx32 v0;
    u32 v1;
    u32 v2;

    ov66_0222EC04(param0->unk_00, &v2, &v1);
    ov70_02262318(param1, v2, v1, &v0);
    ov70_0225D048(param0->unk_0C, &v0);
}

static void ov70_02265370 (UnkStruct_ov70_02265104 * param0, UnkStruct_ov70_02261E10 * param1, UnkStruct_ov70_0225DEE8 * param2)
{
    VecFx32 v0;
    fx32 v1;
    u32 v2, v3;

    ov66_0222EC04(param0->unk_00, &v2, &v3);

    if (ov70_0225E420(param2, v2) == 1) {
        if (ov70_02263334(&param0->unk_10) == 0) {
            ov70_02263270(&param0->unk_10);
        }
    } else {
        if (ov70_02263334(&param0->unk_10) == 1) {
            ov70_0226332C(&param0->unk_10);
        }
    }

    v1 = ov70_02263290(&param0->unk_10);

    ov70_0225D054(param0->unk_0C, &v0);
    v0.y += v1;
    ov70_0225D048(param0->unk_0C, &v0);
}

static void ov70_022653DC (UnkStruct_ov70_022653DC * param0, UnkStruct_ov70_0225DEE8 * param1)
{
    int v0;
    const PLString * v1;

    ov70_0225E00C(param1, 18);

    for (v0 = 1; v0 < 18; v0++) {
        ov70_0225E30C(param1, 0, v0);
        v1 = ov70_0225E20C(param1, 1, 6);
        ov70_0225E044(param1, v1, v0);
    }

    v1 = ov70_0225E20C(param1, 1, 7);
    ov70_0225E044(param1, v1, 0);

    param0->unk_08 = Unk_ov70_0226DA98;
    param0->unk_08.unk_00 = ov70_0225E054(param1);
}

static void ov70_02265450 (UnkStruct_ov70_022653DC * param0, UnkStruct_ov70_0225DEE8 * param1)
{
    ov70_0225E034(param1);
}

static BOOL ov70_0226545C (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0226545C * v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov66_0222DFF8 * v2;
    UnkStruct_ov70_0225CA20 * v3;
    UnkStruct_ov70_022630A4 * v4;

    v2 = ov70_0225DEE8(param1);
    v3 = ov70_0225DEF0(param1);
    v1 = ov70_0225CC70(v3, param2);
    v0 = ov70_02262E80(param0);
    v4 = ov70_0225DF10(param1);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_0226545C));
        ov70_02262E88(param0, 1);
    case 1:
    {
        BOOL v5, v6;

        v5 = ov66_0222E02C(v2, param2);
        v6 = ov66_0222E34C(v2, param2);

        if ((v5 == 1) || (v6 == 1)) {
            ov70_02262E88(param0, 2);
        }
    }
    break;
    case 2:
    {
        const UnkStruct_ov66_0222E71C * v7;
        u32 v8;

        v7 = ov66_0222E374(v2, param2);

        if (v7 == NULL) {
            ov70_02262E88(param0, 1);
            break;
        }

        if (ov66_0222E8D8(v7) == 1) {
            v1 = ov70_0225CBB8(v3, param2, ov66_0222E858(v7));

            if (v1) {
                ov70_0225D0C0(v1, 0);

                ov70_02262E88(param0, 3);
            }
        }
    }
    break;
    case 3:
    {
        u32 v9;
        const UnkStruct_ov66_0222E71C * v10;
        BOOL v11;

        v10 = ov66_0222E374(v2, param2);

        if (v10 == NULL) {
            if (v1 != NULL) {
                ov70_0225CC54(v1);
            }

            ov70_02262E88(param0, 1);
            break;
        }

        v9 = ov66_0222E71C(v10);
        v11 = ov70_02265CCC(&v0->unk_00, v2, param1, v1, v9, 1);

        if (v11) {
            ov70_02262E88(param0, 5);
            ov70_0225CDEC(v3, v1, 0);
            ov70_0225DF6C(param1, param2, 1);
            ov70_0225DF4C(param1, param2, 1);
            ov70_0225D030(v1, 0);
            ov70_02262EC0(v4, param2, &Unk_ov70_0226D9F0, &v0->unk_00);
        } else {
            ov70_0225CDEC(v3, v1, 4);
            ov70_02262E88(param0, 4);
            ov70_0225DF4C(param1, param2, 1);
            ov70_0225DF6C(param1, param2, 1);
            ov70_0225D0C0(v1, 1);
        }
    }
    break;
    case 4:
    {
        BOOL v12;

        v12 = ov70_0225CE38(v1);

        if (v12 == 1) {
            ov70_02262E8C(param0);
        }
    }
    break;
    case 5:
        ov70_02262E64(param0);
        ov70_0225CDEC(v3, v1, 2);
        ov70_02262E94(v4, param2, &Unk_ov70_0226D9D8, NULL);
        ov70_0225DF4C(param1, param2, 0);
        ov70_0225DF6C(param1, param2, 0);
        break;
    }

    return 0;
}

static BOOL ov70_02265630 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0226545C * v0;
    UnkStruct_ov70_0225CC54 * v1;
    UnkStruct_ov70_0225CC54 * v2;
    UnkStruct_ov66_0222DFF8 * v3;
    UnkStruct_ov70_0225CA20 * v4;
    UnkStruct_ov70_022630A4 * v5;

    v3 = ov70_0225DEE8(param1);
    v4 = ov70_0225DEF0(param1);
    v5 = ov70_0225DF10(param1);
    v1 = ov70_0225CC70(v4, param2);
    v2 = ov70_0225CCAC(v4);
    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_0226545C));
        ov70_02262E88(param0, 1);
    case 1:
        if (ov66_0222E058(v3, param2)) {
            ov70_02262E64(param0);
            ov70_0225CDEC(v4, v1, 0);
            ov70_0225DF6C(param1, param2, 1);
            ov70_0225DF4C(param1, param2, 1);
            ov70_02262E94(v5, param2, &Unk_ov70_0226D9E0, NULL);
            break;
        }

        if (ov66_0222E09C(v3, param2)) {
            (void)0;
        }

        if (ov66_0222E170(v3) == 1) {
            u32 v6;

            v6 = ov66_0222EBA4(v3, param2);

            if (v6 != 0xffffffff) {
                ov70_0225CDEC(v4, v1, 0);
                ov70_0225DF6C(param1, param2, 1);
                ov70_0225DF4C(param1, param2, 1);
                ov70_0225D030(v1, 0);
                ov70_02262E64(param0);
                ov70_02262E94(v5, param2, &Unk_ov70_0226D9E8, &v0->unk_00);
                break;
            }
        }

        {
            u32 v7;
            const UnkStruct_ov66_0222E71C * v8;
            BOOL v9;

            v8 = ov66_0222E374(v3, param2);
            v7 = ov66_0222E71C(v8);
            v9 = ov70_02265CCC(&v0->unk_00, v3, param1, v1, v7, 0);

            if (v9) {
                ov70_0225CDEC(v4, v1, 0);
                ov70_0225DF6C(param1, param2, 1);
                ov70_0225DF4C(param1, param2, 1);
                ov70_0225D030(v1, 0);
                ov70_02262EC0(v5, param2, &Unk_ov70_0226D9F0, &v0->unk_00);
                break;
            }

            if (ov66_0222EB54(v3, param2) == 1) {
                ov70_0225CDEC(v4, v1, 0);
                ov70_0225DF4C(param1, param2, 1);
                ov70_02262EC0(v5, param2, &Unk_ov70_0226DA18, NULL);
                break;
            }
        }
        break;
    }

    return 0;
}

static BOOL ov70_022657D0 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_0225CC54 * v0;
    UnkStruct_ov70_0225CA20 * v1;

    v1 = ov70_0225DEF0(param1);
    v0 = ov70_0225CC70(v1, param2);

    switch (ov70_02262E84(param0)) {
    case 0:
        ov70_0225CDEC(v1, v0, 3);
        ov70_02262E8C(param0);
        break;
    case 1:
    {
        BOOL v2;

        v2 = ov70_0225CE38(v0);

        if (v2) {
            ov70_02262E8C(param0);
        }
    }
    break;
    case 2:
        ov70_0225CC54(v0);

        {
            UnkStruct_ov70_022630A4 * v3;

            v3 = ov70_0225DF10(param1);
            ov70_02262E94(v3, param2, &Unk_ov70_0226DA10, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02265840 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_02265840 * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_02261E10 * v2;
    UnkStruct_ov66_0222DFF8 * v3;

    v3 = ov70_0225DEE8(param1);
    v1 = ov70_0225DEF0(param1);
    v2 = ov70_0225DEF8(param1);
    v0 = ov70_02262E80(param0);

    switch (ov70_02262E84(param0)) {
    case 0:
    {
        v0 = ov70_02262E3C(param0, sizeof(UnkStruct_ov70_02265840));
        v0->unk_00 = ov70_0225CC70(v1, param2);
        v0->unk_04 = ov66_0222EBA4(v3, param2);

        GF_ASSERT(v0->unk_04 != 0xffffffff);

        ov66_0222EC04(v0->unk_04, &v0->unk_04, &v0->unk_08);
        ov70_0225CDEC(v1, v0->unk_00, 3);
        ov70_02262E88(param0, 1);
    }
    break;

    case 1:
        if (ov70_0225CE38(v0->unk_00)) {
            {
                VecFx32 v4;

                ov70_02262318(v2, v0->unk_04, v0->unk_08, &v4);
                v0->unk_10 = v4.x + (FX32_CONST(-16));
                ov70_0225D054(v0->unk_00, &v4);
                v0->unk_0C = v4.y;
                v0->unk_14 = 0;
            }

            {
                UnkStruct_ov63_0222CC3C v5 = {0};
                ov70_0225CCB4(v0->unk_00, v5);
            }

            sub_02005748(1615);

            ov70_0225D084(v0->unk_00, 1);
            ov70_02262E88(param0, 2);
        }
        break;
    case 2:
    {
        VecFx32 v6;
        VecFx32 v7;
        BOOL v8 = 0;

        v0->unk_14++;

        if (v0->unk_14 >= 24) {
            v0->unk_14 = 24;
            v8 = 1;
        }

        ov70_02262318(v2, v0->unk_04, v0->unk_08, &v6);

        v7.z = v6.z;
        v7.x = v0->unk_10;
        v7.y = FX_Div(FX_Mul(FX32_CONST(v0->unk_14), (v6.y - v0->unk_0C)), FX32_CONST(24));
        v7.y += v0->unk_0C;

        ov70_0225D048(v0->unk_00, &v7);

        if (v8 == 1) {
            ov70_0225D084(v0->unk_00, 0);
            ov70_0225D0B4(v0->unk_00, 1 << 3);
            ov70_0225D060(v0->unk_00, 2);
            ov70_02262E88(param0, 3);
        }
    }
    break;

    case 3:
    {
        VecFx32 v9;
        fx32 v10;

        if (ov70_0225E420(param1, v0->unk_04) == 1) {
            if (ov70_02263334(&v0->unk_18) == 0) {
                ov70_02263270(&v0->unk_18);
            }
        } else {
            if (ov70_02263334(&v0->unk_18) == 1) {
                ov70_0226332C(&v0->unk_18);
            }
        }

        v10 = ov70_02263290(&v0->unk_18);
        ov70_02262318(v2, v0->unk_04, v0->unk_08, &v9);
        v9.y += v10;
        ov70_0225D048(v0->unk_00, &v9);

        if (ov66_0222EB7C(v3, v0->unk_04) == 2) {
            ov70_02262E88(param0, 4);
        }
    }
    break;
    case 4:
        ov70_0225CC54(v0->unk_00);
        ov70_02262E64(param0);

        {
            UnkStruct_ov70_022630A4 * v11;

            v11 = ov70_0225DF10(param1);
            ov70_02262E94(v11, param2, &Unk_ov70_0226DA10, NULL);
        }
        break;
    }

    return 0;
}

static BOOL ov70_02265A84 (UnkStruct_ov70_02263344 * param0, UnkStruct_ov70_0225DEE8 * param1, u32 param2)
{
    UnkStruct_ov70_02265CCC * v0;
    UnkStruct_ov70_0225CA20 * v1;
    UnkStruct_ov70_0225CC54 * v2;
    UnkStruct_ov70_0225CC54 * v3;
    UnkStruct_ov66_0222DFF8 * v4;

    v0 = ov70_02262E38(param0);
    v4 = ov70_0225DEE8(param1);
    v1 = ov70_0225DEF0(param1);
    v2 = ov70_0225CC70(v1, param2);
    v3 = ov70_0225CCAC(v1);

    switch (ov70_02262E84(param0)) {
    case 0:
        if (v0->unk_04 == 0) {
            ov70_02262E8C(param0);
        } else {
            ov70_02262E88(param0, 3);
        }
        break;
    case 1:
        ov70_0225CDEC(v1, v2, 3);
        ov70_02262E8C(param0);
        break;
    case 2:
    case 7:
    case 9:
    {
        BOOL v5;

        v5 = ov70_0225CE38(v2);

        if (v5 == 1) {
            ov70_02262E8C(param0);
        }
    }
    break;
    case 3:

    {
        UnkStruct_ov63_0222CC3C v6;

        v6 = ov70_0225CD34(v2);
        ov70_0225D03C(v2, &v6);
    }

        if (ov70_0225D0CC(v2) == 0) {
            ov70_0225D0C0(v2, 1);
        }

        ov70_0225CDEC(v1, v2, 4);
        ov70_02262E8C(param0);
        break;
    case 4:
    {
        BOOL v7;

        v7 = ov70_0225CE38(v2);

        if (v7 == 1) {
            ov70_02262E8C(param0);
            ov70_0225CDEC(v1, v2, 0);
            ov70_0225DF4C(param1, param2, 0);
            ov70_0225DF6C(param1, param2, 0);
        }
    }
    break;
    case 5:
    {
        const UnkStruct_ov66_0222E71C * v8;
        const UnkStruct_ov66_0222E71C * v9;
        BOOL v10 = 0;

        if ((v0->unk_03 == 1) && (ov66_0222EEAC(v4) == 0)) {
            u32 v11;
            u32 v12;
            u32 v13;

            v9 = ov66_0222E3BC(v4);
            v13 = ov66_0222E71C(v9);

            if (v13 == 9) {
                ov66_0222EEA0(v4);

                v12 = ov70_0225CD60(v2, 6);
                v11 = ov63_0222C0AC(v12);

                ov70_0225CDAC(v1, v3, 0, v11);
            }
        }

        v8 = ov66_0222E374(v4, param2);

        do {
            if (v8 == NULL) {
                v10 = 1;
                break;
            }

            if ((v0->unk_03 == 1)) {
                if (ov66_0222EDF4(v4) == 0) {
                    v10 = 1;
                    break;
                }
            }

            if (ov66_0222E09C(v4, param2)) {
                u32 v14;

                v14 = ov66_0222E71C(v8);

                if (v14 != v0->unk_02) {
                    v10 = 1;
                    break;
                }
            }
        } while (0);

        if (v10 == 1) {
            ov70_02262E8C(param0);
            ov70_0225DF4C(param1, param2, 1);
            ov70_0225DF6C(param1, param2, 1);
        }
    }
    break;
    case 6:
        ov70_0225CDEC(v1, v2, 3);
        ov70_02262E8C(param0);
        break;
    case 8:
    {
        UnkStruct_ov70_0225CC54 * v15;
        UnkStruct_ov63_0222CC3C v16;

        v15 = ov70_0225CCAC(v1);

        if (ov70_0225CEDC(v15, v0->unk_00, v0->unk_01) == 0) {
            v16.unk_00 = (v0->unk_00) * 16;
            v16.unk_02 = (v0->unk_01) * 16;

            ov70_0225CCB4(v2, v16);
            ov70_0225D03C(v2, &v16);
            ov70_0225CDEC(v1, v2, 4);
            ov70_02262E8C(param0);
        }
    }
    break;
    case 10:
        ov70_0225CDEC(v1, v2, 2);
        ov70_0225DF4C(param1, param2, 0);
        ov70_0225DF6C(param1, param2, 0);

        return 1;
    }

    return 0;
}

static BOOL ov70_02265CCC (UnkStruct_ov70_02265CCC * param0, UnkStruct_ov66_0222DFF8 * param1, UnkStruct_ov70_0225DEE8 * param2, UnkStruct_ov70_0225CC54 * param3, u8 param4, int param5)
{
    u32 v0;
    u32 v1;
    UnkStruct_ov63_0222CC3C v2;
    UnkStruct_ov70_0225CA20 * v3;
    UnkStruct_ov70_0225CC54 * v4;
    UnkStruct_ov70_0225C894 * v5;
    BOOL v6 = 0;
    BOOL v7;

    v3 = ov70_0225DEF0(param2);
    v4 = ov70_0225CCAC(v3);
    v5 = ov70_0225DF00(param2);
    v0 = ov70_0225CD60(param3, 4);
    v1 = 1;

    switch (param4) {
    case 2:
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DA28, 4, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 3:
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DA58, 4, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 4:
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DA38, 4, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 5:
        v1 = 0;
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DAB8, 8, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 6:
        v1 = 0;
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DAD8, 8, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 7:
        v1 = 3;
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DA48, 4, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 8:
        v1 = 0;
        v7 = ov70_02265ED0(v5, v3, Unk_ov70_0226DA68, 4, &v2);

        if (v7 == 0) {
            return 0;
        }
        break;
    case 10:
        return 0;
    case 9:
        if (ov66_0222EDF4(param1) == 0) {
            return 0;
        }

        if (ov66_0222EE08(param1) == 0) {
            return 0;
        }

        if (ov66_0222EE1C(param1) != v0) {
            return 0;
        }

        v7 = ov70_0225CF4C(v3, v4, &v1, &v2);
        GF_ASSERT(v7 == 1);

        v1 = ov63_0222C0AC(v1);
        v6 = 1;
        break;
    case 0:
    case 1:
    case 11:
    case 14:
    case 12:
    case 13:
        return 0;
    }

    {
        UnkStruct_ov63_0222CC3C v8;

        v8 = ov70_0225CD34(param3);

        ov70_0225CD04(param3, v2, v1);

        param0->unk_00 = (v8.unk_00) / 16;
        param0->unk_01 = (v8.unk_02) / 16;
        param0->unk_02 = param4;
        param0->unk_03 = v6;
        param0->unk_04 = param5;
    }

    return 1;
}

static BOOL ov70_02265ED0 (const UnkStruct_ov70_0225C894 * param0, const UnkStruct_ov70_0225CA20 * param1, const u32 * param2, u32 param3, UnkStruct_ov63_0222CC3C * param4)
{
    u16 v0, v1;
    int v2;
    BOOL v3;

    for (v2 = 0; v2 < param3; v2++) {
        v3 = ov70_0225C8D8(param0, param2[v2], &v0, &v1, 0);

        if (v3 == 1) {
            if (ov70_0225CE7C(param1, v0, v1) == NULL) {
                param4->unk_00 = (v0) * 16;
                param4->unk_02 = (v1) * 16;
                return 1;
            }
        }
    }

    return 0;
}
