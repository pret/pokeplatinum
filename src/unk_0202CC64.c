#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_021C0794_decl.h"
#include "struct_defs/chatot_cry.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0202CC64.h"

int ChatotCry_SaveSize (void)
{
    return sizeof(ChatotCry);
}

void ChatotCry_Init (ChatotCry * param0)
{
    MI_CpuClear32(param0, sizeof(ChatotCry));
    param0->exists = FALSE;
}

ChatotCry * sub_0202CC84 (int param0)
{
    ChatotCry * v0 = Heap_AllocFromHeap(param0, sizeof(ChatotCry));

    ChatotCry_Init(v0);
    return v0;
}

ChatotCry * sub_0202CC98 (SaveData * param0)
{
    return (ChatotCry *)SaveData_Get(param0, 22);
}

BOOL sub_0202CCA4 (const ChatotCry * param0)
{
    return param0->exists;
}

void sub_0202CCA8 (ChatotCry * param0)
{
    param0->exists = FALSE;
}

const void * sub_0202CCB0 (const ChatotCry * param0)
{
    return param0->data;
}

void sub_0202CCB4 (s8 * param0, const s8 * param1)
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

void sub_0202CCEC (ChatotCry * param0, const s8 * param1)
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

void sub_0202CD3C (ChatotCry * param0, const ChatotCry * param1)
{
    MI_CpuCopyFast(param1, param0, sizeof(ChatotCry));
}
