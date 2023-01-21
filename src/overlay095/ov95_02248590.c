#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "overlay095/struct_ov95_02247004_decl.h"
#include "overlay095/struct_ov95_022472C4_decl.h"
#include "overlay095/struct_ov95_02247628_decl.h"
#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "struct_defs/struct_02099F80.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay095/struct_ov95_02247568.h"
#include "overlay097/struct_ov97_0222DB78.h"
#include "overlay115/struct_ov115_0226527C.h"

#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201CCF0.h"
#include "unk_0201D15C.h"
#include "unk_0201FE94.h"
#include "unk_020218BC.h"
#include "unk_0202419C.h"
#include "overlay095/ov95_02246C20.h"
#include "overlay095/ov95_022476F0.h"
#include "overlay095/ov95_02248590.h"

enum {
    UnkEnum_ov95_022488A4_00 = 0x480,
    UnkEnum_ov95_022488A4_01 = 0x1,
    UnkEnum_ov95_022488A4_02 = 0x128
};

enum {
    UnkEnum_ov95_02248B84_00 = 0x1C00,
    UnkEnum_ov95_02248B84_01 = 0xFFFE6800,
    UnkEnum_ov95_02248B84_02 = 0xEBE0
};

enum {
    UnkEnum_ov95_02249154_00 = 0x14000,
    UnkEnum_ov95_02249154_01 = 0x29000,
    UnkEnum_ov95_02249154_02 = -8 << 12,
    UnkEnum_ov95_02249154_03 = 0x1E,
    UnkEnum_ov95_02249154_04 = 0x4000,
    UnkEnum_ov95_02249154_05 = 0xD00
};

enum {
    UnkEnum_ov95_02249424_00 = 0x200
};

enum {
    UnkEnum_ov95_0224950C_00 = -128 << 12,
    UnkEnum_ov95_0224950C_01 = 0xFFFEF000,
    UnkEnum_ov95_0224950C_02 = 20,
    UnkEnum_ov95_0224950C_03 = 0x2000
};

enum {
    UnkEnum_ov95_022495F8_00 = 0x6E,
    UnkEnum_ov95_022495F8_01 = 0xFFFC5800,
    UnkEnum_ov95_022495F8_02 = 0x35,
};

enum {
    UnkEnum_ov95_022496B4_00 = 0x1,
    UnkEnum_ov95_022496B4_01 = 0x20000
};

enum {
    UnkEnum_ov95_02249020_00 = 0x120,
    UnkEnum_ov95_02249020_01 = 512 << 12
};

enum {
    UnkEnum_ov95_02248EC4_00 = 0xC
};

enum {
    UnkEnum_ov95_02248EC4_01 = 0x21000,
    UnkEnum_ov95_02248CA8_00 = 0x35947D1
};

typedef struct {
    fx16 unk_00;
    fx16 unk_02;
    fx16 unk_04;
    u16 unk_06;
} UnkStruct_ov95_0224922C_sub1;

typedef struct {
    UnkStruct_ov95_02247958 * unk_00;
    UnkStruct_ov95_0224773C * unk_04;
    VecFx32 unk_08;
    VecFx32 unk_14;
    VecFx16 unk_20;
    fx32 unk_28;
    fx32 unk_2C;
    fx32 unk_30;
    fx32 unk_34;
    fx32 unk_38;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    fx32 unk_4C;
    u32 unk_50;
    s16 unk_54;
    s16 unk_56;
    s16 unk_58;
    s16 unk_5A;
    UnkStruct_ov95_0224922C_sub1 unk_5C[3];
    u32 unk_74;
    BOOL unk_78;
    BOOL unk_7C;
    int unk_80;
} UnkStruct_ov95_0224922C;

typedef struct {
    UnkStruct_ov95_02247628 * unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov95_02247568 unk_0C;
    UnkStruct_02022550 * unk_1C[20][2];
    u32 unk_BC;
    UnkStruct_02018340 * unk_C0;
    UnkStruct_ov95_02247004 * unk_C4;
    BOOL unk_C8;
    UnkStruct_ov95_022472C4 * unk_CC;
    volatile BOOL unk_D0;
    UnkStruct_ov95_0224773C * unk_D4;
    UnkStruct_ov95_02247958 * unk_D8;
    UnkStruct_ov95_0224922C unk_DC;
    UnkStruct_0201CD38 * unk_160;
    UnkStruct_0201CD38 * unk_164;
    BOOL unk_168;
} UnkStruct_ov95_02248688;

