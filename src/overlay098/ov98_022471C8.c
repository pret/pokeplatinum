#include "overlay098/ov98_022471C8.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "struct_decls/struct_0202B370_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay061/struct_ov61_0222C3B0.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay098/ov98_02246C20.h"
#include "overlay098/ov98_022499C8.h"
#include "overlay098/struct_ov98_02246E88.h"

#include "bg_window.h"
#include "colored_arrow.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "sound_playback.h"
#include "screen_fade.h"
#include "touch_pad.h"
#include "unk_0202ACE0.h"
#include "unk_02030CE8.h"
#include "unk_020366A0.h"
#include "unk_02038FFC.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

typedef struct {
    UnkStruct_ov98_02246E88 *unk_00;
    BgConfig *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    StringTemplate *unk_20;
    MessageLoader *unk_24;
    MessageLoader *unk_28;
    MessageLoader *unk_2C;
    MessageLoader *unk_30;
    MessageLoader *unk_34;
    Strbuf *unk_38;
    Strbuf *unk_3C;
    Strbuf *unk_40;
    int unk_44;
    Window unk_48;
    Window unk_58;
    Window unk_68;
    Window unk_78;
    Menu *unk_88;
    void *unk_8C;
    int unk_90;
    int unk_94;
    int unk_98;
    int unk_9C;
    StringList *unk_A0;
    ListMenu *unk_A4;
    int unk_A8;
    int unk_AC;
    int unk_B0;
    int unk_B4;
    int unk_B8;
    int unk_BC;
    int unk_C0;
    Window unk_C4;
    Window unk_D4;
    ColoredArrow *unk_E4;
    s32 unk_E8;
    UnkStruct_ov61_0222C3B0 unk_EC;
} UnkStruct_ov98_02247704;

typedef struct {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_ov98_02249BDC;

int ov98_022471C8(ApplicationManager *appMan, int *param1);
int ov98_022473D8(ApplicationManager *appMan, int *param1);
int ov98_02247440(ApplicationManager *appMan, int *param1);
static void ov98_022474E8(void *param0);
static void ov98_02247510(BgConfig *param0);
static void ov98_022476D0(BgConfig *param0);
static void ov98_02247704(UnkStruct_ov98_02247704 *param0);
static void ov98_02247A24(UnkStruct_ov98_02247704 *param0);
static void ov98_02247ACC(UnkStruct_ov98_02247704 *param0);
static void ov98_02247AE8(UnkStruct_ov98_02247704 *param0, int param1, int param2);
static void ov98_02247AF0(UnkStruct_ov98_02247704 *param0);
static void ov98_02247B0C(UnkStruct_ov98_02247704 *param0);
static Menu *ov98_02247B24(BgConfig *param0, int param1, int param2);
static int ov98_02247B98(UnkStruct_ov98_02247704 *param0);
static int ov98_02247D30(UnkStruct_ov98_02247704 *param0);
static int ov98_02247D50(UnkStruct_ov98_02247704 *param0);
static int ov98_02247E38(UnkStruct_ov98_02247704 *param0);
static int ov98_02248684(UnkStruct_ov98_02247704 *param0);
static int ov98_022487AC(UnkStruct_ov98_02247704 *param0);
static int ov98_022487CC(UnkStruct_ov98_02247704 *param0);
static int ov98_02248804(UnkStruct_ov98_02247704 *param0);
static int ov98_022488F8(UnkStruct_ov98_02247704 *param0);
static int ov98_02248954(UnkStruct_ov98_02247704 *param0);
static int ov98_0224897C(UnkStruct_ov98_02247704 *param0);
static int ov98_022489B4(UnkStruct_ov98_02247704 *param0);
static int ov98_022489DC(UnkStruct_ov98_02247704 *param0);
static int ov98_02248A68(UnkStruct_ov98_02247704 *param0);
static int ov98_02248B14(UnkStruct_ov98_02247704 *param0);
static int ov98_02248B24(UnkStruct_ov98_02247704 *param0);
static int ov98_02248BFC(UnkStruct_ov98_02247704 *param0);
static int ov98_02248C60(UnkStruct_ov98_02247704 *param0);
static int ov98_02248C88(UnkStruct_ov98_02247704 *param0);
static int ov98_02248DF4(UnkStruct_ov98_02247704 *param0);
static int ov98_02248EC0(UnkStruct_ov98_02247704 *param0);
static int ov98_02248EE0(UnkStruct_ov98_02247704 *param0);
static int ov98_02248F7C(UnkStruct_ov98_02247704 *param0);
static int ov98_02249168(UnkStruct_ov98_02247704 *param0);
static int ov98_022491CC(UnkStruct_ov98_02247704 *param0);
static int ov98_02249238(UnkStruct_ov98_02247704 *param0);
static int ov98_02249320(UnkStruct_ov98_02247704 *param0);
static int ov98_02249414(UnkStruct_ov98_02247704 *param0);
static int ov98_02249438(UnkStruct_ov98_02247704 *param0);
static int ov98_02249464(UnkStruct_ov98_02247704 *param0);
static int ov98_022494A0(UnkStruct_ov98_02247704 *param0);
static int ov98_022494C0(UnkStruct_ov98_02247704 *param0);
static int ov98_022495C4(UnkStruct_ov98_02247704 *param0);
static int ov98_022496A8(UnkStruct_ov98_02247704 *param0);
static int ov98_022496C0(UnkStruct_ov98_02247704 *param0);
static int ov98_022496EC(UnkStruct_ov98_02247704 *param0);
static int ov98_02249798(UnkStruct_ov98_02247704 *param0);
static int ov98_022497F8(UnkStruct_ov98_02247704 *param0);
static void ov98_02249714(UnkStruct_ov98_02247704 *param0, MessageLoader *param1, int param2, int param3, u16 param4);
static int ov98_0224977C(int param0);
static int ov98_02249894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);
void ov98_022498CC(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5);
static void ov98_02249900(UnkStruct_ov98_02247704 *param0, int param1);
static void ov98_02249964(UnkStruct_ov98_02247704 *param0, int param1, int param2);
static void ov98_022499A0(ListMenu *param0, u32 param1, u8 param2);
static void ov98_022499B4(ListMenu *param0, u32 param1, u8 param2);

static int (*Unk_ov98_02249D70[])(UnkStruct_ov98_02247704 *) = {
    ov98_02247B98,
    ov98_02247D30,
    ov98_02247D50,
    ov98_02247E38,
    ov98_02248684,
    ov98_022487AC,
    ov98_022487CC,
    ov98_02248804,
    ov98_022488F8,
    ov98_02248954,
    ov98_0224897C,
    ov98_022489B4,
    ov98_022489DC,
    ov98_02248A68,
    ov98_02248B14,
    ov98_02248B24,
    ov98_02248BFC,
    ov98_02248C60,
    ov98_02248C88,
    ov98_02248DF4,
    ov98_02248EC0,
    ov98_02248EE0,
    ov98_02248F7C,
    ov98_02249168,
    ov98_022491CC,
    ov98_02249238,
    ov98_02249320,
    ov98_02249414,
    ov98_02249438,
    ov98_02249464,
    ov98_02249464,
    ov98_022494A0,
    ov98_022494C0,
    ov98_022495C4,
    ov98_022496A8,
    ov98_022496C0,
    ov98_022496EC,
    ov98_02249798,
    ov98_022497F8,
};

static const UnkStruct_ov98_02249BDC Unk_ov98_02249BEC[] = {
    { 0x0, 0x1 },
    { 0x2, 0x2 },
    { 0x3, 0x3 },
    { 0x4, 0x1D }
};

