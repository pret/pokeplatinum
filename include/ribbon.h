#ifndef POKEPLATINUM_RIBBON_H
#define POKEPLATINUM_RIBBON_H

#include "generated/ribbons.h"

enum RibbonDataField {
    RIBBON_DATA_MON_DATA_PARAM = 0,
    RIBBON_DATA_SPRITE_ID,
    RIBBON_DATA_PALETTE_NUM,
    RIBBON_DATA_NAME_ID,
    RIBBON_DATA_DESCRIPTION_ID,
};

u32 Ribbon_GetData(u8 ribbonID, enum RibbonDataField field);
u32 PokemonSummaryScreen_GetRibbonDescriptionID(u8 *ribbons, u8 ribbonID);
u8 Ribbon_TryGetSpecialDescriptionID(u8 ribbonID);
u16 Ribbon_MonDataParamToNameID(u32 monDataParam);

#endif // POKEPLATINUM_RIBBON_H
