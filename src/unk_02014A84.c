#include "unk_02014A84.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sentence.h"

#include "charcode.h"
#include "message.h"
#include "message_util.h"
#include "string_gf.h"
#include "string_template.h"
#include "unk_02014D38.h"

static u32 sub_02014C00(u32 param0, u32 param1);

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
        sentence->words[i] = 0xffff;
    }
}

void Sentence_InitWithType(Sentence *sentence, u32 type)
{
    sentence->type = type;
    sentence->id = 0;

    for (int i = 0; i < 2; i++) {
        sentence->words[i] = 0xffff;
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
        if (sentence->words[i] != 0xffff) {
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

String *sub_02014BA0(const Sentence *sentence, u32 param1)
{
    return MessageBank_GetNewStringFromNARC(26, Unk_020E5498[sentence->type], sentence->id, param1);
}

BOOL Sentence_IsValid(const Sentence *sentence)
{
    return sentence->type != 0xffff;
}

BOOL sub_02014BD0(const Sentence *sentence)
{
    u32 v0, v1;

    v0 = sub_02014C00(sentence->type, sentence->id);

    for (v1 = 0; v1 < v0; v1++) {
        if (sentence->words[v1] == 0xffff) {
            return 0;
        }
    }

    return 1;
}

static u32 sub_02014C00(u32 param0, u32 param1)
{
    String *v0;
    const u16 *v1;
    u32 v2;

    GF_ASSERT(param0 < 5);
    GF_ASSERT(param1 < sub_02014CD4(param0));

    v0 = MessageBank_GetNewStringFromNARC(26, Unk_020E5498[param0], param1, 0);
    v1 = String_GetData(v0);
    v2 = 0;

    while (*v1 != 0xffff) {
        if (*v1 == 0xfffe) {
            if (CharCode_IsFormatArg(v1)) {
                v2++;
            }

            v1 = CharCode_SkipFormatArg(v1);
        } else {
            v1++;
        }
    }

    String_Free(v0);
    return v2;
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

void Sentence_Set(Sentence *dest, const Sentence *src)
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

void sub_02014D10(Sentence *sentence)
{
    u32 v0, v1;

    v0 = sub_02014C00(sentence->type, sentence->id);

    for (v1 = v0; v1 < 2; v1++) {
        sentence->words[v1] = 0xffff;
    }
}
