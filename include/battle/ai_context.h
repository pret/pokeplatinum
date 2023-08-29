#ifndef POKEPLATINUM_BATTLE_AI_CONTEXT_H
#define POKEPLATINUM_BATTLE_AI_CONTEXT_H

#include "constants/battle.h"
#include "constants/moves.h"

#include "struct_defs/struct_020790C4.h"
#include "struct_decls/struct_itemdata_decl.h"

typedef struct AIContext {
    u8 scriptCursor;
    u8 moveSlot;
    u16 move;

    s8 moveCurPP[4];

    int calcTemp;
    u32 thinkingMask;

    u8 stateFlags;
    u8 thinkingBitShift;
    u8 padding0012;
    u8 padding0013;
    int padding0014; // this does not match with a u32, weird

    u8 moveDamageRolls[LEARNED_MOVES_MAX];
    
    u16 battlerMoves[MAX_BATTLERS][LEARNED_MOVES_MAX];
    u8 battlerAbilities[MAX_BATTLERS];
    u16 battlerHeldItems[MAX_BATTLERS];

    u16 trainerItems[MAX_OPPONENTS][MAX_TRAINER_ITEMS];

    u32 scriptStackPointer[8];
    u8 scriptStackSize;

    u8 trainerItemCounts[MAX_BATTLERS_PER_SIDE];
    u8 attacker;
    u8 defender;
    u8 usedItemType[MAX_BATTLERS_PER_SIDE];
    u8 usedItemCondition[MAX_BATTLERS_PER_SIDE];
    u16 usedItem[MAX_BATTLERS_PER_SIDE];

    u8 selectedTarget[MAX_BATTLERS];

    MoveTable moveTable[NUM_MOVES + 1];
    ItemData *itemTable;

    u16 padding1DD0[4]; // unused
    u16 padding1DD8[4]; // unused
} AIContext;

#endif // POKEPLATINUM_BATTLE_AI_CONTEXT_H
