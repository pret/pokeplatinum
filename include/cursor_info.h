#ifndef POKEPLATINUM_BYTE_FLAG_SET_H
#define POKEPLATINUM_BYTE_FLAG_SET_H

typedef struct CursorInfo {
    u8 xCoord;
    u8 yCoord;
    u8 subXCoord;
    u8 subYCoord;
    u8 upIndex;
    u8 downIndex;
    u8 leftIndex;
    u8 rightIndex;
} CursorInfo;

enum CursorInfoDirection {
    CURSOR_INFO_DIRECTION_UP = 0,
    CURSOR_INFO_DIRECTION_DOWN,
    CURSOR_INFO_DIRECTION_LEFT,
    CURSOR_INFO_DIRECTION_RIGHT,
    CURSOR_INFO_DIRECTION_NONE,
};

void ReadCursorXYCoords(const CursorInfo *byteFlagSet, u8 *xCoord, u8 *yCoord);
void ReadCursorSubXYCoords(const CursorInfo *byteFlagSet, u8 *subXCoord, u8 *subYCoord);
u8 ReadCursorCoords(const CursorInfo *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction);

#endif // POKEPLATINUM_BYTE_FLAG_SET_H
