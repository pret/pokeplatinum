#include "poffin_types.h"

#include <nitro.h>

#include "heap.h"
#include "message.h"
#include "string_gf.h"

PoffinTypeList *PoffinTypeList_New(enum HeapID heapID)
{
    PoffinTypeList *types = Heap_Alloc(heapID, sizeof(PoffinTypeList));
    MI_CpuClear8(types, sizeof(PoffinTypeList));

    types->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POFFIN_TYPES, heapID);

    for (int i = 0; i < NUM_POFFIN_TYPES; i++) {
        types->names[i] = String_Init(22, heapID);
        MessageLoader_GetString(types->msgLoader, i, types->names[i]);
    }

    return types;
}

void PoffinTypeList_Free(PoffinTypeList *types)
{
    for (int i = NUM_POFFIN_TYPES - 1; i >= 0; i--) {
        String_Free(types->names[i]);
    }

    MessageLoader_Free(types->msgLoader);
    Heap_Free(types);
}

const String *PoffinTypeList_GetString(PoffinTypeList *poffinNames, enum PoffinType type)
{
    return poffinNames->names[type];
}
