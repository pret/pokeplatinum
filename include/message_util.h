#ifndef POKEPLATINUM_MESSAGE_UTIL_H
#define POKEPLATINUM_MESSAGE_UTIL_H

#include "message.h"
#include "string_gf.h"
#include "string_template.h"

#define EXPANDED_STRING_SIZE 1024

String *MessageUtil_ExpandedString(StringTemplate *template, MessageLoader *loader, u32 entryID, u32 heapID);
String *MessageUtil_MoveName(u32 moveID, u32 heapID);
String *MessageUtil_SpeciesName(u32 species, u32 heapID);

#endif // POKEPLATINUM_MESSAGE_UTIL_H
