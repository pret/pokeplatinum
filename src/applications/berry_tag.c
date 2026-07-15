#include "applications/berry_tag.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "berry_data.h"
#include "berry_tag_data.h"
#include "bg_window.h"
#include "camera.h"
#include "font.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "spider_graph.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "unk_0202419C.h"
#include "unk_0208C098.h"

#include "res/text/bank/berry_tags.h"

enum {
    BERRY_TAG_STATE_WAIT_LOADING = 0,
    BERRY_TAG_STATE_HANDLE_INPUT,
    BERRY_TAG_STATE_WAIT_FADE,
    BERRY_TAG_STATE_EXIT,
};

enum {
    BERRY_TAG_FADE_STATE_FADING_OUT = 0,
    BERRY_TAG_FADE_STATE_FADED_OUT,
    BERRY_TAG_FADE_STATE_FADING_IN,
};

enum BerryTagWindow {
    BERRY_TAG_WINDOW_LABEL_BERRY_TAG = 0,
    BERRY_TAG_WINDOW_NAME,
    BERRY_TAG_WINDOW_LABEL_SPICY,
    BERRY_TAG_WINDOW_LABEL_DRY,
    BERRY_TAG_WINDOW_LABEL_SWEET,
    BERRY_TAG_WINDOW_LABEL_BITTER,
    BERRY_TAG_WINDOW_LABEL_SOUR,
    BERRY_TAG_WINDOW_LABEL_SIZE,
    BERRY_TAG_WINDOW_SIZE,
    BERRY_TAG_WINDOW_LABEL_FIRM,
    BERRY_TAG_WINDOW_FIRMNESS,
    BERRY_TAG_WINDOW_DESCRIPTION,
    MAX_BERRY_TAG_WINDOW,
};

typedef struct BerryTag {
    BgConfig *bgConfig;
    Window windows[MAX_BERRY_TAG_WINDOW];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    FontSpecialCharsContext *specialChars;
    Camera *camera;
    SpiderGraph graph;
    BerryTagData *outsideData;
    BerryData *berryData;
    u8 fadeState;
    u8 alpha;
} BerryTag;

static void BerryTag_VBlankCallback(void *data);
static void BerryTag_SetVRAMBanks(void);
static void BerryTag_InitBgs(BgConfig *bgConfig);
static void BerryTag_FreeBgs(BgConfig *bgConfig);
static void BerryTag_LoadGraphics(BerryTag *berryTag, NARC *narc);
static void BerryTag_SetAlphaBlending(void);
static void BerryTag_InitStrings(BerryTag *berryTag);
static void BerryTag_Free(BerryTag *berryTag);
static void BerryTag_AddWindows(BerryTag *berryTag);
static void BerryTag_RemoveWindows(Window *windows);
static void BerryTag_LoadBerryGraphics(BerryTag *berryTag, NARC *narc);
static void BerryTag_PrintString(BerryTag *berryTag, u8 line);
static void BerryTag_PrintStrings(BerryTag *berryTag);
static int BerryTag_WaitLoading(BerryTag *berryTag);
static int BerryTag_HandleInput(BerryTag *berryTag);
static int BerryTag_WaitFade(BerryTag *berryTag);
static u8 BerryTag_IsScreenFadeDone(BerryTag *berryTag);
static u32 BerryTag_FindBerry(u32 *entries, u32 berryID, s32 direction);
static void BerryTag_ChangeBerry(BerryTag *berryTag);
static void BerryTag_InitG3(void);
static void BerryTag_Update3DGfx(BerryTag *berryTag);
static void BerryTag_DeleteCamera(BerryTag *berryTag);
static void BerryTag_SetupCamera(BerryTag *berryTag);
static void BerryTag_InitGraph(BerryTag *berryTag);
static void BerryTag_InitMaxAndDeltaRects(BerryTag *berryTag);
static void BerryTag_UpdateGraph(BerryTag *berryTag);
static void BerryTag_DrawGraph(SpiderGraphRectangle *rects);
static void BerryTag_UpdateVec(VecFx16 *currVec, VecFx16 *deltaVec);
static void BerryTag_SetVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec);
static void BerryTag_SetVecFromValue(const SpiderGraphVtxBounds *bounds, VecFx16 *outVec, u8 value);
static u32 BerryTag_GetTiles(u32 berryID);
static u32 BerryTag_GetPalette(u32 berryID);

