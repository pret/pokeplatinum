#ifndef POKEPLATINUM_MAIN_MENU_GBA_POKEMON_H
#define POKEPLATINUM_MAIN_MENU_GBA_POKEMON_H

#include "struct_defs/pokemon.h"

#include "main_menu/gba_save.h"

u32 GBABoxPokemon_GetData(GBABoxPokemon *gbaBoxMon, int field, u8 *data);
void GBABoxPokemon_SetData(GBABoxPokemon *gbaBoxMon, int field, const u8 *dataArg);
int GBAPokemon_ConvertSpeciesToDS(int species);
u32 GBABoxPokemon_GetLevel(GBABoxPokemon *gbaBoxMon);
void GBABoxPokemon_ToBoxMon(GBABoxPokemon *gbaBoxMon, BoxPokemon *boxMon);

#endif // POKEPLATINUM_MAIN_MENU_GBA_POKEMON_H
