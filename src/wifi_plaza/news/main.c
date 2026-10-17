#include "wifi_plaza/news/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"

#include "overlay066/ov66_0222DDF0.h"
#include "overlay066/ov66_02231428.h"
#include "overlay066/ov66_0223177C.h"
#include "overlay066/struct_ov66_0222DFF8_decl.h"
#include "overlay066/struct_ov66_02230FA0.h"
#include "overlay066/struct_ov66_02231428.h"
#include "overlay066/struct_ov66_0223177C_decl.h"
#include "overlay066/struct_ov66_02232068.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "enums.h"
#include "font.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "palette.h"
#include "play_time.h"
#include "pltt_transfer.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "vram_transfer.h"

typedef struct WiFiPlazaNewsBlinkStage {
    u32 tileIndex;
} WiFiPlazaNewsBlinkStage;

typedef struct WiFiPlazaNewsCaptionTemplate {
    u8 tilemapLeft;
    u8 tilemapTop;
    u8 width;
    u8 height;
    u16 baseTile;
    u8 palette;
    u8 textX;
    u8 textY;
    u8 alignment;
    TextColor textColor;
} WiFiPlazaNewsCaptionTemplate;

typedef struct WiFiPlazaNewsDigits {
    void *buffer;
    NNSG2dScreenData *screenData;
} WiFiPlazaNewsDigits;

typedef struct WiFiPlazaNewsCountdown {
    UnkStruct_ov66_02231428 remainingTime;
    u8 waitingForTimeSync;
    u8 needsRedraw;
    u16 blinkCounter;
    u32 secondsPerSegment;
} WiFiPlazaNewsCountdown;

typedef struct WiFiPlazaNewsAnimState {
    s16 animationFrame;
    u16 animationState;
} WiFiPlazaNewsAnimState;

typedef struct WiFiPlazaNewsNamePalette {
    u8 paletteIndices[WIFI_PLAZA_NEWS_NAME_PALETTE_ROW_COUNT];
} WiFiPlazaNewsNamePalette;

typedef struct WiFiPlazaNewsNameEntry {
    u8 active;
    u8 paletteSlot;
    u16 holdTimer;
    u16 holdDuration;
    u16 scrollRange;
    String *name;
    Window textWindow;
    WiFiPlazaNewsNamePalette namePalette;
} WiFiPlazaNewsNameEntry;

typedef struct WiFiPlazaNewsNameList {
    WiFiPlazaNewsNameEntry entries[WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT];
    Window windows[WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT];
    String *pendingName;
    void *paletteBuffer;
    NNSG2dPaletteData *paletteData;
} WiFiPlazaNewsNameList;

typedef struct WiFiPlazaNewsFlash {
    u16 active;
    u16 frameCounter;
    u16 blendColor;
    u16 paletteIndex;
    u32 soundEffect;
} WiFiPlazaNewsFlash;

typedef struct WiFiPlazaNewsCaptions {
    Window windows[WIFI_PLAZA_NEWS_CAPTION_COUNT];
    WiFiPlazaNewsFlash newsFlashes[WIFI_PLAZA_NEWS_CAPTION_COUNT];
} WiFiPlazaNewsCaptions;

typedef struct WiFiPlazaNewsGraphics {
    BgConfig *bgConfig;
    SpriteList *spriteList;
    G2dRenderer renderer;
    SpriteResourceCollection *spriteResources[WIFI_PLAZA_NEWS_SPRITE_RESOURCE_COUNT];
    NARC *narc;
} WiFiPlazaNewsGraphics;

typedef struct WiFiPlazaNewsData {
    UnkStruct_ov66_0223177C *playerList;
    const UnkStruct_ov66_02231428 *closeTime;
    WiFiPlazaNewsGraphics graphics;
    WiFiPlazaNewsDigits digits;
    WiFiPlazaNewsCountdown countdown;
    WiFiPlazaNewsAnimState animState;
    WiFiPlazaNewsNameList nameList;
    WiFiPlazaNewsCaptions captions;
} WiFiPlazaNewsData;

