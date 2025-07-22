#include "overlay013/battle_sub_menu_cursor.h"

#include "battle/ov16_0226DB7C.h"

#include "heap.h"
#include "sound_playback.h"
#include "system.h"

#define CURSOR_STARTING_INDEX      0
#define NULL_POSITION_INDEX        0xff
#define ALL_POSITIONS_ENABLED_MASK 0xffffffff

BattleSubMenuCursor *MakeBattleSubMenuCursor(u32 heapID) {
    BattleSubMenuCursor *cursor = Heap_AllocFromHeap(heapID, sizeof(BattleSubMenuCursor));
    memset(cursor, 0, sizeof(BattleSubMenuCursor));
    return cursor;
}

void DeleteBattleSubMenuCursor(BattleSubMenuCursor *cursor) {
    Heap_Free(cursor);
}

UnkStruct_ov16_0226DC24 *GetBattleSubMenuCursorSprites(BattleSubMenuCursor *cursor) {
    return cursor->sprites;
}

u8 IsBattleSubMenuCursorVisible(BattleSubMenuCursor *cursor) {
    return cursor->isVisible;
}

void SetBattleSubMenuCursorVisibility(BattleSubMenuCursor *cursor, u8 isVisible) {
    cursor->isVisible = isVisible;
}

void SetBattleSubMenuCursorSprites(BattleSubMenuCursor *cursor, UnkStruct_ov16_0226DC24 *sprites) {
    cursor->sprites = sprites;
}

void SetBattleSubMenuCursorCurrentPosition(BattleSubMenuCursor *cursor, u8 positionIndex) {
    cursor->currentPositionIndex = positionIndex;

    if (cursor->isVisible == TRUE) {
        ov16_0226DD7C(cursor->sprites, cursor->positions[cursor->currentPositionIndex].xCoord1, cursor->positions[cursor->currentPositionIndex].xCoord2, cursor->positions[cursor->currentPositionIndex].yCoord1, cursor->positions[cursor->currentPositionIndex].yCoord2);
    }
}

void ResetBattleSubMenuCursorCurrentPosition(BattleSubMenuCursor *cursor) {
    cursor->currentPositionIndex = CURSOR_STARTING_INDEX;
    cursor->previousPositionIndex = NULL_POSITION_INDEX;
}

void SetBattleSubMenuCursorPositions(BattleSubMenuCursor *cursor, const GridMenuCursorPosition *positions) {
    ResetBattleSubMenuCursorCurrentPosition(cursor);

    cursor->positions = positions;
    cursor->enabledPositionsMask = ALL_POSITIONS_ENABLED_MASK;

    if (cursor->isVisible == TRUE) {
        ov16_0226DD7C(cursor->sprites, cursor->positions[CURSOR_STARTING_INDEX].xCoord1, cursor->positions[CURSOR_STARTING_INDEX].xCoord2, cursor->positions[CURSOR_STARTING_INDEX].yCoord1, cursor->positions[CURSOR_STARTING_INDEX].yCoord2);
    }
}

void SetBattleSubMenuCursorEnabledPositionsMask(BattleSubMenuCursor *cursor, u32 mask) {
    cursor->enabledPositionsMask = mask;
}

