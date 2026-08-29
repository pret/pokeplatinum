#include "applications/scratch_off_cards/main.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "generated/items.h"

#include "applications/scratch_off_cards/sprite_manager.h"
#include "applications/scratch_off_cards/sprites.h"
#include "applications/scratch_off_cards/windows.h"

#include "bg_window.h"
#include "coordinates.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "palette.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "unk_0201567C.h"
#include "vram_transfer.h"
#include "yes_no_touch_menu.h"

#include "res/text/bank/unk_0540.h"

#define NUM_SCRATCH_CELLS    9
#define NUM_CARDS_TO_PICK    4
#define NUM_CARDS_TO_PLAY    3
#define NUM_WINNABLE_ITEMS   4
#define NUM_CELLS_TO_SCRATCH 3

#define SCRATCH_REGION_WIDTH  240
#define SCRATCH_REGION_HEIGHT 160

#define WILDCARD_CELL_VALUE NUM_WINNABLE_ITEMS

#define ANIM_ID_CANCEL_BUTTON     0
#define ANIM_ID_NEXT_CARD         1
#define ANIM_ID_MATCHING_CELL_BOX 2
#define ANIM_ID_CENTER_MESSAGE    3

typedef struct ScratchOffCardApp {
    ApplicationManager *appMan;
    ApplicationManager *unused;
    u8 subState;
    u8 dummy;
    u8 unused2[2];
    u8 dummy2;
    u8 fadeOutDelay;
    u8 currentCard;
    u8 subStateTimer;
    s16 xOffset;
    s16 xOffset2;
    u8 mosaicSize;
    u8 selectedCardIdxs[NUM_CARDS_TO_PICK];
    u8 dummy3[3];
    VecFx32 cardScaleFactor;
    VecFx32 unused3;
    PaletteAnimator *paletteAnimator;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    u16 unused4[8];
    BgConfig *bgConfig;
    Window windows[NUM_SCRATCH_WINDOWS];
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    ScratchOffCardsAppSpriteManager spriteMan;
    ScratchOffCardsAppSprite *topScreenMonSprites[NUM_WINNABLE_ITEMS];
    ScratchOffCardsAppSprite *scratchMonSprites[NUM_SCRATCH_CELLS];
    ScratchOffCardsAppSprite *cardSprites[NUM_CARDS_TO_PICK];
    ScratchOffCardsAppSprite *skipCardButtonSprite;
    ScratchOffCardsAppSprite *centerMessageBoxSprite;
    ScratchOffCardsAppSprite *matchingCellBoxSprites[NUM_CELLS_TO_SCRATCH];
    ScratchOffCardsAppSprite *winMonSprites[NUM_CELLS_TO_SCRATCH];
    ScratchOffCardsAppSprite *winPopupSprite;
    u8 scratchCellValues[NUM_SCRATCH_CELLS];
    u16 winnableItems[NUM_WINNABLE_ITEMS];
    u16 *dummy4;
    u16 *wonItems;
    u16 *wonItemsCount;
    NARC *narc;
    u8 unused7[8];
    void *scratchCellsRawCharData;
    NNSG2dCharacterData *scratchCellsCharData;
    u8 *scratchCellsDataBackup;
    YesNoTouchMenu *yesNoMenu;
    u8 cellIsScratched[NUM_SCRATCH_CELLS];
    u8 highlightPairPalette;
    u8 highlightPairCounter;
    u8 winningCellValue;
    u8 pairFound : 1;
    u8 centeringStep : 7;
    u8 numRevealedCells;
    u8 scratchedOffCellIdxs[NUM_CELLS_TO_SCRATCH];
    u8 cellIsRevealed[NUM_SCRATCH_CELLS];
    u32 unused6[2];
    TouchPadDataBuffer tpBuffer;
    u8 scratchedPixels[SCRATCH_REGION_WIDTH * SCRATCH_REGION_HEIGHT];
} ScratchOffCardApp;

