#ifndef POKEPLATINUM_OV11_0221F800_H
#define POKEPLATINUM_OV11_0221F800_H

#include "palette.h"

const u16 *GetPaletteSourceFromMoveType(int moveType);
void ov11_0221F81C(PaletteData *paletteSys, int moveType, int unused, int bufferID, int paletteIndex);

#endif // POKEPLATINUM_OV11_0221F800_H
