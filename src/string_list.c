#include "string_list.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "message.h"
#include "strbuf.h"

static StringList *FindFirstEmptyEntry(StringList *list, u32 *outHeapID);
static void FreeEntries(StringList *list);

StringList *StringList_New(u32 capacity, u32 heapID)
{
    StringList *list = Heap_AllocFromHeap(heapID, sizeof(StringList) * (capacity + 1));

    if (list) {
        u32 i;
        for (i = 0; i < capacity; i++) {
            list[i].entry = NULL;
            list[i].index = 0;
        }

        // This entry is special; it should always have an index value equal
        // to the heap on which this list was allocated.
        list[i].entry = STRING_LIST_TERMINATOR;
        list[i].index = heapID;
    }

    return list;
}

void StringList_Free(StringList *list)
{
    FreeEntries(list);
    Heap_Free(list);
}

void StringList_AddFromMessageBank(StringList *list, const MessageLoader *loader, u32 bankEntry, u32 index)
{
    u32 tmp;
    list = FindFirstEmptyEntry(list, &tmp);

    if (list) {
        list->entry = MessageLoader_GetNewStrbuf(loader, bankEntry);
        list->index = index;
    }
}

void StringList_AddFromStrbuf(StringList *list, const Strbuf *strbuf, u32 index)
{
    u32 heapID;
    list = FindFirstEmptyEntry(list, &heapID);

    if (list) {
        list->entry = Strbuf_Clone(strbuf, heapID);
        list->index = index;
    }
}

void StringList_AddFromEntry(StringList *list, const StringList *entry)
{
    u32 tmp;
    list = FindFirstEmptyEntry(list, &tmp);

    if (list) {
        list->entry = entry->entry;
        list->index = entry->index;
    }
}

static StringList *FindFirstEmptyEntry(StringList *list, u32 *outHeapID)
{
    while (list->entry != NULL) {
        if (list->entry == STRING_LIST_TERMINATOR) {
            GF_ASSERT(FALSE);
            return NULL;
        }

        list++;
    }

    StringList *empty = list;

    // Keep going, so we can also get the heap ID
    while (list->entry != STRING_LIST_TERMINATOR) {
        list++;
    }

    *outHeapID = list->index;
    return empty;
}

static void FreeEntries(StringList *list)
{
    StringList *tmp = list;
    while (tmp->entry != STRING_LIST_TERMINATOR) {
        if (tmp->entry == NULL) {
            break;
        }

        Strbuf_Free(tmp->entry);
        tmp->entry = NULL;
        tmp++;
    }
}
