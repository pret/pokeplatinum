#include "overlay063/ov63_0222D77C.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay063/struct_ov63_0222D894.h"

#include "heap.h"

typedef struct UnkStruct_ov63_0222D77C_t {
    UnkStruct_ov63_0222CCB8 *unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov63_0222D77C;

typedef struct UnkStruct_ov63_0222D848_t {
    UnkStruct_ov63_0222D894 *unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A;
} UnkStruct_ov63_0222D848;

UnkStruct_ov63_0222D77C *ov63_0222D77C(u32 param0, u32 heapID)
{
    UnkStruct_ov63_0222D77C *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov63_0222D77C));
    GF_ASSERT(v0);

    v0->unk_04 = param0 + 1;
    v0->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov63_0222CCB8) * v0->unk_04);

    memset(v0->unk_00, 0, sizeof(UnkStruct_ov63_0222CCB8) * v0->unk_04);

    v0->unk_08 = 0;
    v0->unk_0A = 0;

    return v0;
}

void ov63_0222D7B4(UnkStruct_ov63_0222D77C *param0)
{
    Heap_Free(param0->unk_00);
    Heap_Free(param0);
}

void ov63_0222D7C8(UnkStruct_ov63_0222D77C *param0, const UnkStruct_ov63_0222CCB8 *param1)
{
    if (((param0->unk_0A + 1) % param0->unk_04) == param0->unk_08) {
        UnkStruct_ov63_0222CCB8 v0;
        ov63_0222D810(param0, &v0);
    }

    param0->unk_00[param0->unk_0A] = *param1;
    param0->unk_0A = (param0->unk_0A + 1) % param0->unk_04;
}

BOOL ov63_0222D810(UnkStruct_ov63_0222D77C *param0, UnkStruct_ov63_0222CCB8 *param1)
{
    if (param0->unk_0A == param0->unk_08) {
        return 0;
    }

    *param1 = param0->unk_00[param0->unk_08];
    param0->unk_08 = (param0->unk_08 + 1) % param0->unk_04;

    return 1;
}

UnkStruct_ov63_0222D848 *ov63_0222D848(u32 param0, u32 heapID)
{
    UnkStruct_ov63_0222D848 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov63_0222D848));
    GF_ASSERT(v0);

    v0->unk_04 = param0 + 1;
    v0->unk_00 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov63_0222D894) * v0->unk_04);

    memset(v0->unk_00, 0, sizeof(UnkStruct_ov63_0222D894) * v0->unk_04);

    v0->unk_08 = 0;
    v0->unk_0A = 0;

    return v0;
}

void ov63_0222D880(UnkStruct_ov63_0222D848 *param0)
{
    Heap_Free(param0->unk_00);
    Heap_Free(param0);
}

void ov63_0222D894(UnkStruct_ov63_0222D848 *param0, const UnkStruct_ov63_0222D894 *param1)
{
    if (((param0->unk_0A + 1) % param0->unk_04) == param0->unk_08) {
        UnkStruct_ov63_0222D894 v0;
        ov63_0222D8D0(param0, &v0);
    }

    param0->unk_00[param0->unk_0A] = *param1;
    param0->unk_0A = (param0->unk_0A + 1) % param0->unk_04;
}

BOOL ov63_0222D8D0(UnkStruct_ov63_0222D848 *param0, UnkStruct_ov63_0222D894 *param1)
{
    if (param0->unk_0A == param0->unk_08) {
        return 0;
    }

    *param1 = param0->unk_00[param0->unk_08];
    param0->unk_08 = (param0->unk_08 + 1) % param0->unk_04;

    return 1;
}
