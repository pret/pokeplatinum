#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay047/struct_ov47_02256634_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay047/struct_ov47_02256634_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/ov25_02255DBC.h"
#include "overlay047/ov47_02256634.h"

struct UnkStruct_ov47_02256634_t {
    const UnkStruct_ov47_02256634_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 * unk_20;
    UnkStruct_ov25_022558C4 * unk_24[6];
    UnkStruct_ov25_022558C4 * unk_3C[4];
    UnkStruct_ov25_022558C4 * unk_4C[6];
    UnkStruct_ov25_022558C4 * unk_64;
    UnkStruct_ov25_02255958 unk_68;
    UnkStruct_0201CD38 * unk_7C;
};

static void ov47_02256684(UnkStruct_ov47_02256634 * param0, const UnkStruct_ov47_02256634_1 * param1);
static void ov47_022567FC(UnkStruct_ov47_02256634 * param0);
static void ov47_022568A8(UnkStruct_ov25_02255224 * param0);
static void ov47_022568BC(UnkStruct_0201CD38 * param0, void * param1);
static void ov47_0225694C(UnkStruct_0201CD38 * param0, void * param1);
static void ov47_02256968(UnkStruct_0201CD38 * param0, void * param1);

BOOL ov47_02256634 (UnkStruct_ov47_02256634 ** param0, const UnkStruct_ov47_02256634_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov47_02256634 * v0 = (UnkStruct_ov47_02256634 *)Heap_AllocFromHeap(8, sizeof(UnkStruct_ov47_02256634));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();

        ov47_02256684(v0, param1);

        *param0 = v0;
        return 1;
    }

    return 0;
}

void ov47_02256670 (UnkStruct_ov47_02256634 * param0)
{
    if (param0 != NULL) {
        ov47_022567FC(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov47_02256684 (UnkStruct_ov47_02256634 * param0, const UnkStruct_ov47_02256634_1 * param1)
{
    UnkStruct_ov25_02255810 v0;
    int v1, v2;
    u32 v3, v4;

    sub_02006EC0(12, 120, 1, 0, 0, 1, 8);

    ov25_02255958(&param0->unk_68, 12, 118, 119, 8);

    v0.unk_0A = 0;
    v0.unk_0B = 2;
    v0.unk_0D = 0;

    ov25_02255DBC(param1->unk_00, param1->unk_04, &v3, &v4);

    v0.unk_00.x = (((v3)) << FX32_SHIFT);
    v0.unk_00.y = (((v4)) << FX32_SHIFT);
    v0.unk_0C = 1;
    v0.unk_08 = 0;
    param0->unk_64 = ov25_02255810(param0->unk_20, &v0, &(param0->unk_68));
    v0.unk_0D = 1;

    for (v1 = 0; v1 < 6; v1++) {
        v0.unk_00.x = (((param1->unk_0C[v1].unk_00)) << FX32_SHIFT);
        v0.unk_00.y = (((param1->unk_0C[v1].unk_01)) << FX32_SHIFT);
        v0.unk_0C = 2 + param1->unk_0C[v1].unk_02;
        v0.unk_08 = 1 + v1;
        param0->unk_24[v1] = ov25_02255810(param0->unk_20, &v0, &(param0->unk_68));
    }

    for (v1 = 0; v1 < 4; v1++) {
        ov25_02255DFC(v1, &v3, &v4);

        v0.unk_00.x = (((v3)) << FX32_SHIFT);
        v0.unk_00.y = (((v4)) << FX32_SHIFT);
        v0.unk_0C = 9;
        v0.unk_08 = 14 + v1;

        param0->unk_3C[v1] = ov25_02255810(param0->unk_20, &v0, &(param0->unk_68));

        if (param1->unk_2C[v1] == 0) {
            ov25_02255914(param0->unk_3C[v1], 1);
        }
    }

    for (v1 = 0; v1 < 6; v1++) {
        v2 = ov25_02255E24(param1->unk_3C[v1].unk_04, &v3, &v4);

        v0.unk_00.x = (((v3)) << FX32_SHIFT);
        v0.unk_00.y = (((v4)) << FX32_SHIFT);
        v0.unk_0C = 8;
        v0.unk_08 = 18;

        param0->unk_4C[v1] = ov25_02255810(param0->unk_20, &v0, &(param0->unk_68));

        if ((param1->unk_3C[v1].unk_00 == 0) || (v2 == 0)) {
            ov25_02255914(param0->unk_4C[v1], 1);
        }
    }

    param0->unk_7C = SysTask_Start(ov47_02256968, param0, 3);
}

static void ov47_022567FC (UnkStruct_ov47_02256634 * param0)
{
    int v0;

    sub_0200DA58(param0->unk_7C);

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_24[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_24[v0]);
            param0->unk_24[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_3C[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_3C[v0]);
            param0->unk_3C[v0] = NULL;
        }
    }

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_4C[v0]) {
            ov25_022558B0(param0->unk_20, param0->unk_4C[v0]);
            param0->unk_4C[v0] = NULL;
        }
    }

    ov25_022558B0(param0->unk_20, param0->unk_64);
    ov25_022559B0(&param0->unk_68);
}

