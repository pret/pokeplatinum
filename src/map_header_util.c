#include "map_header_util.h"

#include <nitro.h>

#include "generated/text_banks.h"

#include "font.h"
#include "map_header.h"
#include "message.h"
#include "strbuf.h"

u32 MapHeader_LoadString(MessageLoader *msgLoader, u32 entryID, Strbuf *strbuf)
{
    MessageLoader_GetStrbuf(msgLoader, entryID, strbuf);
    u32 width = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    return width;
}

void MapHeader_LoadName(enum MapHeader headerID, u32 heapID, Strbuf *strbuf)
{
    u32 mapLabelTextID;
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_LOCATION_NAMES, heapID);
    mapLabelTextID = MapHeader_GetMapLabelTextID(headerID);

    MapHeader_LoadString(msgLoader, mapLabelTextID, strbuf);
    MessageLoader_Free(msgLoader);
}
