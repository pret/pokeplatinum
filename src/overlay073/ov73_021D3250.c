#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "hardware_palette.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "screen_fade.h"
#include "sound.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"

typedef struct {
    int heapID;
    BgConfig *unk_04;
    MessageLoader *unk_08;
    int unk_0C;
    Window unk_10;
    int unk_20;
    int unk_24;
} UnkStruct_ov73_021D342C;

void EnqueueApplication(FSOverlayID param0, const ApplicationManagerTemplate *param1);
int ov73_021D3250(ApplicationManager *appMan, int *param1);
int ov73_021D3280(ApplicationManager *appMan, int *param1);
int ov73_021D3404(ApplicationManager *appMan, int *param1);
static void ov73_021D3420(void *param0);
static void ov73_021D342C(UnkStruct_ov73_021D342C *param0);
static void ov73_021D35F4(UnkStruct_ov73_021D342C *param0);
static void ov73_021D366C(UnkStruct_ov73_021D342C *param0);
static void ov73_021D368C(UnkStruct_ov73_021D342C *param0);
static BOOL ov73_021D3698(UnkStruct_ov73_021D342C *param0, int param1, int param2, int param3);
static void ov73_021D37AC(UnkStruct_ov73_021D342C *param0);

int ov73_021D3250(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov73_021D342C *v0;
    int heapID = HEAP_ID_83;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x40000);

    v0 = ApplicationManager_NewData(appMan, sizeof(UnkStruct_ov73_021D342C), heapID);
    memset(v0, 0, sizeof(UnkStruct_ov73_021D342C));

    v0->heapID = heapID;
    v0->unk_24 = 0;

    return 1;
}

int ov73_021D3280(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov73_021D342C *v0 = ApplicationManager_Data(appMan);
    int v1 = 0;

    switch (*param1) {
    case 0:
        SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
        SetScreenColorBrightness(DS_SCREEN_SUB, FADE_TO_BLACK);

        SetVBlankCallback(NULL, NULL);
        SetHBlankCallback(NULL, NULL);

        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        SetAutorepeat(4, 8);

        ov73_021D342C(v0);
        ov73_021D366C(v0);

        SetVBlankCallback(ov73_021D3420, (void *)v0);
        GXLayers_TurnBothDispOn();

        {
            u16 *v2 = (u16 *)GetHardwareMainBgPaletteAddress();

            BlendPalettes(v2, v2, 0xFFFC, 7, 0x0);
            GX_LoadBGPltt((const void *)v2, 0, 16 * 0x20);
        }

        v0->unk_24 = 2 * 30;
        *param1 = 1;
        break;
    case 1:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            Sound_SetFieldBGM(SEQ_TV_HOUSOU);
            Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, SEQ_TV_HOUSOU, 1);

            v0->unk_24 = 3 * 30;
            *param1 = 2;
        }
        break;
    case 2:
        if (v0->unk_24) {
            v0->unk_24--;
        } else {
            v0->unk_24 = 0;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, v0->heapID);
            *param1 = 3;
        }
        break;
    case 3:
        ov73_021D37AC(v0);

        if (IsScreenFadeDone() == TRUE) {
            *param1 = 4;
        }
        break;
    case 4:
        ov73_021D37AC(v0);

        if (ov73_021D3698(v0, 0, 5 * 8, 6 * 8) == 1) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, v0->heapID);
            *param1 = 5;
        }
        break;
    case 5:
        ov73_021D37AC(v0);

        if (IsScreenFadeDone() == TRUE) {
            ov73_021D368C(v0);
            ov73_021D35F4(v0);
            SetVBlankCallback(NULL, NULL);

            v1 = 1;
        }
        break;
    }

    return v1;
}

int ov73_021D3404(ApplicationManager *appMan, int *param1)
{
    UnkStruct_ov73_021D342C *v0 = ApplicationManager_Data(appMan);
    int heapID = v0->heapID;

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    return 1;
}

static void ov73_021D3420(void *param0)
{
    UnkStruct_ov73_021D342C *v0 = param0;
    Bg_RunScheduledUpdates(v0->unk_04);
}

