#ifndef POKEPLATINUM_GTS_APPLICATION_H
#define POKEPLATINUM_GTS_APPLICATION_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

int GTSApplication_Init(ApplicationManager *appMan, int *loopState);
int GTSApplication_Main(ApplicationManager *appMan, int *loopState);
int GTSApplication_Exit(ApplicationManager *appMan, int *unused1);
void GTSApplication_InitAffineTemplate(AffineSpriteListTemplate *template, GTSApplicationState *appState, SpriteResourcesHeader *spriteResourceHeader, int vramType);
Menu *GTSApplication_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile);
void GTSApplication_SetCurrentAndNextScreenInstruction(GTSApplicationState *appState, int currentInstruction, int nextInstruction);
void GTSApplication_SetSpritePosition(Sprite *sprite, int x, int y);
int GTSApplication_GetNetworkStrength(void);
void GTSApplication_SetNextScreenWithArgument(GTSApplicationState *appState, int nextScreen, int screenArgument);
void GTSApplication_MoveToNextScreen(GTSApplicationState *appState);
int GTSApplicationState_GetTextFrameDelay(GTSApplicationState *appState);
void GTSApplicationState_StartCountingBoxPokemon(GTSApplicationState *appState);
void GTSApplicationState_AddWaitDial(GTSApplicationState *appState);
void GTSApplicationState_DestroyWaitDial(GTSApplicationState *appState);

#endif // POKEPLATINUM_GTS_APPLICATION_H