static const ListMenuTemplate Unk_ov98_02249C0C = {
    NULL,
    ov98_022499A0,
    NULL,
    NULL,
    (NELEMS(Unk_ov98_02249BEC)),
    (NELEMS(Unk_ov98_02249BEC)),
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0
};

static const u8 Unk_ov98_02249BC0[4] = {
    0xB,
    0x7,
    0x14,
    0x8
};

static const UnkStruct_ov98_02249BDC Unk_ov98_02249BDC[] = {
    { 0x1, 0x4 },
    { 0x4, 0x1D }
};

static const ListMenuTemplate Unk_ov98_02249C2C = {
    NULL,
    ov98_022499B4,
    NULL,
    NULL,
    (NELEMS(Unk_ov98_02249BDC)),
    (NELEMS(Unk_ov98_02249BDC)),
    0x0,
    0x8,
    0x0,
    0x0,
    0x1,
    0xF,
    0x2,
    0x0,
    0x10,
    0x0,
    0x0,
    0x0
};

static const u8 Unk_ov98_02249BBC[4] = {
    0xB,
    0xD,
    0x14,
    0x4
};

static const WindowTemplate Unk_ov98_02249BC4 = {
    0x0,
    0x17,
    0xD,
    0x7,
    0x4,
    0xD,
    0x0
};

int ov98_022471C8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02247704 *v0;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_109, 0x70000);
    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov98_02247704), HEAP_ID_109);
    MI_CpuClear8(v0, sizeof(UnkStruct_ov98_02247704));

    v0->unk_00 = ApplicationManager_Args(appMan);
    v0->unk_04 = BgConfig_New(HEAP_ID_109);

    VramTransfer_New(64, HEAP_ID_109);
    SetAutorepeat(4, 8);
    ov98_02247510(v0->unk_04);
    EnableTouchPad();
    InitializeTouchPad(4);

    v0->unk_20 = StringTemplate_New(11, 64, HEAP_ID_109);
    v0->unk_24 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0671, HEAP_ID_109);
    v0->unk_2C = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0674, HEAP_ID_109);
    v0->unk_30 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0695, HEAP_ID_109);
    v0->unk_28 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_109);
    v0->unk_34 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0358, HEAP_ID_109);
    v0->unk_38 = Strbuf_Init((90 * 2), HEAP_ID_109);
    v0->unk_40 = Strbuf_Init((16 * 8 * 2), HEAP_ID_109);
    v0->unk_3C = MessageLoader_GetNewStrbuf(v0->unk_24, 31);

    ov98_02247704(v0);
    ov98_02247A24(v0);

    switch (ov98_02246EA4(v0->unk_00)) {
    case 12:
        if (!DWC_CheckInet() && (sub_02039074(v0->unk_00->saveData) == 1)) {
            v0->unk_08 = 12;
            sub_02038548(v0->unk_00->saveData);
            sub_02039734();
        } else {
            v0->unk_08 = 0;
        }
        break;
    case 22:
        v0->unk_E8 = 0;
        sub_02039734();
        v0->unk_08 = ov98_02246EA4(v0->unk_00);
        break;
    default:
        v0->unk_08 = ov98_02246EA4(v0->unk_00);
        break;
    }

    ov98_02246E9C(v0->unk_00, 0);

    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_109);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    SetVBlankCallback(ov98_022474E8, v0);

    return 1;
}

int ov98_022473D8(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02247704 *v0 = ApplicationManager_Data(appMan);
    int v1, v2;

    switch (*param1) {
    case 0:
        if (IsScreenFadeDone() == TRUE) {
            *param1 = 1;
        }
        break;
    case 1:
        v2 = v0->unk_08;
        v1 = (*Unk_ov98_02249D70[v0->unk_08])(v0);

        if (v2 != v0->unk_08) {
            v0->unk_94 = 0;
            v0->unk_9C = 0;
            v0->unk_98 = 0;
        }

        if (v1 == 1) {
            *param1 = 2;
        }
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return 1;
        }
        break;
    }

    inline_ov61_0222C0F8(&v0->unk_EC);

    return 0;
}

int ov98_02247440(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov98_02247704 *v0 = ApplicationManager_Data(appMan);

    inline_ov61_0222C160(&v0->unk_EC);

    MessageLoader_Free(v0->unk_34);
    MessageLoader_Free(v0->unk_28);
    MessageLoader_Free(v0->unk_30);
    MessageLoader_Free(v0->unk_2C);
    MessageLoader_Free(v0->unk_24);
    StringTemplate_Free(v0->unk_20);
    Strbuf_Free(v0->unk_3C);
    Strbuf_Free(v0->unk_40);
    Strbuf_Free(v0->unk_38);
    ov98_02247ACC(v0);
    Heap_FreeToHeap(v0->unk_04);
    ov98_022476D0(v0->unk_04);
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    VramTransfer_Free();
    DisableTouchPad();
    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    sub_02039794();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_109);

    return 1;
}

static void ov98_022474E8(void *param0)
{
    UnkStruct_ov98_02247704 *v0 = param0;

    VramTransfer_Process();
    RenderOam_Transfer();

    Bg_RunScheduledUpdates(v0->unk_04);
    inline_ov61_0222C1FC(&v0->unk_EC);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov98_02247510(BgConfig *param0)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    {
        UnkStruct_02099F80 v0 = {
            GX_VRAM_BG_128_A,
            GX_VRAM_BGEXTPLTT_NONE,
            GX_VRAM_SUB_BG_128_C,
            GX_VRAM_SUB_BGEXTPLTT_NONE,
            GX_VRAM_OBJ_64_E,
            GX_VRAM_OBJEXTPLTT_NONE,
            GX_VRAM_SUB_OBJ_16_I,
            GX_VRAM_SUB_OBJEXTPLTT_NONE,
            GX_VRAM_TEX_0_B,
            GX_VRAM_TEXPLTT_01_FG
        };

        GXLayers_SetBanks(&v0);

        MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
        MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
        MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
    }

    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v1);
    }

    {
        BgTemplate v2[] = {
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf800,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0 },
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                3,
                0,
                0,
                0 },
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe800,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                1,
                0,
                0,
                0 },
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe000,
                GX_BG_CHARBASE_0x18000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0 },
        };

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v2[0], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_0, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_0, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v2[1], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_1);
        Bg_SetOffset(param0, BG_LAYER_MAIN_1, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_1, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_2, &v2[2], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_2);
        Bg_SetOffset(param0, BG_LAYER_MAIN_2, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_2, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_3, &v2[3], 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_3);
        Bg_SetOffset(param0, BG_LAYER_MAIN_3, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_MAIN_3, 3, 0);
    }

    {
        BgTemplate v3[] = {
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x10000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0 },
            { 0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xd800,
                GX_BG_CHARBASE_0x08000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0 },
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v3[0], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
        Bg_SetOffset(param0, BG_LAYER_SUB_0, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_0, 3, 0);

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3[1], 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_1);
        Bg_SetOffset(param0, BG_LAYER_SUB_1, 0, 0);
        Bg_SetOffset(param0, BG_LAYER_SUB_1, 3, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_109);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_109);
}

