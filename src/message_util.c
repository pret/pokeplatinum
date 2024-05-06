#include <nitro.h>
#include <string.h>

#include "message.h"
#include "strbuf.h"

#include "message.h"
#include "message_util.h"
#include "string_template.h"
#include "strbuf.h"
#include "constants/heap.h"
#include "constants/message_banks.h"
#include "constants/narc.h"

Strbuf* MessageUtil_ExpandedStrbuf (StringTemplate *template, MessageLoader *loader, u32 entryID, u32 heapID)
{
    Strbuf *ret = NULL;
    Strbuf *buffer = Strbuf_Init(EXPANDED_STRING_SIZE, HEAP_ID_SYSTEM);

    if (buffer) {
        Strbuf *entry = MessageLoader_GetNewStrbuf(loader, entryID);

        if (entry) {
            StringTemplate_Format(template, buffer, entry);
            ret = Strbuf_Clone(buffer, heapID);
            Strbuf_Free(entry);
        }

        Strbuf_Free(buffer);
    }

    return ret;
}

Strbuf* MessageUtil_MoveName (u32 moveID, u32 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, MESSAGE_BANK_MOVE_NAMES, heapID);

    if (loader) {
        Strbuf *moveName = Strbuf_Init(MOVE_NAME_LEN, heapID);

        if (moveName) {
            MessageLoader_GetStrbuf(loader, moveID, moveName);
        }

        MessageLoader_Free(loader);
        return moveName;
    }

    return NULL;
}

Strbuf* MessageUtil_MonName (u32 species, u32 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, MESSAGE_BANK_SPECIES_NAMES, heapID);

    if (loader) {
        Strbuf *monName = MessageLoader_GetNewStrbuf(loader, species);

        MessageLoader_Free(loader);
        return monName;
    }

    return NULL;
}
