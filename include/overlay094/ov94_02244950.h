#ifndef POKEPLATINUM_OV94_02244950_H
#define POKEPLATINUM_OV94_02244950_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"
#include "strbuf.h"

int GTSApplication_InitWFCScreen(GTSApplicationState *appState, int param1);
int GTSApplication_WFCInit_Main(GTSApplicationState *appState, int param1);
int GTSApplication_WFCInit_Exit(GTSApplicationState *appState, int param1);
void GTSApplication_DisplayStatusMessage(GTSApplicationState *appState, MessageLoader *messageLoader, int messageId, int textSpeed, u16 unused);
void ov94_022458CC(Window *param0, Strbuf *param1, int param2, int param3, int param4, u32 param5);
void ov94_02245900(Window *param0, Strbuf *param1, int param2, int param3, int param4, u32 param5);
void ov94_02245934(GTSApplicationState *param0);

#endif // POKEPLATINUM_OV94_02244950_H
