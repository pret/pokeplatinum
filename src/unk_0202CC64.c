#include "unk_0202CC64.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/chatot_cry.h"

#include "heap.h"
#include "savedata.h"

int ChatotCry_SaveSize(void)
{
    return sizeof(ChatotCry);
}

void ChatotCry_Init(ChatotCry *param0)
{
    MI_CpuClear32(param0, sizeof(ChatotCry));
    param0->exists = FALSE;
}

ChatotCry *ChatotCry_New(int heapID)
{
    ChatotCry *cry = Heap_Alloc(heapID, sizeof(ChatotCry));

    ChatotCry_Init(cry);
    return cry;
}

ChatotCry *SaveData_GetChatotCry(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_CHATOT);
}

BOOL IsChatotCryDataValid(const ChatotCry *cry)
{
    return cry->exists;
}

void ResetChatotCryDataStatus(ChatotCry *param0)
{
    param0->exists = FALSE;
}

const void *GetChatotCryAudioBuffer(const ChatotCry *param0)
{
    return param0->data;
}

void ProcessChatotCryAudioData(s8 *param0, const s8 *param1)
{
    int v0, v1 = 0;
    s8 v2;
    u8 v3;

    for (v0 = 0; v0 < 1000; v0++) {
        v3 = param1[v0] & 0xf;
        v2 = v3 - 8;

        param0[v1] = v2 * 16;

        v3 = param1[v0] >> 4;
        v2 = v3 - 8;

        param0[v1 + 1] = v2 * 16;

        v1 += 2;
    }
}

void StoreProcessedAudioInChatotCryData(ChatotCry *param0, const s8 *param1)
{
    int v0, v1;
    s8 v2;
    u8 v3;

    param0->exists = TRUE;
    v1 = 0;

    for (v0 = 0; v0 < 1000 * 2; v0 += 2) {
        v2 = (param1[v0] / 16);
        v3 = v2 + 8;

        param0->data[v1] = v3;

        v2 = (param1[v0 + 1] / 16);
        v3 = v2 + 8;

        param0->data[v1] |= (v3 << 4);

        v1++;
    }
}

void CopyChatotCryData(ChatotCry *param0, const ChatotCry *param1)
{
    MI_CpuCopyFast(param1, param0, sizeof(ChatotCry));
}
