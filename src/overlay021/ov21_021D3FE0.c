#include "overlay021/ov21_021D3FE0.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/funcptr_ov21_021D41EC.h"
#include "overlay021/funcptr_ov21_021D420C.h"
#include "overlay021/struct_ov21_021D4008.h"
#include "overlay021/struct_ov21_021E6A68.h"
#include "overlay021/struct_ov21_021E6B20.h"

#include "heap.h"

typedef struct UnkStruct_ov21_021D3FE0_t {
    void *unk_00;
    void *unk_04;
    int unk_08;
    UnkStruct_ov21_021E6A68 unk_0C;
    UnkFuncPtr_ov21_021D41EC unk_20[3];
    UnkStruct_ov21_021E6B20 unk_2C;
    UnkFuncPtr_ov21_021D420C unk_38[3];
    int heapID;
} UnkStruct_ov21_021D3FE0;

static void ov21_021D41D8(UnkStruct_ov21_021E6A68 *param0);
static void ov21_021D41E4(UnkStruct_ov21_021E6B20 *param0);
static int ov21_021D41EC(UnkFuncPtr_ov21_021D41EC param0, UnkStruct_ov21_021E6A68 *param1, void *param2);
static int ov21_021D420C(UnkFuncPtr_ov21_021D420C param0, void *param1, UnkStruct_ov21_021E6B20 *param2, const void *param3, const UnkStruct_ov21_021E6A68 *param4);

UnkStruct_ov21_021D3FE0 *ov21_021D3FE0(enum HeapId heapID)
{
    UnkStruct_ov21_021D3FE0 *v0;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov21_021D3FE0));

    GF_ASSERT(v0);
    memset(v0, 0, sizeof(UnkStruct_ov21_021D3FE0));

    v0->unk_08 = 5;
    v0->heapID = heapID;

    return v0;
}

void ov21_021D4008(UnkStruct_ov21_021D3FE0 *param0, const UnkStruct_ov21_021D4008 *param1)
{
    GF_ASSERT(param0);
    GF_ASSERT(param1);
    GF_ASSERT(ov21_021D41A8(param0));

    param0->unk_00 = param1->unk_00;
    param0->unk_04 = param1->unk_04;
    param0->unk_08 = 0;

    ov21_021D41D8(&param0->unk_0C);
    param0->unk_0C.heapID = param0->heapID;

    ov21_021D41E4(&param0->unk_2C);
    param0->unk_2C.heapID = param0->heapID;

    param0->unk_20[0] = param1->unk_08[0];
    param0->unk_20[1] = param1->unk_08[1];
    param0->unk_20[2] = param1->unk_08[2];
    param0->unk_38[0] = param1->unk_0C[0];
    param0->unk_38[1] = param1->unk_0C[1];
    param0->unk_38[2] = param1->unk_0C[2];
}

int ov21_021D4078(UnkStruct_ov21_021D3FE0 *param0)
{
    int v0;

    GF_ASSERT(param0);

    switch (param0->unk_08) {
    case 0:
        v0 = ov21_021D41EC(param0->unk_20[0], &param0->unk_0C, param0->unk_00);

        if (v0 == 1) {
            param0->unk_08++;
            param0->unk_0C.unk_00 = 0;
        }
        break;
    case 1:
        break;
    case 2:
        v0 = ov21_021D41EC(param0->unk_20[1], &param0->unk_0C, param0->unk_00);

        if (v0 == 1) {
            param0->unk_08++;
            param0->unk_0C.unk_00 = 0;
            param0->unk_2C.unk_00 = 0;
        }
        break;
    case 3:
        break;
    case 4:
        v0 = ov21_021D41EC(param0->unk_20[2], &param0->unk_0C, param0->unk_00);

        if (v0 == 1) {
            param0->unk_08++;
        }
        break;
    case 5:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

int ov21_021D4100(UnkStruct_ov21_021D3FE0 *param0)
{
    int v0;

    GF_ASSERT(param0);

    switch (param0->unk_08) {
    case 0:
        break;
    case 1:
        v0 = ov21_021D420C(param0->unk_38[0], param0->unk_04, &param0->unk_2C, param0->unk_00, &param0->unk_0C);

        if (v0 == 1) {
            param0->unk_08++;
            param0->unk_2C.unk_00 = 0;
        }
        break;
    case 2:
        ov21_021D420C(param0->unk_38[1], param0->unk_04, &param0->unk_2C, param0->unk_00, &param0->unk_0C);
        break;
    case 3:
        v0 = ov21_021D420C(param0->unk_38[2], param0->unk_04, &param0->unk_2C, param0->unk_00, &param0->unk_0C);

        if (v0 == 1) {
            param0->unk_08++;
        }
        break;
    case 4:
        break;
    case 5:
        return 1;
    default:
        GF_ASSERT(0);
        break;
    }

    return 0;
}

void ov21_021D4194(UnkStruct_ov21_021D3FE0 *param0, BOOL param1)
{
    param0->unk_0C.unk_10 = param1;
}

void ov21_021D4198(UnkStruct_ov21_021D3FE0 *param0)
{
    GF_ASSERT(param0);
    param0->unk_0C.unk_0C = 1;
}

BOOL ov21_021D41A8(UnkStruct_ov21_021D3FE0 *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_08 == 5) {
        return 1;
    }

    return 0;
}

BOOL ov21_021D41C0(UnkStruct_ov21_021D3FE0 *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_08 == 2) {
        return 1;
    }

    return 0;
}

static void ov21_021D41D8(UnkStruct_ov21_021E6A68 *param0)
{
    param0->unk_00 = 0;
    param0->unk_08 = NULL;
    param0->unk_0C = 0;
}

static void ov21_021D41E4(UnkStruct_ov21_021E6B20 *param0)
{
    param0->unk_00 = 0;
    param0->unk_08 = NULL;
}

static int ov21_021D41EC(UnkFuncPtr_ov21_021D41EC param0, UnkStruct_ov21_021E6A68 *param1, void *param2)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = param0(param1, param2);

    return v0;
}

static int ov21_021D420C(UnkFuncPtr_ov21_021D420C param0, void *param1, UnkStruct_ov21_021E6B20 *param2, const void *param3, const UnkStruct_ov21_021E6A68 *param4)
{
    int v0;

    GF_ASSERT(param0);
    GF_ASSERT(param2);
    GF_ASSERT(param4);

    v0 = param0(param1, param2, param3, param4);

    return v0;
}
