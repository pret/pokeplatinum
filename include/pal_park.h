#ifndef POKEPLATINUM_PAL_PARK_H
#define POKEPLATINUM_PAL_PARK_H

u32 PalPark_GetGBABoxMonData(BoxPokemonGBA *boxMonGBA, int field, u8 * param2);
void PalPark_SetGBABoxPokemonData(BoxPokemonGBA *boxMonGBA, int param1, const u8 * param2);
int PalPark_GBAToDSSpecies(int speciesGBA);
u32 ov97_02236E00(BoxPokemonGBA *boxMonGBA);

#endif // POKEPLATINUM_PAL_PARK_H
