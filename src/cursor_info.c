#include "cursor_info.h"

void ReadCursorXYCoords(const CursorInfo *byteFlagSet, u8 *xCoord, u8 *yCoord)
{
    *xCoord = byteFlagSet->xCoord;
    *yCoord = byteFlagSet->yCoord;
}

void ReadCursorSubXYCoords(const CursorInfo *byteFlagSet, u8 *subXCoord, u8 *subYCoord)
{
    *subXCoord = byteFlagSet->subXCoord;
    *subYCoord = byteFlagSet->subYCoord;
}

u8 ReadCursorCoords(const CursorInfo *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction)
{
    u8 index = setIndex;

    switch (direction) {
    case CURSOR_INFO_DIRECTION_UP:
        index = byteFlagSet[setIndex].upIndex;
        break;
    case CURSOR_INFO_DIRECTION_DOWN:
        index = byteFlagSet[setIndex].downIndex;
        break;
    case CURSOR_INFO_DIRECTION_LEFT:
        index = byteFlagSet[setIndex].leftIndex;
        break;
    case CURSOR_INFO_DIRECTION_RIGHT:
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
