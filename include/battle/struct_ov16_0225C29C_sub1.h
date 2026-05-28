#ifndef POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H
#define POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H

typedef struct TargetMonData {
    u8 partySlot;
    u8 gender : 2;
    u8 isPresent : 1;
    u8 : 5;
    u8 unk_02;
    u8 padding_03;
    s16 curHP;
    u16 maxHP;
} TargetMonData;

#endif // POKEPLATINUM_STRUCT_OV16_0225C29C_SUB1_H
