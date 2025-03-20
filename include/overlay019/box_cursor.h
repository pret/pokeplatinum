#ifndef POKEPLATINUM_STRUCT_BOX_CURSOR_H
#define POKEPLATINUM_STRUCT_BOX_CURSOR_H

enum CursorLocation {
    CURSOR_IN_BOX = 0,
    CURSOR_IN_PARTY,
    CURSOR_ON_BOX_HEADER,
    CURSOR_ON_PARTY_BUTTON,
    CURSOR_ON_CLOSE_BUTTON
};

typedef struct {
    void *mon;
    u8 cursorLocation;
    s8 boxCol;
    s8 boxRow;
    s8 posInBox;
    s8 posInParty;
    s8 prevCursorState;
    u8 isMonUnderCursor;
    u8 unk_0B; // some sort of bit flag that sometimes checks if there's a mon in the cursor?
} BoxCursor;

#endif // POKEPLATINUM_STRUCT_BOX_CURSOR_H