static u8 IsCursorVisible(BattleSubMenuCursor *cursor) {
    if (cursor->isVisible == TRUE) {
        return TRUE;
    }

    if (JOY_NEW(PAD_KEY | PAD_BUTTON_B | PAD_BUTTON_A)) {
        cursor->isVisible = TRUE;

        ov16_0226DD7C(cursor->sprites, cursor->positions[cursor->currentPositionIndex].xCoord1, cursor->positions[cursor->currentPositionIndex].xCoord2, cursor->positions[cursor->currentPositionIndex].yCoord1, cursor->positions[cursor->currentPositionIndex].yCoord2);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return FALSE;
}

static BOOL CheckShouldStorePreviousPosition(const GridMenuCursorPosition *newPosition, u8 incomingDirection) {
    switch (incomingDirection) {
    case GRID_MENU_CURSOR_POSITION_DIRECTION_UP:
        if (newPosition->downIndex & BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK) {
            return TRUE;
        }
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN:
        if (newPosition->upIndex & BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK) {
            return TRUE;
        }
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT:
        if (newPosition->rightIndex & BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK) {
            return TRUE;
        }
        break;
    case GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT:
        if (newPosition->leftIndex & BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

u32 BattleSubMenuCursorTick(BattleSubMenuCursor *cursor) {
    u8 nextPositionIndex;
    u8 pressedDirection;

    if (IsCursorVisible(cursor) == FALSE) {
        return BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        nextPositionIndex = GridMenuCursor_CheckNavigation(cursor->positions, NULL, NULL, NULL, NULL, cursor->currentPositionIndex, GRID_MENU_CURSOR_POSITION_DIRECTION_UP);
        pressedDirection = GRID_MENU_CURSOR_POSITION_DIRECTION_UP;
    } else if (JOY_NEW(PAD_KEY_DOWN)) {
        nextPositionIndex = GridMenuCursor_CheckNavigation(cursor->positions, NULL, NULL, NULL, NULL, cursor->currentPositionIndex, GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN);
        pressedDirection = GRID_MENU_CURSOR_POSITION_DIRECTION_DOWN;
    } else if (JOY_NEW(PAD_KEY_LEFT)) {
        nextPositionIndex = GridMenuCursor_CheckNavigation(cursor->positions, NULL, NULL, NULL, NULL, cursor->currentPositionIndex, GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT);
        pressedDirection = GRID_MENU_CURSOR_POSITION_DIRECTION_LEFT;
    } else if (JOY_NEW(PAD_KEY_RIGHT)) {
        nextPositionIndex = GridMenuCursor_CheckNavigation(cursor->positions, NULL, NULL, NULL, NULL, cursor->currentPositionIndex, GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT);
        pressedDirection = GRID_MENU_CURSOR_POSITION_DIRECTION_RIGHT;
    } else {
        nextPositionIndex = BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX;
    }

    if (nextPositionIndex != NULL_POSITION_INDEX) {
        u8 nextPositionIsEnabled = TRUE;

        if (nextPositionIndex & BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK) {
            if (cursor->previousPositionIndex != NULL_POSITION_INDEX) {
                nextPositionIndex = cursor->previousPositionIndex;
            } else {
                nextPositionIndex ^= BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK;
            }
        }

        while (TRUE) {
            u8 replacementPositionIndex;

            if (cursor->enabledPositionsMask & (1 << nextPositionIndex)) {
                break;
            }

            nextPositionIsEnabled = FALSE;
            replacementPositionIndex = GridMenuCursor_CheckNavigation(cursor->positions, NULL, NULL, NULL, NULL, nextPositionIndex, pressedDirection) & (NULL_POSITION_INDEX ^ BATTLE_SUB_MENU_CURSOR_GO_TO_PREVIOUS_POSITION_INDEX_MASK);

            if ((replacementPositionIndex == nextPositionIndex) || (replacementPositionIndex == cursor->currentPositionIndex)) {
                nextPositionIndex = cursor->currentPositionIndex;
                break;
            }

            nextPositionIndex = replacementPositionIndex;
        }

        if (cursor->currentPositionIndex != nextPositionIndex) {
            u8 x1, y1, x2, y2;

            GridMenuCursor_GetFirstCoords(&cursor->positions[nextPositionIndex], &x1, &y1);
            GridMenuCursor_GetSecondCoords(&cursor->positions[nextPositionIndex], &x2, &y2);

            if ((CheckShouldStorePreviousPosition(&cursor->positions[nextPositionIndex], pressedDirection) == TRUE) && (nextPositionIsEnabled != FALSE)) {
                cursor->previousPositionIndex = cursor->currentPositionIndex;
            } else {
                cursor->previousPositionIndex = NULL_POSITION_INDEX;
            }

            cursor->currentPositionIndex = nextPositionIndex;

            ov16_0226DD7C(cursor->sprites, x1, x2, y1, y2);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        return BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        return cursor->currentPositionIndex;
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        return BATTLE_SUB_MENU_CURSOR_BACK_INDEX;
    }

    return BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX;
}