static BOOL State_FadeInApp(ScratchOffCardApp *app);
static BOOL State_BringInSelectableCards(ScratchOffCardApp *app);
static BOOL State_SelectCard(ScratchOffCardApp *app);
static BOOL State_PullOutSelectedCard(ScratchOffCardApp *app);
static BOOL State_SetupScratchCard(ScratchOffCardApp *app);
static BOOL State_ScratchCard(ScratchOffCardApp *app);
static BOOL State_SlideAwayScratchCard(ScratchOffCardApp *app);
static BOOL State_FadeOutApp(ScratchOffCardApp *app);
static void InitMatchingCellBoxSprites(ScratchOffCardApp *app);
static void InitWinningPopupMonSprites(ScratchOffCardApp *app);
static void InitBottomScreenBoxSprites(ScratchOffCardApp *app);
static void FreeCardSprites(ScratchOffCardApp *app);
static void FreeAssets(ScratchOffCardApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(ScratchOffCardApp *app);
static void NewYesNoMenu(ScratchOffCardApp *app);
static void InitYesNoMenu(ScratchOffCardApp *app);
static void FreeYesNoMenu(ScratchOffCardApp *app);
static void InitSpriteManager(ScratchOffCardApp *app);
static void LoadBackgrounds(ScratchOffCardApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadDefaultTopScreenBackground(ScratchOffCardApp *app, u32 bgLayer);
static void LoadTopScreenPalette(void);
static void LoadCardTopScreenBackground(ScratchOffCardApp *app, u32 bgLayer);
static void LoadCardBottomScreenBackground(ScratchOffCardApp *app, u32 bgLayer);
static void LoadBottomScreenPalette(void);
static void LoadScratchCellsBackground(ScratchOffCardApp *app, u32 bgLayer);
static u8 PrintMessage(ScratchOffCardApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 fontID);
static u8 PrintCenteredMessage(ScratchOffCardApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 fontID);
static u8 PrintStopScratchingMessage(ScratchOffCardApp *app);
static u8 PrintSelectCardMessage(ScratchOffCardApp *app);
static u8 PrintStartCardMessage(ScratchOffCardApp *app);
static u8 ShowWinPopup(ScratchOffCardApp *app);
static u8 PrintTooBadMessage(ScratchOffCardApp *app);
static u8 PrintNextCardButton(ScratchOffCardApp *app);
static u8 PrintCancelButton(ScratchOffCardApp *app);
static u8 PrintItemNameOnTopScreen(ScratchOffCardApp *app, u8 idx);
static void SetNumberInTemplate(ScratchOffCardApp *app, u32 idx, s32 num);
static void ChangeState(ScratchOffCardApp *app, int *state, int newState);
static void PlaceDittosInCells(ScratchOffCardApp *app);
static void PlaceRemainingValuesInCells(ScratchOffCardApp *app);
static void PlaceValuesInScratchCells(ScratchOffCardApp *app, u8 unused);
static void ClearScratchCellValues(ScratchOffCardApp *app);
static void SelectItemsWinnableOnCard(ScratchOffCardApp *app, u8 unused);
static BOOL CenterSelectedCardOnScreen(ScratchOffCardApp *app, u8 selectedIdx);
static void UpdateBackgroundPalette(ScratchOffCardApp *app, u32 bgLayer, u8 palette, u8 width, u8 height);
static u8 GetNumCellsScratched(ScratchOffCardApp *app);
static void MarkAllCellsAsUnscratched(ScratchOffCardApp *app);
static void MarkAllCellsAsUnrevealed(ScratchOffCardApp *app);
static void RemoveScratchedOffPixelsOnCell(ScratchOffCardApp *app, int cellIdx);
static void MarkScratchedOffPixels(ScratchOffCardApp *app);
static void MarkScratchedPixelsAtPoint(ScratchOffCardApp *app, int touchX, int touchY);
static BOOL CheckIfCellIsRevealed(ScratchOffCardApp *app, u8 cellIdx);
static void HighlightMatchingPair(ScratchOffCardApp *app);
static BOOL CheckIfThreeOfAKindFound(ScratchOffCardApp *app);
static BOOL CheckIfDittoTransformNeeded(ScratchOffCardApp *app);
static BOOL UpdateTransformingDitto(ScratchOffCardApp *app, u8 decreaseMosaic);
static void IncrementCurrentCard(ScratchOffCardApp *app);
static void IncrementCurrentCard2(ScratchOffCardApp *app);
static void HideCenterMessageBox(ScratchOffCardApp *app);
static void LoadScratchCellsCharData(ScratchOffCardApp *app);
static void InitScratchCellsBackup(ScratchOffCardApp *app);
static void MakeCopyOfScratchCellsData(ScratchOffCardApp *app);
static void RemoveScratchedOffPixels(ScratchOffCardApp *app, int touchX, int touchY);
static void ScratchPixelsAtPosition(ScratchOffCardApp *app, u32 x, u32 y);

static const CoordinatesS16 sWinningPopupMonSpritePositions[NUM_CELLS_TO_SCRATCH] = {
    { .x = 52, .y = 68 },
    { .x = 108, .y = 68 },
    { .x = 164, .y = 68 }
};

static const CoordinatesS16 sWinPopupSpritePosition = { .x = 38, .y = 56 };

static const CoordinatesS16 sScratchMonPositions[NUM_SCRATCH_CELLS] = {
    { .x = 57, .y = 18 },
    { .x = 124, .y = 18 },
    { .x = 191, .y = 18 },
    { .x = 57, .y = 66 },
    { .x = 124, .y = 66 },
    { .x = 191, .y = 66 },
    { .x = 57, .y = 114 },
    { .x = 124, .y = 114 },
    { .x = 191, .y = 114 }
};

static const CoordinatesS16 sSelectableCardPositions[NUM_CARDS_TO_PICK] = {
    { .x = 0, .y = 36 },
    { .x = 56, .y = 36 },
    { .x = 112, .y = 36 },
    { .x = 168, .y = 36 }
};

static const CoordinatesS16 sNextCardButtonPosition = { .x = 68, .y = 160 };

static const CoordinatesS16 sCancelButtonPosition = { .x = 88, .y = 160 };

static const CoordinatesS16 sCenterMessageBoxPosition = { .x = 68, .y = 68 };

static const u16 sAvailableItems[] = {
    ITEM_POMEG_BERRY,
    ITEM_KELPSY_BERRY,
    ITEM_QUALOT_BERRY,
    ITEM_HONDEW_BERRY,
    ITEM_GREPA_BERRY,
    ITEM_TAMATO_BERRY,
    ITEM_OCCA_BERRY,
    ITEM_PASSHO_BERRY,
    ITEM_WACAN_BERRY,
    ITEM_RINDO_BERRY,
    ITEM_YACHE_BERRY,
    ITEM_CHOPLE_BERRY,
    ITEM_KEBIA_BERRY,
    ITEM_SHUCA_BERRY,
    ITEM_COBA_BERRY,
    ITEM_PAYAPA_BERRY,
    ITEM_TANGA_BERRY,
    ITEM_CHARTI_BERRY,
    ITEM_KASIB_BERRY,
    ITEM_HABAN_BERRY,
    ITEM_COLBUR_BERRY,
    ITEM_BABIRI_BERRY,
    ITEM_CHILAN_BERRY
};

static const TouchScreenRect sSelectableCardHitBoxes[NUM_CARDS_TO_PICK + 1] = {
    { .rect = { .top = 42, .bottom = 154, .left = 0, .right = 80 } },
    { .rect = { .top = 42, .bottom = 154, .left = 88, .right = 138 } },
    { .rect = { .top = 42, .bottom = 154, .left = 144, .right = 195 } },
    { .rect = { .top = 42, .bottom = 154, .left = 204, .right = 254 } },
    { TOUCHSCREEN_TABLE_TERMINATOR }
};

static const TouchScreenRect sNextCardButtonHitbox[] = {
    { .rect = { .top = 164, .bottom = 191, .left = 76, .right = 180 } },
    { TOUCHSCREEN_TABLE_TERMINATOR }
};

static const TouchScreenRect sCancelButtonHitbox[] = {
    { .rect = { .top = 164, .bottom = 191, .left = 94, .right = 164 } },
    { TOUCHSCREEN_TABLE_TERMINATOR }
};

static const TouchScreenRect sScratchCellHitboxes[NUM_SCRATCH_CELLS + 1] = {
    { .rect = { .top = 21, .bottom = 54, .left = 32, .right = 89 } },
    { .rect = { .top = 21, .bottom = 54, .left = 102, .right = 157 } },
    { .rect = { .top = 21, .bottom = 54, .left = 170, .right = 227 } },
    { .rect = { .top = 68, .bottom = 100, .left = 32, .right = 89 } },
    { .rect = { .top = 68, .bottom = 100, .left = 102, .right = 157 } },
    { .rect = { .top = 68, .bottom = 100, .left = 170, .right = 227 } },
    { .rect = { .top = 114, .bottom = 148, .left = 32, .right = 89 } },
    { .rect = { .top = 114, .bottom = 148, .left = 102, .right = 157 } },
    { .rect = { .top = 114, .bottom = 148, .left = 170, .right = 227 } },
    { TOUCHSCREEN_TABLE_TERMINATOR }
};

static const struct {
    u8 top;
    u8 bottom;
    u8 left;
    u8 right;
} sScratchCellScreenPixelRegions[NUM_SCRATCH_CELLS] = {
    { .top = 21, .bottom = 54, .left = 32, .right = 89 },
    { .top = 21, .bottom = 54, .left = 102, .right = 157 },
    { .top = 21, .bottom = 54, .left = 170, .right = 227 },
    { .top = 68, .bottom = 100, .left = 32, .right = 89 },
    { .top = 68, .bottom = 100, .left = 102, .right = 157 },
    { .top = 68, .bottom = 100, .left = 170, .right = 227 },
    { .top = 114, .bottom = 148, .left = 32, .right = 89 },
    { .top = 114, .bottom = 148, .left = 102, .right = 157 },
    { .top = 114, .bottom = 148, .left = 170, .right = 227 }
};

static const CoordinatesS16 sScratchCellPixelRegions[NUM_SCRATCH_CELLS] = {
    { .x = 42, .y = 27 },
    { .x = 117, .y = 27 },
    { .x = 189, .y = 27 },
    { .x = 42, .y = 74 },
    { .x = 117, .y = 74 },
    { .x = 189, .y = 74 },
    { .x = 42, .y = 120 },
    { .x = 117, .y = 120 },
    { .x = 189, .y = 120 }
};

BOOL ScratchOffCardApp_Init(ApplicationManager *appMan, int *state)
{
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_SCRATCH_OFF_CARD_APP, 0x48000);

    ScratchOffCardApp *app = ApplicationManager_NewData(appMan, sizeof(ScratchOffCardApp), HEAP_ID_SCRATCH_OFF_CARD_APP);
    memset(app, 0, sizeof(ScratchOffCardApp));

    app->bgConfig = BgConfig_New(HEAP_ID_SCRATCH_OFF_CARD_APP);
    app->appMan = appMan;

    ScratchOffCardsAppArgs *args = ApplicationManager_Args(appMan);
    app->saveData = args->saveData;
    app->dummy = args->dummy;
    app->dummy4 = &args->dummy2;
    app->options = SaveData_GetOptions(app->saveData);
    app->wonItems = &args->wonItems[0];
    app->wonItemsCount = &args->wonItemsCount[0];

    ClearScratchCellValues(app);

    for (int i = 0; i < NUM_CARDS_TO_PLAY; i++) {
        app->wonItems[i] = 0;
        app->wonItemsCount[i] = 0;
    }

    app->highlightPairPalette = 0;

    LoadAssets(app);
    *state = 0;
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_68, SEQ_NONE, 0);

    return TRUE;
}

