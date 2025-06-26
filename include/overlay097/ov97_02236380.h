#ifndef POKEPLATINUM_OV97_02236380_H
#define POKEPLATINUM_OV97_02236380_H

#include "overlay097/gba_save.h"

u32 GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 *data);
void SetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, const u8 *dataArg);
int ConvertGBASpeciesToDS(int species);
u32 GetBoxMonGBALevel(BoxPokemonGBA *boxMonGBA);

#endif // POKEPLATINUM_OV97_02236380_H
