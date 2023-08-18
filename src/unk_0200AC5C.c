#include <nitro.h>
#include <string.h>

#include "constants/msg_data.h"
#include "constants/narc.h"

#include "inlines.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02023790_decl.h"

#include "narc.h"
#include "unk_0200AC5C.h"
#include "heap.h"
#include "strbuf.h"

typedef struct {
    u32 offset;
    u32 len;
} MessageParam;

typedef struct UnkStruct_0200AC5C_t {
    u16 msgCount;
    u16 rand;
    MessageParam params[];
} UnkStruct_0200AC5C;

typedef struct UnkStruct_0200B144_t {
    u16 type;
    u16 heapID;
    u16 narcID;
    u16 dataID;
    union {
        UnkStruct_0200AC5C *data;
        NARC *narc;
    };
} UnkStruct_0200B144;

/**
 * @brief Copies a source string into the destination buffer, copy as many
 * characters as would be permitted by the input MessageParam struct.
 * 
 * @param dst 
 * @param src 
 * @param param Sources the number of characters to be copied.
 */
static void MessageData_Strcpy(charcode_t *dst, const charcode_t *src, const MessageParam *param);

UnkStruct_0200AC5C* sub_0200AC5C (u32 narcID, u32 dataID, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, dataID, heapID);
}

void sub_0200AC64 (UnkStruct_0200AC5C *messageData)
{
    Heap_FreeToHeap(messageData);
}

static inline int CalcParamOffset (u32 msgID)
{
    return sizeof(UnkStruct_0200AC5C) + sizeof(MessageParam) * msgID;
}

static inline void DecodeParam (MessageParam *param, u32 msgID, u32 rand)
{
    rand = (rand * 765 * (msgID + 1)) & 0xFFFF;
    rand |= (rand << 16);

    param->offset ^= rand;
    param->len ^= rand;
}

static inline void DecodeString (charcode_t *str, u32 len, u32 msgID, u16 rand)
{
    rand = (msgID + 1) * 596947;

    while (len--) {
        *str ^= rand;
        str++;
        rand += 18749;
    }
}

void sub_0200AC6C (const UnkStruct_0200AC5C *messageData, u32 msgID, charcode_t *dst)
{
    if (msgID < messageData->msgCount) {
        MessageParam param = messageData->params[msgID];
        DecodeParam(&param, msgID, messageData->rand);

        const charcode_t *str = (charcode_t *)(((u8 *)messageData) + param.offset);
        MessageData_Strcpy(dst, str, &param);
        DecodeString(dst, param.len, msgID, messageData->rand);

        return;
    }

    GF_ASSERT(FALSE);
}

void sub_0200ACF0 (u32 narcID, u32 dataID, u32 msgID, u32 heapID, charcode_t *dst)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        UnkStruct_0200AC5C data;
        NARC_ReadFromMember(narc, dataID, 0, sizeof(UnkStruct_0200AC5C), &data);

        MessageParam param;
        NARC_ReadFromMember(narc, dataID, CalcParamOffset(msgID), sizeof(MessageParam), &param);

        DecodeParam(&param, msgID, data.rand);

        u32 size = param.len * sizeof(charcode_t);
        NARC_ReadFromMember(narc, dataID, param.offset, size, dst);

        DecodeString(dst, param.len, msgID, data.rand);
        NARC_dtor(narc);
    }
}

static void MessageData_Strcpy (charcode_t *dst, const charcode_t *src, const MessageParam *param)
{
    MI_CpuCopy16(src, dst, param->len * sizeof(charcode_t));
}

void sub_0200ADAC (const UnkStruct_0200AC5C *messageData, u32 msgID, Strbuf *strbuf)
{
    if (msgID < messageData->msgCount) {
        MessageParam param = messageData->params[msgID];
        DecodeParam(&param, msgID, messageData->rand);

        u32 size = param.len * sizeof(u16);
        charcode_t *str = Heap_AllocFromHeapAtEnd(0, size);

        if (str) {
            MI_CpuCopy16((((u8 *)messageData) + param.offset), str, size);

            DecodeString(str, param.len, msgID, messageData->rand);
            Strbuf_CopyNumChars(strbuf, str, param.len);
            Heap_FreeToHeap(str);
        }

        return;
    }

    GF_ASSERT(FALSE);
    Strbuf_Clear(strbuf);
}

Strbuf* sub_0200AE5C (const UnkStruct_0200AC5C *messageData, u32 msgID, u32 heapID)
{
    if (msgID < messageData->msgCount) {
        MessageParam param = messageData->params[msgID];
        DecodeParam(&param, msgID, messageData->rand);

        u32 size = param.len * sizeof(u16);
        charcode_t *str = Heap_AllocFromHeapAtEnd(heapID, size);

        if (str) {
            MI_CpuCopy16((((u8 *)messageData) + param.offset), str, size);
            DecodeString(str, param.len, msgID, messageData->rand);

            Strbuf *dst = Strbuf_Init(param.len, heapID);
            if (dst) {
                Strbuf_CopyNumChars(dst, str, param.len);
            }

            Heap_FreeToHeap(str);
            return dst;
        }

        return NULL;
    }

    GF_ASSERT(FALSE);
    return Strbuf_Init(4, heapID);
}

void sub_0200AF20 (u32 narcID, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        sub_0200AF48(narc, dataID, msgID, heapID, dst);
        NARC_dtor(narc);
    }
}

