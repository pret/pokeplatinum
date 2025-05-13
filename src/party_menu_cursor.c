#include "party_menu_cursor.h"

void ReadPartyMenuCursorXYCoords(const PartyMenuCursor *byteFlagSet, u8 *xCoord, u8 *yCoord)
{
    *xCoord = byteFlagSet->xCoord;
    *yCoord = byteFlagSet->yCoord;
}

void ReadPartyMenuCursorSubXYCoords(const PartyMenuCursor *byteFlagSet, u8 *subXCoord, u8 *subYCoord)
{
    *subXCoord = byteFlagSet->subXCoord;
    *subYCoord = byteFlagSet->subYCoord;
}

u8 ReadPartyMenuCursorCoords(const PartyMenuCursor *byteFlagSet, u8 *xCoord, u8 *yCoord, u8 *subXCoord, u8 *subYCoord, u8 setIndex, u8 direction)
{
    u8 index = setIndex;

    switch (direction) {
    case PARTY_MENU_CURSOR_DIRECTION_UP:
        index = byteFlagSet[setIndex].upIndex;
        break;
    case PARTY_MENU_CURSOR_DIRECTION_DOWN:
        index = byteFlagSet[setIndex].downIndex;
        break;
    case PARTY_MENU_CURSOR_DIRECTION_LEFT:
        index = byteFlagSet[setIndex].leftIndex;
        break;
    case PARTY_MENU_CURSOR_DIRECTION_RIGHT:
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
