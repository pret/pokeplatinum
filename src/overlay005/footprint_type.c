#include "overlay005/footprint_type.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "res/pokemon/species_footprint_types.h"

u16 FootprintType_GetTypeFromSpecies(u16 species)
{
    return sFootprintTypes[species].type;
}

u16 FootprintType_SpeciesHasPrint(u16 species, u16 form)
{
    if (species == SPECIES_GIRATINA && form == 1) {
        return FALSE;
    }

    return sFootprintTypes[species].hasPrint;
}
