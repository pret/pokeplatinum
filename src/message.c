#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "strbuf.h"

#include "narc.h"
#include "message.h"
#include "heap.h"
#include "strbuf.h"

static void sub_0200AD98(u16 * param0, const u16 * param1, const MessageBankEntry * param2);

MessageBank * MessageBank_Load (u32 param0, u32 param1, u32 param2)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(param0, param1, param2);
}

void MessageBank_Free (MessageBank * param0)
{
    Heap_FreeToHeap(param0);
}

static inline int inline_0200ACF0 (u32 param0)
{
    return sizeof(MessageBank) + sizeof(MessageBankEntry) * param0;
}

static inline void inline_0200AC6C (MessageBankEntry * param0, u32 param1, u32 param2)
{
    param2 = (param2 * 765 * (param1 + 1)) & 0xffff;
    param2 |= (param2 << 16);

    param0->unk_00 ^= param2;
    param0->unk_04 ^= param2;
}

static inline void inline_0200AC6C_1 (u16 * param0, u32 param1, u32 param2, u16 param3)
{
    param3 = (param2 + 1) * 596947;

    while (param1--) {
        *param0 ^= param3;
        param0++;
        param3 += 18749;
    }
}

void MessageBank_Get (const MessageBank * param0, u32 param1, u16 * param2)
{
    if (param1 < param0->unk_00) {
        MessageBankEntry v0;
        const u16 * v1;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);
        v1 = (u16 *)(((u8 *)param0) + v0.unk_00);
        sub_0200AD98(param2, v1, &v0);
        inline_0200AC6C_1(param2, v0.unk_04, param1, param0->unk_02);
    } else {
        GF_ASSERT(0);
    }
}

void MessageBank_GetFromNARC (u32 param0, u32 param1, u32 param2, u32 param3, u16 * param4)
{
    NARC * v0 = NARC_ctor(param0, param3);

    if (v0) {
        MessageBank v1;
        MessageBankEntry v2;
        u16 * v3;
        u32 v4;

        NARC_ReadFromMember(v0, param1, 0, sizeof(MessageBank), &v1);
        NARC_ReadFromMember(v0, param1, inline_0200ACF0(param2), sizeof(MessageBankEntry), &v2);

        inline_0200AC6C(&v2, param2, v1.unk_02);

        v4 = v2.unk_04 * sizeof(u16);
        NARC_ReadFromMember(v0, param1, v2.unk_00, v4, param4);

        inline_0200AC6C_1(param4, v2.unk_04, param2, v1.unk_02);
        NARC_dtor(v0);
    }
}

static void sub_0200AD98 (u16 * param0, const u16 * param1, const MessageBankEntry * param2)
{
    MI_CpuCopy16(param1, param0, param2->unk_04 * sizeof(u16));
}

void MessageBank_GetStrbuf (const MessageBank * param0, u32 param1, Strbuf *param2)
{
    if (param1 < param0->unk_00) {
        MessageBankEntry v0;
        u16 * v1;
        u32 v2;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);

        v2 = v0.unk_04 * sizeof(u16);
        v1 = Heap_AllocFromHeapAtEnd(0, v2);

        if (v1) {
            MI_CpuCopy16((((u8 *)param0) + v0.unk_00), v1, v2);

            inline_0200AC6C_1(v1, v0.unk_04, param1, param0->unk_02);
            Strbuf_CopyNumChars(param2, v1, v0.unk_04);
            Heap_FreeToHeap(v1);
        }
    } else {
        GF_ASSERT(0);
        Strbuf_Clear(param2);
    }
}

Strbuf* MessageBank_GetNewStrbuf (const MessageBank * param0, u32 param1, u32 param2)
{
    if (param1 < param0->unk_00) {
        MessageBankEntry v0;
        u16 * v1;
        u32 v2;

        v0 = param0->unk_04[param1];
        inline_0200AC6C(&v0, param1, param0->unk_02);
        v2 = v0.unk_04 * sizeof(u16);
        v1 = Heap_AllocFromHeapAtEnd(param2, v2);

        if (v1) {
            Strbuf* v3;

            MI_CpuCopy16((((u8 *)param0) + v0.unk_00), v1, v2);
            inline_0200AC6C_1(v1, v0.unk_04, param1, param0->unk_02);

            v3 = Strbuf_Init(v0.unk_04, param2);

            if (v3) {
                Strbuf_CopyNumChars(v3, v1, v0.unk_04);
            }

            Heap_FreeToHeap(v1);
            return v3;
        }

        return NULL;
    } else {
        GF_ASSERT(0);
        return Strbuf_Init(4, param2);
    }
}

void MessageBank_GetStrbufFromNARC (u32 param0, u32 param1, u32 param2, u32 param3, Strbuf *param4)
{
    NARC * v0;

    v0 = NARC_ctor(param0, param3);

    if (v0) {
        MessageBank_GetStrbufFromHandle(v0, param1, param2, param3, param4);
        NARC_dtor(v0);
    }
}

void MessageBank_GetStrbufFromHandle (NARC * param0, u32 param1, u32 param2, u32 param3, Strbuf *param4)
{
    MessageBank v0;
    MessageBankEntry v1;
    u16 * v2;
    u32 v3;

    NARC_ReadFromMember(param0, param1, 0, sizeof(MessageBank), &v0);

    if (param2 < v0.unk_00) {
        NARC_ReadFromMember(param0, param1, inline_0200ACF0(param2), sizeof(MessageBankEntry), &v1);
        inline_0200AC6C(&v1, param2, v0.unk_02);

        v3 = v1.unk_04 * sizeof(u16);
        v2 = Heap_AllocFromHeapAtEnd(param3, v3);

        if (v2) {
            NARC_ReadFromMember(param0, param1, v1.unk_00, v3, v2);
            inline_0200AC6C_1(v2, v1.unk_04, param2, v0.unk_02);
            Strbuf_CopyNumChars(param4, v2, v1.unk_04);
            Heap_FreeToHeap(v2);
        }
    } else {
        GF_ASSERT(0);
        Strbuf_Clear(param4);
    }
}

