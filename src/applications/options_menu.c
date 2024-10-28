#include "applications/options_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "struct_defs/struct_02099F80.h"

#include "bg_window.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "render_window.h"
#include "strbuf.h"
#include "text.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200C6E4.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0201DBEC.h"
#include "unk_020393C8.h"

#define WINCLR_COL(col) (((col) << 4) | (col))

typedef struct OptionsMenuEntry {
    u16 numChoices;
    u16 selected;
    Strbuf *choices[20];
} OptionsMenuEntry;

typedef struct OptionsMenuData {
    enum HeapId heapID;
    int state;
    int subState;
    int dummy0C;
    u32 saveSelections : 2;
    u32 cursor : 3;
    u32 dummy10_5 : 16;
    u32 redrawMessageBox : 1;
    u32 dummy10_22 : 10;
    BgConfig *bgConfig;
    OptionsMenu options;
    Options *saveOptions;
    MessageLoader *msgLoader;
    void *nscrBuffer;
    NNSG2dScreenData *tilemapData;
    Window windows[3];

    union {
        OptionsMenuEntry asArray[7];
        struct {
            OptionsMenuEntry textSpeed;
            OptionsMenuEntry soundMode;
            OptionsMenuEntry battleScene;
            OptionsMenuEntry battleStyle;
            OptionsMenuEntry buttonMode;
            OptionsMenuEntry messageBoxStyle;
            OptionsMenuEntry unk07;
        };
    } entries;

    Menu *yesNoChoice;
    u32 textPrinter;
    void *dummy2B0;
    void *dummy2B4;
    void *dummy2B8;
} OptionsMenuData;

static void ov74_021D1118(void *param0);
static void ov74_021D10F8(void);
static int ov74_021D1178(OptionsMenuData *param0);
static int ov74_021D122C(OptionsMenuData *param0);
static void ov74_021D12D4(OptionsMenuData *param0);
static void ov74_021D135C(OptionsMenuData *param0);
static void ov74_021D1390(OptionsMenuData *param0);
static void ov74_021D14E8(OptionsMenuData *param0);
static void ov74_021D14F4(OptionsMenuData *param0);
static void ov74_021D1624(OptionsMenuData *param0);
static void ov74_021D1668(OptionsMenuData *param0);
static void ov74_021D17CC(OptionsMenuData *param0, u16 param1);
static void ov74_021D1BE4(OptionsMenuData *param0, u16 param1, BOOL param2);
static void ov74_021D1968(OptionsMenuData *param0, u16 param1, BOOL param2);
static BOOL ov74_021D1A08(const OptionsMenuData *param0);
static void ov74_021D1720(OptionsMenuData *param0);
static void ov74_021D1A24(OptionsMenuData *param0);
static BOOL ov74_021D1B44(OptionsMenuData *param0);
static void ov74_021D1BA8(OptionsMenuData *param0);
static u32 ov74_021D1BD0(OptionsMenuData *param0);

#define HEAP_ALLOCATION_SIZE 0x10000

BOOL OptionsMenu_Init(OverlayManager *ovyManager, int *state)
{
    OptionsMenuData *menuData = NULL;
    Options *options = OverlayManager_Args(ovyManager);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_OPTIONS_MENU, HEAP_ALLOCATION_SIZE);

    menuData = OverlayManager_NewData(ovyManager, sizeof(OptionsMenuData), HEAP_ID_OPTIONS_MENU);
    memset(menuData, 0, sizeof(OptionsMenuData));

    menuData->options.textSpeed = Options_TextSpeed(options);
    menuData->options.battleScene = Options_BattleScene(options);
    menuData->options.battleStyle = Options_BattleStyle(options);
    menuData->options.soundMode = Options_SoundMode(options);
    menuData->options.buttonMode = Options_ButtonMode(options);
    menuData->options.messageBoxStyle = Options_Frame(options);
    menuData->heapID = HEAP_ID_OPTIONS_MENU;
    menuData->saveOptions = options;

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);

    return TRUE;
}