static const UnkStruct_ov25_0225517C Unk_ov47_02256A78[] = {
    {0x0, ov47_022568BC, 0x0},
    {0x1, ov47_0225694C, 0x0},
    {0x0, NULL, 0x0}
};

void ov47_0225686C (UnkStruct_ov47_02256634 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov47_02256A78, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov47_02256890 (UnkStruct_ov47_02256634 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov47_0225689C (UnkStruct_ov47_02256634 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov47_022568A8 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov47_02256634 * v0 = ov25_0225523C(param0);

    ov25_02255224(v0->unk_08, param0);
}

static void ov47_022568BC (UnkStruct_0201CD38 * param0, void * param1)
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
    UnkStruct_ov47_02256634 * v2;
    NNSG2dPaletteData * v3;

    v2 = ov25_0225523C(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 117, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 115, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);

    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov47_022568A8(param1);
}

static void ov47_0225694C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov47_02256634 * v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov47_022568A8(param1);
}

static void ov47_02256968 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov47_02256634 * v0 = param1;
    const UnkStruct_ov47_02256634_1 * v1 = v0->unk_00;
    int v2;

    if (v1->unk_28) {
        int v3 = v1->unk_24;

        if (v1->unk_0C[v3].unk_03) {
            ov25_0225591C(v0->unk_20, v0->unk_24[v3], 0);
            ov25_022558C4(v0->unk_24[v3], 8 + v3);
        } else {
            ov25_0225591C(v0->unk_20, v0->unk_24[v3], 2 + v1->unk_0C[v3].unk_02);
            ov25_022558C4(v0->unk_24[v3], 1 + v3);
        }

        ov25_02255900(v0->unk_24[v3], (((v1->unk_0C[v3].unk_00)) << FX32_SHIFT), (((v1->unk_0C[v3].unk_01)) << FX32_SHIFT));
    }

    if (v1->unk_08) {
        u32 v4, v5, v6;

        ov25_02255DBC(v1->unk_00, v1->unk_04, &v4, &v5);
        ov25_02255900(v0->unk_64, (((v4)) << FX32_SHIFT), (((v5)) << FX32_SHIFT));

        for (v6 = 0; v6 < 6; v6++) {
            if (v1->unk_3C[v6].unk_00) {
                if (ov25_02255E24(v1->unk_3C[v6].unk_04, &v4, &v5)) {
                    ov25_02255900(v0->unk_4C[v6], (((v4)) << FX32_SHIFT), (((v5)) << FX32_SHIFT));
                    ov25_02255914(v0->unk_4C[v6], 0);
                } else {
                    ov25_02255914(v0->unk_4C[v6], 1);
                }
            } else {
                ov25_02255914(v0->unk_4C[v6], 1);
            }
        }
    }
}
