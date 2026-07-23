#ifndef POKEPLATINUM_STRUCT_0202FF58_H
#define POKEPLATINUM_STRUCT_0202FF58_H

typedef struct {
    u8 unk_00_0 : 1;
    u8 unk_00_1 : 3; // likely challenge type
    u8 unk_00_4 : 1;
    u8 unused: 3;
    u8 unk_01; // likely battle num
    u16 unused;
    u16 unk_04[14]; // almost certainly trainer ids
    u16 unk_20[4]; // party data???
    u8 unk_28[4];
    u32 unk_2C[4];
    u16 unk_3C[4];
    u8 unk_44[4];
    u32 unk_48[4];
} UnkStruct_0202FF58;

#endif // POKEPLATINUM_STRUCT_0202FF58_H
