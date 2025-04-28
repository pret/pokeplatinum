#include "overlay072/ov72_0223D7A0.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_02015920_decl.h"
#include "struct_defs/struct_02015958.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay072/struct_ov72_0223DB98_decl.h"
#include "overlay072/struct_ov72_0223DB98_t.h"
#include "overlay072/struct_ov72_0223E2A8.h"
#include "overlay072/struct_ov72_0223E7D8.h"
#include "overlay072/struct_ov72_0223E80C.h"
#include "overlay072/struct_ov72_0223EAD8.h"

#include "assert.h"
#include "bg_window.h"
#include "char_transfer.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200F174.h"
#include "unk_02012744.h"
#include "unk_02015920.h"
#include "unk_0201E3D8.h"
#include "unk_0202C7FC.h"
#include "vram_transfer.h"

static void inline_ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223DA48(void *param0);
static void ov72_0223DA70(void);
static void ov72_0223DA90(BgConfig *param0);
static void ov72_0223DB98(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223DC34(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223DC6C(BgConfig *param0);
static void ov72_0223DCA8(UnkStruct_ov72_0223DB98 *param0, NARC *param1);
static void ov72_0223DDA8(void);
static void ov72_0223DDD8(UnkStruct_ov72_0223DB98 *param0, NARC *param1);
static void ov72_0223DF58(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E0A0(UnkStruct_ov72_0223DB98 *param0, OverlayManager *param1);
static void ov72_0223E260(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E2A8(UnkStruct_ov72_0223DB98 *param0);
static int ov72_0223E3C0(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E408(UnkStruct_ov72_0223DB98 *param0);
static int ov72_0223E458(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E488(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E590(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E5B0(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E660(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7);
static void ov72_0223E7D8(UnkStruct_ov72_0223E7D8 *param0, UnkStruct_ov72_0223E80C *param1);
static void ov72_0223E80C(Window *param0, UnkStruct_ov72_0223E7D8 *param1, UnkStruct_ov72_0223E80C *param2, int param3);
static void ov72_0223E8CC(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E8D0(u16 *param0);
static void ov72_0223E910(Window *param0, int param1, u32 param2, UnkStruct_ov72_0223DB98 *param3);
static void ov72_0223E914(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223E930(UnkStruct_ov72_0223DB98 *param0, int param1);
static int ov72_0223E99C(int param0);
static void ov72_0223E388(Sprite **param0, int param1);
static void ov72_0223E3A8(Sprite **param0, BOOL param1);
static int ov72_0223E528(UnkStruct_ov72_0223DB98 *param0, int param1);
static void ov72_0223E430(BgConfig *param0, UnkStruct_02015920 *param1);
static void ov72_0223E9B4(u8 *param0, u8 *param1);
static void *ov72_0223E060(Window *param0, Strbuf *param1, int param2, u8 param3, const u32 param4);
static void ov72_0223EA18(UnkStruct_ov72_0223DB98 *param0);
static void ov72_0223EAD8(UnkStruct_ov72_0223EAD8 *param0);
static void ov72_0223E5E0(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);

static int (*Unk_ov72_0223ED40[])(UnkStruct_ov72_0223DB98 *, int) = {
    NULL,
    ov72_0223E3C0,
    ov72_0223E458,
    ov72_0223E488,
    ov72_0223E590,
    ov72_0223E5B0,
    ov72_0223E528,
};

int ov72_0223D7A0(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0;
    NARC *v1;

    switch (*param1) {
    case 0:
        sub_0200F344(0, 0x0);
        sub_0200F344(1, 0x0);
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_39, 0x40000);

        v0 = OverlayManager_NewData(param0, sizeof(UnkStruct_ov72_0223DB98), HEAP_ID_39);
        memset(v0, 0, sizeof(UnkStruct_ov72_0223DB98));
        v0->unk_00 = BgConfig_New(HEAP_ID_39);
        v1 = NARC_ctor(NARC_INDEX_GRAPHIC__MYSIGN, HEAP_ID_39);
        v0->unk_10 = StringTemplate_Default(HEAP_ID_39);
        v0->unk_14 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0425, HEAP_ID_39);

        SetAutorepeat(4, 8);
        ov72_0223DA70();
        ov72_0223DA90(v0->unk_00);
        StartScreenTransition(0, 1, 1, 0x0, 16, 1, HEAP_ID_39);

        {
            SaveData *v2 = (SaveData *)OverlayManager_Args(param0);

            v0->unk_5BFC = (u8 *)sub_0202C840(sub_0202C834(v2));
            v0->records = (GameRecords *)SaveData_GetGameRecords((SaveData *)OverlayManager_Args(param0));
            v0->unk_0C = (Options *)SaveData_GetOptions((SaveData *)OverlayManager_Args(param0));
        }

        ov72_0223DCA8(v0, v1);

        sub_0201E3D8();
        sub_0201E450(1);
        SetVBlankCallback(ov72_0223DA48, v0->unk_00);
        Font_InitManager(FONT_SUBSCREEN, HEAP_ID_39);

        ov72_0223DB98(v0);
        ov72_0223DDA8();
        ov72_0223DDD8(v0, v1);
        ov72_0223DF58(v0);
        ov72_0223E0A0(v0, param0);

        Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_56, SEQ_NONE, 0);
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
        NARC_dtor(v1);
        (*param1)++;
        break;
    case 1:
        v0 = OverlayManager_Data(param0);
        (*param1) = 0;
        return 1;
        break;
    }

    return 0;
}

int ov72_0223D920(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0 = OverlayManager_Data(param0);

    switch (*param1) {
    case 0:
        if (IsScreenTransitionDone()) {
            *param1 = 1;
        }
        break;
    case 1:

        if (Unk_ov72_0223ED40[v0->unk_370] != NULL) {
            *param1 = (*Unk_ov72_0223ED40[v0->unk_370])(v0, *param1);
        }

        ov72_0223E8D0(&v0->unk_437C);
        break;
    case 2:
        if (IsScreenTransitionDone()) {
            return 1;
        }
        break;
    }

    SpriteList_Update(v0->unk_3C);

    return 0;
}

int ov72_0223D984(OverlayManager *param0, int *param1)
{
    UnkStruct_ov72_0223DB98 *v0 = OverlayManager_Data(param0);
    int v1;

    ov72_0223E9B4(v0->unk_5BFC, v0->unk_328.pixels);

    SetVBlankCallback(NULL, NULL);
    SpriteTransfer_ResetCharTransfer(v0->unk_1DC[0][0]);
    SpriteTransfer_ResetCharTransfer(v0->unk_1DC[1][0]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_1DC[0][1]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_1DC[1][1]);

    for (v1 = 0; v1 < 4; v1++) {
        SpriteResourceCollection_Delete(v0->unk_1CC[v1]);
    }

    SpriteList_Delete(v0->unk_3C);
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    ov72_0223E260(v0);
    Font_Free(FONT_SUBSCREEN);
    ov72_0223DC6C(v0->unk_00);
    sub_0201E530();
    MessageLoader_Free(v0->unk_14);
    StringTemplate_Free(v0->unk_10);
    ov72_0223DC34(v0);
    OverlayManager_FreeData(param0);

    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);

    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_39);

    return 1;
}

static void ov72_0223DA48(void *param0)
{
    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates((BgConfig *)param0);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov72_0223DA70(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov72_0223DA90(BgConfig *param0)
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
            0,
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
            0
        };

        Bg_InitFromTemplate(param0, 0, &v1, 0);
        Bg_ClearTilemap(param0, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v2, 0);
        Bg_ClearTilemap(param0, 1);
    }

    {
        BgTemplate v3 = {
            0,
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
            0
        };

        Bg_InitFromTemplate(param0, 2, &v3, 0);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 4, &v4, 0);
        Bg_ClearTilemap(param0, 4);
    }

    {
        BgTemplate v5 = {
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
        };

        Bg_InitFromTemplate(param0, 5, &v5, 0);
    }

    Bg_ClearTilesRange(0, 32, 0, HEAP_ID_39);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_39);
}

static void ov72_0223DB98(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param0->unk_18[v0] = Strbuf_Init(7 + 1, HEAP_ID_39);
        param0->unk_4391[v0].unk_10_4 = 0;
        param0->unk_43E6[v0].unk_02 = 0;
    }

    param0->unk_2C = Strbuf_Init((10 * 2), HEAP_ID_39);
    param0->unk_30 = Strbuf_Init((20 * 2), HEAP_ID_39);
    param0->unk_34 = Strbuf_Init((40 * 2), HEAP_ID_39);
    param0->unk_437E = 0;
    param0->unk_370 = 1;

    MessageLoader_GetStrbuf(param0->unk_14, 12, param0->unk_2C);
    MessageLoader_GetStrbuf(param0->unk_14, 9, param0->unk_30);

    param0->unk_5D00 = sub_02015920(HEAP_ID_39);

    MI_CpuClearFast(&param0->unk_5D04, sizeof(UnkStruct_ov72_0223EAD8));
}

static void ov72_0223DC34(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    sub_02015938(param0->unk_5D00);

    for (v0 = 0; v0 < 5; v0++) {
        Strbuf_Free(param0->unk_18[v0]);
    }

    Strbuf_Free(param0->unk_34);
    Strbuf_Free(param0->unk_30);
    Strbuf_Free(param0->unk_2C);
}

static void ov72_0223DC6C(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 3);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 0);
    Heap_FreeToHeap(param0);
}

