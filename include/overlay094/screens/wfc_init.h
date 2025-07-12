#ifndef POKEPLATINUM_GTS_SCREENS_WFC_INIT_H
#define POKEPLATINUM_GTS_SCREENS_WFC_INIT_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"
#include "strbuf.h"

int GTSApplication_InitWFCScreen(GTSApplicationState *appState, int param1);
int GTSApplication_WFCInit_Main(GTSApplicationState *appState, int param1);
int GTSApplication_WFCInit_Exit(GTSApplicationState *appState, int param1);
void GTSApplication_DisplayStatusMessage(GTSApplicationState *appState, MessageLoader *messageLoader, int messageId, int textSpeed, u16 unused);
void ov94_022458CC(Window *window, Strbuf *strbuf, int x, int y, int width, TextColor textColor);
void ov94_02245900(Window *window, Strbuf *strbuf, int x, int y, int centered, TextColor textColor);
void ov94_02245934(GTSApplicationState *appState);

#endif // POKEPLATINUM_GTS_SCREENS_WFC_INIT_H
