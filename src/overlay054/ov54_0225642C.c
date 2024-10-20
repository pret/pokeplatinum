#include "overlay054/ov54_0225642C.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay054/struct_ov54_0225642C_1.h"
#include "overlay054/struct_ov54_0225642C_decl.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "font.h"
#include "heap.h"
#include "message.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02018340.h"

struct UnkStruct_ov54_0225642C_t {
    const UnkStruct_ov54_0225642C_1 *unk_00;
    BGL *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24[12];
    UnkStruct_ov25_02255958 unk_54;
    u32 unk_68[12];
};

static void ov54_022564A8(UnkStruct_ov25_02255224 *param0);
static void ov54_022564BC(SysTask *param0, void *param1);
static void ov54_022565CC(SysTask *param0, void *param1);
static void ov54_022565EC(UnkStruct_ov54_0225642C *param0, const UnkStruct_ov54_0225642C_1 *param1);
static void ov54_022566A8(UnkStruct_ov54_0225642C *param0);

BOOL ov54_0225642C(UnkStruct_ov54_0225642C **param0, const UnkStruct_ov54_0225642C_1 *param1, BGL *param2)
{
    UnkStruct_ov54_0225642C *v0 = (UnkStruct_ov54_0225642C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov54_0225642C));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov54_02256460(UnkStruct_ov54_0225642C *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov54_0225672C[] = {
    { 0x0, ov54_022564BC, 0x0 },
    { 0x1, ov54_022565CC, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov54_0225646C(UnkStruct_ov54_0225642C *param0, u32 param1)
{
    ov25_0225517C(Unk_ov54_0225672C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov54_02256490(UnkStruct_ov54_0225642C *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov54_0225649C(UnkStruct_ov54_0225642C *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov54_022564A8(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov54_0225642C *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov54_022564BC(SysTask *param0, void *param1)
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
    UnkStruct_ov54_0225642C *v2;
    const UnkStruct_ov54_0225642C_1 *v3;
    Window v4;

    v2 = ov25_0225523C(param1);
    v3 = ov25_02255240(param1);

    sub_020183C4(v2->unk_04, 6, &v0, 0);
    sub_020196C0(v2->unk_04, 6, 4, 1, 0);
    sub_02019CB8(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);

    ov25_022546B8(0, 0);

    BGL_AddWindow(v2->unk_04, &v4, 6, 2, 2, 24, 2, 0, 1);
    BGL_FillWindow(&v4, 4);
    sub_0201A9F4(&v4);

    {
        Strbuf *v5 = MessageBank_GetNewStrbufFromNARC(26, 458, 0, 8);

        if (v5) {
            Text_AddPrinterWithParamsAndColor(&v4, FONT_SYSTEM, v5, (192 - Font_CalcStrbufWidth(FONT_SYSTEM, v5, 0)) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
            sub_0201ACCC(&v4);
            Strbuf_Free(v5);
        }
    }

    BGL_DeleteWindow(&v4);
    sub_02019448(v2->unk_04, 6);
    ov54_022565EC(v2, v3);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov54_022564A8(param1);
}

static void ov54_022565CC(SysTask *param0, void *param1)
{
    UnkStruct_ov54_0225642C *v0 = ov25_0225523C(param1);

    ov54_022566A8(v0);
    sub_02019044(v0->unk_04, 6);
    ov54_022564A8(param1);
}

static void ov54_022565EC(UnkStruct_ov54_0225642C *param0, const UnkStruct_ov54_0225642C_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { ((48 + 40 * 0) << FX32_SHIFT), ((48 + 48 * 0) << FX32_SHIFT) },
            4,
            0,
            2,
            12,
            1,
        },
        {
            { ((48 + 40 * 1) << FX32_SHIFT), ((48 + 48 * 0) << FX32_SHIFT) },
            4,
            0,
            2,
            11,
            1,
        },
        {
            { ((48 + 40 * 2) << FX32_SHIFT), ((48 + 48 * 0) << FX32_SHIFT) },
            4,
            0,
            2,
            10,
            1,
        },
        {
            { ((48 + 40 * 3) << FX32_SHIFT), ((48 + 48 * 0) << FX32_SHIFT) },
            4,
            0,
            2,
            9,
            1,
        },
        {
            { ((48 + 40 * 0) << FX32_SHIFT), ((48 + 48 * 1) << FX32_SHIFT) },
            4,
            0,
            2,
            8,
            1,
        },
        {
            { ((48 + 40 * 1) << FX32_SHIFT), ((48 + 48 * 1) << FX32_SHIFT) },
            4,
            0,
            2,
            7,
            1,
        },
        {
            { ((48 + 40 * 2) << FX32_SHIFT), ((48 + 48 * 1) << FX32_SHIFT) },
            4,
            0,
            2,
            6,
            1,
        },
        {
            { ((48 + 40 * 3) << FX32_SHIFT), ((48 + 48 * 1) << FX32_SHIFT) },
            4,
            0,
            2,
            5,
            1,
        },
        {
            { ((48 + 40 * 0) << FX32_SHIFT), ((48 + 48 * 2) << FX32_SHIFT) },
            4,
            0,
            2,
            4,
            1,
        },
        {
            { ((48 + 40 * 1) << FX32_SHIFT), ((48 + 48 * 2) << FX32_SHIFT) },
            4,
            0,
            2,
            3,
            1,
        },
        {
            { ((48 + 40 * 2) << FX32_SHIFT), ((48 + 48 * 2) << FX32_SHIFT) },
            4,
            0,
            2,
            2,
            1,
        },
        {
            { ((48 + 40 * 3) << FX32_SHIFT), ((48 + 48 * 2) << FX32_SHIFT) },
            4,
            0,
            2,
            1,
            1,
        },
    };
    int v1;

    ov25_02255360(0);
    ov25_02255958(&param0->unk_54, 12, 5, 6, 8);

    for (v1 = 0; v1 < param1->unk_90; v1++) {
        param0->unk_68[v1] = PokeIconSpriteIndex(param1->unk_00[v1].unk_00, 0, param1->unk_00[v1].unk_08);
        param0->unk_24[v1] = ov25_02255810(param0->unk_20, &v0[v1], &param0->unk_54);

        ov25_02255940(param0->unk_24[v1], v1 * 16);
        ov25_02255938(param0->unk_24[v1], PokeIconPaletteIndex(param1->unk_00[v1].unk_00, param1->unk_00[v1].unk_08, 0));
    }

    for (; v1 < 12; v1++) {
        param0->unk_24[v1] = NULL;
    }

    ov25_022553A0(0, param0->unk_68, param1->unk_90, 0);
}

static void ov54_022566A8(UnkStruct_ov54_0225642C *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_24[v0] != NULL) {
            ov25_022558B0(param0->unk_20, param0->unk_24[v0]);
            param0->unk_24[v0] = NULL;
        }
    }

    ov25_022559B0(&param0->unk_54);
}