static void ov98_022476D0(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov98_02247704(UnkStruct_ov98_02247704 *param0)
{
    BgConfig *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_109);

    Graphics_LoadPaletteFromOpenNARC(v1, 3, 0, 0, 0, HEAP_ID_109);
    Graphics_LoadPaletteFromOpenNARC(v1, 3, 4, 0, 0, HEAP_ID_109);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_109);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_109);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->unk_00->options), HEAP_ID_109);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_109);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_2, (1 + (18 + 12)), 11, 0, HEAP_ID_109);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 2, v0, 1, 0, 0, 0, HEAP_ID_109);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, HEAP_ID_109);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 10, v0, 5, 0, 0, 0, HEAP_ID_109);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 11, v0, 5, 0, 32 * 24 * 2, 0, HEAP_ID_109);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&param0->unk_EC, v1, 4, 109);

    NARC_dtor(v1);

    {
        v1 = NARC_ctor(NARC_INDEX_ARC__EMAIL_GRA, HEAP_ID_109);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);

        Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 11, v0, 3, 0, 0, 0, HEAP_ID_109);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 10, v0, 3, 0, 0, 0, HEAP_ID_109);
        Graphics_LoadPaletteFromOpenNARC(v1, 12, 0, 9 * 0x20, 0x20, HEAP_ID_109);

        NARC_dtor(v1);
    }
}

static void ov98_02247A24(UnkStruct_ov98_02247704 *param0)
{
    Window_Add(param0->unk_04, &param0->unk_68, 0, 4, 4, 23, 16, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    Window_FillTilemap(&param0->unk_68, 0x0);
    Window_Add(param0->unk_04, &param0->unk_58, 0, 4, 1, 24, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16));
    Window_FillTilemap(&param0->unk_58, 0x0);

    ov98_022498CC(&param0->unk_58, param0->unk_3C, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    Window_Add(param0->unk_04, &param0->unk_48, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_48, 0x0);
}

static void ov98_02247ACC(UnkStruct_ov98_02247704 *param0)
{
    Window_Remove(&param0->unk_48);
    Window_Remove(&param0->unk_58);
    Window_Remove(&param0->unk_68);
}

static void ov98_02247AE8(UnkStruct_ov98_02247704 *param0, int param1, int param2)
{
    param0->unk_08 = param1;
    param0->unk_0C = param2;
}

static void ov98_02247AF0(UnkStruct_ov98_02247704 *param0)
{
    if (param0->unk_8C == NULL) {
        param0->unk_8C = Window_AddWaitDial(&param0->unk_48, 1);
    }
}

static void ov98_02247B0C(UnkStruct_ov98_02247704 *param0)
{
    if (param0->unk_8C != NULL) {
        DestroyWaitDial(param0->unk_8C);
        param0->unk_8C = NULL;
    }
}

static Menu *ov98_02247B24(BgConfig *param0, int param1, int param2)
{
    WindowTemplate v0;

    v0 = Unk_ov98_02249BC4;
    v0.tilemapTop = param1;
    v0.baseTile = param2;

    return Menu_MakeYesNoChoice(param0, &v0, (1 + (18 + 12)), 11, 109);
}

static Menu *ov98_02247B58(BgConfig *param0, int param1, int param2, int param3)
{
    WindowTemplate v0;

    v0 = Unk_ov98_02249BC4;
    v0.tilemapTop = param1;
    v0.baseTile = param2;

    return Menu_MakeYesNoChoiceWithCursorAt(param0, &v0, (1 + (18 + 12)), 11, param3, 109);
}

static int ov98_02247B98(UnkStruct_ov98_02247704 *param0)
{
    u32 v0;

    switch (param0->unk_94) {
    case 0: {
        int v1;
        ListMenuTemplate v2;
        const u8 *v3;
        const UnkStruct_ov98_02249BDC *v4;
        int v5;

        if (sub_02030D20(param0->unk_00->saveData) == 1) {
            v3 = Unk_ov98_02249BC0;
            v4 = Unk_ov98_02249BEC;
            v5 = (NELEMS(Unk_ov98_02249BEC));
            v2 = Unk_ov98_02249C0C;
        } else {
            v3 = Unk_ov98_02249BBC;
            v4 = Unk_ov98_02249BDC;
            v5 = (NELEMS(Unk_ov98_02249BDC));
            v2 = Unk_ov98_02249C2C;
        }

        Window_Add(param0->unk_04, &param0->unk_78, 0, v3[0], v3[1], v3[2], v3[3], 13, (((1 + (18 + 12)) + 9) + 27 * 4));

        param0->unk_A0 = StringList_New(v5, HEAP_ID_109);

        for (v1 = 0; v1 < v5; v1++) {
            StringList_AddFromMessageBank(param0->unk_A0, param0->unk_34, v4[v1].unk_00, v4[v1].unk_04);
        }

        v2.window = &param0->unk_78;
        v2.choices = param0->unk_A0;
        param0->unk_A4 = ListMenu_New(&v2, 0, 0, HEAP_ID_109);

        Window_DrawStandardFrame(&param0->unk_78, 1, (1 + (18 + 12)), 11);
        Window_EraseMessageBox(&param0->unk_48, 1);
        Window_CopyToVRAM(&param0->unk_78);
    }

        param0->unk_94++;
        break;
    case 1:
        v0 = ListMenu_ProcessInput(param0->unk_A4);

        switch (v0) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov98_02246E88(param0->unk_00, 6, 0);
            param0->unk_9C = 29;
            param0->unk_94++;
            break;
        default:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->unk_9C = v0;
            param0->unk_94++;
            break;
        }
        break;
    default:
        StringList_Free(param0->unk_A0);
        ListMenu_Free(param0->unk_A4, NULL, NULL);
        Window_EraseStandardFrame(&param0->unk_78, 1);
        Window_ClearAndCopyToVRAM(&param0->unk_78);
        Window_Remove(&param0->unk_78);
        param0->unk_08 = param0->unk_9C;
        break;
    }

    return 0;
}

static int ov98_02247D30(UnkStruct_ov98_02247704 *param0)
{
    ov98_02246E88(param0->unk_00, 4, 3);
    ov98_02246E9C(param0->unk_00, 38);

    param0->unk_08 = 29;
    return 0;
}

static int ov98_02247D50(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 25, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_94++;
        break;
    case 2: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                ov98_02249714(param0, param0->unk_34, 27, TEXT_SPEED_FAST, 0xf0f);
                sub_02030D5C(param0->unk_00->saveData, 0, 0);
            } else {
                ov98_02249714(param0, param0->unk_34, 26, TEXT_SPEED_FAST, 0xf0f);
                sub_02030D5C(param0->unk_00->saveData, 0, 1);
            }

            param0->unk_94++;
        }
    } break;
    case 3:
        ov98_02247AE8(param0, 25, 0);
        break;
    }

    return 0;
}

static int ov98_02247E38(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 28, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_88 = ov98_02247B58(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2), 1);
        param0->unk_94++;
        break;
    case 2: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                param0->unk_08 = 0;
            } else {
                ov98_02249714(param0, param0->unk_34, 29, TEXT_SPEED_FAST, 0xf0f);
                sub_02030D10(param0->unk_00->saveData);
                param0->unk_94++;
            }
        }
    } break;
    case 3:
        ov98_02247AE8(param0, 25, 0);
        break;
    }

    return 0;
}

static const int Unk_ov98_022482CC[] = {
    44,
    53,
    45,
    46,
    47,
    48,
    53,
    49,
    50,
    53,
    51,
};

static u32 Unk_ov98_02249D60[][2] = {
    { 0x4, 0x8 },
    { 0x80, 0x8 }
};

