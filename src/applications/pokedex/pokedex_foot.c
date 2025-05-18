#include "applications/pokedex/pokedex_foot.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

int PokedexFoot_NARC(void)
{
    return NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT;
}

int PokedexFoot_Char(enum Species species)
{
    return 3 + species;
}

int PokedexFoot_Palette(void)
{
    return 0;
}

int PokedexFoot_Cell(void)
{
    return 2;
}

int PokedexFoot_Animation(void)
{
    return 1;
}
