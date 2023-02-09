#ifndef POKEPLATINUM_STRUCT_OV16_0225C168_H
#define POKEPLATINUM_STRUCT_OV16_0225C168_H

typedef struct {
    u8 unk_00;
    u8 unk_01_0    : 2;
    u8 unk_01_2    : 1;
    u8 unk_01_3    : 5;
    u16 species;
    u32 unk_04; //Personality
    int unk_08;
    u16 unk_0C[4];
    u16 unk_14[4];
    u16 unk_1C[4];
    u16 unk_24[11];
    u8 padding_3A[2];
} UnkStruct_ov16_0225C168;

#endif // POKEPLATINUM_STRUCT_OV16_0225C168_H
