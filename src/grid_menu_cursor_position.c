#include "grid_menu_cursor_position.h"

void GetGridMenuCursorPositionFirstCoords(const GridMenuCursorPosition *position, u8 *xCoord, u8 *yCoord)
{
    *xCoord = position->xCoord1;
    *yCoord = position->yCoord1;
}

void GetGridMenuCursorPositionSecondCoords(const GridMenuCursorPosition *position, u8 *xCoord, u8 *yCoord)
{
    *xCoord = position->xCoord2;
    *yCoord = position->yCoord2;
}

u8 CheckGridMenuCursorPositionNavigation(const GridMenuCursorPosition *positions, u8 *xCoord1, u8 *yCoord1, u8 *xCoord2, u8 *yCoord2, u8 currentPositionIndex, u8 directionToMove)
{
    u8 index = currentPositionIndex;

    switch (directionToMove) {
    case GRID_MENU_CURSOR_POSITION_DIRECTION_UP:
        index = positions[currentPositionIndex].upIndex;
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN:
        index = positions[currentPositionIndex].downIndex;
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT:
        index = positions[currentPositionIndex].leftIndex;
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT:
        index = positions[currentPositionIndex].rightIndex;
        break;
    }

    if (xCoord1 != NULL) {
        *xCoord1 = positions[index].xCoord1;
    }

    if (yCoord1 != NULL) {
        *yCoord1 = positions[index].yCoord1;
    }

    if (xCoord2 != NULL) {
        *xCoord2 = positions[index].xCoord2;
    }

    if (yCoord2 != NULL) {
        *yCoord2 = positions[index].yCoord2;
    }

    return index;
}
