#ifndef POKEPLATINUM_POKEMON_ICON_H
#define POKEPLATINUM_POKEMON_ICON_H

#include "pokemon.h"

u32 BoxPokemon_IconSpriteIndex(const BoxPokemon * param0);
u32 Pokemon_IconSpriteIndex(Pokemon * param0);
u32 PokeIconSpriteIndex(u32 param0, u32 param1, u32 param2);
u16 BoxPokemon_IconFormOffset(const BoxPokemon * param0);
const u8 PokeIconPaletteIndex(u32 param0, u32 param1, u32 param2);
const u8 BoxPokemon_IconPaletteIndex(const BoxPokemon * param0);
const u8 Pokemon_IconPaletteIndex(Pokemon * param0);
u32 PokeIconPalettesFileIndex(void);
u32 PokeIconCellsFileIndex(void);
u32 PokeIcon32KCellsFileIndex(void);
u32 PokeIcon64KCellsFileIndex(void);
u32 PokeIconAnimationFileIndex(void);
u32 PokeIcon32KAnimationFileIndex(void);
u32 PokeIcon64KAnimationFileIndex(void);

#endif // POKEPLATINUM_POKEMON_ICON_H
