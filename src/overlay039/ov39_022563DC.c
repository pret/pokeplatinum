#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay039/struct_ov39_022563DC_decl.h"

#include "overlay025/struct_ov25_0225517C.h"
#include "overlay039/struct_ov39_022563DC_1.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "unk_02006E3C.h"
#include "unk_02017E74.h"
#include "unk_02018340.h"
#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay039/ov39_022563DC.h"

struct UnkStruct_ov39_022563DC_t {
    const UnkStruct_ov39_022563DC_1 * unk_00;
    UnkStruct_02018340 * unk_04;
    u32 unk_08[6];
};

static void ov39_02256454(UnkStruct_ov25_02255224 * param0);
static void ov39_02256468(UnkStruct_0201CD38 * param0, void * param1);
static void ov39_02256518(UnkStruct_0201CD38 * param0, void * param1);
static void ov39_02256534(UnkStruct_0201CD38 * param0, void * param1);
static void ov39_02256568(UnkStruct_0201CD38 * param0, void * param1);
static void ov39_0225659C(UnkStruct_ov39_022563DC * param0, u32 param1, BOOL param2, BOOL param3);

BOOL ov39_022563DC (UnkStruct_ov39_022563DC ** param0, const UnkStruct_ov39_022563DC_1 * param1, UnkStruct_02018340 * param2)
{
    UnkStruct_ov39_022563DC * v0 = (UnkStruct_ov39_022563DC *)sub_02018144(8, sizeof(UnkStruct_ov39_022563DC));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov39_0225640C (UnkStruct_ov39_022563DC * param0)
{
    if (param0 != NULL) {
        sub_020181C4(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov39_0225663C[] = {
    {0x0, ov39_02256468, 0x0},
    {0x1, ov39_02256518, 0x0},
    {0x2, ov39_02256534, 0x0},
    {0x3, ov39_02256568, 0x0},
    {0x0, NULL, 0x0}
};

void ov39_02256418 (UnkStruct_ov39_022563DC * param0, u32 param1)
{
    ov25_0225517C(Unk_ov39_0225663C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov39_0225643C (UnkStruct_ov39_022563DC * param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov39_02256448 (UnkStruct_ov39_022563DC * param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov39_02256454 (UnkStruct_ov25_02255224 * param0)
{
    UnkStruct_ov39_022563DC * v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov39_02256468 (UnkStruct_0201CD38 * param0, void * param1)
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
    UnkStruct_ov39_022563DC * v2;
    const UnkStruct_ov39_022563DC_1 * v3;
    void * v4;
    NNSG2dPaletteData * v5;
    int v6;

    v2 = ov25_0225523C(param1);
    v3 = ov25_02255240(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 59, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 58, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);

    for (v6 = 0; v6 < 6; v6++) {
        ov39_0225659C(v2, v6, v3->unk_04[v6], 0);
    }

    sub_02019448(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov39_02256454(param1);
}

static void ov39_02256518 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov39_022563DC * v0 = ov25_0225523C(param1);

    sub_02019044(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_02256534 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov39_022563DC * v0 = ov25_0225523C(param1);
    const UnkStruct_ov39_022563DC_1 * v1 = ov25_02255240(param1);

    ov39_0225659C(v0, v1->unk_1C, v1->unk_04[v1->unk_1C], 1);
    sub_02019448(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_02256568 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov39_022563DC * v0 = ov25_0225523C(param1);
    const UnkStruct_ov39_022563DC_1 * v1 = ov25_02255240(param1);

    ov39_0225659C(v0, v1->unk_1C, v1->unk_04[v1->unk_1C], 0);
    sub_02019448(v0->unk_04, 6);
    ov39_02256454(param1);
}

static void ov39_0225659C (UnkStruct_ov39_022563DC * param0, u32 param1, BOOL param2, BOOL param3)
{
    static const u16 v0[] = {
        66, 84, 290, 308, 514, 532,
    };
    u16 * v1;
    int v2, v3, v4;

    v1 = sub_02019FE4(param0->unk_04, 6);
    v1 += v0[param1];
    v4 = (param2) ? (36 * 2) * (param1 + 1) : 0;

    if (param3) {
        v4 += 36;
    }

    for (v3 = 0; v3 < 6; v3++) {
        for (v2 = 0; v2 < 6; v2++) {
            v1[v2] = v4++;
        }

        v1 += 32;
    }
}
