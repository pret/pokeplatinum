#ifndef POKEPLATINUM_OV111_021D3548_H
#define POKEPLATINUM_OV111_021D3548_H

#include "bg_window.h"

enum ScratchOffCardsWindow {
    SCRATCH_WINDOW_STOP_SCRATCH = 0,
    SCRATCH_WINDOW_UNUSED_1,
    SCRATCH_WINDOW_ITEM_NAME_1,
    SCRATCH_WINDOW_ITEM_NAME_2,
    SCRATCH_WINDOW_ITEM_NAME_3,
    SCRATCH_WINDOW_ITEM_NAME_4,
    SCRATCH_WINDOW_MON_1,
    SCRATCH_WINDOW_MON_2,
    SCRATCH_WINDOW_MON_3,
    SCRATCH_WINDOW_MON_4,
    SCRATCH_WINDOW_START_CARD,
    SCRATCH_WINDOW_UNUSED_11,
    SCRATCH_WINDOW_TOO_BAD,
    SCRATCH_WINDOW_NEXT_CARD,
    SCRATCH_WINDOW_CANCEL,
    SCRATCH_WINDOW_SELECT_CARD,
    NUM_SCRATCH_WINDOWS,
};

void ScratchOffCardsApp_InitWindows(BgConfig *bgConfig, Window *windows);
void ScratchOffCardsApp_FreeWindows(Window *windows);
void ScratchOffCardsApp_DrawWindow(BgConfig *bgConfig, Window *window);
void ScratchOffCardsApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_OV111_021D3548_H
