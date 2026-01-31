#ifndef POKEPLATINUM_MAP_HEADER_UTIL_H
#define POKEPLATINUM_MAP_HEADER_UTIL_H

#include "generated/map_headers.h"

#include "message.h"
#include "string_gf.h"

u32 MapHeader_LoadString(MessageLoader *msgLoader, u32 entryID, String *string);
void MapHeader_LoadName(enum MapHeader headerID, enum HeapID heapID, String *string);

#endif // POKEPLATINUM_MAP_HEADER_UTIL_H
