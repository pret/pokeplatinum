#ifndef POKEPLATINUM_BATTLE_MOVE_SELECT_DATA_H
#define POKEPLATINUM_BATTLE_MOVE_SELECT_DATA_H

typedef struct MoveSelectData {
    u16 moveIDs[4];
    u8 currPP[4];
    u8 maxPP[4];
    u8 battlerType;
} MoveSelectData;

#endif // POKEPLATINUM_BATTLE_MOVE_SELECT_DATA_H
