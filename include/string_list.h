#ifndef POKEPLATINUM_STRING_LIST_H
#define POKEPLATINUM_STRING_LIST_H

#include "message.h"
#include "string_gf.h"

#define STRING_LIST_TERMINATOR ((void *)0xFFFFFFFF)

typedef struct StringList {
    void *entry;
    union {
#ifdef SDK_BUILD_ARM
        u32 index;
#else
        u64 index;
#endif
        void *callbackFunction;
    };
} StringList;

StringList *StringList_New(u32 capacity, u32 heapID);
void StringList_Free(StringList *list);
#ifdef SDK_BUILD_ARM
void StringList_AddFromMessageBank(StringList *list, const MessageLoader *loader, u32 bankEntry, u32 index);
void StringList_AddFromString(StringList *list, const String *string, u32 index);
#else
void StringList_AddFromMessageBank(StringList *list, const MessageLoader *loader, u32 bankEntry, u64 index);
void StringList_AddFromString(StringList *list, const String *string, u64 index);
#endif
void StringList_AddFromEntry(StringList *list, const StringList *entry);

#endif // POKEPLATINUM_STRING_LIST_H
