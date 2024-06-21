#include <nitro.h>
#include <string.h>

#include "core_sys.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_02099F80.h"
#include "overlay022/struct_ov22_022550D4.h"
#include "overlay022/struct_ov22_022559F8.h"
#include "overlay083/struct_ov83_0223B784.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "narc.h"
#include "unk_0200A784.h"
#include "message.h"
#include "string_template.h"
#include "unk_02015064.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201E86C.h"
#include "unk_0201F834.h"
#include "gx_layers.h"
#include "unk_020218BC.h"
#include "strbuf.h"
#include "unk_0202419C.h"
#include "overlay083/ov83_0223C958.h"
#include "overlay083/ov83_0223D6A8.h"

static void ov83_0223CC30(BGL ** param0, int param1);
static void ov83_0223CCCC(BGL ** param0);
static void ov83_0223CCF8(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CD1C(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CD28(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CD54(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CD64(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CDC0(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CDD0(UnkStruct_ov83_0223B784 * param0, NARC * param1);
static void ov83_0223CE7C(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CE9C(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CF20(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223CF2C(UnkStruct_ov83_0223B784 * param0);
static void ov83_0223D068(UnkStruct_ov83_0223B784 * param0);

void ov83_0223C958 (UnkStruct_ov83_0223B784 * param0)
{
    NARC * v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__NUTMIXER, param0->unk_00);

    ov83_0223CE9C(param0);
    ov83_0223CC30(&(param0->unk_20), param0->unk_00);
    ov83_0223CD64(param0);
    ov83_0223CCF8(param0);
    ov83_0223CD28(param0);

    ov83_0223CDD0(param0, v0);
    ov83_0223DEE0(&param0->unk_5B0, param0->unk_20, param0->unk_00, v0);
    ov83_0223E720(&param0->unk_6A0, param0->unk_20, param0->unk_00, v0);
    ov83_0223E368(&param0->unk_608, param0->unk_320, param0->unk_00, v0);
    ov83_0223E28C(&param0->unk_5E4, &param0->unk_2C, param0->unk_1CC, param0->unk_00, 0, 0);

    ov83_0223E28C(&param0->unk_5FC, &param0->unk_2C, param0->unk_1CC, param0->unk_00, 0, 2);
    ov83_0223E28C(&param0->unk_5F0, &param0->unk_2C, param0->unk_1CC, param0->unk_00, 5, 0);
    ov83_0223E5DC(&param0->unk_680, &param0->unk_2C, param0->unk_1CC, param0->unk_00);
    ov83_0223ED6C(&param0->unk_6D8, &param0->unk_2C, param0->unk_1CC, param0->unk_00);
    ov83_0223F2C4(&param0->unk_AEC, &param0->unk_2C, param0->unk_00, v0);
    ov83_0223F4CC(&param0->unk_B6C, &param0->unk_2C, param0->unk_1CC, param0->unk_00);

    ov83_0223CF2C(param0);

    NARC_dtor(v0);

    gCoreSys.unk_65 = 1;
    GXLayers_SwapDisplay();
}

void ov83_0223CAA4 (UnkStruct_ov83_0223B784 * param0)
{
    ov83_0223E760(&param0->unk_6A0);
    ov83_0223DF10(&param0->unk_5B0);
    ov83_0223E438(&param0->unk_608);
    ov83_0223CE7C(param0);
    ov83_0223E2C8(&param0->unk_5E4);
    ov83_0223E2C8(&param0->unk_5F0);
    ov83_0223E2C8(&param0->unk_5FC);
    ov83_0223E63C(&param0->unk_680);
    ov83_0223ED78(&param0->unk_6D8);
    ov83_0223F348(&param0->unk_AEC);
    ov83_0223F510(&param0->unk_B6C);

    ov83_0223CCCC(&(param0->unk_20));
    ov83_0223CD1C(param0);
    ov83_0223CDC0(param0);
    ov83_0223CD54(param0);
    ov83_0223CF20(param0);

    ov83_0223D068(param0);
    gCoreSys.unk_65 = 0;
    GXLayers_SwapDisplay();
}

int ov83_0223CB5C (UnkStruct_ov83_0223B784 * param0, int * param1)
{
    ov83_0223DB4C(&param0->unk_3C0, &param0->unk_1494.unk_6C, &param0->unk_2C, param0->unk_1CC, param0->unk_00);
    return param0->unk_0C + 1;
}

int ov83_0223CB8C (UnkStruct_ov83_0223B784 * param0, int * param1)
{
    ov83_0223DC1C(&param0->unk_3C0, &param0->unk_2C);
    return param0->unk_0C + 1;
}

void ov83_0223CBA4 (UnkStruct_ov83_0223B784 * param0)
{
    sub_020241B4();

    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        if (param0->unk_320) {
            sub_020150EC(param0->unk_320);
        }
    }

    NNS_G3dGePopMtx(1);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);

    if (param0->unk_31C) {
        if (param0->unk_2C.unk_00) {
            sub_020219F8(param0->unk_2C.unk_00);
        }
    }
}

void ov83_0223CBFC (UnkStruct_ov83_0223B784 * param0)
{
    sub_0200A858();

    if (param0->unk_20) {
        sub_0201C2B8(param0->unk_20);
    }
}

static void ov83_0223CC10 (void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_64_E,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_48_HI,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_A,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_NONE,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_BC,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&v0);
}

static void ov83_0223CC30 (BGL ** param0, int param1)
{
    int v0 = 0, v1;

    ov83_0223CC10();

    *param0 = sub_02018340(param1);

    {
        UnkStruct_ov84_0223BA5C v2 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        sub_02018368(&v2);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    BGL_SetPriority(0, 2);

    {
        UnkStruct_ov97_0222DB78 v3[] = {
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xb000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xa800,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            },
        };

        for (v0 = 0; v0 < 4; v0++) {
            const u8 v4[4] = {1, 2, 4, 5};

            sub_020183C4(*param0, v4[v0], &(v3[v0]), 0);
            sub_02019EBC(*param0, v4[v0]);
            sub_02019690(v4[v0], 32, 0, param1);
        }
    }
}

static void ov83_0223CCCC (BGL ** param0)
{
    sub_02019044(*param0, 5);
    sub_02019044(*param0, 4);
    sub_02019044(*param0, 2);
    sub_02019044(*param0, 1);
    Heap_FreeToHeap(*param0);
}

static void ov83_0223CCF8 (UnkStruct_ov83_0223B784 * param0)
{
    ov83_0223D754(&param0->unk_2C, 72, 16, param0->unk_00);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov83_0223CD1C (UnkStruct_ov83_0223B784 * param0)
{
    ov83_0223D784(&param0->unk_2C);
}

static void ov83_0223CD28 (UnkStruct_ov83_0223B784 * param0)
{
    UnkStruct_ov22_022550D4 v0 = {
        48, 32, 32, 0
    };

    v0.unk_0C = param0->unk_00;
    param0->unk_320 = sub_02015064(&v0);
}

static void ov83_0223CD54 (UnkStruct_ov83_0223B784 * param0)
{
    sub_020150A8(param0->unk_320);
}

static void ov83_0223CD64 (UnkStruct_ov83_0223B784 * param0)
{
    NNS_G2dInitOamManagerModule();
    sub_0200A784(0, 128, 0, 32, 0, 128, 0, 32, param0->unk_00);

    {
        UnkStruct_ov22_022559F8 v0 = {
            32, 0x20000, 0x0,
        };

        v0.unk_0C = param0->unk_00;

        sub_0201E88C(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    sub_0201F834(32, param0->unk_00);
    sub_0201E994();
    sub_0201F8E4();
}

static void ov83_0223CDC0 (UnkStruct_ov83_0223B784 * param0)
{
    sub_0200A878();
    sub_0201E958();
    sub_0201F8B4();
}

static void ov83_0223CDD0 (UnkStruct_ov83_0223B784 * param0, NARC * param1)
{
    int v0;
    static const u8 v1[6] = {
        8, 8, 9, 10, 11, 8,
    };

    for (v0 = 0; v0 < 6; v0++) {
        if ((v0 > 0) && (v1[v0] == 8)) {
            ov83_0223D894(&param0->unk_2C, &param0->unk_1CC[v0], param1, param0->unk_1CC[0].unk_00[1], 14 + (3 * v0), 13 + (3 * v0), 12 + (3 * v0), 2000 + v0, param0->unk_00);
        } else {
            ov83_0223D7A8(&param0->unk_2C, &param0->unk_1CC[v0], param1, v1[v0], 2, 14 + (3 * v0), 13 + (3 * v0), 12 + (3 * v0), 2000 + v0, param0->unk_00);
        }
    }
}

static void ov83_0223CE7C (UnkStruct_ov83_0223B784 * param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        ov83_0223D95C(&param0->unk_2C, &param0->unk_1CC[v0]);
    }
}

static void ov83_0223CE9C (UnkStruct_ov83_0223B784 * param0)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_EdgeMarking(0);
    G3X_SetClearColor(GX_RGB(31, 31, 16), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    NNS_GfdInitFrmTexVramManager(2, 1);
    NNS_GfdInitFrmPlttVramManager(0x8000, 1);
}

static void ov83_0223CF20 (UnkStruct_ov83_0223B784 * param0)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

static void ov83_0223CF2C (UnkStruct_ov83_0223B784 * param0)
{
    int v0;

    param0->unk_15E0.unk_00 = MessageLoader_Init(0, 26, 464, param0->unk_00);
    param0->unk_15E0.unk_04 = StringTemplate_New(4, 64, param0->unk_00);
    param0->unk_15E0.unk_08 = Strbuf_Init(64, param0->unk_00);
    param0->unk_15E0.unk_0C = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 0);
    param0->unk_15E0.unk_10 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 1);
    param0->unk_15E0.unk_14 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 2);
    param0->unk_15E0.unk_18 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 20);
    param0->unk_15E0.unk_1C = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 21);
    param0->unk_15E0.unk_20 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 22);
    param0->unk_15E0.unk_24 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 23);
    param0->unk_15E0.unk_28 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 24);
    param0->unk_15E0.unk_2C = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 25);
    param0->unk_15E0.unk_30 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 8);
    param0->unk_15E0.unk_34 = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 9);

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_15E0.unk_38[v0] = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 3 + v0);
    }

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_15E0.unk_4C[v0] = MessageLoader_GetNewStrbuf(param0->unk_15E0.unk_00, 10 + v0);
    }
}

static void ov83_0223D068 (UnkStruct_ov83_0223B784 * param0)
{
    int v0;

    Strbuf_Free(param0->unk_15E0.unk_34);
    Strbuf_Free(param0->unk_15E0.unk_30);
    Strbuf_Free(param0->unk_15E0.unk_20);
    Strbuf_Free(param0->unk_15E0.unk_1C);
    Strbuf_Free(param0->unk_15E0.unk_18);
    Strbuf_Free(param0->unk_15E0.unk_14);
    Strbuf_Free(param0->unk_15E0.unk_10);
    Strbuf_Free(param0->unk_15E0.unk_0C);
    Strbuf_Free(param0->unk_15E0.unk_24);
    Strbuf_Free(param0->unk_15E0.unk_28);
    Strbuf_Free(param0->unk_15E0.unk_2C);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_15E0.unk_38[v0]);
    }

    for (v0 = 0; v0 < 10; v0++) {
        Strbuf_Free(param0->unk_15E0.unk_4C[v0]);
    }

    Strbuf_Free(param0->unk_15E0.unk_08);
    StringTemplate_Free(param0->unk_15E0.unk_04);
    MessageLoader_Free(param0->unk_15E0.unk_00);
}