BOOL ScratchOffCardApp_Main(ApplicationManager *appMan, int *state)
{
    ScratchOffCardApp *app = ApplicationManager_Data(appMan);

    switch (*state) {
    case 0:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, 1);
        }
        break;
    case 1:
        if (State_BringInSelectableCards(app) == TRUE) {
            ChangeState(app, state, 2);
        }
        break;
    case 2:
        if (State_SelectCard(app) == TRUE) {
            ChangeState(app, state, 3);
        }
        break;
    case 3:
        if (State_PullOutSelectedCard(app) == TRUE) {
            if (app->currentCard >= NUM_CARDS_TO_PLAY) {
                app->currentCard = 0;

                FreeCardSprites(app);
                InitMatchingCellBoxSprites(app);
                InitWinningPopupMonSprites(app);
                ChangeState(app, state, 4);
            } else {
                ChangeState(app, state, 1);
            }
        }
        break;
    case 4:
        if (State_SetupScratchCard(app) == TRUE) {
            ChangeState(app, state, 5);
        }
        break;
    case 5:
        if (State_ScratchCard(app) == TRUE) {
            if (app->currentCard >= NUM_CARDS_TO_PLAY) {
                ChangeState(app, state, 7);
            } else {
                ChangeState(app, state, 6);
            }
        }
        break;
    case 6:
        if (State_SlideAwayScratchCard(app) == TRUE) {
            ChangeState(app, state, 4);
        }
        break;
    case 7:
        if (State_FadeOutApp(app) == TRUE) {
            return TRUE;
        }
        break;
    }

    SpriteList_Update(app->spriteMan.spriteList);

    return FALSE;
}

BOOL ScratchOffCardApp_Exit(ApplicationManager *appMan, int *state)
{
    ScratchOffCardApp *app = ApplicationManager_Data(appMan);

    DisableTouchPad();
    *app->dummy4 = app->dummy2;
    VramTransfer_Free();

    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_SCRATCH_OFF_CARD_APP);

    return TRUE;
}

static BOOL State_FadeInApp(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_SCRATCH_OFF_CARD_APP);
        app->subState++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            app->currentCard = 0;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_BringInSelectableCards(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        app->xOffset = -HW_LCD_WIDTH;

        for (int i = 0; i < NUM_CARDS_TO_PICK; i++) {
            ScratchOffCardsAppSprite_SetPosition(app->cardSprites[i], sSelectableCardPositions[i].x + app->xOffset, sSelectableCardPositions[i].y);
            ScratchOffCardsAppSprite_SetPriority(app->cardSprites[i], 20 + i);
        }

        ScratchOffCardsApp_DrawMessageBox(&app->windows[SCRATCH_WINDOW_SELECT_CARD], Options_Frame(app->options));
        PrintSelectCardMessage(app);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, TRUE);
        app->xOffset2 = NUM_CARDS_TO_PICK - 1;
        Sound_PlayEffect(SEQ_SE_PL_SYU03_sseq);
        app->subState = 1;
        break;
    case 1:
        app->xOffset += 32;
        ScratchOffCardsAppSprite_SetPosition(app->cardSprites[app->xOffset2], sSelectableCardPositions[app->xOffset2].x + app->xOffset, sSelectableCardPositions[app->xOffset2].y);

        if (app->xOffset >= 0) {
            if (app->xOffset2 == 0) {
                app->subState = 2;
            } else {
                Sound_PlayEffect(SEQ_SE_PL_SYU03_sseq);
                app->xOffset2--;
                app->xOffset = -HW_LCD_WIDTH;
            }
        }
        break;
    case 2:
        app->xOffset = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_SelectCard(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        app->subStateTimer = 30;
        app->subState = 1;
        break;
    case 1:
        if (app->subStateTimer == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
            ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, FALSE);
        } else {
            app->subStateTimer--;
        }

        int selectedCard = TouchScreen_CheckRectangleHeld(sSelectableCardHitBoxes);

        if (selectedCard != TOUCHSCREEN_INPUT_NONE) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
            ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, FALSE);
            Sound_PlayEffect(SEQ_SE_DP_BUTTON9_sseq);

            app->selectedCardIdxs[app->currentCard] = selectedCard;
            app->currentCard++;

            u32 x, y;
            TouchScreen_GetHoldState(&x, &y);
            Window_EraseMessageBox(&app->windows[SCRATCH_WINDOW_SELECT_CARD], FALSE);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
            app->subState = 2;
        }
        break;
    case 2:
        return TRUE;
    }

    return FALSE;
}

