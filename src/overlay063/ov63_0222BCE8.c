#include "overlay063/ov63_0222BCE8.h"

#include <nitro.h>
#include <string.h>

#include "overlay063/union_ov63_0222BDAC.h"

#include "heap.h"

typedef struct UnkStruct_ov63_0222BCE8_t {
    u16 unk_00;
    u16 unk_02;
    UnkUnion_ov63_0222BDAC *unk_04;
} UnkStruct_ov63_0222BCE8;

UnkStruct_ov63_0222BCE8 *ov63_0222BCE8(u16 param0, u16 param1, u32 param2)
{
    UnkStruct_ov63_0222BCE8 *v0;

    v0 = Heap_AllocFromHeap(param2, sizeof(UnkStruct_ov63_0222BCE8));
    GF_ASSERT(v0);

    v0->unk_00 = param0;
    v0->unk_02 = param1;

    v0->unk_04 = Heap_AllocFromHeap(param2, sizeof(UnkUnion_ov63_0222BDAC) * (v0->unk_00 * v0->unk_02));
    GF_ASSERT(v0->unk_04);
    memset(v0->unk_04, 0, sizeof(UnkUnion_ov63_0222BDAC) * (v0->unk_00 * v0->unk_02));

    return v0;
}

void ov63_0222BD30(UnkStruct_ov63_0222BCE8 *param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

u16 ov63_0222BD48(const UnkStruct_ov63_0222BCE8 *param0)
{
    return param0->unk_00;
}

u16 ov63_0222BD4C(const UnkStruct_ov63_0222BCE8 *param0)
{
    return param0->unk_02;
}

void ov63_0222BD50(UnkStruct_ov63_0222BCE8 *param0, const UnkUnion_ov63_0222BDAC *param1)
{
    GF_ASSERT(param0);
    memcpy(param0->unk_04, param1, sizeof(UnkUnion_ov63_0222BDAC) * (param0->unk_00 * param0->unk_02));
}

UnkUnion_ov63_0222BDAC ov63_0222BD70(const UnkStruct_ov63_0222BCE8 *param0, u16 param1, u16 param2)
{
    UnkUnion_ov63_0222BDAC v0 = { 0xffffffff };

    GF_ASSERT(param0);

    if ((param0->unk_00 > param1) && (param0->unk_02 > param2)) {
        v0 = param0->unk_04[(param0->unk_00 * param2) + param1];
    }

    return v0;
}

BOOL ov63_0222BDAC(const UnkStruct_ov63_0222BCE8 *param0, u16 param1, u16 param2)
{
    UnkUnion_ov63_0222BDAC v0;

    GF_ASSERT(param0);

    v0 = ov63_0222BD70(param0, param1, param2);

    if (v0.val1 == 0xffffffff) {
        return 1;
    }

    return v0.val2_0;
}

u32 ov63_0222BDE4(const UnkStruct_ov63_0222BCE8 *param0, u16 param1, u16 param2)
{
    UnkUnion_ov63_0222BDAC v0;

    GF_ASSERT(param0);

    v0 = ov63_0222BD70(param0, param1, param2);

    if (v0.val1 == 0xffffffff) {
        return 0;
    }

    return v0.val2_1;
}
