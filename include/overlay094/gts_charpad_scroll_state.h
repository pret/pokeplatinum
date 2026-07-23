#ifndef POKEPLATINUM_GTS_CHARPAD_SCROLL_STATE_H
#define POKEPLATINUM_GTS_CHARPAD_SCROLL_STATE_H

typedef struct GTSCharpadScrollState {
    u16 unread_00;
    u16 unread_02;
    u16 cursorPos[9];
    u16 scrollPos[9];
} GTSCharpadScrollState;

#endif // POKEPLATINUM_GTS_CHARPAD_SCROLL_STATE_H
