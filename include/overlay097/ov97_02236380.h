#ifndef POKEPLATINUM_OV97_02236380_H
#define POKEPLATINUM_OV97_02236380_H

#include "overlay097/box_pokemon_gba.h"

u32 GetGBABoxMonData(BoxPokemonGBA *boxMon, int field, u8 *data);
void SetGBABoxMonData(BoxPokemonGBA *boxMon, int field, const u8 *dataArg);
int ConvertGBASpeciesToDS(int species);
u32 GetBoxMonGBALevel(BoxPokemonGBA *boxMonGBA);

#endif // POKEPLATINUM_OV97_02236380_H
