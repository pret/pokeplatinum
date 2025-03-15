#include "unk_02014A84.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/sentence.h"

#include "charcode.h"
#include "message.h"
#include "message_util.h"
#include "strbuf.h"
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

void sub_02014A84(Sentence *param0)
{
    int v0;

    param0->type = 0xffff;

    for (v0 = 0; v0 < 2; v0++) {
        param0->words[v0] = 0xffff;
    }
}

void sub_02014A9C(Sentence *param0, u32 param1)
{
    int v0;

    param0->type = param1;
    param0->id = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->words[v0] = 0xffff;
    }
}

void sub_02014AB4(Sentence *param0)
{
    sub_02014A9C(param0, 4);
    param0->id = 5;
}

void sub_02014AC4(Sentence *param0, int param1)
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
        sub_02014A9C(param0, v0[param1].unk_00);
        param0->id = v0[param1].unk_01;

        if (v0[param1].unk_02 != -1) {
            param0->words[0] = sub_02014DFC(
                v0[param1].unk_02, v0[param1].unk_04);
        }

        if (v0[param1].unk_06 != -1) {
            param0->words[1] = sub_02014DFC(
                v0[param1].unk_06, v0[param1].unk_08);
        }
    }
}

Strbuf *sub_02014B34(const Sentence *sentence, u32 heapID)
{
    Strbuf *v0;
    StringTemplate *v1;
    MessageLoader *v2;
    int v3;

    v1 = StringTemplate_Default(heapID);

    for (v3 = 0; v3 < 2; v3++) {
        if (sentence->words[v3] != 0xffff) {
            StringTemplate_SetCustomMessageWord(v1, v3, sentence->words[v3]);
        } else {
            break;
        }
    }

    v2 = MessageLoader_Init(1, 26, Unk_020E5498[sentence->type], heapID);
    v0 = MessageUtil_ExpandedStrbuf(v1, v2, sentence->id, heapID);

    MessageLoader_Free(v2);
    StringTemplate_Free(v1);

    return v0;
}

Strbuf *sub_02014BA0(const Sentence *param0, u32 param1)
{
    return MessageBank_GetNewStrbufFromNARC(26, Unk_020E5498[param0->type], param0->id, param1);
}

BOOL sub_02014BBC(const Sentence *param0)
{
    return param0->type != 0xffff;
}

BOOL sub_02014BD0(const Sentence *param0)
{
    u32 v0, v1;

    v0 = sub_02014C00(param0->type, param0->id);

    for (v1 = 0; v1 < v0; v1++) {
        if (param0->words[v1] == 0xffff) {
            return 0;
        }
    }

    return 1;
}

static u32 sub_02014C00(u32 param0, u32 param1)
{
    Strbuf *v0;
    const u16 *v1;
    u32 v2;

    GF_ASSERT(param0 < 5);
    GF_ASSERT(param1 < sub_02014CD4(param0));

    v0 = MessageBank_GetNewStrbufFromNARC(26, Unk_020E5498[param0], param1, 0);
    v1 = Strbuf_GetData(v0);
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

    Strbuf_Free(v0);
    return v2;
}

u16 sub_02014C78(const Sentence *param0, int param1)
{
    return param0->words[param1];
}

u32 sub_02014C80(const Sentence *param0)
{
    return param0->type;
}

u32 sub_02014C84(const Sentence *param0)
{
    return param0->id;
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

void sub_02014CC0(Sentence *param0, const Sentence *param1)
{
    *param0 = *param1;
}

u32 sub_02014CD4(u32 param0)
{
    if (param0 < NELEMS(Unk_020E5498)) {
        return 20;
    }

    return 0;
}

void sub_02014CE0(Sentence *param0, u32 param1, u32 param2)
{
    GF_ASSERT(param1 < 5);

    param0->type = param1;
    param0->id = param2;
}

void sub_02014CF8(Sentence *param0, u32 param1, u16 param2)
{
    GF_ASSERT(param1 < 2);
    param0->words[param1] = param2;
}

void sub_02014D10(Sentence *param0)
{
    u32 v0, v1;

    v0 = sub_02014C00(param0->type, param0->id);

    for (v1 = v0; v1 < 2; v1++) {
        param0->words[v1] = 0xffff;
    }
}