static void ov72_0223DCA8(UnkStruct_ov72_0223DB98 *param0, NARC *param1)
{
    BgConfig *v0 = param0->unk_00;

    Graphics_LoadPaletteFromOpenNARC(param1, 0, 0, 0, 16 * 2 * 3, HEAP_ID_39);
    Graphics_LoadPaletteFromOpenNARC(param1, 2, 4, 0, 16 * 2 * 2, HEAP_ID_39);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_39);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_39);
    Bg_ClearTilesRange(1, 32, 0, HEAP_ID_39);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 3, v0, 2, 0, 32 * 8 * 0x20, 1, HEAP_ID_39);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 5, v0, 2, 0, 32 * 24 * 2, 1, HEAP_ID_39);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param1, 4, v0, 5, 0, 32 * 8 * 0x20, 1, HEAP_ID_39);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(param1, 6, v0, 5, 0, 32 * 24 * 2, 1, HEAP_ID_39);
    LoadMessageBoxGraphics(v0, 0, 1, 10, Options_Frame(param0->unk_0C), HEAP_ID_39);
    LoadStandardWindowGraphics(v0, 0, 1 + (18 + 12), 11, 0, HEAP_ID_39);
}

static void ov72_0223DDA8(void)
{
    {
        CharTransferTemplate v0 = {
            20, 2048, 2048, 39
        };

        CharTransfer_Init(&v0);
    }

    PlttTransfer_Init(20, HEAP_ID_39);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void ov72_0223DDD8(UnkStruct_ov72_0223DB98 *param0, NARC *param1)
{
    int v0;

    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 126, 0, 32, 0, 126, 0, 32, 39);

    param0->unk_3C = SpriteList_InitRendering(50, &param0->unk_40, HEAP_ID_39);

    SetSubScreenViewRect(&param0->unk_40, 0, (256 * FX32_ONE));

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_1CC[v0] = SpriteResourceCollection_New(2, v0, HEAP_ID_39);
    }

    param0->unk_1DC[0][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1CC[0], param1, 7, 1, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_39);
    param0->unk_1DC[0][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1CC[1], param1, 1, 0, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_39);
    param0->unk_1DC[0][2] = SpriteResourceCollection_AddFrom(param0->unk_1CC[2], param1, 8, 1, 0, 2, HEAP_ID_39);
    param0->unk_1DC[0][3] = SpriteResourceCollection_AddFrom(param0->unk_1CC[3], param1, 9, 1, 0, 3, HEAP_ID_39);
    param0->unk_1DC[1][0] = SpriteResourceCollection_AddTilesFrom(param0->unk_1CC[0], param1, 7, 1, 1, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_39);
    param0->unk_1DC[1][1] = SpriteResourceCollection_AddPaletteFrom(param0->unk_1CC[1], param1, 1, 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 3, HEAP_ID_39);
    param0->unk_1DC[1][2] = SpriteResourceCollection_AddFrom(param0->unk_1CC[2], param1, 8, 1, 1, 2, HEAP_ID_39);
    param0->unk_1DC[1][3] = SpriteResourceCollection_AddFrom(param0->unk_1CC[3], param1, 9, 1, 1, 3, HEAP_ID_39);

    SpriteTransfer_RequestChar(param0->unk_1DC[0][0]);
    SpriteTransfer_RequestChar(param0->unk_1DC[1][0]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_1DC[0][1]);
    SpriteTransfer_RequestPlttWholeRange(param0->unk_1DC[1][1]);
}

