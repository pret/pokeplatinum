#ifndef POKEPLATINUM_PLAYTIME_H
#define POKEPLATINUM_PLAYTIME_H

#include "struct_decls/playtime_decl.h"

void Playtime_Initialize(Playtime *playtime);
void Playtime_Increase(Playtime *playtime, u32 seconds);
u16 Playtime_GetHours(const Playtime *playtime);
u8 Playtime_GetMinutes(const Playtime *playtime);
u8 Playtime_GetSeconds(const Playtime *playtime);

#endif // POKEPLATINUM_PLAYTIME_H
