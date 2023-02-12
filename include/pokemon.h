#ifndef POKEPLATINUM_POKEMON_H
#define POKEPLATINUM_POKEMON_H

#define NUM_UNOWN_FORMS 28

#define GET_UNOWN_LETTER(personality) ((   \
      (((personality) & 0x03000000) >> 18) \
    | (((personality) & 0x00030000) >> 12) \
    | (((personality) & 0x00000300) >> 6)  \
    | (((personality) & 0x00000003) >> 0)  \
) % NUM_UNOWN_FORMS)

#endif // POKEPLATINUM_POKEMON_H