static const u16 Unk_ov72_0223EB3C[1][3] = {
    { 0xE0, 0xAF, 0x0 }
};

static void ov72_0223DF58(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    SpriteResourcesHeader_Init(&param0->unk_1FC, 0, 0, 0, 0, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1CC[0], param0->unk_1CC[1], param0->unk_1CC[2], param0->unk_1CC[3], NULL, NULL);
    SpriteResourcesHeader_Init(&param0->unk_220, 1, 1, 1, 1, 0xffffffff, 0xffffffff, 0, 0, param0->unk_1CC[0], param0->unk_1CC[1], param0->unk_1CC[2], param0->unk_1CC[3], NULL, NULL);

    {
        AffineSpriteListTemplate v1;

        v1.list = param0->unk_3C;
        v1.resourceData = &param0->unk_1FC;
        v1.position.z = 0;
        v1.affineScale.x = FX32_ONE;
        v1.affineScale.y = FX32_ONE;
        v1.affineScale.z = FX32_ONE;
        v1.affineZRotation = 0;
        v1.priority = 1;
        v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        v1.heapID = HEAP_ID_39;

        for (v0 = 0; v0 < 1; v0++) {
            v1.resourceData = &param0->unk_220;
            v1.position.x = FX32_ONE * (Unk_ov72_0223EB3C[v0][0]);
            v1.position.y = FX32_ONE * (Unk_ov72_0223EB3C[v0][1]);

            param0->unk_2B4[v0] = SpriteList_AddAffine(&v1);

            Sprite_SetAnimateFlag(param0->unk_2B4[v0], 1);
            Sprite_SetAnim(param0->unk_2B4[v0], Unk_ov72_0223EB3C[v0][2]);
            Sprite_SetExplicitPalette(param0->unk_2B4[v0], 0);

            if (v0 == 0) {
                Sprite_SetExplicitPriority(param0->unk_2B4[v0], 2);
            }
        }
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void *ov72_0223E060(Window *param0, Strbuf *param1, int param2, u8 param3, const u32 param4)
{
    int v0, v1;

    v1 = Font_CalcStrbufWidth(FONT_SUBSCREEN, param1, 0);
    v0 = ((param0->width * 8) - v1) / 2;

    Text_AddPrinterWithParamsAndColor(param0, param3, param1, v0, param2, TEXT_SPEED_NO_TRANSFER, param4, NULL);

    return param0->pixels;
}

static void ov72_0223E0A0(UnkStruct_ov72_0223DB98 *param0, OverlayManager *param1)
{
    Window_Add(param0->unk_00, &param0->unk_338, 0, 2, 1, 27, 4, 13, 1 + (18 + 12) + 9);
    Window_FillTilemap(&param0->unk_338, 0xf0f);
    Window_Add(param0->unk_00, &param0->unk_328, 1, 4, 9, 24, 8, 1, 1);
    Window_FillTilemap(&param0->unk_328, 0x202);
    Window_Add(param0->unk_00, &param0->unk_348, 1, 26, 21, 8, 2, 2, 1 + 24 * 8);
    Window_FillTilemap(&param0->unk_348, 0x0);

    {
        void *v0;
        int v1;

        v0 = ov72_0223E060(&param0->unk_348, param0->unk_2C, 1, FONT_SUBSCREEN, TEXT_COLOR(14, 7, 2));

        DC_FlushRange(v0, 0x20 * 8 * 2);

        for (v1 = 0; v1 < 2; v1++) {
            sub_02012C60(&param0->unk_348, 4, 2, 4 * v1, 0, (char *)param0->unk_5C00);
            DC_FlushRange(param0->unk_5C00, (0x20 * 4 * 2));
            GX_LoadOBJ(param0->unk_5C00, 0 + v1 * (0x20 * 4 * 2), (0x20 * 4 * 2));
        }
    }

    Window_Add(param0->unk_00, &param0->unk_358, 1, 2, 2, 28, 2, 13, ((1 + 24 * 8) + 8 * 2));

    {
        int v2 = Font_CalcStrbufWidth(FONT_MESSAGE, param0->unk_30, 0);
        int v3 = (28 * 8 - v2) / 2;

        Window_FillTilemap(&param0->unk_358, 0x0);
        Text_AddPrinterWithParamsAndColor(&param0->unk_358, FONT_MESSAGE, param0->unk_30, v3, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    {
        int v4;

        for (v4 = 0; v4 < 5; v4++) {
            Window_Add(param0->unk_00, &param0->unk_2D8[v4], 4, 24 / 8 + 2, 32 / 8 + v4 * 4 - 1, 10, 2, 13, 1 + v4 * (10 * 2));
            Window_FillTilemap(&param0->unk_2D8[v4], 0);
        }

        ov72_0223E910(param0->unk_2D8, 0, TEXT_COLOR(14, 13, 15), param0);
    }
}

static void ov72_0223E260(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        Window_Remove(&param0->unk_2D8[v0]);
    }

    Window_Remove(&param0->unk_358);
    Window_Remove(&param0->unk_348);
    Window_Remove(&param0->unk_328);
    Window_Remove(&param0->unk_338);
}

static void ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0)
{
    int v0 = 0;
    int v1 = 0;

    if (v0) {
        inline_ov72_0223E2A4(param0, v1);
    }
}

static void inline_ov72_0223E2A4(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    VecFx32 v0;
}

static const TouchScreenRect Unk_ov72_0223EB4A[] = {
    { 0x96, 0xBD, 0xC0, 0xFF },
    { 0xFF, 0x0, 0x0, 0x0 },
    { 0x96, 0xBD, 0x0, 0x5F },
    { 0x96, 0xBD, 0x60, 0xBF }
};

static const TouchScreenRect Unk_ov72_0223EB42[] = {
    { 0x48, 0x88, 0x20, 0xE0 },
    { 0xFF, 0x0, 0x0, 0x0 }
};

static void ov72_0223E2A8(UnkStruct_ov72_0223DB98 *param0)
{
    int v0 = -1, v1;

    v0 = TouchScreen_CheckRectanglePressed(Unk_ov72_0223EB4A);

    if (v0 != 0xffffffff) {
        if (v0 == 0) {
            if (param0->unk_370 == 1) {
                ov72_0223E930(param0, 10);
                param0->unk_370 = 2;
                ov72_0223E3A8(param0->unk_2B4, 1);
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            }
        } else {
            param0->unk_437E = v0;
            ov72_0223E388(param0->unk_2B4, v0);
        }
    }

    v1 = TouchScreen_CheckRectangleHeld(Unk_ov72_0223EB42);

    if (v1 != 0xffffffff) {
        ov72_0223EA18(param0);
    }

    {
        UnkStruct_ov72_0223E2A8 v2;
        int v3;

        if (sub_0201E564(&v2, 4, 1) == 1) {
            for (v3 = 0; v3 < v2.unk_00; v3++) {
                param0->unk_4380.unk_00[v3] = v2.unk_02[v3].x;
                param0->unk_4380.unk_08[v3] = v2.unk_02[v3].y;
            }

            param0->unk_4380.unk_10_4 = v2.unk_00;
            param0->unk_4380.unk_10_0 = param0->unk_437E;
        }
    }
}

static void ov72_0223E388(Sprite **param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 1; v0++) {
        if (v0 == param1) {
            Sprite_SetAnim(param0[v0], Unk_ov72_0223EB3C[v0][2] + 1);
        } else {
            Sprite_SetAnim(param0[v0], Unk_ov72_0223EB3C[v0][2]);
        }
    }
}

static void ov72_0223E3A8(Sprite **param0, BOOL param1)
{
    if (param1 == 1) {
        Sprite_SetAnim(param0[0], Unk_ov72_0223EB3C[0][2] + 1);
    } else {
        Sprite_SetAnim(param0[0], Unk_ov72_0223EB3C[0][2]);
    }
}

static int ov72_0223E3C0(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    ov72_0223E2A8(param0);
    ov72_0223E910(param0->unk_2D8, 0, TEXT_COLOR(14, 12, 15), param0);
    ov72_0223E914(param0);
    ov72_0223E8CC(param0);
    ov72_0223E80C(&param0->unk_328, param0->unk_4391, param0->unk_43E6, 1);

    return param1;
}

static void ov72_0223E408(UnkStruct_ov72_0223DB98 *param0)
{
    ov72_0223E2A4(param0);
    ov72_0223E8CC(param0);
    ov72_0223E80C(&param0->unk_328, param0->unk_4391, param0->unk_43E6, 0);
}

static void ov72_0223E430(BgConfig *param0, UnkStruct_02015920 *param1)
{
    UnkStruct_02015958 v0;

    v0.unk_00 = param0;
    v0.unk_04 = 0;
    v0.unk_08 = (1 + (18 + 12) + 9 + 27 * 4) + 8 * 4;
    v0.unk_0C = 8;
    v0.unk_10 = 25;
    v0.unk_11 = 6;

    sub_02015958(param1, &v0);
}

static int ov72_0223E458(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    if (ov72_0223E99C(param0->unk_38)) {
        UnkStruct_02015958 v0;

        ov72_0223E430(param0->unk_00, param0->unk_5D00);

        param0->unk_370 = 3;
    }

    ov72_0223E408(param0);
    return param1;
}

static int ov72_0223E488(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    int v0 = sub_020159FC(param0->unk_5D00);

    switch (v0) {
    case 1:
        GameRecords_IncrementTrainerScore(param0->records, TRAINER_SCORE_EVENT_UNK_04);
        GameRecords_IncrementRecordValue(param0->records, RECORD_UNK_114);
        Window_EraseMessageBox(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        StartScreenTransition(0, 0, 0, 0x0, 16, 1, HEAP_ID_39);
        return 2;
        break;
    case 2:
        param0->unk_370 = 4;
        ov72_0223E3A8(param0->unk_2B4, 0);
        Window_EraseMessageBox(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        break;
    }

    param0->unk_4380.unk_10_4 = 0;
    ov72_0223E408(param0);

    return param1;
}

static int ov72_0223E528(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    int v0 = sub_020159FC(param0->unk_5D00);

    switch (v0) {
    case 1:
        param0->unk_370 = 1;

        Window_EraseMessageBox(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        Window_FillTilemap(&param0->unk_328, 0x202);
        Window_CopyToVRAM(&param0->unk_328);
        break;
    case 2:
        param0->unk_370 = 1;
        Window_EraseMessageBox(&param0->unk_338, 1);
        sub_02015A54(param0->unk_5D00);
        break;
    }

    return param1;
}

static int ov72_0223E590(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    ov72_0223E930(param0, 11);
    param0->unk_370 = 5;
    ov72_0223E408(param0);

    return param1;
}

static int ov72_0223E5B0(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    if (ov72_0223E99C(param0->unk_38)) {
        param0->unk_370 = 6;
        ov72_0223E430(param0->unk_00, param0->unk_5D00);
    }

    ov72_0223E408(param0);
    return param1;
}

static const u8 Unk_ov72_0223EC30[2][8][16] = {
    {
        {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x1,
            0x0,
            0x0,
            0x10,
            0x1,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
        },
        {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
        },
    },
    {
        {
            0x0,
            0x0,
            0x11,
            0x11,
            0x10,
            0x1,
            0x10,
            0x11,
            0x10,
            0x1,
            0x11,
            0x11,
            0x0,
            0x0,
        },
        {
            0x0,
            0x0,
            0x22,
            0x22,
            0x20,
            0x2,
            0x22,
            0x22,
            0x20,
            0x2,
            0x22,
            0x22,
            0x0,
            0x0,
        },
    },
};

static void ov72_0223E5E0(Window *param0, void *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    if (param6 < 0) {
        int v0;

        v0 = param6 * -1;

        if (v0 > param8) {
            v0 = param8;
        }

        param6 = 0;
        param2 += v0;
        param4 -= v0;
        param8 -= v0;
    }

    if (param7 < 0) {
        int v1;

        v1 = param7 * -1;

        if (v1 > param9) {
            v1 = param9;
        }

        param7 = 0;
        param3 += v1;
        param5 -= v1;
        param9 -= v1;
    }

    Window_BlitBitmapRect(param0, param1, param2, param3, param4, param5, param6, param7, param8, param9);
}

static void ov72_0223E660(Window *param0, const u8 *param1, int param2, int param3, int *param4, int *param5, int param6, int param7)
{
    int v0, v1, v2, v3;
    int v4 = *param4;
    int v5 = *param5;
    int v6 = param2;
    int v7 = param3;

    if ((param6 == 0) && (param7 == 0)) {
        *param4 = param2;
        *param5 = param3;
        return;
    }

    v0 = MATH_IAbs(v6 - v4);
    v1 = MATH_IAbs(v7 - v5);

    if (v0 > v1) {
        if (v4 > v6) {
            v3 = (v5 > v7) ? 1 : -1;
            v2 = v4;
            v4 = v6;
            v6 = v2;
            v5 = v7;
        } else {
            v3 = (v5 < v7) ? 1 : -1;
        }

        ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        v2 = v0 >> 1;

        while (++v4 <= v6) {
            if ((v2 -= v1) < 0) {
                v2 += v0;
                v5 += v3;
            }

            ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        }
    } else {
        if (v5 > v7) {
            v3 = (v4 > v6) ? 1 : -1;
            v2 = v5;
            v5 = v7;
            v7 = v2;
            v4 = v6;
        } else {
            v3 = (v4 < v6) ? 1 : -1;
        }

        ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        v2 = v1 >> 1;

        while (++v5 <= v7) {
            if ((v2 -= v0) < 0) {
                v2 += v1;
                v4 += v3;
            }

            ov72_0223E5E0(param0, (void *)param1, 0, 0, 4, 4, v4, v5, 4, 4);
        }
    }

    *param4 = param2;
    *param5 = param3;
}

static void ov72_0223E7D8(UnkStruct_ov72_0223E7D8 *param0, UnkStruct_ov72_0223E80C *param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        param1[v0].unk_02 = param0[v0].unk_10_4;

        if (param0[v0].unk_10_4 != 0) {
            param1[v0].unk_00 = param0[v0].unk_00[param0[v0].unk_10_4 - 1];
            param1[v0].unk_01 = param0[v0].unk_08[param0[v0].unk_10_4 - 1];
        }
    }
}

static void ov72_0223E80C(Window *param0, UnkStruct_ov72_0223E7D8 *param1, UnkStruct_ov72_0223E80C *param2, int param3)
{
    int v0, v1, v2, v3, v4 = 0, v5, v6;

    for (v2 = 0; v2 < 5; v2++) {
        if (param1[v2].unk_10_4 != 0) {
            if (param2[v2].unk_02) {
                v5 = param2[v2].unk_00 - 4 * 8;
                v6 = param2[v2].unk_01 - 9 * 8;
            }

            for (v3 = 0; v3 < param1[v2].unk_10_4; v3++) {
                v0 = param1[v2].unk_00[v3] - 4 * 8;
                v1 = param1[v2].unk_08[v3] - 9 * 8;

                ov72_0223E660(param0, Unk_ov72_0223EC30[0][param1[v2].unk_10_0], v0, v1, &v5, &v6, v3, param2[v2].unk_02);

                v4 = 1;
            }
        }
    }

    if (v4 && param3) {
        Window_CopyToVRAM(param0);
    }

    ov72_0223E7D8(param1, param2);

    for (v2 = 0; v2 < 5; v2++) {
        param1[v2].unk_10_4 = 0;
    }
}

static void ov72_0223E8CC(UnkStruct_ov72_0223DB98 *param0)
{
    int v0;
    UnkStruct_ov72_0223E7D8 *v1 = param0->unk_4391;
}

static void ov72_0223E8D0(u16 *param0)
{
    fx32 v0;
    GXRgb v1;
    int v2, v3, v4;

    *param0 += 20;

    if (*param0 > 360) {
        *param0 = 0;
    }

    v0 = CalcSineDegrees_Wraparound(*param0);
    v3 = 15 + (v0 * 10) / FX32_ONE;
    v1 = GX_RGB(29, v3, 0);

    GX_LoadOBJPltt((u16 *)&v1, 12 * 2, 2);
}

static void ov72_0223E910(Window *param0, int param1, u32 param2, UnkStruct_ov72_0223DB98 *param3)
{
    int v0, v1;

    return;

    for (v0 = 0; v0 < 5; v0++) {
        Window_FillRectWithColor(&param0[v0], 0, 0, 0, 10 * 8, 2 * 8);
    }

    for (v0 = 0; v0 < 5; v0++) {
        Text_AddPrinterWithParamsAndColor(&param0[v0], FONT_MESSAGE, param3->unk_18[v0], 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 15), NULL);
        Window_CopyToVRAM(&param0[v0]);
    }
}

static void ov72_0223E914(UnkStruct_ov72_0223DB98 *param0)
{
    param0->unk_4391[0] = param0->unk_4380;
}

static void ov72_0223E930(UnkStruct_ov72_0223DB98 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((40 * 2), HEAP_ID_39);

    MessageLoader_GetStrbuf(param0->unk_14, param1, v0);
    StringTemplate_Format(param0->unk_10, param0->unk_34, v0);
    Strbuf_Free(v0);
    Window_FillTilemap(&param0->unk_338, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_338, 0, 1, 10);

    param0->unk_38 = Text_AddPrinterWithParams(&param0->unk_338, FONT_MESSAGE, param0->unk_34, 0, 0, Options_TextFrameDelay(param0->unk_0C), NULL);
}

static int ov72_0223E99C(int param0)
{
    if (Text_IsPrinterActive(param0) == 0) {
        return 1;
    }

    return 0;
}

static void ov72_0223E9B4(u8 *param0, u8 *param1)
{
    int v0, v1, v2 = 0;

    v1 = 0;
    *param0 = 0;

    for (v0 = 0; v0 < 24 * 8 * 32; v0++) {
        int v3;

        v3 = param1[v0] & 0xf;

        if (v3 == 1) {
            *param0 |= (1 << v1);
        }

        v1++;
        v3 = param1[v0] >> 4;

        if (v3 == 1) {
            *param0 |= (1 << v1);
        }

        v1++;

        if (v1 == 8) {
            v2++;
            param0++;
            *param0 = 0;
            v1 = 0;
        }

        if (v2 >= 24 * 8 * 32) {
            GF_ASSERT(FALSE);
        }
    }
}

static void ov72_0223EA18(UnkStruct_ov72_0223DB98 *param0)
{
    BOOL v0;
    int v1;

    v0 = 0;

    if ((gSystem.touchX != 0xffff) && (gSystem.touchY != 0xffff) && (param0->unk_5D0C != 0xffff) && (param0->unk_5D10 != 0xffff)) {
        if (param0->unk_5D0C > gSystem.touchX) {
            v1 = param0->unk_5D0C - gSystem.touchX;
            param0->unk_5D04.unk_02 = -1;
        } else {
            v1 = gSystem.touchX - param0->unk_5D0C;
            param0->unk_5D04.unk_02 = 1;
        }

        if ((v1 >= 3) && (v1 <= 40)) {
            if (param0->unk_5D10 > gSystem.touchY) {
                v1 = param0->unk_5D10 - gSystem.touchY;
                param0->unk_5D04.unk_03 = -1;
            } else {
                v1 = gSystem.touchY - param0->unk_5D10;
                param0->unk_5D04.unk_03 = 1;
            }

            if (v1 <= 40) {
                v0 = 1;
                ov72_0223EAD8(&param0->unk_5D04);
            } else {
                (void)0;
            }
        } else if (v1 <= 40) {
            if (param0->unk_5D10 > gSystem.touchY) {
                v1 = param0->unk_5D10 - gSystem.touchY;
                param0->unk_5D04.unk_03 = -1;
            } else {
                v1 = gSystem.touchY - param0->unk_5D10;
                param0->unk_5D04.unk_03 = 1;
            }

            if ((v1 >= 3) && (v1 <= 40)) {
                v0 = 1;
                ov72_0223EAD8(&param0->unk_5D04);
            } else {
                (void)0;
            }
        }
    }

    param0->unk_5D0C = gSystem.touchX;
    param0->unk_5D10 = gSystem.touchY;
}

static void ov72_0223EAD8(UnkStruct_ov72_0223EAD8 *param0)
{
    if ((param0->unk_00 == 0) && (param0->unk_01 == 0)) {
        if (!Sound_IsEffectPlaying(1690)) {
            Sound_PlayEffect(SEQ_SE_DP_KYU01);
        }
    }

    if ((param0->unk_00 * param0->unk_02 < 0) || (param0->unk_01 * param0->unk_03 < 0)) {
        if (!Sound_IsEffectPlaying(1690)) {
            Sound_PlayEffect(SEQ_SE_DP_KYU01);
        }
    }

    param0->unk_00 = param0->unk_02;
    param0->unk_01 = param0->unk_03;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}
