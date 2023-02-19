#include <nitro.h>
#include <string.h>

#include "data_021BF67C.h"

#include "struct_decls/struct_020067E8_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_plstring_decl.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0203E53C.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208BE5C.h"
#include "struct_defs/struct_02099F80.h"
#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02000C88.h"
#include "unk_02002B7C.h"
#include "unk_020067E8.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "gx_layers.h"
#include "plstring.h"
#include "unk_02025E08.h"
#include "overlay102/ov102_021D0D80.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_021C0794 * unk_08;
    UnkStruct_02025E6C * unk_0C;
    UnkStruct_02018340 * unk_10;
    UnkStruct_0205AA50 unk_14;
    UnkStruct_0205AA50 unk_24;
    UnkStruct_0200B144 * unk_34;
    UnkStruct_0200B358 * unk_38;
    s16 unk_3C;
    int unk_40;
} UnkStruct_ov102_021D0F8C;

void sub_02000EC4(FSOverlayID param0, const UnkStruct_0208BE5C * param1);
int ov102_021D0D80(UnkStruct_020067E8 * param0, int * param1);
int ov102_021D0E2C(UnkStruct_020067E8 * param0, int * param1);
int ov102_021D0F50(UnkStruct_020067E8 * param0, int * param1);
static void ov102_021D0F80(void * param0);
static void ov102_021D0F8C(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D10F8(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1174(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1204(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1224(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1230(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1274(UnkStruct_ov102_021D0F8C * param0);
static void ov102_021D1420(UnkStruct_ov102_021D0F8C * param0);

int ov102_021D0D80 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov102_021D0F8C * v0;
    int v1 = 84;

    Heap_Create(3, v1, 0x20000);

    v0 = sub_0200681C(param0, sizeof(UnkStruct_ov102_021D0F8C), v1);
    memset(v0, 0, sizeof(UnkStruct_ov102_021D0F8C));
    v0->unk_00 = v1;

    {
        UnkStruct_0203E53C * v2 = (UnkStruct_0203E53C *)sub_02006840(param0);

        v0->unk_08 = v2->unk_00;
        v0->unk_04 = v2->unk_04;
        v0->unk_0C = sub_02025E38(v0->unk_08);
    }

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
    sub_02017798(NULL, NULL);
    sub_020177BC(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    sub_02017DD4(4, 8);

    ov102_021D0F8C(v0);
    ov102_021D1174(v0);

    sub_02017798(ov102_021D0F80, (void *)v0);
    GXLayers_TurnBothDispOn();

    return 1;
}

int ov102_021D0E2C (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov102_021D0F8C * v0 = sub_0200682C(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        ov102_021D1224(v0);
        ov102_021D1274(v0);
        ov102_021D1420(v0);

        sub_02019120(0, 1);;
        sub_02019120(1, 1);;
        sub_02019120(3, 1);;
        sub_02019120(4, 1);;
        sub_02019120(5, 1);;
        sub_02019120(7, 1);;
        sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
        *param1 = 1;
        break;
    case 1:
        if (sub_0200F2AC() == 1) {
            v0->unk_40 = 0;
            *param1 = 2;
        }
        break;
    case 2:
        if (v0->unk_40 < 60) {
            v0->unk_40++;
        } else {
            *param1 = 3;
        }
        break;
    case 3:
        if ((v0->unk_3C > -8 * 24)) {
            v0->unk_3C -= 4;
            ov102_021D1230(v0);
        } else {
            v0->unk_3C = -8 * 24;
            ov102_021D1230(v0);
            *param1 = 4;
        }
        break;
    case 4:
        if ((((Unk_021BF67C.unk_48 & PAD_BUTTON_A) == PAD_BUTTON_A)) || (((Unk_021BF67C.unk_48 & PAD_BUTTON_B) == PAD_BUTTON_B)) || (Unk_021BF67C.unk_60)) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 5;
        }
        break;
    case 5:
        if (sub_0200F2AC() == 1) {
            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov102_021D0F50 (UnkStruct_020067E8 * param0, int * param1)
{
    UnkStruct_ov102_021D0F8C * v0 = sub_0200682C(param0);
    int v1 = v0->unk_00;

    ov102_021D1204(v0);
    ov102_021D10F8(v0);

    sub_02017798(NULL, NULL);
    sub_02006830(param0);
    Heap_Destroy(v1);

    return 1;
}

static void ov102_021D0F80 (void * param0)
{
    UnkStruct_ov102_021D0F8C * v0 = param0;

    sub_0201C2B8(v0->unk_10);
}

#define BGCONTSET(frame, scr, cgx, scrsiz, bufsiz){                   \
        v2.unk_12 = scr;                                      \
        v2.unk_13 = cgx;                                      \
        v2.unk_08 = bufsiz;                                   \
        v2.unk_10 = scrsiz;                                   \
        sub_020183C4(param0->unk_10, frame, &v2, 0);    \
        sub_02019EBC(param0->unk_10, frame);                                  \
}

static void ov102_021D0F8C (UnkStruct_ov102_021D0F8C * param0)
{
    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_B, GX_VRAM_BGEXTPLTT_NONE, GX_VRAM_SUB_BG_128_C, GX_VRAM_SUB_BGEXTPLTT_NONE, GX_VRAM_OBJ_NONE, GX_VRAM_OBJEXTPLTT_NONE, GX_VRAM_SUB_OBJ_NONE, GX_VRAM_SUB_OBJEXTPLTT_NONE, GX_VRAM_TEX_NONE, GX_VRAM_TEXPLTT_NONE
        };

        GXLayers_SetBanks(&v0);
    }

    {
        param0->unk_10 = sub_02018340(param0->unk_00);
    }

    {
        UnkStruct_ov84_0223BA5C v1 = {
            GX_DISPMODE_GRAPHICS, GX_BGMODE_0, GX_BGMODE_0, GX_BG0_AS_2D
        };

        sub_02018368(&v1);
    }
    {
        UnkStruct_ov97_0222DB78 v2 = {
            0,
            0,
            0,
            0,
            1,
            GX_BG_COLORMODE_16,
            0,
            0,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        v2.unk_12 = GX_BG_SCRBASE_0x0000;
        v2.unk_13 = GX_BG_CHARBASE_0x10000;
        v2.unk_08 = 0x1000; v2.unk_10 = 2;

        sub_020183C4(param0->unk_10, 0, &v2, 0);
        sub_02019EBC(param0->unk_10, 0);

        v2.unk_12 = GX_BG_SCRBASE_0x1000;
        v2.unk_13 = GX_BG_CHARBASE_0x08000;
        v2.unk_08 = 0x1000;
        v2.unk_10 = 2;

        sub_020183C4(param0->unk_10, 1, &v2, 0);
        sub_02019EBC(param0->unk_10, 1);

        v2.unk_12 = GX_BG_SCRBASE_0x2000;
        v2.unk_13 = GX_BG_CHARBASE_0x04000;
        v2.unk_08 = 0x800;
        v2.unk_10 = 1;

        sub_020183C4(param0->unk_10, 3, &v2, 0);
        sub_02019EBC(param0->unk_10, 3);

        v2.unk_12 = GX_BG_SCRBASE_0x0000;
        v2.unk_13 = GX_BG_CHARBASE_0x10000;
        v2.unk_08 = 0x1000;
        v2.unk_10 = 2;

        sub_020183C4(param0->unk_10, 4, &v2, 0);
        sub_02019EBC(param0->unk_10, 4);

        v2.unk_12 = GX_BG_SCRBASE_0x1000;
        v2.unk_13 = GX_BG_CHARBASE_0x08000;
        v2.unk_08 = 0x1000;
        v2.unk_10 = 2;

        sub_020183C4(param0->unk_10, 5, &v2, 0);
        sub_02019EBC(param0->unk_10, 5);

        v2.unk_12 = GX_BG_SCRBASE_0x2000;
        v2.unk_13 = GX_BG_CHARBASE_0x04000;
        v2.unk_08 = 0x800;
        v2.unk_10 = 1;

        sub_020183C4(param0->unk_10, 7, &v2, 0);
        sub_02019EBC(param0->unk_10, 7);
    }

    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);
}

static void ov102_021D10F8 (UnkStruct_ov102_021D0F8C * param0)
{
    sub_02019120(0, 0);
    sub_02019120(1, 0);
    sub_02019120(2, 0);
    sub_02019120(3, 0);
    sub_02019120(4, 0);
    sub_02019120(5, 0);
    sub_02019120(6, 0);
    sub_02019120(7, 0);

    sub_02019044(param0->unk_10, 0);
    sub_02019044(param0->unk_10, 1);
    sub_02019044(param0->unk_10, 3);
    sub_02019044(param0->unk_10, 4);
    sub_02019044(param0->unk_10, 5);
    sub_02019044(param0->unk_10, 7);
    Heap_FreeToHeap(param0->unk_10);
}

static void ov102_021D1174 (UnkStruct_ov102_021D0F8C * param0)
{
    UnkStruct_ov61_0222C884 v0 = {0, 0, 0, 32, 24, 2, 1};

    sub_0201D710();

    param0->unk_34 = sub_0200B144(1, 26, 1, param0->unk_00);
    param0->unk_38 = sub_0200B358(param0->unk_00);

    v0.unk_00 = 0;

    sub_0201A8D4(param0->unk_10, &param0->unk_14, &v0);
    sub_0201AE78(&param0->unk_14, 0, 0, 0, 32 * 8, 24 * 8);

    v0.unk_00 = 4;

    sub_0201A8D4(param0->unk_10, &param0->unk_24, &v0);
    sub_0201AE78(&param0->unk_24, 0, 0, 0, 32 * 8, 24 * 8);
}

static void ov102_021D1204 (UnkStruct_ov102_021D0F8C * param0)
{
    sub_0201A8FC(&param0->unk_24);
    sub_0201A8FC(&param0->unk_14);
    sub_0200B3F0(param0->unk_38);
    sub_0200B190(param0->unk_34);
}

static void ov102_021D1224 (UnkStruct_ov102_021D0F8C * param0)
{
    param0->unk_3C = 0;
    ov102_021D1230(param0);
}

static void ov102_021D1230 (UnkStruct_ov102_021D0F8C * param0)
{
    sub_02019184(param0->unk_10, 1, 3, param0->unk_3C);
    sub_02019184(param0->unk_10, 5, 3, param0->unk_3C + (8 * 24));
    sub_02019184(param0->unk_10, 0, 3, param0->unk_3C);
    sub_02019184(param0->unk_10, 4, 3, param0->unk_3C + (8 * 24));
}

static void ov102_021D1274 (UnkStruct_ov102_021D0F8C * param0)
{
    int v0, v1, v2;
    int v3, v4, v5;

    if (param0->unk_04 == 0) {
        v0 = 10;
        v1 = 2;
        v2 = 6;
        v3 = 8;
        v4 = 0;
        v5 = 4;
    } else {
        v0 = 11;
        v1 = 3;
        v2 = 7;
        v3 = 9;
        v4 = 1;
        v5 = 5;
    }

    sub_02006E60(132, v0, param0->unk_10, 3, 0, 0, 0, param0->unk_00);
    sub_02006E3C(132, v1, param0->unk_10, 3, 0, 0, 0, param0->unk_00);
    sub_02006E84(132, v2, 0, 0 * (2 * 16), (2 * 16), param0->unk_00);
    sub_02006E60(132, v0, param0->unk_10, 7, 0, 0, 0, param0->unk_00);
    sub_02006E3C(132, v1, param0->unk_10, 7, 0, 0, 0, param0->unk_00);
    sub_02006E84(132, v2, 4, 0 * (2 * 16), (2 * 16), param0->unk_00);

    sub_02006E60(132, v3, param0->unk_10, 1, 0, 0, 0, param0->unk_00);
    sub_02019E2C(param0->unk_10, 1, 0, 0, 32, 24, 1);
    sub_02019448(param0->unk_10, 1);
    sub_02006E3C(132, v4, param0->unk_10, 1, 0, 0, 0, param0->unk_00);
    sub_02006E84(132, v5, 0, 1 * (2 * 16), (2 * 16), param0->unk_00);
    sub_02006E60(132, v3, param0->unk_10, 5, 0, 0, 0, param0->unk_00);
    sub_02019E2C(param0->unk_10, 5, 0, 0, 32, 24, 1);
    sub_02019448(param0->unk_10, 5);
    sub_02006E3C(132, v4, param0->unk_10, 5, 0, 0, 0, param0->unk_00);
    sub_02006E84(132, v5, 4, 1 * (2 * 16), (2 * 16), param0->unk_00);

    sub_02019690(0, 32, 0, param0->unk_00);
    sub_02019690(4, 32, 0, param0->unk_00);
    sub_02002E7C(0, 2 * (2 * 16), param0->unk_00);
    sub_02002E7C(4, 2 * (2 * 16), param0->unk_00);
}

static void ov102_021D1420 (UnkStruct_ov102_021D0F8C * param0)
{
    PLString * v0 = PLString_New(0x200, param0->unk_00);

    {
        PLString * v1 = PLString_New(0x200, param0->unk_00);

        sub_0200B1B8(param0->unk_34, 0, v1);
        sub_0200B498(param0->unk_38, 0, param0->unk_0C);
        sub_0200C388(param0->unk_38, v0, v1);
        sub_0201D78C(&param0->unk_14, 0, v0, 48, 32, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
        sub_0201D78C(&param0->unk_24, 0, v0, 48, 32, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
        PLString_Free(v1);
    }
    {
        int v2;

        if (param0->unk_04 == 0) {
            v2 = 1;
        } else {
            v2 = 2;
        }

        sub_0200B1B8(param0->unk_34, v2, v0);
        sub_0201D78C(&param0->unk_14, 0, v0, 64, 64, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
        sub_0201D78C(&param0->unk_24, 0, v0, 64, 64, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    }
    {
        sub_0200B1B8(param0->unk_34, 3, v0);
        sub_0201D78C(&param0->unk_14, 0, v0, 138, 144, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
        sub_0201D78C(&param0->unk_24, 0, v0, 138, 144, 0, (u32)(((1 & 0xff) << 16) | ((2 & 0xff) << 8) | ((0 & 0xff) << 0)), NULL);
    }

    PLString_Free(v0);
}
