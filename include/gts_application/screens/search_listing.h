#ifndef POKEPLATINUM_GTS_SCREENS_SEARCH_LISTING_H
#define POKEPLATINUM_GTS_SCREENS_SEARCH_LISTING_H

#include "gts_application/gts.h"

int GTSApplication_SearchListing_Init(GTSApplicationState *appState, int unused);
int GTSApplication_SearchListing_Main(GTSApplicationState *appState, int unused);
int GTSApplication_SearchListing_Exit(GTSApplicationState *appState, int unused);

enum GTSListingSummaryScreenStates {
    GTS_SEARCHLISTING_IDLE,
    GTS_SEARCHLISTING_HANDLE_INPUT,
    GTS_SEARCHLISTING_FADE_AND_EXIT,
    GTS_SEARCHLISTING_WAIT_FOR_TEXT,
    GTS_SEARCHLISTING_SHOW_CONFIRMATION_MENU,
    GTS_SEARCHLISTING_HANDLE_CONFIRMATION_MENU,
    GTS_SEARCHLISTING_HANDLE_UPDATE_INFO_PANEL,
};

#endif // POKEPLATINUM_GTS_SCREENS_SEARCH_LISTING_H
