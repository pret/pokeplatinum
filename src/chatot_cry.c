#include "chatot_cry.h"

#include <nitro.h>

#include "heap.h"
#include "savedata.h"

int ChatotCry_SaveSize(void)
{
    return sizeof(ChatotCry);
}

void ChatotCry_Init(ChatotCry *chatotCry)
{
    MI_CpuClear32(chatotCry, sizeof(ChatotCry));
    chatotCry->valid = FALSE;
}

ChatotCry *ChatotCry_New(enum HeapID heapID)
{
    ChatotCry *cry = Heap_Alloc(heapID, sizeof(ChatotCry));

    ChatotCry_Init(cry);
    return cry;
}

ChatotCry *SaveData_GetChatotCry(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_CHATOT);
}

BOOL ChatotCry_IsValid(const ChatotCry *cry)
{
    return cry->valid;
}

void ChatotCry_ResetStatus(ChatotCry *chatotCry)
{
    chatotCry->valid = FALSE;
}

const void *ChatotCry_GetRawAudio(const ChatotCry *chatotCry)
{
    return chatotCry->audioData;
}

// Converts Chatot Cry data (stored in 1Khz 4-bit) to wave data (2khz 8-bit).
void ChatotCry_GetUpsampledAudio(s8 *outData, const s8 *inCryData)
{
    int i, index = 0;
    u8 sample;
    s8 convertedSample;

    for (i = 0; i < CHATOT_CRY_SIZE; i++) {
        // first sample (lower 4 bits)
        sample = inCryData[i] & 0xf;
        convertedSample = sample - 8;
        outData[index] = convertedSample * 16;

        // second sample (upper 4 bits)
        sample = inCryData[i] >> 4;
        convertedSample = sample - 8;
        outData[index + 1] = convertedSample * 16;

        index += 2;
    }
}

// Stores input data (2khz 8-bit) in a ChatotCry object (1khz 4-bit).
void ChatotCry_StoreAudio(ChatotCry *chatotCry, const s8 *inData)
{
    int i, index = 0;
    s8 sample;
    u8 convertedSample;

    chatotCry->valid = TRUE;

    for (i = 0; i < CHATOT_CRY_SIZE * 2; i += 2) {
        // first sample (lower 4 bits)
        sample = (inData[i] / 16);
        convertedSample = sample + 8;
        chatotCry->audioData[index] = convertedSample;

        // second sample (upper 4 bits)
        sample = (inData[i + 1] / 16);
        convertedSample = sample + 8;
        chatotCry->audioData[index] |= (convertedSample << 4);

        index++;
    }
}

void ChatotCry_Copy(ChatotCry *dest, const ChatotCry *src)
{
    MI_CpuCopyFast(src, dest, sizeof(ChatotCry));
}
