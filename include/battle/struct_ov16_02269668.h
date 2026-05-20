#ifndef POKEPLATINUM_STRUCT_ACTION_SELECT_DATA_H
#define POKEPLATINUM_STRUCT_ACTION_SELECT_DATA_H

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s16 unk_04;
    u16 unk_06;
    u8 isWaitingForPartner;
    u8 unk_09[3];
} ActionSelectData;

#endif // POKEPLATINUM_STRUCT_ACTION_SELECT_DATA_H
