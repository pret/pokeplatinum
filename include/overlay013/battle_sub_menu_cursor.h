#ifndef POKEPLATINUM_BATTLE_SUB_MENU_CURSOR_H
#define POKEPLATINUM_BATTLE_SUB_MENU_CURSOR_H

#include "battle/struct_ov16_0226DC24_decl.h"

#include "grid_menu_cursor_position.h"

#define BATTLE_SUB_MENU_CURSOR_BACK_INDEX        0xfffffffe
#define BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX 0xffffffff

typedef struct BattleSubMenuCursor {
    UnkStruct_ov16_0226DC24 *sprites;
    const GridMenuCursorPosition *positions;
    u8 isVisible;
    u8 currentPositionIndex;
    u8 previousPositionIndex;
    u32 enabledPositionsMask;
} BattleSubMenuCursor;

BattleSubMenuCursor *MakeBattleSubMenuCursor(u32 heapID);
void DeleteBattleSubMenuCursor(BattleSubMenuCursor *cursor);
UnkStruct_ov16_0226DC24 *GetBattleSubMenuCursorSprites(BattleSubMenuCursor *cursor);
u8 IsBattleSubMenuCursorVisible(BattleSubMenuCursor *cursor);
void SetBattleSubMenuCursorVisibility(BattleSubMenuCursor *cursor, u8 isVisible);
void SetBattleSubMenuCursorSprites(BattleSubMenuCursor *cursor, UnkStruct_ov16_0226DC24 *sprites);
void SetBattleSubMenuCursorCurrentPosition(BattleSubMenuCursor *cursor, u8 positionIndex);
void ResetBattleSubMenuCursorCurrentPosition(BattleSubMenuCursor *cursor);
void SetBattleSubMenuCursorPositions(BattleSubMenuCursor *cursor, const GridMenuCursorPosition *positions);
void SetBattleSubMenuCursorEnabledPositionsMask(BattleSubMenuCursor *cursor, u32 mask);
u32 BattleSubMenuCursorTick(BattleSubMenuCursor *cursor);

#endif // POKEPLATINUM_BATTLE_SUB_MENU_CURSOR_H
