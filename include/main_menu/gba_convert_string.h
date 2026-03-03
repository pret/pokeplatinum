#ifndef POKEPLATINUM_GBA_CONVERT_STRING_H
#define POKEPLATINUM_GBA_CONVERT_STRING_H

#include "charcode.h"

BOOL GBA_ConvertStringToDS(const u8 *src, charcode_t *dst, u32 length, u32 language);

#endif // POKEPLATINUM_GBA_CONVERT_STRING_H