static const WindowTemplate sWindowTemplates[MAX_BERRY_TAG_WINDOW] = {
    [BERRY_TAG_WINDOW_LABEL_BERRY_TAG] = {
        .bgLayer = 3,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 12,
        .height = 2,
        .palette = 2,
        .baseTile = 1000,
    },
    [BERRY_TAG_WINDOW_NAME] = {
        .bgLayer = 1,
        .tilemapLeft = 1,
        .tilemapTop = 3,
        .width = 10,
        .height = 2,
        .palette = 15,
        .baseTile = 65,
    },
    [BERRY_TAG_WINDOW_LABEL_SPICY] = {
        .bgLayer = 3,
        .tilemapLeft = 18,
        .tilemapTop = 1,
        .width = 7,
        .height = 2,
        .palette = 15,
        .baseTile = 512,
    },
    [BERRY_TAG_WINDOW_LABEL_DRY] = {
        .bgLayer = 3,
        .tilemapLeft = 26,
        .tilemapTop = 6,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 526,
    },
    [BERRY_TAG_WINDOW_LABEL_SWEET] = {
        .bgLayer = 3,
        .tilemapLeft = 23,
        .tilemapTop = 12,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 538,
    },
    [BERRY_TAG_WINDOW_LABEL_BITTER] = {
        .bgLayer = 3,
        .tilemapLeft = 14,
        .tilemapTop = 12,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 550,
    },
    [BERRY_TAG_WINDOW_LABEL_SOUR] = {
        .bgLayer = 3,
        .tilemapLeft = 11,
        .tilemapTop = 6,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 562,
    },
    [BERRY_TAG_WINDOW_LABEL_SIZE] = {
        .bgLayer = 3,
        .tilemapLeft = 2,
        .tilemapTop = 13,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 574,
    },
    [BERRY_TAG_WINDOW_SIZE] = {
        .bgLayer = 1,
        .tilemapLeft = 8,
        .tilemapTop = 13,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 85,
    },
    [BERRY_TAG_WINDOW_LABEL_FIRM] = {
        .bgLayer = 3,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 586,
    },
    [BERRY_TAG_WINDOW_FIRMNESS] = {
        .bgLayer = 1,
        .tilemapLeft = 8,
        .tilemapTop = 15,
        .width = 15,
        .height = 2,
        .palette = 15,
        .baseTile = 97,
    },
    [BERRY_TAG_WINDOW_DESCRIPTION] = {
        .bgLayer = 1,
        .tilemapLeft = 2,
        .tilemapTop = 17,
        .width = 28,
        .height = 6,
        .palette = 15,
        .baseTile = 127,
    },
};