BOOL OptionsMenu_Exit(OverlayManager *ovyManager, int *state)
{
    OptionsMenuData *menuData = OverlayManager_Data(ovyManager);

    if (menuData->saveSelections == 1) {
        menuData->options.textSpeed = menuData->entries.textSpeed.selected;
        menuData->options.battleScene = menuData->entries.battleScene.selected;
        menuData->options.battleStyle = menuData->entries.battleStyle.selected;
        menuData->options.soundMode = menuData->entries.soundMode.selected;
        menuData->options.buttonMode = menuData->entries.buttonMode.selected;
        menuData->options.messageBoxStyle = menuData->entries.messageBoxStyle.selected;
    }

    Options_SetTextSpeed(menuData->saveOptions, menuData->options.textSpeed);
    Options_SetBattleScene(menuData->saveOptions, menuData->options.battleScene);
    Options_SetBattleStyle(menuData->saveOptions, menuData->options.battleStyle);
    Options_SetSoundMode(menuData->saveOptions, menuData->options.soundMode);
    Options_SetButtonMode(menuData->saveOptions, menuData->options.buttonMode);
    Options_SetFrame(menuData->saveOptions, menuData->options.messageBoxStyle);
    Sound_SetPlaybackMode(menuData->options.soundMode);
    Options_SetSystemButtonMode(NULL, menuData->options.buttonMode);

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);

    OverlayManager_FreeData(ovyManager);
    Heap_Destroy(menuData->heapID);

    return TRUE;
}

BOOL OptionsMenu_Main(OverlayManager *ovyManager, int *state)
{
    OptionsMenuData *v0 = OverlayManager_Data(ovyManager);
    BOOL v1;
    u32 v2;

    switch (v0->state) {
    case 0:
        if (!ov74_021D1178(v0)) {
            return 0;
        }

        StartScreenTransition(3, 1, 1, 0x0, 6, 1, v0->heapID);
        break;
    case 1:
        if (!IsScreenTransitionDone()) {
            return 0;
        }
        break;
    case 2:
        if (((gCoreSys.pressedKeys & PAD_BUTTON_A) && (v0->cursor == (7 - 1))) || (gCoreSys.pressedKeys & PAD_BUTTON_B)) {
            v1 = ov74_021D1B44(v0);

            if (v1 == 1) {
                v0->state = 3;
            } else {
                Sound_PlayEffect(1500);
                v0->saveSelections = 2;
                v0->state = 6;
            }

            return 0;
        }

        ov74_021D1A24(v0);
        return 0;
    case 3:
        RenderControlFlags_SetCanABSpeedUpPrint(1);
        ov74_021D1968(v0, 49, 0);
        break;
    case 4:
        if (ov74_021D1A08(v0)) {
            RenderControlFlags_SetCanABSpeedUpPrint(0);
            ov74_021D1BA8(v0);
            v0->state = 5;
        }

        return 0;
    case 5:
        v2 = ov74_021D1BD0(v0);

        if (v2 != 0xffffffff) {
            if (v2 == 0) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(1563);
                v0->saveSelections = 1;
            } else {
                v0->saveSelections = 2;
            }

            v0->state = 6;
        }

        return 0;
    case 6:
        if (Text_IsPrinterActive(v0->textPrinter)) {
            Text_RemovePrinter(v0->textPrinter);
        }

        StartScreenTransition(3, 0, 0, 0x0, 6, 1, v0->heapID);
        break;
    case 7:
        if (!IsScreenTransitionDone()) {
            return 0;
        }
        break;
    case 8:
        if (!ov74_021D122C(v0)) {
            return 0;
        }

        return 1;
    }

    ++v0->state;
    return 0;
}

static void ov74_021D10F8(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_A, GX_VRAM_BGEXTPLTT_NONE, GX_VRAM_SUB_BG_128_C, GX_VRAM_SUB_BGEXTPLTT_NONE, GX_VRAM_OBJ_16_G, GX_VRAM_OBJEXTPLTT_NONE, GX_VRAM_SUB_OBJ_16_I, GX_VRAM_SUB_OBJEXTPLTT_NONE, GX_VRAM_TEX_NONE, GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&v0);
}

