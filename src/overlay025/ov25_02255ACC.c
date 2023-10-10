#include <nitro.h>
#include <string.h>

#include "overlay025/struct_ov25_02255B34_decl.h"

#include "struct_defs/union_02022594_020225E0.h"
#include "overlay025/funcptr_ov25_02255ACC.h"

#include "heap.h"
#include "unk_02022594.h"
#include "overlay025/ov25_02255ACC.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08[2];
    u16 unk_0C;
} UnkStruct_ov25_02255C80;

struct UnkStruct_ov25_02255B34_t {
    const UnkUnion_020225E0 * unk_00;
    UnkFuncPtr_ov25_02255ACC unk_04;
    u32 unk_08;
    u32 unk_0C;
    void * unk_10;
    UnkStruct_ov25_02255C80 * unk_14;
};

static void ov25_02255C80(UnkStruct_ov25_02255C80 * param0);
static void ov25_02255CA0(UnkStruct_ov25_02255C80 * param0, u32 param1);
static void ov25_02255CA0(UnkStruct_ov25_02255C80 * param0, u32 param1);
static void ov25_02255CAC(UnkStruct_ov25_02255C80 * param0);
static u32 ov25_02255CC0(UnkStruct_ov25_02255C80 * param0);
static u32 ov25_02255CDC(UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2);
static u32 ov25_02255CF8(UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2);
static u32 ov25_02255D58(UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2);
static u32 ov25_02255D90(UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2);
static u32 ov25_02255DA8(UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2);

UnkStruct_ov25_02255B34 * ov25_02255ACC (const UnkUnion_020225E0 * param0, u32 param1, UnkFuncPtr_ov25_02255ACC param2, void * param3, u32 param4)
{
    UnkStruct_ov25_02255B34 * v0;

    GF_ASSERT(param1 > 0);

    v0 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov25_02255B34));

    if (v0) {
        v0->unk_08 = param4;
        v0->unk_04 = param2;
        v0->unk_00 = param0;
        v0->unk_0C = param1;
        v0->unk_10 = param3;
        v0->unk_14 = Heap_AllocFromHeap(param4, sizeof(UnkStruct_ov25_02255C80) * param1);

        if (v0->unk_14) {
            u32 v1;

            for (v1 = 0; v1 < param1; v1++) {
                ov25_02255C80(&v0->unk_14[v1]);
            }
        } else {
            Heap_FreeToHeapExplicit(param4, v0);
            v0 = NULL;
        }
    }

    return v0;
}

void ov25_02255B34 (UnkStruct_ov25_02255B34 * param0)
{
    GF_ASSERT(param0);
    Heap_FreeToHeapExplicit(param0->unk_08, param0->unk_14);
    Heap_FreeToHeapExplicit(param0->unk_08, param0);
}

void ov25_02255B50 (UnkStruct_ov25_02255B34 * param0)
{
    static u32(*const v0[])(UnkStruct_ov25_02255C80 *, BOOL, BOOL) = {
        ov25_02255CDC,
        ov25_02255CF8,
        ov25_02255D58,
        ov25_02255D90,
        ov25_02255DA8
    };

    BOOL v1, v2;
    u32 v3, v4, v5;

    v1 = sub_0202278C();

    if (v1) {
        v2 = TouchScreen_Tapped();

        for (v3 = 0; v3 < param0->unk_0C; v3++) {
            param0->unk_14[v3].unk_02 = param0->unk_14[v3].unk_01;

            if (param0->unk_14[v3].unk_01) {
                param0->unk_14[v3].unk_01 = sub_02022734(&param0->unk_00[v3]);
            } else {
                param0->unk_14[v3].unk_01 = sub_02022760(&param0->unk_00[v3]);
            }
        }
    } else {
        v2 = 0;

        for (v3 = 0; v3 < param0->unk_0C; v3++) {
            param0->unk_14[v3].unk_02 = param0->unk_14[v3].unk_01;
            param0->unk_14[v3].unk_01 = 0;
        }
    }

    for (v3 = 0; v3 < param0->unk_0C; v3++) {
        v4 = v0[param0->unk_14[v3].unk_00](&param0->unk_14[v3], v1, v2);

        if (param0->unk_14[v3].unk_01 != param0->unk_14[v3].unk_02) {
            v5 = param0->unk_14[v3].unk_01;
        } else {
            v5 = 2;
        }

        if ((v4 != 0) || (v5 != 2)) {
            param0->unk_04(v3, v4, v5, param0->unk_10);
            break;
        }
    }

    for (v3++; v3 < param0->unk_0C; v3++) {
        v0[param0->unk_14[v3].unk_00](&param0->unk_14[v3], v1, v2);
    }
}