static BOOL State_PullOutSelectedCard(ScratchOffCardApp *app)
{
    int selectedIdx = app->selectedCardIdxs[app->currentCard - 1];

    switch (app->subState) {
    case 0:
        app->cardScaleFactor.x = 0x1000;
        app->cardScaleFactor.y = 0x1000;
        app->cardScaleFactor.z = 0x1000;
        app->xOffset = 0;
        app->centeringStep = 0;
        ScratchOffCardsAppSprite_SetPriority(app->cardSprites[selectedIdx], 0);
        app->subState = 1;
        break;
    case 1:
        CenterSelectedCardOnScreen(app, selectedIdx);

        app->cardScaleFactor.x += 0x100;
        app->cardScaleFactor.y += 0x100;
        app->cardScaleFactor.z += 0x100;
        app->xOffset++;

        if (app->xOffset % 1 == 0) {
            ScratchOffCardsSprite_SetAffineScaleDouble(app->cardSprites[selectedIdx], &app->cardScaleFactor);
        }

        if (app->cardScaleFactor.x == 0x1800) {
            app->xOffset = 0;
            app->cardScaleFactor.x = 0x1000;
            app->cardScaleFactor.y = 0x1000;
            app->cardScaleFactor.z = 0x1000;
            Sound_PlayEffect(SEQ_SE_PL_SYU03_sseq);
            app->subState = 2;
        }
        break;
    case 2:
        app->xOffset += 16;

        int x, y;
        for (int i = 0; i < NUM_CARDS_TO_PICK; i++) {
            ScratchOffCardsAppSprite_GetPosition(app->cardSprites[i], &x, &y);
            ScratchOffCardsAppSprite_SetPosition(app->cardSprites[i], x + 16, y);
        }

        if (app->xOffset >= HW_LCD_WIDTH) {
            ScratchOffCardsSprite_SetAffineScaleNormal(app->cardSprites[selectedIdx], 0);
            app->subState = 3;
        }
        break;
    case 3:
        app->xOffset = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_SetupScratchCard(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        MakeCopyOfScratchCellsData(app);

        Bg_LoadTiles(app->bgConfig, BG_LAYER_MAIN_0, app->scratchCellsDataBackup, app->scratchCellsCharData->szByte, 0);
        Bg_CopyTilemapBufferToVRAM(app->bgConfig, BG_LAYER_MAIN_0);

        app->xOffset2 = HW_LCD_WIDTH;

        Bg_SetOffset(app->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, app->xOffset2);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, TRUE);

        app->xOffset = -HW_LCD_WIDTH;
        app->dummy3[app->currentCard] = 0;

        for (int i = 0; i < SCRATCH_REGION_WIDTH * SCRATCH_REGION_HEIGHT; i++) {
            app->scratchedPixels[i] = 0;
        }

        app->numRevealedCells = 0;

        ClearScratchCellValues(app);
        PlaceValuesInScratchCells(app, app->dummy3[app->currentCard]);
        SelectItemsWinnableOnCard(app, app->dummy3[app->currentCard]);
        MarkAllCellsAsUnscratched(app);
        MarkAllCellsAsUnrevealed(app);

        app->subState = 1;
        break;
    case 1:
        for (int i = 0; i < NUM_CARDS_TO_PICK; i++) {
            ScratchOffCardsAppSprite_SetPosition(app->topScreenMonSprites[i], 60 + app->xOffset, 26 + (i * 42));
            ScratchOffCardsAppSprite_SetDrawFlag(app->topScreenMonSprites[i], TRUE);
        }

        for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
            ScratchOffCardsAppSprite_UpdatePalette(app->matchingCellBoxSprites[i], 1);
        }

        app->highlightPairPalette = 0;
        app->pairFound = FALSE;
        app->scratchedOffCellIdxs[0] = 177;
        app->scratchedOffCellIdxs[1] = 178;
        app->scratchedOffCellIdxs[2] = 179;

        for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
            ScratchOffCardsAppSprite_SetPosition(app->scratchMonSprites[i], sScratchMonPositions[i].x + app->xOffset, sScratchMonPositions[i].y);
            ScratchOffCardsAppSprite_SetDrawFlag(app->scratchMonSprites[i], TRUE);
            ScratchOffCardsAppSprite_SetAnim(app->scratchMonSprites[i], app->scratchCellValues[i]);
        }

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_1, app->selectedCardIdxs[app->currentCard] + 4, 32, 24);
        UpdateBackgroundPalette(app, BG_LAYER_SUB_2, app->selectedCardIdxs[app->currentCard] + 1, 32, 24);
        Sound_PlayEffect(SEQ_SE_PL_SYU03_sseq);
        app->subState = 2;
        break;
    case 2:
        Bg_SetOffset(app->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, app->xOffset2);

        app->xOffset2 += -16;

        if (app->xOffset >= 0) {
            app->subState = 3;
        } else {
            for (int i = 0; i < NUM_WINNABLE_ITEMS; i++) {
                ScratchOffCardsAppSprite_SetPosition(app->topScreenMonSprites[i], 60 + app->xOffset, 26 + (i * 42));
            }

            for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
                ScratchOffCardsAppSprite_SetPosition(app->scratchMonSprites[i], sScratchMonPositions[i].x + app->xOffset, sScratchMonPositions[i].y);
            }
        }

        app->xOffset += 16;
        break;
    case 3:
        app->xOffset = 0;
        app->xOffset2 = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_ScratchCard(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        if (app->currentCard == NUM_CARDS_TO_PLAY - 1) {
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_NEXT_CARD]);
            PrintCancelButton(app);
            ScratchOffCardsAppSprite_SetPosition(app->skipCardButtonSprite, sCancelButtonPosition.x, sCancelButtonPosition.y);
            ScratchOffCardsAppSprite_SetAnim(app->skipCardButtonSprite, ANIM_ID_CANCEL_BUTTON);
        } else {
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_CANCEL]);
            PrintNextCardButton(app);
        }

        app->subStateTimer = 30;

        ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, TRUE);
        PrintStartCardMessage(app);

        for (int i = 0; i < NUM_WINNABLE_ITEMS; i++) {
            PrintItemNameOnTopScreen(app, i);
        }

        ScratchOffCardsAppSprite_SetDrawFlag(app->skipCardButtonSprite, TRUE);
        ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, FALSE);
        Sound_PlayEffect(SEQ_SE_PL_UG_020_sseq);
        app->subState = 1;
        break;
    case 1:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
        app->subState = 2;
        break;
    case 2:
        if (app->subStateTimer == 0) {
            ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, FALSE);
            Window_FillTilemap(&app->windows[SCRATCH_WINDOW_START_CARD], 0);
            Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_START_CARD]);
            app->subState = 3;
        } else {
            app->subStateTimer--;
        }
        break;
    case 3:
        WriteAutoSamplingDataToBuffer(&app->tpBuffer, TOUCH_PAD_EXTERNAL_BUFFER_WRITE_METHOD_ALL_DATA_WITHOUT_WRAPPING, 2);
        int touchedCell = TouchScreen_CheckRectangleHeld(sScratchCellHitboxes);

        if (touchedCell != TOUCHSCREEN_INPUT_NONE) {
            if (GetNumCellsScratched(app) < NUM_CELLS_TO_SCRATCH) {
                app->cellIsScratched[touchedCell] = TRUE;
            }

            if (app->cellIsScratched[touchedCell] == TRUE) {
                MarkScratchedOffPixels(app);
                CheckIfCellIsRevealed(app, touchedCell);
                RemoveScratchedOffPixelsOnCell(app, touchedCell);

                if (!Sound_IsEffectPlaying(SEQ_SE_PL_KEZURI_sseq)) {
                    Sound_PlayEffect(SEQ_SE_PL_KEZURI_sseq);
                }
            }

            if (CheckIfThreeOfAKindFound(app) == TRUE) {
                Sound_StopEffect(SEQ_SE_PL_KEZURI_sseq, 0);
                ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, TRUE);

                app->wonItems[app->currentCard] = app->winnableItems[app->winningCellValue];

                if (app->winnableItems[app->winningCellValue] == ITEM_NUGGET) {
                    app->wonItemsCount[app->currentCard] = 1;
                } else {
                    app->wonItemsCount[app->currentCard] = 3;
                }

                if (CheckIfDittoTransformNeeded(app) == TRUE) {
                    app->subStateTimer = 30;
                } else {
                    app->subStateTimer = 0;
                }

                ShowWinPopup(app);
                app->subState = 4;
                return FALSE;
            }

            if (app->numRevealedCells >= NUM_CELLS_TO_SCRATCH) {
                Sound_StopEffect(SEQ_SE_PL_KEZURI_sseq, 0);
                app->subStateTimer = 60;
                ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, TRUE);
                PrintTooBadMessage(app);
                app->subState = 7;
                return FALSE;
            }
        } else {
            Sound_StopEffect(SEQ_SE_PL_KEZURI_sseq, 0);
        }

        if (app->pairFound == TRUE) {
            HighlightMatchingPair(app);
        }

        if (app->currentCard == NUM_CARDS_TO_PLAY - 1) {
            touchedCell = TouchScreen_CheckRectanglePressed(sCancelButtonHitbox);

            if (touchedCell != TOUCHSCREEN_INPUT_NONE) {
                ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, TRUE);
                PrintStopScratchingMessage(app);

                Sound_PlayEffect(SEQ_SE_DP_BUTTON9_sseq);

                ScratchOffCardsAppSprite_SetAnim(app->skipCardButtonSprite, ANIM_ID_CANCEL_BUTTON);
                NewYesNoMenu(app);
                InitYesNoMenu(app);
                app->subState = 10;
                break;
            }
        } else {
            touchedCell = TouchScreen_CheckRectanglePressed(sNextCardButtonHitbox);

            if (touchedCell != TOUCHSCREEN_INPUT_NONE) {
                ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, TRUE);
                PrintStopScratchingMessage(app);

                Sound_PlayEffect(SEQ_SE_DP_BUTTON9_sseq);

                ScratchOffCardsAppSprite_SetAnim(app->skipCardButtonSprite, ANIM_ID_NEXT_CARD);
                NewYesNoMenu(app);
                InitYesNoMenu(app);
                app->subState = 9;
                break;
            }
        }
        break;
    case 4:
        if (app->subStateTimer == 0) {
            if (!UpdateTransformingDitto(app, FALSE)) {
                app->subState = 5;
            }
        } else {
            app->subStateTimer--;
        }
        break;
    case 5:
        if (!UpdateTransformingDitto(app, TRUE)) {
            app->subStateTimer = 0;
            app->subState = 6;
        }
        break;
    case 6:
        if (ScratchOffCardsAppSprite_IsAnimated(app->winPopupSprite) == TRUE) {
            break;
        }

        if (app->subStateTimer == 0) {
            for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
                ScratchOffCardsAppSprite_SetDrawFlag(app->winMonSprites[i], FALSE);
            }

            ScratchOffCardsAppSprite_SetDrawFlag(app->winPopupSprite, FALSE);
            IncrementCurrentCard2(app);
            HideCenterMessageBox(app);
            return TRUE;
        } else {
            app->subStateTimer--;
        }
        break;
    case 7:
        if (app->subStateTimer == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
            IncrementCurrentCard2(app);
            HideCenterMessageBox(app);
            app->subStateTimer = 30;
            app->subState = 8;
        } else {
            app->subStateTimer--;
        }
        break;
    case 8:
        if (app->subStateTimer == 0) {
            return TRUE;
        } else {
            app->subStateTimer--;
        }
        break;
    case 9: {
        u32 input = YesNoTouchMenu_ProcessInputInstant(app->yesNoMenu);

        if (input == YES_NO_TOUCH_MENU_YES) {
            ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, FALSE);
            Window_EraseStandardFrame(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH], FALSE);
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);
            IncrementCurrentCard2(app);
            FreeYesNoMenu(app);
            return TRUE;
        } else if (input == YES_NO_TOUCH_MENU_NO) {
            ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, FALSE);
            Window_EraseStandardFrame(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH], FALSE);
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);
            FreeYesNoMenu(app);
            app->subState = 11;
        }
    } break;
    case 10: {
        u32 input = YesNoTouchMenu_ProcessInputInstant(app->yesNoMenu);

        if (input == YES_NO_TOUCH_MENU_YES) {
            ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, FALSE);
            Window_EraseStandardFrame(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH], FALSE);
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);
            IncrementCurrentCard(app);
            FreeYesNoMenu(app);
            return TRUE;
        } else if (input == YES_NO_TOUCH_MENU_NO) {
            ScratchOffCardsAppSprite_SetAnimateFlag(app->skipCardButtonSprite, FALSE);
            Window_EraseStandardFrame(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH], FALSE);
            Window_ClearAndCopyToVRAM(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);
            FreeYesNoMenu(app);
            app->subState = 11;
        }
    } break;
    case 11:
        if (!TouchScreen_Touched()) {
            app->subState = 3;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SlideAwayScratchCard(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
        ScratchOffCardsAppSprite_SetDrawFlag(app->skipCardButtonSprite, FALSE);

        app->xOffset = 0;
        app->xOffset2 = 0;

        Sound_PlayEffect(SEQ_SE_PL_SYU03_sseq);

        app->subState = 1;
        break;
    case 1:
        Bg_SetOffset(app->bgConfig, BG_LAYER_SUB_2, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, app->xOffset2);
        app->xOffset2 += -16;

        if (app->xOffset >= HW_LCD_WIDTH) {
            app->subState = 2;
        } else {
            for (int i = 0; i < NUM_WINNABLE_ITEMS; i++) {
                ScratchOffCardsAppSprite_SetPosition(app->topScreenMonSprites[i], 60 + app->xOffset, 26 + (i * 42));
            }

            for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
                ScratchOffCardsAppSprite_SetDrawFlag(app->matchingCellBoxSprites[i], FALSE);
            }

            for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
                ScratchOffCardsAppSprite_SetPosition(app->scratchMonSprites[i], sScratchMonPositions[i].x + app->xOffset, sScratchMonPositions[i].y);
            }
        }

        app->xOffset += 16;
        break;
    case 2:
        app->xOffset = 0;
        app->xOffset2 = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(ScratchOffCardApp *app)
{
    switch (app->subState) {
    case 0:
        app->fadeOutDelay = 10;
        app->subState++;
        break;
    case 1:
        app->fadeOutDelay--;

        if (app->fadeOutDelay == 0) {
            Window_EraseMessageBox(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH], 0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_SCRATCH_OFF_CARD_APP);
            app->subState++;
        }
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void InitMatchingCellBoxSprites(ScratchOffCardApp *app)
{
    for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        app->matchingCellBoxSprites[i] = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_BOX_SPRITES, ANIM_ID_MATCHING_CELL_BOX, sScratchMonPositions[i].x, sScratchMonPositions[i].y, FALSE, 2, 11);

        ScratchOffCardsAppSprite_SetDrawFlag(app->matchingCellBoxSprites[i], FALSE);
    }
}

