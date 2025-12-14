#include "map_header_util.h"

#include <nitro.h>

#include "font.h"
#include "map_header.h"
#include "message.h"
#include "string_gf.h"

u32 MapHeader_LoadString(MessageLoader *msgLoader, u32 entryID, String *string)
{
    MessageLoader_GetString(msgLoader, entryID, string);
    u32 width = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    return width;
}

void MapHeader_LoadName(enum MapHeader headerID, u32 heapID, String *string)
{
    u32 mapLabelTextID;
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, heapID);
    mapLabelTextID = MapHeader_GetMapLabelTextID(headerID);

    MapHeader_LoadString(msgLoader, mapLabelTextID, string);
    MessageLoader_Free(msgLoader);
}