static const SpiderGraphVtxBounds sGraphRectBounds[][MAX_SPIDER_GRAPH_RECT_VTX] = {
    [RECT_Q1] = {
        [VTX_TOP_LEFT] = {
            { 1408, 2986, 0 },
            { 1408, 1607, 0 },
            { 0, 28, 0 },
        },
        [VTX_TOP_RIGHT] = {
            { 2540, 1856, 0 },
            { 1549, 1465, 0 },
            { 20, 8, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            { 2144, 167, 0 },
            { 1500, 1255, 0 },
            { 13, -22, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            { 1408, 1410, 0 },
            { 1408, 1410, 0 },
            { 0, 0, 0 },
        },
    },
    [RECT_Q2] = {
        [VTX_TOP_LEFT] = {
            { 319, 1856, 0 },
            { 1307, 1465, 0 },
            { -20, 8, 0 },
        },
        [VTX_TOP_RIGHT] = {
            { 1448, 2986, 0 },
            { 1448, 1607, 0 },
            { 0, 28, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            { 1448, 1410, 0 },
            { 1448, 1410, 0 },
            { 0, 0, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            { 704, 167, 0 },
            { 1355, 1255, 0 },
            { -13, -22, 0 },
        },
    },
    [RECT_Q3] = {
        [VTX_TOP_LEFT] = {
            { 319, 1856, 0 },
            { 1307, 1465, 0 },
            { -20, 8, 0 },
        },
        [VTX_TOP_RIGHT] = {
            { 1448, 1410, 0 },
            { 1448, 1410, 0 },
            { 0, 0, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            { 2144, 167, 0 },
            { 1535, 1255, 0 },
            { 12, -22, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            { 704, 167, 0 },
            { 1355, 1255, 0 },
            { -13, -22, 0 },
        },
    },
    [RECT_Q4] = {
        [VTX_TOP_LEFT] = {
            { 1408, 1410, 0 },
            { 1408, 1410, 0 },
            { 0, 0, 0 },
        },
        [VTX_TOP_RIGHT] = {
            { 2540, 1856, 0 },
            { 1549, 1465, 0 },
            { 20, 8, 0 },
        },
        [VTX_BOTTOM_LEFT] = {
            { 2144, 167, 0 },
            { 1500, 1255, 0 },
            { 13, -22, 0 },
        },
        [VTX_BOTTOM_RIGHT] = {
            { 704, 167, 0 },
            { 1320, 1255, 0 },
            { -12, -22, 0 },
        },
    },
};

BOOL BerryTag_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BERRY_TAG, 0x20000);

    BerryTag *berryTag = ApplicationManager_NewData(appMan, sizeof(BerryTag), HEAP_ID_BERRY_TAG);
    memset(berryTag, 0, sizeof(BerryTag));
    berryTag->outsideData = ApplicationManager_Args(appMan);
    berryTag->bgConfig = BgConfig_New(HEAP_ID_BERRY_TAG);
    berryTag->berryData = BerryData_Load(berryTag->outsideData->currentBerryID, HEAP_ID_BERRY_TAG);

    App_StartScreenFade(FALSE, HEAP_ID_BERRY_TAG);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__NTAG_GRA, HEAP_ID_BERRY_TAG);

    BerryTag_SetVRAMBanks();
    BerryTag_InitBgs(berryTag->bgConfig);
    BerryTag_LoadGraphics(berryTag, narc);
    BerryTag_SetAlphaBlending();
    BerryTag_InitStrings(berryTag);

    SetAutorepeat(4, 8);
    EnableTouchPad();
    InitializeTouchPad(4);

    BerryTag_LoadBerryGraphics(berryTag, narc);
    BerryTag_AddWindows(berryTag);
    BerryTag_PrintStrings(berryTag);
    BerryTag_SetupCamera(berryTag);
    BerryTag_InitGraph(berryTag);

    SetVBlankCallback(BerryTag_VBlankCallback, berryTag);
    NetworkIcon_InitIfConnected();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    NARC_dtor(narc);

    return TRUE;
}

BOOL BerryTag_Main(ApplicationManager *appMan, int *state)
{
    BerryTag *berryTag = ApplicationManager_Data(appMan);

    switch (*state) {
    case BERRY_TAG_STATE_WAIT_LOADING:
        *state = BerryTag_WaitLoading(berryTag);
        break;
    case BERRY_TAG_STATE_HANDLE_INPUT:
        *state = BerryTag_HandleInput(berryTag);
        break;
    case BERRY_TAG_STATE_WAIT_FADE:
        *state = BerryTag_WaitFade(berryTag);
        break;
    case BERRY_TAG_STATE_EXIT:
        if (BerryTag_IsScreenFadeDone(berryTag) == TRUE) {
            return TRUE;
        }
        break;
    }

    BerryTag_Update3DGfx(berryTag);

    return FALSE;
}

BOOL BerryTag_Exit(ApplicationManager *appMan, int *state)
{
    BerryTag *berryTag = ApplicationManager_Data(appMan);

    BerryTag_RemoveWindows(berryTag->windows);
    BerryTag_FreeBgs(berryTag->bgConfig);

    DisableTouchPad();

    BerryTag_Free(berryTag);
    BerryTag_DeleteCamera(berryTag);

    Heap_Free(berryTag->berryData);
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BERRY_TAG);

    G2_BlendNone();

    return TRUE;
}

static void BerryTag_VBlankCallback(void *data)
{
    Bg_RunScheduledUpdates(((BerryTag *)data)->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void BerryTag_SetVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void BerryTag_InitBgs(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_3D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BerryTag_InitG3();

    BgTemplate template1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &template1, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate template2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &template2, BG_TYPE_STATIC);
    Bg_ScheduleScroll(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 8);

    BgTemplate template3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &template3, BG_TYPE_STATIC);

    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BERRY_TAG);
}

static void BerryTag_FreeBgs(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Heap_FreeExplicit(HEAP_ID_BERRY_TAG, bgConfig);
}

static void BerryTag_LoadGraphics(BerryTag *berryTag, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, berryTag->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_BERRY_TAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 0, berryTag->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_BERRY_TAG);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 1, berryTag->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_BERRY_TAG);
    Graphics_LoadPaletteFromOpenNARC(narc, 3, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_BERRY_TAG);

    u16 *tilemap = Heap_Alloc(HEAP_ID_BERRY_TAG, 8 * 8 * sizeof(u16));

    for (u32 i = 0; i < 8 * 8; i++) {
        tilemap[i] = (3 << 12) + 1 + i;
    }

    Bg_LoadToTilemapRect(berryTag->bgConfig, BG_LAYER_MAIN_1, tilemap, 2, 5, 8, 8);
    Heap_Free(tilemap);
    Bg_CopyTilemapBufferToVRAM(berryTag->bgConfig, BG_LAYER_MAIN_1);

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_15), HEAP_ID_BERRY_TAG);
}