typedef struct {
    UnkStruct_0201CD38 ** unk_00;
    UnkStruct_ov95_02248688 * unk_04;
    BOOL unk_08[20];
    VecFx32 unk_58[20];
    int unk_148;
    int unk_14C;
} UnkStruct_ov95_02248E5C;

typedef struct {
    UnkStruct_ov95_02248688 * unk_00;
    UnkStruct_ov95_02248E5C unk_04;
    UnkStruct_02018340 * unk_154;
    fx32 unk_158;
    fx32 unk_15C;
    fx32 unk_160;
    fx32 unk_164;
    UnkStruct_0201CD38 ** unk_168;
    UnkStruct_0201CD38 * unk_16C;
} UnkStruct_ov95_02248FAC;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    int unk_0C;
    UnkStruct_ov95_02247958 * unk_10;
} UnkStruct_ov95_022490D0;

static void ov95_02248C98(UnkStruct_ov95_02248688 * param0);
static void ov95_02248688(UnkStruct_ov95_02248688 * param0);
static int ov95_022486AC(UnkStruct_ov95_02248688 * param0, int * param1);
static int ov95_022486E0(UnkStruct_ov95_02248688 * param0, int * param1);
static int ov95_02248728(UnkStruct_ov95_02248688 * param0, int * param1);
static int ov95_022487D4(UnkStruct_ov95_02248688 * param0, int * param1);
static void ov95_022488A4(UnkStruct_ov95_02248688 * param0);
static void ov95_02248B3C(UnkStruct_ov95_02248688 * param0);
static void ov95_02248B84(UnkStruct_ov95_02248688 * param0);
static void ov95_02248CA8(UnkStruct_ov95_02248688 * param0);
static void ov95_02248DC4(UnkStruct_ov95_02248688 * param0);
static void ov95_02248DF4(UnkStruct_ov95_02248688 * param0);
static void ov95_02248E00(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02248EC4(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02248F94(UnkStruct_0201CD38 * param0);
static void ov95_02248FAC(UnkStruct_ov95_02248688 * param0, UnkStruct_0201CD38 ** param1);
static void ov95_02249020(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_022490A4(UnkStruct_0201CD38 * param0);
static void ov95_022490D0(UnkStruct_ov95_02247958 * param0, int param1, int param2, int param3);
static void ov95_02249118(UnkStruct_0201CD38 * param0, void * param1);
static UnkStruct_0201CD38 * ov95_02249154(UnkStruct_ov95_02248688 * param0);
static void ov95_0224922C(UnkStruct_ov95_0224922C * param0, fx32 param1, int param2);
static void ov95_02249268(UnkStruct_ov95_0224922C * param0, fx32 param1, fx32 param2, int param3);
static void ov95_022492A4(UnkStruct_ov95_0224922C * param0, int param1, fx32 param2, int param3);
static void ov95_022492DC(UnkStruct_ov95_0224922C * param0);
static void ov95_02249424(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_022494A8(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov95_022494F4(UnkStruct_0201CD38 * param0);
static BOOL ov95_02249500(UnkStruct_0201CD38 * param0);
static void ov95_0224950C(UnkStruct_0201CD38 * param0);
static void ov95_0224959C(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_022495F8(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02249658(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_022496B4(UnkStruct_0201CD38 * param0, void * param1);
static void ov95_02249700(UnkStruct_0201CD38 * param0, void * param1);

void * ov95_02248590 (UnkStruct_ov95_02247628 * param0)
{
    UnkStruct_ov95_02248688 * v0 = AllocFromHeap(58, sizeof(UnkStruct_ov95_02248688));

    if (v0) {
        int v1;

        v0->unk_00 = param0;
        v0->unk_04 = 0;
        v0->unk_C0 = ov95_02247628(param0);
        v0->unk_D4 = NULL;
        v0->unk_C4 = NULL;
        v0->unk_CC = NULL;
        v0->unk_160 = NULL;
        v0->unk_164 = NULL;
        v0->unk_BC = sub_0201D35C();
        v0->unk_D0 = 0;
        v0->unk_168 = 0;

        sub_0200DA3C(ov95_02248E00, v0, 0);
    }

    return v0;
}

void ov95_022485FC (void * param0)
{
    OSIntrMode v0;
    UnkStruct_ov95_02248688 * v1;

    v0 = OS_DisableInterrupts();
    v1 = param0;

    if (v1) {
        int v2;

        ov95_02248B3C(v1);
        ov95_02248C98(v1);
        ov95_02248DC4(v1);

        if (v1->unk_160) {
            sub_0200DA58(v1->unk_160);
        }

        if (v1->unk_164) {
            ov95_022490A4(v1->unk_164);
        }

        sub_0201D318(v1->unk_BC);
        FreeToHeap(v1);
    }

    OS_RestoreInterrupts(v0);
}

BOOL ov95_02248650 (void * param0, int * param1)
{
    static int(*const v0[])(UnkStruct_ov95_02248688 *, int *) = {
        ov95_022486AC,
        ov95_022486E0,
        ov95_02248728,
        ov95_022487D4
    };

    UnkStruct_ov95_02248688 * v1 = param0;

    if ((*param1) < NELEMS(v0)) {
        if (v0[*param1](v1, &(v1->unk_04))) {
            (*param1)++;
            v1->unk_04 = 0;
        }

        ov95_02248688(v1);

        return 0;
    }

    return 1;
}

static void ov95_02248688 (UnkStruct_ov95_02248688 * param0)
{
    if (param0->unk_D4) {
        G3X_Reset();

        ov95_02247770(param0->unk_D4);
        sub_020241BC(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    }
}

static int ov95_022486AC (UnkStruct_ov95_02248688 * param0, int * param1)
{
    ov95_022488A4(param0);
    ov95_02248B84(param0);
    ov95_02248CA8(param0);
    sub_0200F174(0, 1, 1, 0x0, 8, 1, 58);

    return 1;
}

static int ov95_022486E0 (UnkStruct_ov95_02248688 * param0, int * param1)
{
    static int v0 = 0;

    switch (*param1) {
    case 0:
        if (sub_0200F2AC()) {
            v0 = 0;
            (*param1)++;
        }
        break;

    case 1:
        if (v0 < 30) {
            v0++;
        }

        if (param0->unk_D0) {
            return 1;
        }
        break;
    }

    return 0;
}

static int ov95_02248728 (UnkStruct_ov95_02248688 * param0, int * param1)
{
    switch (*param1) {
    case 0:
        param0->unk_08 = 0;
        (*param1)++;
        break;
    case 1:
        if (++(param0->unk_08) > 8) {
            ov95_022490D0(param0->unk_D8, 0, 31, 24);
            param0->unk_160 = ov95_02249154(param0);
            ov95_022479AC(param0->unk_D8, 0);
            ov95_022479A8(param0->unk_D8, 1);
            (*param1)++;
        }
        break;
    case 2:
        if (ov95_02249500(param0->unk_160)) {
            (*param1)++;
        }
        break;
    case 3:
        if (ov95_022494F4(param0->unk_160)) {
            (*param1)++;
        }
        break;
    case 4:
        ov95_02248DF4(param0);
        return 1;
    }

    return 0;
}

static int ov95_022487D4 (UnkStruct_ov95_02248688 * param0, int * param1)
{
    switch (*param1) {
    case 0:
        ov95_0224950C(param0->unk_160);
        param0->unk_08 = 0;
        (*param1)++;
        break;
    case 1:
        if (++(param0->unk_08) > 2) {
            param0->unk_08 = 0;
            ov95_02247004(param0->unk_C4);
            (*param1)++;
        }
        break;
    case 2:
        if (param0->unk_C8 == 0) {
            ov95_02248FAC(param0, &(param0->unk_164));
            (*param1)++;
        }
        break;
    case 3:
        if (param0->unk_08 < 40) {
            if (++(param0->unk_08) == 40) {
                sub_02005748(1712);
            }
        }

        if (ov95_022494F4(param0->unk_160)) {
            sub_0200F174(0, 0, 0, 0x7fff, 4, 1, 58);
            (*param1)++;
        }
        break;
    case 4:
        if (sub_0200F2AC()) {
            return 1;
        }
    }

    return 0;
}

static void ov95_022488A4 (UnkStruct_ov95_02248688 * param0)
{
    static const UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_32_H,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0123_E
    };
    static const UnkStruct_ov84_0223BA5C v1 = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_4,
        GX_BGMODE_4,
        GX_BG0_AS_3D
    };
    static const UnkStruct_ov97_0222DB78 v2 = {
        0,
        0,
        0,
        0,
        5,
        GX_BG_COLORMODE_256,
        GX_BG_SCRBASE_0xb000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        1,
        0,
        0
    };
    static const UnkStruct_ov97_0222DB78 v3 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_256,
        GX_BG_SCRBASE_0xf000,
        GX_BG_CHARBASE_0x10000,
        GX_BG_EXTPLTT_01,
        3,
        1,
        0,
        0
    };
    static const u16 v4[] = {
        0x20,
        0x60,
        0xa0,
        0xe0,
    };
    u32 v5;

    sub_0201FE94(&v0);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    sub_02018368(&v1);

    sub_020183C4(param0->unk_C0, 2, &v2, 1);
    sub_020183C4(param0->unk_C0, 6, &v2, 1);

    {
        OSIntrMode v6 = OS_DisableInterrupts();

        sub_020183C4(param0->unk_C0, 3, &v3, 2);
        sub_020183C4(param0->unk_C0, 7, &v3, 2);

        OS_RestoreInterrupts(v6);
    }

    sub_02006E3C(93, 2, param0->unk_C0, 2, 0, 0, 1, 58);
    sub_02006E3C(93, 2, param0->unk_C0, 6, 0, 0, 1, 58);
    sub_02006E60(93, 0, param0->unk_C0, 2, 0, 0, 1, 58);
    sub_02006E60(93, 0, param0->unk_C0, 6, 0, 0, 1, 58);

    v5 = ov95_02247644(param0->unk_00);

    sub_02006E84(93, 3, 0, 0, 0x20, 58);
    sub_02006E84(93, 3, 4, 0, 0x20, 58);
    sub_02006E9C(93, 3, 0, v4[v5], 0x20, 0x40, 58);
    sub_02006E9C(93, 3, 4, v4[v5], 0x20, 0x40, 58);

    sub_02006E3C(93, 5, param0->unk_C0, 3, 0, 0, 1, 58);
    sub_02006E3C(93, 5, param0->unk_C0, 7, 0, 0, 1, 58);
    sub_02006E60(93, 4, param0->unk_C0, 3, 0, 0, 1, 58);
    sub_02006E60(93, 4, param0->unk_C0, 7, 0, 0, 1, 58);

    {
        u8 * v7 = AllocFromHeap(58, 96);

        if (v7) {
            MI_CpuClear32(v7, 96);
            DC_FlushRange(v7, 96);

            GX_BeginLoadBGExtPltt();
            GXS_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(v7, 0x6000, 96);
            GXS_LoadBGExtPltt(v7, 0x6000, 96);
            GX_EndLoadBGExtPltt();
            GXS_EndLoadBGExtPltt();

            FreeToHeap(v7);
        }
    }

    sub_02019184(param0->unk_C0, 6, 3, -256);
    sub_02019120(7, 0);
    sub_0201FF0C(GX_PLANEMASK_OBJ, 1);
    sub_0201FF74(GX_PLANEMASK_OBJ, 1);
    sub_02019184(param0->unk_C0, 3, 3, 0);

    param0->unk_C4 = ov95_02246F30(&(param0->unk_C8), 1);
    param0->unk_CC = ov95_022472C4(param0->unk_C0, UnkEnum_ov95_022488A4_00, 0x1000, UnkEnum_ov95_022488A4_01, UnkEnum_ov95_022488A4_02, 0, &(param0->unk_D0));
}

static void ov95_02248B3C (UnkStruct_ov95_02248688 * param0)
{
    if (param0->unk_C8) {
        ov95_02247018(param0->unk_C4);
    }

    sub_02019044(param0->unk_C0, 2);
    sub_02019044(param0->unk_C0, 6);
    sub_02019044(param0->unk_C0, 3);
    sub_02019044(param0->unk_C0, 7);
}

static void ov95_02248B84 (UnkStruct_ov95_02248688 * param0)
{
    static const GXRgb v0[8] = {
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4),
        GX_RGB(4, 4, 4)
    };
    int v1;

    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(1);
    G3X_SetEdgeColorTable(v0);
    G3X_SetClearColor(GX_RGB(31, 31, 16), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(1, 1);
    NNS_GfdInitFrmPlttVramManager(0x4000, 1);

    sub_0201FF0C(GX_PLANEMASK_BG0, 1);
    G2_SetBG0Priority(0);

    param0->unk_D4 = ov95_022476F0(1, 0, 0, 0);
    param0->unk_D8 = ov95_022478B4(param0->unk_D4, 0, 93, 27, 0, -122880 + UnkEnum_ov95_02248B84_01, 0, 0);

    {
        static UnkStruct_ov115_0226527C v2;

        v2.unk_00 = UnkEnum_ov95_02248B84_02;
        v2.unk_02 = 0;
        v2.unk_04 = 0;

        ov95_02247AB0(param0->unk_D4, &v2);
    }

    ov95_022479D4(param0->unk_D8, UnkEnum_ov95_02248B84_00);
}

static void ov95_02248C98 (UnkStruct_ov95_02248688 * param0)
{
    if (param0->unk_D4) {
        ov95_0224773C(param0->unk_D4);
    }
}

static void ov95_02248CA8 (UnkStruct_ov95_02248688 * param0)
{
    NNSG2dImagePaletteProxy v0;
    NNSG2dImageProxy v1;
    UnkStruct_ov19_021DA864 v2;
    int v3;
    fx32 v4, v5;

    ov95_02247568(&param0->unk_0C, 93, 11, 12);

    NNS_G2dInitImagePaletteProxy(&v0);
    NNS_G2dInitImageProxy(&v1);

    sub_02006F00(93, 13, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v1);
    sub_02006F00(93, 13, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DSUB, 0, 58, &v1);
    sub_02006EE0(93, 14, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 58, &v0);
    sub_02006EE0(93, 14, NNS_G2D_VRAM_TYPE_2DSUB, 0, 58, &v0);
    ov95_022475C4(&v2, &param0->unk_0C, &v1, &v0, 1);
    sub_0201D318(UnkEnum_ov95_02248CA8_00);

    for (v3 = 0; v3 < 20; v3++) {
        v4 = 12 + (sub_0201D35C() % 232);
        v5 = -28 + (sub_0201D35C() % 452);

        param0->unk_1C[v3][0] = ov95_022475E4(param0->unk_00, &v2, v4, v5, 0, NNS_G2D_VRAM_TYPE_2DMAIN);
        param0->unk_1C[v3][1] = ov95_022475E4(param0->unk_00, &v2, v4, v5 + 56, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        sub_02021D6C(param0->unk_1C[v3][0], 0);
        sub_02021D6C(param0->unk_1C[v3][1], 1);
        sub_02021CAC(param0->unk_1C[v3][0], 0);
        sub_02021CAC(param0->unk_1C[v3][1], 0);
    }
}

static void ov95_02248DC4 (UnkStruct_ov95_02248688 * param0)
{
    int v0;

    for (v0 = 0; v0 < 20; v0++) {
        if (param0->unk_1C[v0][0]) {
            sub_02021BD4(param0->unk_1C[v0][0]);
        }

        if (param0->unk_1C[v0][1]) {
            sub_02021BD4(param0->unk_1C[v0][1]);
        }
    }

    ov95_022475A0(&param0->unk_0C);
}

static void ov95_02248DF4 (UnkStruct_ov95_02248688 * param0)
{
    param0->unk_168 = 1;
}

static void ov95_02248E00 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02248688 * v0 = param1;

    if (v0->unk_168) {
        v0->unk_168 = 0;

        sub_02019184(v0->unk_C0, 2, 3, -256);
        sub_02019184(v0->unk_C0, 6, 3, 0);
        sub_02019120(3, 0);
        sub_02019120(7, 1);
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
        sub_0200DA58(param0);
    }
}

static void ov95_02248E5C (UnkStruct_ov95_02248688 * param0, UnkStruct_0201CD38 ** param1, UnkStruct_ov95_02248E5C * param2)
{
    int v0;

    param2->unk_04 = param0;
    param2->unk_00 = param1;
    param2->unk_148 = 0;
    param2->unk_14C = 0;

    for (v0 = 0; v0 < 20; v0++) {
        param2->unk_08[v0] = 0;
        param2->unk_58[v0] = *(sub_02021D28(param0->unk_1C[v0][0]));
    }

    *(param2->unk_00) = sub_0200D9E8(ov95_02248EC4, param2, 0);

    if (*(param2->unk_00) == NULL) {
        FreeToHeap(param2);
    }
}

static void ov95_02248EC4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02248E5C * v0 = param1;
    VecFx32 v1;
    int v2;

    if (++(v0->unk_148) > UnkEnum_ov95_02248EC4_00) {
        v0->unk_148 = 0;

        if (v0->unk_14C < 20) {
            v0->unk_08[v0->unk_14C] = 1;
            v0->unk_14C++;
        }
    }

    for (v2 = 0; v2 < 20; v2++) {
        v0->unk_58[v2].y += UnkEnum_ov95_02248EC4_01;

        if (v0->unk_58[v2].y >= (424 << 12)) {
            v0->unk_58[v2].y = -114688 + (v0->unk_58[v2].y - 1736704);

            if (v0->unk_08[v2]) {
                sub_02021CAC(v0->unk_04->unk_1C[v2][0], 1);
                sub_02021CAC(v0->unk_04->unk_1C[v2][1], 1);
            }
        }

        sub_02021C50(v0->unk_04->unk_1C[v2][0], &(v0->unk_58[v2]));

        v1 = v0->unk_58[v2];
        v1.y += 229376;

        sub_02021C50(v0->unk_04->unk_1C[v2][1], &v1);
    }
}

static void ov95_02248F94 (UnkStruct_0201CD38 * param0)
{
    if (param0) {
        UnkStruct_ov95_02248E5C * v0 = sub_0201CED0(param0);

        *(v0->unk_00) = NULL;
        sub_0200DA58(param0);
    }
}

static void ov95_02248FAC (UnkStruct_ov95_02248688 * param0, UnkStruct_0201CD38 ** param1)
{
    UnkStruct_ov95_02248FAC * v0 = AllocFromHeap(58, sizeof(UnkStruct_ov95_02248FAC));

    if (v0) {
        v0->unk_00 = param0;
        v0->unk_154 = param0->unk_C0;
        v0->unk_158 = sub_020192F8(v0->unk_154, 2) << 12;
        v0->unk_15C = sub_020192F8(v0->unk_154, 6) << 12;
        v0->unk_160 = 0;
        v0->unk_164 = 0;
        v0->unk_168 = param1;
        v0->unk_16C = NULL;

        *param1 = sub_0200DA04(ov95_02249020, v0, 0);

        if (*param1 == NULL) {
            FreeToHeap(v0);
        }
    }
}

static void ov95_02249020 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_02248FAC * v0 = param1;

    if (v0->unk_164 < UnkEnum_ov95_02249020_01) {
        v0->unk_160 += UnkEnum_ov95_02249020_00;
        v0->unk_164 += v0->unk_160;

        sub_02019184(v0->unk_154, 2, 3, (v0->unk_158 - v0->unk_164) >> 12);
        sub_02019184(v0->unk_154, 6, 3, (v0->unk_15C - v0->unk_164) >> 12);

        if (v0->unk_164 >= (128 << 12)) {
            if (v0->unk_16C == NULL) {
                ov95_02248E5C(v0->unk_00, &(v0->unk_16C), &(v0->unk_04));
            }
        }
    }
}

static void ov95_022490A4 (UnkStruct_0201CD38 * param0)
{
    if (param0) {
        UnkStruct_ov95_02248FAC * v0 = sub_0201CED0(param0);

        *(v0->unk_168) = NULL;
        ov95_02248F94(v0->unk_16C);
        FreeToHeap(v0);
        sub_0200DA58(param0);
    }
}

static void ov95_022490D0 (UnkStruct_ov95_02247958 * param0, int param1, int param2, int param3)
{
    UnkStruct_ov95_022490D0 * v0 = AllocFromHeap(58, sizeof(UnkStruct_ov95_022490D0));

    if (v0) {
        v0->unk_00 = param1 << 12;
        v0->unk_08 = param2 << 12;
        v0->unk_04 = (v0->unk_08 - v0->unk_00) / param3;
        v0->unk_0C = param3;
        v0->unk_10 = param0;

        ov95_022479AC(param0, param1);
        sub_0200D9E8(ov95_02249118, v0, 0);
    }
}

static void ov95_02249118 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_022490D0 * v0 = param1;

    if (--(v0->unk_0C) > 0) {
        v0->unk_00 += v0->unk_04;
        ov95_022479AC(v0->unk_10, v0->unk_00 >> 12);
    } else {
        ov95_022479AC(v0->unk_10, v0->unk_08 >> 12);
        FreeToHeap(v0);
        sub_0200DA58(param0);
    }
}

static UnkStruct_0201CD38 * ov95_02249154 (UnkStruct_ov95_02248688 * param0)
{
    UnkStruct_ov95_0224922C * v0 = &(param0->unk_DC);
    int v1;

    ov95_02247958(param0->unk_D8, &v0->unk_08);
    ov95_02247978(param0->unk_D8, &v0->unk_20);

    v0->unk_14 = v0->unk_08;
    v0->unk_04 = param0->unk_D4;
    v0->unk_00 = param0->unk_D8;
    v0->unk_28 = v0->unk_08.y;
    v0->unk_2C = (UnkEnum_ov95_02249154_02 - v0->unk_08.y) / UnkEnum_ov95_02249154_03;
    v0->unk_80 = UnkEnum_ov95_02249154_03;
    v0->unk_38 = 0;
    v0->unk_3C = 0;
    v0->unk_40 = 0;
    v0->unk_44 = 0;
    v0->unk_54 = 0;
    v0->unk_56 = UnkEnum_ov95_02249154_04;
    v0->unk_5A = 0;
    v0->unk_7C = 0;

    for (v1 = 0; v1 < 3; v1++) {
        v0->unk_5C[v1].unk_00 = 0;
        v0->unk_5C[v1].unk_02 = 0;
        v0->unk_5C[v1].unk_04 = 0;
        v0->unk_5C[v1].unk_06 = 0;
    }

    v0->unk_78 = 0;

    ov95_0224922C(v0, UnkEnum_ov95_02249154_05, UnkEnum_ov95_02249154_03);
    ov95_02249268(v0, UnkEnum_ov95_02249154_01, UnkEnum_ov95_02249154_00, UnkEnum_ov95_02249154_03);

    return sub_0200D9E8(ov95_02249424, v0, 0);
}

static void ov95_0224922C (UnkStruct_ov95_0224922C * param0, fx32 param1, int param2)
{
    if (param2) {
        param0->unk_5A = (int)(param1 - param0->unk_56) / param2;
        param0->unk_56 += param0->unk_5A;
    } else {
        param0->unk_56 = param1;
    }

    param0->unk_58 = param1;
    param0->unk_74 = param2;
}

static void ov95_02249268 (UnkStruct_ov95_0224922C * param0, fx32 param1, fx32 param2, int param3)
{
    if (param3) {
        param0->unk_40 = (param1 - param0->unk_38) / param3;
        param0->unk_44 = (param2 - param0->unk_3C) / param3;
        param0->unk_38 += param0->unk_40;
        param0->unk_3C += param0->unk_44;
        param0->unk_48 = param1;
        param0->unk_4C = param2;
    }

    param0->unk_50 = param3;
}

static void ov95_022492A4 (UnkStruct_ov95_0224922C * param0, int param1, fx32 param2, int param3)
{
    if (param3) {
        param0->unk_5C[param1].unk_02 = (param2 - param0->unk_5C[param1].unk_00) / param3;
    }

    param0->unk_5C[param1].unk_04 = param2;
    param0->unk_5C[param1].unk_06 = param3;
}

static void ov95_022492DC (UnkStruct_ov95_0224922C * param0)
{
    int v0, v1;

    if (param0->unk_74) {
        param0->unk_74--;

        if (param0->unk_74) {
            param0->unk_56 += param0->unk_5A;
        } else {
            param0->unk_56 = param0->unk_58;
        }
    }

    param0->unk_54 += param0->unk_56;
    v0 = (u16)(param0->unk_54) / (65536 / 360);

    if (v0 >= 360) {
        v0 -= 360;
    }

    if (param0->unk_50) {
        param0->unk_38 += param0->unk_40;
        param0->unk_3C += param0->unk_44;
        param0->unk_50--;

        if (param0->unk_50 == 0) {
            param0->unk_38 = param0->unk_48;
            param0->unk_3C = param0->unk_4C;
        }
    }

    param0->unk_14.x = param0->unk_08.x + FX_Mul(sub_0201D1D4(v0), param0->unk_38);
    param0->unk_14.z = param0->unk_08.z + FX_Mul(sub_0201D15C(v0), param0->unk_3C);
    param0->unk_20.y += param0->unk_56;

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk_5C[v1].unk_06) {
            param0->unk_5C[v1].unk_06--;

            if (param0->unk_5C[v1].unk_06 == 0) {
                param0->unk_5C[v1].unk_00 = param0->unk_5C[v1].unk_04;
            } else {
                param0->unk_5C[v1].unk_00 += param0->unk_5C[v1].unk_02;
            }
        }
    }

    param0->unk_20.x += param0->unk_5C[0].unk_00;
    param0->unk_20.y += param0->unk_5C[1].unk_00;
    param0->unk_20.z += param0->unk_5C[2].unk_00;
}

static void ov95_02249424 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;
    int v1;

    if (v0->unk_80) {
        v0->unk_28 += v0->unk_2C;
        v0->unk_14.y = v0->unk_28;

        if (--(v0->unk_80) <= 0) {
            v0->unk_30 = UnkEnum_ov95_02249424_00;
            v0->unk_2C = 0;

            ov95_02249268(v0, 0x4000, 0x4000, 60);
            ov95_022492A4(v0, 0, -0x800, 30);
            v0->unk_7C = 1;
            sub_0201CECC(param0, ov95_022494A8);
        }
    }

    ov95_022492DC(v0);
    ov95_02247968(v0->unk_00, &(v0->unk_14));
    ov95_02247990(v0->unk_00, &(v0->unk_20));
}

