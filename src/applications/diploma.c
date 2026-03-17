#include "applications/diploma.h"

#include <nitro.h>
#include <string.h>

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "overlay_manager.h"
#include "palette.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"

#include "res/graphics/diploma/diploma.naix"
#include "res/text/bank/diploma.h"

typedef struct Diploma {
    enum HeapID heapID;
    BOOL isNatDex;
    SaveData *saveData;
    TrainerInfo *trainerInfo;
    BgConfig *bgConfig;
    Window mainWindow;
    Window subWindow;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    s16 yOffset;
    int timer;
} Diploma;

static void Diploma_VBlankCallback(void *data);
static void Diploma_InitBgs(Diploma *data);
static void Diploma_FreeBgs(Diploma *data);
static void Diploma_InitWindows(Diploma *data);
static void Diploma_Free(Diploma *data);
static void Diploma_ResetYOffset(Diploma *data);
static void Diploma_UpdateYOffset(Diploma *data);
static void Diploma_LoadGraphics(Diploma *data);
static void Diploma_LoadText(Diploma *data);

BOOL Diploma_Init(ApplicationManager *appMan, int *state)
{
    Diploma *data;
    int heapID = HEAP_ID_DIPLOMA;

    Heap_Create(HEAP_ID_APPLICATION, heapID, 0x20000);

    data = ApplicationManager_NewData(appMan, sizeof(Diploma), heapID);
    memset(data, 0, sizeof(Diploma));
    data->heapID = heapID;

    DiplomaData *diplomaData = (DiplomaData *)ApplicationManager_Args(appMan);

    data->saveData = diplomaData->saveData;
    data->isNatDex = diplomaData->isNatDex;
    data->trainerInfo = SaveData_GetTrainerInfo(data->saveData);

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);

    Diploma_InitBgs(data);
    Diploma_InitWindows(data);

    SetVBlankCallback(Diploma_VBlankCallback, (void *)data);
    GXLayers_TurnBothDispOn();

    return TRUE;
}

int Diploma_Main(ApplicationManager *appMan, int *state)
{
    Diploma *data = ApplicationManager_Data(appMan);
    BOOL retVal = FALSE;

    switch (*state) {
    case 0:
        Diploma_ResetYOffset(data);
        Diploma_LoadGraphics(data);
        Diploma_LoadText(data);

        Bg_ToggleLayer(BG_LAYER_MAIN_0, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_1, TRUE);
        Bg_ToggleLayer(BG_LAYER_MAIN_3, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_0, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_1, TRUE);
        Bg_ToggleLayer(BG_LAYER_SUB_3, TRUE);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, data->heapID);
        *state = 1;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            data->timer = 0;
            *state = 2;
        }
        break;
    case 2:
        if (data->timer < 60) {
            data->timer++;
        } else {
            *state = 3;
        }
        break;
    case 3:
        if (data->yOffset > -8 * 24) {
            data->yOffset -= 4;
            Diploma_UpdateYOffset(data);
        } else {
            data->yOffset = -8 * 24;
            Diploma_UpdateYOffset(data);
            *state = 4;
        }
        break;
    case 4:
        if (JOY_NEW_ONLY(PAD_BUTTON_A) || JOY_NEW_ONLY(PAD_BUTTON_B) || gSystem.touchPressed) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, data->heapID);
            *state = 5;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            retVal = TRUE;
        }
        break;
    }

    return retVal;
}

BOOL Diploma_Exit(ApplicationManager *appMan, int *state)
{
    Diploma *data = ApplicationManager_Data(appMan);
    int heapID = data->heapID;

    Diploma_Free(data);
    Diploma_FreeBgs(data);

    SetVBlankCallback(NULL, NULL);
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    return TRUE;
}

static void Diploma_VBlankCallback(void *data)
{
    Bg_RunScheduledUpdates(((Diploma *)data)->bgConfig);
}