static void BerryTag_SetAlphaBlending(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 23, 8);
}

static void BerryTag_InitStrings(BerryTag *berryTag)
{
    berryTag->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BERRY_TAGS, HEAP_ID_BERRY_TAG);
    berryTag->specialChars = FontSpecialChars_Init(15, 2, 0, HEAP_ID_BERRY_TAG);
    berryTag->stringTemplate = StringTemplate_Default(HEAP_ID_BERRY_TAG);
}

static void BerryTag_Free(BerryTag *berryTag)
{
    MessageLoader_Free(berryTag->messageLoader);
    FontSpecialChars_Free(berryTag->specialChars);
    StringTemplate_Free(berryTag->stringTemplate);
}

static void BerryTag_AddWindows(BerryTag *berryTag)
{
    for (u32 i = 0; i < NELEMS(sWindowTemplates); i++) {
        Window_AddFromTemplate(berryTag->bgConfig, &berryTag->windows[i], &sWindowTemplates[i]);
    }
}

static void BerryTag_RemoveWindows(Window *windows)
{
    for (u32 i = 0; i < NELEMS(sWindowTemplates); i++) {
        Window_Remove(&windows[i]);
    }
}

static void BerryTag_PrintLabel(BerryTag *berryTag, enum BerryTagWindow windowID, u32 entryID, u32 color)
{
    Window *window = &berryTag->windows[windowID];
    String *string = MessageLoader_GetNewString(berryTag->messageLoader, entryID);
    u32 width = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, (Window_GetWidth(window) * 8 - width) / 2, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintLabelBerryTag(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_BERRY_TAG], 4);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_BERRY_TAG, BerryTag_Text_BerryTag, TEXT_COLOR(1, 2, 4));
}

static void BerryTag_PrintLabelSpicy(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_SPICY], 0);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_SPICY, BerryTag_Text_Spicy, TEXT_COLOR(15, 2, 0));
}

static void BerryTag_PrintLabelDry(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_DRY], 0);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_DRY, BerryTag_Text_Dry, TEXT_COLOR(15, 2, 0));
}

static void BerryTag_PrintLabelSweet(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_SWEET], 0);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_SWEET, BerryTag_Text_Sweet, TEXT_COLOR(15, 2, 0));
}

static void BerryTag_PrintLabelBitter(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_BITTER], 0);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_BITTER, BerryTag_Text_Bitter, TEXT_COLOR(15, 2, 0));
}

static void BerryTag_PrintLabelSour(BerryTag *berryTag)
{
    Window_FillTilemap(&berryTag->windows[BERRY_TAG_WINDOW_LABEL_SOUR], 0);
    BerryTag_PrintLabel(berryTag, BERRY_TAG_WINDOW_LABEL_SOUR, BerryTag_Text_Sour, TEXT_COLOR(15, 2, 0));
}

