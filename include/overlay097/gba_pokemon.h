#ifndef POKEPLATINUM_OV97_GBA_POKEMON_H
#define POKEPLATINUM_OV97_GBA_POKEMON_H

#include "overlay097/gba_save.h"

u32 GBABoxPokemon_GetData(GBABoxPokemon *gbaBoxMon, int field, u8 *data);
void GBABoxPokemon_SetData(GBABoxPokemon *gbaBoxMon, int field, const u8 *dataArg);
int GBAPokemon_ConvertSpeciesToDS(int species);
u32 GBABoxPokemon_GetLevel(GBABoxPokemon *gbaBoxMon);

#endif // POKEPLATINUM_OV97_GBA_POKEMON_H
