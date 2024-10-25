#ifndef POKEPLATINUM_CHARCODE_UTIL_H
#define POKEPLATINUM_CHARCODE_UTIL_H

#include "charcode.h"
#include "strbuf.h"

charcode_t *CharCode_Copy(charcode_t *dst, const charcode_t *src);
charcode_t *CharCode_CopyNumChars(charcode_t *dst, const charcode_t *src, u32 num);
u32 CharCode_Length(const charcode_t *str);
BOOL CharCode_Compare(const charcode_t *str1, const charcode_t *str2);
BOOL CharCode_CompareNumChars(const charcode_t *str1, const charcode_t *str2, u32 num);
charcode_t *CharCode_FillWith(charcode_t *str, charcode_t fill, u32 num);
charcode_t *CharCode_FillWithEOS(charcode_t *str, u32 num);
charcode_t *CharCode_FromInt(charcode_t *str, s32 i, enum PaddingMode paddingMode, u32 digits);

#endif // POKEPLATINUM_CHARCODE_UTIL_H
