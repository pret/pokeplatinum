#ifndef POKEPLATINUM_STRUCT_OV90_021D1750_H
#define POKEPLATINUM_STRUCT_OV90_021D1750_H

typedef struct WifiBattleTowerMatchCandidate {
    u16 trainerName[8];
    u8 padding_10[2];
    u8 country;
    u8 region;
    u8 padding_14[4];
    u16 trainerKey[4];
    union {
        struct {
            u8 isAnonymous : 1;
            u8 anonymousNameIdx : 1;
            u8 : 6;
        };
        u8 unk_20_val2;
    };
    u8 padding_21;
} WifiBattleTowerMatchCandidate;

#endif // POKEPLATINUM_STRUCT_OV90_021D1750_H
