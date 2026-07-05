#ifndef POKEPLATINUM_PASSWORD_WORD_BANK_H
#define POKEPLATINUM_PASSWORD_WORD_BANK_H

#include <nitro/types.h>

#include "constants/heap.h"

typedef struct PasswordWordBank {
    u32 length;
    u32 *words;
} PasswordWordBank;

PasswordWordBank *PasswordWordBank_New(enum HeapID heapID);
void PasswordWordBank_Free(PasswordWordBank *wordBank);
u32 PasswordWordBank_GetLength(const PasswordWordBank *wordBank);
u16 PasswordWordBank_GetWordAtIndex(const PasswordWordBank *wordBank, u32 index);
s16 PasswordWordBank_FindWord(const PasswordWordBank *wordBank, u16 word);

#endif // POKEPLATINUM_PASSWORD_WORD_BANK_H
