#ifndef POKEPLATINUM_STRUCT_0202E810_H
#define POKEPLATINUM_STRUCT_0202E810_H

typedef struct {
    u8 unk_00;
    u8 padding_01;
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 hasNickname;
    charcode_t nickname[MON_NAME_LEN + 1];
} UnkStruct_0202E810;

#endif // POKEPLATINUM_STRUCT_0202E810_H
