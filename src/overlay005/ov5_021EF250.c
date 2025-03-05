#include "overlay005/ov5_021EF250.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    fx32 unk_10;
    BOOL unk_14;
} UnkStruct_ov5_021EF250;

typedef struct UnkStruct_ov5_021EF300_t {
    int unk_00;
    UnkStruct_ov5_021EF250 *unk_04;
} UnkStruct_ov5_021EF300;

static BOOL ov5_021EF250(const int param0, const int param1, const UnkStruct_ov5_021EF250 *param2);

static BOOL ov5_021EF250(const int param0, const int param1, const UnkStruct_ov5_021EF250 *param2)
{
    if (param2->unk_14 == 0) {
        return 0;
    }

    {
        int v0 = param2->unk_00;
        int v1 = param2->unk_04;
        int v2 = v0 + param2->unk_08 - 1;
        int v3 = v1 + param2->unk_0C - 1;

        if ((v0 <= param0) && (param0 <= v2) && (v1 <= param1) && (param1 <= v3)) {
            return 1;
        }
    }

    return 0;
}

UnkStruct_ov5_021EF300 *ov5_021EF28C(const u8 param0, const u8 heapID)
{
    UnkStruct_ov5_021EF300 *v1 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021EF300));

    v1->unk_04 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov5_021EF250) * param0);
    v1->unk_00 = param0;

    for (u8 i = 0; i < param0; i++) {
        v1->unk_04[i].unk_14 = 0;
    }

    return v1;
}

void ov5_021EF2CC(const u8 param0, const int param1, const int param2, const int param3, const int param4, const fx32 param5, UnkStruct_ov5_021EF300 *param6)
{
    param6->unk_04[param0].unk_00 = param1;
    param6->unk_04[param0].unk_04 = param2;
    param6->unk_04[param0].unk_08 = param3;
    param6->unk_04[param0].unk_0C = param4;
    param6->unk_04[param0].unk_10 = param5;
    param6->unk_04[param0].unk_14 = 1;
}

void ov5_021EF300(UnkStruct_ov5_021EF300 *param0)
{
    Heap_FreeToHeap(param0->unk_04);
    Heap_FreeToHeap(param0);
}

BOOL ov5_021EF314(const int param0, const int param1, const UnkStruct_ov5_021EF300 *param2, u8 *param3)
{
    u8 v0;
    BOOL v1;
    UnkStruct_ov5_021EF250 *v2;

    GF_ASSERT(param3 != NULL);

    for (v0 = 0; v0 < param2->unk_00; v0++) {
        v2 = &param2->unk_04[v0];

        if (ov5_021EF250(param0, param1, v2)) {
            *param3 = v0;
            return 1;
        }
    }

    return 0;
}

fx32 ov5_021EF35C(const u8 param0, const UnkStruct_ov5_021EF300 *param1)
{
    GF_ASSERT(param0 < param1->unk_00);
    GF_ASSERT(param1->unk_04[param0].unk_14);

    return param1->unk_04[param0].unk_10;
}

void ov5_021EF388(const u8 param0, const fx32 param1, UnkStruct_ov5_021EF300 *param2)
{
    GF_ASSERT(param0 < param2->unk_00);
    param2->unk_04[param0].unk_10 = param1;
}