static void InitWinningPopupMonSprites(ScratchOffCardApp *app)
{
    for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        app->winMonSprites[i] = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_MON_SPRITES_MAIN, 0, sWinningPopupMonSpritePositions[i].x, sWinningPopupMonSpritePositions[i].y, FALSE, 0, 0);
        ScratchOffCardsAppSprite_SetDrawFlag(app->winMonSprites[i], FALSE);
    }
}

static void InitBottomScreenBoxSprites(ScratchOffCardApp *app)
{
    app->skipCardButtonSprite = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_BOX_SPRITES, ANIM_ID_NEXT_CARD, sNextCardButtonPosition.x, sNextCardButtonPosition.y, FALSE, 1, 0);
    ScratchOffCardsAppSprite_SetDrawFlag(app->skipCardButtonSprite, FALSE);

    app->centerMessageBoxSprite = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_BOX_SPRITES, ANIM_ID_CENTER_MESSAGE, sCenterMessageBoxPosition.x, sCenterMessageBoxPosition.y, FALSE, 1, 0);
    ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, FALSE);
}

static void FreeCardSprites(ScratchOffCardApp *app)
{
    for (int i = 0; i < NUM_CARDS_TO_PICK; i++) {
        if (app->cardSprites[i] != NULL) {
            ScratchOffCardsAppSprite_Free(app->cardSprites[i]);
        }
    }
}

static void FreeAssets(ScratchOffCardApp *app)
{
    int i;

    for (i = 0; i < NUM_WINNABLE_ITEMS; i++) {
        if (app->topScreenMonSprites[i] != NULL) {
            ScratchOffCardsAppSprite_Free(app->topScreenMonSprites[i]);
        }
    }

    for (i = 0; i < NUM_SCRATCH_CELLS; i++) {
        if (app->scratchMonSprites[i] != NULL) {
            ScratchOffCardsAppSprite_Free(app->scratchMonSprites[i]);
        }
    }

    if (app->skipCardButtonSprite != NULL) {
        ScratchOffCardsAppSprite_Free(app->skipCardButtonSprite);
    }

    if (app->centerMessageBoxSprite != NULL) {
        ScratchOffCardsAppSprite_Free(app->centerMessageBoxSprite);
    }

    for (i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        if (app->matchingCellBoxSprites[i] != NULL) {
            ScratchOffCardsAppSprite_Free(app->matchingCellBoxSprites[i]);
        }
    }

    for (i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        if (app->winMonSprites[i] != NULL) {
            ScratchOffCardsAppSprite_Free(app->winMonSprites[i]);
        }
    }

    if (app->winPopupSprite != NULL) {
        ScratchOffCardsAppSprite_Free(app->winPopupSprite);
    }

    Font_Free(FONT_SUBSCREEN);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    ScratchOffCardsApp_FreeSprites(&app->spriteMan);

    sub_02015760(app->paletteAnimator);
    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);
    Heap_Free(app->scratchCellsRawCharData);
    Heap_Free(app->scratchCellsDataBackup);

    ScratchOffCardsApp_FreeWindows(app->windows);
    FreeBackgrounds(app->bgConfig);

    NARC_dtor(app->narc);
}

static void InitGraphicsPlane(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

static void LoadAssets(ScratchOffCardApp *app)
{
    app->narc = NARC_ctor(NARC_INDEX_SCRATCH_OFF_CARDS, HEAP_ID_SCRATCH_OFF_CARD_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0540, HEAP_ID_SCRATCH_OFF_CARD_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_SCRATCH_OFF_CARD_APP);
    app->displayStr = String_Init(600, HEAP_ID_SCRATCH_OFF_CARD_APP);
    app->fmtStr = String_Init(600, HEAP_ID_SCRATCH_OFF_CARD_APP);

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_SCRATCH_OFF_CARD_APP);
    Font_LoadTextPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(13), HEAP_ID_SCRATCH_OFF_CARD_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), HEAP_ID_SCRATCH_OFF_CARD_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_SUB_BG, PLTT_OFFSET(12), HEAP_ID_SCRATCH_OFF_CARD_APP);
    Font_InitManager(FONT_SUBSCREEN, HEAP_ID_SCRATCH_OFF_CARD_APP);

    app->specialChars = FontSpecialChars_Init(15, 14, 0, HEAP_ID_SCRATCH_OFF_CARD_APP);
    ScratchOffCardsApp_InitWindows(app->bgConfig, app->windows);
    app->paletteAnimator = sub_0201567C(NULL, 1, 12, HEAP_ID_SCRATCH_OFF_CARD_APP);

    LoadScratchCellsCharData(app);
    InitScratchCellsBackup(app);
    MakeCopyOfScratchCellsData(app);

    GXLayers_TurnBothDispOn();

    for (int i = 0; i < NUM_WINNABLE_ITEMS; i++) {
        app->topScreenMonSprites[i] = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_MON_SPRITES_SUB, i, 60, 26 + (i * 42), TRUE, 0, 0);
        ScratchOffCardsAppSprite_SetDrawFlag(app->topScreenMonSprites[i], FALSE);
    }

    for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
        app->scratchMonSprites[i] = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_MON_SPRITES_MAIN, 0, sScratchMonPositions[i].x, sScratchMonPositions[i].y, FALSE, 2, 10);
        ScratchOffCardsAppSprite_SetDrawFlag(app->scratchMonSprites[i], FALSE);
    }

    InitBottomScreenBoxSprites(app);

    for (int i = 0; i < NUM_CARDS_TO_PICK; i++) {
        app->cardSprites[i] = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_CARD_SPRITES, 0 + i, sSelectableCardPositions[i].x, sSelectableCardPositions[i].y, FALSE, 1, 0);

        ScratchOffCardsAppSprite_SetPosition(app->cardSprites[i], sSelectableCardPositions[i].x + -HW_LCD_WIDTH, sSelectableCardPositions[i].y);
        ScratchOffCardsAppSprite_SetPriority(app->cardSprites[i], 20 + i);
    }

    app->winPopupSprite = ScratchOffCardsAppSprite_New(&app->spriteMan, RESOURCE_ID_WIN_POPUP_SPRITE, 0, sWinPopupSpritePosition.x, sWinPopupSpritePosition.y, FALSE, 0, 10);
    ScratchOffCardsAppSprite_SetDrawFlag(app->winPopupSprite, FALSE);

    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    EnableTouchPad();
    InitializeTouchPad(1);
    SetVBlankCallback(VBlankCallback, app);
}

