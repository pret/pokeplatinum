#include "sentence.h"

#include <nitro.h>

#include "constants/charcode.h"
#include "generated/text_banks.h"

#include "applications/easy_chat/defs.h"

#include "charcode.h"
#include "message.h"
#include "message_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "words.h"

#include "res/text/bank/feelings.h"
#include "res/text/bank/general_sentences.h"
#include "res/text/bank/loss_sentences.h"
#include "res/text/bank/pre_battle_sentences.h"
#include "res/text/bank/trainer_words.h"
#include "res/text/bank/union_room_sentences.h"
#include "res/text/bank/win_sentences.h"

static u32 Sentence_CountSelectableWords(u32 type, u32 id);

static const u16 sTextBanksByType[] = {
    [SENTENCE_TYPE_PRE_BATTLE] = TEXT_BANK_PRE_BATTLE_SENTENCES,
    [SENTENCE_TYPE_WIN] = TEXT_BANK_WIN_SENTENCES,
    [SENTENCE_TYPE_LOSS] = TEXT_BANK_LOSS_SENTENCES,
    [SENTENCE_TYPE_GENERAL] = TEXT_BANK_GENERAL_SENTENCES,
    [SENTENCE_TYPE_UNION_ROOM] = TEXT_BANK_UNION_ROOM_SENTENCES
};

void Sentence_Init(Sentence *sentence)
{
    sentence->type = SENTENCE_TYPE_NONE;

    for (int i = 0; i < MAX_SENTENCE_WORD_SLOTS; i++) {
        sentence->words[i] = WORD_NONE;
    }
}

void Sentence_InitWithType(Sentence *sentence, u32 type)
{
    sentence->type = type;
    sentence->id = 0;

    for (int i = 0; i < MAX_SENTENCE_WORD_SLOTS; i++) {
        sentence->words[i] = WORD_NONE;
    }
}

void Sentence_InitWithEnteredUnionRoom(Sentence *sentence)
{
    Sentence_InitWithType(sentence, SENTENCE_TYPE_UNION_ROOM);
    sentence->id = UnionRoomSentences_Text_IveEnteredUnionRoom;
}

void Sentence_SetDefaultFrontierFields(Sentence *sentence, int type)
{
    static const struct {
        u8 type;
        u8 id;
        s16 word1Bank;
        u16 word1BankEntry;
        s16 word2Bank;
        u16 word2BankEntry;
    } defaultFrontierSentenceData[] = {
        [SENTENCE_TYPE_PRE_BATTLE] = { SENTENCE_TYPE_PRE_BATTLE, PreBattleSentences_Text_PleaseBlank, TEXT_BANK_TRAINER_WORDS, TrainerWords_Text_ComeOn, -1, 0 },
        [SENTENCE_TYPE_WIN] = { SENTENCE_TYPE_WIN, WinSentences_Text_IWinBlank, TEXT_BANK_TRAINER_WORDS, TrainerWords_Text_Easy, -1, 0 },
        [SENTENCE_TYPE_LOSS] = { SENTENCE_TYPE_LOSS, LossSentences_Text_YouWinBlank, TEXT_BANK_FEELINGS, Feelings_Text_Regret, -1, 0 },
        [FRONTIER_SENTENCE_TYPE_NO_1] = { SENTENCE_TYPE_WIN, WinSentences_Text_BlankYay, TEXT_BANK_TRAINER_WORDS, TrainerWords_Text_No1, -1, 0 }
    };

    GF_ASSERT(type < NELEMS(defaultFrontierSentenceData));

    if (type < NELEMS(defaultFrontierSentenceData)) {
        Sentence_InitWithType(sentence, defaultFrontierSentenceData[type].type);
        sentence->id = defaultFrontierSentenceData[type].id;

        if (defaultFrontierSentenceData[type].word1Bank != -1) {
            sentence->words[0] = Word_FromBankAndEntry(defaultFrontierSentenceData[type].word1Bank, defaultFrontierSentenceData[type].word1BankEntry);
        }

        if (defaultFrontierSentenceData[type].word2Bank != -1) {
            sentence->words[1] = Word_FromBankAndEntry(defaultFrontierSentenceData[type].word2Bank, defaultFrontierSentenceData[type].word2BankEntry);
        }
    }
}

