#include "applications/trainer_case/main.h"

#include <nitro.h>

#include "constants/trainer_card_levels.h"
#include "generated/genders.h"

#include "applications/trainer_case/card_text.h"
#include "applications/trainer_case/defs.h"
#include "applications/trainer_case/sprites.h"

#include "appearance.h"
#include "badges.h"
#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "overlay_manager.h"
#include "render_oam.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "system.h"
#include "touch_pad.h"
#include "touch_screen.h"
#include "vram_transfer.h"

#include "res/graphics/trainer_case/trainer_case.naix"
#include "res/text/bank/trainer_card.h"

enum TrainerCaseState {
    TRAINER_CASE_STATE_INITIAL = 0,
    TRAINER_CASE_STATE_MAIN,
    TRAINER_CASE_STATE_EXIT,
    TRAINER_CASE_STATE_FLIP_CARD,
    TRAINER_CASE_STATE_OPEN_CLOSE_BADGE_CASE,
};

enum TrainerCardFlipSubState {
    FLIP_SUBSTATE_INITIAL = 0,
    FLIP_SUBSTATE_SCALE_DOWN,
    FLIP_SUBSTATE_DRAW_OTHER_SIDE,
    FLIP_SUBSTATE_SCALE_UP,
};

enum BadgeCaseOpenCloseSubState {
    BADGE_CASE_SUBSTATE_INITIAL = 0,
    BADGE_CASE_SUBSTATE_OPEN,
    BADGE_CASE_SUBSTATE_CLOSE,
    BADGE_CASE_SUBSTATE_DONE,
};

enum BadgeCaseTouchRectangle {
    TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE = 0,
    TOUCH_RECTANGLE_COAL_BADGE,
    TOUCH_RECTANGLE_FOREST_BADGE,
    TOUCH_RECTANGLE_COBBLE_BADGE,
    TOUCH_RECTANGLE_FEN_BADGE,
    TOUCH_RECTANGLE_RELIC_BADGE,
    TOUCH_RECTANGLE_MINE_BADGE,
    TOUCH_RECTANGLE_ICICLE_BADGE,
    TOUCH_RECTANGLE_BEACON_BADGE,
};

enum BadgeCaseOpenCloseState {
    BADGE_CASE_CLOSED = 0,
    BADGE_CASE_OPEN,
    BADGE_CASE_OPEN_CLOSE_STATE_COUNT,
};

enum BadgeCaseButtonState {
    BUTTON_STATE_DEFAULT = 0,
    BUTTON_STATE_PUSHED,
    BUTTON_STATE_SPRING_BACK,
};

enum TrainerCardPlayerInput {
    INPUT_NONE = 0,
    INPUT_TOUCH_SCREEN_TAP,
    INPUT_TOUCH_SCREEN_HOLD,
    INPUT_A_BUTTON,
    INPUT_B_BUTTON,
};

enum BadgeCaseButtonSpriteIndex {
    BUTTON_NOT_PRESSED = 0,
    BUTTON_HALF_PRESSED,
    BUTTON_FULLY_PRESSED,
};

typedef struct TouchRectangleSet {
    const TouchScreenRect *touchRectangles[BADGE_CASE_OPEN_CLOSE_STATE_COUNT];
} TouchRectangleSet;

