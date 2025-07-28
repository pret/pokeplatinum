#include "trainer_card_screen/trainer_card_screen.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"

#include "struct_defs/struct_02099F80.h"

#include "trainer_card_screen/trainer_card_display_text.h"
#include "trainer_card_screen/trainer_card_screen_defs.h"
#include "trainer_card_screen/trainer_card_sprites.h"

#include "badges.h"
#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "system.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "unk_020393C8.h"
#include "vram_transfer.h"

#include "res/text/bank/trainer_card.h"

enum TrainerCardStates {
    STATE_INITIAL,
    STATE_MAIN,
    STATE_EXIT,
    STATE_FLIP_CARD,
    STATE_OPEN_CLOSE_BADGE_CASE
};

enum TrainerCardFlipSubStates {
    FLIP_SUBSTATE_INITIAL,
    FLIP_SUBSTATE_SCALE_DOWN,
    FLIP_SUBSTATE_DRAW_OTHER_SIDE,
    FLIP_SUBSTATE_SCALE_UP
};

enum BadgeCaseOpenCloseSubStates {
    CASE_SUBSTATE_INITIAL,
    CASE_SUBSTATE_OPEN,
    CASE_SUBSTATE_CLOSE,
    CASE_SUBSTATE_DONE
};

enum BadgeCaseTouchRectangles {
    TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE,
    TOUCH_RECTANGLE_COAL_BADGE,
    TOUCH_RECTANGLE_FOREST_BADGE,
    TOUCH_RECTANGLE_COBBLE_BADGE,
    TOUCH_RECTANGLE_FEN_BADGE,
    TOUCH_RECTANGLE_RELIC_BADGE,
    TOUCH_RECTANGLE_MINE_BADGE,
    TOUCH_RECTANGLE_ICICLE_BADGE,
    TOUCH_RECTANGLE_BEACON_BADGE
};

enum BadgeCaseOpenCloseStates {
    BADGE_CASE_CLOSED,
    BADGE_CASE_OPEN,
    BADGE_CASE_OPEN_CLOSE_STATE_COUNT
};

enum BadgeCaseButtonStates {
    BUTTON_STATE_DEFAULT,
    BUTTON_STATE_PUSHED,
    BUTTON_STATE_SPRING_BACK
};

enum TrainerCardPlayerInputs {
    INPUT_NONE,
    INPUT_TOUCH_SCREEN_TAP,
    INPUT_TOUCH_SCREEN_HOLD,
    INPUT_A_BUTTON,
    INPUT_B_BUTTON
};

enum BadgeCaseButtonSpriteIndices {
    BUTTON_NOT_PRESSED,
    BUTTON_HALF_PRESSED,
    BUTTON_FULLY_PRESSED
};

typedef struct TouchRectangleSet {
    const TouchScreenRect *touchRectangles[BADGE_CASE_OPEN_CLOSE_STATE_COUNT];
} TouchRectangleSet;