static void BerryTag_PrintName(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_NAME];
    Window_FillTilemap(window, 0);
    FontSpecialChars_DrawPartyScreenLevelText(berryTag->specialChars, SPECIAL_CHAR_NUMBER, window, 0, 5);

    String *formatString = MessageLoader_GetNewString(berryTag->messageLoader, BerryTag_Text_BerryID);
    String *string = String_Init((2 + 1) * 2, HEAP_ID_BERRY_TAG);

    StringTemplate_SetNumber(berryTag->stringTemplate, 0, berryTag->outsideData->currentBerryID + 1, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(berryTag->stringTemplate, string, formatString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 16, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(formatString);
    String_Free(string);

    formatString = BerryData_AllocAndGetName(berryTag->outsideData->currentBerryID, HEAP_ID_BERRY_TAG);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formatString, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(formatString);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintDescription(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_DESCRIPTION];
    Window_FillTilemap(window, 0);

    String *string = BerryData_AllocAndGetDescription(berryTag->outsideData->currentBerryID, HEAP_ID_BERRY_TAG);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintLabelFirm(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_LABEL_FIRM];
    Window_FillTilemap(window, 0);

    String *string = MessageLoader_GetNewString(berryTag->messageLoader, BerryTag_Text_LabelFirm);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintFirmness(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_FIRMNESS];
    Window_FillTilemap(window, 0);

    u32 firmness = BerryData_GetAttribute(berryTag->berryData, BERRYATTR_FIRMNESS);
    if (firmness != 0) {
        firmness--;
    }

    String *string = MessageLoader_GetNewString(berryTag->messageLoader, 11 + firmness);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintLabelSize(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_LABEL_SIZE];
    Window_FillTilemap(window, 0);

    String *string = MessageLoader_GetNewString(berryTag->messageLoader, BerryTag_Text_LabelSize);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintSize(BerryTag *berryTag)
{
    Window *window = &berryTag->windows[BERRY_TAG_WINDOW_SIZE];
    Window_FillTilemap(window, 0);

    u32 size = BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SIZE);
    size = ((size * 1000) / 254 + 5) / 10;
    String *formatString = MessageLoader_GetNewString(berryTag->messageLoader, BerryTag_Text_Size);
    String *string = String_Init(32, HEAP_ID_BERRY_TAG);

    StringTemplate_SetNumber(berryTag->stringTemplate, 0, size / 10, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(berryTag->stringTemplate, 1, size % 10, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(berryTag->stringTemplate, string, formatString);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 2, 0), NULL);
    String_Free(formatString);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void BerryTag_PrintString(BerryTag *berryTag, u8 line)
{
    switch (line) {
    case 0:
        BerryTag_PrintLabelBerryTag(berryTag);
        break;
    case 1:
        BerryTag_PrintLabelSpicy(berryTag);
        break;
    case 2:
        BerryTag_PrintName(berryTag);
        break;
    case 3:
        BerryTag_PrintLabelSour(berryTag);
        BerryTag_PrintLabelDry(berryTag);
        break;
    case 4:
        BerryTag_PrintLabelSweet(berryTag);
        BerryTag_PrintLabelBitter(berryTag);
        break;
    case 5:
        BerryTag_PrintLabelSize(berryTag);
        BerryTag_PrintSize(berryTag);
        break;
    case 6:
        BerryTag_PrintLabelFirm(berryTag);
        BerryTag_PrintFirmness(berryTag);
        break;
    case 7:
        BerryTag_PrintDescription(berryTag);
        break;
    }
}

static void BerryTag_PrintStrings(BerryTag *berryTag)
{
    for (u32 i = 0; i < 8; i++) {
        BerryTag_PrintString(berryTag, i);
    }
}

static int BerryTag_WaitLoading(BerryTag *berryTag)
{
    if (IsScreenFadeDone() == TRUE) {
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2, 16, 0);
        return BERRY_TAG_STATE_HANDLE_INPUT;
    }

    return BERRY_TAG_STATE_WAIT_LOADING;
}

static int BerryTag_HandleInput(BerryTag *berryTag)
{
    u32 berryID;

    if (JOY_HELD(PAD_KEY_UP)) {
        berryID = BerryTag_FindBerry(berryTag->outsideData->entries, berryTag->outsideData->currentBerryID, -1);

        if (berryTag->outsideData->currentBerryID != berryID) {
            berryTag->outsideData->currentBerryID = berryID;
            berryTag->alpha = 0;
            berryTag->fadeState = BERRY_TAG_FADE_STATE_FADING_OUT;

            if ((berryTag->outsideData->index == 3) && (berryTag->outsideData->scroll != 0)) {
                berryTag->outsideData->scroll--;
            } else {
                berryTag->outsideData->index--;
            }

            return BERRY_TAG_STATE_WAIT_FADE;
        }

        return BERRY_TAG_STATE_HANDLE_INPUT;
    }

    if (JOY_HELD(PAD_KEY_DOWN)) {
        berryID = BerryTag_FindBerry(berryTag->outsideData->entries, berryTag->outsideData->currentBerryID, 1);

        if (berryTag->outsideData->currentBerryID != berryID) {
            berryTag->outsideData->currentBerryID = berryID;
            berryTag->alpha = 0;
            berryTag->fadeState = BERRY_TAG_FADE_STATE_FADING_OUT;

            if ((berryTag->outsideData->index == 5) && (berryTag->outsideData->scroll + 9 < berryTag->outsideData->count)) {
                berryTag->outsideData->scroll++;
            } else {
                berryTag->outsideData->index++;
            }

            return BERRY_TAG_STATE_WAIT_FADE;
        }

        return BERRY_TAG_STATE_HANDLE_INPUT;
    }

    if (JOY_NEW(PAD_BUTTON_B) || (gSystem.touchPressed)) {
        App_StartScreenFade(TRUE, HEAP_ID_BERRY_TAG);
        return BERRY_TAG_STATE_EXIT;
    }

    return BERRY_TAG_STATE_HANDLE_INPUT;
}

static u8 BerryTag_IsScreenFadeDone(BerryTag *berryTag)
{
    return IsScreenFadeDone();
}

static int BerryTag_WaitFade(BerryTag *berryTag)
{
    int state = BERRY_TAG_STATE_WAIT_FADE;

    if (berryTag->fadeState == BERRY_TAG_FADE_STATE_FADING_OUT) {
        berryTag->alpha += 4;

        if (berryTag->alpha == 16) {
            berryTag->fadeState = BERRY_TAG_FADE_STATE_FADED_OUT;
        }
    } else if (berryTag->fadeState == BERRY_TAG_FADE_STATE_FADED_OUT) {
        BerryTag_ChangeBerry(berryTag);
        berryTag->fadeState = BERRY_TAG_FADE_STATE_FADING_IN;
    } else {
        berryTag->alpha -= 4;

        if (berryTag->alpha == 0) {
            berryTag->fadeState = BERRY_TAG_FADE_STATE_FADING_OUT;
            state = BERRY_TAG_STATE_HANDLE_INPUT;
        }
    }

    G2_ChangeBlendAlpha(16 - berryTag->alpha, berryTag->alpha);

    return state;
}

static void BerryTag_LoadBerryGraphics(BerryTag *berryTag, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, BerryTag_GetTiles(berryTag->outsideData->currentBerryID), berryTag->bgConfig, BG_LAYER_MAIN_1, 1, 0, FALSE, HEAP_ID_BERRY_TAG);
    Graphics_LoadPaletteFromOpenNARC(narc, BerryTag_GetPalette(berryTag->outsideData->currentBerryID), PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_3), PALETTE_SIZE_BYTES, HEAP_ID_BERRY_TAG);
}

