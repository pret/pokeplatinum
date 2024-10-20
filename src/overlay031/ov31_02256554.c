#include "overlay031/ov31_02256554.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay031/struct_ov31_02256554_1.h"
#include "overlay031/struct_ov31_02256554_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov31_02256554_t {
    const UnkStruct_ov31_02256554_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
};

static void ov31_022565CC(UnkStruct_ov25_02255224 *param0);
static void ov31_022565E0(SysTask *param0, void *param1);
static void ov31_02256644(BgConfig *param0);
static void ov31_022566EC(SysTask *param0, void *param1);
static void ov31_02256710(SysTask *param0, void *param1);
static void ov31_0225672C(BgConfig *param0, const UnkStruct_ov31_02256554_1 *param1);

BOOL ov31_02256554(UnkStruct_ov31_02256554 **param0, const UnkStruct_ov31_02256554_1 *param1, BgConfig *param2)
{
    UnkStruct_ov31_02256554 *v0 = (UnkStruct_ov31_02256554 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov31_02256554));

    if (v0 != NULL) {
        ov25_02255090(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov31_02256584(UnkStruct_ov31_02256554 *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov31_02256970[] = {
    { 0x0, ov31_022565E0, 0x0 },
    { 0x1, ov31_022566EC, 0x0 },
    { 0x2, ov31_02256710, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov31_02256590(UnkStruct_ov31_02256554 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov31_02256970, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov31_022565B4(UnkStruct_ov31_02256554 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov31_022565C0(UnkStruct_ov31_02256554 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov31_022565CC(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov31_02256554 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov31_022565E0(SysTask *param0, void *param1)
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
    UnkStruct_ov31_02256554 *v2;

    v2 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    ov31_02256644(v2->unk_04);
    ov31_0225672C(v2->unk_04, v2->unk_00);
    ov25_022546B8(0, 0);

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);
    ov31_022565CC(param1);
}

static void ov31_02256644(BgConfig *param0)
{
    u8 *v0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, 0x20 * 16);

    if (v0) {
        int v1;
        u32 v2;

        for (v1 = 0; v1 < 16; v1++) {
            v2 = (v1 << 28) | (v1 << 24) | (v1 << 20) | (v1 << 16) | (v1 << 12) | (v1 << 8) | (v1 << 4) | v1;
            MI_CpuFillFast(v0 + v1 * 0x20, v2, 0x20);
        }

        Bg_LoadTiles(param0, 6, v0, 0x20 * 16, 0);
        Heap_FreeToHeap(v0);
    }
}

static void ov31_022566EC(SysTask *param0, void *param1)
{
    UnkStruct_ov31_02256554 *v0;

    v0 = ov25_0225523C(param1);

    ov31_0225672C(v0->unk_04, v0->unk_00);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov31_022565CC(param1);
}

static void ov31_02256710(SysTask *param0, void *param1)
{
    UnkStruct_ov31_02256554 *v0 = ov25_0225523C(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov31_022565CC(param1);
}

static void ov31_0225672C(BgConfig *param0, const UnkStruct_ov31_02256554_1 *param1)
{
    static const u8 v0[] = {
        4, 15, 8, 1
    };
    int v1, v2, v3;
    u16 *v4 = Bg_GetTilemapBuffer(param0, 6);

    v4 += ((2 * 32) + 2);

    for (v2 = 0; v2 < 20; v2++) {
        for (v1 = 0; v1 < 24; v1++) {
            v4[v1] = (0 << 12) | v0[(param1->unk_00[v2][v1] - 1)];
        }

        v4 += 32;
    }
}
