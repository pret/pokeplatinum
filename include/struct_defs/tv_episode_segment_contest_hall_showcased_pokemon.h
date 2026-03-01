#ifndef POKEPLATINUM_TV_EPISODE_SEGMENT_CONTEST_HALL_SHOWCASED_POKEMON_H
#define POKEPLATINUM_TV_EPISODE_SEGMENT_CONTEST_HALL_SHOWCASED_POKEMON_H

typedef struct TVEpisodeSegment_ContestHall_ShowcasedPokemon {
    u8 unk_00;
    u8 padding_01;
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 contestRank;
    u8 contestType;
    u8 contestPlacement;
} TVEpisodeSegment_ContestHall_ShowcasedPokemon;

#endif // POKEPLATINUM_TV_EPISODE_SEGMENT_CONTEST_HALL_SHOWCASED_POKEMON_H