static void Diploma_InitBgs(Diploma *data)
{
    GXBanks banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_NONE,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_NONE,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE,
    };

    GXLayers_SetBanks(&banks);

    data->bgConfig = BgConfig_New(data->heapID);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = 0,
        .charBase = 0,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    template.screenBase = GX_BG_SCRBASE_0x0000;
    template.charBase = GX_BG_CHARBASE_0x10000;
    template.bufferSize = 0x1000;
    template.screenSize = BG_SCREEN_SIZE_256x512;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_MAIN_0, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_MAIN_0);

    template.screenBase = GX_BG_SCRBASE_0x1000;
    template.charBase = GX_BG_CHARBASE_0x08000;
    template.bufferSize = 0x1000;
    template.screenSize = BG_SCREEN_SIZE_256x512;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_MAIN_1, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_MAIN_1);

    template.screenBase = GX_BG_SCRBASE_0x2000;
    template.charBase = GX_BG_CHARBASE_0x04000;
    template.bufferSize = 0x800;
    template.screenSize = BG_SCREEN_SIZE_256x256;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_MAIN_3, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_MAIN_3);

    template.screenBase = GX_BG_SCRBASE_0x0000;
    template.charBase = GX_BG_CHARBASE_0x10000;
    template.bufferSize = 0x1000;
    template.screenSize = BG_SCREEN_SIZE_256x512;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_SUB_0, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_SUB_0);

    template.screenBase = GX_BG_SCRBASE_0x1000;
    template.charBase = GX_BG_CHARBASE_0x08000;
    template.bufferSize = 0x1000;
    template.screenSize = BG_SCREEN_SIZE_256x512;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_SUB_1, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_SUB_1);

    template.screenBase = GX_BG_SCRBASE_0x2000;
    template.charBase = GX_BG_CHARBASE_0x04000;
    template.bufferSize = 0x800;
    template.screenSize = BG_SCREEN_SIZE_256x256;

    Bg_InitFromTemplate(data->bgConfig, BG_LAYER_SUB_3, &template, BG_TYPE_STATIC);
    Bg_ClearTilemap(data->bgConfig, BG_LAYER_SUB_3);

    Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);
}

static void Diploma_FreeBgs(Diploma *data)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_MAIN_3, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_0, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_1, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_2, FALSE);
    Bg_ToggleLayer(BG_LAYER_SUB_3, FALSE);

    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(data->bgConfig, BG_LAYER_SUB_3);
    Heap_Free(data->bgConfig);
}

static void Diploma_InitWindows(Diploma *data)
{
    WindowTemplate template = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = TILES_TO_PIXELS(4),
        .height = TILES_TO_PIXELS(3),
        .palette = PLTT_2,
        .baseTile = 1,
    };

    Text_ResetAllPrinters();

    data->messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_DIPLOMA, data->heapID);
    data->stringTemplate = StringTemplate_Default(data->heapID);

    template.bgLayer = BG_LAYER_MAIN_0;

    Window_AddFromTemplate(data->bgConfig, &data->mainWindow, &template);
    Window_FillRectWithColor(&data->mainWindow, 0, 0, 0, TILES_TO_PIXELS(32), TILES_TO_PIXELS(24));

    template.bgLayer = BG_LAYER_SUB_0;

    Window_AddFromTemplate(data->bgConfig, &data->subWindow, &template);
    Window_FillRectWithColor(&data->subWindow, 0, 0, 0, TILES_TO_PIXELS(32), TILES_TO_PIXELS(24));
}

static void Diploma_Free(Diploma *data)
{
    Window_Remove(&data->subWindow);
    Window_Remove(&data->mainWindow);
    StringTemplate_Free(data->stringTemplate);
    MessageLoader_Free(data->messageLoader);
}

static void Diploma_ResetYOffset(Diploma *data)
{
    data->yOffset = 0;
    Diploma_UpdateYOffset(data);
}

static void Diploma_UpdateYOffset(Diploma *data)
{
    Bg_SetOffset(data->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, data->yOffset);
    Bg_SetOffset(data->bgConfig, BG_LAYER_SUB_1, BG_OFFSET_UPDATE_SET_Y, data->yOffset + (8 * 24));
    Bg_SetOffset(data->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_Y, data->yOffset);
    Bg_SetOffset(data->bgConfig, BG_LAYER_SUB_0, BG_OFFSET_UPDATE_SET_Y, data->yOffset + (8 * 24));
}

