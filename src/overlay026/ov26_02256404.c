#include "overlay026/ov26_02256404.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/struct_ov25_0225517C.h"
#include "overlay025/struct_ov25_02255224_decl.h"
#include "overlay026/struct_ov26_02256404_1.h"
#include "overlay026/struct_ov26_02256404_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov26_02256404_t {
    const UnkStruct_ov26_02256404_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    u16 unk_30[360];
};

static void ov26_0225646C(const u16 *param0, u16 *param1);
static void ov26_022564E4(UnkStruct_ov25_02255224 *param0);
static void ov26_022564F8(SysTask *param0, void *param1);
static void ov26_0225658C(SysTask *param0, void *param1);
static void ov26_022565AC(SysTask *param0, void *param1);
static void ov26_022565D8(SysTask *param0, void *param1);
static void ov26_022565F4(UnkStruct_ov26_02256404 *param0);

BOOL ov26_02256404(UnkStruct_ov26_02256404 **param0, const UnkStruct_ov26_02256404_1 *param1, BgConfig *param2)
{
    UnkStruct_ov26_02256404 *v0 = (UnkStruct_ov26_02256404 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov26_02256404));

    if (v0 != NULL) {
        NNSG2dScreenData *v1;
        void *v2;

        ov25_02255090(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();

        v2 = sub_02006F6C(12, 25, 1, &v1, 8);

        if (v2 == NULL) {
            Heap_FreeToHeap(v0);
            return 0;
        }

        ov26_0225646C((const u16 *)(v1->rawData), v0->unk_30);
        Heap_FreeToHeap(v2);

        *param0 = v0;
        return 1;
    }

    return 0;
}

static void ov26_0225646C(const u16 *param0, u16 *param1)
{
    int v0, v1;

    v1 = 288;

    for (v0 = 0; v0 < 9; v0++) {
        MI_CpuCopy16(param0, param1, 32 * 2);
        MI_CpuCopy16(&param0[v1], &param1[32], 8 * 2);

        param0 += 32;
        param1 += (4 * 10);

        v1 = (v1 - 32 + 8);
    }
}

void ov26_0225649C(UnkStruct_ov26_02256404 *param0)
{
    if (param0 != NULL) {
        Heap_FreeToHeap(param0);
    }
}

static const UnkStruct_ov25_0225517C Unk_ov26_02256744[] = {
    { 0x0, ov26_022564F8, 0x0 },
    { 0x1, ov26_0225658C, 0x0 },
    { 0x2, ov26_022565AC, 0x0 },
    { 0x3, ov26_022565D8, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov26_022564A8(UnkStruct_ov26_02256404 *param0, u32 param1)
{
    ov25_0225517C(Unk_ov26_02256744, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov26_022564CC(UnkStruct_ov26_02256404 *param0, u32 param1)
{
    return ov25_02255130(param0->unk_08, param1);
}

BOOL ov26_022564D8(UnkStruct_ov26_02256404 *param0)
{
    return ov25_02255154(param0->unk_08);
}

static void ov26_022564E4(UnkStruct_ov25_02255224 *param0)
{
    UnkStruct_ov26_02256404 *v0 = ov25_0225523C(param0);
    ov25_02255224(v0->unk_08, param0);
}

static void ov26_022564F8(SysTask *param0, void *param1)
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
    UnkStruct_ov26_02256404 *v2;

    v2 = ov25_0225523C(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    sub_02006E3C(12, 23, v2->unk_04, 6, 0, 0, 1, 8);
    sub_02006E60(12, 24, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    ov26_022565F4(v2);

    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);
    ov26_022564E4(param1);
}

static void ov26_0225658C(SysTask *param0, void *param1)
{
    UnkStruct_ov26_02256404 *v0 = ov25_0225523C(param1);

    ov26_022565F4(v0);
    Bg_CopyTilemapBufferToVRAM(v0->unk_04, 6);
    ov26_022564E4(param1);
}

static void ov26_022565AC(SysTask *param0, void *param1)
{
    UnkStruct_ov26_02256404 *v0 = ov25_0225523C(param1);

    if (v0->unk_00->unk_0C) {
        ov25_022546F0(0, 0);
    } else {
        ov25_022546B8(0, 0);
    }

    ov26_022564E4(param1);
}

static void ov26_022565D8(SysTask *param0, void *param1)
{
    UnkStruct_ov26_02256404 *v0 = ov25_0225523C(param1);

    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov26_022564E4(param1);
}

static void ov26_022565F4(UnkStruct_ov26_02256404 *param0)
{
    u32 v0, v1;

    CP_SetDiv32_32(param0->unk_00->unk_00.hour, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(param0->unk_04, 6, 3, 7, 4, 9, param0->unk_30, 4 * v0, 0, (4 * 10), 9);
    Bg_CopyToTilemapRect(param0->unk_04, 6, (3 + (4 + 1)), 7, 4, 9, param0->unk_30, 4 * v1, 0, (4 * 10), 9);

    CP_SetDiv32_32(param0->unk_00->unk_00.minute, 10);

    v0 = CP_GetDivResult32();
    v1 = CP_GetDivRemainder32();

    Bg_CopyToTilemapRect(param0->unk_04, 6, 15, 7, 4, 9, param0->unk_30, 4 * v0, 0, (4 * 10), 9);
    Bg_CopyToTilemapRect(param0->unk_04, 6, (15 + (4 + 1)), 7, 4, 9, param0->unk_30, 4 * v1, 0, (4 * 10), 9);
}
