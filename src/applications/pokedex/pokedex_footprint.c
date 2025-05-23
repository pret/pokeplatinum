#include "applications/pokedex/pokedex_footprint.h"

#include "res/pokemon/pokefoot.naix"

enum NarcID GetPokedexFootprintsNarcID(void)
{
    return NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT;
}

int GetSpeciesFootprintTiles(enum Species species)
{
    return footprint_none_NCGR_lz + species;
}

int GetSharedFootprintPalette(void)
{
    return footprint_NCLR;
}

int GetSharedFootprintCells(void)
{
    return footprint_NCER_lz;
}

int GetSharedFootprintAnims(void)
{
    return footprint_NANR_lz;
}
