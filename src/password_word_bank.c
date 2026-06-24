#include "password_word_bank.h"

#include <nitro.h>

#include "constants/heap.h"
#include "constants/narc.h"
#include "generated/abilities.h"
#include "generated/pokemon_types.h"

#include "easy_chat_words.h"

#include "res/words/word_bank.naix"

PasswordWordBank *PasswordWordBank_New(enum HeapID heapID)
{
    PasswordWordBank *wordBank = Heap_Alloc(heapID, sizeof(PasswordWordBank));
    memset(wordBank, 0, sizeof(PasswordWordBank));

    u32 fileSize;
    wordBank->words = LoadMemberFromNARC_OutFileSize(NARC_INDEX_RESOURCE__ENG__PMS_AIKOTOBA__PMS_AIKOTOBA, word_bank_o, FALSE, heapID, FALSE, &fileSize);
    wordBank->length = fileSize / sizeof(u32);

    return wordBank;
}

void PasswordWordBank_Free(PasswordWordBank *wordBank)
{
    Heap_Free(wordBank->words);
    Heap_Free(wordBank);
}

u32 PasswordWordBank_GetLength(const PasswordWordBank *wordBank)
{
    return wordBank->length;
}

u16 PasswordWordBank_GetWordAtIndex(const PasswordWordBank *wordBank, u32 index)
{
    GF_ASSERT(wordBank);

    if (wordBank->length <= index) {
        return WORD_NONE;
    }

    return wordBank->words[index];
}

s16 PasswordWordBank_FindWord(const PasswordWordBank *wordBank, u16 word)
{
    GF_ASSERT(wordBank);

    for (int i = 0; i < wordBank->length; i++) {
        if (wordBank->words[i] == word) {
            return i;
        }
    }

    return -1;
}
