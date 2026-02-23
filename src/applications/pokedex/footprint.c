#include "applications/pokedex/footprint.h"

#include "res/pokemon/pokefoot.naix"

enum NarcID GetPokedexFootprintsNarcID(void)
{
    return NARC_INDEX_POKETOOL__POKEFOOT__POKEFOOT;
}

int GetSpeciesFootprintTiles(enum Species species)
{
    return none_footprint_NCGR_lz + species;
}

int GetSharedFootprintPalette(void)
{
    return footprint_NCLR;
}

int GetSharedFootprintCells(void)
{
    return footprint_cell_NCER_lz;
}

int GetSharedFootprintAnims(void)
{
    return footprint_anim_NANR_lz;
}
