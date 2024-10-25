#ifndef POKEPLATINUM_CHARCODE_UTIL_H
#define POKEPLATINUM_CHARCODE_UTIL_H

u16 *CharCode_Copy(u16 *param0, const u16 *param1);
u16 *CharCode_CopyNumChars(u16 *param0, const u16 *param1, u32 param2);
u32 CharCode_Length(const u16 *param0);
BOOL CharCode_Compare(const u16 *param0, const u16 *param1);
BOOL CharCode_CompareNumChars(const u16 *param0, const u16 *param1, u32 param2);
u16 *CharCode_FillWith(u16 *param0, u16 param1, u32 param2);
u16 *CharCode_FillWithEOS(u16 *param0, u32 param1);
u16 *CharCode_FromInt(u16 *param0, s32 param1, u32 param2, u32 param3);

#endif // POKEPLATINUM_CHARCODE_UTIL_H
