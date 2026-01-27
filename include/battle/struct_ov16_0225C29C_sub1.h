#ifndef POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H
#define POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H

typedef struct {
    u8 partySlot;
    u8 gender : 2;
    u8 unk_01_2 : 1;
    u8 : 5;
    u8 unk_02;
    u8 padding_03;
    s16 curHP;
    u16 maxHP;
} UnkStruct_ov16_0225C29C_sub1;

#endif // POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H
