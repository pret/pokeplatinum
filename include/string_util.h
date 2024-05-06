#ifndef POKEPLATINUM_STRING_UTIL_H
#define POKEPLATINUM_STRING_UTIL_H


#include <nnsys.h>

#define MAX_STRING_COPY_LEN    256
#define ASCII_LINE_FEED        0xA
#define ASCII_CARRIAGE_RETURN  0xD

int StringUtil_Length(char *str);
char* StringUtil_CopyToTerminator(char *src, char *dst, char terminator);
int StringUtil_ConvertToInt(char *str);
void StringUtil_SetResourceName(NNSG3dResName *resource, const char *src);
BOOL StringUtil_IsJapaneseChar(u16 character);

#endif // POKEPLATINUM_STRING_UTIL_H
