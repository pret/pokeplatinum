#ifndef POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA
#define POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA

typedef struct BattleFrontierPokemonData {
    u16 species;
    u16 moves[4];
    u8 evFlags;
    u8 nature;
    u16 item;
    u16 form;
} BattleFrontierPokemonData;

#endif // POKEPLATINUM_BATTLE_FRONTIER_POKEMON_DATA
