#include "byte_flag_set.h"

void ReadABByteFlags(const ByteFlagSet *byteFlagSet, u8 *xCoord, u8 *yCoord)
{
    *xCoord = byteFlagSet->xCoord;
    *yCoord = byteFlagSet->yCoord;
}

void ReadCDByteFlags(const ByteFlagSet *byteFlagSet, u8 *subXCoord, u8 *subYCoord)
{
    *subXCoord = byteFlagSet->subXCoord;
    *subYCoord = byteFlagSet->subYCoord;
}

u8 ReadByteFlags(const ByteFlagSet *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction)
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

    if (xCoord != NULL) {
        *xCoord = byteFlagSet[index].xCoord;
    }

    if (yCoord != NULL) {
        *yCoord = byteFlagSet[index].yCoord;
    }

    if (subXCoord != NULL) {
        *subXCoord = byteFlagSet[index].subXCoord;
    }

    if (subYCoord != NULL) {
        *subYCoord = byteFlagSet[index].subYCoord;
    }

    return index;
}
