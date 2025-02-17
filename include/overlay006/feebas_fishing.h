#ifndef POKEPLATINUM_FEEBAS_FISHING_H
#define POKEPLATINUM_FEEBAS_FISHING_H

#include "field/field_system_decl.h"

BOOL PlayerAvatar_IsFacingFeebasTile(FieldSystem *fieldSystem);
void LoadFeebasLevelRange(u8 *maxLevel, u8 *minLevel);
void LoadFeebasFromNARC(int *param0);

#endif // POKEPLATINUM_FEEBAS_FISHING_H
