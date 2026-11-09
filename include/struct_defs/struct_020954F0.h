#ifndef POKEPLATINUM_STRUCT_020954F0_H
#define POKEPLATINUM_STRUCT_020954F0_H

typedef struct ContestJudge {
    u16 judgeNameMessageID;
    u8 padding_02[2];
    u16 coolRole : 2;
    u16 beautyRole : 2;
    u16 cuteRole : 2;
    u16 smartRole : 2;
    u16 toughRole : 2;
    u16 rank : 2;
    u16 : 4;
    u16 padding_06;
} ContestJudge;

#endif // POKEPLATINUM_STRUCT_020954F0_H
