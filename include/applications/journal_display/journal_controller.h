#ifndef POKEPLATINUM_JOURNAL_CONTROLLER_H
#define POKEPLATINUM_JOURNAL_CONTROLLER_H

#include "overlay_manager.h"

enum JournalState {
    JOURNAL_STATE_OPEN = 0,
    JOURNAL_STATE_HANDLE_INPUT,
    JOURNAL_STATE_TURN_LEFT,
    JOURNAL_STATE_TURN_RIGHT,
    JOURNAL_STATE_CLOSE,
};

int JournalController_Init(OverlayManager *ovyManager, int *state);
int JournalController_Main(OverlayManager *ovyManager, int *state);
int JournalController_Exit(OverlayManager *ovyManager, int *state);

#endif // POKEPLATINUM_JOURNAL_CONTROLLER_H
