#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "overlay005/ov5_021EEAC8.h"

typedef struct UnkStruct_ov5_021EEB48_t {
    u16 unk_00;
    u16 unk_02;
    void * unk_04[4];
    void * unk_14[4];
} UnkStruct_ov5_021EEB48;

static void ov5_021EEB9C(const u8 param0, const int param1, const int param2, UnkStruct_ov5_021EEB48 * param3);

static u8 Unk_ov5_02202128[4][0xf000];

UnkStruct_ov5_021EEB48 * ov5_021EEAC8 (const BOOL param0)
{
    u8 v0;
    int v1;
    UnkStruct_ov5_021EEB48 * v2;

    v2 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021EEB48));
    memset(v2, 0, sizeof(UnkStruct_ov5_021EEB48));

    v2->unk_00 = 1;

    if (param0) {
        v2->unk_02 = 2;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v2->unk_04[v0] = (void *)&Unk_ov5_02202128[v0][0];

        if (v2->unk_04[v0] == NULL) {
            return NULL;
        }

        if (param0) {
            v2->unk_14[v0] = Heap_AllocFromHeap(4, 0x9000);

            if (v2->unk_14[v0] == NULL) {
                return NULL;
            }

            v1 = 0x9000;
        } else {
            v2->unk_14[v0] = NULL;
            v1 = 0;
        }

        ov5_021EEB9C(v0, 0xf000, v1, v2);
    }

    return v2;
}

void ov5_021EEB48 (UnkStruct_ov5_021EEB48 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_00 == 2) {
            Heap_FreeToHeap((void *)param0->unk_04[v0]);
        }

        param0->unk_04[v0] = NULL;

        if (param0->unk_14[v0] != NULL) {
            if (param0->unk_02 == 2) {
                Heap_FreeToHeap((void *)param0->unk_14[v0]);
            }

            param0->unk_14[v0] = NULL;
        }
    }

    Heap_FreeToHeap((void *)param0);
    param0 = NULL;
}

void ov5_021EEB84 (const u8 param0, const UnkStruct_ov5_021EEB48 * param1, void ** param2)
{
    *param2 = param1->unk_04[param0];
}

void ov5_021EEB90 (const u8 param0, const UnkStruct_ov5_021EEB48 * param1, void ** param2)
{
    *param2 = param1->unk_14[param0];
}

static void ov5_021EEB9C (const u8 param0, const int param1, const int param2, UnkStruct_ov5_021EEB48 * param3)
{
    MI_CpuClear8(param3->unk_04[param0], param1);
    MI_CpuClear8(param3->unk_14[param0], param2);
}

UnkStruct_ov5_021EEB48 * ov5_021EEBC0 (const BOOL param0)
{
    u32 v0;
    UnkStruct_ov5_021EEB48 * v1;

    v1 = Heap_AllocFromHeap(4, sizeof(UnkStruct_ov5_021EEB48));
    memset(v1, 0, sizeof(UnkStruct_ov5_021EEB48));
    v1->unk_00 = 2;

    if (param0) {
        v1->unk_02 = 2;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v1->unk_04[v0] = Heap_AllocFromHeap(
            4, 0xf000);
        MI_CpuClear8(v1->unk_04[v0], 0xf000);

        if (param0 == 1) {
            v1->unk_14[v0] = Heap_AllocFromHeap(
                4, 0x9000);
            MI_CpuClear8(v1->unk_14[v0], 0x9000);
        }
    }

    return v1;
}

void ov5_021EEC24 (UnkStruct_ov5_021EEB48 * param0, UnkStruct_ov5_021EEB48 * param1)
{
    int v0;
    UnkStruct_ov5_021EEB48 v1;

    v1 = *param0;

    param0->unk_00 = param1->unk_00;
    param1->unk_00 = v1.unk_00;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_04[v0] = param1->unk_04[v0];
        param1->unk_04[v0] = v1.unk_04[v0];
    }
}