static void TrainerCaseApp_InitStrings(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_FreeStrings(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_SetVRAMBanks(void);
static void TrainerCaseApp_InitBackgrounds(BgConfig *bgConfig);
static void TrainerCase_DrawTrainerCard(TrainerCaseApp *trainerCaseApp, NARC *narc);
static void TrainerCase_TeardownBgs(BgConfig *bgConfig);
static BOOL TrainerCase_FlipTrainerCard(TrainerCaseApp *trainerCaseApp);
static BOOL TrainerCase_OpenCloseBadgeCase(TrainerCaseApp *trainerCaseApp);
static int TrainerCase_GetPlayerInput(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_HandleBadgePolishing(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_LoadCardPalette(u8 level, u8 pokedexObtained, NARC *narc);
static void TrainerCase_LoadCasePalette(u8 gameVersion, NARC *narc);
static void TrainerCase_LoadTrainerAppearancePalette(u8 trainerAppearance, NARC *narc);
static void TrainerCase_RedrawBadgeCaseButton(TrainerCaseApp *trainerCaseApp, u8 buttonSpriteIndex);
static void TrainerCase_HideGymLeaderFace_Unused(TrainerCaseApp *trainerCaseApp, u8 gymLeader);
static void TrainerCase_TransferGraphicsOnVBlank(void *unused);
static void TrainerCase_DrawTrainer(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_ClearTrainerSprite(TrainerCaseApp *trainerCaseApp);
static void TrainerCase_PolishBadge(TrainerCaseApp *trainerCaseApp, u8 badgeID);
static void TrainerCase_ResetAffineTransforms(void);
static void TrainerCase_HandleBadgeCaseButtonAnimation(TrainerCaseApp *trainerCaseApp);
static BOOL TrainerCase_AnimateBadgeCaseButton(TrainerCaseApp *trainerCaseApp, const u8 *buttonAnimData);
static u8 TrainerCase_GetBadgePolishLevel(int polish);
static void TrainerCase_ResetBadgePolishingDirection(BadgePolishingState *badgePolishingState);
static void TrainerCase_ResetBadgePolishingState(BadgePolishingState *badgePolishingState);
static void TrainerCase_PlayPolishingSoundEffects(BadgePolishingState *badgePolishingState);
static void TrainerCase_ConvertSignature1BppTo8Bpp(const u8 *signature1Bpp, u8 *signature8BppOut);
static void TrainerCase_DisplaySignature(BgConfig *bgConfig, enum BgLayer bgLayer, const u8 *signature);
static void TrainerCase_PlayOpenCloseBadgeCaseSoundEffect(int unused);
static void TrainerCase_UpdatePlayTime(TrainerCaseApp *trainerCaseApp, u8 liveTimeDisplay);
static int TrainerCase_CheckBadgeOrButtonTouched(BgConfig *bgConfig, const TouchScreenRect rects[]);
static int TrainerCase_CheckBadgeOrButtonHeld(BgConfig *bgConfig, const TouchScreenRect rects[]);

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
    [TRAINER_APPEARANCE_SCHOOL_KID_M] = school_kid_m_NCGR,
    [TRAINER_APPEARANCE_BUG_CATCHER] = bug_catcher_NCGR,
    [TRAINER_APPEARANCE_ACE_TRAINER_M] = ace_trainer_m_NCGR,
    [TRAINER_APPEARANCE_ROUGHNECK] = roughneck_NCGR,
    [TRAINER_APPEARANCE_RUIN_MANIAC] = ruin_maniac_NCGR,
    [TRAINER_APPEARANCE_BLACK_BELT] = black_belt_NCGR,
    [TRAINER_APPEARANCE_RICH_BOY] = rich_boy_NCGR,
    [TRAINER_APPEARANCE_PSYCHIC_M] = psychic_m_NCGR,
    [TRAINER_APPEARANCE_LASS] = lass_NCGR,
    [TRAINER_APPEARANCE_BATTLE_GIRL] = battle_girl_NCGR,
    [TRAINER_APPEARANCE_BEAUTY] = beauty_NCGR,
    [TRAINER_APPEARANCE_ACE_TRAINER_F] = ace_trainer_f_NCGR,
    [TRAINER_APPEARANCE_IDOL] = idol_NCGR,
    [TRAINER_APPEARANCE_SOCIALITE] = socialite_NCGR,
    [TRAINER_APPEARANCE_COWGIRL] = cowgirl_NCGR,
    [TRAINER_APPEARANCE_LADY] = lady_NCGR
};

BOOL TrainerCaseApp_Init(ApplicationManager *appMan, int *state)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_TRAINER_CASE, HEAP_SIZE_TRAINER_CASE);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__TRAINER_CASE, HEAP_ID_TRAINER_CASE);
    TrainerCaseApp *trainerCaseApp = ApplicationManager_NewData(appMan, sizeof(TrainerCaseApp), HEAP_ID_TRAINER_CASE);

    memset(trainerCaseApp, 0, sizeof(TrainerCaseApp));

    trainerCaseApp->trainerCase = ApplicationManager_Args(appMan);
    trainerCaseApp->bgConfig = BgConfig_New(HEAP_ID_TRAINER_CASE);

    TrainerCaseApp_InitStrings(trainerCaseApp);
    TrainerCase_SetVRAMBanks();
    TrainerCaseApp_InitBackgrounds(trainerCaseApp->bgConfig);
    TrainerCase_DrawTrainerCard(trainerCaseApp, narc);

    EnableTouchPad();
    InitializeTouchPad(4);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_56, SEQ_NONE, 0);
    TrainerCaseApp_InitBadgeChimeState(&trainerCaseApp->badgeChimeState);
    Sound_PlayEffect(SEQ_SE_DP_CARD3);
    TrainerCaseApp_InitSpriteData(&trainerCaseApp->spriteData, narc);

    u8 badgesObtained[MAX_BADGES];

    for (int badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        if (trainerCaseApp->trainerCase->badges[badgeID].obtained) {
            badgesObtained[badgeID] = TRUE;
        } else {
            badgesObtained[badgeID] = FALSE;
        }
    }

    TrainerCase_DrawBadgeCaseSprites(&trainerCaseApp->spriteData, badgesObtained);

    TrainerCard_AddWindows(trainerCaseApp->bgConfig, trainerCaseApp->windows);

    for (u8 gymLeader = 0; gymLeader < MAX_BADGES; gymLeader++) {
        if ((trainerCaseApp->trainerCase->gymLeadersToHideUnused >> gymLeader) & 0x1) {
            // never reached, relevant field is always 0
            TrainerCase_HideGymLeaderFace_Unused(trainerCaseApp, gymLeader);
        }
    }

    Bg_CopyTilemapBufferToVRAM(trainerCaseApp->bgConfig, BG_LAYER_MAIN_3);

    TrainerCard_DrawFrontText(trainerCaseApp->windows, trainerCaseApp->trainerCase);

    if (trainerCaseApp->trainerCase->liveTimeDisplay) {
        TrainerCard_BlinkPlaytimeColon(&trainerCaseApp->windows[TRAINER_CARD_WINDOW_TIME], TRUE, trainerCaseApp->colonString);
    }

    trainerCaseApp->viewingBack = FALSE;
    trainerCaseApp->badgeCaseOpenState = BADGE_CASE_CLOSED;
    trainerCaseApp->touchedRectangleIndex = TOUCHSCREEN_INPUT_NONE;
    trainerCaseApp->badgeCaseButtonPushed = FALSE;
    trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_DEFAULT;

    for (u8 badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        trainerCaseApp->polishingProgress[badgeID] = 0;

        if (trainerCaseApp->trainerCase->badges[badgeID].obtained) {
            u8 polishLevel = TrainerCase_GetBadgePolishLevel(trainerCaseApp->trainerCase->badges[badgeID].polish);

            if (polishLevel <= BADGE_POLISH_LEVEL_4_SPARKLES) {
                if (polishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                    TrainerCase_DrawBadgeDirt(&trainerCaseApp->spriteData, badgeID, 0);
                } else {
                    TrainerCase_DrawBadgeDirt(&trainerCaseApp->spriteData, badgeID, BADGE_POLISH_LEVEL_2_SPARKLES - polishLevel);
                }
            }

            if (polishLevel == BADGE_POLISH_LEVEL_2_SPARKLES) {
                Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
            } else if (polishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_FOUR_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
            }
        }
    }

    TrainerCase_ResetAffineTransforms();

    SetVBlankCallback(TrainerCase_TransferGraphicsOnVBlank, NULL);
    NetworkIcon_InitIfConnected();
    Sound_SetPlayerVolume(PLAYER_FIELD, SOUND_VOLUME_MAX / 3);
    StartScreenFade(FADE_SUB_THEN_MAIN, FADE_TYPE_DOWNWARD_IN, FADE_TYPE_DOWNWARD_IN, COLOR_BLACK, 6, 1, HEAP_ID_TRAINER_CASE);
    NARC_dtor(narc);

    return TRUE;
}