static void TrainerCard_InitStrBufs(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_FreeStrBufs(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_SetVRAMBanks(void);
static void TrainerCard_InitBackgrounds(BgConfig *bgConfig);
static void TrainerCard_DrawTrainerCard(TrainerCardScreen *trainerCardScreen, NARC *narc);
static void TrainerCard_TeardownBgs(BgConfig *bgConfig);
static BOOL TrainerCard_FlipTrainerCard(TrainerCardScreen *trainerCardScreen);
static BOOL TrainerCard_OpenCloseBadgeCase(TrainerCardScreen *trainerCardScreen);
static int TrainerCard_GetPlayerInput(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_HandleBadgePolishing(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_LoadCardPalette(u8 stars, u8 pokedexObtained, NARC *narc);
static void TrainerCard_LoadCasePalette(u8 gameVersion, NARC *narc);
static void TrainerCard_LoadTrainerAppearancePalette(u8 trainerAppearance, NARC *narc);
static void TrainerCard_RedrawBadgeCaseButton(TrainerCardScreen *trainerCardScreen, u8 buttonSpriteIndex);
static void TrainerCard_HideGymLeaderFace_Unused(TrainerCardScreen *trainerCardScreen, u8 gymLeader);
static void TrainerCard_TransferGraphicsOnVBlank(void *unused);
static void TrainerCard_DrawTrainer(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_ClearTrainerSprite(TrainerCardScreen *trainerCardScreen);
static void TrainerCard_PolishBadge(TrainerCardScreen *trainerCardScreen, u8 badgeID);
static void TrainerCard_ResetAffineTransforms(void);
static void TrainerCard_HandleBadgeCaseButtonAnimation(TrainerCardScreen *trainerCardScreen);
static BOOL TrainerCard_AnimateBadgeCaseButton(TrainerCardScreen *trainerCardScreen, const u8 *buttonAnimData);
static u8 TrainerCard_GetBadgePolishLevel(int polish);
static void TrainerCard_ResetBadgePolishingDirection(BadgePolishingState *badgePolishingState);
static void TrainerCard_ResetBadgePolishingState(BadgePolishingState *badgePolishingState);
static void TrainerCard_PlayPolishingSoundEffects(BadgePolishingState *badgePolishingState);
static void TrainerCard_ConvertSignatureDataToPixels(const u8 *signatureData, u8 *signaturePixels);
static void TrainerCard_DisplaySignature(BgConfig *bgConfig, int bgLayer, const u8 *signature);
static void TrainerCard_PlayOpenCloseBadgeCaseSoundEffect(int unused);
static void TrainerCard_UpdatePlayTime(TrainerCardScreen *trainerCardScreen, u8 liveTimeDisplay);
static int TrainerCard_CheckTouchedRectangles(BgConfig *bgConfig, const TouchScreenRect *rects);
static int TrainerCard_CheckHeldRectangles(BgConfig *bgConfig, const TouchScreenRect *rects);

static const u8 sPolishThresholds[BADGE_POLISH_LEVEL_COUNT] = {
    1,
    3,
    4,
    15,
    15
};

static const TouchScreenRect sTouchRectangles_BadgesEnabled[] = {
    [TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE] = { .rect = { .top = 152, .bottom = 183, .left = 120, .right = 151 } },
    [TOUCH_RECTANGLE_COAL_BADGE] = { .rect = { .top = 40, .bottom = 79, .left = 24, .right = 63 } },
    [TOUCH_RECTANGLE_FOREST_BADGE] = { .rect = { .top = 40, .bottom = 79, .left = 80, .right = 119 } },
    [TOUCH_RECTANGLE_COBBLE_BADGE] = { .rect = { .top = 40, .bottom = 79, .left = 136, .right = 167 } },
    [TOUCH_RECTANGLE_FEN_BADGE] = { .rect = { .top = 40, .bottom = 79, .left = 192, .right = 231 } },
    [TOUCH_RECTANGLE_RELIC_BADGE] = { .rect = { .top = 96, .bottom = 135, .left = 24, .right = 63 } },
    [TOUCH_RECTANGLE_MINE_BADGE] = { .rect = { .top = 96, .bottom = 135, .left = 80, .right = 119 } },
    [TOUCH_RECTANGLE_ICICLE_BADGE] = { .rect = { .top = 96, .bottom = 135, .left = 136, .right = 167 } },
    [TOUCH_RECTANGLE_BEACON_BADGE] = { .rect = { .top = 96, .bottom = 135, .left = 192, .right = 231 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sTouchRectangles_BadgesDisabled[] = {
    [TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE] = { .rect = { .top = 152, .bottom = 183, .left = 120, .right = 151 } },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchRectangleSet sTouchRectangleSets[] = {
    { .touchRectangles = { [BADGE_CASE_CLOSED] = sTouchRectangles_BadgesDisabled, [BADGE_CASE_OPEN] = sTouchRectangles_BadgesDisabled } },
    { .touchRectangles = { [BADGE_CASE_CLOSED] = sTouchRectangles_BadgesDisabled, [BADGE_CASE_OPEN] = sTouchRectangles_BadgesEnabled } }
};

static const u8 sButtonPushAnimData[] = {
    1,
    BUTTON_HALF_PRESSED,
    0,
    BUTTON_FULLY_PRESSED
};

static const u8 sButtonSpringBackAnimData[] = {
    1,
    BUTTON_HALF_PRESSED,
    0,
    BUTTON_NOT_PRESSED
};

static const u8 *const sButtonAnimData[] = {
    sButtonPushAnimData,
    sButtonSpringBackAnimData
};

static const int sTrainerAppearanceNarcIndices[16] = {
    64,
    61,
    52,
    55,
    57,
    58,
    62,
    54,
    60,
    50,
    65,
    53,
    56,
    59,
    51,
    63
};

BOOL TrainerCardScreen_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRAINER_CARD_SCREEN, HEAP_SIZE_TRAINER_CARD_SCREEN);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__TRAINER_CASE, HEAP_ID_TRAINER_CARD_SCREEN);
    TrainerCardScreen *trainerCardScreen = ApplicationManager_NewData(appMan, sizeof(TrainerCardScreen), HEAP_ID_TRAINER_CARD_SCREEN);

    memset(trainerCardScreen, 0, sizeof(TrainerCardScreen));

    trainerCardScreen->trainerCard = ApplicationManager_Args(appMan);
    trainerCardScreen->bgConfig = BgConfig_New(HEAP_ID_TRAINER_CARD_SCREEN);

    TrainerCard_InitStrBufs(trainerCardScreen);
    TrainerCard_SetVRAMBanks();
    TrainerCard_InitBackgrounds(trainerCardScreen->bgConfig);
    TrainerCard_DrawTrainerCard(trainerCardScreen, narc);

    EnableTouchPad();
    InitializeTouchPad(4);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_56, SEQ_NONE, 0);
    TrainerCard_InitBadgeChimeState(&trainerCardScreen->badgeChimeState);
    Sound_PlayEffect(SEQ_SE_DP_CARD3);
    TrainerCard_InitSpriteData(&trainerCardScreen->spriteData, narc);

    u8 badgesObtained[MAX_BADGES];

    for (int badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        if (trainerCardScreen->trainerCard->badges[badgeID].obtained) {
            badgesObtained[badgeID] = TRUE;
        } else {
            badgesObtained[badgeID] = FALSE;
        }
    }

    TrainerCard_DrawBadgeCaseSprites(&trainerCardScreen->spriteData, badgesObtained);

    TrainerCard_AddWindows(trainerCardScreen->bgConfig, trainerCardScreen->windows);

    for (u8 gymLeader = 0; gymLeader < MAX_BADGES; gymLeader++) {
        if ((trainerCardScreen->trainerCard->gymLeadersToHide_Unused >> gymLeader) & 0x1) {
            // never reached, relevant field is always 0
            TrainerCard_HideGymLeaderFace_Unused(trainerCardScreen, gymLeader);
        }
    }

    Bg_CopyTilemapBufferToVRAM(trainerCardScreen->bgConfig, BG_LAYER_MAIN_3);

    TrainerCard_DrawFrontText(trainerCardScreen->windows, trainerCardScreen->trainerCard);

    if (trainerCardScreen->trainerCard->liveTimeDisplay) {
        TrainerCard_BlinkPlaytimeColon(&trainerCardScreen->windows[TRAINER_CARD_WINDOW_TIME], TRUE, trainerCardScreen->colonStrbuf);
    }

    trainerCardScreen->viewingBack = FALSE;
    trainerCardScreen->badgeCaseOpenState = BADGE_CASE_CLOSED;
    trainerCardScreen->touchedRectangleIndex = TOUCHSCREEN_INPUT_NONE;
    trainerCardScreen->badgeCaseButtonPushed = FALSE;
    trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_DEFAULT;

    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        trainerCardScreen->polishingProgress[badgeID] = 0;

        if (trainerCardScreen->trainerCard->badges[badgeID].obtained) {
            u8 polishLevel = TrainerCard_GetBadgePolishLevel(trainerCardScreen->trainerCard->badges[badgeID].polish);

            if (polishLevel <= BADGE_POLISH_LEVEL_4_SPARKLES) {
                if (polishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                    TrainerCard_DrawBadgeDirt(&trainerCardScreen->spriteData, badgeID, 0);
                } else {
                    TrainerCard_DrawBadgeDirt(&trainerCardScreen->spriteData, badgeID, BADGE_POLISH_LEVEL_2_SPARKLES - polishLevel);
                }
            }

            if (polishLevel == BADGE_POLISH_LEVEL_2_SPARKLES) {
                Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
            } else if (polishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_FOUR_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
            }
        }
    }

    TrainerCard_ResetAffineTransforms();

    SetVBlankCallback(TrainerCard_TransferGraphicsOnVBlank, NULL);
    DrawWifiConnectionIcon();
    Sound_SetPlayerVolume(PLAYER_FIELD, SOUND_VOLUME_MAX / 3);
    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_TRAINER_CARD_SCREEN);
    NARC_dtor(narc);

    return TRUE;
}

BOOL TrainerCardScreen_Main(ApplicationManager *appMan, int *state)
{
    TrainerCardScreen *trainerCardScreen = ApplicationManager_Data(appMan);

    switch (*state) {
    case STATE_INITIAL:
        if (IsScreenFadeDone()) {
            *state = STATE_MAIN;
        }

        break;

    case STATE_MAIN:
        int input = TrainerCard_GetPlayerInput(trainerCardScreen);

        if (input == INPUT_TOUCH_SCREEN_TAP) {
            if (trainerCardScreen->touchedRectangleIndex == TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                trainerCardScreen->badgeCaseButtonPushed = TRUE;
                trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_PUSHED;

                Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], TRUE);
                Sprite_SetAnimateFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], TRUE);
                Sprite_SetAnim(trainerCardScreen->spriteData.sprites[TRAINER_CARD_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], 10);

                trainerCardScreen->subState = CASE_SUBSTATE_INITIAL;
                trainerCardScreen->badgeCaseButtonAnimIndex = 0;
                trainerCardScreen->badgeCaseButtonAnimTimer = 0;
                trainerCardScreen->badgeCaseCoverMoving = FALSE;
                *state = STATE_OPEN_CLOSE_BADGE_CASE;
            } else {
                u8 badgeID = trainerCardScreen->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE;

                if (trainerCardScreen->trainerCard->badges[badgeID].obtained) {
                    u8 polishLevel = TrainerCard_GetBadgePolishLevel(trainerCardScreen->trainerCard->badges[badgeID].polish);
                    TrainerCard_PlayBadgeChime(&trainerCardScreen->badgeChimeState, badgeID, polishLevel);
                }
            }
        } else if (input == INPUT_TOUCH_SCREEN_HOLD) {
            if (trainerCardScreen->badgeCaseButtonPushed && trainerCardScreen->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                trainerCardScreen->badgeCaseButtonPushed = FALSE;
                trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
            }

            TrainerCard_HandleBadgePolishing(trainerCardScreen);
        } else {
            if (trainerCardScreen->badgeCaseButtonPushed && trainerCardScreen->badgeCaseButtonState == BUTTON_STATE_DEFAULT) {
                trainerCardScreen->badgeCaseButtonPushed = FALSE;
                trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
            }

            if (trainerCardScreen->trainerCard->badgesInteractable) {
                TrainerCard_ResetBadgePolishingState(&trainerCardScreen->badgePolishingState);
            }

            if (input == INPUT_A_BUTTON) {
                trainerCardScreen->subState = FLIP_SUBSTATE_INITIAL;
                *state = STATE_FLIP_CARD;
            } else if (input == INPUT_B_BUTTON) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UPWARD_OUT, FADE_TYPE_UPWARD_OUT, COLOR_BLACK, 6, 1, HEAP_ID_TRAINER_CARD_SCREEN);
                *state = STATE_EXIT;
            }
        }

        TrainerCard_UpdatePlayTime(trainerCardScreen, trainerCardScreen->trainerCard->liveTimeDisplay);
        break;
    case STATE_EXIT:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
        break;
    case STATE_FLIP_CARD:
        if (TrainerCard_FlipTrainerCard(trainerCardScreen)) {
            *state = STATE_MAIN;
        }
        break;
    case STATE_OPEN_CLOSE_BADGE_CASE:
        if (trainerCardScreen->badgeCaseButtonState == BUTTON_STATE_DEFAULT) {
            int input = TrainerCard_GetPlayerInput(trainerCardScreen);

            if (input == INPUT_TOUCH_SCREEN_TAP) {
                if (trainerCardScreen->touchedRectangleIndex == TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                    trainerCardScreen->badgeCaseButtonPushed = TRUE;
                    trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_PUSHED;
                    trainerCardScreen->badgeCaseButtonAnimIndex = 0;
                    trainerCardScreen->badgeCaseButtonAnimTimer = 0;
                }
            } else if (input == INPUT_TOUCH_SCREEN_HOLD) {
                if (trainerCardScreen->badgeCaseButtonPushed && trainerCardScreen->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                    trainerCardScreen->badgeCaseButtonPushed = FALSE;
                    trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
                }
            } else {
                if (trainerCardScreen->badgeCaseButtonPushed) {
                    trainerCardScreen->badgeCaseButtonPushed = FALSE;
                    trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
                }
            }
        }

        if (trainerCardScreen->badgeCaseCoverMoving == FALSE) {
            trainerCardScreen->badgeCaseCoverMoving = TrainerCard_OpenCloseBadgeCase(trainerCardScreen);
        }

        if (trainerCardScreen->badgeCaseCoverMoving) {
            trainerCardScreen->badgeCaseCoverMoving = FALSE;
            *state = STATE_MAIN;
        }
        break;
    }

    TrainerCard_HandleBadgeCaseButtonAnimation(trainerCardScreen);
    SpriteList_Update(trainerCardScreen->spriteData.spriteList);

    return FALSE;
}