static void ov73_021D342C(UnkStruct_ov73_021D342C *param0)
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
        param0->unk_04 = BgConfig_New(param0->heapID);
    }
    {
        GraphicsModes v1 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D
        };

        SetAllGraphicsModes(&v1);
    }
    {
        int v2, v3, v4;
        {
            BgTemplate v5 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v5, 0);
            Bg_ClearTilesRange(v2, 32, 0, param0->heapID);
            Bg_ClearTilemap(param0->unk_04, v2);
        }
        {
            BgTemplate v6 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v6, 0);
            Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
        {
            BgTemplate v7 = {
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

            Bg_InitFromTemplate(param0->unk_04, v2, &v7, 0);
            Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
        {
            BgTemplate v8 = {
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
            v3 = 8;
            v4 = 7;

            Bg_InitFromTemplate(param0->unk_04, v2, &v8, 0);
            Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v3, param0->unk_04, v2, 0, 0, 0, param0->heapID);
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__INTRO__INTRO_TV, v4, param0->unk_04, v2, 0, 0, 0, param0->heapID);
        }
    }
    Graphics_LoadPalette(NARC_INDEX_DEMO__INTRO__INTRO_TV, 6, 0, 0, 0, param0->heapID);
    Graphics_LoadPaletteWithSrcOffset(NARC_INDEX_DEMO__INTRO__INTRO_TV, 9, 0, 0x20 * 2, 0x20 * 2, 0x20 * 14, param0->heapID);
    Font_LoadTextPalette(0, 1 * (2 * 16), param0->heapID);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0x0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0x0);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3), 0x4, 0xc);
}

static void ov73_021D35F4(UnkStruct_ov73_021D342C *param0)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_1, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_2, 0);
    Bg_ToggleLayer(BG_LAYER_SUB_3, 0);

    G2_BlendNone();

    Bg_FreeTilemapBuffer(param0->unk_04, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->unk_04, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->unk_04, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(param0->unk_04, BG_LAYER_MAIN_2);
    Heap_Free(param0->unk_04);
}

static void ov73_021D366C(UnkStruct_ov73_021D342C *param0)
{
    param0->unk_08 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0607, param0->heapID);

    Text_ResetAllPrinters();
    param0->unk_0C = 0;
}

static void ov73_021D368C(UnkStruct_ov73_021D342C *param0)
{
    MessageLoader_Free(param0->unk_08);
}

static const WindowTemplate Unk_ov72_021D3A38 = {
    0x2,
    0x0,
    0x0,
    0x20,
    0x18,
    0x1,
    0x1
};

static BOOL ov73_021D3698(UnkStruct_ov73_021D342C *a0, int a1, int a2, int a3)
{
    BOOL r6 = FALSE;
    switch (a0->unk_0C) {
    case 0:
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
        Strbuf *r5 = Strbuf_Init(0x400, a0->heapID);
        MessageLoader_GetStrbuf(a0->unk_08, a1, r5);
        Window_AddFromTemplate(a0->unk_04, &a0->unk_10, &Unk_ov72_021D3A38);
        Window_FillRectWithColor(&a0->unk_10, 0, 0, 0, 0x100, 0xc0);
        u32 r7 = (0x100 - Font_CalcMaxLineWidth(0, r5, 0)) / 2;
        u32 r1 = Strbuf_NumLines(r5) * 16;
        u32 sp00 = (0xc0 - r1) / 2;
        Text_AddPrinterWithParamsAndColor(&a0->unk_10, FONT_SYSTEM, r5, r7, sp00, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 2, 0), NULL);
        Strbuf_Free(r5);
        Window_CopyToVRAM(&a0->unk_10);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
        a0->unk_24 = 240;
        a0->unk_0C = 1;
        break;
    case 1:
        if (a0->unk_24) {
            a0->unk_24--;
        } else {
            a0->unk_0C = 2;
        }
        break;
    case 2:
        if (JOY_NEW(PAD_BUTTON_A) == PAD_BUTTON_A || JOY_NEW(PAD_BUTTON_B) == PAD_BUTTON_B) {
            a0->unk_0C = 3;
        }
        break;
    case 3:
        Window_Remove(&a0->unk_10);
        Bg_ClearTilemap(a0->unk_04, BG_LAYER_MAIN_2);
        a0->unk_0C = 0;
        r6 = TRUE;
        break;
    }
    return r6;
}

static void ov73_021D37AC(UnkStruct_ov73_021D342C *param0)
{
    param0->unk_20 += 0x4;
    Bg_SetOffset(param0->unk_04, BG_LAYER_MAIN_1, 3, param0->unk_20 >> 4);
}
