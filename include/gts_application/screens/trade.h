#ifndef POKEPLATINUM_GTS_SCREENS_TRADE_H
#define POKEPLATINUM_GTS_SCREENS_TRADE_H

#include "gts_application/gts.h"

int GTSApplication_Trade_Init(GTSApplicationState *appState, int unused);
int GTSApplication_Trade_Main(GTSApplicationState *appState, int unused);
int GTSApplication_Trade_Exit(GTSApplicationState *appState, int unused);

enum GTSTradeScreenStates {
    GTS_TRADE_WAIT_ANIMATION,
    GTS_TRADE_WAIT_EVOLUTION
};

#endif // POKEPLATINUM_GTS_SCREENS_TRADE_H
