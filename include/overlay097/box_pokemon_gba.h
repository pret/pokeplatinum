#ifndef POKEPLATINUM_BOX_POKEMON_GBA_H
#define POKEPLATINUM_BOX_POKEMON_GBA_H

#include "overlay097/struct_ov97_02236380_sub1.h"
#include "overlay097/struct_ov97_02236380_sub2.h"
#include "overlay097/struct_ov97_02236380_sub3.h"
#include "overlay097/struct_ov97_02236380_sub4.h"

typedef struct BoxPokemonGBA {
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg:1;
    u8 hasSpecies:1;
    u8 isEgg:1;
    u8 unused:5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;
    u8 secure[sizeof(UnkStruct_ov97_02236380_sub1)
              + sizeof(UnkStruct_ov97_02236380_sub2)
              + sizeof(UnkStruct_ov97_02236380_sub3)
              + sizeof(UnkStruct_ov97_02236380_sub4)];
} BoxPokemonGBA;

#endif // POKEPLATINUM_BOX_POKEMON_GBA_H