void ov25_02255C48 (UnkStruct_ov25_02255B34 * param0, u32 param1, u32 param2, u16 param3)
{
    param0->unk_14[param1].unk_08[param2] = param3;
}

void ov25_02255C5C (UnkStruct_ov25_02255B34 * param0, u32 param1, u16 param2)
{
    param0->unk_14[param1].unk_0C = param2;
}

void ov25_02255C68 (UnkStruct_ov25_02255B34 * param0, u32 param1)
{
    param0->unk_14[param1].unk_04 = 0;
    param0->unk_14[param1].unk_00 = 4;
}

static void ov25_02255C80 (UnkStruct_ov25_02255C80 * param0)
{
    u32 v0;

    param0->unk_00 = 0;
    param0->unk_01 = 0;
    param0->unk_02 = 0;
    param0->unk_04 = 0;
    param0->unk_06 = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_08[v0] = 0;
    }

    param0->unk_0C = 0;
}

static void ov25_02255CA0 (UnkStruct_ov25_02255C80 * param0, u32 param1)
{
    param0->unk_00 = param1;
    param0->unk_04 = 0;
}

static void ov25_02255CA8 (UnkStruct_ov25_02255C80 * param0, u32 param1)
{
    param0->unk_00 = param1;
}

static void ov25_02255CAC (UnkStruct_ov25_02255C80 * param0)
{
    if (param0->unk_04 < 0xffff) {
        param0->unk_04++;
    }
}

static u32 ov25_02255CC0 (UnkStruct_ov25_02255C80 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 2; v0++) {
        if (param0->unk_08[v0] == param0->unk_04) {
            return 5 + v0;
        }
    }

    return 0;
}

static u32 ov25_02255CDC (UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2)
{
    if (param0->unk_01) {
        if (param2) {
            ov25_02255CA0(param0, 1);
            return 1;
        }
    }

    return 0;
}

static u32 ov25_02255CF8 (UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2)
{
    ov25_02255CAC(param0);

    if (param0->unk_01) {
        u32 v0;

        v0 = ov25_02255CC0(param0);

        if (v0 != 0) {
            return v0;
        }

        if ((param0->unk_0C != 0) && (param0->unk_04 >= param0->unk_0C)) {
            param0->unk_04 = 0;
            return 7;
        }
    } else if (param1) {
        ov25_02255CA0(param0, 0);
        return 2;
    } else {
        if (param0->unk_06) {
            ov25_02255CA8(param0, 2);
        } else {
            ov25_02255CA0(param0, 0);
            return 3;
        }
    }

    return 0;
}

static u32 ov25_02255D58 (UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2)
{
    ov25_02255CAC(param0);

    if (param0->unk_04 > param0->unk_06) {
        ov25_02255CA0(param0, 0);
        return 3;
    }

    if (param0->unk_01 && param2) {
        ov25_02255CA0(param0, 3);
        return 4;
    }

    return 0;
}

static u32 ov25_02255D90 (UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2)
{
    if (param0->unk_01) {
        ov25_02255CAC(param0);
    } else {
        ov25_02255CA0(param0, 0);
    }

    return 0;
}

static u32 ov25_02255DA8 (UnkStruct_ov25_02255C80 * param0, BOOL param1, BOOL param2)
{
    if (param0->unk_01 == 0) {
        ov25_02255CA0(param0, 0);
    }

    return 0;
}