static void ov74_021D1118(void *param0)
{
    OptionsMenuData *v0 = param0;

    if (v0->redrawMessageBox) {
        LoadMessageBoxGraphics(v0->bgConfig, 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15, v0->entries.asArray[5].selected, v0->heapID);
        v0->redrawMessageBox = 0;
    }

    OAMManager_ApplyAndResetBuffers();
    NNS_GfdDoVramTransfer();
    Bg_RunScheduledUpdates(v0->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static int ov74_021D1178(OptionsMenuData *param0)
{
    switch (param0->subState) {
    case 0:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);

        ov74_021D10F8();
        sub_0200F32C(0);
        sub_0200F32C(1);
        ov74_021D12D4(param0);
        break;
    case 1:
        ov74_021D1390(param0);
        param0->msgLoader = MessageLoader_Init(1, 26, 220, param0->heapID);
        ov74_021D1720(param0);
        break;
    case 2:
        ov74_021D14F4(param0);
        ov74_021D1668(param0);
        VRAMTransferManager_New(32, param0->heapID);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
        DrawWifiConnectionIcon();
        SetMainCallback(ov74_021D1118, param0);
        param0->subState = 0;
        return 1;
    }

    ++param0->subState;
    return 0;
}

static int ov74_021D122C(OptionsMenuData *param0)
{
    int v0 = 0, v1 = 0;

    switch (param0->subState) {
    case 0:
        VRAMTransferManager_Destroy();
        ov74_021D1624(param0);

        for (v0 = 0; v0 < 7; v0++) {
            for (v1 = 0; v1 < param0->entries.asArray[v0].numChoices; v1++) {
                Strbuf_Free(param0->entries.asArray[v0].choices[v1]);
            }
        }

        MessageLoader_Free(param0->msgLoader);
        ov74_021D14E8(param0);
        ov74_021D135C(param0);
        break;
    case 1:
        SetMainCallback(NULL, NULL);
        DisableHBlank();
        GXLayers_DisableEngineALayers();
        GXLayers_DisableEngineBLayers();

        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        param0->subState = 0;
        return 1;
    }

    ++param0->subState;
    return 0;
}

static void ov74_021D12D4(OptionsMenuData *param0)
{
    int v0;

    param0->bgConfig = BgConfig_New(param0->heapID);

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
        BgTemplate v2[] = {
            {
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
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xf000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                2,
                0,
                0,
                0,
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
                3,
                0,
                0,
                0,
            },
            {
                0,
                0,
                0x800,
                0,
                1,
                GX_BG_COLORMODE_16,
                GX_BG_SCRBASE_0xe000,
                GX_BG_CHARBASE_0x00000,
                GX_BG_EXTPLTT_01,
                0,
                0,
                0,
                0,
            },
            {
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
                0,
            },
        };

        for (v0 = 0; v0 < 5; v0++) {
            static const v3[5] = {
                0, 1, 2, 3, 4
            };

            Bg_InitFromTemplate(param0->bgConfig, v3[v0], &(v2[v0]), 0);
            Bg_ClearTilemap(param0->bgConfig, v3[v0]);
        }
    }
    Bg_ClearTilesRange(0, 32, 0, param0->heapID);
    Bg_ClearTilesRange(4, 32, 0, param0->heapID);
}

static void ov74_021D135C(OptionsMenuData *param0)
{
    Bg_FreeTilemapBuffer(param0->bgConfig, 4);
    Bg_FreeTilemapBuffer(param0->bgConfig, 3);
    Bg_FreeTilemapBuffer(param0->bgConfig, 2);
    Bg_FreeTilemapBuffer(param0->bgConfig, 1);
    Bg_FreeTilemapBuffer(param0->bgConfig, 0);
    Heap_FreeToHeap(param0->bgConfig);
}