static void WiFiPlazaNews_VBlankCallback(void *param);
static void WiFiPlazaNews_Update(WiFiPlazaNewsData *plazaNewsData, const WiFiPlazaSystem *plazaSys);
static void WiFiPlazaNewsGraphics_Init(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsGraphics_Free(WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsGraphics_UpdateSpriteList(WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsGraphics_ApplyUpdates(WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsGraphics_InitBgLayers(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsGraphics_FreeBgLayers(WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsGraphics_InitSprites(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsGraphics_FreeSprites(WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsDigits_Init(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsDigits_Free(WiFiPlazaNewsDigits *digits);
static void WiFiPlazaNewsDigits_DrawSegment(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, u32 segmentState, u8 column, u8 row);
static void WiFiPlazaNewsDigits_DrawIcon(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, u8 column, u8 row, u32 param4, u32 param5, BOOL param6, BOOL param7, BOOL param8);
static void WiFiPlazaNewsCountdown_Init(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsGraphics *graphics, WiFiPlazaNewsDigits *digits, const UnkStruct_ov66_0223177C *timeSource, const UnkStruct_ov66_02231428 *closeTime, const WiFiPlazaSystem *plazaSystem, enum HeapID heapID);
static void WiFiPlazaNewsCountdown_Dummy(WiFiPlazaNewsCountdown *countdown);
static BOOL WiFiPlazaNewsCountdown_Update(WiFiPlazaNewsCountdown *countdown, const UnkStruct_ov66_0223177C *timeSource, const UnkStruct_ov66_02231428 *closeTime);
static void WiFiPlazaNewsCountdown_Draw(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsCountdown_AdvanceBlink(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsCountdown_DrawBar(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics);
static void WiFiPlazaNewsAnimState_Init(WiFiPlazaNewsAnimState *unused, WiFiPlazaNewsGraphics *graphics, WiFiPlazaNewsDigits *digits, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, enum HeapID heapID);
static void WiFiPlazaNewsAnimState_Dummy(WiFiPlazaNewsAnimState *unused);
static BOOL WiFiPlazaNewsAnimState_Update(WiFiPlazaNewsAnimState *animState, const UnkStruct_ov66_0223177C *playerList);
static void WiFiPlazaNewsAnimState_Draw(WiFiPlazaNewsAnimState *animState, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys);
static void WiFiPlazaNewsDigits_DrawPlayerIcons(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 iconFrame);
static void WiFiPlazaNewsDigits_DrawJoinBlink(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 animFrame);
static void WiFiPlazaNewsDigits_DrawLeaveBlink(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 animFrame);
static void WiFiPlazaNewsNamePalette_Build(WiFiPlazaNewsNamePalette *namePalette, const UnkStruct_ov66_0223177C *playerList, int page, const WiFiPlazaSystem *plazaSys);
static void WiFiPlazaNewsNamePalette_Transfer(const WiFiPlazaNewsNamePalette *namePalette, const NNSG2dPaletteData *plttData, u32 paletteSlot);
static void WiFiPlazaNewsNameList_Init(WiFiPlazaNewsNameList *nameList, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsNameList_Free(WiFiPlazaNewsNameList *nameList);
static BOOL WiFiPlazaNewsNameList_Update(WiFiPlazaNewsNameList *nameList, UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, enum HeapID heapID);
static void WiFiPlazaNewsNameList_Draw(WiFiPlazaNewsNameList *nameList);
static void WiFiPlazaNewsNameEntry_Init(WiFiPlazaNewsNameEntry *entry, WiFiPlazaNewsGraphics *graphics, u32 windowIndex, enum HeapID heapID);
static void WiFiPlazaNewsNameEntry_Free(WiFiPlazaNewsNameEntry *entry);
static void WiFiPlazaNewsNameEntry_Show(WiFiPlazaNewsNameEntry *entry, const String *name, u32 holdDuration, const WiFiPlazaNewsNamePalette *namePltt, const NNSG2dPaletteData *plttData);
static void WiFiPlazaNewsNameEntry_Hide(WiFiPlazaNewsNameEntry *entry);
static BOOL WiFiPlazaNewsNameEntry_Update(WiFiPlazaNewsNameEntry *entry);
static void WiFiPlazaNewsNameEntry_Draw(const WiFiPlazaNewsNameEntry *entry, Window *window);
static void WiFiPlazaNewsCaptions_Init(WiFiPlazaNewsCaptions *newsCaptions, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID);
static void WiFiPlazaNewsCaptions_Free(WiFiPlazaNewsCaptions *newsCaptions);
static void WiFiPlazaNewsCaptions_Update(WiFiPlazaNewsCaptions *newsCaptions);
static void WiFiPlazaNewsCaptions_Flash(WiFiPlazaNewsCaptions *newsCaptions, u32 captionIndex);
static void WiFiPlazaNewsFlash_Init(WiFiPlazaNewsFlash *newsFlash, u16 plttIndex, u32 seIndex);
static void WiFiPlazaNewsFlash_Free(WiFiPlazaNewsFlash *newsFlash);
static void WiFiPlazaNewsFlash_Start(WiFiPlazaNewsFlash *newsFlash);
static void WiFiPlazaNewsFlash_Update(WiFiPlazaNewsFlash *newsFlash);

static const CharTransferTemplate sCharTransferTemplate = {
    .maxTasks = 32,
    .sizeMain = 1024 * 96,
    .sizeSub = 512 * 32,
    .heapID = HEAP_ID_107
};

static const GXBanks sVramBanks = {
    GX_VRAM_BG_256_AB,
    GX_VRAM_BGEXTPLTT_NONE,
    GX_VRAM_SUB_BG_128_C,
    GX_VRAM_SUB_BGEXTPLTT_NONE,
    GX_VRAM_OBJ_96_EFG,
    GX_VRAM_OBJEXTPLTT_NONE,
    GX_VRAM_SUB_OBJ_16_I,
    GX_VRAM_SUB_OBJEXTPLTT_NONE,
    GX_VRAM_TEX_NONE,
    GX_VRAM_TEXPLTT_NONE
};

static const GraphicsModes sGraphicsModes = {
    GX_DISPMODE_GRAPHICS,
    GX_BGMODE_0,
    GX_BGMODE_0,
    GX_BG0_AS_2D
};

static const u32 sBgLayers[WIFI_PLAZA_NEWS_BG_LAYER_COUNT] = {
    BG_LAYER_MAIN_0,
    BG_LAYER_MAIN_1,
    BG_LAYER_MAIN_2,
    BG_LAYER_MAIN_3,
    BG_LAYER_SUB_0
};

static const BgTemplate sBgTemplates[WIFI_PLAZA_NEWS_BG_LAYER_COUNT] = {
    {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    },
    {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    },
    {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    },
    {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    },
    {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    }
};

static const u8 sNameListRowY[WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT] = {
    15,
    18,
    21
};

static const u32 sNameEntryHoldDurations[WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT] = {
    336,
    288,
    240
};

static const WiFiPlazaNewsBlinkStage sBlinkStages[WIFI_PLAZA_NEWS_BLINK_STAGE_COUNT] = {
    { 1 },
    { 4 },
    { 5 },
    { 6 }
};

static const WiFiPlazaNewsCaptionTemplate sCaptionTemplates[WIFI_PLAZA_NEWS_CAPTION_COUNT] = {
    { .tilemapLeft = 6, .tilemapTop = 0, .width = 20, .height = 8, .baseTile = 1, .palette = 10, .textX = 80, .textY = 6, .alignment = TEXT_ALIGN_CENTER, .textColor = TEXT_COLOR(3, 4, 0) },
    { .tilemapLeft = 0, .tilemapTop = 6, .width = 6, .height = 3, .baseTile = 161, .palette = 7, .textX = 16, .textY = 4, .alignment = TEXT_ALIGN_CENTER, .textColor = TEXT_COLOR(13, 14, 0) },
    { .tilemapLeft = 15, .tilemapTop = 6, .width = 6, .height = 5, .baseTile = 179, .palette = 7, .textX = 24, .textY = 4, .alignment = TEXT_ALIGN_CENTER, .textColor = TEXT_COLOR(13, 14, 0) },
    { .tilemapLeft = 4, .tilemapTop = 12, .width = 18, .height = 3, .baseTile = 209, .palette = 7, .textX = 4, .textY = 4, .alignment = TEXT_ALIGN_LEFT, .textColor = TEXT_COLOR(13, 14, 0) }
};

static u16 sFlashPaletteIndices[WIFI_PLAZA_NEWS_CAPTION_COUNT] = {
    0,
    24,
    26,
    30
};

static u32 sFlashSoundEffects[WIFI_PLAZA_NEWS_CAPTION_COUNT] = {
    0,
    1501,
    1508,
    1507
};

BOOL WiFiPlazaNews_Init(ApplicationManager *appMan, int *unused)
{
    WiFiPlazaNewsData *plazaNewsData;
    WiFiPlazaApplicationArgs *args = ApplicationManager_Args(appMan);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_107, 0x50000);

    plazaNewsData = ApplicationManager_NewData(appMan, sizeof(WiFiPlazaNewsData), HEAP_ID_107);
    memset(plazaNewsData, 0, sizeof(WiFiPlazaNewsData));

    plazaNewsData->playerList = args->unk_00;
    plazaNewsData->closeTime = args->unk_04;

    WiFiPlazaNewsGraphics_Init(&plazaNewsData->graphics, HEAP_ID_107);
    WiFiPlazaNewsDigits_Init(&plazaNewsData->digits, &plazaNewsData->graphics, HEAP_ID_107);
    WiFiPlazaNewsCountdown_Init(&plazaNewsData->countdown, &plazaNewsData->graphics, &plazaNewsData->digits, plazaNewsData->playerList, plazaNewsData->closeTime, args->unk_08, HEAP_ID_107);
    WiFiPlazaNewsAnimState_Init(&plazaNewsData->animState, &plazaNewsData->graphics, &plazaNewsData->digits, plazaNewsData->playerList, args->unk_08, HEAP_ID_107);
    WiFiPlazaNewsNameList_Init(&plazaNewsData->nameList, &plazaNewsData->graphics, HEAP_ID_107);
    WiFiPlazaNewsCaptions_Init(&plazaNewsData->captions, &plazaNewsData->graphics, HEAP_ID_107);

    SetVBlankCallback(WiFiPlazaNews_VBlankCallback, plazaNewsData);
    DisableHBlank();

    return TRUE;
}

BOOL WiFiPlazaNews_Main(ApplicationManager *appMan, int *state)
{
    WiFiPlazaNewsData *plazaNewsData;
    WiFiPlazaApplicationArgs *args;
    BOOL done;

    plazaNewsData = ApplicationManager_Data(appMan);
    args = ApplicationManager_Args(appMan);

    switch (*state) {
    case WIFI_PLAZA_NEWS_MAIN_STATE_FADE_IN:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_107);
        ov66_0222E31C(args->unk_08, 1);
        (*state)++;
        break;
    case WIFI_PLAZA_NEWS_MAIN_STATE_WAIT_FADE_IN:
        done = IsScreenFadeDone();

        if (done == 1) {
            (*state)++;
        }
        break;
    case WIFI_PLAZA_NEWS_MAIN_STATE_RUN:
        if ((gSystem.pressedKeys & PAD_BUTTON_B) || (ov66_0222E12C(args->unk_08) == 1) || (ov66_02231760() == 1)) {
            if (ov66_0222E12C(args->unk_08) == 1) {
                ov66_0222E2A4(args->unk_08);
            }
            (*state) = WIFI_PLAZA_NEWS_MAIN_STATE_FADE_OUT;
        } else {
            done = WiFiPlazaNewsCountdown_Update(&plazaNewsData->countdown, plazaNewsData->playerList, plazaNewsData->closeTime);

            if (done == 1) {
                WiFiPlazaNewsCaptions_Flash(&plazaNewsData->captions, WIFI_PLAZA_NEWS_CAPTION_COUNTDOWN);
            }

            done = WiFiPlazaNewsAnimState_Update(&plazaNewsData->animState, plazaNewsData->playerList);

            if (done == 1) {
                WiFiPlazaNewsCaptions_Flash(&plazaNewsData->captions, WIFI_PLAZA_NEWS_CAPTION_PLAYER_COUNT);
            }

            done = WiFiPlazaNewsNameList_Update(&plazaNewsData->nameList, plazaNewsData->playerList, args->unk_08, HEAP_ID_107);

            if (done == 1) {
                WiFiPlazaNewsCaptions_Flash(&plazaNewsData->captions, WIFI_PLAZA_NEWS_CAPTION_LATEST_NAME);
            }
        }
        break;
    case WIFI_PLAZA_NEWS_MAIN_STATE_FADE_OUT:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_107);
        (*state)++;
        break;
    case WIFI_PLAZA_NEWS_MAIN_STATE_WAIT_FADE_OUT:
        done = IsScreenFadeDone();

        if (done == 1) {
            return TRUE;
        }
        break;
    }

    WiFiPlazaNews_Update(plazaNewsData, args->unk_08);

    return FALSE;
}

BOOL WiFiPlazaNews_Exit(ApplicationManager *appMan, int *unused)
{
    WiFiPlazaNewsData *plazaNewsData = ApplicationManager_Data(appMan);
    WiFiPlazaApplicationArgs *args = ApplicationManager_Args(appMan);

    WiFiPlazaNewsCaptions_Free(&plazaNewsData->captions);
    WiFiPlazaNewsCountdown_Dummy(&plazaNewsData->countdown);
    WiFiPlazaNewsAnimState_Dummy(&plazaNewsData->animState);
    WiFiPlazaNewsNameList_Free(&plazaNewsData->nameList);
    WiFiPlazaNewsDigits_Free(&plazaNewsData->digits);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    WiFiPlazaNewsGraphics_Free(&plazaNewsData->graphics);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_107);

    return TRUE;
}

static void WiFiPlazaNews_VBlankCallback(void *param)
{
    WiFiPlazaNewsData *plazaNewsData = param;
    WiFiPlazaNewsGraphics_ApplyUpdates(&plazaNewsData->graphics);
}

static void WiFiPlazaNews_Update(WiFiPlazaNewsData *plazaNewsData, const WiFiPlazaSystem *plazaSys)
{
    WiFiPlazaNewsCountdown_Draw(&plazaNewsData->countdown, &plazaNewsData->digits, &plazaNewsData->graphics);
    WiFiPlazaNewsAnimState_Draw(&plazaNewsData->animState, &plazaNewsData->digits, &plazaNewsData->graphics, plazaNewsData->playerList, plazaSys);
    WiFiPlazaNewsNameList_Draw(&plazaNewsData->nameList);
    WiFiPlazaNewsCaptions_Update(&plazaNewsData->captions);
    WiFiPlazaNewsGraphics_UpdateSpriteList(&plazaNewsData->graphics);
}

static void WiFiPlazaNewsGraphics_Init(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    graphics->narc = NARC_ctor(NARC_INDEX_GRAPHIC__LOBBY_NEWS, heapID);

    VramTransfer_New(48, heapID);
    GXLayers_SetBanks(&sVramBanks);

    WiFiPlazaNewsGraphics_InitBgLayers(graphics, heapID);
    WiFiPlazaNewsGraphics_InitSprites(graphics, heapID);
}

static void WiFiPlazaNewsGraphics_Free(WiFiPlazaNewsGraphics *graphics)
{
    NARC_dtor(graphics->narc);
    VramTransfer_Free();

    WiFiPlazaNewsGraphics_FreeBgLayers(graphics);
    WiFiPlazaNewsGraphics_FreeSprites(graphics);
}

static void WiFiPlazaNewsGraphics_UpdateSpriteList(WiFiPlazaNewsGraphics *graphics)
{
    SpriteList_Update(graphics->spriteList);
}

static void WiFiPlazaNewsGraphics_ApplyUpdates(WiFiPlazaNewsGraphics *graphics)
{
    Bg_RunScheduledUpdates(graphics->bgConfig);
    RenderOam_Transfer();
    VramTransfer_Process();
}

static void WiFiPlazaNewsGraphics_InitBgLayers(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    SetAllGraphicsModes(&sGraphicsModes);

    graphics->bgConfig = BgConfig_New(heapID);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;

    GXLayers_SwapDisplay();

    for (int i = 0; i < WIFI_PLAZA_NEWS_BG_LAYER_COUNT; i++) {
        Bg_InitFromTemplate(graphics->bgConfig, sBgLayers[i], &sBgTemplates[i], 0);
        Bg_ClearTilesRange(sBgLayers[i], 32, 0, heapID);
        Bg_ClearTilemap(graphics->bgConfig, sBgLayers[i]);
    }

    Graphics_LoadPaletteFromOpenNARC(graphics->narc, 0, 0, 0, 0, heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(10), heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(graphics->narc, 1, graphics->bgConfig, 1, 0, 0, 0, heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(graphics->narc, 3, graphics->bgConfig, 1, 0, 0, 0, heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(graphics->narc, 4, graphics->bgConfig, 2, 0, 0, 0, heapID);

    Graphics_LoadPaletteFromOpenNARC(graphics->narc, 0, 4, 0, 0, heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(graphics->narc, 2, graphics->bgConfig, 4, 0, 0, 0, heapID);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(graphics->narc, 6, graphics->bgConfig, 4, 0, 0, 0, heapID);
}

static void WiFiPlazaNewsGraphics_FreeBgLayers(WiFiPlazaNewsGraphics *graphics)
{
    for (int i = 0; i < WIFI_PLAZA_NEWS_BG_LAYER_COUNT; i++) {
        Bg_FreeTilemapBuffer(graphics->bgConfig, sBgLayers[i]);
    }

    Heap_Free(graphics->bgConfig);
    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();
}

static void WiFiPlazaNewsGraphics_InitSprites(WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    NNS_G2dInitOamManagerModule();

    RenderOam_Init(0, 126, 0, 31, 0, 126, 0, 31, heapID);
    CharTransfer_InitWithVramModes(&sCharTransferTemplate, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
    PlttTransfer_Init(32, heapID);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    graphics->spriteList = SpriteList_InitRendering(32, &graphics->renderer, heapID);

    SetSubScreenViewRect(&graphics->renderer, 0, FX32_CONST(256));

    for (int i = 0; i < WIFI_PLAZA_NEWS_SPRITE_RESOURCE_COUNT; i++) {
        graphics->spriteResources[i] = SpriteResourceCollection_New(32, i, heapID);
    }

    NetworkIcon_Init();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void WiFiPlazaNewsGraphics_FreeSprites(WiFiPlazaNewsGraphics *graphics)
{
    SpriteList_Delete(graphics->spriteList);

    for (int i = 0; i < WIFI_PLAZA_NEWS_SPRITE_RESOURCE_COUNT; i++) {
        SpriteResourceCollection_Delete(graphics->spriteResources[i]);
    }

    CharTransfer_Free();
    PlttTransfer_Free();
    RenderOam_Free();
}

static void WiFiPlazaNewsDigits_Init(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    digits->buffer = Graphics_GetScrnDataFromOpenNARC(graphics->narc, 5, 0, &digits->screenData, heapID);
}

static void WiFiPlazaNewsDigits_Free(WiFiPlazaNewsDigits *digits)
{
    Heap_Free(digits->buffer);
}

static void WiFiPlazaNewsDigits_DrawSegment(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, u32 segmentState, u8 column, u8 row)
{
    Bg_CopyToTilemapRect(graphics->bgConfig, BG_LAYER_MAIN_3, 5 + (column * 1), 4 + (row * 2), 1, 2, digits->screenData->rawData, 6 + segmentState, 0, digits->screenData->screenWidth / 8, digits->screenData->screenHeight / 8);
    Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_3);
}

static void WiFiPlazaNewsDigits_DrawIcon(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, u8 column, u8 row, u32 param4, u32 param5, BOOL param6, BOOL param7, BOOL param8)
{
    u32 iconCol = param4 % 3;
    u32 iconRow = param4 / 3;

    if (param7) {
        iconRow += 2;
    }

    if (param5 == 1) {
        iconRow++;
    }

    Bg_CopyToTilemapRect(graphics->bgConfig, BG_LAYER_MAIN_3, 21 + (column * 2), 4 + (row * 2), 2, 2, digits->screenData->rawData, 0 + (iconCol * 2), 0 + (iconRow * 2), digits->screenData->screenWidth / 8, digits->screenData->screenHeight / 8);

    if (param8) {
        Bg_ChangeTilemapRectPalette(graphics->bgConfig, BG_LAYER_MAIN_3, 21 + (column * 2), 4 + (row * 2), 2, 2, 4);
    } else {
        if (param6) {
            Bg_ChangeTilemapRectPalette(graphics->bgConfig, BG_LAYER_MAIN_3, 21 + (column * 2), 4 + (row * 2), 2, 2, 3);
        }
    }

    Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_3);
}

static void WiFiPlazaNewsCountdown_Init(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsGraphics *graphics, WiFiPlazaNewsDigits *digits, const UnkStruct_ov66_0223177C *timeSource, const UnkStruct_ov66_02231428 *closeTime, const WiFiPlazaSystem *plazaSystem, enum HeapID heapID)
{
    u32 secondsUntilClose;
    u32 minutesUntilClose;

    secondsUntilClose = ov66_0222EB48(plazaSystem);
    minutesUntilClose = secondsUntilClose / SECONDS_PER_MINUTE;

    countdown->remainingTime.unk_00_val2_unk_00 = 0;
    countdown->remainingTime.unk_00_val2_unk_01 = minutesUntilClose + 1;
    countdown->remainingTime.unk_00_val2_unk_02 = 0;
    countdown->secondsPerSegment = secondsUntilClose / (WIFI_PLAZA_NEWS_COUNTDOWN_ROWS * WIFI_PLAZA_NEWS_COUNTDOWN_COLS);
    countdown->waitingForTimeSync = 1;
    countdown->blinkCounter = 0;
    countdown->needsRedraw = 0;

    WiFiPlazaNewsCountdown_Update(countdown, timeSource, closeTime);
    WiFiPlazaNewsCountdown_Draw(countdown, digits, graphics);
}

static void WiFiPlazaNewsCountdown_Dummy(WiFiPlazaNewsCountdown *countdown)
{
    return;
}

static BOOL WiFiPlazaNewsCountdown_Update(WiFiPlazaNewsCountdown *countdown, const UnkStruct_ov66_0223177C *timeSource, const UnkStruct_ov66_02231428 *closeTime)
{
    BOOL hasTimeSync;
    UnkStruct_ov66_02231428 currentTime;
    UnkStruct_ov66_02231428 newRemainingTime;
    UnkStruct_ov66_02231428 elapsedSinceLastUpdate;
    BOOL needsRedraw = FALSE;

    hasTimeSync = ov66_02231C10(timeSource, &currentTime);

    if (hasTimeSync == FALSE) {
        return needsRedraw;
    }

    if (countdown->waitingForTimeSync == 1) {
        countdown->waitingForTimeSync = 0;
        countdown->needsRedraw = TRUE;
        needsRedraw = TRUE;
    }

    ov66_022314BC(closeTime, &currentTime, &newRemainingTime);
    ov66_022314BC(&newRemainingTime, &countdown->remainingTime, &elapsedSinceLastUpdate);

    if ((elapsedSinceLastUpdate.unk_00_val2_unk_02 >= countdown->secondsPerSegment) || (elapsedSinceLastUpdate.unk_00_val2_unk_01 > 0) || (elapsedSinceLastUpdate.unk_00_val2_unk_00 > 0)) {
        countdown->needsRedraw = TRUE;
        countdown->remainingTime = newRemainingTime;

        needsRedraw = TRUE;
    }

    return needsRedraw;
}

static void WiFiPlazaNewsCountdown_Draw(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics)
{
    if (countdown->waitingForTimeSync == 1) {
        WiFiPlazaNewsCountdown_AdvanceBlink(countdown, digits, graphics);
    } else {
        WiFiPlazaNewsCountdown_DrawBar(countdown, digits, graphics);
    }
}

static void WiFiPlazaNewsCountdown_AdvanceBlink(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics)
{
    countdown->blinkCounter++;

    if (16 < countdown->blinkCounter) {
        countdown->blinkCounter = 0;
    }
}

static void WiFiPlazaNewsCountdown_DrawBar(WiFiPlazaNewsCountdown *countdown, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics)
{
    int i, j;
    u32 segmentsRemaining;
    u16 segmentState;
    s32 column, row;
    s32 segmentIndex;

    segmentsRemaining = countdown->remainingTime.unk_00_val2_unk_02;
    segmentsRemaining += countdown->remainingTime.unk_00_val2_unk_01 * SECONDS_PER_MINUTE;
    segmentsRemaining += countdown->remainingTime.unk_00_val2_unk_00 * (SECONDS_PER_MINUTE * MINUTES_PER_HOUR);
    segmentsRemaining /= countdown->secondsPerSegment;

    if (countdown->needsRedraw) {
        countdown->blinkCounter = 0;
        countdown->needsRedraw = 0;

        Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_MAIN_3, 0, 5, 4, WIFI_PLAZA_NEWS_COUNTDOWN_COLS * 1, WIFI_PLAZA_NEWS_COUNTDOWN_ROWS * 2, 0);
        Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_3);

        for (i = 0; i < WIFI_PLAZA_NEWS_COUNTDOWN_ROWS; i++) {
            row = (WIFI_PLAZA_NEWS_COUNTDOWN_ROWS - 1) - i;

            for (j = 0; j < WIFI_PLAZA_NEWS_COUNTDOWN_COLS; j++) {
                column = (WIFI_PLAZA_NEWS_COUNTDOWN_COLS - 1) - j;
                segmentIndex = ((row * WIFI_PLAZA_NEWS_COUNTDOWN_COLS) + column);

                if (segmentIndex >= segmentsRemaining) {
                    if (segmentIndex == segmentsRemaining) {
                        segmentState = 1;
                    } else if (row == (WIFI_PLAZA_NEWS_COUNTDOWN_ROWS - 1)) {
                        segmentState = 2;
                    } else {
                        segmentState = 0;
                    }

                    WiFiPlazaNewsDigits_DrawSegment(digits, graphics, segmentState, column, row);
                }
            }
        }
    } else {
        if (segmentsRemaining < (WIFI_PLAZA_NEWS_COUNTDOWN_ROWS * WIFI_PLAZA_NEWS_COUNTDOWN_COLS)) {
            u32 blinkPhase;
            u32 blinkFrame;
            u32 blinkThreshold;

            countdown->blinkCounter++;

            blinkPhase = countdown->blinkCounter % 32;
            column = segmentsRemaining % WIFI_PLAZA_NEWS_COUNTDOWN_COLS;
            row = segmentsRemaining / WIFI_PLAZA_NEWS_COUNTDOWN_COLS;

            if (blinkPhase == 0) {
                blinkThreshold = (countdown->secondsPerSegment * 30) / WIFI_PLAZA_NEWS_BLINK_STAGE_COUNT;
                blinkFrame = 6;

                for (i = 0; i < WIFI_PLAZA_NEWS_BLINK_STAGE_COUNT; i++) {
                    if (blinkThreshold * (i + 1) > countdown->blinkCounter) {
                        blinkFrame = sBlinkStages[i].tileIndex;
                        break;
                    }
                }

                WiFiPlazaNewsDigits_DrawSegment(digits, graphics, blinkFrame, column, row);
            } else if (blinkPhase == (32 / 2)) {
                WiFiPlazaNewsDigits_DrawSegment(digits, graphics, 3, column, row);
            }
        }
    }
}

static void WiFiPlazaNewsAnimState_Init(WiFiPlazaNewsAnimState *unused, WiFiPlazaNewsGraphics *graphics, WiFiPlazaNewsDigits *digits, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, enum HeapID heapID)
{
    WiFiPlazaNewsDigits_DrawPlayerIcons(digits, graphics, playerList, plazaSys, 0);
}

static void WiFiPlazaNewsAnimState_Dummy(WiFiPlazaNewsAnimState *unused)
{
    return;
}

static BOOL WiFiPlazaNewsAnimState_Update(WiFiPlazaNewsAnimState *animState, const UnkStruct_ov66_0223177C *playerList)
{
    u32 eventType;
    BOOL done = FALSE;

    eventType = ov66_02231C54(playerList);

    switch (eventType) {
    case WIFI_PLAZA_PLAYER_EVENT_NONE:
        break;
    case WIFI_PLAZA_PLAYER_EVENT_JOINED:
        animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_JOIN_START;
        done = TRUE;
        break;
    case WIFI_PLAZA_PLAYER_EVENT_LEFT:
        animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_LEAVE_START;
        done = TRUE;
        break;
    }

    return done;
}

static void WiFiPlazaNewsAnimState_Draw(WiFiPlazaNewsAnimState *animState, WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys)
{
    switch (animState->animationState) {
    case WIFI_PLAZA_NEWS_ANIM_PHASE_IDLE:
        break;
    case WIFI_PLAZA_NEWS_ANIM_PHASE_JOIN_START:
        animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_JOIN_PLAYING;
        animState->animationFrame = 0;
        break;
    case WIFI_PLAZA_NEWS_ANIM_PHASE_JOIN_PLAYING:
        WiFiPlazaNewsDigits_DrawJoinBlink(digits, graphics, playerList, plazaSys, animState->animationFrame);
        animState->animationFrame++;

        if (animState->animationFrame >= WIFI_PLAZA_NEWS_ICON_BLINK_DURATION) {
            animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_IDLE;
        }
        break;
    case WIFI_PLAZA_NEWS_ANIM_PHASE_LEAVE_START:
        animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_LEAVE_PLAYING;
        animState->animationFrame = 0;
        break;
    case WIFI_PLAZA_NEWS_ANIM_PHASE_LEAVE_PLAYING:
        WiFiPlazaNewsDigits_DrawLeaveBlink(digits, graphics, playerList, plazaSys, animState->animationFrame);
        animState->animationFrame++;

        if (animState->animationFrame >= WIFI_PLAZA_NEWS_ICON_BLINK_DURATION) {
            animState->animationState = WIFI_PLAZA_NEWS_ANIM_PHASE_IDLE;
        }

        break;
    }
}

static void WiFiPlazaNewsDigits_DrawPlayerIcons(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 iconFrame)
{
    int row, col;
    u32 v2;
    BOOL v3;
    BOOL v4;
    BOOL v5;
    BOOL occupied;
    BOOL v7;
    u32 slotIndex;
    u32 drawFrame;

    Bg_FillTilemapRect(graphics->bgConfig, BG_LAYER_MAIN_3, 0, 21, 4, 5 * 2, 4 * 2, 0);

    for (row = 0; row < 4; row++) {
        for (col = 0; col < 5; col++) {
            slotIndex = (row * 5) + col;
            occupied = ov66_02231C18(playerList, slotIndex);

            if (occupied) {
                v2 = ov66_02231C24(playerList, slotIndex);
                v3 = ov66_02231C30(playerList, slotIndex);
                v4 = ov66_02231C3C(playerList, slotIndex);
                v5 = ov66_02231C48(playerList, slotIndex);
                v7 = ov66_0222E924(plazaSys, slotIndex);

                if ((iconFrame == 2) && (v5 == 1)) {
                    drawFrame = 0;
                } else {
                    drawFrame = iconFrame;
                }

                WiFiPlazaNewsDigits_DrawIcon(digits, graphics, col, row, drawFrame, v2, v3, v4, v7);
            }
        }
    }
}

static void WiFiPlazaNewsDigits_DrawJoinBlink(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 animFrame)
{
    u32 blinkFrame;

    if ((animFrame % (WIFI_PLAZA_NEWS_ICON_BLINK_DURATION / 4)) == 0) {
        blinkFrame = animFrame / (WIFI_PLAZA_NEWS_ICON_BLINK_DURATION / 4);

        if ((blinkFrame % 2) == 0) {
            blinkFrame = 2;
        } else {
            blinkFrame = 0;
        }

        WiFiPlazaNewsDigits_DrawPlayerIcons(digits, graphics, playerList, plazaSys, blinkFrame);
    }
}

static void WiFiPlazaNewsDigits_DrawLeaveBlink(WiFiPlazaNewsDigits *digits, WiFiPlazaNewsGraphics *graphics, const UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, u32 animFrame)
{
    u32 blinkFrame;

    if ((animFrame % (WIFI_PLAZA_NEWS_ICON_BLINK_DURATION / 4)) == 0) {
        blinkFrame = animFrame / (WIFI_PLAZA_NEWS_ICON_BLINK_DURATION / 4);

        if ((blinkFrame % 2) == 0) {
            blinkFrame = 1;
        } else {
            blinkFrame = 0;
        }

        WiFiPlazaNewsDigits_DrawPlayerIcons(digits, graphics, playerList, plazaSys, blinkFrame);
    }
}

static void WiFiPlazaNewsNamePalette_Build(WiFiPlazaNewsNamePalette *namePalette, const UnkStruct_ov66_0223177C *playerList, int page, const WiFiPlazaSystem *plazaSys)
{
    u32 slotIndex;
    BOOL isHighlighted;

    for (int i = 0; i < WIFI_PLAZA_NEWS_NAME_PALETTE_ROW_COUNT; i++) {
        slotIndex = ov66_02231D00(playerList, page, i);

        if (slotIndex != 20) {
            isHighlighted = ov66_0222E924(plazaSys, slotIndex);

            if (isHighlighted == 1) {
                namePalette->paletteIndices[i] = 9;
            } else {
                namePalette->paletteIndices[i] = 5;
            }
        }
    }
}

static void WiFiPlazaNewsNamePalette_Transfer(const WiFiPlazaNewsNamePalette *namePalette, const NNSG2dPaletteData *plttData, u32 paletteSlot)
{
    BOOL success;
    const u8 *data = plttData->pRawData;

    for (int i = 0; i < WIFI_PLAZA_NEWS_NAME_PALETTE_ROW_COUNT; i++) {
        success = VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_MAIN, (paletteSlot * 0x20) + (5 * 2) + (i * 0x4), (void *)(&data[(7 * 0x20) + (namePalette->paletteIndices[i] * 2)]), 0x4);
        GF_ASSERT(success);
    }
}

static void WiFiPlazaNewsNameList_Init(WiFiPlazaNewsNameList *nameList, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    for (int i = 0; i < WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT; i++) {
        WiFiPlazaNewsNameEntry_Init(&nameList->entries[i], graphics, i, heapID);

        Window_Add(graphics->bgConfig, &nameList->windows[i], BG_LAYER_MAIN_3, 1, sNameListRowY[i], 30, 2, 7 + i, 0x300 + ((30 * 2) * i));
        Window_FillTilemap(&nameList->windows[i], 0);
        Window_ScheduleCopyToVRAM(&nameList->windows[i]);
    }

    nameList->pendingName = String_Init(256, heapID);
    nameList->paletteBuffer = Graphics_GetPlttDataFromOpenNARC(graphics->narc, 0, &nameList->paletteData, heapID);

    Bg_LoadPalette(BG_LAYER_MAIN_0, &((u8 *)nameList->paletteData->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (7 * 0x20) + (13 * 2));
    Bg_LoadPalette(BG_LAYER_MAIN_0, &((u8 *)nameList->paletteData->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (8 * 0x20) + (13 * 2));
    Bg_LoadPalette(BG_LAYER_MAIN_0, &((u8 *)nameList->paletteData->pRawData)[(7 * 0x20) + (7 * 2)], 0x4, (9 * 0x20) + (13 * 2));
}

static void WiFiPlazaNewsNameList_Free(WiFiPlazaNewsNameList *nameList)
{
    Heap_Free(nameList->paletteBuffer);
    String_Free(nameList->pendingName);

    for (int i = 0; i < WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT; i++) {
        Window_Remove(&nameList->windows[i]);
        WiFiPlazaNewsNameEntry_Free(&nameList->entries[i]);
    }
}

static BOOL WiFiPlazaNewsNameList_Update(WiFiPlazaNewsNameList *nameList, UnkStruct_ov66_0223177C *playerList, const WiFiPlazaSystem *plazaSys, enum HeapID heapID)
{
    BOOL done;
    int slotIndex;
    WiFiPlazaNewsNamePalette namePltt;
    UnkStruct_ov66_02232068 v4;

    ov66_0222E934(plazaSys, &v4);

    for (int i = WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT - 1; i >= 0; i--) {
        if (nameList->entries[i].active) {
            done = WiFiPlazaNewsNameEntry_Update(&nameList->entries[i]);

            if (done == TRUE) {
                if ((i + 1) < WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT) {
                    WiFiPlazaNewsNameEntry_Show(&nameList->entries[i + 1], nameList->entries[i].name, sNameEntryHoldDurations[i + 1], &nameList->entries[i].namePalette, nameList->paletteData);
                }

                WiFiPlazaNewsNameEntry_Hide(&nameList->entries[i]);
            }
        }
    }

    if (nameList->entries[0].active == FALSE) {
        while (ov66_02231C60(playerList) == 1) {
            slotIndex = ov66_02231C78(playerList);
            done = ov66_02231C94(playerList, &v4, slotIndex, nameList->pendingName, heapID);

            if (done == TRUE) {
                WiFiPlazaNewsNamePalette_Build(&namePltt, playerList, slotIndex, plazaSys);
                WiFiPlazaNewsNameEntry_Show(&nameList->entries[0], nameList->pendingName, sNameEntryHoldDurations[0], &namePltt, nameList->paletteData);
                ov66_02231C04(playerList);
                return TRUE;
            }

            ov66_02231C04(playerList);
        }
    }

    return FALSE;
}

static void WiFiPlazaNewsNameList_Draw(WiFiPlazaNewsNameList *nameList)
{
    for (int i = 0; i < WIFI_PLAZA_NEWS_NAME_LIST_ROW_COUNT; i++) {
        if (nameList->entries[i].active == TRUE) {
            WiFiPlazaNewsNameEntry_Draw(&nameList->entries[i], &nameList->windows[i]);
        }
    }
}

static void WiFiPlazaNewsNameEntry_Init(WiFiPlazaNewsNameEntry *entry, WiFiPlazaNewsGraphics *graphics, u32 windowIndex, enum HeapID heapID)
{
    entry->active = FALSE;
    entry->holdTimer = 0;
    entry->name = String_Init(256, heapID);
    entry->paletteSlot = 7 + windowIndex;

    Window_Add(graphics->bgConfig, &entry->textWindow, BG_LAYER_MAIN_3, 0, 0, WIFI_PLAZA_NEWS_NAME_TEXT_WIDTH, WIFI_PLAZA_NEWS_NAME_TEXT_HEIGHT, 7, 0);
}

static void WiFiPlazaNewsNameEntry_Free(WiFiPlazaNewsNameEntry *entry)
{
    String_Free(entry->name);
    Window_Remove(&entry->textWindow);
}

static void WiFiPlazaNewsNameEntry_Show(WiFiPlazaNewsNameEntry *entry, const String *name, u32 holdDuration, const WiFiPlazaNewsNamePalette *namePltt, const NNSG2dPaletteData *plttData)
{
    String_Copy(entry->name, name);

    entry->active = TRUE;
    entry->holdTimer = 0;
    entry->holdDuration = holdDuration;
    entry->scrollRange = Font_CalcStringWidth(FONT_MESSAGE, name, 0);
    entry->scrollRange += HW_LCD_WIDTH;

    GF_ASSERT((WIFI_PLAZA_NEWS_NAME_TEXT_WIDTH * 8) >= entry->scrollRange);

    Window_FillTilemap(&entry->textWindow, 0);
    Text_AddPrinterWithParams(&entry->textWindow, FONT_MESSAGE, entry->name, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);

    entry->namePalette = *namePltt;

    WiFiPlazaNewsNamePalette_Transfer(&entry->namePalette, plttData, entry->paletteSlot);
}

static void WiFiPlazaNewsNameEntry_Hide(WiFiPlazaNewsNameEntry *entry)
{
    entry->active = FALSE;
}

static BOOL WiFiPlazaNewsNameEntry_Update(WiFiPlazaNewsNameEntry *entry)
{
    BOOL done = TRUE;

    if ((entry->holdTimer + 1) <= entry->holdDuration) {
        entry->holdTimer++;
        done = FALSE;
    }

    return done;
}

static void WiFiPlazaNewsNameEntry_Draw(const WiFiPlazaNewsNameEntry *entry, Window *window)
{
    s32 scrollOffset;
    s32 destX;
    s32 srcX;
    s32 blitWidth;

    scrollOffset = (entry->holdTimer * entry->scrollRange) / entry->holdDuration;

    if (scrollOffset < HW_LCD_WIDTH) {
        destX = (HW_LCD_WIDTH - 1) - scrollOffset;
        srcX = 0;
        blitWidth = scrollOffset;
    } else {
        destX = 0;
        srcX = scrollOffset - HW_LCD_WIDTH;
        blitWidth = (entry->scrollRange - scrollOffset);

        if (blitWidth > (HW_LCD_WIDTH - 1)) {
            blitWidth = HW_LCD_WIDTH - 1;
        }
    }

    Window_FillRectWithColor(window, 0, 0, 0, HW_LCD_WIDTH - 1, WIFI_PLAZA_NEWS_NAME_TEXT_HEIGHT * 8);
    Window_BlitBitmapRectWithTransparency(window, entry->textWindow.pixels, srcX, 0, WIFI_PLAZA_NEWS_NAME_TEXT_WIDTH * 8, WIFI_PLAZA_NEWS_NAME_TEXT_HEIGHT * 8, destX, 0, blitWidth, WIFI_PLAZA_NEWS_NAME_TEXT_HEIGHT * 8, 15);
    Window_ScheduleCopyToVRAM(window);
}

static void WiFiPlazaNewsCaptions_Init(WiFiPlazaNewsCaptions *newsCaptions, WiFiPlazaNewsGraphics *graphics, enum HeapID heapID)
{
    int i;
    MessageLoader *msgLoader;
    String *message;
    u32 lineCount;
    String *line;
    u32 lineIndex;
    u32 lineX, lineY;

    memset(newsCaptions, 0, sizeof(WiFiPlazaNewsCaptions));

    msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0653, heapID);
    message = String_Init(128, heapID);

    for (i = 0; i < WIFI_PLAZA_NEWS_CAPTION_COUNT; i++) {
        WiFiPlazaNewsFlash_Init(&newsCaptions->newsFlashes[i], sFlashPaletteIndices[i], sFlashSoundEffects[i]);

        Window_Add(graphics->bgConfig, &newsCaptions->windows[i], BG_LAYER_MAIN_0, sCaptionTemplates[i].tilemapLeft, sCaptionTemplates[i].tilemapTop, sCaptionTemplates[i].width, sCaptionTemplates[i].height, sCaptionTemplates[i].palette, sCaptionTemplates[i].baseTile);

        Window_FillTilemap(&newsCaptions->windows[i], 0);

        MessageLoader_GetString(msgLoader, 0 + i, message);

        lineCount = String_NumLines(message);
        lineY = sCaptionTemplates[i].textY;
        line = String_Init(String_Length(message) + 1, heapID);
        for (lineIndex = 0; lineIndex < lineCount; lineIndex++) {
            String_CopyLineNum(line, message, lineIndex);
            switch (sCaptionTemplates[i].alignment) {
            case TEXT_ALIGN_LEFT:
                lineX = sCaptionTemplates[i].textX;
                break;
            case TEXT_ALIGN_CENTER:
                lineX = sCaptionTemplates[i].textX - (Font_CalcMaxLineWidth(0, line, 0) + 1) / 2;
                break;
            case TEXT_ALIGN_RIGHT:
                lineX = sCaptionTemplates[i].textX - Font_CalcMaxLineWidth(0, line, 0);
                break;
            }
            Text_AddPrinterWithParamsAndColor(&newsCaptions->windows[i], FONT_SYSTEM, line, lineX, lineY, TEXT_SPEED_NO_TRANSFER, sCaptionTemplates[i].textColor, NULL);
            lineY += 16;
        }
        String_Free(line);

        Window_ScheduleCopyToVRAM(&newsCaptions->windows[i]);
    }
    String_Free(message);
    MessageLoader_Free(msgLoader);
}

static void WiFiPlazaNewsCaptions_Free(WiFiPlazaNewsCaptions *newsCaptions)
{
    for (int i = 0; i < WIFI_PLAZA_NEWS_CAPTION_COUNT; i++) {
        Window_Remove(&newsCaptions->windows[i]);
        WiFiPlazaNewsFlash_Free(&newsCaptions->newsFlashes[i]);
    }
}

static void WiFiPlazaNewsCaptions_Update(WiFiPlazaNewsCaptions *newsCaptions)
{
    for (int i = 0; i < WIFI_PLAZA_NEWS_CAPTION_COUNT; i++) {
        WiFiPlazaNewsFlash_Update(&newsCaptions->newsFlashes[i]);
    }
}

static void WiFiPlazaNewsCaptions_Flash(WiFiPlazaNewsCaptions *newsCaptions, u32 captionIndex)
{
    GF_ASSERT(captionIndex < WIFI_PLAZA_NEWS_CAPTION_COUNT);
    GF_ASSERT(captionIndex != WIFI_PLAZA_NEWS_CAPTION_STATIC);

    WiFiPlazaNewsFlash_Start(&newsCaptions->newsFlashes[captionIndex]);
}

static void WiFiPlazaNewsFlash_Init(WiFiPlazaNewsFlash *newsFlash, u16 plttIndex, u32 seIndex)
{
    memset(newsFlash, 0, sizeof(WiFiPlazaNewsFlash));
    newsFlash->paletteIndex = plttIndex;
    newsFlash->soundEffect = seIndex;
}

static void WiFiPlazaNewsFlash_Free(WiFiPlazaNewsFlash *newsFlash)
{
    memset(newsFlash, 0, sizeof(WiFiPlazaNewsFlash));
}

static void WiFiPlazaNewsFlash_Start(WiFiPlazaNewsFlash *newsFlash)
{
    newsFlash->active = TRUE;
    newsFlash->frameCounter = 0;
}

static void WiFiPlazaNewsFlash_Update(WiFiPlazaNewsFlash *newsFlash)
{
    u32 blendRatio;
    u16 targetColor;

    if (newsFlash->frameCounter > 28) {
        newsFlash->active = FALSE;
    }

    if (newsFlash->active == FALSE) {
        return;
    }

    if (newsFlash->frameCounter == 0) {
        Sound_PlayEffect(newsFlash->soundEffect);
    }

    if (newsFlash->frameCounter < 2) {
        blendRatio = (newsFlash->frameCounter * 16) / 2;
    } else if (newsFlash->frameCounter < 2 + 12) {
        blendRatio = 16;
    } else {
        blendRatio = ((newsFlash->frameCounter - (2 + 12)) * 16) / (28 - (2 + 12));
        blendRatio = 16 - blendRatio;
    }

    targetColor = 0xe;

    BlendPalette(&targetColor, &newsFlash->blendColor, 1, blendRatio, 0x19);
    DC_FlushRange(&newsFlash->blendColor, 2);
    GX_LoadBGPltt(&newsFlash->blendColor, newsFlash->paletteIndex, 2);

    newsFlash->frameCounter++;
}