BOOL TrainerCaseApp_Main(ApplicationManager *appMan, int *state)
{
    TrainerCaseApp *trainerCaseApp = ApplicationManager_Data(appMan);

    switch (*state) {
    case TRAINER_CASE_STATE_INITIAL:
        if (IsScreenFadeDone()) {
            *state = TRAINER_CASE_STATE_MAIN;
        }

        break;

    case TRAINER_CASE_STATE_MAIN:
        int input = TrainerCase_GetPlayerInput(trainerCaseApp);

        if (input == INPUT_TOUCH_SCREEN_TAP) {
            if (trainerCaseApp->touchedRectangleIndex == TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                trainerCaseApp->badgeCaseButtonPushed = TRUE;
                trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_PUSHED;

                Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], TRUE);
                Sprite_SetAnimateFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], TRUE);
                Sprite_SetAnim(trainerCaseApp->spriteData.sprites[TRAINER_CASE_BADGE_CASE_BUTTON_EFFECT_SPRITE_INDEX], BADGE_CASE_ANIM_BUTTON_PRESS_EFFECT);

                trainerCaseApp->subState = BADGE_CASE_SUBSTATE_INITIAL;
                trainerCaseApp->badgeCaseButtonAnimIndex = 0;
                trainerCaseApp->badgeCaseButtonAnimTimer = 0;
                trainerCaseApp->badgeCaseCoverMoving = FALSE;
                *state = TRAINER_CASE_STATE_OPEN_CLOSE_BADGE_CASE;
            } else {
                u8 badgeID = trainerCaseApp->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE;

                if (trainerCaseApp->trainerCase->badges[badgeID].obtained) {
                    u8 polishLevel = TrainerCase_GetBadgePolishLevel(trainerCaseApp->trainerCase->badges[badgeID].polish);
                    TrainerCase_PlayBadgeChime(&trainerCaseApp->badgeChimeState, badgeID, polishLevel);
                }
            }
        } else if (input == INPUT_TOUCH_SCREEN_HOLD) {
            if (trainerCaseApp->badgeCaseButtonPushed && trainerCaseApp->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                trainerCaseApp->badgeCaseButtonPushed = FALSE;
                trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
            }

            TrainerCase_HandleBadgePolishing(trainerCaseApp);
        } else {
            if (trainerCaseApp->badgeCaseButtonPushed && trainerCaseApp->badgeCaseButtonState == BUTTON_STATE_DEFAULT) {
                trainerCaseApp->badgeCaseButtonPushed = FALSE;
                trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
            }

            if (trainerCaseApp->trainerCase->badgesInteractable) {
                TrainerCase_ResetBadgePolishingState(&trainerCaseApp->badgePolishingState);
            }

            if (input == INPUT_A_BUTTON) {
                trainerCaseApp->subState = FLIP_SUBSTATE_INITIAL;
                *state = TRAINER_CASE_STATE_FLIP_CARD;
            } else if (input == INPUT_B_BUTTON) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);

                StartScreenFade(FADE_MAIN_THEN_SUB, FADE_TYPE_UPWARD_OUT, FADE_TYPE_UPWARD_OUT, COLOR_BLACK, 6, 1, HEAP_ID_TRAINER_CASE);
                *state = TRAINER_CASE_STATE_EXIT;
            }
        }

        TrainerCase_UpdatePlayTime(trainerCaseApp, trainerCaseApp->trainerCase->liveTimeDisplay);
        break;
    case TRAINER_CASE_STATE_EXIT:
        if (IsScreenFadeDone()) {
            return TRUE;
        }
        break;
    case TRAINER_CASE_STATE_FLIP_CARD:
        if (TrainerCase_FlipTrainerCard(trainerCaseApp)) {
            *state = TRAINER_CASE_STATE_MAIN;
        }
        break;
    case TRAINER_CASE_STATE_OPEN_CLOSE_BADGE_CASE:
        if (trainerCaseApp->badgeCaseButtonState == BUTTON_STATE_DEFAULT) {
            int input = TrainerCase_GetPlayerInput(trainerCaseApp);

            if (input == INPUT_TOUCH_SCREEN_TAP) {
                if (trainerCaseApp->touchedRectangleIndex == TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                    trainerCaseApp->badgeCaseButtonPushed = TRUE;
                    trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_PUSHED;
                    trainerCaseApp->badgeCaseButtonAnimIndex = 0;
                    trainerCaseApp->badgeCaseButtonAnimTimer = 0;
                }
            } else if (input == INPUT_TOUCH_SCREEN_HOLD) {
                if (trainerCaseApp->badgeCaseButtonPushed && trainerCaseApp->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
                    trainerCaseApp->badgeCaseButtonPushed = FALSE;
                    trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
                }
            } else {
                if (trainerCaseApp->badgeCaseButtonPushed) {
                    trainerCaseApp->badgeCaseButtonPushed = FALSE;
                    trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_SPRING_BACK;
                }
            }
        }

        if (!trainerCaseApp->badgeCaseCoverMoving) {
            trainerCaseApp->badgeCaseCoverMoving = TrainerCase_OpenCloseBadgeCase(trainerCaseApp);
        }

        if (trainerCaseApp->badgeCaseCoverMoving) {
            trainerCaseApp->badgeCaseCoverMoving = FALSE;
            *state = TRAINER_CASE_STATE_MAIN;
        }
        break;
    }

    TrainerCase_HandleBadgeCaseButtonAnimation(trainerCaseApp);
    SpriteList_Update(trainerCaseApp->spriteData.spriteList);

    return FALSE;
}

BOOL TrainerCaseApp_Exit(ApplicationManager *appMan, int *state)
{
    TrainerCaseApp *trainerCaseApp = ApplicationManager_Data(appMan);

    TrainerCase_ResetAffineTransforms();
    TrainerCase_FreeStrings(trainerCaseApp);
    TrainerCase_FreeSprites(&trainerCaseApp->spriteData);

    Heap_Free(trainerCaseApp->trainerSprite);
    Heap_Free(trainerCaseApp->trainerScreenDataNSCRBuffer);

    TrainerCard_RemoveWindows(trainerCaseApp->windows);
    TrainerCase_TeardownBgs(trainerCaseApp->bgConfig);

    DisableTouchPad();
    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_TRAINER_CASE);
    Sound_SetPlayerVolume(PLAYER_FIELD, SOUND_VOLUME_MAX);

    return TRUE;
}

static void TrainerCaseApp_InitStrings(TrainerCaseApp *trainerCaseApp)
{
    trainerCaseApp->unusedString = String_Init(4, HEAP_ID_TRAINER_CASE);
    trainerCaseApp->colonString = String_Init(5, HEAP_ID_TRAINER_CASE);

    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CASE);

    MessageLoader_GetString(messageLoader, TrainerCard_Text_Colon, trainerCaseApp->colonString);
    MessageLoader_Free(messageLoader);
}

static void TrainerCase_FreeStrings(TrainerCaseApp *trainerCaseApp)
{
    String_Free(trainerCaseApp->unusedString);
    String_Free(trainerCaseApp->colonString);
}

