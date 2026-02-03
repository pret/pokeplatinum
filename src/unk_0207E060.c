#include "unk_0207E060.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207E060.h"

#include "nintendo_wfc/main.h"

#include "heap.h"
#include "trainer_info.h"

UnkStruct_0207E060 *sub_0207E060(const TrainerInfo *info, enum HeapID heapID)
{
    UnkStruct_0207E060 *v0;
    BOOL v1;

    v0 = Heap_Alloc(heapID, (sizeof(UnkStruct_0207E060)));
    memset(v0, 0, (sizeof(UnkStruct_0207E060)));

    v0->unk_1B = 28;
    v0->unk_1E = TrainerInfo_Gender(info);
    v0->unk_1D = TrainerInfo_Appearance(info);
    v0->unk_18 = TrainerInfo_GameCode(info);
    v0->language = TrainerInfo_Language(info);

    v1 = NintendoWFC_SetStatusData(v0, (sizeof(UnkStruct_0207E060)));
    GF_ASSERT(v1 == 1);

    return v0;
}

void sub_0207E0B0(UnkStruct_0207E060 *param0)
{
    Heap_Free(param0);
}