BOOL TrainerCardScreen_Exit(ApplicationManager *appMan, int *state)
{
    TrainerCardScreen *trainerCardScreen = ApplicationManager_Data(appMan);

    TrainerCard_ResetAffineTransforms();
    TrainerCard_FreeStrBufs(trainerCardScreen);
    TrainerCard_FreeSprites(&trainerCardScreen->spriteData);

    Heap_Free(trainerCardScreen->trainerSprite);
    Heap_Free(trainerCardScreen->trainerScreenDataNSCRBuffer);

    TrainerCard_RemoveWindows(trainerCardScreen->windows);
    TrainerCard_TeardownBgs(trainerCardScreen->bgConfig);

    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_TRAINER_CARD_SCREEN);
    Sound_SetPlayerVolume(PLAYER_FIELD, SOUND_VOLUME_MAX);

    return TRUE;
}

static void TrainerCard_InitStrBufs(TrainerCardScreen *trainerCardScreen)
{
    trainerCardScreen->unusedStrbuf = Strbuf_Init(4, HEAP_ID_TRAINER_CARD_SCREEN);
    trainerCardScreen->colonStrbuf = Strbuf_Init(5, HEAP_ID_TRAINER_CARD_SCREEN);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CARD_SCREEN);

    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Colon, trainerCardScreen->colonStrbuf);
    MessageLoader_Free(messageLoader);
}

