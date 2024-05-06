#ifndef POKEPLATINUM_MESSAGE_UTIL_H
#define POKEPLATINUM_MESSAGE_UTIL_H

#include "message.h"
#include "string_template.h"
#include "strbuf.h"

#define EXPANDED_STRING_SIZE    1024

Strbuf* sub_0200B29C(StringTemplate *template, MessageLoader *loader, u32 entryID, u32 heapID);
Strbuf* sub_0200B2EC(u32 moveID, u32 heapID);
Strbuf* sub_0200B32C(u32 species, u32 heapID);

#endif // POKEPLATINUM_MESSAGE_UTIL_H