Strbuf* MessageBank_GetNewStrbufFromNARC (u32 param0, u32 param1, u32 param2, u32 param3)
{
    NARC * v0;
    Strbuf* v1;

    v0 = NARC_ctor(param0, param3);

    if (v0) {
        v1 = MessageBank_GetNewStrbufFromHandle(v0, param1, param2, param3);
        NARC_dtor(v0);
    } else {
        v1 = Strbuf_Init(4, param3);
    }

    return v1;
}

Strbuf* MessageBank_GetNewStrbufFromHandle (NARC * param0, u32 param1, u32 param2, u32 param3)
{
    MessageBank v0;

    NARC_ReadFromMember(param0, param1, 0, sizeof(MessageBank), &v0);

    if (param2 < v0.unk_00) {
        MessageBankEntry v1;
        Strbuf* v2;

        NARC_ReadFromMember(param0, param1, inline_0200ACF0(param2), sizeof(MessageBankEntry), &v1);
        inline_0200AC6C(&v1, param2, v0.unk_02);

        v2 = Strbuf_Init(v1.unk_04, param3);

        if (v2) {
            u16 * v3;
            u32 v4;

            v4 = v1.unk_04 * sizeof(u16);
            v3 = Heap_AllocFromHeapAtEnd(param3, v4);

            if (v3) {
                NARC_ReadFromMember(param0, param1, v1.unk_00, v4, v3);
                inline_0200AC6C_1(v3, v1.unk_04, param2, v0.unk_02);
                Strbuf_CopyNumChars(v2, v3, v1.unk_04);
                Heap_FreeToHeap(v3);
            }
        }

        return v2;
    } else {
        GF_ASSERT(0);
        return Strbuf_Init(4, param3);
    }
}

u32 MessageBank_EntryCount (const MessageBank * param0)
{
    return param0->unk_00;
}

u32 MessageBank_NARCEntryCount (u32 param0, u32 param1)
{
    MessageBank v0;

    NARC_ReadFromMemberByIndexPair(&v0, param0, param1, 0, sizeof(MessageBank));
    return v0.unk_00;
}

MessageLoader * MessageLoader_Init (int param0, u32 param1, u32 param2, u32 param3)
{
    MessageLoader * v0 = Heap_AllocFromHeapAtEnd(param3, sizeof(MessageLoader));

    if (v0) {
        if (param0 == 0) {
            v0->unk_08_val1 = MessageBank_Load(param1, param2, param3);

            if (v0->unk_08_val1 == NULL) {
                Heap_FreeToHeap(v0);
                return NULL;
            }
        } else {
            v0->unk_08_val2 = NARC_ctor(param1, param3);
        }

        v0->unk_00 = param0;
        v0->unk_04 = param1;
        v0->unk_06 = param2;
        v0->unk_02 = param3;
    }

    return v0;
}

void MessageLoader_Free (MessageLoader * param0)
{
    if (param0) {
        switch (param0->unk_00) {
        case 0:
            MessageBank_Free(param0->unk_08_val1);
            break;
        case 1:
            NARC_dtor(param0->unk_08_val2);
            break;
        }

        Heap_FreeToHeap(param0);
    }
}

void MessageLoader_GetStrbuf (const MessageLoader * param0, u32 param1, Strbuf *param2)
{
    switch (param0->unk_00) {
    case 0:
        MessageBank_GetStrbuf(param0->unk_08_val1, param1, param2);
        break;
    case 1:
        MessageBank_GetStrbufFromHandle(param0->unk_08_val2, param0->unk_06, param1, param0->unk_02, param2);
        break;
    }
}

Strbuf* MessageLoader_GetNewStrbuf (const MessageLoader * param0, u32 param1)
{
    switch (param0->unk_00) {
    case 0:
        return MessageBank_GetNewStrbuf(param0->unk_08_val1, param1, param0->unk_02);
    case 1:
        return MessageBank_GetNewStrbufFromHandle(param0->unk_08_val2, param0->unk_06, param1, param0->unk_02);
    }

    return NULL;
}

u32 MessageLoader_MessageCount (const MessageLoader * param0)
{
    switch (param0->unk_00) {
    case 0:
        return MessageBank_EntryCount(param0->unk_08_val1);
    case 1:
        return MessageBank_NARCEntryCount(param0->unk_04, param0->unk_06);
    }

    return 0;
}

void MessageLoader_Get (const MessageLoader * param0, u32 param1, u16 * param2)
{
    switch (param0->unk_00) {
    case 0:
        MessageBank_Get(param0->unk_08_val1, param1, param2);
        break;
    case 1:
        MessageBank_GetFromNARC(param0->unk_04, param0->unk_06, param1, param0->unk_02, param2);
        break;
    }
}

void MessageLoader_GetSpeciesName (u32 param0, u32 param1, u16 * param2)
{
    MessageLoader * v0 = MessageLoader_Init(1, 26, 412, param1);

    MessageLoader_Get(v0, 0 + param0, param2);
    MessageLoader_Free(v0);
}