static void TrainerCard_FreeStrBufs(TrainerCardScreen *trainerCardScreen)
{
    Strbuf_Free(trainerCardScreen->unusedStrbuf);
    Strbuf_Free(trainerCardScreen->colonStrbuf);
}

static void TrainerCard_SetVRAMBanks(void)
{
    UnkStruct_02099F80 banks = {
        GX_VRAM_BG_64_E,
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

static void TrainerCard_LoadCardPalette(u8 stars, u8 pokedexObtained, NARC *narc)
{
    void *nclrBuffer;
    NNSG2dPaletteData *paletteData;

    if (pokedexObtained) {
        switch (stars) {
        case 0:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 0, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        case 1:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 1, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        case 2:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 2, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        case 3:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 3, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        case 4:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 4, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        case 5:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 5, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
            break;
        }
    } else {
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 6, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
    }

    DC_FlushRange(paletteData->pRawData, PALETTE_SIZE_EXT_BYTES);
    u16 *rawData = paletteData->pRawData;

    GXS_LoadBGPltt(&rawData[PALETTE_SIZE], PALETTE_SIZE_BYTES, PALETTE_SIZE_BYTES * 3);
    GXS_LoadBGPltt(&rawData[PALETTE_SIZE * 15], PALETTE_SIZE_BYTES * 15, PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCard_LoadCasePalette(u8 gameVersion, NARC *narc)
{
    void *nclrBuffer;
    NNSG2dPaletteData *paletteData;

    switch (gameVersion) {
    case VERSION_DIAMOND:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 7, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_PEARL:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 8, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_PLATINUM:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 10, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_HEARTGOLD:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 11, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    case VERSION_SOULSILVER:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 12, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    default:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 9, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
        break;
    }

    DC_FlushRange(paletteData->pRawData, PALETTE_SIZE_BYTES);

    GX_LoadBGPltt(paletteData->pRawData, 0, PALETTE_SIZE_BYTES);
    GXS_LoadBGPltt(paletteData->pRawData, 0, PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCard_LoadTrainerAppearancePalette(u8 trainerAppearance, NARC *narc)
{
    NNSG2dPaletteData *paletteData;

    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 48, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);
    u8 *rawData = (u8 *)(paletteData->pRawData);

    DC_FlushRange(&rawData[PALETTE_SIZE_BYTES * trainerAppearance], PALETTE_SIZE_BYTES);
    GXS_LoadBGPltt(&rawData[PALETTE_SIZE_BYTES * trainerAppearance], PALETTE_SIZE_BYTES * 4, PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCard_InitBackgrounds(BgConfig *bgConfig)
{
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);

    GraphicsModes graphicsModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_1,
        .subBgMode = GX_BGMODE_4,
        .bg0As2DOr3D = GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate sub3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_3, &sub3Template, BG_TYPE_STATIC_WITH_AFFINE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_3);

    BgTemplate sub1Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_1);

    BgTemplate sub2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_2, &sub2Template, BG_TYPE_AFFINE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_2);

    BgTemplate main2Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &main2Template, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    BgTemplate main3Template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0xe800,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &main3Template, BG_TYPE_AFFINE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
}

static void TrainerCard_DrawTrainerCard(TrainerCardScreen *trainerCardScreen, NARC *narc)
{
    NNSG2dPaletteData *paletteData;

    // will mostly be overwritten by TrainerCard_LoadCardPalette, with the exception of the palette for the trainer sprite
    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 0, &paletteData, HEAP_ID_TRAINER_CARD_SCREEN);

    DC_FlushRange(paletteData->pRawData, PALETTE_SIZE_EXT_BYTES);
    GXS_LoadBGPltt(paletteData->pRawData, 0, PALETTE_SIZE_EXT_BYTES);
    Heap_Free(nclrBuffer);

    TrainerCard_LoadCardPalette(trainerCardScreen->trainerCard->stars, trainerCardScreen->trainerCard->pokedexObtained, narc);

    NNSG2dPaletteData *paletteData2;

    nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, 13, &paletteData2, HEAP_ID_TRAINER_CARD_SCREEN);

    DC_FlushRange(paletteData2->pRawData, PALETTE_SIZE_EXT_BYTES);
    GX_LoadBGPltt(paletteData2->pRawData, 0, PALETTE_SIZE_EXT_BYTES);
    Heap_Free(nclrBuffer);

    TrainerCard_LoadCasePalette(trainerCardScreen->trainerCard->gameVersion, narc);

    if (trainerCardScreen->trainerCard->trainerAppearance == 0xff) {
        s32 trainerSpriteNarcIndex, trainerScreenDataNarcIndex, trainerPaletteNarcIndex;

        switch (trainerCardScreen->trainerCard->gameVersion) {
        case VERSION_DIAMOND:
        case VERSION_PEARL:
            trainerSpriteNarcIndex = 32;
            trainerScreenDataNarcIndex = 42;
            trainerPaletteNarcIndex = 26;
            break;
        default:
            trainerSpriteNarcIndex = 31;
            trainerScreenDataNarcIndex = 40;
            trainerPaletteNarcIndex = -1; // platinum trainer palettes are already in the first palette loaded in this function
            break;
        }

        trainerCardScreen->trainerSprite = LoadMemberFromOpenNARC(narc, trainerSpriteNarcIndex, FALSE, HEAP_ID_TRAINER_CARD_SCREEN, FALSE);
        GF_ASSERT(trainerCardScreen->trainerSprite != NULL);

        BOOL success = NNS_G2dGetUnpackedBGCharacterData(trainerCardScreen->trainerSprite, &trainerCardScreen->trainerCharacterData);
        GF_ASSERT(success);

        if (trainerPaletteNarcIndex != -1) {
            Graphics_LoadPaletteFromOpenNARC(narc, trainerPaletteNarcIndex, PAL_LOAD_SUB_BG, 4 * PALETTE_SIZE_BYTES, 2 * PALETTE_SIZE_BYTES, HEAP_ID_TRAINER_CARD_SCREEN);
        }

        if (trainerCardScreen->trainerCard->gender == GENDER_MALE) {
            trainerCardScreen->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, trainerScreenDataNarcIndex, FALSE, &trainerCardScreen->trainerScreenData, HEAP_ID_TRAINER_CARD_SCREEN);
        } else {
            trainerCardScreen->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, trainerScreenDataNarcIndex + 1, FALSE, &trainerCardScreen->trainerScreenData, HEAP_ID_TRAINER_CARD_SCREEN);
        }
    } else {
        trainerCardScreen->trainerSprite = LoadMemberFromOpenNARC(narc, sTrainerAppearanceNarcIndices[trainerCardScreen->trainerCard->trainerAppearance], FALSE, HEAP_ID_TRAINER_CARD_SCREEN, FALSE);
        GF_ASSERT(trainerCardScreen->trainerSprite != NULL);

        BOOL success = NNS_G2dGetUnpackedBGCharacterData(trainerCardScreen->trainerSprite, &trainerCardScreen->trainerCharacterData);
        GF_ASSERT(success);

        trainerCardScreen->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, 49, FALSE, &trainerCardScreen->trainerScreenData, HEAP_ID_TRAINER_CARD_SCREEN);

        TrainerCard_LoadTrainerAppearancePalette(trainerCardScreen->trainerCard->trainerAppearance, narc);
    }

    TrainerCard_DrawTrainer(trainerCardScreen);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 27, trainerCardScreen->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 35, trainerCardScreen->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 28, trainerCardScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 37, trainerCardScreen->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 29, trainerCardScreen->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 38, trainerCardScreen->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 30, trainerCardScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 39, trainerCardScreen->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);

    TrainerCard_ConvertSignatureDataToPixels(trainerCardScreen->trainerCard->signature, trainerCardScreen->signature);
}

