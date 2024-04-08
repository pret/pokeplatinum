#ifndef POKEPLATINUM_CHARCODE_H
#define POKEPLATINUM_CHARCODE_H

typedef u16 charcode_t;

charcode_t *CharCode_SkipFormatArg(const charcode_t *param0);
u32 CharCode_FormatArgType(const charcode_t *param0);
BOOL CharCode_IsFormatArg(const charcode_t *param0);
u32 CharCode_FormatArgParam(const charcode_t *param0, u32 param1);

#endif // POKEPLATINUM_CHARCODE_H