static void NewYesNoMenu(ScratchOffCardApp *app)
{
    app->yesNoMenu = YesNoTouchMenu_New(HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void InitYesNoMenu(ScratchOffCardApp *app)
{
    YesNoTouchMenuParams menuParams;

    menuParams.bgConfig = app->bgConfig;
    menuParams.bgLayer = BG_LAYER_MAIN_2;
    menuParams.baseTile = 1024 - 128;
    menuParams.palette = 10;
    menuParams.tilemapLeft = 24;
    menuParams.tilemapTop = 8;

    YesNoTouchMenu_InitWithParams(app->yesNoMenu, &menuParams);
}

static void FreeYesNoMenu(ScratchOffCardApp *app)
{
    YesNoTouchMenu_Free(app->yesNoMenu);
}

static void LoadBackgrounds(ScratchOffCardApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_SCRATCH_OFF_CARD_APP);

    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_SCRATCH_OFF_CARD_APP);

    LoadDefaultTopScreenBackground(app, BG_LAYER_SUB_3);
    LoadTopScreenPalette();
    LoadCardTopScreenBackground(app, BG_LAYER_SUB_2);
    LoadCardBottomScreenBackground(app, BG_LAYER_MAIN_1);
    LoadBottomScreenPalette();
    LoadScratchCellsBackground(app, BG_LAYER_MAIN_0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
}

static void InitSpriteManager(ScratchOffCardApp *app)
{
    ScratchOffCardsApp_InitSpriteManager(&app->spriteMan);
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    ScratchOffCardApp *app = data;

    if (app->unused != NULL) {
        return;
    }

    if (app->plttData != NULL) {
        PaletteData_CommitFadedBuffers(app->plttData);
    }

    Bg_RunScheduledUpdates(app->bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
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

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplateSub0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplateSub0, BG_TYPE_STATIC);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate bgTemplateSub3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1000,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &bgTemplateSub3, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);

    BgTemplate bgTemplateSub2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3000,
        .charBase = GX_BG_CHARBASE_0x14000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &bgTemplateSub2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);

    BgTemplate bgTemplateMain1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplateMain1, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplateMain0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1000,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplateMain0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplateMain2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2000,
        .charBase = GX_BG_CHARBASE_0x14000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplateMain2, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, FALSE);
}

static void LoadDefaultTopScreenBackground(ScratchOffCardApp *app, u32 bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, 35, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, 37, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void LoadCardTopScreenBackground(ScratchOffCardApp *app, u32 bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, 38, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, 40, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void LoadTopScreenPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_SCRATCH_OFF_CARDS, 34, &plttData, HEAP_ID_SCRATCH_OFF_CARD_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 5);
    GXS_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 5);
    Heap_Free(pltt);
}

static void LoadBottomScreenPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_SCRATCH_OFF_CARDS, 0, &plttData, HEAP_ID_SCRATCH_OFF_CARD_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 9);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 10);
    Heap_Free(pltt);
}

static void LoadCardBottomScreenBackground(ScratchOffCardApp *app, u32 bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, 4, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, 6, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static void LoadScratchCellsBackground(ScratchOffCardApp *app, u32 bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, 7, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, 9, app->bgConfig, bgLayer, 0, 0, FALSE, HEAP_ID_SCRATCH_OFF_CARD_APP);
}

static u8 PrintMessage(ScratchOffCardApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 fontID)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, fontID, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintCenteredMessage(ScratchOffCardApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 fontID)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);
    xOffset -= (Font_CalcStringWidth(fontID, app->displayStr, 0) + 1) / 2;
    return Text_AddPrinterWithParamsAndColor(window, fontID, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintStopScratchingMessage(ScratchOffCardApp *app)
{
    ScratchOffCardsApp_DrawWindow(app->bgConfig, &app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);
    u8 printerID = PrintMessage(app, &app->windows[SCRATCH_WINDOW_STOP_SCRATCH], ScratchOffCardsApp_Text_StopScratching, 1, 1, TEXT_SPEED_INSTANT, 1, 2, 15, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_STOP_SCRATCH]);

    return printerID;
}

static u8 PrintSelectCardMessage(ScratchOffCardApp *app)
{
    SetNumberInTemplate(app, 0, app->currentCard + 1);
    u8 printerID = PrintMessage(app, &app->windows[SCRATCH_WINDOW_SELECT_CARD], ScratchOffCardsApp_Text_SelectCard, 1, 1, TEXT_SPEED_INSTANT, 1, 2, 15, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_SELECT_CARD]);

    return printerID;
}

static u8 PrintStartCardMessage(ScratchOffCardApp *app)
{
    SetNumberInTemplate(app, 0, app->currentCard + 1);
    u8 printerID = PrintCenteredMessage(app, &app->windows[SCRATCH_WINDOW_START_CARD], ScratchOffCardsApp_Text_StartCard, 8 * 6, 1 + 4, TEXT_SPEED_INSTANT, 1, 2, 0, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_START_CARD]);

    return printerID;
}

static u8 ShowWinPopup(ScratchOffCardApp *app)
{
    for (u8 i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        ScratchOffCardsAppSprite_SetAnim(app->winMonSprites[i], app->scratchCellValues[app->scratchedOffCellIdxs[i]]);
        ScratchOffCardsAppSprite_SetDrawFlag(app->winMonSprites[i], TRUE);
    }

    ScratchOffCardsAppSprite_SetDrawFlag(app->winPopupSprite, TRUE);
    ScratchOffCardsAppSprite_SetAnimateFlag(app->winPopupSprite, TRUE);

    Sound_PlayEffect(SEQ_SE_PL_CALL_sseq);

    return 0;
}

static u8 PrintTooBadMessage(ScratchOffCardApp *app)
{
    Sound_PlayEffect(SEQ_SE_DP_BOX03_sseq);
    u8 printerID = PrintCenteredMessage(app, &app->windows[SCRATCH_WINDOW_TOO_BAD], ScratchOffCardsApp_Text_TooBad, 8 * 6, 1 + 4, TEXT_SPEED_INSTANT, 1, 2, 0, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_TOO_BAD]);

    return printerID;
}

static u8 PrintNextCardButton(ScratchOffCardApp *app)
{
    u8 printerID = PrintCenteredMessage(app, &app->windows[SCRATCH_WINDOW_NEXT_CARD], ScratchOffCardsApp_Text_NextCard, 8 * 6, 1, TEXT_SPEED_INSTANT, 1, 1, 0, FONT_SUBSCREEN);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_NEXT_CARD]);

    return printerID;
}

static u8 PrintCancelButton(ScratchOffCardApp *app)
{
    u8 printerID = PrintCenteredMessage(app, &app->windows[SCRATCH_WINDOW_CANCEL], ScratchOffCardsApp_Text_Cancel, 8 * 3, 1, TEXT_SPEED_INSTANT, 1, 1, 0, FONT_SUBSCREEN);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_CANCEL]);

    return printerID;
}

static const u8 sItemNameYOffsets[NUM_WINNABLE_ITEMS] = { 10, 12, 6, 8 };