static u32 BerryTag_GetTiles(u32 berryID)
{
    return 6 + berryID;
}

static u32 BerryTag_GetPalette(u32 berryID)
{
    return 70 + berryID;
}

// this assumes that direction is only ever -1 or 1
static u32 BerryTag_FindBerry(u32 *entries, u32 berryID, s32 direction)
{
    s32 current = berryID;

    if (direction < 0) {
        if (berryID != 0) {
            while (TRUE) {
                current -= 1;

                if (BerryTagData_Contains(entries, current) == TRUE) {
                    berryID = current;
                    direction++;

                    if (direction == 0) {
                        break;
                    }
                }

                if (current == 0) {
                    break;
                }
            }
        }
    } else {
        if (berryID != NUM_BERRIES - 1) {
            while (TRUE) {
                current += 1;

                if (BerryTagData_Contains(entries, current) == 1) {
                    berryID = (u16)current;
                    direction--;

                    if (direction == 0) {
                        break;
                    }
                }

                if (current == NUM_BERRIES - 1) {
                    break;
                }
            }
        }
    }

    return berryID;
}

static void BerryTag_ChangeBerry(BerryTag *berryTag)
{
    Heap_Free(berryTag->berryData);
    berryTag->berryData = BerryData_Load(berryTag->outsideData->currentBerryID, HEAP_ID_BERRY_TAG);
    BerryTag_PrintStrings(berryTag);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__NTAG_GRA, HEAP_ID_BERRY_TAG);
    BerryTag_LoadBerryGraphics(berryTag, narc);
    NARC_dtor(narc);
    BerryTag_InitMaxAndDeltaRects(berryTag);
    Bg_CopyTilemapBufferToVRAM(berryTag->bgConfig, BG_LAYER_MAIN_1);
}

static void BerryTag_InitG3(void)
{
    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_AntiAlias(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, FALSE);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    G3_ViewPort(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(0);
}

static void BerryTag_Update3DGfx(BerryTag *berryTag)
{
    G3_ResetG3X();
    Camera_ComputeViewMatrix();

    G3_MtxMode(GX_MTXMODE_PROJECTION);
    G3_Identity();
    G3_MtxMode(GX_MTXMODE_POSITION_VECTOR);
    G3_Identity();

    BerryTag_DrawGraph(berryTag->graph.currRects);
    BerryTag_UpdateGraph(berryTag);

    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static void BerryTag_DeleteCamera(BerryTag *berryTag)
{
    Camera_Delete(berryTag->camera);
}

static void BerryTag_SetupCamera(BerryTag *berryTag)
{
    VecFx32 pos = { 0, 0, 0x10000 };
    CameraAngle angle = { 0, 0, 0 };
    fx32 distance = 0x10000;
    u16 fovY = 1473;

    berryTag->camera = Camera_Alloc(HEAP_ID_BERRY_TAG);

    Camera_InitWithPosition(&pos, distance, &angle, fovY, 1, berryTag->camera);
    Camera_SetClipping(0, FX32_CONST(100), berryTag->camera);
    Camera_ReleaseTarget(berryTag->camera);
    Camera_SetAsActive(berryTag->camera);
}

static void BerryTag_DrawGraph(SpiderGraphRectangle *rects)
{
    G3_PolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 18, 24, 0);
    G3_Begin(GX_BEGIN_QUADS);

    for (u32 i = 0; i < MAX_SPIDER_GRAPH_RECT; i++) {
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].topLeft.x, rects[i].topLeft.y, rects[i].topLeft.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].topRight.x, rects[i].topRight.y, rects[i].topRight.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].bottomRight.x, rects[i].bottomRight.y, rects[i].bottomRight.z);
        G3_Color(GX_RGB(8, 31, 15));
        G3_Vtx(rects[i].bottomLeft.x, rects[i].bottomLeft.y, rects[i].bottomLeft.z);
    }

    G3_End();
}

