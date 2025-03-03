#include "unk_02023FCC.h"

#include <nitro.h>
#include <string.h>

#include "functypes/funcptr_02023FCC.h"

#include "heap.h"
#include "touch_screen.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
} UnkStruct_02024028;

typedef struct UnkStruct_02023FCC_t {
    const TouchScreenHitTable *unk_00;
    u32 unk_04;
    UnkFuncPtr_02023FCC unk_08;
    void *unk_0C;
    UnkStruct_02024028 *unk_10;
} UnkStruct_02023FCC;

static void sub_02024028(UnkStruct_02024028 *param0);
static u32 sub_020240F4(UnkStruct_02024028 *param0, BOOL param1, BOOL param2);
static u32 sub_02024110(UnkStruct_02024028 *param0, BOOL param1, BOOL param2);
static void sub_02024144(UnkStruct_02024028 *param0, u32 param1);

UnkStruct_02023FCC *sub_02023FCC(const TouchScreenHitTable *hitTable, u32 param1, UnkFuncPtr_02023FCC param2, void *param3, u32 heapID)
{
    UnkStruct_02023FCC *v0;

    GF_ASSERT(param1 > 0);

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02023FCC));

    if (v0) {
        v0->unk_00 = hitTable;
        v0->unk_04 = param1;
        v0->unk_08 = param2;
        v0->unk_0C = param3;
        v0->unk_10 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_02024028) * param1);

        if (v0->unk_10) {
            u32 v1;

            for (v1 = 0; v1 < param1; v1++) {
                sub_02024028(&v0->unk_10[v1]);
            }
        } else {
            Heap_FreeToHeap(v0);
            v0 = NULL;
        }
    }

    return v0;
}

static void sub_02024028(UnkStruct_02024028 *param0)
{
    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
}

void sub_02024034(UnkStruct_02023FCC *param0)
{
    GF_ASSERT(param0);

    Heap_FreeToHeap(param0->unk_10);
    Heap_FreeToHeap(param0);
}

void sub_0202404C(UnkStruct_02023FCC *param0)
{
    static u32 (*const v0[])(UnkStruct_02024028 *, BOOL, BOOL) = {
        sub_020240F4,
        sub_02024110
    };

    BOOL v1, v2;
    u32 v3, v4;

    v1 = TouchScreen_Touched();

    if (v1) {
        v2 = TouchScreen_Tapped();

        for (v3 = 0; v3 < param0->unk_04; v3++) {
            if (param0->unk_10[v3].unk_01) {
                param0->unk_10[v3].unk_01 = TouchScreen_LocationHeld(&param0->unk_00[v3]);
            } else {
                param0->unk_10[v3].unk_01 = TouchScreen_LocationPressed(&param0->unk_00[v3]);
            }
        }
    } else {
        v2 = 0;

        for (v3 = 0; v3 < param0->unk_04; v3++) {
            param0->unk_10[v3].unk_01 = 0;
        }
    }

    for (v3 = 0; v3 < param0->unk_04; v3++) {
        v4 = v0[param0->unk_10[v3].unk_00](&param0->unk_10[v3], v1, v2);

        if (v4 != 4294967295) {
            param0->unk_08(v3, v4, param0->unk_0C);
        }
    }
}

static u32 sub_020240F4(UnkStruct_02024028 *param0, BOOL param1, BOOL param2)
{
    if (param0->unk_01) {
        if (param2) {
            sub_02024144(param0, 1);
            return 0;
        }
    }

    return 4294967295;
}

static u32 sub_02024110(UnkStruct_02024028 *param0, BOOL param1, BOOL param2)
{
    if (param0->unk_01) {
        if (param0->unk_02 < 65535) {
            param0->unk_02++;
        }

        return 2;
    } else if (param1) {
        sub_02024144(param0, 0);
        return 3;
    } else {
        sub_02024144(param0, 0);
        return 1;
    }

    return 4294967295;
}

static void sub_02024144(UnkStruct_02024028 *param0, u32 param1)
{
    param0->unk_00 = param1;
    param0->unk_02 = 0;
}