static void TrainerCase_SetVRAMBanks(void)
{
    GXBanks banks = {
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

static void TrainerCase_LoadCardPalette(u8 cardLevel, u8 pokedexObtained, NARC *narc)
{
    void *nclrBuffer;
    NNSG2dPaletteData *paletteData;

    if (pokedexObtained) {
        switch (cardLevel) {
        case TRAINER_CARD_LEVEL_NORMAL:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_normal_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        case TRAINER_CARD_LEVEL_COBALT:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_cobalt_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        case TRAINER_CARD_LEVEL_BRONZE:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_bronze_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        case TRAINER_CARD_LEVEL_SILVER:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_silver_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        case TRAINER_CARD_LEVEL_GOLD:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_gold_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        case TRAINER_CARD_LEVEL_BLACK:
            nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_black_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
            break;
        }
    } else {
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_normal_no_dex_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
    }

    DC_FlushRange(paletteData->pRawData, PALETTE_SIZE_EXT_BYTES);
    u8 *rawData = paletteData->pRawData;

    GXS_LoadBGPltt(&rawData[PLTT_OFFSET(1)], PLTT_OFFSET(1), PALETTE_SIZE_BYTES * 3);
    GXS_LoadBGPltt(&rawData[PLTT_OFFSET(15)], PLTT_OFFSET(15), PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCase_LoadCasePalette(u8 gameVersion, NARC *narc)
{
    void *nclrBuffer;
    NNSG2dPaletteData *paletteData;

    switch (gameVersion) {
    case VERSION_DIAMOND:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_diamond_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    case VERSION_PEARL:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_pearl_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    case VERSION_PLATINUM:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_platinum_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    case VERSION_HEARTGOLD:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_heartgold_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    case VERSION_SOULSILVER:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_soulsilver_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    default:
        nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, case_unused_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
        break;
    }

    DC_FlushRange(paletteData->pRawData, PALETTE_SIZE_BYTES);

    GX_LoadBGPltt(paletteData->pRawData, 0, PALETTE_SIZE_BYTES);
    GXS_LoadBGPltt(paletteData->pRawData, 0, PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCase_LoadTrainerAppearancePalette(u8 trainerAppearance, NARC *narc)
{
    NNSG2dPaletteData *paletteData;

    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_appearances_NCLR, &paletteData, HEAP_ID_TRAINER_CASE);
    u8 *rawData = (u8 *)paletteData->pRawData;

    DC_FlushRange(&rawData[PLTT_OFFSET(trainerAppearance)], PALETTE_SIZE_BYTES);
    GXS_LoadBGPltt(&rawData[PLTT_OFFSET(trainerAppearance)], PLTT_OFFSET(4), PALETTE_SIZE_BYTES);

    Heap_Free(nclrBuffer);
}

static void TrainerCaseApp_InitBackgrounds(BgConfig *bgConfig)
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

static void TrainerCase_DrawTrainerCard(TrainerCaseApp *trainerCaseApp, NARC *narc)
{
    NNSG2dPaletteData *cardPaletteData;

    // will mostly be overwritten by TrainerCase_LoadCardPalette, with the exception of the palette for the trainer sprite
    void *nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, trainer_card_normal_NCLR, &cardPaletteData, HEAP_ID_TRAINER_CASE);

    DC_FlushRange(cardPaletteData->pRawData, PALETTE_SIZE_EXT_BYTES);
    GXS_LoadBGPltt(cardPaletteData->pRawData, 0, PALETTE_SIZE_EXT_BYTES);
    Heap_Free(nclrBuffer);

    TrainerCase_LoadCardPalette(trainerCaseApp->trainerCase->cardLevel, trainerCaseApp->trainerCase->pokedexObtained, narc);

    NNSG2dPaletteData *lidPaletteData;

    nclrBuffer = Graphics_GetPlttDataFromOpenNARC(narc, badge_case_lid_tiles_NCLR, &lidPaletteData, HEAP_ID_TRAINER_CASE);

    DC_FlushRange(lidPaletteData->pRawData, PALETTE_SIZE_EXT_BYTES);
    GX_LoadBGPltt(lidPaletteData->pRawData, 0, PALETTE_SIZE_EXT_BYTES);
    Heap_Free(nclrBuffer);

    TrainerCase_LoadCasePalette(trainerCaseApp->trainerCase->gameVersion, narc);

    if (trainerCaseApp->trainerCase->trainerAppearance == (u8)TRAINER_APPEARANCE_DEFAULT) {
        s32 trainerSpriteNarcIndex, trainerScreenDataNarcIndex, trainerPaletteNarcIndex;

        switch (trainerCaseApp->trainerCase->gameVersion) {
        case VERSION_DIAMOND:
        case VERSION_PEARL:
            trainerSpriteNarcIndex = player_dp_tiles_NCGR;
            trainerScreenDataNarcIndex = lucas_dp_NSCR;
            trainerPaletteNarcIndex = player_dp_tiles_NCLR;
            break;
        default:
            trainerSpriteNarcIndex = player_tiles_NCGR;
            trainerScreenDataNarcIndex = lucas_NSCR;
            trainerPaletteNarcIndex = -1; // platinum trainer palettes are already in the first palette loaded in this function
            break;
        }

        trainerCaseApp->trainerSprite = LoadMemberFromOpenNARC(narc, trainerSpriteNarcIndex, FALSE, HEAP_ID_TRAINER_CASE, FALSE);
        GF_ASSERT(trainerCaseApp->trainerSprite != NULL);

        BOOL success = NNS_G2dGetUnpackedBGCharacterData(trainerCaseApp->trainerSprite, &trainerCaseApp->trainerCharacterData);
        GF_ASSERT(success);

        if (trainerPaletteNarcIndex != -1) {
            Graphics_LoadPaletteFromOpenNARC(narc, trainerPaletteNarcIndex, PAL_LOAD_SUB_BG, PLTT_OFFSET(4), 2 * PALETTE_SIZE_BYTES, HEAP_ID_TRAINER_CASE);
        }

        if (trainerCaseApp->trainerCase->gender == GENDER_MALE) {
            trainerCaseApp->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, trainerScreenDataNarcIndex, FALSE, &trainerCaseApp->trainerScreenData, HEAP_ID_TRAINER_CASE);
        } else {
            trainerCaseApp->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, trainerScreenDataNarcIndex + 1, FALSE, &trainerCaseApp->trainerScreenData, HEAP_ID_TRAINER_CASE);
        }
    } else {
        trainerCaseApp->trainerSprite = LoadMemberFromOpenNARC(narc, sTrainerAppearanceNarcIndices[trainerCaseApp->trainerCase->trainerAppearance], FALSE, HEAP_ID_TRAINER_CASE, FALSE);
        GF_ASSERT(trainerCaseApp->trainerSprite != NULL);

        BOOL success = NNS_G2dGetUnpackedBGCharacterData(trainerCaseApp->trainerSprite, &trainerCaseApp->trainerCharacterData);
        GF_ASSERT(success);

        trainerCaseApp->trainerScreenDataNSCRBuffer = Graphics_GetScrnDataFromOpenNARC(narc, trainer_appearance_NSCR, FALSE, &trainerCaseApp->trainerScreenData, HEAP_ID_TRAINER_CASE);

        TrainerCase_LoadTrainerAppearancePalette(trainerCaseApp->trainerCase->trainerAppearance, narc);
    }

    TrainerCase_DrawTrainer(trainerCaseApp);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, trainer_card_tiles_NCGR, trainerCaseApp->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, trainer_card_front_NSCR, trainerCaseApp->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, case_top_screen_tiles_NCGR, trainerCaseApp->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, case_top_screen_NSCR, trainerCaseApp->bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, badge_case_tiles_NCGR, trainerCaseApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, badge_case_NSCR, trainerCaseApp->bgConfig, BG_LAYER_MAIN_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, badge_case_lid_tiles_NCGR, trainerCaseApp->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, badge_case_lid_NSCR, trainerCaseApp->bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);

    TrainerCase_ConvertSignature1BppTo8Bpp(trainerCaseApp->trainerCase->signature, trainerCaseApp->signature);
}

static void TrainerCase_TeardownBgs(BgConfig *bgConfig)
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

static BOOL TrainerCase_FlipTrainerCard(TrainerCaseApp *trainerCaseApp)
{
    BOOL doneFlipping = FALSE;

    switch (trainerCaseApp->subState) {
    case FLIP_SUBSTATE_INITIAL:
        trainerCaseApp->cardScalingSpeed = 8;
        trainerCaseApp->cardXScale = 1 << FX32_SHIFT;
        trainerCaseApp->cardYScale = 1 << FX32_SHIFT;
        trainerCaseApp->cardXScale += 2 << (FX32_SHIFT - 6);
        trainerCaseApp->cardYScale += 2 << (FX32_SHIFT - 6);

        Sound_PlayEffect(SEQ_SE_DP_CARD5);

        trainerCaseApp->subState++;
        break;
    case FLIP_SUBSTATE_SCALE_DOWN:
        trainerCaseApp->cardXScale -= 2 << (FX32_SHIFT - trainerCaseApp->cardScalingSpeed);

        if (trainerCaseApp->cardXScale <= 0) {
            trainerCaseApp->cardXScale = 36;
            trainerCaseApp->subState++;
        }

        trainerCaseApp->cardScalingSpeed--;

        if (trainerCaseApp->cardScalingSpeed <= 1) {
            trainerCaseApp->cardScalingSpeed = 1;
        }
        break;
    case FLIP_SUBSTATE_DRAW_OTHER_SIDE:
        if (!trainerCaseApp->viewingBack) {
            trainerCaseApp->viewingBack = TRUE;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, trainer_card_back_NSCR, trainerCaseApp->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
            TrainerCard_ClearWindows(trainerCaseApp->windows, TRAINER_CARD_WINDOW_ID, TRAINER_CARD_WINDOW_ADVENTURE_STARTED);
            TrainerCase_ClearTrainerSprite(trainerCaseApp);
            Bg_ClearTilemap(trainerCaseApp->bgConfig, BG_LAYER_SUB_3);
            TrainerCard_DrawBackText(trainerCaseApp->windows, trainerCaseApp->trainerCase);
            TrainerCase_DisplaySignature(trainerCaseApp->bgConfig, BG_LAYER_SUB_3, trainerCaseApp->signature);
        } else {
            trainerCaseApp->viewingBack = FALSE;
            Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__TRAINER_CASE, trainer_card_front_NSCR, trainerCaseApp->bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, HEAP_ID_TRAINER_CASE);
            TrainerCard_ClearWindows(trainerCaseApp->windows, TRAINER_CARD_WINDOW_HOF_DEBUT, TRAINER_CARD_WINDOW_LINK_TRADES);
            Bg_ClearTilemap(trainerCaseApp->bgConfig, BG_LAYER_SUB_3);
            TrainerCase_DrawTrainer(trainerCaseApp);
            TrainerCard_DrawFrontText(trainerCaseApp->windows, trainerCaseApp->trainerCase);
        }

        trainerCaseApp->subState++;
        break;
    case FLIP_SUBSTATE_SCALE_UP:
        trainerCaseApp->cardScalingSpeed++;

        if (trainerCaseApp->cardScalingSpeed > 8) {
            trainerCaseApp->cardScalingSpeed = 8;
        }

        trainerCaseApp->cardXScale += 2 << (FX32_SHIFT - trainerCaseApp->cardScalingSpeed);

        if (trainerCaseApp->cardXScale >= 1 << FX32_SHIFT) {
            trainerCaseApp->cardXScale = 1 << FX32_SHIFT;
            trainerCaseApp->cardXScale = 1 << FX32_SHIFT;
            trainerCaseApp->cardYScale = 1 << FX32_SHIFT;
            doneFlipping = TRUE;
        }
        break;
    }

    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(trainerCaseApp->cardXScale);
    fx32 yScale = FX_Inv(trainerCaseApp->cardYScale);

    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&affineTransform, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT / 2, 0, 0);
    G2S_SetBG3Affine(&affineTransform, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT / 2, 0, 0);

    return doneFlipping;
}