static void TrainerCard_TeardownBgs(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Heap_Free(bgConfig);
}

static BOOL TrainerCard_FlipTrainerCard(TrainerCardScreen *trainerCardScreen)
{
    BOOL doneFlipping = FALSE;

    switch (trainerCardScreen->subState) {
    case FLIP_SUBSTATE_INITIAL:
        trainerCardScreen->cardScalingSpeed = 8;
        trainerCardScreen->cardXScale = 1 << FX32_SHIFT;
        trainerCardScreen->cardYScale = 1 << FX32_SHIFT;
        trainerCardScreen->cardXScale += 2 << (FX32_SHIFT - 6);
        trainerCardScreen->cardYScale += 2 << (FX32_SHIFT - 6);

        Sound_PlayEffect(SEQ_SE_DP_CARD5);

        trainerCardScreen->subState++;
        break;
    case FLIP_SUBSTATE_SCALE_DOWN:
        trainerCardScreen->cardXScale -= 2 << (FX32_SHIFT - trainerCardScreen->cardScalingSpeed);

        if (trainerCardScreen->cardXScale <= 0) {
            trainerCardScreen->cardXScale = 36;
            trainerCardScreen->subState++;
        }

        trainerCardScreen->cardScalingSpeed--;

        if (trainerCardScreen->cardScalingSpeed <= 1) {
            trainerCardScreen->cardScalingSpeed = 1;
        }
        break;
    case FLIP_SUBSTATE_DRAW_OTHER_SIDE:
        if (trainerCardScreen->viewingBack == FALSE) {
            trainerCardScreen->viewingBack = TRUE;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, 36, trainerCardScreen->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
            TrainerCard_ClearWindows(trainerCardScreen->windows, TRAINER_CARD_WINDOW_ID, TRAINER_CARD_WINDOW_ADVENTURE_STARTED);
            TrainerCard_ClearTrainerSprite(trainerCardScreen);
            Bg_ClearTilemap(trainerCardScreen->bgConfig, BG_LAYER_SUB_3);
            TrainerCard_DrawBackText(trainerCardScreen->windows, trainerCardScreen->trainerCard);
            TrainerCard_DisplaySignature(trainerCardScreen->bgConfig, BG_LAYER_SUB_3, trainerCardScreen->signature);
        } else {
            trainerCardScreen->viewingBack = FALSE;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, 35, trainerCardScreen->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CARD_SCREEN);
            TrainerCard_ClearWindows(trainerCardScreen->windows, TRAINER_CARD_WINDOW_HOF_DEBUT, TRAINER_CARD_WINDOW_LINK_TRADES);
            Bg_ClearTilemap(trainerCardScreen->bgConfig, BG_LAYER_SUB_3);
            TrainerCard_DrawTrainer(trainerCardScreen);
            TrainerCard_DrawFrontText(trainerCardScreen->windows, trainerCardScreen->trainerCard);
        }

        trainerCardScreen->subState++;
        break;
    case FLIP_SUBSTATE_SCALE_UP:
        trainerCardScreen->cardScalingSpeed++;

        if (trainerCardScreen->cardScalingSpeed > 8) {
            trainerCardScreen->cardScalingSpeed = 8;
        }

        trainerCardScreen->cardXScale += 2 << (FX32_SHIFT - trainerCardScreen->cardScalingSpeed);

        if (trainerCardScreen->cardXScale >= (1 << FX32_SHIFT)) {
            trainerCardScreen->cardXScale = 1 << FX32_SHIFT;
            trainerCardScreen->cardXScale = 1 << FX32_SHIFT;
            trainerCardScreen->cardYScale = 1 << FX32_SHIFT;
            doneFlipping = TRUE;
        }
        break;
    }

    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(trainerCardScreen->cardXScale);
    fx32 yScale = FX_Inv(trainerCardScreen->cardYScale);

    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&affineTransform, 128, 96, 0, 0);
    G2S_SetBG3Affine(&affineTransform, 128, 96, 0, 0);

    return doneFlipping;
}

