#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay042/struct_ov42_022563D4_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay042/struct_ov42_022563D4_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "heap.h"
#include "unk_02018340.h"
#include "overlay025/poketch_system.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay042/ov42_022563D4.h"

static fx32 Unk_ov42_02256720 = 0;
static fx32 Unk_ov42_02256724 = 0;

struct UnkStruct_ov42_022563D4_t {
    const UnkStruct_ov42_022563D4_1 * unk_00;
    BGL * unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 * unk_20;
    UnkStruct_ov25_022558C4 * unk_24;
    UnkStruct_ov25_02255958 unk_28;
    fx32 unk_3C;
    fx32 unk_40;
    BOOL unk_44;
};

static void ov42_02256420(UnkStruct_ov42_022563D4 * param0);
static void ov42_02256474(UnkStruct_ov42_022563D4 * param0);
static void ov42_022564DC(UnkStruct_ov25_02255224 * param0);
static void ov42_022564F0(SysTask * param0, void * param1);
static void ov42_02256580(SysTask * param0, void * param1);
static void ov42_022565C4(SysTask * param0, void * param1);

BOOL ov42_022563D4 (UnkStruct_ov42_022563D4 ** param0, const UnkStruct_ov42_022563D4_1 * param1, BGL * param2)
{
    UnkStruct_ov42_022563D4 * v0 = (UnkStruct_ov42_022563D4 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov42_022563D4));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();

        ov42_02256420(v0);

        Unk_ov42_02256720 = -43008;
        Unk_ov42_02256724 = 2816;
        *param0 = v0;
        return 1;
    }

    return 0;
}

static void ov42_02256420 (UnkStruct_ov42_022563D4 * param0)
{
    static const UnkStruct_ov25_02255810 v0 = {
        {(112 << FX32_SHIFT), (144 << FX32_SHIFT)},
        1,
        0,
        2,
        0,
        0
    };

    sub_02006EC0(12, 57, 1, 0, 0, 1, 8);
    ov25_02255958(&param0->unk_28, 12, 55, 56, 8);

    param0->unk_24 = ov25_02255810(param0->unk_20, &v0, &param0->unk_28);

    if (param0->unk_00->unk_00 == 0) {
        ov25_022558C4(param0->unk_24, 2);
    }
}

static void ov42_02256474 (UnkStruct_ov42_022563D4 * param0)
{
    ov25_022558B0(param0->unk_20, param0->unk_24);
    ov25_022559B0(&(param0->unk_28));
}

void ov42_0225648C (UnkStruct_ov42_022563D4 * param0)
{
    if (param0 != NULL) {
        ov42_02256474(param0);
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov42_022566E0[] = {
    {0x0, ov42_022564F0, 0x0},
    {0x1, ov42_02256580, 0x0},
    {0x2, ov42_022565C4, 0x0},
    {0x0, NULL, 0x0}
};

void ov42_022564A0 (UnkStruct_ov42_022563D4 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov42_022566E0, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov42_022564C4 (UnkStruct_ov42_022563D4 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov42_022564D0 (UnkStruct_ov42_022563D4 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov42_022564DC (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov42_022563D4 * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov42_022564F0 (SysTask * param0, void * param1)
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
    UnkStruct_ov42_022563D4 * v2;
    void * v3;
    NNSG2dPaletteData * v4;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 54, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 53, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov42_022564DC(param1);
}

static void ov42_02256580 (SysTask * param0, void * param1)
{
    UnkStruct_ov42_022563D4 * v0 = ov25_0225523C(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        v0->unk_44 = 1;
        ov25_0225524C(param1);
    case 1:
        if (ov42_022564C4(v0, 2)) {
            sub_02019044(v0->unk_04, 6);
            ov42_022564DC(param1);
        }
        break;
    }
}

static void ov42_022565C4 (SysTask * param0, void * param1)
{
    UnkStruct_ov42_022563D4 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov42_022563D4_1 * v1 = ov25_02255240(param1);

    switch (ov25_02255248(param1)) {
    case 0:
        ov25_02254424(1653);
        ov25_022558C4(v0->unk_24, 0);
        v0->unk_3C = 144 << FX32_SHIFT;
        v0->unk_40 = Unk_ov42_02256720;
        v0->unk_44 = 0;
        ov25_0225524C(param1);
    case 1:
        if (v0->unk_44) {
            ov42_022564DC(param1);
            return;
        }

        v0->unk_3C += v0->unk_40;
        v0->unk_40 += Unk_ov42_02256724;

        if ((v0->unk_40 > 0) && (v0->unk_3C >= (144 << FX32_SHIFT))) {
            v0->unk_40 = -((v0->unk_40 * 56) / 100);

            if (v0->unk_40 < (-2 * FX32_ONE)) {
                ov25_02254424(1654);
                v0->unk_3C = 144 << FX32_SHIFT;
            } else {
                ov25_02254424(1654);
                ov25_022558C4(v0->unk_24, (v1->unk_00) ? 1 : 2);
                v0->unk_3C = 144 << FX32_SHIFT;
                ov25_0225524C(param1);
            }
        }

        ov25_02255900(v0->unk_24, (112 << FX32_SHIFT), v0->unk_3C);
        break;
    case 2:
        ov42_022564DC(param1);
    }
}