static BOOL TrainerCase_OpenCloseBadgeCase(TrainerCaseApp *trainerCaseApp)
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

    switch (trainerCaseApp->subState) {
    case BADGE_CASE_SUBSTATE_INITIAL:
        trainerCaseApp->badgeCaseTransitionIndex = 0;

        if (trainerCaseApp->badgeCaseOpenState == BADGE_CASE_CLOSED) {
            trainerCaseApp->badgeCaseCoverYScale = 1 << FX32_SHIFT;
            trainerCaseApp->subState = BADGE_CASE_SUBSTATE_OPEN;
        } else {
            trainerCaseApp->subState = BADGE_CASE_SUBSTATE_CLOSE;
        }

        TrainerCase_PlayOpenCloseBadgeCaseSoundEffect(trainerCaseApp->badgeCaseOpenState);
        break;
    case BADGE_CASE_SUBSTATE_OPEN:
        trainerCaseApp->badgeCaseCoverYScale -= sBadgeCaseCoverScalingSpeeds[trainerCaseApp->badgeCaseTransitionIndex++];

        if (trainerCaseApp->badgeCaseTransitionIndex == NELEMS(sBadgeCaseCoverScalingSpeeds)) {
            trainerCaseApp->badgeCaseOpenState = BADGE_CASE_OPEN;
            trainerCaseApp->subState = BADGE_CASE_SUBSTATE_DONE;
        }
        break;
    case BADGE_CASE_SUBSTATE_CLOSE:
        trainerCaseApp->badgeCaseCoverYScale += sBadgeCaseCoverScalingSpeeds[NELEMS(sBadgeCaseCoverScalingSpeeds) - 1 - trainerCaseApp->badgeCaseTransitionIndex++];

        if (trainerCaseApp->badgeCaseTransitionIndex == NELEMS(sBadgeCaseCoverScalingSpeeds)) {
            trainerCaseApp->badgeCaseOpenState = BADGE_CASE_CLOSED;
            trainerCaseApp->badgeCaseCoverYScale = 1 << FX32_SHIFT;
            trainerCaseApp->subState = BADGE_CASE_SUBSTATE_DONE;
        }
        break;
    case BADGE_CASE_SUBSTATE_DONE:
        return TRUE;
    }

    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(1 << FX32_SHIFT);
    fx32 yScale = FX_Inv(trainerCaseApp->badgeCaseCoverYScale);

    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();
    G2_SetBG3Affine(&affineTransform, 128, 0, 0, 0);

    return FALSE;
}

