#include "unk_020158A8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020158A8.h"

#include "heap.h"
#include "message.h"
#include "strbuf.h"

UnkStruct_020158A8 *sub_020158A8(int heapID)
{
    UnkStruct_020158A8 *v0;
    int v1;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_020158A8));
    MI_CpuClear8(v0, sizeof(UnkStruct_020158A8));

    v0->unk_00 = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POFFIN_NAMES, heapID);

    for (v1 = 0; v1 < 29; v1++) {
        v0->unk_04[v1] = Strbuf_Init(22, heapID);
        MessageLoader_GetStrbuf(v0->unk_00, v1, v0->unk_04[v1]);
    }

    return v0;
}

void sub_020158F4(UnkStruct_020158A8 *param0)
{
    int v0;

    for (v0 = (29 - 1); v0 >= 0; v0--) {
        Strbuf_Free(param0->unk_04[v0]);
    }

    MessageLoader_Free(param0->unk_00);
    Heap_FreeToHeap(param0);
}

const Strbuf *sub_02015918(UnkStruct_020158A8 *param0, int param1)
{
    return (const Strbuf *)param0->unk_04[param1];
}