String *Sentence_ToString(const Sentence *sentence, enum HeapID heapID)
{
    StringTemplate *template = StringTemplate_Default(heapID);

    for (int i = 0; i < MAX_SENTENCE_WORD_SLOTS; i++) {
        if (sentence->words[i] != WORD_NONE) {
            StringTemplate_SetCustomMessageWord(template, i, sentence->words[i]);
        } else {
            break;
        }
    }

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, sTextBanksByType[sentence->type], heapID);
    String *string = MessageUtil_ExpandedString(template, loader, sentence->id, heapID);

    MessageLoader_Free(loader);
    StringTemplate_Free(template);

    return string;
}

String *Sentence_GetTemplateString(const Sentence *sentence, enum HeapID heapID)
{
    return MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, sTextBanksByType[sentence->type], sentence->id, heapID);
}

BOOL Sentence_IsValid(const Sentence *sentence)
{
    return sentence->type != SENTENCE_TYPE_NONE;
}

BOOL Sentence_IsComplete(const Sentence *sentence)
{
    u32 count = Sentence_CountSelectableWords(sentence->type, sentence->id);

    for (u32 i = 0; i < count; i++) {
        if (sentence->words[i] == WORD_NONE) {
            return FALSE;
        }
    }

    return TRUE;
}

static u32 Sentence_CountSelectableWords(u32 type, u32 id)
{
    GF_ASSERT(type < SENTENCE_TYPE_COUNT);
    GF_ASSERT(id < Sentence_GetBankEntryCountForType(type));

    String *string = MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, sTextBanksByType[type], id, HEAP_ID_SYSTEM);
    const charcode_t *iter = String_GetData(string);
    u32 count = 0;

    while (*iter != CHAR_EOS) {
        if (*iter == CHAR_FORMAT_ARG) {
            if (CharCode_IsFormatArg(iter)) {
                count++;
            }

            iter = CharCode_SkipFormatArg(iter);
        } else {
            iter++;
        }
    }

    String_Free(string);
    return count;
}

u16 Sentence_GetWord(const Sentence *sentence, int slot)
{
    return sentence->words[slot];
}

u32 Sentence_GetType(const Sentence *sentence)
{
    return sentence->type;
}

u32 Sentence_GetID(const Sentence *sentence)
{
    return sentence->id;
}

BOOL Sentence_Compare(const Sentence *sentence1, const Sentence *sentence2)
{
    if (sentence1->type != sentence2->type || sentence1->id != sentence2->id) {
        return FALSE;
    }

    for (int i = 0; i < MAX_SENTENCE_WORD_SLOTS; i++) {
        if (sentence1->words[i] != sentence2->words[i]) {
            return FALSE;
        }
    }

    return TRUE;
}

void Sentence_Copy(Sentence *dest, const Sentence *src)
{
    *dest = *src;
}

u32 Sentence_GetBankEntryCountForType(u32 type)
{
    SDK_COMPILER_ASSERT(TEXT_BANK_PRE_BATTLE_SENTENCES_ENTRY_COUNT == TEXT_BANK_WIN_SENTENCES_ENTRY_COUNT
        && TEXT_BANK_WIN_SENTENCES_ENTRY_COUNT == TEXT_BANK_LOSS_SENTENCES_ENTRY_COUNT
        && TEXT_BANK_LOSS_SENTENCES_ENTRY_COUNT == TEXT_BANK_UNION_ROOM_SENTENCES_ENTRY_COUNT
        && TEXT_BANK_UNION_ROOM_SENTENCES_ENTRY_COUNT == TEXT_BANK_GENERAL_SENTENCES_ENTRY_COUNT);

    if (type < NELEMS(sTextBanksByType)) {
        return TEXT_BANK_GENERAL_SENTENCES_ENTRY_COUNT;
    }

    return 0;
}

void Sentence_SetTypeAndID(Sentence *sentence, u32 type, u32 id)
{
    GF_ASSERT(type < SENTENCE_TYPE_COUNT);

    sentence->type = type;
    sentence->id = id;
}

void Sentence_SetWord(Sentence *sentence, u32 index, u16 word)
{
    GF_ASSERT(index < MAX_SENTENCE_WORD_SLOTS);
    sentence->words[index] = word;
}

void Sentence_ClearUnusedWords(Sentence *sentence)
{
    u32 count = Sentence_CountSelectableWords(sentence->type, sentence->id);

    for (u32 i = count; i < MAX_SENTENCE_WORD_SLOTS; i++) {
        sentence->words[i] = WORD_NONE;
    }
}
