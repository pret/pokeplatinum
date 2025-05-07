#include "unk_0201E010.h"

void ReadABByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagA, u8 *flagB)
{
    *flagA = byteFlagSet->flagA;
    *flagB = byteFlagSet->flagB;
}

void ReadCDByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagC, u8 *flagD)
{
    *flagC = byteFlagSet->flagC;
    *flagD = byteFlagSet->flagD;
}

u8 ReadByteFlags(const ByteFlagSet *byteFlagSet, u8 *flagA, u8 *flagB, u8 *flagC, u8 *flagD, u8 setIndex, u8 direction)
{
    u8 index = setIndex;

    switch (direction) {
    case BYTE_FLAG_SET_DIRECTION_UP:
        index = byteFlagSet[setIndex].upIndex;
        break;
    case BYTE_FLAG_SET_DIRECTION_DOWN:
        index = byteFlagSet[setIndex].downIndex;
        break;
    case BYTE_FLAG_SET_DIRECTION_LEFT:
        index = byteFlagSet[setIndex].leftIndex;
        break;
    case BYTE_FLAG_SET_DIRECTION_RIGHT:
        index = byteFlagSet[setIndex].rightIndex;
        break;
    }

    if (flagA != NULL) {
        *flagA = byteFlagSet[index].flagA;
    }

    if (flagB != NULL) {
        *flagB = byteFlagSet[index].flagB;
    }

    if (flagC != NULL) {
        *flagC = byteFlagSet[index].flagC;
    }

    if (flagD != NULL) {
        *flagD = byteFlagSet[index].flagD;
    }

    return index;
}
