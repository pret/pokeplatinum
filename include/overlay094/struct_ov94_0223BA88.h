#ifndef POKEPLATINUM_STRUCT_OV94_0223BA88_H
#define POKEPLATINUM_STRUCT_OV94_0223BA88_H

#include "overlay094/struct_ov94_0223BA88_sub1.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"

typedef struct {
    GTSPokemonListingMon pokemon; // pokemon
    GTSPokemonCriteria unk_EC; // species, gender, level
    GTSPokemonRequirements unk_F0;
    u8 unk_F6;
    u8 unused[17];
    s32 unk_108;
    u16 unk_10C[8];
    u16 unk_11C;
    u8 trainerCountry; // trainer country
    u8 trainerRegion; // trainer region
    u8 unk_120;
    s8 exchangedFromRemote; // whether or not the pokemon was exchanged in the remote server (ie: this is the listing that someone traded for your deposited pokemon)
    u8 unk_122;
    u8 trainerLanguage; // trainer language
} GTSPokemonListing;

#endif // POKEPLATINUM_STRUCT_OV94_0223BA88_H
