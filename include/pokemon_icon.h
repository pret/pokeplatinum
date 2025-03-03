#ifndef POKEPLATINUM_POKEMON_ICON_H
#define POKEPLATINUM_POKEMON_ICON_H

#include "pokemon.h"

/**
 * @brief Get the index of the sprite-tiles file used for a given BoxPokemon.
 *
 * @param mon
 * @return Index of the sprite-tiles file for this Pokemon in pl_poke_icon.narc
 */
u32 BoxPokemon_IconSpriteIndex(const BoxPokemon *boxMon);

/**
 * @brief Get the index of the sprite-tiles file used for a given Pokemon.
 *
 * @param mon
 * @return Index of the sprite-tiles file for this Pokemon in pl_poke_icon.narc
 */
u32 Pokemon_IconSpriteIndex(Pokemon *mon);

/**
 * @brief Get the index of the sprite-tiles file used for a given combination
 * of species+form and whether or not the Pokemon is in an egg.
 *
 * @param species
 * @param isEgg
 * @param form
 * @return Index of the sprite-tiles file for the given tuple in pl_poke_icon.narc
 */
u32 PokeIconSpriteIndex(u32 species, u32 isEgg, u32 form);

/**
 * @brief Get the form offset for a given BoxPokemon's icon.
 *
 * In essence, this is just a nice wrapper around BoxPokemon_GetForm for species
 * known to have alternate forms (visual or mechanical).
 *
 * @param mon
 * @return Form offset
 */
u16 BoxPokemon_IconFormOffset(const BoxPokemon *boxMon);

/**
 * @brief Get the index of the palette used by a given combination of species+form
 * and whether or not the Pokemon is in an egg.
 *
 * @param species
 * @param form
 * @param isEgg
 * @return Index in the shared palette file for all Pokemon icons.
 */
const u8 PokeIconPaletteIndex(u32 species, u32 form, u32 isEgg);

/**
 * @brief Get the index of the palette used by a given BoxPokemon.
 *
 * @param mon
 * @return Index in the shared palette file for all Pokemon icons.
 */
const u8 BoxPokemon_IconPaletteIndex(const BoxPokemon *boxMon);

/**
 * @brief Get the index of the palette used by a given Pokemon.
 *
 * @param mon
 * @return Index in the shared palette file for all Pokemon icons.
 */
const u8 Pokemon_IconPaletteIndex(Pokemon *mon);

/**
 * @brief Get the file-index of the shared palettes file in pl_poke_icon.narc.
 *
 * @return File-index of the shared palettes file
 */
u32 PokeIconPalettesFileIndex(void);

/**
 * @brief Get the file-index of the shared cells file in pl_poke_icon.narc.
 *
 * @return File-index of the shared cells file
 */
u32 PokeIconCellsFileIndex(void);

/**
 * @brief Get the file-index of the shared 32K cells file in pl_poke_icon.narc.
 *
 * @return File-index of the shared cells file
 */
u32 PokeIcon32KCellsFileIndex(void);

/**
 * @brief Get the file-index of the shared 64K cells file in pl_poke_icon.narc.
 *
 * @return File-index of the shared cells file
 */
u32 PokeIcon64KCellsFileIndex(void);

/**
 * @brief Get the file-index of the shared animation file in pl_poke_icon.narc.
 *
 * @return File-index of the shared animation file
 */
u32 PokeIconAnimationFileIndex(void);

/**
 * @brief Get the file-index of the shared 32K animation file in
 * pl_poke_icon.narc.
 *
 * @return File-index of the shared 32K animation file
 */
u32 PokeIcon32KAnimationFileIndex(void);

/**
 * @brief Get the file-index of the shared 64K animation file in
 * pl_poke_icon.narc.
 *
 * @return File-index of the shared 64K animation file
 */
u32 PokeIcon64KAnimationFileIndex(void);

#endif // POKEPLATINUM_POKEMON_ICON_H
