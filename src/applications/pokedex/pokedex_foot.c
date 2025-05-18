#include "applications/pokedex/pokedex_foot.h"

#include <nitro.h>
#include <string.h>

enum NarcID PokedexFoot_NarcID(void)
{
    return NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT;
}

int PokedexFoot_CharIdx(enum Species species)
{
    return 3 + species;
}

int PokedexFoot_PaletteIdx(void)
{
    return 0;
}

int PokedexFoot_CellIdx(void)
{
    return 2;
}

int PokedexFoot_AnimIdx(void)
{
    return 1;
}
