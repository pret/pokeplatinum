#include "applications/pokemon_summary_screen/subscreen.h"

#include <nitro.h>
#include <string.h>

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprites.h"

#include "bg_window.h"
#include "sound_playback.h"
#include "system.h"
#include "touch_screen.h"

#define MAX_BUTTON_ANIM_FRAMES 3
#define BUTTON_TILE_COUNT      5

typedef struct SummarySubscreenButton {
    u8 page;
    u8 paletteNum;
    u8 x;
    u8 y;
} SummarySubscreenButton;

static int CheckSubscreenRectanglePress(PokemonSummaryScreen *summaryScreen);

static const SummarySubscreenButton sSubscreenButtons_Normal[] = {
    { SUMMARY_PAGE_INFO, 1, 1, 4 },
    { SUMMARY_PAGE_MEMO, 1, 2, 10 },
    { SUMMARY_PAGE_SKILLS, 2, 5, 15 },
    { SUMMARY_PAGE_BATTLE_MOVES, 3, 10, 18 },
    { SUMMARY_PAGE_CONDITION, 2, 17, 18 },
    { SUMMARY_PAGE_CONTEST_MOVES, 3, 22, 15 },
    { SUMMARY_PAGE_RIBBONS, 4, 25, 10 },
    { SUMMARY_PAGE_EXIT, 4, 26, 4 },
    { SUMMARY_PAGE_NONE, -1, -1, -1 }
};

static const SummarySubscreenButton sSubscreenButtons_NoContestInfo[] = {
    { SUMMARY_PAGE_INFO, 1, 2, 9 },
    { SUMMARY_PAGE_MEMO, 1, 6, 15 },
    { SUMMARY_PAGE_SKILLS, 2, 14, 18 },
    { SUMMARY_PAGE_BATTLE_MOVES, 3, 22, 15 },
    { SUMMARY_PAGE_EXIT, 4, 26, 9 },
    { SUMMARY_PAGE_NONE, -1, -1, -1 }
};

static const SummarySubscreenButton sSubscreenButtons_UnusedMovesOnly[] = {
    { SUMMARY_PAGE_BATTLE_MOVES, 3, 10, 18 },
    { SUMMARY_PAGE_CONTEST_MOVES, 3, 17, 18 },
    { SUMMARY_PAGE_NONE, -1, -1, -1 }
};

static const SummarySubscreenButton *sSubscreenButtonTypes[] = {
    [SUMMARY_SUBSCREEN_TYPE_NORMAL] = sSubscreenButtons_Normal,
    [SUMMARY_SUBSCREEN_TYPE_NO_CONTEST_INFO] = sSubscreenButtons_NoContestInfo,
    [SUMMARY_SUBSCREEN_TYPE_UNUSED_MOVES_ONLY] = sSubscreenButtons_UnusedMovesOnly
};

static const TouchScreenRect sSubscreenRectangles_Normal[] = {
    { 32, 71, 8, 47 },
    { 80, 119, 16, 55 },
    { 120, 159, 40, 79 },
    { 144, 183, 80, 119 },
    { 144, 183, 136, 175 },
    { 120, 159, 176, 215 },
    { 80, 119, 200, 239 },
    { 32, 71, 208, 247 },
    { -1, 0, 0, 0 }
};

static const TouchScreenRect sSubscreenRectangles_NoContestInfo[] = {
    { 72, 111, 12, 51 },
    { 120, 159, 44, 83 },
    { 144, 183, 108, 147 },
    { 120, 159, 172, 211 },
    { 72, 111, 204, 243 },
    { -1, 0, 0, 0 }
};

static const TouchScreenRect sSubscreenRectangles_UnusedMovesOnly[] = {
    { 144, 183, 80, 119 },
    { 144, 183, 136, 175 },
    { -1, 0, 0, 0 }
};

static const TouchScreenRect *sSubscreenRectangles[] = {
    [SUMMARY_SUBSCREEN_TYPE_NORMAL] = sSubscreenRectangles_Normal,
    [SUMMARY_SUBSCREEN_TYPE_NO_CONTEST_INFO] = sSubscreenRectangles_NoContestInfo,
    [SUMMARY_SUBSCREEN_TYPE_UNUSED_MOVES_ONLY] = sSubscreenRectangles_UnusedMovesOnly
};

void PokemonSummaryScreen_SetSubscreenType(PokemonSummaryScreen *summaryScreen) {
    switch (summaryScreen->data->mode) {
    case SUMMARY_MODE_NORMAL:
    case SUMMARY_MODE_LOCK_MOVES:
        if (summaryScreen->data->showContest != FALSE) {
            summaryScreen->subscreenType = SUMMARY_SUBSCREEN_TYPE_NORMAL;
        } else {
            summaryScreen->subscreenType = SUMMARY_SUBSCREEN_TYPE_NO_CONTEST_INFO;
            Bg_ScheduleScroll(summaryScreen->bgConfig, BG_LAYER_SUB_0, BG_OFFSET_UPDATE_SET_X, 4);
        }
        break;
    case SUMMARY_MODE_SELECT_MOVE:
    case SUMMARY_MODE_FEED_POFFIN:
    default:
        summaryScreen->subscreenType = SUMMARY_SUBSCREEN_TYPE_NO_BUTTONS;
    }

    PokemonSummaryScreen_UpdateSubscreenButtonGfx(summaryScreen);
}

