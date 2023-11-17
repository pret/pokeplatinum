#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0202CC64.h"

typedef struct ChatotCryData_t {
    BOOL unk_00;
    s8 unk_04[1000];
} ChatotCryData;

int GetSizeOfChatotCryData (void)
{
    return sizeof(ChatotCryData);
}

void ChatotCry_Init (ChatotCryData * param0)
{
    MI_CpuClear32(param0, sizeof(ChatotCryData));
    param0->unk_00 = 0;
}

ChatotCryData * AllocateAndInitializeChatotCryData (int param0)
{
    ChatotCryData * v0 = Heap_AllocFromHeap(param0, sizeof(ChatotCryData));

    ChatotCry_Init(v0);
    return v0;
}

ChatotCryData * GetChatotCryDataFromSave (SaveData * param0)
{
    return (ChatotCryData *)SaveData_Get(param0, 22);
}

BOOL IsChatotCryDataValid (const ChatotCryData * param0)
{
    return param0->unk_00;
}

void ResetChatotCryDataStatus (ChatotCryData * param0)
{
    param0->unk_00 = 0;
}

const void * GetChatotCryAudioBuffer (const ChatotCryData * param0)
{
    return param0->unk_04;
}

void ProcessChatotCryAudioData (s8 * param0, const s8 * param1)
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

void StoreProcessedAudioInChatotCryData (ChatotCryData * param0, const s8 * param1)
{
    int v0, v1;
    s8 v2;
    u8 v3;

    param0->unk_00 = 1;
    v1 = 0;

    for (v0 = 0; v0 < 1000 * 2; v0 += 2) {
        v2 = (param1[v0] / 16);
        v3 = v2 + 8;

        param0->unk_04[v1] = v3;

        v2 = (param1[v0 + 1] / 16);
        v3 = v2 + 8;

        param0->unk_04[v1] |= (v3 << 4);

        v1++;
    }
}

void CopyChatotCryData (ChatotCryData * param0, const ChatotCryData * param1)
{
    MI_CpuCopyFast(param1, param0, sizeof(ChatotCryData));
}