static int TrainerCase_GetPlayerInput(TrainerCaseApp *trainerCaseApp)
{
    BOOL touchScreenInput = FALSE;
    int input = INPUT_NONE;

    trainerCaseApp->touchedRectangleIndex = TOUCHSCREEN_INPUT_NONE;

    if (gSystem.touchPressed) {
        trainerCaseApp->polishingEnabled = TRUE;
    }

    trainerCaseApp->touchedRectangleIndex = TrainerCase_CheckBadgeOrButtonTouched(trainerCaseApp->bgConfig, sTouchRectangleSets[trainerCaseApp->trainerCase->badgesInteractable].touchRectangles[trainerCaseApp->badgeCaseOpenState]);

    if (trainerCaseApp->touchedRectangleIndex != TOUCHSCREEN_INPUT_NONE) {
        touchScreenInput = TRUE;
        input = INPUT_TOUCH_SCREEN_TAP;
    } else if (gSystem.touchHeld) {
        trainerCaseApp->touchedRectangleIndex = TrainerCase_CheckBadgeOrButtonHeld(trainerCaseApp->bgConfig, sTouchRectangleSets[trainerCaseApp->trainerCase->badgesInteractable].touchRectangles[trainerCaseApp->badgeCaseOpenState]);

        if (trainerCaseApp->polishingEnabled) {
            touchScreenInput = TRUE;
            input = INPUT_TOUCH_SCREEN_HOLD;
        }
    } else {
        trainerCaseApp->polishingEnabled = FALSE;
    }

    if (!touchScreenInput) {
        if (JOY_NEW(PAD_BUTTON_A)) {
            input = INPUT_A_BUTTON;
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            input = INPUT_B_BUTTON;
        }
    }

    return input;
}

static void TrainerCase_HandleBadgePolishing(TrainerCaseApp *trainerCaseApp)
{
    int distance;
    BOOL validMovement = FALSE;

    if (gSystem.touchX != (u16)TOUCHSCREEN_INPUT_NONE && gSystem.touchY != (u16)TOUCHSCREEN_INPUT_NONE && trainerCaseApp->lastTouchedX != (u16)TOUCHSCREEN_INPUT_NONE && trainerCaseApp->lastTouchedY != (u16)TOUCHSCREEN_INPUT_NONE) {
        if (trainerCaseApp->touchedRectangleIndex != TOUCHSCREEN_INPUT_NONE && trainerCaseApp->touchedRectangleIndex != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
            if (trainerCaseApp->trainerCase->badges[trainerCaseApp->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE].obtained) {
                if (trainerCaseApp->lastTouchedX > gSystem.touchX) {
                    distance = trainerCaseApp->lastTouchedX - gSystem.touchX;
                    trainerCaseApp->badgePolishingState.currentXDirection = -1;
                } else {
                    distance = gSystem.touchX - trainerCaseApp->lastTouchedX;
                    trainerCaseApp->badgePolishingState.currentXDirection = 1;
                }

                if (3 <= distance && distance <= 40) {
                    if (trainerCaseApp->lastTouchedY > gSystem.touchY) {
                        distance = trainerCaseApp->lastTouchedY - gSystem.touchY;
                        trainerCaseApp->badgePolishingState.currentYDirection = -1;
                    } else {
                        distance = gSystem.touchY - trainerCaseApp->lastTouchedY;
                        trainerCaseApp->badgePolishingState.currentYDirection = 1;
                    }

                    if (distance <= 40) {
                        validMovement = TRUE;
                        TrainerCase_PlayPolishingSoundEffects(&trainerCaseApp->badgePolishingState);
                    } else {
                        TrainerCase_ResetBadgePolishingDirection(&trainerCaseApp->badgePolishingState);
                    }
                } else if (distance <= 40) {
                    if (trainerCaseApp->lastTouchedY > gSystem.touchY) {
                        distance = trainerCaseApp->lastTouchedY - gSystem.touchY;
                        trainerCaseApp->badgePolishingState.currentYDirection = -1;
                    } else {
                        distance = gSystem.touchY - trainerCaseApp->lastTouchedY;
                        trainerCaseApp->badgePolishingState.currentYDirection = 1;
                    }

                    if (3 <= distance && distance <= 40) {
                        validMovement = TRUE;
                        TrainerCase_PlayPolishingSoundEffects(&trainerCaseApp->badgePolishingState);
                    } else {
                        TrainerCase_ResetBadgePolishingDirection(&trainerCaseApp->badgePolishingState);
                    }
                }

                if (validMovement) {
                    TrainerCase_PolishBadge(trainerCaseApp, trainerCaseApp->touchedRectangleIndex - TOUCH_RECTANGLE_COAL_BADGE);
                }
            }
        }
    }

    trainerCaseApp->lastTouchedX = gSystem.touchX;
    trainerCaseApp->lastTouchedY = gSystem.touchY;
}

