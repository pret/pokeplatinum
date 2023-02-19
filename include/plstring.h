#ifndef POKEPLATINUM_PLSTRING_H
#define POKEPLATINUM_PLSTRING_H

#include "struct_decls/struct_plstring_decl.h"

typedef enum {
    NUMBER_PADDING_MODE_NONE,       // left-justified strings; no padding
    NUMBER_PADDING_MODE_SPACES,     // right-justified strings, padded with spaces to fit a certain length
    NUMBER_PADDING_MODE_ZEROES      // right-justified strings, padded with zeroes to fit a certain length
} NUMBER_PADDING_MODE;

typedef enum {
    CHARACTER_WIDTH_FULL,
    CHARACTER_WIDTH_HALF
} CHARACTER_WIDTH;

PLString * PLString_New(u32 size, u32 heapID);
void PLString_Free(PLString * string);
void PLString_Clear(PLString * string);
void PLString_Copy(PLString * dst, const PLString * src);
PLString * PLString_Clone(const PLString * src, u32 heapID);
void PLString_FromInt(PLString * dst, int num, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth);
void PLString_FromInt64(PLString * dst, u64 num, u32 len, NUMBER_PADDING_MODE paddingMode, CHARACTER_WIDTH charWidth);
u64 PLString_ToInt64(const PLString * src, BOOL * successful);
int PLString_Compare(const PLString * this, const PLString * that);
u32 PLString_GetLength(const PLString * string);
u32 PLString_CountLines(const PLString * string);
void PLString_FillWithLine(PLString * dst, const PLString * src, u32 i);
void PLString_FillWithChars(PLString * dst, const PLChar * src);
void PLString_FillWithCharsLimit(PLString * dst, const PLChar * src, u32 limit);
void PLString_Dump(const PLString * src, PLChar * dst, u32 len);
const PLChar * PLString_GetBuffer(const PLString * string);
void PLString_Concat(PLString * dst, const PLString * src);
void PLString_Append(PLString * dst, PLChar c);
BOOL PLString_IsCompressed(PLString * string);
void PLString_ConcatCompressed(PLString * dst, PLString * src);
void PLString_CapitalizeAt(PLString * string, int i);

#endif // POKEPLATINUM_PLSTRING_H
