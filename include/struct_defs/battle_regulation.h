#ifndef POKEPLATINUM_STRUCT_BATTLE_REGULATION_H
#define POKEPLATINUM_STRUCT_BATTLE_REGULATION_H

#define BATTLE_REGULATION_NAME_LENGTH 12

typedef struct {
    u16 name[BATTLE_REGULATION_NAME_LENGTH];
    u16 maxTotalLevel;
    u8 teamSize;
    u8 maxLevel;
    s8 heightRestriction;
    s8 weightRestriction;
    u8 speciesRestriction : 1;
    u8 itemRestriction : 1;
    u8 speciesUniqueness : 1;
    u8 itemUniqueness : 1;
    u8 moveRestrictions : 1;
} BattleRegulation;

#endif // POKEPLATINUM_STRUCT_BATTLE_REGULATION_H