static void ov98_02247F08(UnkStruct_ov98_02247704 *param0)
{
    Strbuf *v0;

    Window_FillTilemap(&param0->unk_D4, 0xf0f);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_34, 42);
    Text_AddPrinterWithParams(&param0->unk_D4, FONT_SYSTEM, v0, Unk_ov98_02249D60[0][0] + 12, Unk_ov98_02249D60[0][1], TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v0);

    v0 = MessageLoader_GetNewStrbuf(param0->unk_34, 43);
    Text_AddPrinterWithParams(&param0->unk_D4, FONT_SYSTEM, v0, Unk_ov98_02249D60[1][0] + 12, Unk_ov98_02249D60[1][1], TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v0);
    ColoredArrow_Print(param0->unk_E4, &param0->unk_D4, Unk_ov98_02249D60[param0->unk_B0][0], Unk_ov98_02249D60[param0->unk_B0][1]);
    Window_CopyToVRAM(&param0->unk_D4);
}

static void ov98_02247FA4(UnkStruct_ov98_02247704 *param0)
{
    Window_FillTilemap(&param0->unk_D4, 0xf0f);
    Window_CopyToVRAM(&param0->unk_D4);
}

static void ov98_02247FBC(UnkStruct_ov98_02247704 *param0)
{
    if ((++param0->unk_BC) == 8) {
        param0->unk_C0 ^= 1;
        param0->unk_BC = 0;

        if (param0->unk_AC + 6 != param0->unk_B4) {
            Bg_FillTilemapRect(param0->unk_04, 3, 1 + (param0->unk_C0 * 20), 14, 17, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 2 + (param0->unk_C0 * 20), 15, 17, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 3 + (param0->unk_C0 * 20), 16, 17, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 4 + (param0->unk_C0 * 20), 17, 17, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 11 + (param0->unk_C0 * 20), 14, 18, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 12 + (param0->unk_C0 * 20), 15, 18, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 13 + (param0->unk_C0 * 20), 16, 18, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 14 + (param0->unk_C0 * 20), 17, 18, 1, 1, 9);
        } else {
            Bg_FillTilemapRect(param0->unk_04, 3, 0, 14, 17, 4, 2, 9);
        }

        if (param0->unk_AC != 0) {
            Bg_FillTilemapRect(param0->unk_04, 3, 5 + (param0->unk_C0 * 20), 14, 3, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 6 + (param0->unk_C0 * 20), 15, 3, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 7 + (param0->unk_C0 * 20), 16, 3, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 8 + (param0->unk_C0 * 20), 17, 3, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 15 + (param0->unk_C0 * 20), 14, 4, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 16 + (param0->unk_C0 * 20), 15, 4, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 17 + (param0->unk_C0 * 20), 16, 4, 1, 1, 9);
            Bg_FillTilemapRect(param0->unk_04, 3, 18 + (param0->unk_C0 * 20), 17, 4, 1, 1, 9);
        } else {
            Bg_FillTilemapRect(param0->unk_04, 3, 0, 14, 3, 4, 2, 9);
        }

        Bg_ScheduleTilemapTransfer(param0->unk_04, 3);
    }
}

static void ov98_022482CC(UnkStruct_ov98_02247704 *param0)
{
    int v0;
    int v1 = 0;
    Strbuf *v2;
    Strbuf *v3;

    Window_FillTilemap(&param0->unk_C4, 0x0f0f);
    v2 = MessageLoader_GetNewStrbuf(param0->unk_34, 44);
    v3 = Strbuf_Init(Strbuf_Length(v2), HEAP_ID_109);
    for (v0 = param0->unk_AC; v0 < param0->unk_AC + 6; v0++) {
        Strbuf_CopyLineNum(v3, v2, v0);
        Text_AddPrinterWithParams(&param0->unk_C4, FONT_SYSTEM, v3, 4, v1 * 16, TEXT_SPEED_NO_TRANSFER, NULL);
        v1++;
    }
    Strbuf_Free(v2);
    Strbuf_Free(v3);
    Window_CopyToVRAM(&param0->unk_C4);
}