static BOOL TrainerCard_OpenCloseBadgeCase(TrainerCardScreen *trainerCardScreen)
{
    static const fx32 sBadgeCaseCoverScalingSpeeds[] = {
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 6),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 5),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4),
        2 << (FX32_SHIFT - 4)
    };

    switch (trainerCardScreen->subState) {
    case CASE_SUBSTATE_INITIAL:
        trainerCardScreen->badgeCaseTransitionIndex = 0;

        if (trainerCardScreen->badgeCaseOpenState == BADGE_CASE_CLOSED) {
            trainerCardScreen->badgeCaseCoverYScale = 1 << FX32_SHIFT;
            trainerCardScreen->subState = CASE_SUBSTATE_OPEN;
        } else {
            trainerCardScreen->subState = CASE_SUBSTATE_CLOSE;
        }

        TrainerCard_PlayOpenCloseBadgeCaseSoundEffect(trainerCardScreen->badgeCaseOpenState);
        break;
    case CASE_SUBSTATE_OPEN:
        trainerCardScreen->badgeCaseCoverYScale -= sBadgeCaseCoverScalingSpeeds[trainerCardScreen->badgeCaseTransitionIndex++];

        if (trainerCardScreen->badgeCaseTransitionIndex == NELEMS(sBadgeCaseCoverScalingSpeeds)) {
            trainerCardScreen->badgeCaseOpenState = BADGE_CASE_OPEN;
            trainerCardScreen->subState = CASE_SUBSTATE_DONE;
        }
        break;
    case CASE_SUBSTATE_CLOSE:
        trainerCardScreen->badgeCaseCoverYScale += sBadgeCaseCoverScalingSpeeds[NELEMS(sBadgeCaseCoverScalingSpeeds) - 1 - (trainerCardScreen->badgeCaseTransitionIndex++)];

        if (trainerCardScreen->badgeCaseTransitionIndex == NELEMS(sBadgeCaseCoverScalingSpeeds)) {
            trainerCardScreen->badgeCaseOpenState = BADGE_CASE_CLOSED;
            trainerCardScreen->badgeCaseCoverYScale = (1 << FX32_SHIFT);
            trainerCardScreen->subState = CASE_SUBSTATE_DONE;
        }
        break;
    case CASE_SUBSTATE_DONE:
        return TRUE;
    }

    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(1 << FX32_SHIFT);
    fx32 yScale = FX_Inv(trainerCardScreen->badgeCaseCoverYScale);

    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();
    G2_SetBG3Affine(&affineTransform, 128, 0, 0, 0);

    return FALSE;
}

static int TrainerCard_GetPlayerInput(TrainerCardScreen *trainerCardScreen)
{
    BOOL touchScreenInput = FALSE;
    int input = INPUT_NONE;

    trainerCardScreen->touchedRectangleIndex = TOUCHSCREEN_INPUT_NONE;

    if (gSystem.touchPressed) {
        trainerCardScreen->polishingEnabled = TRUE;
    }

    trainerCardScreen->touchedRectangleIndex = TrainerCard_CheckTouchedRectangles(trainerCardScreen->bgConfig, sTouchRectangleSets[trainerCardScreen->trainerCard->badgesInteractable].touchRectangles[trainerCardScreen->badgeCaseOpenState]);

    if (trainerCardScreen->touchedRectangleIndex != TOUCHSCREEN_INPUT_NONE) {
        touchScreenInput = TRUE;
        input = INPUT_TOUCH_SCREEN_TAP;
    } else if (gSystem.touchHeld) {
        trainerCardScreen->touchedRectangleIndex = TrainerCard_CheckHeldRectangles(trainerCardScreen->bgConfig, sTouchRectangleSets[trainerCardScreen->trainerCard->badgesInteractable].touchRectangles[trainerCardScreen->badgeCaseOpenState]);

        if (trainerCardScreen->polishingEnabled) {
            touchScreenInput = TRUE;
            input = INPUT_TOUCH_SCREEN_HOLD;
        }
    } else {
        trainerCardScreen->polishingEnabled = FALSE;
    }

    if (touchScreenInput == FALSE) {
        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            input = INPUT_A_BUTTON;
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            input = INPUT_B_BUTTON;
        }
    }

    return input;
}

static void TrainerCard_HandleBadgePolishing(TrainerCardScreen *trainerCardScreen)
{
    int distance;
    BOOL validMovement = FALSE;

    if ((gSystem.touchX != (u16)TOUCHSCREEN_INPUT_NONE) && (gSystem.touchY != (u16)TOUCHSCREEN_INPUT_NONE) && (trainerCardScreen->lastTouchedX != (u16)TOUCHSCREEN_INPUT_NONE) && (trainerCardScreen->lastTouchedY != (u16)TOUCHSCREEN_INPUT_NONE)) {
        if ((trainerCardScreen->touchedRectangleIndex != TOUCHSCREEN_INPUT_NONE) && (trainerCardScreen->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE)) {
            if (trainerCardScreen->trainerCard->badges[trainerCardScreen->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE].obtained) {
                if (trainerCardScreen->lastTouchedX > gSystem.touchX) {
                    distance = trainerCardScreen->lastTouchedX - gSystem.touchX;
                    trainerCardScreen->badgePolishingState.currentXDirection = -1;
                } else {
                    distance = gSystem.touchX - trainerCardScreen->lastTouchedX;
                    trainerCardScreen->badgePolishingState.currentXDirection = 1;
                }

                if ((distance >= 3) && (distance <= 40)) {
                    if (trainerCardScreen->lastTouchedY > gSystem.touchY) {
                        distance = trainerCardScreen->lastTouchedY - gSystem.touchY;
                        trainerCardScreen->badgePolishingState.currentYDirection = -1;
                    } else {
                        distance = gSystem.touchY - trainerCardScreen->lastTouchedY;
                        trainerCardScreen->badgePolishingState.currentYDirection = 1;
                    }

                    if (distance <= 40) {
                        validMovement = TRUE;
                        TrainerCard_PlayPolishingSoundEffects(&trainerCardScreen->badgePolishingState);
                    } else {
                        TrainerCard_ResetBadgePolishingDirection(&trainerCardScreen->badgePolishingState);
                    }
                } else if (distance <= 40) {
                    if (trainerCardScreen->lastTouchedY > gSystem.touchY) {
                        distance = trainerCardScreen->lastTouchedY - gSystem.touchY;
                        trainerCardScreen->badgePolishingState.currentYDirection = -1;
                    } else {
                        distance = gSystem.touchY - trainerCardScreen->lastTouchedY;
                        trainerCardScreen->badgePolishingState.currentYDirection = 1;
                    }

                    if ((distance >= 3) && (distance <= 40)) {
                        validMovement = TRUE;
                        TrainerCard_PlayPolishingSoundEffects(&trainerCardScreen->badgePolishingState);
                    } else {
                        TrainerCard_ResetBadgePolishingDirection(&trainerCardScreen->badgePolishingState);
                    }
                }

                if (validMovement) {
                    TrainerCard_PolishBadge(trainerCardScreen, trainerCardScreen->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE);
                }
            }
        }
    }

    trainerCardScreen->lastTouchedX = gSystem.touchX;
    trainerCardScreen->lastTouchedY = gSystem.touchY;
}

