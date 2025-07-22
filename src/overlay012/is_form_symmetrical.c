#include "overlay012/is_form_symmetrical.h"

#include <nitro.h>
#include <string.h>

#include "constants/species.h"

BOOL IsFormSymmetrical(u32 species, u32 formId) {
    switch (species) {
    case SPECIES_STARYU:
    case SPECIES_ELECTABUZZ:
    case SPECIES_CROCONAW:
    case SPECIES_UNOWN:
    case SPECIES_SNEASEL:
    case SPECIES_ROSELIA:
    case SPECIES_ZANGOOSE:
    case SPECIES_ABSOL:
    case SPECIES_BUDEW:
    case SPECIES_ROSERADE:
    case SPECIES_MAGMORTAR:
    case SPECIES_TORTERRA:
    case SPECIES_TOGEKISS:
    case SPECIES_KINGLER:
        return FALSE;
    case SPECIES_SHAYMIN:
        if (formId == 1) {
            return FALSE;
        }
        break;
    }

    return TRUE;
}
