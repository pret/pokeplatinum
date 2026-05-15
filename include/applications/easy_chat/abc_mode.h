#ifndef POKEPLATINUM_APPLICATIONS_EASY_CHAT_ABC_MODE_H
#define POKEPLATINUM_APPLICATIONS_EASY_CHAT_ABC_MODE_H

#include "string_gf.h"

u32 EasyChatABCMode_GetCharCount(void);
void EasyChatABCMode_GetCharCode(u32 index, String *out);
void EasyChatABCMode_GetCharPos(u32 index, u32 *outX, u32 *outY);
int EasyChatABCMode_GetCharAbove(u32 index);
int EasyChatABCMode_GetCharBelow(u32 index);
int EasyChatABCMode_GetCharToLeft(u32 index);
int EasyChatABCMode_GetCharToRight(u32 index);
int EasyChatABCMode_GetCharAtTopOfColumn(u32 index);
int EasyChatABCMode_GetCharAtBottomOfColumn(u32 index);

#endif // POKEPLATINUM_APPLICATIONS_EASY_CHAT_ABC_MODE_H
