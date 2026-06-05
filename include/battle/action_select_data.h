#ifndef POKEPLATINUM_BATTLE_ACTION_SELECT_DATA_H
#define POKEPLATINUM_BATTLE_ACTION_SELECT_DATA_H

typedef struct {
    u8 battlerType;
    u8 battler;
    u8 partySlot;
    u8 ballStatusBattler;
    s16 curHp;
    u16 maxHp;
    u8 isWaitingForPartner;
} ActionSelectData;

#endif // POKEPLATINUM_BATTLE_ACTION_SELECT_DATA_H