static void BerryTag_UpdateVec(VecFx16 *currVec, VecFx16 *deltaVec)
{
    currVec->x += deltaVec->x;
    currVec->y += deltaVec->y;
    currVec->z += deltaVec->z;
}

static void BerryTag_UpdateGraph(BerryTag *berryTag)
{
    if (berryTag->graph.state == SPIDER_GRAPH_STATE_END) {
        return;
    }

    u32 i;

    if (berryTag->graph.state == SPIDER_GRAPH_STATE_FINISH_DRAW) {
        for (i = 0; i < MAX_SPIDER_GRAPH_RECT; i++) {
            berryTag->graph.currRects[i] = berryTag->graph.maxRects[i];
        }
    } else {
        for (i = 0; i < MAX_SPIDER_GRAPH_RECT; i++) {
            BerryTag_UpdateVec(&berryTag->graph.currRects[i].topLeft, &berryTag->graph.deltaRects[i].topLeft);
            BerryTag_UpdateVec(&berryTag->graph.currRects[i].topRight, &berryTag->graph.deltaRects[i].topRight);
            BerryTag_UpdateVec(&berryTag->graph.currRects[i].bottomLeft, &berryTag->graph.deltaRects[i].bottomLeft);
            BerryTag_UpdateVec(&berryTag->graph.currRects[i].bottomRight, &berryTag->graph.deltaRects[i].bottomRight);
        }
    }

    berryTag->graph.state++;
}

static void BerryTag_InitGraph(BerryTag *berryTag)
{
    berryTag->graph.currRects[RECT_Q1].topLeft = sGraphRectBounds[RECT_Q1][VTX_BOTTOM_RIGHT].min;
    berryTag->graph.currRects[RECT_Q1].topRight = sGraphRectBounds[RECT_Q1][VTX_BOTTOM_RIGHT].min;
    berryTag->graph.currRects[RECT_Q1].bottomLeft = sGraphRectBounds[RECT_Q1][VTX_BOTTOM_RIGHT].min;
    berryTag->graph.currRects[RECT_Q1].bottomRight = sGraphRectBounds[RECT_Q1][VTX_BOTTOM_RIGHT].min;

    berryTag->graph.currRects[RECT_Q2].topLeft = sGraphRectBounds[RECT_Q2][VTX_BOTTOM_LEFT].min;
    berryTag->graph.currRects[RECT_Q2].topRight = sGraphRectBounds[RECT_Q2][VTX_BOTTOM_LEFT].min;
    berryTag->graph.currRects[RECT_Q2].bottomLeft = sGraphRectBounds[RECT_Q2][VTX_BOTTOM_LEFT].min;
    berryTag->graph.currRects[RECT_Q2].bottomRight = sGraphRectBounds[RECT_Q2][VTX_BOTTOM_LEFT].min;

    berryTag->graph.currRects[RECT_Q3].topLeft = sGraphRectBounds[RECT_Q3][VTX_TOP_RIGHT].min;
    berryTag->graph.currRects[RECT_Q3].topRight = sGraphRectBounds[RECT_Q3][VTX_TOP_RIGHT].min;
    berryTag->graph.currRects[RECT_Q3].bottomLeft = sGraphRectBounds[RECT_Q3][VTX_TOP_RIGHT].min;
    berryTag->graph.currRects[RECT_Q3].bottomRight = sGraphRectBounds[RECT_Q3][VTX_TOP_RIGHT].min;

    berryTag->graph.currRects[RECT_Q4].topLeft = sGraphRectBounds[RECT_Q4][VTX_TOP_LEFT].min;
    berryTag->graph.currRects[RECT_Q4].topRight = sGraphRectBounds[RECT_Q4][VTX_TOP_LEFT].min;
    berryTag->graph.currRects[RECT_Q4].bottomLeft = sGraphRectBounds[RECT_Q4][VTX_TOP_LEFT].min;
    berryTag->graph.currRects[RECT_Q4].bottomRight = sGraphRectBounds[RECT_Q4][VTX_TOP_LEFT].min;

    BerryTag_InitMaxAndDeltaRects(berryTag);
}