static void TrainerCard_RedrawBadgeCaseButton(TrainerCardScreen *trainerCardScreen, u8 buttonSpriteIndex)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(trainerCardScreen->bgConfig, BG_LAYER_MAIN_2);
    u16 baseTile = (4 * 32) + (4 * buttonSpriteIndex);

    u8 x, y;
    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            tilemapBuffer[(y + 19) * 32 + x + 14] = baseTile + y * 32 + x;
        }
    }

    Bg_CopyTilemapBufferToVRAM(trainerCardScreen->bgConfig, BG_LAYER_MAIN_2);
}

static void TrainerCard_HideGymLeaderFace_Unused(TrainerCardScreen *trainerCardScreen, u8 gymLeader)
{
    u8 portraitToReplaceX = 3;
    u8 portraitToReplaceY = 4;
    u8 gymLeaderColumn = gymLeader % 4;
    u8 gymLeaderRow = gymLeader / 4;

    portraitToReplaceX += (gymLeaderColumn * 7);
    portraitToReplaceY += (gymLeaderRow * 7);

    u8 *tilemapBuffer = (u8 *)Bg_GetTilemapBuffer(trainerCardScreen->bgConfig, BG_LAYER_MAIN_3);
    u16 anonymousPortraitBaseTile = 5 * 32 + 26;

    u8 x, y;
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {
            tilemapBuffer[(y + portraitToReplaceY) * 32 + x + portraitToReplaceX] = anonymousPortraitBaseTile + y * 16 + x;
        }
    }
}

static void TrainerCard_TransferGraphicsOnVBlank(void *unused)
{
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void TrainerCard_PolishBadge(TrainerCardScreen *trainerCardScreen, u8 badgeID)
{
    int updatedPolish = (trainerCardScreen->trainerCard->badges[badgeID].polish) + 1;

    if (updatedPolish < MAX_BADGE_POLISH + 1) {
        u8 currentPolishLevel = TrainerCard_GetBadgePolishLevel(trainerCardScreen->trainerCard->badges[badgeID].polish);

        trainerCardScreen->polishingProgress[badgeID]++;

        if (trainerCardScreen->polishingProgress[badgeID] >= sPolishThresholds[currentPolishLevel]) {
            trainerCardScreen->polishingProgress[badgeID] = 0;
            trainerCardScreen->trainerCard->badges[badgeID].polish++;

            u8 updatedPolishLevel = TrainerCard_GetBadgePolishLevel(updatedPolish);
            GF_ASSERT(currentPolishLevel <= updatedPolishLevel);

            if (currentPolishLevel < updatedPolishLevel) {
                if (updatedPolishLevel <= BADGE_POLISH_LEVEL_4_SPARKLES) {
                    if (updatedPolishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                        TrainerCard_DrawBadgeDirt(&trainerCardScreen->spriteData, badgeID, 0);
                    } else {
                        TrainerCard_DrawBadgeDirt(&trainerCardScreen->spriteData, badgeID, BADGE_POLISH_LEVEL_2_SPARKLES - updatedPolishLevel);
                    }
                }

                if (updatedPolishLevel == BADGE_POLISH_LEVEL_2_SPARKLES) {
                    Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
                } else if (updatedPolishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                    Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_TWO_SPARKLES_SPRITES_INDEX + badgeID], FALSE);
                    Sprite_SetDrawFlag(trainerCardScreen->spriteData.sprites[TRAINER_CARD_FOUR_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
                }
            }
        }
    }
}

static void TrainerCard_ResetAffineTransforms(void)
{
    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(1 << FX32_SHIFT);
    fx32 yScale = FX_Inv(1 << FX32_SHIFT);
    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&affineTransform, 128, 96, 0, 0);
    G2S_SetBG3Affine(&affineTransform, 128, 96, 0, 0);

    SVC_WaitVBlankIntr();

    G2_SetBG3Affine(&affineTransform, 128, 0, 0, 0);
}

static void TrainerCard_HandleBadgeCaseButtonAnimation(TrainerCardScreen *trainerCardScreen)
{
    if (trainerCardScreen->badgeCaseButtonState == BUTTON_STATE_PUSHED) {
        if (TrainerCard_AnimateBadgeCaseButton(trainerCardScreen, sButtonAnimData[0])) {
            trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_DEFAULT;
        }
    } else if (trainerCardScreen->badgeCaseButtonState == BUTTON_STATE_SPRING_BACK) {
        if (TrainerCard_AnimateBadgeCaseButton(trainerCardScreen, sButtonAnimData[1])) {
            trainerCardScreen->badgeCaseButtonState = BUTTON_STATE_DEFAULT;
        }
    }
}

static BOOL TrainerCard_AnimateBadgeCaseButton(TrainerCardScreen *trainerCardScreen, const u8 *buttonAnimData)
{
    u8 duration = buttonAnimData[trainerCardScreen->badgeCaseButtonAnimIndex * 2];

    if (duration == 0) {
        trainerCardScreen->badgeCaseButtonAnimTimer = 0;
        trainerCardScreen->badgeCaseButtonAnimIndex = 0;
        return TRUE;
    } else if (trainerCardScreen->badgeCaseButtonAnimTimer >= duration) {
        trainerCardScreen->badgeCaseButtonAnimTimer = 0;
        trainerCardScreen->badgeCaseButtonAnimIndex++;
    }

    u8 buttonSpriteIndex = buttonAnimData[trainerCardScreen->badgeCaseButtonAnimIndex * 2 + 1];

    if (trainerCardScreen->badgeCaseButtonAnimTimer == 0) {
        TrainerCard_RedrawBadgeCaseButton(trainerCardScreen, buttonSpriteIndex);
    }

    trainerCardScreen->badgeCaseButtonAnimTimer++;

    return FALSE;
}

static void TrainerCard_DrawTrainer(TrainerCardScreen *trainerCardScreen)
{
    u32 size = trainerCardScreen->trainerScreenData->szByte;

    Bg_LoadTiles(trainerCardScreen->bgConfig, BG_LAYER_SUB_3, trainerCardScreen->trainerCharacterData->pRawData, trainerCardScreen->trainerCharacterData->szByte, 0);

    if (Bg_GetTilemapBuffer(trainerCardScreen->bgConfig, BG_LAYER_SUB_3) != NULL) {
        Bg_LoadTilemapBuffer(trainerCardScreen->bgConfig, BG_LAYER_SUB_3, trainerCardScreen->trainerScreenData->rawData, size);
    }

    Bg_CopyTilemapBufferRangeToVRAM(trainerCardScreen->bgConfig, BG_LAYER_SUB_3, trainerCardScreen->trainerScreenData->rawData, size, 0);
}

