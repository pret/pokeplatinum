#ifndef POKEPLATINUM_BYTE_FLAG_SET_H
#define POKEPLATINUM_BYTE_FLAG_SET_H

typedef struct ByteFlagSet {
    u8 xCoord;
    u8 yCoord;
    u8 subXCoord;
    u8 subYCoord;
    u8 upIndex;
    u8 downIndex;
    u8 leftIndex;
    u8 rightIndex;
} ByteFlagSet;

enum ByteFlagSetDirection {
    BYTE_FLAG_SET_DIRECTION_UP = 0,
    BYTE_FLAG_SET_DIRECTION_DOWN,
    BYTE_FLAG_SET_DIRECTION_LEFT,
    BYTE_FLAG_SET_DIRECTION_RIGHT,
    BYTE_FLAG_SET_DIRECTION_NONE,
};

void ReadABByteFlags(const ByteFlagSet *byteFlagSet, u8 *xCoord, u8 *yCoord);
void ReadCDByteFlags(const ByteFlagSet *byteFlagSet, u8 *subXCoord, u8 *subYCoord);
u8 ReadByteFlags(const ByteFlagSet *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction);

#endif // POKEPLATINUM_BYTE_FLAG_SET_H
