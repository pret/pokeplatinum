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
#include "overlay036/poketch_app_pedometer.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov36_02256404_t {
    const UnkStruct_ov36_02256404_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    UnkStruct_ov25_022555E8 *unk_20;
    UnkStruct_ov25_022558C4 *unk_24;
    UnkStruct_ov25_022558C4 *unk_28[5];
    UnkStruct_ov25_02255958 unk_3C;
    UnkStruct_ov25_02255958 unk_50;
};

static void ov36_02256454(UnkStruct_ov36_02256404 *param0, const UnkStruct_ov36_02256404_1 *param1);
static void ov36_02256508(UnkStruct_ov36_02256404 *param0);
static void ov36_02256578(UnkStruct_ov25_02255224 *param0);
static void ov36_0225658C(SysTask *param0, void *param1);
static void ov36_0225661C(SysTask *param0, void *param1);
static void ov36_02256638(SysTask *param0, void *param1);
static void ov36_02256678(SysTask *param0, void *param1);
static void ov36_0225669C(UnkStruct_ov36_02256404 *param0, const UnkStruct_ov36_02256404_1 *param1);

BOOL ov36_02256404(UnkStruct_ov36_02256404 **param0, const UnkStruct_ov36_02256404_1 *param1, BgConfig *param2)
{
    UnkStruct_ov36_02256404 *v0 = (UnkStruct_ov36_02256404 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov36_02256404));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_20 = ov25_02254664();
        ov36_02256454(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov36_02256440(UnkStruct_ov36_02256404 *param0)
{
    if (param0 != NULL) {
        ov36_02256508(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov36_02256454(UnkStruct_ov36_02256404 *param0, const UnkStruct_ov36_02256404_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0 = {
        { (114 << FX32_SHIFT), (128 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0
    };
    static const UnkStruct_ov25_02255810 v1 = {
        { (0 << FX32_SHIFT), (0 << FX32_SHIFT) },
        0,
        0,
        2,
        0,
        0
    };
    int v2;

    Graphics_LoadObjectTiles(12, 2, 1, 0, 0, 1, 8);
    Graphics_LoadObjectTiles(12, 52, 1, 80 * 0x20, 0, 1, 8);

    ov25_02255958(&param0->unk_3C, 12, 50, 51, 8);
    ov25_02255958(&param0->unk_50, 12, 3, 4, 8);

    param0->unk_24 = ov25_02255810(param0->unk_20, &v0, &param0->unk_3C);
    ov25_02255940(param0->unk_24, 80);

    for (v2 = 0; v2 < 5; v2++) {
        param0->unk_28[v2] = ov25_02255810(param0->unk_20, &v1, &param0->unk_50);
        ov25_02255900(param0->unk_28[v2], 327680 + 65536 * v2, 262144);
    }

    ov36_0225669C(param0, param1);
}

static void ov36_02256508(UnkStruct_ov36_02256404 *param0)
{
    int v0;

    ov25_022558B0(param0->unk_20, param0->unk_24);

    for (v0 = 0; v0 < 5; v0++) {
        ov25_022558B0(param0->unk_20, param0->unk_28[v0]);
    }

    ov25_022559B0(&(param0->unk_3C));
    ov25_022559B0(&(param0->unk_50));
}

static const UnkStruct_ov25_0225517C Unk_ov36_02256764[] = {
    { 0x0, ov36_0225658C, 0x0 },
    { 0x1, ov36_0225661C, 0x0 },
    { 0x2, ov36_02256638, 0x0 },
    { 0x3, ov36_02256678, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov36_0225653C(UnkStruct_ov36_02256404 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov36_02256764, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov36_02256560(UnkStruct_ov36_02256404 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov36_0225656C(UnkStruct_ov36_02256404 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov36_02256578(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov36_02256404 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov36_0225658C(SysTask *param0, void *param1)
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
    UnkStruct_ov36_02256404 *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 49, v2->unk_04, 6, 0, 0, 1, 8);
    Graphics_LoadTilemapToBgLayer(12, 48, v2->unk_04, 6, 0, 0, 1, 8);

    Poketch_LoadActivePalette(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov36_02256578(param1);
}

static void ov36_0225661C(SysTask *param0, void *param1)
{
    UnkStruct_ov36_02256404 *v0 = ov25_0225523C(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov36_02256578(param1);
}

static void ov36_02256638(SysTask *param0, void *param1)
{
    UnkStruct_ov36_02256404 *v0 = ov25_0225523C(param1);

    switch (v0->unk_00->unk_04) {
    case 0:
        PoketchSystem_PlaySoundEffect(1641);
        ov25_022558C4(v0->unk_24, 1);
        break;
    case 1:
        ov25_022558C4(v0->unk_24, 0);
        break;
    }

    ov36_02256578(param1);
}

static void ov36_02256678(SysTask *param0, void *param1)
{
    UnkStruct_ov36_02256404 *v0 = ov25_0225523C(param1);
    const UnkStruct_ov36_02256404_1 *v1 = ov25_02255240(param1);

    ov36_0225669C(v0, v1);
    ov36_02256578(param1);
}

static void ov36_0225669C(UnkStruct_ov36_02256404 *param0, const UnkStruct_ov36_02256404_1 *param1)
{
    int v0;
    u32 v1, v2;

    v1 = param1->unk_00;
    v2 = 10000;

    for (v0 = 0; v0 < 5; v0++) {
        CP_SetDiv32_32(v1, v2);
        v1 = CP_GetDivResult32();

        ov25_022558C4(param0->unk_28[v0], v1);
        v1 = CP_GetDivRemainder32();
        v2 /= 10;
    }
}
