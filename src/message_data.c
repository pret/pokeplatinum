#include <nitro.h>
#include <string.h>

#include "constants/msg_data.h"
#include "constants/narc.h"

#include "inlines.h"

#include "struct_decls/narc.h"
#include "struct_decls/strbuf.h"

#include "narc.h"
#include "message_data.h"
#include "heap.h"
#include "strbuf.h"

typedef struct {
    u32 offset;
    u32 len;
} MessageParam;

typedef struct MessageData_t {
    u16 msgCount;
    u16 rand;
    MessageParam params[];
} MessageData;

typedef struct MessageFormatter_t {
    u16 type;
    u16 heapID;
    u16 narcID;
    u16 dataID;
    union {
        MessageData *data;
        NARC *narc;
    };
} MessageFormatter;

/**
 * @brief Copies a source string into the destination buffer, copy as many
 * characters as would be permitted by the input MessageParam struct.
 * 
 * @param dst 
 * @param src 
 * @param param Sources the number of characters to be copied.
 */
static void MessageData_Strcpy(charcode_t *dst, const charcode_t *src, const MessageParam *param);

MessageData* MessageData_Load (u32 narcID, u32 dataID, u32 heapID)
{
    return NARC_AllocAndReadWholeMemberByIndexPair(narcID, dataID, heapID);
}

void MessageData_Free (MessageData *messageData)
{
    Heap_FreeToHeap(messageData);
}

static inline int CalcParamOffset (u32 msgID)
{
    return sizeof(MessageData) + sizeof(MessageParam) * msgID;
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

void MessageData_Get (const MessageData *messageData, u32 msgID, charcode_t *dst)
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

void MessageData_GetFromNARC (u32 narcID, u32 dataID, u32 msgID, u32 heapID, charcode_t *dst)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        MessageData data;
        NARC_ReadFromMember(narc, dataID, 0, sizeof(MessageData), &data);

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

void MessageData_GetStrbuf (const MessageData *messageData, u32 msgID, Strbuf *strbuf)
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

Strbuf* MessageData_AllocStrbuf (const MessageData *messageData, u32 msgID, u32 heapID)
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

void MessageData_GetStrbufFromNARC (u32 narcID, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    if (narc) {
        MessageData_GetStrbufFromNARCHandle(narc, dataID, msgID, heapID, dst);
        NARC_dtor(narc);
    }
}

void MessageData_GetStrbufFromNARCHandle (NARC *narc, u32 dataID, u32 msgID, u32 heapID, Strbuf *dst)
{
    MessageData data;
    NARC_ReadFromMember(narc, dataID, 0, sizeof(MessageData), &data);

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

Strbuf* MessageData_AllocStrbufFromNARC (u32 narcID, u32 dataID, u32 msgID, u32 heapID)
{
    NARC *narc = NARC_ctor(narcID, heapID);

    Strbuf *strbuf;
    if (narc) {
        strbuf = MessageData_AllocStrbufFromNARCHandle(narc, dataID, msgID, heapID);
        NARC_dtor(narc);
    } else {
        strbuf = Strbuf_Init(4, heapID);
    }
    
    return strbuf;
}

Strbuf* MessageData_AllocStrbufFromNARCHandle (NARC *narc, u32 dataID, u32 msgID, u32 heapID)
{
    MessageData data;
    NARC_ReadFromMember(narc, dataID, 0, sizeof(MessageData), &data);

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

u32 MessageData_MessageCount (const MessageData *data)
{
    return data->msgCount;
}

u32 MessageData_MessageCountFromNARC (u32 narcID, u32 dataID)
{
    MessageData data;
    NARC_ReadFromMemberByIndexPair(&data, narcID, dataID, 0, sizeof(MessageData));
    return data.msgCount;
}

MessageFormatter* MessageFormatter_Init (enum MessageFormatterType loadType, u32 narcID, u32 dataID, u32 heapID)
{
    MessageFormatter *formatter = Heap_AllocFromHeapAtEnd(heapID, sizeof(MessageFormatter));

    if (formatter) {
        if (loadType == FORMATTER_STORE_MESSAGE_DATA) {
            formatter->data = MessageData_Load(narcID, dataID, heapID);

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

void MessageFormatter_Free (MessageFormatter *formatter)
{
    if (formatter == NULL) {
        return;
    }

    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            MessageData_Free(formatter->data);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            NARC_dtor(formatter->narc);
            break;
    }

    Heap_FreeToHeap(formatter);
}

void MessageFormatter_LoadStrbuf (const MessageFormatter *formatter, u32 msgID, Strbuf *dst)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            MessageData_GetStrbuf(formatter->data, msgID, dst);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            MessageData_GetStrbufFromNARCHandle(formatter->narc, formatter->dataID, msgID, formatter->heapID, dst);
            break;
    }
}

Strbuf* MessageFormatter_AllocStrbuf (const MessageFormatter *formatter, u32 msgID)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            return MessageData_AllocStrbuf(formatter->data, msgID, formatter->heapID);
        case FORMATTER_STORE_NARC_HANDLE:
            return MessageData_AllocStrbufFromNARCHandle(formatter->narc, formatter->dataID, msgID, formatter->heapID);
    }

    return NULL;
}

u32 MessageFormatter_MessageCount (const MessageFormatter *formatter)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            return MessageData_MessageCount(formatter->data);
        case FORMATTER_STORE_NARC_HANDLE:
            return MessageData_MessageCountFromNARC(formatter->narcID, formatter->dataID);
    }

    return 0;
}

void MessageFormatter_LoadString (const MessageFormatter *formatter, u32 msgID, charcode_t *dst)
{
    switch (formatter->type) {
        case FORMATTER_STORE_MESSAGE_DATA:
            MessageData_Get(formatter->data, msgID, dst);
            break;
        case FORMATTER_STORE_NARC_HANDLE:
            MessageData_GetFromNARC(formatter->narcID, formatter->dataID, msgID, formatter->heapID, dst);
            break;
    }
}

void MessageFormatter_LoadSpeciesName (u32 species, u32 heapID, charcode_t *dst)
{
    MessageFormatter *formatter = MessageFormatter_Init(FORMATTER_STORE_NARC_HANDLE, MSG_DATA, MSG_DATA_SPECIES_NAMES, heapID);

    MessageFormatter_LoadString(formatter, species, dst);
    MessageFormatter_Free(formatter);
}
