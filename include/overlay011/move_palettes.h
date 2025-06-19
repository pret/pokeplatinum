#ifndef POKEPLATINUM_MOVE_PALETTES_H
#define POKEPLATINUM_MOVE_PALETTES_H

#include "generated/pokemon_types.h"

#include "palette.h"

const u16 *GetMoveTypePalette(int moveType);
void LoadMoveSelectPltt(PaletteData *paletteSys, enum PokemonType moveType, int unused, enum PaletteBufferID bufferID, enum Palette paletteDest);

#endif // POKEPLATINUM_MOVE_PALETTES_H
