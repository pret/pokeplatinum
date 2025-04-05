#include "unk_020972FC.h"

#include <nitro.h>
#include <string.h>

#include "constants/items.h"

#include "struct_defs/struct_020972FC.h"

#include "heap.h"

static void sub_02097344(u32 *param0, u16 param1);

UnkStruct_020972FC *sub_020972FC(u8 heapID)
{
    UnkStruct_020972FC *v0 = (UnkStruct_020972FC *)Heap_AllocFromHeap(heapID, sizeof(UnkStruct_020972FC));
    memset(v0, 0, sizeof(UnkStruct_020972FC));
    return v0;
}

void sub_02097320(UnkStruct_020972FC *param0, u16 item, u16 param2)
{
    u16 v0 = item - FIRST_BERRY_IDX;

    sub_02097344(param0->unk_00, v0);

    if (param2 == 1) {
        param0->unk_08 = v0;
    }
}

void sub_0209733C(UnkStruct_020972FC *param0, u8 param1, u8 param2, u8 param3)
{
    param0->unk_09 = param1;
    param0->unk_0A = param2;
    param0->unk_0B = param3;
}

static void sub_02097344(u32 *param0, u16 param1)
{
    param0[param1 / 32] |= (1 << (param1 % 32));
}

u8 sub_02097368(u32 *param0, u16 param1)
{
    if ((param0[param1 / 32] & (1 << (param1 % 32))) != 0) {
        return 1;
    }

    return 0;
}

void sub_02097390(UnkStruct_020972FC *param0, u8 *param1, u8 *param2)
{
    *param1 = param0->unk_09;
    *param2 = param0->unk_0A;
}
