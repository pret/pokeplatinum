#ifndef POKEPLATINUM_MAP_HEADER_UTIL_H
#define POKEPLATINUM_MAP_HEADER_UTIL_H

#include "constants/heap.h"
#include "generated/map_headers.h"

#include "message.h"
#include "strbuf.h"

u32 MapHeader_LoadString(MessageLoader *msgLoader, u32 entryID, Strbuf *strbuf);
void MapHeader_LoadName(enum MapHeader headerID, enum HeapId heapID, Strbuf *strbuf);

#endif // POKEPLATINUM_MAP_HEADER_UTIL_H
