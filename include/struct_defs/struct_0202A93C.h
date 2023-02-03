#ifndef POKEPLATINUM_STRUCT_0202A93C_H
#define POKEPLATINUM_STRUCT_0202A93C_H

typedef struct {
    union {
        struct {
            u8 flavor;
            u8 spiciness;
            u8 dryness;
            u8 sweetness;
            u8 bitterness;
            u8 sourness;
            u8 val1_06;
            u8 dummy;
        };
        u8 attributes[8];
    };
} Poffin;

#endif // POKEPLATINUM_STRUCT_0202A93C_H
