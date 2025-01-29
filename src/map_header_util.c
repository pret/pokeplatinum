#include "map_header_util.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system_sub2_t.h"
#include "text/pl_msg.naix"

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

void MapHeader_LoadName(int headerID, u32 heapID, Strbuf *strbuf)
{
    u32 mapLabelTextID;
    MessageLoader *msgLoader;

    msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_location_names, heapID);
    mapLabelTextID = MapHeader_GetMapLabelTextID(headerID);

    MapHeader_LoadString(msgLoader, mapLabelTextID, strbuf); // It should be MessageLoader_GetStrbuf()
    MessageLoader_Free(msgLoader);
}
