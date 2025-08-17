#ifndef POKEPLATINUM_STRUCT_BOX_CURSOR_H
#define POKEPLATINUM_STRUCT_BOX_CURSOR_H

#define PREVIEW_MON_UNDER_CURSOR    1
#define PREVIEW_MON_IN_CURSOR       2
#define PREVIEW_MON_FROM_SELECTION  4
#define PREVIEW_MON_UNDER_SELECTION 8

#define PREVIEW_MON_HELD      6
#define PREVIEW_MON_SELECTION 12

enum CursorLocation {
    CURSOR_IN_BOX = 0,
    CURSOR_IN_PARTY,
    CURSOR_ON_BOX_HEADER,
    CURSOR_ON_PARTY_BUTTON,
    CURSOR_ON_CLOSE_BUTTON
};

typedef struct BoxCursor {
    void *mon;
    u8 cursorLocation;
    s8 boxCol;
    s8 boxRow;
    s8 posInBox;
    s8 posInParty;
    s8 prevCursorLocation;
    u8 isMonUnderCursor;
    u8 previewMonSource;
} BoxCursor;

#endif // POKEPLATINUM_STRUCT_BOX_CURSOR_H
