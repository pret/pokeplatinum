#ifndef POKEPLATINUM_MAP_HEADER_UTIL_H
#define POKEPLATINUM_MAP_HEADER_UTIL_H

#include "message.h"
#include "strbuf.h"

u32 MapHeader_LoadString(MessageLoader *msgLoader, u32 entryID, Strbuf *strbuf);
void MapHeader_LoadName(int headerID, u32 heapID, Strbuf *strbuf);

#endif // POKEPLATINUM_MAP_HEADER_UTIL_H
