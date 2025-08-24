#ifndef POKEPLATINUM_GTS_APPLICATION_H
#define POKEPLATINUM_GTS_APPLICATION_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

enum ScreenArgument {
    SCREEN_ARGUMENT_0 = 0,
    SCREEN_ARGUMENT_3 = 3,
    SCREEN_ARGUMENT_5 = 5,
    SCREEN_ARGUMENT_6,
    SCREEN_ARGUMENT_DEPOSIT_POKEMON,
    SCREEN_ARGUMENT_TAKE_BACK_POKEMON,
    SCREEN_ARGUMENT_9,
    SCREEN_ARGUMENT_10,
    SCREEN_ARGUMENT_CHECK_SERVER,
    SCREEN_ARGUMENT_SAVE_AFTER_EVOLVE,
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
int GTSApplicationState_GetTextFrameDelay(GTSApplicationState *appState);
void GTSApplicationState_StartCountingBoxPokemon(GTSApplicationState *appState);
void GTSApplicationState_AddWaitDial(GTSApplicationState *appState);
void GTSApplicationState_DestroyWaitDial(GTSApplicationState *appState);

#endif // POKEPLATINUM_GTS_APPLICATION_H
