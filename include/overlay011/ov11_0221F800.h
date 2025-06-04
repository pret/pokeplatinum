#ifndef POKEPLATINUM_OV11_0221F800_H
#define POKEPLATINUM_OV11_0221F800_H

#include "palette.h"

const u16 *GetMoveTypePalette(int moveType);
void LoadMoveSelectPltt(PaletteData *paletteSys, int moveType, int unused, int bufferID, int paletteDest);

#endif // POKEPLATINUM_OV11_0221F800_H
