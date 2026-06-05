#ifndef POKEPLATINUM_BATTLE_TARGET_MON_DATA_H
#define POKEPLATINUM_BATTLE_TARGET_MON_DATA_H

typedef struct TargetMonData {
    u8 partySlot;
    u8 gender : 2;
    u8 isPresent : 1;
    u8 : 5;
    u8 stockStatus;
    u8 padding_03;
    s16 curHP;
    u16 maxHP;
} TargetMonData;

#endif // POKEPLATINUM_BATTLE_TARGET_MON_DATA_H
