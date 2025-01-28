#ifndef POKEPLATINUM_UNK_02071CFC_H
#define POKEPLATINUM_UNK_02071CFC_H

#include "message.h"
#include "strbuf.h"

u32 MapHeader_GetStringWidth(MessageLoader *msgLoader, u32 entryID, Strbuf *strbuf);
void sub_02071D10(int headerID, u32 heapID, Strbuf *strbuf);

#endif // POKEPLATINUM_UNK_02071CFC_H
