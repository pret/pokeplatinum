#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay055/struct_ov55_0225632C_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay055/struct_ov55_0225632C_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "overlay025/ov25_02255090.h"
#include "overlay055/ov55_0225632C.h"

struct UnkStruct_ov55_0225632C_t {
    const UnkStruct_ov55_0225632C_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[10];
};

static void ov55_022563B4(UnkStruct_ov25_02255224 * param0);
static void ov55_022563C8(UnkStruct_0201CD38 * param0, void * param1);
static void ov55_02256468(UnkStruct_0201CD38 * param0, void * param1);

BOOL ov55_0225632C (UnkStruct_ov55_0225632C ** param0, const UnkStruct_ov55_0225632C_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov55_0225632C * v0 = (UnkStruct_ov55_0225632C *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov55_0225632C));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 8);
        v0->unk_00 = param1;
        v0->unk_04 = sub_02018340(8);

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov55_02256360 (UnkStruct_ov55_0225632C * param0)
{
    if (param0 != NULL) {
        if (param0->unk_04 != NULL) {
            Heap_FreeToHeap(param0->unk_04);
        }

        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov55_022564AC[] = {
    {0x0, ov55_022563C8, 0x0},
    {0x1, ov55_02256468, 0x0},
    {0x0, NULL, 0x0}
};

void ov55_02256378 (UnkStruct_ov55_0225632C * param0, u32 param1)
{
    ov25_0225517C(Unk_ov55_022564AC, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov55_0225639C (UnkStruct_ov55_0225632C * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov55_022563A8 (UnkStruct_ov55_0225632C * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov55_022563B4 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov55_0225632C * v0 = ov25_0225523C(param0);

    ov25_02255224(v0->unk_08, param0);
}

static void ov55_022563C8 (UnkStruct_0201CD38 * param0, void * param1)
{
    static const UnkStruct_ov97_0222DB78 v0 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        GX_BG_SCRBASE_0x7000,
        GX_BG_CHARBASE_0x00000,
        GX_BG_EXTPLTT_01,
        2,
        0,
        0,
        0
    };
    GXSDispCnt v1;
    UnkStruct_ov55_0225632C * v2;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 8, v2->unk_04, 6, 0, 0, 0, 8);
    sub_02019CB8(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);
    sub_02006E84(12, 9, 4, 0 * 0x20, 0x20, 8);

    ov25_02255440(v2->unk_04, v2->unk_00->unk_00, 6);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov55_022563B4(param1);
}

static void ov55_02256468 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov55_0225632C * v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov55_022563B4(param1);
}
