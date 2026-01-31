#include "message_util.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "message.h"
#include "string_gf.h"
#include "string_template.h"

String *MessageUtil_ExpandedString(StringTemplate *template, MessageLoader *loader, u32 entryID, u32 heapID)
{
    String *ret = NULL;
    String *buf = String_Init(EXPANDED_STRING_SIZE, HEAP_ID_SYSTEM);

    if (buf) {
        String *entry = MessageLoader_GetNewString(loader, entryID);

        if (entry) {
            StringTemplate_Format(template, buf, entry);
            ret = String_Clone(buf, heapID);
            String_Free(entry);
        }

        String_Free(buf);
    }

    return ret;
}

String *MessageUtil_MoveName(u32 moveID, u32 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, heapID);

    if (loader) {
        String *moveName = String_Init(MOVE_NAME_LEN, heapID);

        if (moveName) {
            MessageLoader_GetString(loader, moveID, moveName);
        }

        MessageLoader_Free(loader);
        return moveName;
    }

    return NULL;
}

String *MessageUtil_SpeciesName(u32 species, u32 heapID)
{
    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, heapID);

    if (loader) {
        String *speciesName = MessageLoader_GetNewString(loader, species);

        MessageLoader_Free(loader);
        return speciesName;
    }

    return NULL;
}