static void BerryTag_SetVecFromValue(const SpiderGraphVtxBounds *bounds, VecFx16 *outVec, u8 value)
{
    if (value == 255) {
        *outVec = bounds->max;
    } else if (value == 0) {
        *outVec = bounds->min;
    } else {
        outVec->x = bounds->min.x + bounds->valueLength.x * value;
        outVec->y = bounds->min.y + bounds->valueLength.y * value;
        outVec->z = bounds->min.z + bounds->valueLength.z * value;
    }
}

static void BerryTag_SetVecDifference(VecFx16 *startVec, VecFx16 *endVec, VecFx16 *outVec)
{
    outVec->x = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->x - startVec->x) / 4);
    outVec->y = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->y - startVec->y) / 4);
    outVec->z = FX_F32_TO_FX16(FX_FX16_TO_F32(endVec->z - startVec->z) / 4);
}

static void BerryTag_InitMaxAndDeltaRects(BerryTag *berryTag)
{
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q1][VTX_TOP_LEFT], &berryTag->graph.maxRects[RECT_Q1].topLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SPICINESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q1][VTX_TOP_RIGHT], &berryTag->graph.maxRects[RECT_Q1].topRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_DRYNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q1][VTX_BOTTOM_LEFT], &berryTag->graph.maxRects[RECT_Q1].bottomRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SWEETNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q1][VTX_BOTTOM_RIGHT], &berryTag->graph.maxRects[RECT_Q1].bottomLeft, 0);

    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q2][VTX_TOP_LEFT], &berryTag->graph.maxRects[RECT_Q2].topLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SOURNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q2][VTX_TOP_RIGHT], &berryTag->graph.maxRects[RECT_Q2].topRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SPICINESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q2][VTX_BOTTOM_LEFT], &berryTag->graph.maxRects[RECT_Q2].bottomRight, 0);
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q2][VTX_BOTTOM_RIGHT], &berryTag->graph.maxRects[RECT_Q2].bottomLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_BITTERNESS));

    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q3][VTX_TOP_LEFT], &berryTag->graph.maxRects[RECT_Q3].topLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SOURNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q3][VTX_TOP_RIGHT], &berryTag->graph.maxRects[RECT_Q3].topRight, 0);
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q3][VTX_BOTTOM_LEFT], &berryTag->graph.maxRects[RECT_Q3].bottomRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SWEETNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q3][VTX_BOTTOM_RIGHT], &berryTag->graph.maxRects[RECT_Q3].bottomLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_BITTERNESS));

    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q4][VTX_TOP_LEFT], &berryTag->graph.maxRects[RECT_Q4].topLeft, 0);
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q4][VTX_TOP_RIGHT], &berryTag->graph.maxRects[RECT_Q4].topRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_DRYNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q4][VTX_BOTTOM_LEFT], &berryTag->graph.maxRects[RECT_Q4].bottomRight, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_SWEETNESS));
    BerryTag_SetVecFromValue(&sGraphRectBounds[RECT_Q4][VTX_BOTTOM_RIGHT], &berryTag->graph.maxRects[RECT_Q4].bottomLeft, BerryData_GetAttribute(berryTag->berryData, BERRYATTR_BITTERNESS));

    for (u32 i = 0; i < MAX_SPIDER_GRAPH_RECT; i++) {
        BerryTag_SetVecDifference(&berryTag->graph.currRects[i].topLeft, &berryTag->graph.maxRects[i].topLeft, &berryTag->graph.deltaRects[i].topLeft);
        BerryTag_SetVecDifference(&berryTag->graph.currRects[i].topRight, &berryTag->graph.maxRects[i].topRight, &berryTag->graph.deltaRects[i].topRight);
        BerryTag_SetVecDifference(&berryTag->graph.currRects[i].bottomLeft, &berryTag->graph.maxRects[i].bottomLeft, &berryTag->graph.deltaRects[i].bottomLeft);
        BerryTag_SetVecDifference(&berryTag->graph.currRects[i].bottomRight, &berryTag->graph.maxRects[i].bottomRight, &berryTag->graph.deltaRects[i].bottomRight);
    }

    berryTag->graph.state = SPIDER_GRAPH_STATE_INITIAL;
}