// clang-format off
asm static int ov98_02248350 (UnkStruct_ov98_02247704 * param0)
{
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    add r5, r0, #0
    add r1, r5, #0
    add r1, #0xa8
    ldr r1, [r1, #0]
    cmp r1, #0
    beq _0224836E
    cmp r1, #1
    bne _02248366
    b _022484B8
 _02248366:
    cmp r1, #2
    bne _0224836C
    b _02248566
 _0224836C:
    b _02248614
 _0224836E:
    ldr r0, [r5, #0x34]
    mov r1, #0x2c
    bl MessageLoader_GetNewStrbuf
    str r0, [sp, #0x14]
    bl Strbuf_NumLines
    add r1, r5, #0
    mov r2, #0
    add r1, #0xac
    str r2, [r1, #0]
    add r1, r5, #0
    add r1, #0xb0
    str r2, [r1, #0]
    add r1, r5, #0
    add r1, #0xb8
    str r2, [r1, #0]
    add r1, r5, #0
    add r1, #0xb4
    str r0, [r1, #0]
    mov r0, #5
    str r0, [sp]
    mov r0, #0x1e
    str r0, [sp, #4]
    mov r0, #0xc
    str r0, [sp, #8]
    mov r0, #0xd
    str r0, [sp, #0xc]
    mov r0, #0x94
    str r0, [sp, #0x10]
    add r1, r5, #0
    ldr r0, [r5, #4]
    add r1, #0xc4
    mov r2, #2
    mov r3, #1
    bl Window_Add
    mov r0, #0x13
    str r0, [sp]
    mov r0, #0x1e
    str r0, [sp, #4]
    mov r0, #4
    str r0, [sp, #8]
    mov r0, #0xd
    str r0, [sp, #0xc]
    mov r0, #0x7f
    lsl r0, r0, #2
    str r0, [sp, #0x10]
    add r1, r5, #0
    ldr r0, [r5, #4]
    add r1, #0xd4
    mov r2, #2
    mov r3, #1
    bl Window_Add
    add r0, r5, #0
    add r0, #0xc4
    mov r1, #0xf
    bl Window_FillTilemap
    ldr r0, [sp, #0x14]
    bl Strbuf_Length
    mov r1, #0x6d
    bl Strbuf_Init
    add r7, r0, #0
    add r0, r5, #0
    mov r6, #0
    str r0, [sp, #0x18]
    add r0, #0xc4
    add r4, r6, #0
    str r0, [sp, #0x18]
 _02248400:
    ldr r1, [sp, #0x14]
    add r0, r7, #0
    add r2, r6, #0
    bl Strbuf_CopyLineNum
    str r4, [sp]
    mov r0, #0xff
    str r0, [sp, #4]
    mov r0, #0
    str r0, [sp, #8]
    ldr r0, [sp, #0x18]
    mov r1, #0
    add r2, r7, #0
    mov r3, #4
    bl Text_AddPrinterWithParams
    add r6, r6, #1
    add r4, #0x10
    cmp r6, #6
    blt _02248400
    ldr r0, [sp, #0x14]
    bl Strbuf_Free
    add r0, r7, #0
    bl Strbuf_Free
    add r0, r5, #0
    add r0, #0xc4
    mov r1, #1
    mov r2, #0x1f
    mov r3, #0xb
    bl Window_DrawStandardFrame
    add r0, r5, #0
    add r0, #0xc4
    bl Window_CopyToVRAM
    add r0, r5, #0
    add r0, #0xd4
    mov r1, #0xf
    bl Window_FillTilemap
    add r0, r5, #0
    add r0, #0xd4
    mov r1, #1
    mov r2, #0x1f
    mov r3, #0xb
    bl Window_DrawStandardFrame
    add r0, r5, #0
    add r0, #0xd4
    bl Window_CopyToVRAM
    mov r0, #0x6d
    bl ColoredArrow_New
    add r1, r5, #0
    add r1, #0xe4
    str r0, [r1, #0]
    add r0, r5, #0
    add r0, #0x48
    mov r1, #0xf
    bl Window_FillTilemap
    add r0, r5, #0
    add r0, #0x48
    mov r1, #1
    bl Window_EraseMessageBox
    add r0, r5, #0
    add r0, #0x48
    bl Window_ClearAndCopyToVRAM
    mov r0, #8
    mov r1, #1
    bl GXLayers_EngineAToggleLayers
    add r0, r5, #0
    mov r1, #0
    add r0, #0xbc
    str r1, [r0, #0]
    add r0, r5, #0
    add r0, #0xc0
    str r1, [r0, #0]
    add r0, r5, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    add r1, r0, #1
    add r0, r5, #0
    add r0, #0xa8
    str r1, [r0, #0]
    b _02248670
 _022484B8:
    ldr r1, = gSystem
    add r0, #0xac
    ldr r2, [r1, #0x4c]
    ldr r4, [r0, #0]
    mov r0, #0x40
    tst r0, r2
    beq _022484E0
    cmp r4, #0
    beq _02248552
    add r0, r5, #0
    add r0, #0xac
    ldr r0, [r0, #0]
    sub r1, r0, #1
    add r0, r5, #0
    add r0, #0xac
    str r1, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    b _02248552
 _022484E0:
    mov r0, #0x80
    tst r0, r2
    beq _02248534
    add r0, r5, #0
    add r0, #0xb4
    ldr r0, [r0, #0]
    add r1, r4, #6
    cmp r1, r0
    bge _02248506
    add r0, r5, #0
    add r0, #0xac
    ldr r0, [r0, #0]
    add r1, r0, #1
    add r0, r5, #0
    add r0, #0xac
    str r1, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
 _02248506:
    add r0, r5, #0
    add r0, #0xac
    ldr r0, [r0, #0]
    add r1, r0, #6
    add r0, r5, #0
    add r0, #0xb4
    ldr r0, [r0, #0]
    cmp r1, r0
    bne _02248552
    add r0, r5, #0
    bl ov98_02247F08
    add r0, r5, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    add r1, r0, #1
    add r0, r5, #0
    add r0, #0xa8
    str r1, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    b _02248552
 _02248534:
    ldr r1, [r1, #0x48]
    mov r0, #2
    tst r0, r1
    beq _02248552
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    add r0, r5, #0
    mov r1, #2
    add r0, #0xb8
    str r1, [r0, #0]
    add r0, r5, #0
    mov r1, #0xff
    add r0, #0xa8
    str r1, [r0, #0]
 _02248552:
    add r0, r5, #0
    add r0, #0xac
    ldr r0, [r0, #0]
    cmp r4, r0
    bne _0224855E
    b _02248670
 _0224855E:
    add r0, r5, #0
    bl ov98_022482CC
    b _02248670
 _02248566:
    ldr r1, = gSystem
    mov r2, #0x10
    ldr r1, [r1, #0x48]
    tst r2, r1
    bne _02248576
    mov r2, #0x20
    tst r2, r1
    beq _02248594
 _02248576:
    add r0, r5, #0
    add r0, #0xb0
    ldr r1, [r0, #0]
    mov r0, #1
    eor r1, r0
    add r0, r5, #0
    add r0, #0xb0
    str r1, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    add r0, r5, #0
    bl ov98_02247F08
    b _02248670
 _02248594:
    mov r2, #1
    tst r2, r1
    beq _022485BE
    add r0, #0xb0
    ldr r1, [r0, #0]
    mov r0, #2
    sub r1, r0, r1
    add r0, r5, #0
    add r0, #0xb8
    str r1, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    add r0, r5, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    add r1, r0, #1
    add r0, r5, #0
    add r0, #0xa8
    str r1, [r0, #0]
    b _02248670
 _022485BE:
    mov r2, #2
    add r3, r1, #0
    tst r3, r2
    beq _022485E0
    add r0, #0xb8
    str r2, [r0, #0]
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    add r0, r5, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    add r1, r0, #1
    add r0, r5, #0
    add r0, #0xa8
    str r1, [r0, #0]
    b _02248670
 _022485E0:
    mov r2, #0x40
    tst r1, r2
    beq _02248670
    bl ov98_02247FA4
    ldr r0, = 0x5DC
    bl Sound_PlayEffect
    add r0, r5, #0
    add r0, #0xa8
    ldr r0, [r0, #0]
    sub r1, r0, #1
    add r0, r5, #0
    add r0, #0xa8
    str r1, [r0, #0]
    add r0, r5, #0
    add r0, #0xac
    ldr r0, [r0, #0]
    sub r1, r0, #1
    add r0, r5, #0
    add r0, #0xac
    str r1, [r0, #0]
    add r0, r5, #0
    bl ov98_022482CC
    b _02248670
 _02248614:
    add r0, #0xc4
    mov r1, #0
    bl Window_EraseStandardFrame
    add r0, r5, #0
    add r0, #0xc4
    bl Window_ClearAndCopyToVRAM
    add r0, r5, #0
    add r0, #0xc4
    bl Window_Remove
    add r0, r5, #0
    add r0, #0xd4
    mov r1, #0
    bl Window_EraseStandardFrame
    add r0, r5, #0
    add r0, #0xd4
    bl Window_ClearAndCopyToVRAM
    add r0, r5, #0
    add r0, #0xd4
    bl Window_Remove
    add r0, r5, #0
    add r0, #0xe4
    ldr r0, [r0, #0]
    bl ColoredArrow_Free
    ldr r0, [r5, #4]
    mov r1, #3
    bl Bg_ClearTilemap
    mov r0, #8
    mov r1, #0
    bl GXLayers_EngineAToggleLayers
    add r0, r5, #0
    mov r1, #0
    add r0, #0xa8
    str r1, [r0, #0]
    add r5, #0xb8
    add sp, #0x1c
    ldr r0, [r5, #0]
    pop {r4, r5, r6, r7, pc}
 _02248670:
    add r0, r5, #0
    bl ov98_02247FBC
    mov r0, #0
    add sp, #0x1c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on

static int ov98_02248684(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        param0->unk_94 = 3;
        break;
    case 1:
        param0->unk_94++;
        break;
    case 2: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                param0->unk_94++;
            } else {
                ov98_02249714(param0, param0->unk_34, 9, TEXT_SPEED_FAST, 0xf0f);
                param0->unk_94 = 4;
            }
        }
    } break;
    case 3: {
        int v1 = ov98_02248350(param0);

        if (v1 == 1) {
            ov98_02249714(param0, param0->unk_34, 9, TEXT_SPEED_FAST, 0xf0f);
            param0->unk_94++;
        } else if (v1 == 2) {
            ov98_02247AE8(param0, 34, 0);
        }
    } break;
    case 4:
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_94++;
        break;
    default: {
        int v2 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v2 != 0xffffffff) {
            if (v2 == 0xfffffffe) {
                ov98_02249714(param0, param0->unk_34, 10, TEXT_SPEED_FAST, 0xf0f);
                ov98_02247AE8(param0, 34, 0);
            } else {
                param0->unk_08 = 5;
            }
        }
    } break;
    }

    return 0;
}

static int ov98_022487AC(UnkStruct_ov98_02247704 *param0)
{
    ov98_02246E88(param0->unk_00, 1, 0);
    ov98_02246E9C(param0->unk_00, 6);
    param0->unk_08 = 29;
    return 0;
}

static int ov98_022487CC(UnkStruct_ov98_02247704 *param0)
{
    charcode_t *v0;
    switch (ov98_02246FB4(param0->unk_00)) {
    case 1:
        param0->unk_08 = 0;
        return 0;
    case 2:
    case 3:
        param0->unk_08 = 37;
        return 0;
    }

    if (param0->unk_94 == 0) {
        param0->unk_08 = 7;
    }

    return 0;
}

static int ov98_02248804(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        param0->unk_94++;
        break;
    case 1:
        ov98_02249714(param0, param0->unk_34, 11, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 2:
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_94++;
        break;
    case 3: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                ov98_02247AE8(param0, 34, 0);
            } else {
                param0->unk_94++;
            }
        }
    } break;
    case 4:
        if (sub_02039074(param0->unk_00->saveData) == 0) {
            ov98_02246E88(param0->unk_00, 5, 0);
            ov98_02246E9C(param0->unk_00, 12);
            param0->unk_08 = 29;
            return 0;
        }

        ov98_02247AE8(param0, 34, 12);
        break;
    }

    return 0;
}

static int ov98_022488F8(UnkStruct_ov98_02247704 *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0203859C();
            ov98_02246E88(param0->unk_00, 6, 0);
            param0->unk_08 = 29;
        } else {
            ov98_02249714(param0, param0->unk_2C, 1, TEXT_SPEED_FAST, 0xf0f);
            ov98_02247AE8(param0, 34, 12);
            ov98_02247AF0(param0);
        }
    }

    return 0;
}

static int ov98_02248954(UnkStruct_ov98_02247704 *param0)
{
    ov98_02249714(param0, param0->unk_30, 26, TEXT_SPEED_FAST, 0xf0f);
    ov98_02247AE8(param0, 34, 10);

    return 0;
}

static int ov98_0224897C(UnkStruct_ov98_02247704 *param0)
{
    sub_0203859C();

    DWC_CleanupInet();

    sub_02039794();
    SleepUnlock(4);

    if (param0->unk_00->unk_11C == 1) {
        ov94_0223B7AC();
        param0->unk_00->unk_11C = 0;
    }

    param0->unk_08 = 11;

    return 0;
}

static int ov98_022489B4(UnkStruct_ov98_02247704 *param0)
{
    ov98_02249714(param0, param0->unk_30, 27, TEXT_SPEED_FAST, 0xf0f);
    ov98_02247AE8(param0, 35, 29);

    return 0;
}

static int ov98_022489DC(UnkStruct_ov98_02247704 *param0)
{
    switch (param0->unk_94) {
    case 0:
        sub_02038548(param0->unk_00->saveData);
        sub_02039734();
        ov98_02249714(param0, param0->unk_2C, 1, TEXT_SPEED_FAST, 0xf0f);
        ov98_02247AF0(param0);
        param0->unk_94++;
        break;
    case 1:
        if (ov98_0224977C(param0->unk_44) == 0) {
            param0->unk_94++;
        }
        break;
    case 2:
        SleepLock(4);

        DWC_InitInetEx(&param0->unk_00->unk_14, 2, 1, 20);
        DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
        DWC_ConnectInetAsync();
        param0->unk_08 = 13;
        break;
    }

    return 0;
}

static int ov98_02248A68(UnkStruct_ov98_02247704 *param0)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        switch (DWC_GetInetStatus()) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError v0;
            int v1;
            DWCErrorType v2;

            v0 = DWC_GetLastErrorEx(&v1, &v2);
            param0->unk_14 = v0;
            param0->unk_18 = v1;
            param0->unk_1C = v2;
        }
            DWC_ClearError();
            DWC_CleanupInet();

            sub_02039794();
            sub_0203859C();
            SleepUnlock(4);

            if (param0->unk_00->unk_11C == 1) {
                ov94_0223B7AC();
                param0->unk_00->unk_11C = 0;
            }

            ov98_02247B0C(param0);
            param0->unk_08 = 27;
            break;
        case DWC_CONNECTINET_STATE_NOT_INITIALIZED:
        case DWC_CONNECTINET_STATE_IDLE:
        case DWC_CONNECTINET_STATE_OPERATING:
        case DWC_CONNECTINET_STATE_OPERATED:
        case DWC_CONNECTINET_STATE_DISCONNECTING:
        case DWC_CONNECTINET_STATE_DISCONNECTED:
        default:
        case DWC_CONNECTINET_STATE_FATAL_ERROR: {
            DWCError v3;
            int v4;

            v3 = DWC_GetLastError(&v4);

            ov98_02247B0C(param0);
            param0->unk_08 = 32;
            param0->unk_10 = -2;
        } break;
        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;
            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }

            param0->unk_08 = 14;
            break;
        }
    }

    return 0;
}

static int ov98_02248B14(UnkStruct_ov98_02247704 *param0)
{
    DWC_NASLoginAsync();

    param0->unk_08 = 15;
    return 0;
}

static int ov98_02248B24(UnkStruct_ov98_02247704 *param0)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:;
        param0->unk_08 = 16;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        ov98_02247B0C(param0);
        {
            int v0;
            DWCErrorType v1;
            DWCError v2;

            v2 = DWC_GetLastErrorEx(&v0, &v1);
            param0->unk_14 = v2;
            param0->unk_18 = v0;

            DWC_ClearError();
            DWC_CleanupInet();

            sub_02039794();
            sub_0203859C();
            SleepUnlock(4);

            if (param0->unk_00->unk_11C == 1) {
                ov94_0223B7AC();
                param0->unk_00->unk_11C = 0;
            }

            param0->unk_08 = 27;

            switch (v1) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                param0->unk_08 = 27;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                param0->unk_08 = 27;
                break;
            case DWC_ETYPE_DISCONNECT:
                param0->unk_08 = 27;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                param0->unk_08 = 27;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                sub_02038A0C();
                break;
            }

            if ((v0 < -20000) && (v0 >= -29999)) {
                param0->unk_08 = 27;
            }
        }
        break;
    }

    return 0;
}

static int ov98_02248BFC(UnkStruct_ov98_02247704 *param0)
{
    DWCUserData *v0;
    s32 v1;
    WiFiList *v3 = SaveData_GetWiFiList(param0->unk_00->saveData);
    SystemData *v2 = SaveData_GetSystemData(param0->unk_00->saveData);
    v0 = WiFiList_GetUserData(v3);
    v1 = SystemData_GetDWCProfileId(v2);

    if (v1 == 0) {
        SystemData_SetDWCProfileId(v2, WiFiList_GetUserGsProfileId(v3));
    }

    v1 = SystemData_GetDWCProfileId(v2);

    ov94_0223B140(v1, DWC_CreateFriendKey(v0));

    param0->unk_00->unk_11C = 1;
    param0->unk_08 = 17;

    return 0;
}

static int ov98_02248C60(UnkStruct_ov98_02247704 *param0)
{
    ov98_02246F5C(param0->unk_00);
    ov98_02246F74(param0->unk_00);
    ov94_0223BB84(&param0->unk_00->unk_9C, &param0->unk_00->unk_100);

    param0->unk_08 = 18;
    param0->unk_E8 = 0;

    return 0;
}

static int ov98_02248C88(UnkStruct_ov98_02247704 *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_E8 = 0;

        switch (v0) {
        case 0:
            switch (param0->unk_00->unk_100.unk_00) {
            case 0:
                switch (param0->unk_00->unk_100.unk_04) {
                case 1:
                    param0->unk_08 = 19;
                    break;
                case 2:
                    ov98_02247B0C(param0);
                    param0->unk_10 = -5001;
                    param0->unk_08 = 32;
                    break;

                case 0:
                    ov98_02247B0C(param0);
                    param0->unk_10 = -5002;
                    param0->unk_08 = 32;
                    break;
                case 3:
                    ov98_02247B0C(param0);
                    param0->unk_10 = -5003;
                    param0->unk_08 = 32;
                    break;
                default:
                    sub_02038A0C();
                    break;
                }

                break;
            case 1:
                ov98_02247B0C(param0);
                param0->unk_10 = -5004;
                param0->unk_08 = 32;
                break;
            case 2:
                ov98_02247B0C(param0);
                param0->unk_10 = -5005;
                param0->unk_08 = 32;
                break;
            default:
                ov98_02247B0C(param0);
                sub_02038A0C();
                break;
            }

            break;
        case 1:
            ov98_02247B0C(param0);
            param0->unk_10 = v0;
            param0->unk_08 = 32;
            break;
        case 2:
        case -1:
            ov98_02247B0C(param0);
            param0->unk_10 = v0;
            param0->unk_08 = 32;
            break;
        case -12:
        case -15:
            ov98_02247B0C(param0);
            param0->unk_10 = v0;
            param0->unk_08 = 32;
            break;
        case -2:
        case -14:
            ov98_02247B0C(param0);
            param0->unk_10 = v0;
            param0->unk_08 = 32;
            break;
        case -13:
        default:
            ov98_02247B0C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_E8++;

        if (param0->unk_E8 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 0;
}

static int ov98_02248DF4(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02247B0C(param0);
        ov98_02249714(param0, param0->unk_34, 13, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_94++;
        break;
    case 2: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                param0->unk_08 = 21;
            } else {
                param0->unk_94++;
            }
        }
    } break;
    case 3:

        ov98_02249714(param0, param0->unk_34, 17, TEXT_SPEED_FAST, 0xf0f);
        ov98_02247AE8(param0, 34, 20);
        break;
    }

    return 0;
}

static int ov98_02248EC0(UnkStruct_ov98_02247704 *param0)
{
    ov98_02246E88(param0->unk_00, 2, 1);
    ov98_02246E9C(param0->unk_00, 22);
    param0->unk_08 = 30;
    return 0;
}

static int ov98_02248EE0(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 14, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_94++;
        break;
    case 2: {
        int v0 = Menu_ProcessInputAndHandleExit(param0->unk_88, 109);

        if (v0 != 0xffffffff) {
            if (v0 == 0xfffffffe) {
                param0->unk_08 = 19;
            } else {
                ov98_02247AE8(param0, 26, 0);
            }
        }
    } break;
    }

    return 0;
}

static int ov98_02248F7C(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_02246F9C(param0->unk_00) == 0xffffffff) {
        param0->unk_08 = 21;
        return 0;
    }

    switch (param0->unk_94) {
    case 0:

        ov98_02249714(param0, param0->unk_34, 18, TEXT_SPEED_INSTANT, 0xf0f);
        ov98_02247AF0(param0);
        ov98_02246F88(param0->unk_00);
        ov94_0223BB84(&param0->unk_00->unk_9C, &param0->unk_00->unk_100);
        param0->unk_94++;
        break;
    case 1:
        if (ov94_0223B7B8()) {
            s32 v0 = ov94_0223B7D8();

            param0->unk_E8 = 0;
            ov98_02247B0C(param0);

            switch (v0) {
            case 0:
                switch (param0->unk_00->unk_100.unk_00) {
                case 0:
                    switch (param0->unk_00->unk_100.unk_04) {
                    case 0:
                        param0->unk_94++;
                        break;
                    case 3:
                        ov98_02249714(param0, param0->unk_34, 19, TEXT_SPEED_FAST, 0xf0f);
                        ov98_02247AE8(param0, 34, 21);
                        break;
                    case 1:
                        param0->unk_10 = -5006;
                        param0->unk_08 = 32;
                        break;
                    case 2:
                        param0->unk_10 = -5007;
                        param0->unk_08 = 32;
                        break;
                    default:
                        sub_02038A0C();
                        break;
                    }
                    break;
                case 1:
                    param0->unk_10 = -5010;
                    param0->unk_08 = 32;
                    break;
                case 2:
                    param0->unk_10 = -5011;
                    param0->unk_08 = 32;
                    break;
                default:
                    GF_ASSERT(0);
                    sub_02038A0C();
                    break;
                }
                break;
            case 1:
                param0->unk_10 = v0;
                param0->unk_08 = 32;
                break;
            case 2:
            case -1:
                param0->unk_10 = v0;
                param0->unk_08 = 32;
                break;
            case -12:
            case -15:
                param0->unk_10 = v0;
                param0->unk_08 = 32;
                break;
            case -2:
            case -14:
                param0->unk_10 = v0;
                param0->unk_08 = 32;
                break;
            case -13:
            default:
                sub_02038A0C();
                break;
            }
        } else {
            param0->unk_E8++;

            if (param0->unk_E8 == (30 * 60 * 2)) {
                sub_02038A0C();
            }
        }
        break;
    case 2:
        ov98_02249714(param0, param0->unk_34, 20, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 3:
        if (ov98_0224977C(param0->unk_44) == 0) {
            ov98_02247AE8(param0, 26, 23);
        }
        break;
    }

    return 0;
}

static int ov98_02249168(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 21, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        ov98_02246E88(param0->unk_00, 3, 2);
        ov98_02246E9C(param0->unk_00, 24);
        param0->unk_08 = 30;
        break;
    }

    return 0;
}

static int ov98_022491CC(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 24, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        ov98_02246EF8(param0->unk_00);
        ov98_02246F24(param0->unk_00);
        ov98_02246F48(param0->unk_00);
        ov98_02247AE8(param0, 25, 0);
        break;
    }

    return 0;
}

static int ov98_02249238(UnkStruct_ov98_02247704 *param0)
{
    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 32, TEXT_SPEED_INSTANT, 0xf0f);
        ov98_02247AF0(param0);
        param0->unk_94++;
        break;
    case 1: {
        int v0;

        v0 = SaveData_Save(param0->unk_00->saveData);

        if (v0 == 2) {
            StringTemplate_SetPlayerName(param0->unk_20, 0, SaveData_GetTrainerInfo(param0->unk_00->saveData));
            ov98_02249714(param0, param0->unk_34, 33, TEXT_SPEED_INSTANT, 0xf0f);
            Sound_PlayEffect(SEQ_SE_DP_SAVE);
        } else {
            ov98_02249714(param0, param0->unk_34, 34, TEXT_SPEED_INSTANT, 0xf0f);
        }

        ov98_02247B0C(param0);
        param0->unk_94++;
    } break;
    case 2:
        if (ov98_0224977C(param0->unk_44) == 0) {
            param0->unk_94++;
        }
        break;
    case 3:
        param0->unk_98++;

        if (param0->unk_98 > 60) {
            param0->unk_98 = 0;
            param0->unk_08 = param0->unk_0C;
        }
        break;
    }

    return 0;
}

static int ov98_02249320(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 15, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:

        DWC_CleanupInet();

        sub_02039794();
        sub_0203859C();
        SleepUnlock(4);

        if (param0->unk_00->unk_11C == 1) {
            ov94_0223B7AC();
            param0->unk_00->unk_11C = 0;
        }

        param0->unk_94++;
        break;
    case 2:
        if (ov98_0224977C(param0->unk_44) == 0) {
            ov98_02249714(param0, param0->unk_34, 16, TEXT_SPEED_FAST, 0xf0f);
            param0->unk_94++;
        }
        break;
    case 3:
        if (ov98_0224977C(param0->unk_44) == 0) {
            param0->unk_94++;
        }
        break;
    case 4:
        param0->unk_90++;

        if (param0->unk_90 > 30) {
            param0->unk_08 = param0->unk_0C;
        }
        break;
    }

    return 0;
}

static int ov98_02249414(UnkStruct_ov98_02247704 *param0)
{
    int v0 = ov4_021D1F3C(-param0->unk_18, param0->unk_1C);

    ov98_02249964(param0, v0, -param0->unk_18);

    param0->unk_08 = 28;

    return 0;
}

static int ov98_02249438(UnkStruct_ov98_02247704 *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&param0->unk_68, 0);
        param0->unk_08 = 0;
    }

    return 0;
}

static int ov98_02249464(UnkStruct_ov98_02247704 *param0)
{
    if (param0->unk_08 != 30) {
        sub_0203859C();
    }

    sub_02039794();
    ov98_02247B0C(param0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_109);

    param0->unk_08 = 0;

    return 1;
}

static int ov98_022494A0(UnkStruct_ov98_02247704 *param0)
{
    param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
    param0->unk_08 = param0->unk_0C;

    return 0;
}

static int ov98_022494C0(UnkStruct_ov98_02247704 *param0)
{
    int v0 = 0;
    int v1 = 0;

    switch (param0->unk_10) {
    case 1:
        v0 = 54;
        break;
    case 2:
    case -1:
        v0 = 55;
        break;
    case -2:
    case -14:
        v0 = 57;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
    default:
        v0 = 56;
        break;
    case -5001:
        v0 = 173;
        v1++;
        break;
    case -5002:
        v0 = 174;
        v1++;
        break;
    case -5003:
        v0 = 174;
        v1++;
        break;
    case -5004:
        v0 = 175;
        v1++;
        break;
    case -5005:
        v0 = 176;
        v1++;
        break;
    case -5006:
        v0 = 174;
        v1++;
        break;
    case -5007:
        v0 = 174;
        v1++;
        break;
    case -5010:
        v0 = 175;
        v1++;
        break;
    case -5011:
        v0 = 176;
        v1++;
        break;
    }

    if (v1 == 0) {
        ov98_02249714(param0, param0->unk_34, v0, TEXT_SPEED_FAST, 0xf0f);
    } else {
        ov98_02249714(param0, param0->unk_24, v0, TEXT_SPEED_FAST, 0xf0f);
    }

    ov98_02247AE8(param0, 34, 33);

    return 0;
}

static int ov98_022495C4(UnkStruct_ov98_02247704 *param0)
{
    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, 15, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 1:
        if (ov98_0224977C(param0->unk_44) == 0) {
            sub_0203859C();

            DWC_CleanupInet();

            sub_02039794();
            SleepUnlock(4);

            if (param0->unk_00->unk_11C == 1) {
                ov94_0223B7AC();
                param0->unk_00->unk_11C = 0;
            }

            param0->unk_94++;
        }
        break;
    case 2:
        ov98_02249714(param0, param0->unk_34, 16, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_94++;
        break;
    case 3:
        if (ov98_0224977C(param0->unk_44) == 0) {
            param0->unk_94++;
        }
        break;
    default:
        param0->unk_90++;

        if (param0->unk_90 > 30) {
            ov98_02246E94(param0->unk_00);
            param0->unk_08 = 29;
        }
        break;
    }

    return 0;
}

static int ov98_022496A8(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 0) {
        param0->unk_08 = param0->unk_0C;
    }

    return 0;
}

static int ov98_022496C0(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 0) {
        if (param0->unk_90 > 30) {
            param0->unk_08 = param0->unk_0C;
        }

        param0->unk_90++;
    }

    return 0;
}

static int ov98_022496EC(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 0) {
        param0->unk_88 = ov98_02247B24(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_08 = param0->unk_0C;
    }

    return 0;
}

static void ov98_02249714(UnkStruct_ov98_02247704 *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param1, param2);

    StringTemplate_Format(param0->unk_20, param0->unk_38, v0);
    Strbuf_Free(v0);
    Window_FillTilemap(&param0->unk_48, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_48, 0, 1, 10);

    param0->unk_44 = Text_AddPrinterWithParams(&param0->unk_48, FONT_MESSAGE, param0->unk_38, 0, 0, param3, NULL);
    param0->unk_90 = 0;

    if ((param3 == 0xff) || (param3 == 0)) {
        param0->unk_44 = 0xff;
    }
}

static int ov98_0224977C(int param0)
{
    if ((param0 == 0xff) || (Text_IsPrinterActive(param0) == 0)) {
        return 0;
    }

    return 1;
}

static int ov98_02249798(UnkStruct_ov98_02247704 *param0)
{
    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        ov98_02249714(param0, param0->unk_34, ov98_02246FB4(param0->unk_00) == 2 ? 0x26 : 0x27, TEXT_SPEED_FAST, 0x0F0F);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_08 = 5;
        break;
    }

    return 0;
}

static int ov98_022497F8(UnkStruct_ov98_02247704 *param0)
{
    UnkStruct_ov98_02246E88 *v0 = param0->unk_00;
    int v1;
    u32 v2[4];
    u32 v3;

    if (ov98_0224977C(param0->unk_44) == 1) {
        return 0;
    }

    switch (param0->unk_94) {
    case 0:
        if (ov98_02246FA4(v0) == sub_02030D98(v0->saveData, 3)) {
            ov98_02249ACC(sub_02030D50(v0->saveData), v2, 108);
            for (v3 = 0; v3 < 4; v3++) {
                StringTemplate_SetNumber(param0->unk_20, v3, v2[v3], 4, 2, 1);
            }
            v1 = 41;
        } else {
            v1 = 40;
        }
        ov98_02249714(param0, param0->unk_34, v1, TEXT_SPEED_FAST, 0x0F0F);
        param0->unk_94++;
        break;
    case 1:
        param0->unk_08 = 0;
        break;
    }

    return 0;
}

static int ov98_02249894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5)
{
    int v0 = 0, v1;

    switch (param3) {
    case 1:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = ((param0->width * 8) - v0) / 2;
        break;

    case 2:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = (param0->width * 8) - v0;
        break;
    }

    return param2;
}

void ov98_022498CC(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5)
{
    param2 = ov98_02249894(param0, param1, param2, param4, param5, 1);
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

static void ov98_02249900(UnkStruct_ov98_02247704 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), HEAP_ID_109);

    MessageLoader_GetStrbuf(param0->unk_30, param1, v0);
    StringTemplate_Format(param0->unk_20, param0->unk_40, v0);

    Window_FillTilemap(&param0->unk_68, 15);
    Window_DrawStandardFrame(&param0->unk_68, 1, (1 + (18 + 12)), 11);

    param0->unk_44 = Text_AddPrinterWithParams(&param0->unk_68, FONT_MESSAGE, param0->unk_40, 0, 0, TEXT_SPEED_INSTANT, NULL);
    param0->unk_44 = 0xff;

    Strbuf_Free(v0);
}

static void ov98_02249964(UnkStruct_ov98_02247704 *param0, int param1, int param2)
{
    int v0;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = 11;
    }

    StringTemplate_SetNumber(param0->unk_20, 0, param2, 5, 2, 1);

    Window_EraseMessageBox(&param0->unk_48, 1);
    ov98_02249900(param0, v0);
}

static void ov98_022499A0(ListMenu *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}

static void ov98_022499B4(ListMenu *param0, u32 param1, u8 param2)
{
    if (param2 == 0) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}
