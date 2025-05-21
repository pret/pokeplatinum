#ifndef POKEPLATINUM_GRID_MENU_CURSOR_POSITION_H
#define POKEPLATINUM_GRID_MENU_CURSOR_POSITION_H

typedef struct GridMenuCursorPosition {
    u8 xCoord1;
    u8 yCoord1;
    u8 xCoord2;
    u8 yCoord2;
    u8 upIndex;
    u8 downIndex;
    u8 leftIndex;
    u8 rightIndex;
} GridMenuCursorPosition;

enum GridMenuCursorPositionDirection {
    GRID_MENU_CURSOR_POSITION_DIRECTION_UP = 0,
    GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN,
    GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT,
    GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT,
    GRID_MENU_CURSOR_POSITION_DIRECTION_NONE,
};

void GridMenuCursor_GetFirstCoords(const GridMenuCursorPosition *position, u8 *xCoord, u8 *yCoord);
void GridMenuCursor_GetSecondCoords(const GridMenuCursorPosition *position, u8 *xCoord, u8 *yCoord);
u8 GridMenuCursor_CheckNavigation(const GridMenuCursorPosition *positions, u8 *xCoord1, u8 *yCoord1, u8 *xCoord2, u8 *yCoord2, u8 currentPositionIndex, u8 directionToMove);

#endif // POKEPLATINUM_GRID_MENU_CURSOR_POSITION_H
