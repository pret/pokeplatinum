#ifndef POKEPLATINUM_STRING_LIST_H
#define POKEPLATINUM_STRING_LIST_H

#include "message.h"
#include "strbuf.h"

#define STRING_LIST_TERMINATOR ((void *)0xFFFFFFFF)

typedef struct StringList {
    void *entry;
    u32 index;
} StringList;

StringList *StringList_New(u32 capacity, u32 heapID);
void StringList_Free(StringList *list);
void StringList_AddFromMessageBank(StringList *list, const MessageLoader *loader, u32 bankEntry, u32 index);
void StringList_AddFromStrbuf(StringList *list, const Strbuf *strbuf, u32 index);
void StringList_AddFromEntry(StringList *list, const StringList *entry);

#endif // POKEPLATINUM_STRING_LIST_H
