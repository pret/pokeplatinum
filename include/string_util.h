#ifndef POKEPLATINUM_STRING_UTIL_H
#define POKEPLATINUM_STRING_UTIL_H


#include <nnsys.h>

#define MAX_STRING_COPY_LEN    256
#define ASCII_LINE_FEED        0xA
#define ASCII_CARRIAGE_RETURN  0xD

int sub_0201E0A4 (char *str);
char* sub_0201E0B8 (char *src, char *dst, char terminator);
int sub_0201E0FC (char *str);
void sub_0201E140 (NNSG3dResName *resource, const char *src);
BOOL sub_0201E17C (u16 character);

#endif // POKEPLATINUM_STRING_UTIL_H
