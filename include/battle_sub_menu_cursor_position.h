#ifndef POKEPLATINUM_CURSOR_POSITION_H
#define POKEPLATINUM_CURSOR_POSITION_H

typedef struct BattleSubMenuCursorPosition {
    u8 xCoord1;
    u8 yCoord1;
    u8 xCoord2;
    u8 yCoord2;
    u8 upIndex;
    u8 downIndex;
    u8 leftIndex;
    u8 rightIndex;
} BattleSubMenuCursorPosition;

enum BattleSubMenuCursorPositionDirection {
    BATTLE_SUB_MENU_CURSOR_POSITION_DIRECTION_UP = 0,
    BATTLE_SUB_MENU_CURSOR_POSITION_DIRECTION_DOWN,
    BATTLE_SUB_MENU_CURSOR_POSITION_DIRECTION_LEFT,
    BATTLE_SUB_MENU_CURSOR_POSITION_DIRECTION_RIGHT,
    BATTLE_SUB_MENU_CURSOR_POSITION_DIRECTION_NONE,
};

void GetBattleSubMenuCursorPositionFirstCoords(const BattleSubMenuCursorPosition *position, u8 *xCoord, u8 *yCoord);
void GetBattleSubMenuCursorPositionSecondCoords(const BattleSubMenuCursorPosition *position, u8 *xCoord, u8 *yCoord);
u8 CheckBattleSubMenuCursorPositionNavigation(const BattleSubMenuCursorPosition *positions, u8 *xCoord1, u8 *yCoord1, u8 *xCoord2, u8 *yCoord2, u8 currentPositionIndex, u8 directionToMove);

#endif // POKEPLATINUM_CURSOR_POSITION_H