static void Diploma_LoadGraphics(Diploma *data)
{
    int blankNscr, blankNcgr, blankNclr;
    int documentNscr, documentNcgr, documentNclr;

    if (data->isNatDex == FALSE) {
        blankNscr = sinnoh_blank_NSCR;
        blankNcgr = sinnoh_blank_NCGR;
        blankNclr = sinnoh_blank_NCLR;

        documentNscr = sinnoh_document_NSCR;
        documentNcgr = sinnoh_document_NCGR;
        documentNclr = sinnoh_document_NCLR;
    } else {
        blankNscr = national_dex_blank_NSCR;
        blankNcgr = national_dex_blank_NCGR;
        blankNclr = national_dex_blank_NCLR;

        documentNscr = national_dex_document_NSCR;
        documentNcgr = national_dex_document_NCGR;
        documentNclr = national_dex_document_NCLR;
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNscr, data->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, data->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNcgr, data->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, data->heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNclr, PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_0), PALETTE_SIZE_BYTES, data->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNscr, data->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, data->heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNcgr, data->bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, data->heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, blankNclr, PAL_LOAD_SUB_BG, PLTT_OFFSET(PLTT_0), PALETTE_SIZE_BYTES, data->heapID);

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNscr, data->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, data->heapID);
    Bg_ChangeTilemapRectPalette(data->bgConfig, BG_LAYER_MAIN_1, 0, 0, TILES_TO_PIXELS(4), TILES_TO_PIXELS(3), PLTT_1);
    Bg_CopyTilemapBufferToVRAM(data->bgConfig, BG_LAYER_MAIN_1);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNcgr, data->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, data->heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNclr, PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_1), PALETTE_SIZE_BYTES, data->heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNscr, data->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, data->heapID);
    Bg_ChangeTilemapRectPalette(data->bgConfig, BG_LAYER_SUB_1, 0, 0, TILES_TO_PIXELS(4), TILES_TO_PIXELS(3), PLTT_1);
    Bg_CopyTilemapBufferToVRAM(data->bgConfig, BG_LAYER_SUB_1);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNcgr, data->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, data->heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__SYOUJYOU__SYOUJYOU, documentNclr, PAL_LOAD_SUB_BG, PLTT_OFFSET(PLTT_1), PALETTE_SIZE_BYTES, data->heapID);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, data->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, data->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_2), data->heapID);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(PLTT_2), data->heapID);
}

static void Diploma_LoadText(Diploma *data)
{
    String *string = String_Init(512, data->heapID);
    String *formatString = String_Init(512, data->heapID);

    MessageLoader_GetString(data->messageLoader, Diploma_Text_Player, formatString);
    StringTemplate_SetPlayerName(data->stringTemplate, 0, data->trainerInfo);
    StringTemplate_Format(data->stringTemplate, string, formatString);
    Text_AddPrinterWithParamsAndColor(&data->mainWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(6), TILES_TO_PIXELS(4), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Text_AddPrinterWithParamsAndColor(&data->subWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(6), TILES_TO_PIXELS(4), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(formatString);

    MessageLoader_GetString(data->messageLoader, (data->isNatDex == FALSE) ? Diploma_Text_Sinnoh : Diploma_Text_NationalDex, string);
    Text_AddPrinterWithParamsAndColor(&data->mainWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(8), TILES_TO_PIXELS(8), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Text_AddPrinterWithParamsAndColor(&data->subWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(8), TILES_TO_PIXELS(8), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetString(data->messageLoader, Diploma_Text_GameFreak, string);
    Text_AddPrinterWithParamsAndColor(&data->mainWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(17.25), TILES_TO_PIXELS(18), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    Text_AddPrinterWithParamsAndColor(&data->subWindow, FONT_SYSTEM, string, TILES_TO_PIXELS(17.25), TILES_TO_PIXELS(18), TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    String_Free(string);
}