static void ov95_022494A8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    if (v0->unk_78 == 0) {
        v0->unk_2C += v0->unk_30;
        v0->unk_28 += v0->unk_2C;
        v0->unk_14.y = v0->unk_28;

        ov95_022492DC(v0);
        ov95_02247968(v0->unk_00, &(v0->unk_14));
        ov95_02247990(v0->unk_00, &(v0->unk_20));

        if (ov95_022479DC(v0->unk_00) == 0) {
            ov95_022479A8(v0->unk_00, 0);
            v0->unk_78 = 1;
        }
    }
}

static BOOL ov95_022494F4 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_ov95_0224922C * v0 = sub_0201CED0(param0);
    return v0->unk_78;
}

static BOOL ov95_02249500 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_ov95_0224922C * v0 = sub_0201CED0(param0);
    return v0->unk_7C;
}

static void ov95_0224950C (UnkStruct_0201CD38 * param0)
{
    UnkStruct_ov95_0224922C * v0 = sub_0201CED0(param0);
    UnkStruct_ov115_0226527C v1;

    v0->unk_78 = 0;
    v1.unk_00 = v1.unk_02 = v1.unk_04 = 0;

    ov95_02247AD0(v0->unk_04, 1);
    ov95_02247AB0(v0->unk_04, &v1);

    v0->unk_2C = (UnkEnum_ov95_0224950C_01 - UnkEnum_ov95_0224950C_00) / UnkEnum_ov95_0224950C_02;
    v0->unk_28 = UnkEnum_ov95_0224950C_00 + v0->unk_2C;
    v0->unk_80 = UnkEnum_ov95_0224950C_02;
    v0->unk_14.y = v0->unk_28;

    ov95_02249268(v0, 0x0, 0x0, 20);
    ov95_022492A4(v0, 1, -(v0->unk_56), 30);
    ov95_022492A4(v0, 2, 0x100, 50);
    ov95_022479D4(v0->unk_00, UnkEnum_ov95_0224950C_03);
    ov95_022479A8(v0->unk_00, 1);

    sub_0201CECC(param0, ov95_0224959C);
}

