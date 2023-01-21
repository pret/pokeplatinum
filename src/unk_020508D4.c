#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0203CDB0.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_0208BE5C.h"
#include "overlay005/struct_ov5_021D219C.h"

#include "heap.h"
#include "unk_0203CC84.h"
#include "unk_020508D4.h"

typedef struct UnkStruct_020508D4_t {
    UnkStruct_020508D4 * unk_00;
    UnkFuncPtr_02050904 unk_04;
    int unk_08;
    void * unk_0C;
    int unk_10;
    void * unk_14;
    UnkStruct_0203CDB0 * unk_18;
    UnkStruct_ov5_021D219C * unk_1C;
} UnkStruct_020508D4;

typedef struct {
    int unk_00;
    const UnkStruct_0208BE5C * unk_04;
    void * unk_08;
} UnkStruct_020509F0;

static UnkStruct_020508D4 * sub_020508D4 (UnkStruct_0203CDB0 * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    UnkStruct_020508D4 * v0;

    v0 = AllocFromHeapAtEnd(32, sizeof(UnkStruct_020508D4));
    v0->unk_00 = NULL;
    v0->unk_04 = param1;
    v0->unk_08 = 0;
    v0->unk_0C = param2;
    v0->unk_10 = 0;
    v0->unk_14 = NULL;
    v0->unk_18 = param0;
    v0->unk_1C = AllocFromHeapAtEnd(32, sizeof(UnkStruct_ov5_021D219C));

    return v0;
}

UnkStruct_020508D4 * sub_02050904 (UnkStruct_0203CDB0 * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    UnkStruct_020508D4 * v0;

    GF_ASSERT(param0->unk_10 == NULL);

    v0 = sub_020508D4(param0, param1, param2);
    param0->unk_10 = v0;

    return v0;
}

void sub_02050924 (UnkStruct_020508D4 * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    param0->unk_04 = param1;
    param0->unk_08 = 0;
    param0->unk_0C = param2;

    if ((param0->unk_14 != 0) || (param0->unk_14 != NULL)) {
        FreeToHeap(param0->unk_14);
        param0->unk_10 = 0;
        param0->unk_14 = NULL;
    }
}

UnkStruct_020508D4 * sub_02050944 (UnkStruct_020508D4 * param0, UnkFuncPtr_02050904 param1, void * param2)
{
    UnkStruct_020508D4 * v0;

    v0 = sub_020508D4(param0->unk_18, param1, param2);
    v0->unk_00 = param0;

    param0->unk_18->unk_10 = v0;

    return v0;
}

BOOL sub_02050958 (UnkStruct_0203CDB0 * param0)
{
    if (param0->unk_10 == NULL) {
        return 0;
    }

    while (param0->unk_10->unk_04(param0->unk_10) == 1) {
        UnkStruct_020508D4 * v0;

        v0 = param0->unk_10->unk_00;

        if (param0->unk_10->unk_14) {
            FreeToHeap(param0->unk_10->unk_14);
        }

        FreeToHeap(param0->unk_10->unk_1C);
        FreeToHeap(param0->unk_10);

        param0->unk_10 = v0;

        if (v0 == NULL) {
            return 1;
        }
    }

    return 0;
}

BOOL sub_020509A4 (UnkStruct_0203CDB0 * param0)
{
    return param0->unk_10 != NULL;
}

BOOL sub_020509B4 (UnkStruct_0203CDB0 * param0)
{
    if (sub_0203CD4C(param0) || sub_0203CD74(param0)) {
        return 1;
    } else {
        return 0;
    }
}

void sub_020509D4 (UnkStruct_0203CDB0 * param0)
{
    sub_0203CD00(param0);
}

BOOL sub_020509DC (UnkStruct_0203CDB0 * param0)
{
    if (sub_0203CD5C(param0)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL sub_020509F0 (UnkStruct_020508D4 * param0)
{
    UnkStruct_0203CDB0 * v0 = sub_02050A60(param0);
    UnkStruct_020509F0 * v1 = sub_02050A64(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0203CD84(v0, v1->unk_04, v1->unk_08);
        v1->unk_00++;
        break;
    case 1:
        if (sub_020509B4(v0)) {
            break;
        }

        FreeToHeap(v1);
        return 1;
    }

    return 0;
}

void sub_02050A38 (UnkStruct_020508D4 * param0, const UnkStruct_0208BE5C * param1, void * param2)
{
    UnkStruct_020509F0 * v0 = AllocFromHeapAtEnd(32, sizeof(UnkStruct_020509F0));

    v0->unk_00 = 0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    sub_02050944(param0, sub_020509F0, v0);
}

UnkStruct_0203CDB0 * sub_02050A60 (UnkStruct_020508D4 * param0)
{
    return param0->unk_18;
}

void * sub_02050A64 (UnkStruct_020508D4 * param0)
{
    return param0->unk_0C;
}

int * sub_02050A68 (UnkStruct_020508D4 * param0)
{
    return &param0->unk_08;
}

u32 sub_02050A6C (UnkStruct_020508D4 * param0)
{
    return param0->unk_1C->unk_00;
}
