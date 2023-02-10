#ifndef POKEPLATINUM_PAL_PARK_H
#define POKEPLATINUM_PAL_PARK_H

#include "overlay097/struct_ov97_0223685C.h"

u32 PalPark_GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 * param2);
void ov97_02236CA4(BoxPokemonGBA *boxMonGBA, int param1, const u8 * param2);
int PalPark_GBAToDSSpecies(int speciesGBA);
u32 ov97_02236E00(BoxPokemonGBA *boxMonGBA);

#endif // POKEPLATINUM_PAL_PARK_H