void sub_0200AF48 (NARC *narc, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst)
{
    UnkStruct_0200AC5C data;
    NARC_ReadFromMember(narc, dataID, 0, sizeof(UnkStruct_0200AC5C), &data);

    if (msgID < data.msgCount) {
        MessageParam param;
        NARC_ReadFromMember(narc, dataID, CalcParamOffset(msgID), sizeof(MessageParam), &param);
        DecodeParam(&param, msgID, data.rand);

        u32 size = param.len * sizeof(charcode_t);
        charcode_t *str = Heap_AllocFromHeapAtEnd(heapID, size);
        if (str) {
            NARC_ReadFromMember(narc, dataID, param.offset, size, str);
            DecodeString(str, param.len, msgID, data.rand);
            Strbuf_CopyNumChars(dst, str, param.len);
            Heap_FreeToHeap(str);
        }

        return;
    }

    GF_ASSERT(FALSE);
    Strbuf_Clear(dst);
}

Strbuf* sub_0200B010 (u32 narcID, u32 dataID, u32 msgID, u32 heapID)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    Strbuf *strbuf;
    if (narc) {
        strbuf = sub_0200B044(narc, dataID, msgID, heapID);
        NARC_dtor(narc);
    } else {
        strbuf = Strbuf_Init(4, heapID);
    }
    
    return strbuf;
}

Strbuf* sub_0200B044 (NARC *narc, u32 dataID, u32 msgID, u32 heapID)
{
    UnkStruct_0200AC5C data;
    NARC_ReadFromMember(narc, dataID, 0, sizeof(UnkStruct_0200AC5C), &data);

    if (msgID < data.msgCount) {
        MessageParam param;
        NARC_ReadFromMember(narc, dataID, CalcParamOffset(msgID), sizeof(MessageParam), &param);
        DecodeParam(&param, msgID, data.rand);

        Strbuf *strbuf = Strbuf_Init(param.len, heapID);
        if (strbuf) {
            u32 size = param.len * sizeof(charcode_t);
            charcode_t *str = Heap_AllocFromHeapAtEnd(heapID, size);

            if (str) {
                NARC_ReadFromMember(narc, dataID, param.offset, size, str);
                DecodeString(str, param.len, msgID, data.rand);
                Strbuf_CopyNumChars(strbuf, str, param.len);
                Heap_FreeToHeap(str);
            }
        }

        return strbuf;
    }

    GF_ASSERT(FALSE);
    return Strbuf_Init(4, heapID);
}

u32 sub_0200B120 (const UnkStruct_0200AC5C *data)
{
    return data->msgCount;
}

u32 sub_0200B124 (u32 narcID, u32 dataID)
{
    UnkStruct_0200AC5C data;
    NARC_ReadFromMemberByIndexPair(&data, narcID, dataID, 0, sizeof(UnkStruct_0200AC5C));
    return data.msgCount;
}

UnkStruct_0200B144* sub_0200B144 (enum MessageFormatterType loadType, u32 narcID, u32 dataID, u32 heapID)
{
    UnkStruct_0200B144 *formatter = Heap_AllocFromHeapAtEnd(heapID, sizeof(UnkStruct_0200B144));

    if (formatter) {
        if (loadType == FORMATTER_STORE_MESSAGE_DATA) {
            formatter->data = sub_0200AC5C(narcID, dataID, heapID);

            if (formatter->data == NULL) {
                Heap_FreeToHeap(formatter);
                return NULL;
            }
        } else {
            formatter->narc = NARC_ctor(narcID, heapID);
        }

        formatter->type = loadType;
        formatter->narcID = narcID;
        formatter->dataID = dataID;
        formatter->heapID = heapID;
    }

    return formatter;
}

void sub_0200B190 (UnkStruct_0200B144 *formatter)
{
    if (formatter == NULL) {
        return;
    }

    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            sub_0200AC64(formatter->data);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            NARC_dtor(formatter->narc);
            break;
    }

    Heap_FreeToHeap(formatter);
}

void sub_0200B1B8 (const UnkStruct_0200B144 *formatter, u32 msgID, Strbuf *dst)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            sub_0200ADAC(formatter->data, msgID, dst);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            sub_0200AF48(formatter->narc, formatter->dataID, msgID, formatter->heapID, dst);
            break;
    }
}

Strbuf* sub_0200B1EC (const UnkStruct_0200B144 *formatter, u32 msgID)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            return sub_0200AE5C(formatter->data, msgID, formatter->heapID);
        case FORMATTER_STORE_NARC_HANDLE:
            return sub_0200B044(formatter->narc, formatter->dataID, msgID, formatter->heapID);
    }

    return NULL;
}

u32 sub_0200B218 (const UnkStruct_0200B144 *formatter)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            return sub_0200B120(formatter->data);
        case FORMATTER_STORE_NARC_HANDLE:
            return sub_0200B124(formatter->narcID, formatter->dataID);
    }

    return 0;
}

void sub_0200B240 (const UnkStruct_0200B144 *formatter, u32 msgID, charcode_t *dst)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            sub_0200AC6C(formatter->data, msgID, dst);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            sub_0200ACF0(formatter->narcID, formatter->dataID, msgID, formatter->heapID, dst);
            break;
    }
}

void sub_0200B274 (u32 species, u32 heapID, charcode_t *dst)
{
    UnkStruct_0200B144 *formatter = sub_0200B144(FORMATTER_STORE_NARC_HANDLE, MSG_DATA, MSG_DATA_SPECIES_NAMES, heapID);

    sub_0200B240(formatter, species, dst);
    sub_0200B190(formatter);
}