static void TrainerCase_RedrawBadgeCaseButton(TrainerCaseApp *trainerCaseApp, u8 buttonSpriteIndex)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(trainerCaseApp->bgConfig, BG_LAYER_MAIN_2);
    u16 baseTile = 4 * 32 + 4 * buttonSpriteIndex;

    u8 x, y;
    for (y = 0; y < 4; y++) {
        for (x = 0; x < 4; x++) {
            tilemapBuffer[(y + 19) * SCREEN_WIDTH_TILES + x + 14] = baseTile + y * 32 + x;
        }
    }

    Bg_CopyTilemapBufferToVRAM(trainerCaseApp->bgConfig, BG_LAYER_MAIN_2);
}

static void TrainerCase_HideGymLeaderFace_Unused(TrainerCaseApp *trainerCaseApp, u8 gymLeader)
{
    u8 portraitToReplaceX = 3;
    u8 portraitToReplaceY = 4;
    u8 gymLeaderColumn = gymLeader % 4;
    u8 gymLeaderRow = gymLeader / 4;

    portraitToReplaceX += gymLeaderColumn * 7;
    portraitToReplaceY += gymLeaderRow * 7;

    u8 *tilemapBuffer = (u8 *)Bg_GetTilemapBuffer(trainerCaseApp->bgConfig, BG_LAYER_MAIN_3);
    u16 anonymousPortraitBaseTile = 11 * 16 + 10;

    u8 x, y;
    for (y = 0; y < 5; y++) {
        for (x = 0; x < 5; x++) {
            tilemapBuffer[(y + portraitToReplaceY) * SCREEN_WIDTH_TILES + x + portraitToReplaceX] = anonymousPortraitBaseTile + y * 16 + x;
        }
    }
}

static void TrainerCase_TransferGraphicsOnVBlank(void *unused)
{
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void TrainerCase_PolishBadge(TrainerCaseApp *trainerCaseApp, u8 badgeID)
{
    int updatedPolish = trainerCaseApp->trainerCase->badges[badgeID].polish + 1;

    if (updatedPolish < MAX_BADGE_POLISH + 1) {
        u8 currentPolishLevel = TrainerCase_GetBadgePolishLevel(trainerCaseApp->trainerCase->badges[badgeID].polish);

        trainerCaseApp->polishingProgress[badgeID]++;

        if (trainerCaseApp->polishingProgress[badgeID] >= sPolishThresholds[currentPolishLevel]) {
            trainerCaseApp->polishingProgress[badgeID] = 0;
            trainerCaseApp->trainerCase->badges[badgeID].polish++;

            u8 updatedPolishLevel = TrainerCase_GetBadgePolishLevel(updatedPolish);
            GF_ASSERT(currentPolishLevel <= updatedPolishLevel);

            if (currentPolishLevel < updatedPolishLevel) {
                if (updatedPolishLevel <= BADGE_POLISH_LEVEL_4_SPARKLES) {
                    if (updatedPolishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                        TrainerCase_DrawBadgeDirt(&trainerCaseApp->spriteData, badgeID, 0);
                    } else {
                        TrainerCase_DrawBadgeDirt(&trainerCaseApp->spriteData, badgeID, BADGE_POLISH_LEVEL_2_SPARKLES - updatedPolishLevel);
                    }
                }

                if (updatedPolishLevel == BADGE_POLISH_LEVEL_2_SPARKLES) {
                    Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
                } else if (updatedPolishLevel == BADGE_POLISH_LEVEL_4_SPARKLES) {
                    Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_TWO_SPARKLES_SPRITES_INDEX + badgeID], FALSE);
                    Sprite_SetDrawFlag(trainerCaseApp->spriteData.sprites[TRAINER_CASE_FOUR_SPARKLES_SPRITES_INDEX + badgeID], TRUE);
                }
            }
        }
    }
}

static void TrainerCase_ResetAffineTransforms(void)
{
    MtxFx22 affineTransform;

    fx32 xScale = FX_Inv(1 << FX32_SHIFT);
    fx32 yScale = FX_Inv(1 << FX32_SHIFT);
    affineTransform._00 = xScale;
    affineTransform._01 = 0;
    affineTransform._10 = 0;
    affineTransform._11 = yScale;

    SVC_WaitVBlankIntr();

    G2S_SetBG2Affine(&affineTransform, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT / 2, 0, 0);
    G2S_SetBG3Affine(&affineTransform, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT / 2, 0, 0);

    SVC_WaitVBlankIntr();

    G2_SetBG3Affine(&affineTransform, HW_LCD_WIDTH / 2, 0, 0, 0);
}

static void TrainerCase_HandleBadgeCaseButtonAnimation(TrainerCaseApp *trainerCaseApp)
{
    if (trainerCaseApp->badgeCaseButtonState == BUTTON_STATE_PUSHED) {
        if (TrainerCase_AnimateBadgeCaseButton(trainerCaseApp, sButtonAnimData[0])) {
            trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_DEFAULT;
        }
    } else if (trainerCaseApp->badgeCaseButtonState == BUTTON_STATE_SPRING_BACK) {
        if (TrainerCase_AnimateBadgeCaseButton(trainerCaseApp, sButtonAnimData[1])) {
            trainerCaseApp->badgeCaseButtonState = BUTTON_STATE_DEFAULT;
        }
    }
}

static BOOL TrainerCase_AnimateBadgeCaseButton(TrainerCaseApp *trainerCaseApp, const u8 *buttonAnimData)
{
    u8 duration = buttonAnimData[trainerCaseApp->badgeCaseButtonAnimIndex * 2];

    if (duration == 0) {
        trainerCaseApp->badgeCaseButtonAnimTimer = 0;
        trainerCaseApp->badgeCaseButtonAnimIndex = 0;
        return TRUE;
    } else if (trainerCaseApp->badgeCaseButtonAnimTimer >= duration) {
        trainerCaseApp->badgeCaseButtonAnimTimer = 0;
        trainerCaseApp->badgeCaseButtonAnimIndex++;
    }

    u8 buttonSpriteIndex = buttonAnimData[trainerCaseApp->badgeCaseButtonAnimIndex * 2 + 1];

    if (trainerCaseApp->badgeCaseButtonAnimTimer == 0) {
        TrainerCase_RedrawBadgeCaseButton(trainerCaseApp, buttonSpriteIndex);
    }

    trainerCaseApp->badgeCaseButtonAnimTimer++;

    return FALSE;
}

