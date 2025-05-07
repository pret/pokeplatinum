#ifndef POKEPLATINUM_UNK_0201E010_H
#define POKEPLATINUM_UNK_0201E010_H

typedef struct {
    u8 flagA;
    u8 flagB;
    u8 flagC;
    u8 flagD;
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
    BYTE_FLAG_SET_DIRECTION_NO_DIRECTION,
};

void ReadABByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagA, u8 *flagB);
void ReadCDByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagC, u8 *flagD);
u8 ReadByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagA, u8 *flagB, u8 *flagC, u8 *flagD, u8 setIndex, u8 direction);

#endif // POKEPLATINUM_UNK_0201E010_H
