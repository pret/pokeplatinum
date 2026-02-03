#ifndef POKEPLATINUM_STRUCT_OV16_02265BBC_H
#define POKEPLATINUM_STRUCT_OV16_02265BBC_H

typedef struct {
    u8 command;
    u8 unk_01;
    u16 move;
    s32 damage;
    u16 power;
    u16 effectChance;
    u16 friendship;
    u16 isSubstitute : 1;
    u16 transformed : 1;
    u16 : 14;
    u32 fieldConditions;
    u16 attacker;
    u16 defender;
    u16 species[4];
    u8 genders[4];
    u8 isShiny[4];
    u8 formNums[4];
    u32 personalities[4];
    u32 moveEffectMasks[4];
    int unk_4C;
    int unk_50;
    int terrain;
} MoveAnimation;

#endif // POKEPLATINUM_STRUCT_OV16_02265BBC_H