static void ov74_021D1390(OptionsMenuData *param0)
{
    void *v0;
    u32 v1;
    NARC *v2;
    void *v3;
    NNSG2dCharacterData *v4;
    NNSG2dPaletteData *v5;

    v2 = NARC_ctor(NARC_INDEX_GRAPHIC__CONFIG_GRA, param0->heapID);
    v1 = NARC_GetMemberSize(v2, 1);
    v3 = Heap_AllocFromHeapAtEnd(param0->heapID, v1);

    NARC_ReadWholeMember(v2, 1, (void *)v3);
    NNS_G2dGetUnpackedCharacterData(v3, &v4);
    Bg_LoadTiles(param0->bgConfig, 0, v4->pRawData, v4->szByte, 0);
    Bg_LoadTiles(param0->bgConfig, 4, v4->pRawData, v4->szByte, 0);
    Heap_FreeToHeap(v3);

    v1 = NARC_GetMemberSize(v2, 0);
    v3 = Heap_AllocFromHeapAtEnd(param0->heapID, v1);
    NARC_ReadWholeMember(v2, 0, (void *)v3);

    NNS_G2dGetUnpackedPaletteData(v3, &v5);
    Bg_LoadPalette(0, v5->pRawData, 0x20 * 1, 0);
    Bg_LoadPalette(4, v5->pRawData, 0x20 * 1, 0);
    Heap_FreeToHeap(v3);

    v1 = NARC_GetMemberSize(v2, 2);
    param0->nscrBuffer = Heap_AllocFromHeap(param0->heapID, v1);

    NARC_ReadWholeMember(v2, 2, (void *)param0->nscrBuffer);
    NNS_G2dGetUnpackedScreenData(param0->nscrBuffer, &(param0->tilemapData));
    NARC_dtor(v2);
    Bg_FillTilemapRect(param0->bgConfig, 2, 0x1, 0, 0, 32, 32, 17);
    Bg_FillTilemapRect(param0->bgConfig, 4, 0x1, 0, 0, 32, 32, 17);
    Bg_CopyRectToTilemapRect(param0->bgConfig, 0, 0, 0, 32, 2, param0->tilemapData->rawData, 0, 0, param0->tilemapData->screenWidth / 8, param0->tilemapData->screenHeight / 8);
    Bg_SetOffset(param0->bgConfig, 0, 3, -24);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 2);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 0);
    Bg_ScheduleTilemapTransfer(param0->bgConfig, 4);
}

static void ov74_021D14E8(OptionsMenuData *param0)
{
    Heap_FreeToHeap(param0->nscrBuffer);
}

static void ov74_021D14F4(OptionsMenuData *param0)
{
    Window_Add(param0->bgConfig, &param0->windows[0], 1, 1, 0, 12, 2, 13, 10);
    Window_Add(param0->bgConfig, &param0->windows[1], 1, 1, 3, 30, 14, 13, (10 + 12 * 2));
    Window_Add(param0->bgConfig, &param0->windows[2], 1, 2, 19, 27, 4, 12, ((10 + 12 * 2) + 30 * 14));
    LoadStandardWindowGraphics(param0->bgConfig, 1, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14, 0, param0->heapID);
    LoadMessageBoxGraphics(param0->bgConfig, 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15, param0->options.messageBoxStyle, param0->heapID);

    Font_LoadTextPalette(0, 13 * 32, param0->heapID);
    Font_LoadTextPalette(4, 13 * 32, param0->heapID);
    Font_LoadScreenIndicatorsPalette(0, 12 * 32, param0->heapID);
    Font_LoadScreenIndicatorsPalette(4, 12 * 32, param0->heapID);

    Window_FillTilemap(&(param0->windows[0]), WINCLR_COL(0));
    Window_FillTilemap(&(param0->windows[1]), WINCLR_COL(15));
    Window_FillTilemap(&(param0->windows[2]), WINCLR_COL(15));
    Window_ClearTilemap(&(param0->windows[2]));
    Window_ClearTilemap(&(param0->windows[1]));
    Window_ClearTilemap(&(param0->windows[0]));

    Window_DrawStandardFrame(&param0->windows[1], 1, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14);
    Window_DrawMessageBoxWithScrollCursor(&param0->windows[2], 1, ((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9), 15);
}

static void ov74_021D1624(OptionsMenuData *param0)
{
    u16 v0;

    Window_EraseStandardFrame(&(param0->windows[1]), 0);
    Window_EraseMessageBox(&(param0->windows[2]), 0);

    for (v0 = 0; v0 < 3; v0++) {
        Window_ClearAndCopyToVRAM(&(param0->windows[v0]));
        Window_FillTilemap(&(param0->windows[v0]), 0);
        Window_ClearTilemap(&(param0->windows[v0]));
        Window_Remove(&param0->windows[v0]);
    }
}

static void ov74_021D1668(OptionsMenuData *param0)
{
    u32 v0, v1;
    u16 v2;
    TextColor v3, v4, v5;
    Strbuf *v6;
    Strbuf *v7;
    static const u8 v8[7] = {
        3,
        6,
        4,
        5,
        7,
        8,
        42,
    };

    v5 = TEXT_COLOR(1, 2, 0);
    v3 = TEXT_COLOR(1, 2, 15);
    v4 = TEXT_COLOR(3, 4, 15);
    v6 = Strbuf_Init(256, param0->heapID);

    MessageLoader_GetStrbuf(param0->msgLoader, 0, v6);

    v1 = 2;
    Text_AddPrinterWithParamsAndColor(&param0->windows[0], FONT_SYSTEM, v6, v1, 2, TEXT_SPEED_INSTANT, v5, NULL);

    v1 = 4;

    for (v2 = 0; v2 < 7; v2++) {
        Strbuf_Clear(v6);
        MessageLoader_GetStrbuf(param0->msgLoader, v8[v2], v6);
        Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, v6, v1, 16 * v2, TEXT_SPEED_NO_TRANSFER, v3, NULL);
    }

    for (v2 = 0; v2 < 7; v2++) {
        ov74_021D17CC(param0, v2);
    }

    ov74_021D1BE4(param0, 0, 1);

    Window_CopyToVRAM(&param0->windows[0]);
    Window_CopyToVRAM(&param0->windows[1]);

    Strbuf_Free(v6);
}

