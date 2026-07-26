#ifndef POKEPLATINUM_GTS_APPLICATION_H
#define POKEPLATINUM_GTS_APPLICATION_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

#define TITLE_WINDOW_TILE_WIDTH  28
#define TITLE_WINDOW_TILE_HEIGHT 2

enum ScreenArgument {
    SCREEN_ARGUMENT_NONE = 0,
    SCREEN_ARGUMENT_RESUME_LISTING = 3,
    SCREEN_ARGUMENT_CHOOSE_OFFER_MON = 5,
    SCREEN_ARGUMENT_CHOOSE_LISTED_MON,
    SCREEN_ARGUMENT_DEPOSIT_POKEMON,
    SCREEN_ARGUMENT_TAKE_BACK_POKEMON,
    SCREEN_ARGUMENT_EXCHANGE_POKEMON,
    SCREEN_ARGUMENT_EXCHANGE_POKEMON_ALT,
    SCREEN_ARGUMENT_CHECK_SERVER,
    SCREEN_ARGUMENT_SAVE_AFTER_EVOLVE,
};

enum GTSCharpadTab {
    GTS_CHARPAD_TAB_ABC = 1,
    GTS_CHARPAD_TAB_DEF,
    GTS_CHARPAD_TAB_GHI,
    GTS_CHARPAD_TAB_JKL,
    GTS_CHARPAD_TAB_MNO,
    GTS_CHARPAD_TAB_PQR,
    GTS_CHARPAD_TAB_STU,
    GTS_CHARPAD_TAB_VWX,
    GTS_CHARPAD_TAB_YZ
};

BOOL GTSApplication_Init(ApplicationManager *appMan, int *loopState);
BOOL GTSApplication_Main(ApplicationManager *appMan, int *loopState);
BOOL GTSApplication_Exit(ApplicationManager *appMan, int *unused1);
void GTSApplication_InitAffineTemplate(AffineSpriteListTemplate *template, GTSApplicationState *appState, SpriteResourcesHeader *spriteResourceHeader, NNS_G2D_VRAM_TYPE vramType);
Menu *GTSApplication_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile);
void GTSApplication_SetCurrentAndNextScreenInstruction(GTSApplicationState *appState, int currentInstruction, int nextInstruction);
void GTSApplication_SetSpritePosition(Sprite *sprite, int x, int y);
int GTSApplication_GetNetworkStrength(void);
void GTSApplication_SetNextScreenWithArgument(GTSApplicationState *appState, int nextScreen, enum ScreenArgument screenArgument);
void GTSApplication_MoveToNextScreen(GTSApplicationState *appState);
int GTSApplication_GetTextFrameDelay(GTSApplicationState *appState);
void GTSApplication_StartCountingBoxPokemon(GTSApplicationState *appState);
void GTSApplication_AddWaitDial(GTSApplicationState *appState);
void GTSApplication_DestroyWaitDial(GTSApplicationState *appState);

#endif // POKEPLATINUM_GTS_APPLICATION_H
