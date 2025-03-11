#ifndef POKEPLATINUM_RIBBON_H
#define POKEPLATINUM_RIBBON_H

#include "generated/ribbons.h"

enum RibbonDataField {
    RIBBON_DATA_RIBBON_ID = 0,
    RIBBON_DATA_SPRITE_ID,
    RIBBON_DATA_PALETTE_NUM,
    RIBBON_DATA_NAME_ID,
    RIBBON_DATA_DESCRIPTION_ID,
};

u32 Ribbon_GetData(u8 ribbonNum, enum RibbonDataField field);
u32 PokemonSummaryScreen_GetRibbonDescriptionID(u8 *ribbons, u8 ribbonNum);
u8 Ribbon_TryGetSpecialDescriptionID(u8 ribbonNum);
u16 Ribbon_RibbonIDToNameID(u32 ribbonID);

#endif // POKEPLATINUM_RIBBON_H