static u8 PrintItemNameOnTopScreen(ScratchOffCardApp *app, u8 idx)
{
    StringTemplate_SetItemName(app->strTemplate, 0, app->winnableItems[idx]);
    u8 printerID = PrintCenteredMessage(app, &app->windows[SCRATCH_WINDOW_ITEM_NAME_1 + idx], ScratchOffCardsApp_Text_ItemNameTemplate, 8 * 6 - 4, sItemNameYOffsets[idx], TEXT_SPEED_INSTANT, 1, 2, 0, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_ITEM_NAME_1 + idx]);

    return printerID;
}

static void SetNumberInTemplate(ScratchOffCardApp *app, u32 idx, s32 num)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

static void ChangeState(ScratchOffCardApp *app, int *state, int newState)
{
    app->subState = 0;
    *state = newState;
}

static void PlaceDittosInCells(ScratchOffCardApp *app)
{
    for (int i = 0; i < 2; i++) {
        while (TRUE) {
            u8 index = LCRNG_Next() % NUM_SCRATCH_CELLS;

            if (app->scratchCellValues[index] == 176) {
                app->scratchCellValues[index] = WILDCARD_CELL_VALUE;
                break;
            }
        }
    }
}

static void PlaceRemainingValuesInCells(ScratchOffCardApp *app)
{
    u8 cellValue = LCRNG_Next() % NUM_WINNABLE_ITEMS;
    int retries = 0;

    for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
        while (TRUE) {
            int cellIdx = LCRNG_Next() % NUM_SCRATCH_CELLS;

            if (app->scratchCellValues[cellIdx] == 176) {
                retries = 0;
                app->scratchCellValues[cellIdx] = cellValue;

                if ((i == 2) || (i == 4) || (i == 6)) {
                    cellValue++;

                    if (cellValue == (5 - 1)) {
                        cellValue = 0;
                    }
                }
                break;
            }

            retries++;

            if (retries >= 30) {
                retries = 0;

                for (int j = 0; j < NUM_SCRATCH_CELLS; j++) {
                    if (app->scratchCellValues[j] == 176) {
                        app->scratchCellValues[j] = cellValue;

                        if ((i == 2) || (i == 4) || (i == 6)) {
                            cellValue++;

                            if (cellValue == NUM_WINNABLE_ITEMS) {
                                cellValue = 0;
                            }
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
}

static void PlaceValuesInScratchCells(ScratchOffCardApp *app, u8 unused)
{
    PlaceDittosInCells(app);
    PlaceRemainingValuesInCells(app);
}

static void ClearScratchCellValues(ScratchOffCardApp *app)
{
    for (int i = 0; i < NUM_SCRATCH_CELLS; i++) {
        app->scratchCellValues[i] = 176;
    }
}

static void SelectItemsWinnableOnCard(ScratchOffCardApp *app, u8 unused)
{
    int i;
    u16 indices[NUM_WINNABLE_ITEMS];

    for (i = 0; i < NUM_WINNABLE_ITEMS; i++) {
        indices[i] = 0xff;
    }

    u16 nuggetIdx = LCRNG_Next() % NUM_WINNABLE_ITEMS;

    for (i = 0; i < NUM_WINNABLE_ITEMS; i++) {
        if (i == nuggetIdx) {
            app->winnableItems[i] = ITEM_NUGGET;
        } else {
            while (TRUE) {
                indices[i] = LCRNG_Next() % NELEMS(sAvailableItems);

                int j;
                for (j = 0; j < i; j++) {
                    if (indices[j] == indices[i]) {
                        break;
                    }
                }

                if (j == i) {
                    app->winnableItems[i] = sAvailableItems[indices[i]];
                    break;
                }
            }
        }
    }
}

static const s8 xCardCenteringSteps[NUM_CARDS_TO_PICK][8] = {
    { 9, 9, 9, 8, 7, 6, 5, 4 },
    { 2, 2, 2, 1, 1, 1, 1, 1 },
    { -8, -8, -8, -7, -7, -6, -5, -4 },
    { -18, -16, -15, -14, -13, -12, -10, -8 }
};

static const s8 yCardCenteringSteps[8] = {
    -4, -4, -4, -4, -4, -4, -4, -4
};

static BOOL CenterSelectedCardOnScreen(ScratchOffCardApp *app, u8 selectedIdx)
{
    if (app->centeringStep >= 8) {
        return TRUE;
    }

    int x, y;
    ScratchOffCardsAppSprite_GetPosition(app->cardSprites[selectedIdx], &x, &y);

    int newX = x + xCardCenteringSteps[selectedIdx][app->centeringStep];
    int newY = y + yCardCenteringSteps[app->centeringStep];
    app->centeringStep++;

    ScratchOffCardsAppSprite_SetPosition(app->cardSprites[selectedIdx], newX, newY);

    return FALSE;
}

static void UpdateBackgroundPalette(ScratchOffCardApp *app, u32 bgLayer, u8 palette, u8 width, u8 height)
{
    Bg_ChangeTilemapRectPalette(app->bgConfig, bgLayer, 0, 0, width, height, palette);
    Bg_ScheduleTilemapTransfer(app->bgConfig, bgLayer);
}

static u8 GetNumCellsScratched(ScratchOffCardApp *app)
{
    u8 i, count = 0;
    for (i = 0; i < NUM_SCRATCH_CELLS; i++) {
        if (app->cellIsScratched[i] == TRUE) {
            count++;
        }
    }

    return count;
}

static void MarkAllCellsAsUnscratched(ScratchOffCardApp *app)
{
    for (u8 i = 0; i < NUM_SCRATCH_CELLS; i++) {
        app->cellIsScratched[i] = FALSE;
    }
}

static void MarkAllCellsAsUnrevealed(ScratchOffCardApp *app)
{
    for (u8 i = 0; i < NUM_SCRATCH_CELLS; i++) {
        app->cellIsRevealed[i] = FALSE;
    }
}

static void RemoveScratchedOffPixelsOnCell(ScratchOffCardApp *app, int cellIdx)
{
    for (int i = 0; i < app->tpBuffer.bufferSize; i++) {
        int x = app->tpBuffer.buffer[i].x;
        int y = app->tpBuffer.buffer[i].y;

        if (sScratchCellScreenPixelRegions[cellIdx].left <= x && x <= sScratchCellScreenPixelRegions[cellIdx].right && sScratchCellScreenPixelRegions[cellIdx].top <= y && y <= sScratchCellScreenPixelRegions[cellIdx].bottom) {
            RemoveScratchedOffPixels(app, x, y);
        }
    }
}

static void MarkScratchedOffPixels(ScratchOffCardApp *app)
{
    for (int i = 0; i < app->tpBuffer.bufferSize; i++) {
        u8 x = app->tpBuffer.buffer[i].x;
        u8 y = app->tpBuffer.buffer[i].y;

        MarkScratchedPixelsAtPoint(app, x, y);
    }
}

static void MarkScratchedPixelsAtPoint(ScratchOffCardApp *app, int touchX, int touchY)
{
    for (int y = -3; y < 3; y++) {
        for (int x = -3; x < 3; x++) {
            if (touchX + x > 0 && touchX + x < SCRATCH_REGION_WIDTH && touchY + y > 0 && touchY + y < SCRATCH_REGION_HEIGHT) {
                app->scratchedPixels[(touchX + x) + ((touchY + y) * SCRATCH_REGION_WIDTH)] = TRUE;
            }
        }
    }
}

static BOOL CheckIfCellIsRevealed(ScratchOffCardApp *app, u8 cellIdx)
{
    int x;

    int revealedPixels = 0;
    int left = sScratchCellPixelRegions[cellIdx].x;
    int top = sScratchCellPixelRegions[cellIdx].y;

    for (int y = top; y < (top + 20); y++) {
        for (x = left; x < (left + 25); x++) {
            if (app->scratchedPixels[y * SCRATCH_REGION_WIDTH + x] == TRUE) {
                revealedPixels++;
            }
        }
    }

    if (revealedPixels >= 380) {
        if (!app->cellIsRevealed[cellIdx]) {
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO_sseq);
            app->scratchedOffCellIdxs[app->numRevealedCells] = cellIdx;
            app->numRevealedCells++;
        }

        app->cellIsRevealed[cellIdx] = TRUE;
        return TRUE;
    }

    return FALSE;
}

static void HighlightMatchingPair(ScratchOffCardApp *app)
{
    app->highlightPairCounter++;

    if (app->highlightPairCounter >= 1) {
        app->highlightPairCounter = 0;

        app->highlightPairPalette++;

        if (app->highlightPairPalette >= 8) {
            app->highlightPairPalette = 0;
        }

        if (app->numRevealedCells == 2) {
            for (int i = 0; i < 2; i++) {
                ScratchOffCardsAppSprite_UpdatePalette(app->matchingCellBoxSprites[i], 3);
                ScratchOffCardsAppSprite_SetDrawFlag(app->matchingCellBoxSprites[i], TRUE);
                ScratchOffCardsAppSprite_SetPosition(app->matchingCellBoxSprites[i], sScratchMonPositions[app->scratchedOffCellIdxs[i]].x + -36, sScratchMonPositions[app->scratchedOffCellIdxs[i]].y + -10);
            }
        }

        ScratchOffCardsApp_UpdateBoxPalettes(&app->spriteMan, app->highlightPairPalette);
    }
}

static BOOL CheckIfThreeOfAKindFound(ScratchOffCardApp *app)
{
    int threeOfAKind = FALSE;

    if (app->numRevealedCells <= 1) {
        return FALSE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == app->scratchCellValues[app->scratchedOffCellIdxs[1]]) {
        app->pairFound = TRUE;
    } else if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == WILDCARD_CELL_VALUE) {
        app->pairFound = TRUE;
    } else if (app->scratchCellValues[app->scratchedOffCellIdxs[1]] == WILDCARD_CELL_VALUE) {
        app->pairFound = TRUE;
    }

    if (app->numRevealedCells <= 2) {
        return FALSE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == app->scratchCellValues[app->scratchedOffCellIdxs[1]] && app->scratchCellValues[app->scratchedOffCellIdxs[0]] == app->scratchCellValues[app->scratchedOffCellIdxs[2]]) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[1]] == WILDCARD_CELL_VALUE) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[2]] == WILDCARD_CELL_VALUE) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[1]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[2]] == WILDCARD_CELL_VALUE) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[0]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[1]] == app->scratchCellValues[app->scratchedOffCellIdxs[2]]) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[1]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[0]] == app->scratchCellValues[app->scratchedOffCellIdxs[2]]) {
        threeOfAKind = TRUE;
    }

    if (app->scratchCellValues[app->scratchedOffCellIdxs[2]] == WILDCARD_CELL_VALUE && app->scratchCellValues[app->scratchedOffCellIdxs[0]] == app->scratchCellValues[app->scratchedOffCellIdxs[1]]) {
        threeOfAKind = TRUE;
    }

    if (threeOfAKind == TRUE) {
        for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
            if (app->scratchCellValues[app->scratchedOffCellIdxs[i]] != WILDCARD_CELL_VALUE) {
                app->winningCellValue = app->scratchCellValues[app->scratchedOffCellIdxs[i]];
                break;
            }
        }
        return TRUE;
    }

    return FALSE;
}