static void TrainerCase_DrawTrainer(TrainerCaseApp *trainerCaseApp)
{
    u32 size = trainerCaseApp->trainerScreenData->szByte;

    Bg_LoadTiles(trainerCaseApp->bgConfig, BG_LAYER_SUB_3, trainerCaseApp->trainerCharacterData->pRawData, trainerCaseApp->trainerCharacterData->szByte, 0);

    if (Bg_GetTilemapBuffer(trainerCaseApp->bgConfig, BG_LAYER_SUB_3) != NULL) {
        Bg_LoadTilemapBuffer(trainerCaseApp->bgConfig, BG_LAYER_SUB_3, trainerCaseApp->trainerScreenData->rawData, size);
    }

    Bg_CopyTilemapBufferRangeToVRAM(trainerCaseApp->bgConfig, BG_LAYER_SUB_3, trainerCaseApp->trainerScreenData->rawData, size, 0);
}

static void TrainerCase_ClearTrainerSprite(TrainerCaseApp *trainerCaseApp)
{
    Bg_FillTilemapRect(trainerCaseApp->bgConfig, BG_LAYER_SUB_3, 0, 20, 6, 6, 9, TILEMAP_FILL_VAL_KEEP_PALETTE);
}

static u8 TrainerCase_GetBadgePolishLevel(int badgePolish)
{
    u8 level;

    if (0 <= badgePolish && badgePolish < BADGE_POLISH_THRESHOLD_DIRTY) {
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
        level = BADGE_POLISH_LEVEL_FILTHY;
    }

    return level;
}

static void TrainerCase_ResetBadgePolishingDirection(BadgePolishingState *badgePolishingState)
{
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
}

static void TrainerCase_ResetBadgePolishingState(BadgePolishingState *badgePolishingState)
{
    badgePolishingState->previousXDirection = 0;
    badgePolishingState->previousYDirection = 0;
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
    badgePolishingState->soundEffectIndex = 0;
}

static void TrainerCase_PlayPolishingSoundEffects(BadgePolishingState *badgePolishingState)
{
    int soundEffects[2] = {
        SEQ_SE_DP_MIGAKU01, SEQ_SE_DP_MIGAKU02
    };

    if (badgePolishingState->previousXDirection == 0 && badgePolishingState->previousYDirection == 0) {
        Sound_PlayEffect(SEQ_SE_DP_MIGAKU01);
    }

    if (badgePolishingState->previousXDirection * badgePolishingState->currentXDirection < 0 || badgePolishingState->previousYDirection * badgePolishingState->currentYDirection < 0) {
        badgePolishingState->soundEffectIndex = (badgePolishingState->soundEffectIndex + 1) % 2;
        Sound_PlayEffect(soundEffects[badgePolishingState->soundEffectIndex]);
    }

    badgePolishingState->previousXDirection = badgePolishingState->currentXDirection;
    badgePolishingState->previousYDirection = badgePolishingState->currentYDirection;
    badgePolishingState->currentXDirection = 0;
    badgePolishingState->currentYDirection = 0;
}

static void TrainerCase_ConvertSignature1BppTo8Bpp(const u8 *signature1Bpp, u8 *signature8BppOut)
{
    for (int pixel = 0; pixel < SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_8BPP; pixel++) {
        int indexPart1 = pixel / (8 * 8);
        u8 indexPart2 = (pixel / 8) % 8;
        u8 shift = pixel % 8;

        // this could have just been (signature1Bpp[pixel / 8] >> shift) & 0x1
        signature8BppOut[pixel] = (signature1Bpp[indexPart1 * 8 + indexPart2] >> shift) & 0x1;
    }
}

static void TrainerCase_DisplaySignature(BgConfig *bgConfig, enum BgLayer bgLayer, const u8 *signature)
{
    Bg_LoadTiles(bgConfig, bgLayer, signature, SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_8BPP, 1);

    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(bgConfig, bgLayer);
    u8 x, y;
    u16 tileIndex = 0;

    for (y = 0; y < SIGNATURE_HEIGHT; y++) {
        for (x = 0; x < SIGNATURE_WIDTH; x++) {
            tilemapBuffer[(14 + y) * SCREEN_WIDTH_TILES + x + 4] = 1 + tileIndex;
            tileIndex++;
        }
    }

    Bg_CopyTilemapBufferToVRAM(bgConfig, bgLayer);
}

static void TrainerCase_PlayOpenCloseBadgeCaseSoundEffect(int unused)
{
    Sound_PlayEffect(SEQ_SE_DP_CARD11);
}

static void TrainerCase_UpdatePlayTime(TrainerCaseApp *trainerCaseApp, u8 liveTimeDisplay)
{
    if (!liveTimeDisplay) {
        return;
    }

    if (!trainerCaseApp->viewingBack) {
        if (trainerCaseApp->timer == 15) {
            TrainerCard_DrawUpdatedTime(trainerCaseApp->windows, trainerCaseApp->trainerCase, trainerCaseApp->unusedString);

            TrainerCard_BlinkPlaytimeColon(&(trainerCaseApp->windows[TRAINER_CARD_WINDOW_TIME]), TRUE, trainerCaseApp->colonString);
        } else if (trainerCaseApp->timer == 0) {
            TrainerCard_BlinkPlaytimeColon(&(trainerCaseApp->windows[TRAINER_CARD_WINDOW_TIME]), FALSE, trainerCaseApp->colonString);
        }
    }

    trainerCaseApp->timer = (trainerCaseApp->timer + 1) % 30;
}

static int TrainerCase_CheckBadgeOrButtonTouched(BgConfig *bgConfig, const TouchScreenRect rects[])
{
    int touchedRectangle = TouchScreen_CheckRectanglePressed(rects);

    if (touchedRectangle != TOUCHSCREEN_INPUT_NONE) {
        if (touchedRectangle != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
            u16 caseBackground = 0x40;

            if (!Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &caseBackground)) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return touchedRectangle;
        }
    }

    return touchedRectangle;
}

static int TrainerCase_CheckBadgeOrButtonHeld(BgConfig *bgConfig, const TouchScreenRect rects[])
{
    int heldRectangle = TouchScreen_CheckRectangleHeld(rects);

    if (heldRectangle != TOUCHSCREEN_INPUT_NONE) {
        if (heldRectangle != TOUCH_RECTANGLE_OPEN_CLOSE_BADGE_CASE) {
            u16 caseBackground = 0x40;

            if (!Bg_DoesPixelAtXYMatchVal(bgConfig, BG_LAYER_MAIN_2, gSystem.touchX, gSystem.touchY, &caseBackground)) {
                return TOUCHSCREEN_INPUT_NONE;
            }
        } else {
            return heldRectangle;
        }
    }

    return heldRectangle;
}
