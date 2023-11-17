#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0202CC64.h"

typedef struct ChatotCry_t {
    BOOL unk_00;
    s8 unk_04[1000];
} ChatotCry;

int GetSizeOfChatotCry (void)
{
    return sizeof(ChatotCry);
}

void ChatotCry_Init (ChatotCry * param0)
{
    MI_CpuClear32(param0, sizeof(ChatotCry));
    param0->unk_00 = 0;
}

ChatotCry * AllocateAndInitializeChatotCry (int param0)
{
    ChatotCry * v0 = Heap_AllocFromHeap(param0, sizeof(ChatotCry));

    ChatotCry_Init(v0);
    return v0;
}

ChatotCry * GetChatotCryFromSave (SaveData * param0)
{
    return (ChatotCry *)SaveData_Get(param0, 22);
}

BOOL IsChatotCryValid (const ChatotCry * param0)
{
    return param0->unk_00;
}

void ResetChatotCryStatus (ChatotCry * param0)
{
    param0->unk_00 = 0;
}

const void * GetChatotCryAudioBuffer (const ChatotCry * param0)
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

void StoreProcessedAudioInChatotCry (ChatotCry * param0, const s8 * param1)
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

void CopyChatotCry (ChatotCry * param0, const ChatotCry * param1)
{
    MI_CpuCopyFast(param1, param0, sizeof(ChatotCry));
}
