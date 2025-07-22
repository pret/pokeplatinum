#include "message_util.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "message.h"
#include "strbuf.h"
#include "string_template.h"

Strbuf *MessageUtil_ExpandedStrbuf(StringTemplate *template, MessageLoader *loader, u32 entryID, u32 heapID) {
    Strbuf *ret = NULL;
    Strbuf *buf = Strbuf_Init(EXPANDED_STRING_SIZE, HEAP_ID_SYSTEM);

    if (buf) {
        Strbuf *entry = MessageLoader_GetNewStrbuf(loader, entryID);

        if (entry) {
            StringTemplate_Format(template, buf, entry);
            ret = Strbuf_Clone(buf, heapID);
            Strbuf_Free(entry);
        }

        Strbuf_Free(buf);
    }

    return ret;
}

Strbuf *MessageUtil_MoveName(u32 moveID, u32 heapID) {
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, heapID);

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

Strbuf *MessageUtil_SpeciesName(u32 species, u32 heapID) {
    MessageLoader *loader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);

    if (loader) {
        Strbuf *speciesName = MessageLoader_GetNewStrbuf(loader, species);

        MessageLoader_Free(loader);
        return speciesName;
    }

    return NULL;
}
