#ifndef POKEPLATINUM_STRUCT_02007C7C_SUB2_H
#define POKEPLATINUM_STRUCT_02007C7C_SUB2_H

typedef struct {
    u16 plttSlot : 2;
    u16 shouldAdjustX : 1;
    u16 shouldAdjustY : 1;
    u16 isAffine : 1;
    u16 size : 2;
    u16 padding_00 : 9;
    s8 height;
    u8 padding_03;
    s16 x;
    s16 y;
    s16 xOffset;
    s16 yOffset;
} PokemonSpriteShadow;

#endif // POKEPLATINUM_STRUCT_02007C7C_SUB2_H
