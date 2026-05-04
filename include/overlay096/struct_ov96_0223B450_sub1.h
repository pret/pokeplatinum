#ifndef POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H
#define POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H

#include "constants/string.h"

#include "struct_defs/struct_0202D314.h"

#include "charcode.h"

typedef struct {
    UnkStruct_0202D314 unk_00[3];
    charcode_t name[TRAINER_NAME_LEN + 1];
    u8 version;
    u8 language;
    u8 country;
    u8 region;
    u8 trainerInfoId[4];
    s8 unk_C0[8];
    union {
        struct {
            u8 unused1 : 1;
            u8 gender : 1;
            u8 : 6;
        };
        u8 unused2;
    };
    u8 appearance;
    s8 unk_CA[24];
    u16 unk_E2;
} UnkStruct_ov96_0223B450_sub1;

#endif // POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H
