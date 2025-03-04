#include "overlay005/ov5_021F067C.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "narc.h"

typedef struct UnkStruct_ov5_021F0814_t UnkStruct_ov5_021F0814;

typedef struct UnkStruct_ov5_021F06D8_t {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    UnkStruct_ov5_021F0814 *unk_14;
} UnkStruct_ov5_021F06D8;

typedef struct UnkStruct_ov5_021F0814_t {
    void *unk_00;
    u32 unk_04;
} UnkStruct_ov5_021F0814;

static void *ov5_021F07B4(UnkStruct_ov5_021F06D8 *param0, u32 param1, int param2);
static void ov5_021F07D4(void *param0);
static UnkStruct_ov5_021F0814 *ov5_021F07DC(UnkStruct_ov5_021F06D8 *param0, u32 param1);
static UnkStruct_ov5_021F0814 *ov5_021F07FC(UnkStruct_ov5_021F06D8 *param0);
static void ov5_021F0814(UnkStruct_ov5_021F0814 *param0, u32 param1, void *param2);
static void ov5_021F081C(UnkStruct_ov5_021F0814 *param0);

UnkStruct_ov5_021F06D8 *ov5_021F067C(u32 parentHeapID, u32 childHeapID, u32 param2, u32 param3)
{
    u32 v0, v1;
    UnkStruct_ov5_021F06D8 *v2;

    v0 = (sizeof(UnkStruct_ov5_021F0814)) * param3;
    v1 = param2 + v0 + (sizeof(UnkStruct_ov5_021F06D8));

    {
        BOOL v3 = Heap_Create(parentHeapID, childHeapID, v1);

        GF_ASSERT(v3 == 1);
    }

    param2 = v1 - param2;
    v2 = Heap_AllocFromHeap(childHeapID, param2);

    GF_ASSERT(v2 != NULL);
    memset(v2, 0, param2);

    v2->unk_00 = parentHeapID;
    v2->unk_04 = childHeapID;
    v2->unk_08 = param3;
    v2->unk_0C = v1;
    v2->unk_10 = v0;
    v2->unk_14 = (void *)((u32)v2 + (sizeof(UnkStruct_ov5_021F06D8)));

    return v2;
}

void ov5_021F06D8(UnkStruct_ov5_021F06D8 *param0)
{
    {
        u32 v0 = param0->unk_08;
        UnkStruct_ov5_021F0814 *v1 = param0->unk_14;

        while (v0) {
            if (v1->unk_00 != NULL) {
                ov5_021F0740(param0, v1->unk_04);
            }

            v0--;
            v1++;
        }
    }

    {
        u32 v2 = param0->unk_04;

        Heap_FreeToHeap(param0);
        Heap_Destroy(v2);
    }
}

void *ov5_021F070C(UnkStruct_ov5_021F06D8 *param0, u32 param1, u32 param2, int param3)
{
    UnkStruct_ov5_021F0814 *v0 = ov5_021F07FC(param0);

    GF_ASSERT(v0 != NULL);

    {
        void *v1 = ov5_021F07B4(param0, param2, param3);

        ov5_021F0814(v0, param1, v1);
        return v1;
    }
}

void ov5_021F0740(UnkStruct_ov5_021F06D8 *param0, u32 param1)
{
    UnkStruct_ov5_021F0814 *v0 = ov5_021F07DC(param0, param1);

    GF_ASSERT(v0 != NULL);

    ov5_021F07D4(v0->unk_00);
    ov5_021F081C(v0);
}

void *ov5_021F075C(UnkStruct_ov5_021F06D8 *param0, u32 param1)
{
    UnkStruct_ov5_021F0814 *v0 = ov5_021F07DC(param0, param1);

    GF_ASSERT(v0 != NULL);
    return v0->unk_00;
}

int ov5_021F0770(UnkStruct_ov5_021F06D8 *param0, u32 param1)
{
    UnkStruct_ov5_021F0814 *v0 = ov5_021F07DC(param0, param1);

    if (v0 != NULL) {
        return 1;
    }

    return 0;
}

void *ov5_021F0784(UnkStruct_ov5_021F06D8 *param0, u32 param1, NARC *param2, u32 param3, int param4)
{
    u32 v0 = NARC_GetMemberSize(param2, param3);
    void *v1 = ov5_021F070C(param0, param1, v0, param4);

    NARC_ReadWholeMember(param2, param3, v1);
    return v1;
}

static void *ov5_021F07B4(UnkStruct_ov5_021F06D8 *param0, u32 param1, int param2)
{
    void *v0;

    if (param2 == 0) {
        v0 = Heap_AllocFromHeap(param0->unk_04, param1);
    } else {
        v0 = Heap_AllocFromHeapAtEnd(param0->unk_04, param1);
    }

    GF_ASSERT(v0 != NULL);
    return v0;
}

static void ov5_021F07D4(void *param0)
{
    Heap_FreeToHeap(param0);
}

static UnkStruct_ov5_021F0814 *ov5_021F07DC(UnkStruct_ov5_021F06D8 *param0, u32 param1)
{
    u32 v0 = param0->unk_08;
    UnkStruct_ov5_021F0814 *v1 = param0->unk_14;

    while (v0) {
        if ((v1->unk_00 != NULL) && (v1->unk_04 == param1)) {
            return v1;
        }

        v1++;
        v0--;
    }

    return NULL;
}

static UnkStruct_ov5_021F0814 *ov5_021F07FC(UnkStruct_ov5_021F06D8 *param0)
{
    u32 v0 = param0->unk_08;
    UnkStruct_ov5_021F0814 *v1 = param0->unk_14;

    while (v0) {
        if (v1->unk_00 == NULL) {
            return v1;
        }

        v1++;
        v0--;
    }

    return NULL;
}

static void ov5_021F0814(UnkStruct_ov5_021F0814 *param0, u32 param1, void *param2)
{
    param0->unk_00 = param2;
    param0->unk_04 = param1;
}

static void ov5_021F081C(UnkStruct_ov5_021F0814 *param0)
{
    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}
