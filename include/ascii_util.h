#ifndef POKEPLATINUM_ASCII_UTIL_H
#define POKEPLATINUM_ASCII_UTIL_H

#include <nnsys.h>

#include "charcode.h"

#define MAX_STRING_COPY_LEN 256

int Ascii_Length(char *str);
char *Ascii_CopyToTerminator(char *src, char *dst, char terminator);
int Ascii_ConvertToInt(char *str);
void Ascii_SetResourceName(NNSG3dResName *resource, const char *src);
BOOL IsFullWidthChar(charcode_t character);

#endif // POKEPLATINUM_ASCII_UTIL_H