static void ov95_0224959C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    ov95_022492DC(v0);

    if (v0->unk_80) {
        v0->unk_28 += v0->unk_2C;
        v0->unk_14.y = v0->unk_28;

        if (--(v0->unk_80) == 0) {
            sub_0201CECC(param0, ov95_022495F8);
        }
    }

    ov95_02247968(v0->unk_00, &(v0->unk_14));
    ov95_02247990(v0->unk_00, &(v0->unk_20));
}

static void ov95_022495F8 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    ov95_022492DC(v0);

    if (++(v0->unk_80) > UnkEnum_ov95_022495F8_00) {
        v0->unk_2C = (UnkEnum_ov95_022495F8_01 - v0->unk_28) / UnkEnum_ov95_022495F8_02;
        v0->unk_80 = UnkEnum_ov95_022495F8_02;
        sub_0201CECC(param0, ov95_02249658);
    }

    ov95_02247968(v0->unk_00, &(v0->unk_14));
    ov95_02247990(v0->unk_00, &(v0->unk_20));
}

static void ov95_02249658 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    ov95_022492DC(v0);

    if (v0->unk_80) {
        v0->unk_28 += v0->unk_2C;
        v0->unk_14.y = v0->unk_28;

        if (--(v0->unk_80) == 0) {
            sub_0201CECC(param0, ov95_022496B4);
        }
    }

    ov95_02247968(v0->unk_00, &(v0->unk_14));
    ov95_02247990(v0->unk_00, &(v0->unk_20));
}

static void ov95_022496B4 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    ov95_022492DC(v0);

    if (++(v0->unk_80) > UnkEnum_ov95_022496B4_00) {
        v0->unk_2C = UnkEnum_ov95_022496B4_01;
        sub_0201CECC(param0, ov95_02249700);
    }

    ov95_02247968(v0->unk_00, &(v0->unk_14));
    ov95_02247990(v0->unk_00, &(v0->unk_20));
}

static void ov95_02249700 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov95_0224922C * v0 = param1;

    if (v0->unk_78 == 0) {
        ov95_022492DC(v0);

        v0->unk_28 += v0->unk_2C;
        v0->unk_14.y = v0->unk_28;

        ov95_02247968(v0->unk_00, &(v0->unk_14));
        ov95_02247990(v0->unk_00, &(v0->unk_20));

        if (ov95_022479DC(v0->unk_00) == 0) {
            v0->unk_78 = 1;
        }
    }
}