static void UpdateSubscreenButtonTilemap(PokemonSummaryScreen *summaryScreen, const SummarySubscreenButton *button, u8 animID) {
    u16 *bgSub0Tilemap = (u16 *)Bg_GetTilemapBuffer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
    u16 baseTile = (button->page & 1) * 15 + (button->page / 2) * (30 * 5) + animID * 5 + 30;
    u8 y, x;

    for (y = 0; y < BUTTON_TILE_COUNT; y++) {
        for (x = 0; x < BUTTON_TILE_COUNT; x++) {
            bgSub0Tilemap[(y + button->y) * 32 + x + button->x] = baseTile + y * 30 + x + (button->paletteNum << 12);
        }
    }
}

void PokemonSummaryScreen_UpdateSubscreenButtonGfx(PokemonSummaryScreen *summaryScreen) {
    if (summaryScreen->subscreenType == SUMMARY_SUBSCREEN_TYPE_NO_BUTTONS) {
        return;
    }

    const SummarySubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];
    u8 button = 0;

    while (TRUE) {
        if (buttonList[button].page == SUMMARY_PAGE_NONE) {
            break;
        }

        UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[button], 0);
        button++;
    }

    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
}

u8 PokemonSummaryScreen_CheckSubscreenButtonPress(PokemonSummaryScreen *summaryScreen) {
    int button = CheckSubscreenRectanglePress(summaryScreen);

    if (button != TOUCHSCREEN_INPUT_NONE) {
        return button;
    }

    return SUMMARY_SUBSCREEN_BUTTON_NONE;
}

static int CheckSubscreenRectanglePress(PokemonSummaryScreen *summaryScreen) {
    if (summaryScreen->subscreenType == SUMMARY_SUBSCREEN_TYPE_NO_BUTTONS) {
        return TOUCHSCREEN_INPUT_NONE;
    }

    return TouchScreen_CheckRectanglePressed(sSubscreenRectangles[summaryScreen->subscreenType]);
}

static int CheckSubscreenRectangleHeld(PokemonSummaryScreen *summaryScreen) {
    if (summaryScreen->subscreenType == SUMMARY_SUBSCREEN_TYPE_NO_BUTTONS) {
        return TOUCHSCREEN_INPUT_NONE;
    }

    int rectHeld = TouchScreen_CheckRectangleHeld(sSubscreenRectangles[summaryScreen->subscreenType]);

    if (rectHeld != TOUCHSCREEN_INPUT_NONE) {
        u16 v1 = 0xFFFE;

        if (Bg_DoesPixelAtXYMatchVal(summaryScreen->bgConfig, BG_LAYER_SUB_0, gSystem.touchX, gSystem.touchY, &v1) == FALSE) {
            return TOUCHSCREEN_INPUT_NONE;
        }
    }

    return rectHeld;
}

u8 PokemonSummaryScreen_DrawSubscreenButtonAnim(PokemonSummaryScreen *summaryScreen) {
    const SummarySubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];

    switch (summaryScreen->buttonState) {
    case SUMMARY_BUTTON_STATE_INIT_ANIM:
        Sound_PlayEffect(SEQ_SE_DP_BUTTON9);
        PokemonSummaryScreen_UpdateSubscreenButtonGfx(summaryScreen);
        UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonCurrent], 2);
        Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
        PokemonSummaryScreen_InitButtonTapAnim(summaryScreen);
        summaryScreen->buttonAnimFrame = 0;
        summaryScreen->buttonState = SUMMARY_BUTTON_STATE_SETUP_PAGE;
        break;
    case SUMMARY_BUTTON_STATE_SETUP_PAGE:
        summaryScreen->buttonState = SUMMARY_BUTTON_STATE_RUN_ANIM;
        break;
    case SUMMARY_BUTTON_STATE_RUN_ANIM:
        if (summaryScreen->buttonAnimFrame != MAX_BUTTON_ANIM_FRAMES) {
            summaryScreen->buttonAnimFrame++;
            break;
        }

        PokemonSummaryScreen_HideButtonTapCircle(summaryScreen);

        if (CheckSubscreenRectangleHeld(summaryScreen) != summaryScreen->buttonCurrent) {
            if (summaryScreen->monData.isEgg != FALSE
                && buttonList[summaryScreen->buttonCurrent].page != SUMMARY_PAGE_MEMO
                && buttonList[summaryScreen->buttonCurrent].page != SUMMARY_PAGE_EXIT) {
                UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonCurrent], 0);
            } else {
                UpdateSubscreenButtonTilemap(summaryScreen, &buttonList[summaryScreen->buttonCurrent], 1);
            }

            Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_SUB_0);
            return TRUE;
        }
    }

    return FALSE;
}

void PokemonSummaryScreen_CalcSubscreenButtonTapAnimPos(PokemonSummaryScreen *summaryScreen, s16 *outX, s16 *outY) {
    const SummarySubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];

    *outX = buttonList[summaryScreen->buttonCurrent].x * 8 + (BUTTON_TILE_COUNT * 8) / 2;
    *outY = buttonList[summaryScreen->buttonCurrent].y * 8 + (BUTTON_TILE_COUNT * 8) / 2;
}

u8 PokemonSummaryScreen_GetSubscreenButtonPage(PokemonSummaryScreen *summaryScreen, u8 button) {
    const SummarySubscreenButton *buttonList = sSubscreenButtonTypes[summaryScreen->subscreenType];
    return buttonList[button].page;
}
