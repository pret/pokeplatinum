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
    s8 prevCursorLocation;
    u8 isMonUnderCursor;
    u8 unk_0B; // bit flag, can be set to 1, 2, 4, 8; 1 is default, 2 is mon held in cursor, 4 and 8 are related in some way to multi-select
} BoxCursor;

#endif // POKEPLATINUM_STRUCT_BOX_CURSOR_H