static void ov74_021D1720(OptionsMenuData *param0)
{
    u16 v0, v1;
    static const int v3[7] = {
        3, 2, 2, 2, 3, 20, 0
    };
    static const u8 v2[7] = {
        10,
        17,
        13,
        15,
        19,
        22,
        0,
    };

    for (v0 = 0; v0 < 7; v0++) {
        param0->entries.asArray[v0].numChoices = v3[v0];

        for (v1 = 0; v1 < v3[v0]; v1++) {
            param0->entries.asArray[v0].choices[v1] = MessageLoader_GetNewStrbuf(param0->msgLoader, v2[v0] + v1);
        }
    }

    param0->entries.asArray[0].selected = param0->options.textSpeed;
    param0->entries.asArray[2].selected = param0->options.battleScene;
    param0->entries.asArray[3].selected = param0->options.battleStyle;
    param0->entries.asArray[1].selected = param0->options.soundMode;
    param0->entries.asArray[4].selected = param0->options.buttonMode;
    param0->entries.asArray[5].selected = param0->options.messageBoxStyle;
}

static void ov74_021D17CC(OptionsMenuData *param0, u16 param1)
{
    u32 v0, v1, v2;
    u16 v3;
    u8 v4;
    s8 v5 = 0;
    static const s8 v6[] = { 0, 0, 0, 0, 0, 0, 0 };

    v0 = TEXT_COLOR(1, 2, 15);
    v1 = TEXT_COLOR(3, 4, 15);

    Window_FillRectWithColor(&(param0->windows[1]), WINCLR_COL(15), (12 * 8 + 4) + v6[param1], 0 + param1 * 16, (48 * 8), 16);

    if (param1 == 5) {
        Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, param0->entries.asArray[param1].choices[param0->entries.asArray[param1].selected], 1 * 48 + (12 * 8 + 4), 16 * param1 + 0, TEXT_SPEED_NO_TRANSFER, v1, NULL);
        Window_CopyToVRAM(&param0->windows[1]);
        param0->redrawMessageBox = 1;
        return;
    }

    if (param1 == 1) {
        Sound_SetPlaybackMode(param0->entries.asArray[param1].selected);
    } else if (param1 == 4) {
        Options_SetSystemButtonMode(NULL, param0->entries.asArray[param1].selected);
    } else if (param1 == 0) {
        Options_SetTextSpeed(param0->saveOptions, param0->entries.asArray[param1].selected);
        ov74_021D1BE4(param0, param1, 0);
    }

    v5 = 0;

    for (v3 = 0; v3 < param0->entries.asArray[param1].numChoices; v3++) {
        if (v3 == param0->entries.asArray[param1].selected) {
            v2 = v1;
        } else {
            v2 = v0;
        }

        if (v3 == param0->entries.asArray[param1].numChoices - 1) {
            v4 = TEXT_SPEED_NO_TRANSFER;
        } else {
            v4 = TEXT_SPEED_NO_TRANSFER;
        }

        if (param1 == 4) {
            Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, param0->entries.asArray[param1].choices[v3], (12 * 8 + 4) - 0 + v5, 16 * param1 + 0, v4, v2, NULL);
            v5 += Font_CalcStrbufWidth(FONT_SYSTEM, param0->entries.asArray[param1].choices[v3], 0) + 12;
        } else {
            Text_AddPrinterWithParamsAndColor(&param0->windows[1], FONT_SYSTEM, param0->entries.asArray[param1].choices[v3], v3 * 48 + (12 * 8 + 4) + v6[param1], 16 * param1 + 0, v4, v2, NULL);
        }
    }

    Window_CopyToVRAM(&param0->windows[1]);
}

