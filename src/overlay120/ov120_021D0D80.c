#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020067E8_decl.h"
#include "message.h"
#include "struct_decls/struct_02018340_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02002B7C.h"
#include "unk_020067E8.h"
#include "unk_02006E3C.h"
#include "message.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"

typedef struct {
    int unk_00;
    BGL * unk_04;
    MessageLoader * unk_08;
    int unk_0C;
    Window unk_10;
    int unk_20;
    int unk_24;
} UnkStruct_ov120_021D0F24;

void sub_02000EC4(FSOverlayID param0, const UnkStruct_0208BE5C * param1);
int ov120_021D0D80(UnkStruct_020067E8 * param0, int * param1);
int ov120_021D0DB0(UnkStruct_020067E8 * param0, int * param1);
int ov120_021D0EFC(UnkStruct_020067E8 * param0, int * param1);
static void ov120_021D0F18(void * param0);
static void ov120_021D0F24(UnkStruct_ov120_021D0F24 * param0);
static void ov120_021D10D4(UnkStruct_ov120_021D0F24 * param0);
static void ov120_021D114C(UnkStruct_ov120_021D0F24 * param0);
static void ov120_021D116C(UnkStruct_ov120_021D0F24 * param0);
static void ov120_021D1178(UnkStruct_ov120_021D0F24 * param0);

int ov120_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov120_021D0F24 * v0;
    int v1 = 120;

    Heap_Create(3, v1, 0x40000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov120_021D0F24), v1);
    memset(v0, 0, sizeof(UnkStruct_ov120_021D0F24));

    v0->unk_00 = v1;
    v0->unk_24 = 0;

    return 1;
}

int ov120_021D0DB0 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov120_021D0F24 * v0 = sub_0200682C(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);

        sub_02017798(NULL, NULL);
        sub_020177BC(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        sub_02017DD4(4, 8);

        ov120_021D0F24(v0);
        ov120_021D114C(v0);

        sub_02017798(ov120_021D0F18, (void *)v0);
        GXLayers_TurnBothDispOn();

        v0->unk_24 = 0;
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            *param1 = 2;
        }
        break;
    case 2:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
            *param1 = 3;
        }
        break;
    case 3:
        ov120_021D1178(v0);

        if (ScreenWipe_Done() == 1) {
            v0->unk_24 = 90 + 150;
            *param1 = 4;
        }
        break;
    case 4:
        ov120_021D1178(v0);

        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 5;
        }
        break;
    case 5:
        ov120_021D1178(v0);

        if (ScreenWipe_Done() == 1) {
            ov120_021D116C(v0);
            ov120_021D10D4(v0);
            sub_02017798(NULL, NULL);
            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov120_021D0EFC (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov120_021D0F24 * v0 = sub_0200682C(param0);
    int v1 = v0->unk_00;

    sub_02006830(param0);
    Heap_Destroy(v1);

    return 1;
}

static void ov120_021D0F18 (void * param0)
{
    UnkStruct_ov120_021D0F24 * v0 = param0;

    sub_0201C2B8(v0->unk_04);
}

static void ov120_021D0F24 (UnkStruct_ov120_021D0F24 * param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_256_AB,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_NONE,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_NONE,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_NONE,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_NONE,
            GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&v0);
    }

    {
        param0->unk_04 = sub_02018340(param0->unk_00);
    }
    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        sub_02018368(&v1);
    }
    {
        int v2, v3, v4;
        {
            UnkStruct_ov97_0222DB78 v5 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0000,
                GX_BG_CHARBASE_0x18000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 2;

            sub_020183C4(param0->unk_04, v2, &v5, 0);
            sub_02019690(v2, 32, 0, param0->unk_00);
            sub_02019EBC(param0->unk_04, v2);
        }
        {
            UnkStruct_ov97_0222DB78 v6 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x0800,
                GX_BG_CHARBASE_0x14000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 0;
            v3 = 1;
            v4 = 4;

            sub_020183C4(param0->unk_04, v2, &v6, 0);
            sub_02006E3C(136, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(136, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
        {
            UnkStruct_ov97_0222DB78 v7 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0x1000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 1;
            v3 = 2;
            v4 = 5;

            sub_020183C4(param0->unk_04, v2, &v7, 0);
            sub_02006E3C(136, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(136, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
        {
            UnkStruct_ov97_0222DB78 v8 = {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_256,
                GX_BG_SCRBASE_0x1800,
                GX_BG_CHARBASE_0x20000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0
            };

            v2 = 3;
            v3 = 2;
            v4 = 4;

            sub_020183C4(param0->unk_04, v2, &v8, 0);
            sub_02006E3C(193, v3, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
            sub_02006E60(193, v4, param0->unk_04, v2, 0, 0, 0, param0->unk_00);
        }
    }

    sub_02006E84(193, 3, 0, 0, 0, param0->unk_00);
    sub_02002E7C(0, 1 * (2 * 16), param0->unk_00);
    sub_0201975C(0, 0x0);
    sub_0201975C(4, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void ov120_021D10D4 (UnkStruct_ov120_021D0F24 * param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    G2_BlendNone();

    sub_02019044(param0->unk_04, 3);
    sub_02019044(param0->unk_04, 1);
    sub_02019044(param0->unk_04, 0);
    sub_02019044(param0->unk_04, 2);

    Heap_FreeToHeap(param0->unk_04);
}

static void ov120_021D114C (UnkStruct_ov120_021D0F24 * param0)
{
    param0->unk_08 = MessageLoader_Init(1, 26, 607, param0->unk_00);
    sub_0201D710();
    param0->unk_0C = 0;
}

static void ov120_021D116C (UnkStruct_ov120_021D0F24 * param0)
{
    MessageLoader_Free(param0->unk_08);
}

static void ov120_021D1178 (UnkStruct_ov120_021D0F24 * param0)
{
    param0->unk_20 += 0x4;
    sub_02019184(param0->unk_04, 1, 3, param0->unk_20 >> 4);
}
