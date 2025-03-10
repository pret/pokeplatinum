#ifndef POKEPLATINUM_STRUCT_PC_COMPARE_MON_H
#define POKEPLATINUM_STRUCT_PC_COMPARE_MON_H

#include "strbuf.h"

typedef struct {
    void *mon;
    u16 species;
    u8 isEgg;
    u8 form;
    u16 level;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 spAttack;
    u16 spDefense;
    u16 speed;
    u16 cool;
    u16 beauty;
    u16 cute;
    u16 smart;
    u16 tough;
    u16 moves[4];
    Strbuf *monName;
    Strbuf *nature;
} PCCompareMon;
#endif // POKEPLATINUM_STRUCT_PC_COMPARE_MON_H
