#ifndef POKEPLATINUM_STRUCT_POKEMON_SUMMARY_H
#define POKEPLATINUM_STRUCT_POKEMON_SUMMARY_H

#include "game_options.h"
#include "struct_defs/chatot_cry.h"

typedef struct PokemonSummary {
    void *monData; //!< Pointer to generic Pokemon data
    Options *options; // unk_04
    const u16 *OTName; // unk_08
    u32 OTID; // unk_0C
    u8 OTGender; // unk_10
    u8 dataType; // unk_11
    u8 mode; // unk_12
    u8 max; // unk_13
    u8 pos; // unk_14
    u8 pageFlag; // unk_15
    u8 selectedSlot; // unk_16
    u8 returnMode; // unk_17
    u16 move; // unk_18

    u8 padding_1A[2];

    u32 dexMode; // unk_1C
    void *ribbons; // unk_20
    void *poffin; // unk_24
    ChatotCry *chatotCry; // unk_28
    BOOL contest; // unk_2C
} PokemonSummary;

#endif // POKEPLATINUM_STRUCT_POKEMON_SUMMARY_H
