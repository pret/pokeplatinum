#include "unk_0207E060.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207E060.h"

#include "overlay004/ov4_021D0D80.h"

#include "heap.h"
#include "trainer_info.h"

UnkStruct_0207E060 *sub_0207E060(const TrainerInfo *info, u32 heapID)
{
    UnkStruct_0207E060 *v0;
    BOOL v1;

    v0 = Heap_AllocFromHeap(heapID, (sizeof(UnkStruct_0207E060)));
    memset(v0, 0, (sizeof(UnkStruct_0207E060)));

    v0->unk_1B = 28;
    v0->unk_1E = TrainerInfo_Gender(info);
    v0->unk_1D = TrainerInfo_Appearance(info);
    v0->unk_18 = TrainerInfo_GameCode(info);
    v0->unk_19 = TrainerInfo_RegionCode(info);

    v1 = ov4_021D222C(v0, (sizeof(UnkStruct_0207E060)));
    GF_ASSERT(v1 == 1);

    return v0;
}

void sub_0207E0B0(UnkStruct_0207E060 *param0)
{
    Heap_FreeToHeap(param0);
}
