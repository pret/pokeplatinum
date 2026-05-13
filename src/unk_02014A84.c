#include "unk_02014A84.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "struct_defs/sentence.h"

#include "applications/easy_chat/defs.h"

#include "charcode.h"
#include "message.h"
#include "message_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "unk_02014D38.h"

static u32 Sentence_CountSelectableWords(u32 type, u32 id);

static const u16 Unk_020E5498[] = {
    0x1C0,
    0x1C2,
    0x1BE,
    0x1BF,
    0x1C1
};

void Sentence_Init(Sentence *sentence)
{
    sentence->type = 0xffff;

    for (int i = 0; i < 2; i++) {
        sentence->words[i] = WORD_NONE;
    }
}

void Sentence_InitWithType(Sentence *sentence, u32 type)
{
    sentence->type = type;
    sentence->id = 0;

    for (int i = 0; i < 2; i++) {
        sentence->words[i] = WORD_NONE;
    }
}

void sub_02014AB4(Sentence *sentence)
{
    Sentence_InitWithType(sentence, 4);
    sentence->id = 5;
}

void sub_02014AC4(Sentence *sentence, int param1)
{
    static const struct {
        u8 unk_00;
        u8 unk_01;
        s16 unk_02;
        u16 unk_04;
        s16 unk_06;
        u16 unk_08;
    } v0[] = {
        { 0x0, 0x0, 0x1B7, 0x7, -1, 0x0 },
        { 0x1, 0x0, 0x1B7, 0x21, -1, 0x0 },
        { 0x2, 0x0, 0x1BB, 0xA, -1, 0x0 },
        { 0x1, 0x4, 0x1B7, 0x1, -1, 0x0 }
    };

    GF_ASSERT(param1 < NELEMS(v0));

    if (param1 < NELEMS(v0)) {
        Sentence_InitWithType(sentence, v0[param1].unk_00);
        sentence->id = v0[param1].unk_01;

        if (v0[param1].unk_02 != -1) {
            sentence->words[0] = sub_02014DFC(
                v0[param1].unk_02, v0[param1].unk_04);
        }

        if (v0[param1].unk_06 != -1) {
            sentence->words[1] = sub_02014DFC(
                v0[param1].unk_06, v0[param1].unk_08);
        }
    }
}

String *Sentence_AsString(const Sentence *sentence, enum HeapID heapID)
{
    StringTemplate *template = StringTemplate_Default(heapID);

    for (int i = 0; i < 2; i++) {
        if (sentence->words[i] != WORD_NONE) {
            StringTemplate_SetCustomMessageWord(template, i, sentence->words[i]);
        } else {
            break;
        }
    }

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, Unk_020E5498[sentence->type], heapID);
    String *string = MessageUtil_ExpandedString(template, loader, sentence->id, heapID);

    MessageLoader_Free(loader);
    StringTemplate_Free(template);

    return string;
}

String *Sentence_GetTemplateString(const Sentence *sentence, u32 heapID)
{
    return MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, Unk_020E5498[sentence->type], sentence->id, heapID);
}

BOOL Sentence_IsValid(const Sentence *sentence)
{
    return sentence->type != 0xffff;
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
    GF_ASSERT(type < 5);
    GF_ASSERT(id < sub_02014CD4(type));

    String *string = MessageBank_GetNewStringFromNARC(NARC_INDEX_MSGDATA__PL_MSG, Unk_020E5498[type], id, HEAP_ID_SYSTEM);
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

BOOL sub_02014C88(const Sentence *param0, const Sentence *param1)
{
    int v0;

    if ((param0->type != param1->type) || (param0->id != param1->id)) {
        return 0;
    }

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->words[v0] != param1->words[v0]) {
            return 0;
        }
    }

    return 1;
}

void Sentence_Copy(Sentence *dest, const Sentence *src)
{
    *dest = *src;
}

u32 sub_02014CD4(u32 param0)
{
    if (param0 < NELEMS(Unk_020E5498)) {
        return 20;
    }

    return 0;
}

void sub_02014CE0(Sentence *sentence, u32 param1, u32 param2)
{
    GF_ASSERT(param1 < 5);

    sentence->type = param1;
    sentence->id = param2;
}

void Sentence_SetWord(Sentence *sentence, u32 index, u16 word)
{
    GF_ASSERT(index < 2);
    sentence->words[index] = word;
}

void Sentence_ClearUnusedWords(Sentence *sentence)
{
    u32 count = Sentence_CountSelectableWords(sentence->type, sentence->id);

    for (u32 i = count; i < 2; i++) {
        sentence->words[i] = WORD_NONE;
    }
}