static void ov74_021D1968(OptionsMenuData *param0, u16 param1, BOOL param2)
{
    u32 v0;
    Strbuf *v1;
    u8 v2;

    if (ov74_021D1A08(param0) == 0) {
        Text_RemovePrinter(param0->textPrinter);
    }

    v2 = Options_TextFrameDelay(param0->saveOptions);

    Window_FillTilemap(&(param0->windows[2]), 15);

    v0 = TEXT_COLOR(1, 2, 15);
    v1 = Strbuf_Init(256, param0->heapID);

    MessageLoader_GetStrbuf(param0->msgLoader, param1, v1);

    if (param2 == 0) {
        param0->textPrinter = Text_AddPrinterWithParamsAndColor(&param0->windows[2], FONT_MESSAGE, v1, 4, 0, v2, v0, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->windows[2], FONT_MESSAGE, v1, 4, 0, TEXT_SPEED_NO_TRANSFER, v0, NULL);
        Window_ScheduleCopyToVRAM(&param0->windows[2]);
    }

    Strbuf_Free(v1);
}

static BOOL ov74_021D1A08(const OptionsMenuData *param0)
{
    if (Text_IsPrinterActive(param0->textPrinter) == 0) {
        return 1;
    }

    return 0;
}

static void ov74_021D1A24(OptionsMenuData *param0)
{
    OptionsMenuEntry *v0;

    v0 = &(param0->entries.asArray[param0->cursor]);

    if (param0->cursor != 6) {
        if (gCoreSys.pressedKeys & PAD_KEY_RIGHT) {
            v0->selected = (v0->selected + 1) % v0->numChoices;
            ov74_021D17CC(param0, param0->cursor);
            Sound_PlayEffect(1500);
        } else if (gCoreSys.pressedKeys & PAD_KEY_LEFT) {
            v0->selected = (v0->selected + v0->numChoices - 1) % v0->numChoices;
            ov74_021D17CC(param0, param0->cursor);
            Sound_PlayEffect(1500);
        }
    }

    if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        param0->cursor = (param0->cursor + 7 - 1) % 7;
        Bg_ScheduleScroll(param0->bgConfig, 0, 3, -(param0->cursor * 16 + 24));
        ov74_021D1BE4(param0, param0->cursor, 1);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        param0->cursor = (param0->cursor + 1) % 7;
        Bg_ScheduleScroll(param0->bgConfig, 0, 3, -(param0->cursor * 16 + 24));
        ov74_021D1BE4(param0, param0->cursor, 1);
        Sound_PlayEffect(1500);
    }
}

static BOOL ov74_021D1B44(OptionsMenuData *param0)
{
    if ((param0->options.textSpeed != param0->entries.asArray[0].selected) || (param0->options.battleScene != param0->entries.asArray[2].selected) || (param0->options.battleStyle != param0->entries.asArray[3].selected) || (param0->options.soundMode != param0->entries.asArray[1].selected) || (param0->options.buttonMode != param0->entries.asArray[4].selected) || (param0->options.messageBoxStyle != param0->entries.asArray[5].selected)) {
        return 1;
    }

    return 0;
}

static void ov74_021D1BA8(OptionsMenuData *param0)
{
    static const WindowTemplate v0 = {
        3, 25, 13, 6, 4, 13, (((((10 + 12 * 2) + 30 * 14) + 27 * 4) + 9) + (18 + 12))
    };

    param0->yesNoChoice = Menu_MakeYesNoChoice(param0->bgConfig, &v0, (((10 + 12 * 2) + 30 * 14) + 27 * 4), 14, param0->heapID);
}

static u32 ov74_021D1BD0(OptionsMenuData *param0)
{
    return Menu_ProcessInputAndHandleExit(param0->yesNoChoice, param0->heapID);
}

static void ov74_021D1BE4(OptionsMenuData *param0, u16 param1, BOOL param2)
{
    static const u8 v0[7] = {
        43,
        46,
        44,
        45,
        47,
        48,
        52,
    };

    ov74_021D1968(param0, v0[param1], param2);
}
