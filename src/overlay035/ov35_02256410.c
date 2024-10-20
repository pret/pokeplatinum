#include "overlay035/ov35_02256410.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay035/struct_ov35_02256410_1.h"
#include "overlay035/struct_ov35_02256410_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task_manager.h"
#include "unk_02006E3C.h"

struct UnkStruct_ov35_02256410_t {
    const UnkStruct_ov35_02256410_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24;
    UnkStruct_ov25_022558C4 *unk_28[4];
    UnkStruct_ov25_02255958 unk_38;
    UnkStruct_ov25_02255958 unk_4C;
};

static void ov35_02256460(UnkStruct_ov35_02256410 *param0, const UnkStruct_ov35_02256410_1 *param1);
static void ov35_02256514(UnkStruct_ov35_02256410 *param0);
static void ov35_02256584(UnkStruct_ov25_02255224 *param0);
static void ov35_02256598(SysTask *param0, void *param1);
static void ov35_02256628(SysTask *param0, void *param1);
static void ov35_02256644(SysTask *param0, void *param1);
static void ov35_02256684(SysTask *param0, void *param1);
static void ov35_022566A8(UnkStruct_ov35_02256410 *param0, const UnkStruct_ov35_02256410_1 *param1);

BOOL ov35_02256410(UnkStruct_ov35_02256410 **param0, const UnkStruct_ov35_02256410_1 *param1, BgConfig *param2)
{
    UnkStruct_ov35_02256410 *v0 = (UnkStruct_ov35_02256410 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov35_02256410));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();

        ov35_02256460(v0, param1);

        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov35_0225644C(UnkStruct_ov35_02256410 *param0)
{
    if (param0 != NULL) {
        ov35_02256514(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov35_02256460(UnkStruct_ov35_02256410 *param0, const UnkStruct_ov35_02256410_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0 = {
        { (114 << FX32_SHIFT), (128 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0,
    };
    static const UnkStruct_ov25_02255810 v1 = {
        { (0 << FX32_SHIFT), (0 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0,
    };
    int v2;

    sub_02006EC0(12, 2, 1, 0, 0, 1, 8);
    sub_02006EC0(12, 47, 1, 80 * 0x20, 0, 1, 8);

    ov25_02255958(&param0->unk_38, 12, 45, 46, 8);
    ov25_02255958(&param0->unk_4C, 12, 3, 4, 8);

    param0->unk_24 = ov25_02255810(param0->unk_20, &v0, &param0->unk_38);

    ov25_02255940(param0->unk_24, 80);

    for (v2 = 0; v2 < 4; v2++) {
        param0->unk_28[v2] = ov25_02255810(param0->unk_20, &v1, &param0->unk_4C);
        ov25_02255900(param0->unk_28[v2], 360448 + 65536 * v2, 262144);
    }

    ov35_022566A8(param0, param1);
}

static void ov35_02256514(UnkStruct_ov35_02256410 *param0)
{
    int v0;

    ov25_022558B0(param0->unk_20, param0->unk_24);

    for (v0 = 0; v0 < 4; v0++) {
        ov25_022558B0(param0->unk_20, param0->unk_28[v0]);
    }

    ov25_022559B0(&(param0->unk_38));
    ov25_022559B0(&(param0->unk_4C));
}

static const UnkStruct_ov25_0225517C Unk_ov35_0225676C[] = {
    { 0x0, ov35_02256598, 0x0 },
    { 0x1, ov35_02256628, 0x0 },
    { 0x2, ov35_02256644, 0x0 },
    { 0x3, ov35_02256684, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov35_02256548(UnkStruct_ov35_02256410 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov35_0225676C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov35_0225656C(UnkStruct_ov35_02256410 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov35_02256578(UnkStruct_ov35_02256410 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov35_02256584(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov35_02256410 *v0 = ov25_0225523C(param0);

    ov25_02255224(v0->unk_08, param0);
}

static void ov35_02256598(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
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
    UnkStruct_ov35_02256410 *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 44, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 43, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov35_02256584(param1);
}

static void ov35_02256628(SysTask *param0, void *param1)
{
    UnkStruct_ov35_02256410 *v0 = ov25_0225523C(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov35_02256584(param1);
}

static void ov35_02256644(SysTask *param0, void *param1)
{
    UnkStruct_ov35_02256410 *v0 = ov25_0225523C(param1);

    switch (v0->unk_00->unk_04) {
    case 0:
        PoketchSystem_PlaySoundEffect(1641);
        ov25_022558C4(v0->unk_24, 1);
        break;
    case 1:
        ov25_022558C4(v0->unk_24, 0);
        break;
    }

    ov35_02256584(param1);
}

static void ov35_02256684(SysTask *param0, void *param1)
{
    UnkStruct_ov35_02256410 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov35_02256410_1 *v1 = ov25_02255240(param1);

    ov35_022566A8(v0, v1);
    ov35_02256584(param1);
}

static void ov35_022566A8(UnkStruct_ov35_02256410 *param0, const UnkStruct_ov35_02256410_1 *param1)
{
    int v0;
    u32 v1, v2;

    v1 = param1->unk_00;
    v2 = 1000;

    for (v0 = 0; v0 < 4; v0++) {
        CP_SetDiv32_32(v1, v2);
        v1 = CP_GetDivResult32();
        ov25_022558C4(param0->unk_28[v0], v1);
        v1 = CP_GetDivRemainder32();
        v2 /= 10;
    }
}
