#include "unk_02071CFC.h"

#include <nitro.h>
#include <string.h>

#include "field/field_system_sub2_t.h"
#include "text/pl_msg.naix"

#include "font.h"
#include "map_header.h"
#include "message.h"
#include "strbuf.h"

u32 MapHeader_GetStringWidth(MessageLoader *msgLoader, u32 entryID, Strbuf *strbuf)
{
    u32 width;

    MessageLoader_GetStrbuf(msgLoader, entryID, strbuf);
    width = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    return width;
}

void sub_02071D10(int headerID, u32 heapID, Strbuf *strbuf)
{
    u32 mapLabelTextID;
    MessageLoader *msgLoader;

    msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_location_names, heapID);
    mapLabelTextID = MapHeader_GetMapLabelTextID(headerID);

    MapHeader_GetStringWidth(msgLoader, mapLabelTextID, strbuf); // It should be MessageLoader_GetStrbuf()
    MessageLoader_Free(msgLoader);
}
