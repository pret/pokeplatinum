#ifndef POKEPLATINUM_PLSTRING_H
#define POKEPLATINUM_PLSTRING_H

#include "struct_decls/struct_plstring_decl.h"

PLString * PLString_AllocFromHeap(u32 size, u32 heapID);
void PLString_FreeToHeap(PLString * string);
void PLString_Zero(PLString * string);
void PLString_CopyInto(PLString * dest, const PLString * source);
PLString * PLString_CloneUpTo(const PLString * string, u32 size);
void PLString_FromInteger(PLString * string, int integer, u32 numDigits, int mode, int digitSetTouse);
void PLString_FromU64(PLString * string, u64 number, u32 numDigits, int mode, int digitSetToUse);
u64 PLString_ToInteger(const PLString * string, BOOL * param1);
int PLString_IsPrefixOf(const PLString * maybePrefix, const PLString * string);
u32 PLString_GetTerminatorIndex(const PLString * string);
u32 sub_02023C5C(const PLString * string);
void sub_02023C9C(PLString * string0, const PLString * string1, u32 param2);
void PLString_ImportChars(PLString * dest, const u16 * source);
void PLString_ImportCharsUpTo(PLString * dest, const u16 * source, u32 size);
void PLString_ExportCharsUpTo(const PLString * source, u16 * dest, u32 size);
const u16 * PLString_GetCharData(const PLString * string);
void PLString_Concatenate(PLString * dest, const PLString * source);
void PLString_AppendChar(PLString * dest, u16 charToAppend);
BOOL sub_02023EF8(PLString * string);
void sub_02023F10(PLString * string0, PLString * string1);
void PLString_SanitizeAtIndex(PLString * string, int index);

#endif // POKEPLATINUM_PLSTRING_H