static void TrainerCard_ClearTrainerSprite(TrainerCardScreen *trainerCardScreen)
{
    Bg_FillTilemapRect(trainerCardScreen->bgConfig, BG_LAYER_SUB_3, 0, 20, 6, 6, 9, TILEMAP_FILL_VAL_KEEP_PALETTE);
}

static u8 TrainerCard_GetBadgePolishLevel(int badgePolish)
{
    u8 level;

    if ((0 <= badgePolish) && (badgePolish < BADGE_POLISH_THRESHOLD_DIRTY)) {
        level = BADGE_POLISH_LEVEL_FILTHY;
    } else if (badgePolish < BADGE_POLISH_THRESHOLD_NORMAL) {
        level = BADGE_POLISH_LEVEL_DIRTY;
    } else if (badgePolish < BADGE_POLISH_THRESHOLD_2_SPARKLES) {
        level = BADGE_POLISH_LEVEL_NORMAL;
    } else if (badgePolish < BADGE_POLISH_THRESHOLD_4_SPARKLES) {
        level = BADGE_POLISH_LEVEL_2_SPARKLES;
    } else if (badgePolish < MAX_BADGE_POLISH + 1) {
        level = BADGE_POLISH_LEVEL_4_SPARKLES;
    } else {
        GF_ASSERT(FALSE);
        level = 0;
    }

    return level;
}

static void TrainerCard_ResetBadgePolishingDirection(BadgePolishingState *badgePolishingState)
{
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
}

static void TrainerCard_ResetBadgePolishingState(BadgePolishingState *badgePolishingState)
{
    badgePolishingState->previousXDirection = 0;
    badgePolishingState->previousYDirection = 0;
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
    badgePolishingState->soundEffectIndex = 0;
}

static void TrainerCard_PlayPolishingSoundEffects(BadgePolishingState *badgePolishingState)
{
    int soundEffects[2] = {
        SEQ_SE_DP_MIGAKU01, SEQ_SE_DP_MIGAKU02
    };

    if (badgePolishingState->previousXDirection == 0 && badgePolishingState->previousYDirection == 0) {
        Sound_PlayEffect(SEQ_SE_DP_MIGAKU01);
    }

    if ((badgePolishingState->previousXDirection * badgePolishingState->currentXDirection < 0) || (badgePolishingState->previousYDirection * badgePolishingState->currentYDirection < 0)) {
        badgePolishingState->soundEffectIndex = (badgePolishingState->soundEffectIndex + 1) % 2;
        Sound_PlayEffect(soundEffects[badgePolishingState->soundEffectIndex]);
    }

    badgePolishingState->previousXDirection = badgePolishingState->currentXDirection;
    badgePolishingState->previousYDirection = badgePolishingState->currentYDirection;
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
}

static void TrainerCard_ConvertSignatureDataToPixels(const u8 *signatureData, u8 *signaturePixels)
{
    for (int pixel = 0; pixel < SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_8BPP; pixel++) {
        int tileIndex = pixel / TILE_SIZE_8BPP;
        u8 offset = (pixel / 8) % 8;
        u8 shift = pixel % 8;

        signaturePixels[pixel] = 0x1 & (signatureData[(tileIndex * 8) + offset] >> shift);
    }
}

static void TrainerCard_DisplaySignature(BgConfig *bgConfig, int bgLayer, const u8 *signature)
{
    u16 *tilemapBuffer;
    u8 x, y;
    u16 tileIndex;

    Bg_LoadTiles(bgConfig, bgLayer, signature, SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_8BPP, 1);

    tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(bgConfig, bgLayer);
    tileIndex = 0;

    for (y = 0; y < SIGNATURE_HEIGHT; y++) {
        for (x = 0; x < SIGNATURE_WIDTH; x++) {
            tilemapBuffer[(14 + y) * 32 + x + 4] = 1 + tileIndex;
            tileIndex++;
        }
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

static void TrainerCard_PlayOpenCloseBadgeCaseSoundEffect(int unused)
{
    Sound_PlayEffect(SEQ_SE_DP_CARD11);
}

static void TrainerCard_UpdatePlayTime(TrainerCardScreen *trainerCardScreen, u8 liveTimeDisplay)
{
    if (!liveTimeDisplay) {
        return;
    }

    if (!trainerCardScreen->viewingBack) {
        if (trainerCardScreen->timer == 15) {
            TrainerCard_DrawUpdatedTime(trainerCardScreen->windows, trainerCardScreen->trainerCard, trainerCardScreen->unusedStrbuf);

            TrainerCard_BlinkPlaytimeColon(&(trainerCardScreen->windows[TRAINER_CARD_WINDOW_TIME]), TRUE, trainerCardScreen->colonStrbuf);
        } else if (trainerCardScreen->timer == 0) {
            TrainerCard_BlinkPlaytimeColon(&(trainerCardScreen->windows[TRAINER_CARD_WINDOW_TIME]), FALSE, trainerCardScreen->colonStrbuf);
        }
    }

    trainerCardScreen->timer = (trainerCardScreen->timer + 1) % 30;
}

static int TrainerCard_CheckTouchedRectangles(BgConfig *bgConfig, const TouchScreenRect *rects)
{
    int touchedRectangle = TouchScreen_CheckRectanglePressed(rects);

    if (touchedRectangle != TOUCHSCREEN_INPUT_NONE) {
        if (touchedRectangle != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
            u16 caseBackground = 0x40;

            if (Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &caseBackground) == FALSE) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return touchedRectangle;
        }
    }

    return touchedRectangle;
}

static int TrainerCard_CheckHeldRectangles(BgConfig *bgConfig, const TouchScreenRect *rects)
{
    int heldRectangle = TouchScreen_CheckRectangleHeld(rects);

    if (heldRectangle != TOUCHSCREEN_INPUT_NONE) {
        if (heldRectangle != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
            u16 caseBackground = 0x40;

            if (Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &caseBackground) == FALSE) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return heldRectangle;
        }
    }

    return heldRectangle;
}
