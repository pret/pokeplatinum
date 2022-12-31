#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay049/struct_ov49_022563D4_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay049/struct_ov49_022563D4_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "overlay025/ov25_02253CE0.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay049/ov49_022563D4.h"

struct UnkStruct_ov49_022563D4_t {
    const UnkStruct_ov49_022563D4_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 * unk_20;
    UnkStruct_ov25_022558C4 * unk_24;
    UnkStruct_ov25_02255958 unk_28;
};

static void ov49_02256410(UnkStruct_ov49_022563D4 * param0, const UnkStruct_ov49_022563D4_1 * param1);
static void ov49_02256464(UnkStruct_ov49_022563D4 * param0);
static void ov49_022564D0(UnkStruct_ov25_02255224 * param0);
static void ov49_022564E4(UnkStruct_0201CD38 * param0, void * param1);
static void ov49_02256578(UnkStruct_0201CD38 * param0, void * param1);
static void ov49_02256594(UnkStruct_0201CD38 * param0, void * param1);

BOOL ov49_022563D4 (UnkStruct_ov49_022563D4 ** param0, const UnkStruct_ov49_022563D4_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov49_022563D4 * v0 = (UnkStruct_ov49_022563D4 *)sub_02018144(8, sizeof(UnkStruct_ov49_022563D4));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        ov49_02256410(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

static void ov49_02256410 (UnkStruct_ov49_022563D4 * param0, const UnkStruct_ov49_022563D4_1 * param1)
{
    static const UnkStruct_ov25_02255810 v0 = {
        {(56 << FX32_SHIFT), (148 << FX32_SHIFT)},
        0,
        0,
        2,
        0,
        0
    };

    sub_02006EC0(12, 69, 1, 0, 0, 1, 8);

    ov25_02255958(&param0->unk_28, 12, 67, 68, 8);
    param0->unk_24 = ov25_02255810(param0->unk_20, &v0, &param0->unk_28);
    ov25_02255900(param0->unk_24, (56 + (16 * param1->unk_00)) << FX32_SHIFT, (148 << FX32_SHIFT));
}

static void ov49_02256464 (UnkStruct_ov49_022563D4 * param0)
{
    int v0;

    if (param0->unk_24) {
        ov25_022558B0(param0->unk_20, param0->unk_24);
    }

    ov25_022559B0(&param0->unk_28);
}

void ov49_02256480 (UnkStruct_ov49_022563D4 * param0)
{
    if (param0 != NULL) {
        ov49_02256464(param0);
        sub_020181C4(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov49_0225660C[] = {
    {0x0, ov49_022564E4, 0x0},
    {0x1, ov49_02256578, 0x0},
    {0x2, ov49_02256594},
    {0x0, NULL, 0x0}
};

void ov49_02256494 (UnkStruct_ov49_022563D4 * param0, u32 param1)
{
    ov25_0225517C(Unk_ov49_0225660C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov49_022564B8 (UnkStruct_ov49_022563D4 * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov49_022564C4 (UnkStruct_ov49_022563D4 * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov49_022564D0 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov49_022563D4 * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov49_022564E4 (UnkStruct_0201CD38 * param0, void * param1)
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
    UnkStruct_ov49_022563D4 * v2;
    const UnkStruct_ov49_022563D4_1 * v3;
    void * v4;
    NNSG2dPaletteData * v5;

    v2 = ov25_0225523C(param1);
    v3 = ov25_02255240(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 66, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 65, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov49_022564D0(param1);
}

static void ov49_02256578 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov49_022563D4 * v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov49_022564D0(param1);
}

static void ov49_02256594 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov49_022563D4 * v0 = ov25_0225523C(param1);
    const UnkStruct_ov49_022563D4_1 * v1 = ov25_02255240(param1);

    ov25_02254424(1635);
    ov25_022546B8(0, 0);
    ov25_02255900(v0->unk_24, (56 + (16 * v1->unk_00)) << FX32_SHIFT, (148 << FX32_SHIFT));
    ov49_022564D0(param1);
}
