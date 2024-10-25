#ifndef POKEPLATINUM_STRING_LIST_H
#define POKEPLATINUM_STRING_LIST_H

#include "message.h"
#include "strbuf.h"

typedef struct StringList {
    const void *entry;
    u32 index;
} StringList;

StringList *StringList_New(u32 param0, u32 param1);
void StringList_Free(StringList *param0);
void StringList_AddFromMessageBank(StringList *param0, const MessageLoader *param1, u32 param2, u32 param3);
void StringList_AddFromStrbuf(StringList *param0, const Strbuf *param1, u32 param2);
void StringList_AddFromEntry(StringList *param0, const StringList *param1);

#endif // POKEPLATINUM_STRING_LIST_H
