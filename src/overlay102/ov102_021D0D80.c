#include "overlay102/ov102_021D0D80.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0203E53C.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay061/struct_ov61_0222C884.h"
#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02000C88.h"
#include "unk_02006E3C.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_02018340.h"

typedef struct {
    int unk_00;
    int unk_04;
    SaveData *unk_08;
    TrainerInfo *unk_0C;
    BGL *unk_10;
    Window unk_14;
    Window unk_24;
    MessageLoader *unk_34;
    StringTemplate *unk_38;
    s16 unk_3C;
    int unk_40;
} UnkStruct_ov102_021D0F8C;

void sub_02000EC4(FSOverlayID param0, const OverlayManagerTemplate *param1);
int ov102_021D0D80(OverlayManager *param0, int *param1);
int ov102_021D0E2C(OverlayManager *param0, int *param1);
int ov102_021D0F50(OverlayManager *param0, int *param1);
static void ov102_021D0F80(void *param0);
static void ov102_021D0F8C(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D10F8(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1174(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1204(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1224(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1230(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1274(UnkStruct_ov102_021D0F8C *param0);
static void ov102_021D1420(UnkStruct_ov102_021D0F8C *param0);

int ov102_021D0D80(OverlayManager *param0, int *param1)
{
    UnkStruct_ov102_021D0F8C *v0;
    int v1 = 84;

    Heap_Create(3, v1, 0x20000);

    v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov102_021D0F8C), v1);
    memset(v0, 0, sizeof(UnkStruct_ov102_021D0F8C));
    v0->unk_00 = v1;

    {
        UnkStruct_0203E53C *v2 = (UnkStruct_0203E53C *)OverlayManager_Args(param0);

        v0->unk_08 = v2->unk_00;
        v0->unk_04 = v2->unk_04;
        v0->unk_0C = SaveData_GetTrainerInfo(v0->unk_08);
    }

    sub_0200F344(0, 0x0);
    sub_0200F344(1, 0x0);
    SetMainCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);

    ov102_021D0F8C(v0);
    ov102_021D1174(v0);

    SetMainCallback(ov102_021D0F80, (void *)v0);
    GXLayers_TurnBothDispOn();

    return 1;
}

int ov102_021D0E2C(OverlayManager *param0, int *param1)
{
    UnkStruct_ov102_021D0F8C *v0 = OverlayManager_Data(param0);
    int v1 = 0;

    switch (*param1) {
    case 0:
        ov102_021D1224(v0);
        ov102_021D1274(v0);
        ov102_021D1420(v0);

        sub_02019120(0, 1);
        ;
        sub_02019120(1, 1);
        ;
        sub_02019120(3, 1);
        ;
        sub_02019120(4, 1);
        ;
        sub_02019120(5, 1);
        ;
        sub_02019120(7, 1);
        ;
        sub_0200F174(0, 1, 1, 0x0, 6, 1, v0->unk_00);
        *param1 = 1;
        break;
    case 1:
        if (ScreenWipe_Done() == 1) {
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
        if (v0->unk_3C > -8 * 24) {
            v0->unk_3C -= 4;
            ov102_021D1230(v0);
        } else {
            v0->unk_3C = -8 * 24;
            ov102_021D1230(v0);
            *param1 = 4;
        }
        break;
    case 4:
        if (((gCoreSys.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gCoreSys.pressedKeys & PAD_BUTTON_B) == PAD_BUTTON_B) || (gCoreSys.touchPressed)) {
            sub_0200F174(0, 0, 0, 0x0, 6, 1, v0->unk_00);
            *param1 = 5;
        }
        break;
    case 5:
        if (ScreenWipe_Done() == 1) {
            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov102_021D0F50(OverlayManager *param0, int *param1)
{
    UnkStruct_ov102_021D0F8C *v0 = OverlayManager_Data(param0);
    int v1 = v0->unk_00;

    ov102_021D1204(v0);
    ov102_021D10F8(v0);

    SetMainCallback(NULL, NULL);
    OverlayManager_FreeData(param0);
    Heap_Destroy(v1);

    return 1;
}

static void ov102_021D0F80(void *param0)
{
    UnkStruct_ov102_021D0F8C *v0 = param0;

    sub_0201C2B8(v0->unk_10);
}

#define BGCONTSET(frame, scr, cgx, scrsiz, bufsiz)   \
    {                                                \
        v2.unk_12 = scr;                             \
        v2.unk_13 = cgx;                             \
        v2.unk_08 = bufsiz;                          \
        v2.unk_10 = scrsiz;                          \
        sub_020183C4(param0->unk_10, frame, &v2, 0); \
        sub_02019EBC(param0->unk_10, frame);         \
    }

static void ov102_021D0F8C(UnkStruct_ov102_021D0F8C *param0)
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
        v2.unk_08 = 0x1000;
        v2.unk_10 = 2;

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

static void ov102_021D10F8(UnkStruct_ov102_021D0F8C *param0)
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

static void ov102_021D1174(UnkStruct_ov102_021D0F8C *param0)
{
    UnkStruct_ov61_0222C884 v0 = { 0, 0, 0, 32, 24, 2, 1 };

    Text_ResetAllPrinters();

    param0->unk_34 = MessageLoader_Init(1, 26, 1, param0->unk_00);
    param0->unk_38 = StringTemplate_Default(param0->unk_00);

    v0.unk_00 = 0;

    sub_0201A8D4(param0->unk_10, &param0->unk_14, &v0);
    BGL_WindowColor(&param0->unk_14, 0, 0, 0, 32 * 8, 24 * 8);

    v0.unk_00 = 4;

    sub_0201A8D4(param0->unk_10, &param0->unk_24, &v0);
    BGL_WindowColor(&param0->unk_24, 0, 0, 0, 32 * 8, 24 * 8);
}

static void ov102_021D1204(UnkStruct_ov102_021D0F8C *param0)
{
    BGL_DeleteWindow(&param0->unk_24);
    BGL_DeleteWindow(&param0->unk_14);
    StringTemplate_Free(param0->unk_38);
    MessageLoader_Free(param0->unk_34);
}

static void ov102_021D1224(UnkStruct_ov102_021D0F8C *param0)
{
    param0->unk_3C = 0;
    ov102_021D1230(param0);
}

static void ov102_021D1230(UnkStruct_ov102_021D0F8C *param0)
{
    sub_02019184(param0->unk_10, 1, 3, param0->unk_3C);
    sub_02019184(param0->unk_10, 5, 3, param0->unk_3C + (8 * 24));
    sub_02019184(param0->unk_10, 0, 3, param0->unk_3C);
    sub_02019184(param0->unk_10, 4, 3, param0->unk_3C + (8 * 24));
}

static void ov102_021D1274(UnkStruct_ov102_021D0F8C *param0)
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
    Font_LoadTextPalette(0, 2 * (2 * 16), param0->unk_00);
    Font_LoadTextPalette(4, 2 * (2 * 16), param0->unk_00);
}

static void ov102_021D1420(UnkStruct_ov102_021D0F8C *param0)
{
    Strbuf *v0 = Strbuf_Init(0x200, param0->unk_00);

    {
        Strbuf *v1 = Strbuf_Init(0x200, param0->unk_00);

        MessageLoader_GetStrbuf(param0->unk_34, 0, v1);
        StringTemplate_SetPlayerName(param0->unk_38, 0, param0->unk_0C);
        StringTemplate_Format(param0->unk_38, v0, v1);
        Text_AddPrinterWithParamsAndColor(&param0->unk_14, FONT_SYSTEM, v0, 48, 32, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Text_AddPrinterWithParamsAndColor(&param0->unk_24, FONT_SYSTEM, v0, 48, 32, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v1);
    }
    {
        int v2;

        if (param0->unk_04 == 0) {
            v2 = 1;
        } else {
            v2 = 2;
        }

        MessageLoader_GetStrbuf(param0->unk_34, v2, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_14, FONT_SYSTEM, v0, 64, 64, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Text_AddPrinterWithParamsAndColor(&param0->unk_24, FONT_SYSTEM, v0, 64, 64, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }
    {
        MessageLoader_GetStrbuf(param0->unk_34, 3, v0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_14, FONT_SYSTEM, v0, 138, 144, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        Text_AddPrinterWithParamsAndColor(&param0->unk_24, FONT_SYSTEM, v0, 138, 144, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf_Free(v0);
}