static BOOL CheckIfDittoTransformNeeded(ScratchOffCardApp *app)
{
    BOOL transformNeeded = FALSE;

    for (int i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        if (app->scratchCellValues[app->scratchedOffCellIdxs[i]] == WILDCARD_CELL_VALUE) {
            ScratchOffCardsAppSprite_SetMosaicFlag(app->winMonSprites[i], TRUE);
            transformNeeded = TRUE;
        }
    }

    app->mosaicSize = 0;

    G2_SetOBJMosaicSize(app->mosaicSize, app->mosaicSize);

    return transformNeeded;
}

static BOOL UpdateTransformingDitto(ScratchOffCardApp *app, u8 decreaseMosaic)
{
    int i;

    for (i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
        if (app->scratchCellValues[app->scratchedOffCellIdxs[i]] == WILDCARD_CELL_VALUE) {
            break;
        }
    }

    if (i == NUM_CELLS_TO_SCRATCH) {
        return FALSE;
    }

    if (!decreaseMosaic) {
        if (app->mosaicSize == 0) {
            Sound_PlayEffect(SEQ_SE_PL_W100_sseq);
        }

        if (app->mosaicSize < 4) {
            app->mosaicSize++;
        } else {
            for (i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
                if (app->scratchCellValues[app->scratchedOffCellIdxs[i]] == WILDCARD_CELL_VALUE) {
                    ScratchOffCardsAppSprite_SetAnim(app->winMonSprites[i], app->winningCellValue);
                }
            }

            return FALSE;
        }
    } else {
        if (app->mosaicSize > 0) {
            app->mosaicSize--;
        } else {
            for (i = 0; i < NUM_CELLS_TO_SCRATCH; i++) {
                ScratchOffCardsAppSprite_SetMosaicFlag(app->winMonSprites[i], FALSE);
            }

            return FALSE;
        }
    }

    G2_SetOBJMosaicSize(app->mosaicSize, app->mosaicSize);

    return TRUE;
}

static void IncrementCurrentCard(ScratchOffCardApp *app)
{
    app->currentCard++;
}

static void IncrementCurrentCard2(ScratchOffCardApp *app)
{
    app->currentCard++;
}

static void HideCenterMessageBox(ScratchOffCardApp *app)
{
    ScratchOffCardsAppSprite_SetDrawFlag(app->centerMessageBoxSprite, FALSE);
    Window_FillTilemap(&app->windows[SCRATCH_WINDOW_START_CARD], 0);
    Window_ScheduleCopyToVRAM(&app->windows[SCRATCH_WINDOW_START_CARD]);
}

static void LoadScratchCellsCharData(ScratchOffCardApp *app)
{
    app->scratchCellsRawCharData = Graphics_GetCharData(NARC_INDEX_SCRATCH_OFF_CARDS, 7, FALSE, &app->scratchCellsCharData, HEAP_ID_SCRATCH_OFF_CARD_APP);

    Bg_LoadTiles(app->bgConfig, BG_LAYER_MAIN_0, app->scratchCellsCharData->pRawData, app->scratchCellsCharData->szByte, 0);
    Bg_CopyTilemapBufferToVRAM(app->bgConfig, BG_LAYER_MAIN_0);
}

static void InitScratchCellsBackup(ScratchOffCardApp *app)
{
    app->scratchCellsDataBackup = Heap_Alloc(HEAP_ID_SCRATCH_OFF_CARD_APP, app->scratchCellsCharData->szByte);

    if (app->scratchCellsDataBackup == NULL) {
        GF_ASSERT(app->scratchCellsDataBackup != NULL);
    }
}

static void MakeCopyOfScratchCellsData(ScratchOffCardApp *app)
{
    memcpy(app->scratchCellsDataBackup, app->scratchCellsCharData->pRawData, app->scratchCellsCharData->szByte);
}

static void RemoveScratchedOffPixels(ScratchOffCardApp *app, int touchX, int touchY)
{
    for (int y = -3; y < 3; y++) {
        for (int x = -3; x < 3; x++) {
            if (touchX + x > 0 && touchX + x < HW_LCD_WIDTH && touchY + y > 0 && touchY + y < HW_LCD_HEIGHT) {
                ScratchPixelsAtPosition(app, touchX + x, touchY + y);
            }
        }
    }

    Bg_LoadTiles(app->bgConfig, BG_TYPE_STATIC, app->scratchCellsDataBackup, app->scratchCellsCharData->szByte, 0);
    Bg_CopyTilemapBufferToVRAM(app->bgConfig, BG_TYPE_STATIC);
}

static void ScratchPixelsAtPosition(ScratchOffCardApp *app, u32 x, u32 y)
{
    u8 clearMask = 0xff;

    if (x % 2 == 0) {
        clearMask ^= 0xf;
    } else {
        clearMask ^= 0xf0;
    }

    u32 tileX = x / TILE_WIDTH_PIXELS * 32;
    u32 tileY = y / TILE_WIDTH_PIXELS * 32 * 32;
    u32 offsetX = x % 8 / 2;

    u32 offsetY;
    if (y < 8) {
        offsetY = y * 4;
    } else {
        offsetY = y % 8;
        offsetY = offsetY * 4;
    }

    u32 pos = tileY + tileX + offsetX + offsetY;
    app->scratchCellsDataBackup[pos] &= clearMask;
}
