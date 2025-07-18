#include "overlay094/ov94_02242AD0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/species.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202DA40_decl.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/wi_fi_history.h"

#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223C610.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "journal.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "unk_0202CC64.h"
#include "unk_0202DA40.h"
#include "unk_0202F180.h"
#include "unk_020366A0.h"
#include "unk_02038F8C.h"
#include "unk_020393C8.h"
#include "unk_02039814.h"
#include "unk_0206CCB0.h"
#include "vars_flags.h"

static void ov94_02242B54(BgConfig *param0);
static void ov94_02242C80(BgConfig *param0);
static void ov94_02242CAC(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D38(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D74(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D84(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02242D98(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243E48(JournalEntry *param0, UnkStruct_ov94_0223BA88 *param1);
static void ov94_0224362C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243E2C(WiFiHistory *wiFiHistory, UnkStruct_ov94_0223BA88 *param1);
static void ov94_02243CE4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2);
static void ov94_02243DE8(GlobalTrade *param0, int param1);
static int ov94_02243E84(UnkStruct_ov94_0223FD4C *param0, UnkStruct_ov94_0223BA88 *param1);
static void ov94_022438C8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243EC8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2);
static int ov94_02242DA8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242E9C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242ED0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242F78(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02242F98(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243778(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224377C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243794(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243920(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243948(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A90(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243AE8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224301C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243048(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243104(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243120(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022431A4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022431F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022432D8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022432F4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437AC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243884(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02243B08(UnkStruct_ov94_0223FD4C *param0, int param1);
static void ov94_02243BC4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2, int param3);
static int ov94_02243990(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243974(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A04(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243588(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243568(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243398(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243378(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243658(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022436F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437C0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022439E4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022439CC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243554(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A28(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243A44(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022436D4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437D8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022437F4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02243ED8(UnkStruct_ov94_0223FD4C *param0);

static int (*Unk_ov94_022469A0[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_02242DA8,
    ov94_02243778,
    ov94_02242E9C,
    ov94_02242ED0,
    ov94_02242F78,
    ov94_02242F98,
    ov94_0224377C,
    ov94_0224301C,
    ov94_02243048,
    ov94_02243104,
    ov94_02243120,
    ov94_02243794,
    ov94_022431A4,
    ov94_022431F0,
    ov94_022432D8,
    ov94_022432F4,
    ov94_022437AC,
    ov94_02243884,
    ov94_02243658,
    ov94_022436D4,
    ov94_022436F0,
    ov94_022437C0,
    ov94_022437D8,
    ov94_022437F4,
    ov94_02243378,
    ov94_02243398,
    ov94_02243568,
    ov94_02243588,
    ov94_02243554,
    ov94_02243974,
    ov94_02243990,
    ov94_022439CC,
    ov94_022439E4,
    ov94_02243A04,
    ov94_02243A28,
    ov94_02243A44,
    ov94_02243A90,
    ov94_02243AE8,
    ov94_02243920,
    ov94_02243948
};

int ov94_02242AD0(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_02242D84(param0);
    ov94_02242B54(param0->unk_04);
    ov94_02242CAC(param0);
    ov94_02242D38(param0);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);
    ov94_02245934(param0);

    param0->unk_2C = 0;

    return 2;
}

int ov94_02242B14(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    sub_020397B0(ov94_0223C4B4());

    v0 = (*Unk_ov94_022469A0[param0->unk_2C])(param0);
    return v0;
}

int ov94_02242B34(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_02242D98(param0);
    ov94_02242D74(param0);
    ov94_02242C80(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_02242B54(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v1, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v3, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v4, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v5 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0xe000,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v5, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_02242C80(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_02242CAC(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 0, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->unk_00->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);

    if (param0->unk_10F0 == 0) {
        Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
        Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
    }

    if (param0->unk_20 == 9) {
        ov94_0223D068(param0);
    }
}

static void ov94_02242D38(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F5C, 0, 2, 19, 27, 4, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&param0->unk_F5C, 0x0);
}

static void ov94_02242D74(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Remove(&param0->unk_F5C);
}

static void ov94_02242D84(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init(90 * 2, HEAP_ID_62);
}

static void ov94_02242D98(UnkStruct_ov94_0223FD4C *param0)
{
    Strbuf_Free(param0->unk_BAC);
}

static int ov94_02242DA8(UnkStruct_ov94_0223FD4C *param0)
{
    switch (param0->unk_24) {
    case 7:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 2);
        break;
    case 8:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 7);
        break;
    case 9:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 12);
        break;
    case 10:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 18);
        param0->unk_1110 = 1;
        break;
    case 11:
        ov94_02245824(param0, param0->unk_B90, 24, TEXT_SPEED_INSTANT, 0xf0f);
        param0->unk_2C = 24;
        break;
    case 12:
        ov94_02245824(param0, param0->unk_B90, 142, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_18 = 1;
        param0->unk_2C = 29;
        break;
    default:
        GF_ASSERT(0);
    }

    ov94_0223C5D8(param0);

    return 3;
}

static int ov94_02242E9C(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0207893C((Pokemon *)param0->unk_12C.unk_00.unk_00);
    ov94_0223B7E4(&param0->unk_12C);

    param0->unk_2C = 3;
    param0->unk_14E4 = 0;

    ov94_02243EC8(param0, 4, 6);

    return 3;
}

static int ov94_02242ED0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if ((v0 = ov94_0223B7B8())) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
            ov94_02243B08(param0, 1);
            GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_UNK_044);
            param0->unk_2C = 30;
            break;
        case -1:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -6:
        case -7:
        case -8:
        case -9:
        case -10:
        case -11:
        case -5:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -12:
        case -4:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -2:
        case -14:
        case -15:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02242F78(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B834();

    param0->unk_2C = 5;
    param0->unk_14E4 = 0;
    param0->unk_36 = 1;

    return 3;
}

static int ov94_02242F98(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -12:
        case -4:
            param0->unk_3C = v0;
            param0->unk_2C = 39;
            break;
        case -1:
        case -3:
        case -5:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_0224301C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B888(&param0->unk_12C);

    param0->unk_2C = 8;
    param0->unk_14E4 = 0;

    ov94_02243EC8(param0, 9, 11);

    return 3;
}

static int ov94_02243048(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            if (param0->unk_12C.unk_121) {
                param0->unk_2C = 24;
            } else {
                ov94_02243BC4(param0, (Pokemon *)param0->unk_12C.unk_00.unk_00, sub_0202DAAC(param0->unk_00->unk_00), param0->unk_12C.unk_121);
                param0->unk_2C = 30;
            }
            break;
        case -3:
            param0->unk_2C = 38;
            break;
        case -4:
            param0->unk_2C = 38;
            break;
        case -12:
            param0->unk_3C = v0;
            param0->unk_2C = 39;
            break;
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243104(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B96C();

    param0->unk_2C = 10;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243120(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -3:
        case -4:
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_022431A4(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0207893C((Pokemon *)param0->unk_12C.unk_00.unk_00);

    ov94_0223BA88(param0->unk_250[param0->unk_11C].unk_108, &param0->unk_12C, &param0->unk_A4C);
    ov94_02243EC8(param0, 14, 16);

    param0->unk_2C = 13;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022431F0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if ((v0 = ov94_0223B7B8())) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
            param0->unk_2C = 30;

            ov94_02243B08(param0, 0);
            ov94_02243CE4(param0, (Pokemon *)param0->unk_A4C.unk_00.unk_00, param0->unk_110);
            ov94_02243E2C(param0->unk_00->wiFiHistory, &param0->unk_A4C);
            GameRecords_IncrementTrainerScore(param0->unk_00->records, TRAINER_SCORE_EVENT_UNK_25);
            ov94_02243E48(param0->unk_00->unk_2C, &param0->unk_A4C);
            GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_WIFI_TRADES);
            sub_0206D104(SaveData_GetTVBroadcast(param0->unk_00->saveData));
            break;
        case -5:
            param0->unk_3C = v1;
            param0->unk_2C = 17;
            break;
        case -6:
        case -7:
        case -8:
        case -9:
        case -10:
        case -11:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -12:
            param0->unk_3C = v1;
            param0->unk_2C = 39;
            break;
        case -2:
        case -14:
        case -15:
            param0->unk_3C = v1;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_022432D8(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223BAEC();

    param0->unk_2C = 15;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022432F4(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -2:
        case -14:
        case -15:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243378(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B8D8(&param0->unk_12C);

    param0->unk_2C = 25;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243398(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 26;
            break;
        case 1:
            param0->unk_36 = 1;

            switch (ov94_02243E84(param0, &param0->unk_12C)) {
            case 1:
                ov94_0223C5F4(param0);
                ov94_02245824(param0, param0->unk_B90, 29, TEXT_SPEED_FAST, 0xf0f);
                ov94_0223C3F4(param0, 37, 28);
                break;
            case 2:
                ov94_0223C5F4(param0);
                ov94_02245824(param0, param0->unk_B90, 35, TEXT_SPEED_FAST, 0xf0f);
                ov94_0223C3F4(param0, 37, 28);
                break;
            case 0:
                param0->unk_2C = 18;
                param0->unk_1110 = 1;
                break;
            }
            break;
        case -3:
            param0->unk_36 = 0;

            if (sub_0202DA60(param0->unk_00->unk_00)) {
                Pokemon *v1 = Pokemon_New(HEAP_ID_62);

                sub_0202DA70(param0->unk_00->unk_00, v1);
                StringTemplate_SetNickname(param0->unk_B8C, 0, Pokemon_GetBoxPokemon(v1));

                param0->unk_28 = 2;
                param0->unk_2C = 34;

                ov94_02243BC4(param0, v1, sub_0202DAAC(param0->unk_00->unk_00), 0);

                sub_0202DA68(param0->unk_00->unk_00, 0);
                Heap_Free(v1);
            } else {
                ov94_0224362C(param0);
            }
            break;
        case -4:
            param0->unk_36 = 0;

            if (sub_0202DA60(param0->unk_00->unk_00)) {
                Pokemon *v2 = Pokemon_New(HEAP_ID_62);

                sub_0202DA70(param0->unk_00->unk_00, v2);
                StringTemplate_SetNickname(param0->unk_B8C, 0, Pokemon_GetBoxPokemon(v2));

                param0->unk_28 = 3;
                param0->unk_2C = 34;

                sub_0202DA68(param0->unk_00->unk_00, 0);
                Heap_Free(v2);
            }
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            break;
        case -13:
            sub_02039834(HEAP_ID_APPLICATION, 1, 0);
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243554(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C4C0(param0, 1, 0);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_02243568(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B888(&param0->unk_12C);

    param0->unk_2C = 27;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02243588(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            if (ov94_02243ED8(param0)) {
                param0->unk_2C = 22;
                param0->unk_36 = 0;
                return 3;
            } else {
                param0->unk_36 = 1;
            }

            {
                UnkStruct_ov94_0223BA88 *v1 = &param0->unk_12C;
            }
            break;
        case -3:
            param0->unk_36 = 0;
            break;
        case -4:
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            param0->unk_3C = v0;
            param0->unk_2C = 38;
            return 3;
        case -13:
            sub_02038A0C();
            return 3;
        }

        ov94_0224362C(param0);
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static void ov94_0224362C(UnkStruct_ov94_0223FD4C *param0)
{
    switch (param0->unk_1C) {
    case 1:
        ov94_0223C4C0(param0, 1, 0);
        param0->unk_2C = 36;
        break;
    case 2:
        ov94_0223C4C0(param0, 2, 3);
        param0->unk_2C = 36;
        break;
    }
}

static int ov94_02243658(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02243BC4(param0, (Pokemon *)param0->unk_12C.unk_00.unk_00, sub_0202DAAC(param0->unk_00->unk_00), param0->unk_12C.unk_121);
    ov94_02243E2C(param0->unk_00->wiFiHistory, &param0->unk_12C);

    GameRecords_IncrementTrainerScore(param0->unk_00->records, TRAINER_SCORE_EVENT_UNK_25);
    ov94_02243E48(param0->unk_00->unk_2C, &param0->unk_12C);
    GameRecords_IncrementRecordValue(param0->unk_00->records, RECORD_WIFI_TRADES);

    TVBroadcast *broadcast = SaveData_GetTVBroadcast(param0->unk_00->saveData);
    sub_0206D104(broadcast);

    sub_0202DA68(param0->unk_00->unk_00, 0);
    param0->unk_2C = 30;
    ov94_02243EC8(param0, 19, 11);

    return 3;
}

static int ov94_022436D4(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B928();

    param0->unk_2C = 20;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022436F0(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 33;
            break;
        case -3:
            Link_SetErrorState(3);
            break;
        case -4:
        case -12:
            param0->unk_3C = v0;
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243778(UnkStruct_ov94_0223FD4C *param0)
{
    return 3;
}

static int ov94_0224377C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 1;
    ov94_0223C4C0(param0, 9, 7);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_02243794(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 0;
    ov94_0223C4C0(param0, 9, 8);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_022437AC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C4C0(param0, 9, 9);
    param0->unk_2C = 36;

    return 3;
}

static int ov94_022437C0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_36 = 0;
    ov94_0223C4C0(param0, 9, 10);
    param0->unk_2C = 30;

    return 3;
}

static int ov94_022437D8(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223B96C();

    param0->unk_2C = 23;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022437F4(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();
        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            ov94_0224362C(param0);
            break;
        case -3:
            ov94_0224362C(param0);
        case -4:
            ov94_0224362C(param0);
        case -5:
            Link_SetErrorState(3);
            break;
        case -12:
        case -15:
        case -2:
        case -14:
            Link_SetErrorState(4);
            break;
        case -13:
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02243884(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B90, 141, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 1, 0);
    ov94_0223C5F4(param0);
    ov94_022442E4(param0);

    return 3;
}

static void ov94_022438C8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = 148;

    switch (param0->unk_3C) {
    case -6:
    case -7:
    case -8:
    case -9:
    case -10:
    case -11:
        v0 = 26;
        break;
    case -1:
        v0 = 145;
        break;
    case -2:
    case -14:
        v0 = 150;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
        v0 = 148;
        break;
    }

    ov94_02245824(param0, param0->unk_B90, v0, TEXT_SPEED_FAST, 0xf0f);
}

static int ov94_02243920(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022438C8(param0);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 0, 0);
    ov94_0223C5F4(param0);

    return 3;
}

static int ov94_02243948(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022438C8(param0);
    ov94_0223C3F4(param0, 37, 36);
    ov94_0223C4C0(param0, 1, 0);
    ov94_0223C5F4(param0);
    ov94_022442E4(param0);

    return 3;
}

static int ov94_02243974(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C3F4(param0, 37, 30);
    ov94_02243EC8(param0, 33, 36);

    return 3;
}

static int ov94_02243990(UnkStruct_ov94_0223FD4C *param0)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(param0->unk_00->saveData, 2);

    param0->unk_2C = 31;
    param0->unk_10E0 = LCRNG_RandMod(60) + 2;

    return 3;
}

static int ov94_022439CC(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10E0--;

    if (param0->unk_10E0 == 0) {
        param0->unk_2C = 32;
    }

    return 3;
}

static int ov94_022439E4(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->saveData) == 1) {
        param0->unk_2C = param0->unk_10E8;
    }

    return 3;
}

static int ov94_02243A04(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->saveData) == 2) {
        param0->unk_2C = param0->unk_10EA;
        ov94_0223C5F4(param0);
    }

    return 3;
}

static int ov94_02243A28(UnkStruct_ov94_0223FD4C *param0)
{
    SaveData_SetFullSaveRequired();
    SaveData_SaveStateInit(param0->unk_00->saveData, 2);

    param0->unk_2C = 35;

    return 3;
}

static int ov94_02243A44(UnkStruct_ov94_0223FD4C *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->saveData) == 2) {
        ov94_0223C4C0(param0, 1, 0);
        ov94_0223C5F4(param0);
        ov94_02245824(param0, param0->unk_B90, param0->unk_28, TEXT_SPEED_FAST, 0xf0f);
        ov94_0223C3F4(param0, 37, 28);
    }

    return 3;
}

static int ov94_02243A90(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C5F4(param0);
    sub_02039794();

    if (param0->unk_1110 == 1) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    } else {
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);
    }

    param0->unk_2C = 0;

    return 4;
}

static int ov94_02243AE8(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static void ov94_02243B08(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    if (param0->unk_110 != 18) {
        Pokemon *v0 = Pokemon_New(HEAP_ID_62);

        Pokemon_FromBoxPokemon(PCBoxes_GetBoxMonAt(param0->unk_00->pcBoxes, param0->unk_110, param0->unk_112), v0);
        sub_0202DA7C(param0->unk_00->unk_00, v0, param0->unk_110);
        PCBoxes_InitBoxMonAt(param0->unk_00->pcBoxes, param0->unk_110, param0->unk_112);
        Heap_Free(v0);
    } else {
        Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

        sub_0207893C(v1);
        sub_0202DA7C(param0->unk_00->unk_00, v1, param0->unk_110);
        Party_RemovePokemonBySlotIndex(param0->unk_00->unk_08, param0->unk_112);

        if (Party_HasSpecies(param0->unk_00->unk_08, 441) == 0) {
            ChatotCry *v2 = SaveData_GetChatotCry(param0->unk_00->saveData);
            ResetChatotCryDataStatus(v2);
        }
    }

    if (param1) {
        sub_0202DA68(param0->unk_00->unk_00, 1);
    }
}

static void ov94_02243BC4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2, int param3)
{
    int v0 = Pokemon_GetValue(param1, MON_DATA_HELD_ITEM, NULL);

    SaveData_UpdateCatchRecords(param0->unk_00->saveData, param1);
    param2 = 18;

    if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
        param2 = 0;
    }

    if (param3) {
        u8 v1 = 70;

        if (Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
            if (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(param1, MON_DATA_HATCH_LOCATION, NULL) == 86) && (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 0))) {
                VarsFlags *v2 = SaveData_GetVarsFlags(param0->unk_00->saveData);

                if (SystemVars_GetArceusEventState(v2) == 0) {
                    SystemVars_SetArceusEventState(v2, 1);
                }
            }
        }

        Pokemon_SetValue(param1, MON_DATA_FRIENDSHIP, &v1);
        Pokemon_SetValue(param1, MON_DATA_GENDER, NULL);

        ov94_02243DE8(param0->unk_00->unk_00, 0);
    }

    if (param2 == 18) {
        int v3;

        Party_AddPokemon(param0->unk_00->unk_08, param1);
        v3 = Party_GetCurrentCount(param0->unk_00->unk_08);

        param0->unk_124.unk_00 = 18;
        param0->unk_124.unk_04 = v3 - 1;
    } else {
        int v4 = 0;

        PCBoxes_TryGetNextAvailableSpace(param0->unk_00->pcBoxes, &param2, &v4);
        PCBoxes_TryStoreBoxMonInBox(param0->unk_00->pcBoxes, param2, Pokemon_GetBoxPokemon(param1));

        param0->unk_124.unk_00 = param2;
        param0->unk_124.unk_04 = v4;
    }

    sub_0202DA68(param0->unk_00->unk_00, 0);
}

static void ov94_02243CE4(UnkStruct_ov94_0223FD4C *param0, Pokemon *param1, int param2)
{
    SaveData_UpdateCatchRecords(param0->unk_00->saveData, param1);

    param2 = 18;

    if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
        param2 = 0;
    }

    if (Pokemon_GetValue(param1, MON_DATA_SPECIES, NULL) == SPECIES_ARCEUS) {
        if (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) || ((Pokemon_GetValue(param1, MON_DATA_HATCH_LOCATION, NULL) == 86) && (Pokemon_GetValue(param1, MON_DATA_FATEFUL_ENCOUNTER, NULL) == 0))) {
            VarsFlags *v0 = SaveData_GetVarsFlags(param0->unk_00->saveData);

            if (SystemVars_GetArceusEventState(v0) == 0) {
                SystemVars_SetArceusEventState(v0, 1);
            }
        }
    }

    {
        u8 v1 = 70;
        Pokemon_SetValue(param1, MON_DATA_FRIENDSHIP, &v1);
    }

    Pokemon_SetValue(param1, MON_DATA_GENDER, NULL);

    if (param2 == 18) {
        int v2;

        Party_AddPokemon(param0->unk_00->unk_08, param1);
        v2 = Party_GetCurrentCount(param0->unk_00->unk_08);

        param0->unk_124.unk_00 = 18;
        param0->unk_124.unk_04 = v2 - 1;
    } else {
        int v3 = 0;

        PCBoxes_TryGetNextAvailableSpace(param0->unk_00->pcBoxes, &param2, &v3);
        PCBoxes_TryStoreBoxMonInBox(param0->unk_00->pcBoxes, param2, Pokemon_GetBoxPokemon(param1));

        param0->unk_124.unk_00 = param2;
        param0->unk_124.unk_04 = v3;
    }

    ov94_02243DE8(param0->unk_00->unk_00, 1);
}

static void ov94_02243DE8(GlobalTrade *param0, int param1)
{
    RTCDate v0;
    RTCTime v1;
    u32 v2;

    DWC_GetDateTime(&v0, &v1);

    v2 = inline_0202D4B0(&v0);

    if (param1 == 1) {
        sub_0202DAA4(param0, v2);
    } else {
        sub_0202DA94(param0, v2);
    }
}

static void ov94_02243E2C(WiFiHistory *wiFiHistory, UnkStruct_ov94_0223BA88 *param1)
{
    sub_02038FDC(wiFiHistory, param1->unk_11E, param1->unk_11F, param1->unk_123);
}

static void ov94_02243E48(JournalEntry *journalEntry, UnkStruct_ov94_0223BA88 *param1)
{
    void *journalEntryOnlineEvent;
    u16 nickname[MON_NAME_LEN + 1];
    Pokemon *mon = (Pokemon *)param1->unk_00.unk_00;

    Pokemon_GetValue(mon, MON_DATA_NICKNAME, nickname);
    journalEntryOnlineEvent = JournalEntry_CreateEventGotPokemonGTS(param1->unk_10C, param1->unk_F6, nickname, Pokemon_GetGender(mon), 62);
    JournalEntry_SaveData(journalEntry, journalEntryOnlineEvent, JOURNAL_ONLINE_EVENT);
}

static int ov94_02243E84(UnkStruct_ov94_0223FD4C *param0, UnkStruct_ov94_0223BA88 *param1)
{
    if (Pokemon_IsHoldingMail((Pokemon *)param1->unk_00.unk_00)
        && (Party_GetCurrentCount(param0->unk_00->unk_08) == 6)) {
        return 2;
    }

    if ((param0->unk_110C == (5 * 6 * 18)) && (Party_GetCurrentCount(param0->unk_00->unk_08) == 6)) {
        return 1;
    }

    return 0;
}

static void ov94_02243EC8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2)
{
    param0->unk_10E8 = param1;
    param0->unk_10EA = param2;
}

static int ov94_02243ED8(UnkStruct_ov94_0223FD4C *param0)
{
    Pokemon *v0 = (Pokemon *)param0->unk_12C.unk_00.unk_00;

    if (sub_0202DA60(param0->unk_00->unk_00) == 0) {
        if (param0->unk_36) {
            return 1;
        }
    }

    return 0;
}
