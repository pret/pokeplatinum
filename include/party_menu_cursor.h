#ifndef POKEPLATINUM_PARTY_MENU_CURSOR_H
#define POKEPLATINUM_PARTY_MENU_CURSOR_H

typedef struct PartyMenuCursor {
    u8 xCoord;
    u8 yCoord;
    u8 subXCoord;
    u8 subYCoord;
    u8 upIndex;
    u8 downIndex;
    u8 leftIndex;
    u8 rightIndex;
} PartyMenuCursor;

enum PartyMenuCursorDirection {
    PARTY_MENU_CURSOR_DIRECTION_UP = 0,
    PARTY_MENU_CURSOR_DIRECTION_DOWN,
    PARTY_MENU_CURSOR_DIRECTION_LEFT,
    PARTY_MENU_CURSOR_DIRECTION_RIGHT,
    PARTY_MENU_CURSOR_DIRECTION_NONE,
};

void ReadPartyMenuCursorXYCoords(const PartyMenuCursor *byteFlagSet, u8 *xCoord, u8 *yCoord);
void ReadPartyMenuCursorSubXYCoords(const PartyMenuCursor *byteFlagSet, u8 *subXCoord, u8 *subYCoord);
u8 ReadPartyMenuCursorCoords(const PartyMenuCursor *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction);

#endif // POKEPLATINUM_PARTY_MENU_CURSOR_H
