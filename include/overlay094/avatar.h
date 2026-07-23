#ifndef POKEPLATINUM_AVATAR_H
#define POKEPLATINUM_AVATAR_H

#include "overlay094/gts_application_state.h"

void GTSAvatar_Init(GTSApplicationState *appState, int gender);
void GTSAvatar_BeginLoginAnimation(GTSApplicationState *appState, int gender);
void GTSAvatar_BeginLogoutAnimation(GTSApplicationState *appState, int gender);
int GTSAvatar_GetTouchedSearchResult(int resultCount);
void GTSAvatar_ShowSearchResults(GTSApplicationState *appState, int resultCount, int showIdle);
void GTSAvatar_HighlightSearchResults(GTSApplicationState *appState);
void GTSAvatar_FreeGraphics(GTSApplicationState *appState);

#define GTS_MAX_SEARCH_RESULTS 7

#endif // POKEPLATINUM_AVATAR_H
