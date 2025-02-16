#include "overlay046/ov46_02256BCC.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02254560.h"
#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"
#include "overlay046/struct_ov46_02256BCC_1.h"
#include "overlay046/struct_ov46_02256BCC_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "sys_task_manager.h"

struct UnkStruct_ov46_02256BCC_t {
    const UnkStruct_ov46_02256BCC_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    UnkStruct_ov25_022555E8 *unk_30;
    UnkStruct_ov25_022558C4 *unk_34[17];
    UnkStruct_ov25_02255958 unk_78;
    UnkStruct_ov25_02255958 unk_8C;
    BOOL unk_A0;
    u32 unk_A4;
    u32 unk_A8;
};

static void ov46_02256C20(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1);
static void ov46_02256CF4(UnkStruct_ov46_02256BCC *param0);
static void ov46_02256D60(PoketchTaskManager *param0);
static void ov46_02256D74(SysTask *param0, void *param1);
static void ov46_02256E58(SysTask *param0, void *param1);
static void ov46_02256EA4(SysTask *param0, void *param1);
static void ov46_02256ED8(SysTask *param0, void *param1);
static void ov46_02256F0C(SysTask *param0, void *param1);
static void ov46_02256F30(SysTask *param0, void *param1);
static void ov46_02256F54(SysTask *param0, void *param1);
static void ov46_02257010(SysTask *param0, void *param1);
static void ov46_02257054(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1);
static void ov46_02257094(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1);
static void ov46_022570C4(UnkStruct_ov46_02256BCC *param0, BOOL param1);

BOOL ov46_02256BCC(UnkStruct_ov46_02256BCC **param0, const UnkStruct_ov46_02256BCC_1 *param1, BgConfig *param2)
{
    UnkStruct_ov46_02256BCC *v0 = (UnkStruct_ov46_02256BCC *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov46_02256BCC));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 8);

        v0->unk_00 = param1;
        v0->unk_04 = ov25_02254674();
        v0->unk_30 = ov25_02254664();

        ov46_02256C20(v0, param1);

        if (v0->unk_04 != NULL) {
            *param0 = v0;
            return 1;
        }
    }

    return 0;
}

void ov46_02256C0C(UnkStruct_ov46_02256BCC *param0)
{
    if (param0 != NULL) {
        ov46_02256CF4(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov46_02256C20(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { (48 << FX32_SHIFT), (56 << FX32_SHIFT) },
            2,
            0,
            2,
            1,
            0,
        },
        {
            { (176 << FX32_SHIFT), (56 << FX32_SHIFT) },
            0,
            0,
            2,
            1,
            0,
        },
        {
            { (48 << FX32_SHIFT), (160 << FX32_SHIFT) },
            5,
            0,
            2,
            0,
            0,
        },
        {
            { (112 << FX32_SHIFT), (160 << FX32_SHIFT) },
            7,
            0,
            2,
            0,
            0,
        },
        {
            { (176 << FX32_SHIFT), (160 << FX32_SHIFT) },
            9,
            0,
            2,
            0,
            0,
        },
        {
            { (80 << FX32_SHIFT), (88 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (96 << FX32_SHIFT), (88 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (128 << FX32_SHIFT), (88 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (144 << FX32_SHIFT), (88 << FX32_SHIFT) },
            4,
            0,
            2,
            0,
            0,
        },
        {
            { (80 << FX32_SHIFT), (136 << FX32_SHIFT) },
            4,
            2,
            2,
            0,
            0,
        },
        {
            { (96 << FX32_SHIFT), (136 << FX32_SHIFT) },
            4,
            2,
            2,
            0,
            0,
        },
        {
            { (128 << FX32_SHIFT), (136 << FX32_SHIFT) },
            4,
            2,
            2,
            0,
            0,
        },
        {
            { (144 << FX32_SHIFT), (136 << FX32_SHIFT) },
            4,
            2,
            2,
            0,
            0,
        },
        {
            { (80 << FX32_SHIFT), (112 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (96 << FX32_SHIFT), (112 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (128 << FX32_SHIFT), (112 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (144 << FX32_SHIFT), (112 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
    };
    int v1;

    Graphics_LoadObjectTiles(12, 2, 1, 0, 0, 1, 8);
    Graphics_LoadObjectTiles(12, 94, 1, 80 * 0x20, 0, 1, 8);

    ov25_02255958(&param0->unk_78, 12, 92, 93, 8);
    ov25_02255958(&param0->unk_8C, 12, 3, 4, 8);

    for (v1 = 0; v1 < 17; v1++) {
        if ((v1 >= 13) && (v1 <= 16)) {
            param0->unk_34[v1] = ov25_02255810(param0->unk_30, &v0[v1], &param0->unk_8C);
        } else {
            param0->unk_34[v1] = ov25_02255810(param0->unk_30, &v0[v1], &param0->unk_78);
            ov25_02255940(param0->unk_34[v1], 80);
        }
    }

    ov46_02257054(param0, param1);
    ov46_02257094(param0, param1);
    ov46_022570C4(param0, !(param1->unk_08));

    param0->unk_A8 = 0;
}

static void ov46_02256CF4(UnkStruct_ov46_02256BCC *param0)
{
    int v0;

    for (v0 = 0; v0 < 17; v0++) {
        if (param0->unk_34[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_34[v0]);
        }
    }

    ov25_022559B0(&param0->unk_78);
    ov25_022559B0(&param0->unk_8C);
}

static const PoketchTask Unk_ov46_02257178[] = {
    { 0x0, ov46_02256D74, 0x0 },
    { 0x1, ov46_02256E58, 0x0 },
    { 0x2, ov46_02256EA4, 0x0 },
    { 0x3, ov46_02256ED8, 0x0 },
    { 0x4, ov46_02256F0C, 0x0 },
    { 0x5, ov46_02256F30, 0x0 },
    { 0x6, ov46_02256F54, 0x0 },
    { 0x7, ov46_02257010, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov46_02256D24(UnkStruct_ov46_02256BCC *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov46_02257178, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov46_02256D48(UnkStruct_ov46_02256BCC *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov46_02256D54(UnkStruct_ov46_02256BCC *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov46_02256D60(PoketchTaskManager *param0)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov46_02256D74(SysTask *param0, void *param1)
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
    UnkStruct_ov46_02256BCC *v2;
    void *v3;
    NNSG2dPaletteData *v4;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Graphics_LoadTilesToBgLayer(12, 91, v2->unk_04, 6, 0, 0, 1, 8);
    Graphics_LoadTilemapToBgLayer(12, 90, v2->unk_04, 6, 0, 0, 1, 8);

    ov25_022546B8(0, 0);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    switch (v2->unk_00->unk_0C) {
    case 2:
        ov46_02256D24(v2, 6);
        break;
    case 1:
        ov25_022558C4(v2->unk_34[0], 3);
        ov25_022558C4(v2->unk_34[1], 1);
        break;
    case 3:
        if (v2->unk_00->unk_10) {
            ov25_022558C4(v2->unk_34[0], 2);
            ov25_022558C4(v2->unk_34[1], 1);
        } else {
            ov25_022558C4(v2->unk_34[0], 3);
            ov25_022558C4(v2->unk_34[1], 0);
        }

        break;
    }

    ov46_02256D60(param1);
}

static void ov46_02256E58(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_A0 = 1;
        PoketchTask_IncrementState(param1);
    case 1:
        if (ov46_02256D48(v0, 6)) {
            Bg_FreeTilemapBuffer(v0->unk_04, 6);
            ov46_02256D60(param1);
        }
    }
}

static void ov46_02256EA4(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov46_022570C4(v0, 0);
    ov25_022558C4(v0->unk_34[0], 2);
    ov25_022558C4(v0->unk_34[1], 0);
    ov46_02256D60(param1);
}

static void ov46_02256ED8(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov46_022570C4(v0, 1);
    ov25_022558C4(v0->unk_34[0], 3);
    ov25_022558C4(v0->unk_34[1], 1);
    ov46_02256D60(param1);
}

static void ov46_02256F0C(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov46_02257054(v0, v1);
    ov46_02256D60(param1);
}

static void ov46_02256F30(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov46_02257094(v0, v1);
    ov46_02256D60(param1);
}

static void ov46_02256F54(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        ov25_022558C4(v0->unk_34[0], 2);
        ov25_022558C4(v0->unk_34[1], 0);
        v0->unk_A4 = 0;
        v0->unk_A0 = 0;
        PoketchTask_IncrementState(param1);
    case 1:
        if (v0->unk_A0) {
            ov46_02256D60(param1);
            return;
        }

        if (++(v0->unk_A4) >= 8) {
            v0->unk_A8 ^= 1;

            if (v0->unk_A8) {
                ov25_022558C4(v0->unk_34[0], 2);
                ov25_022558C4(v0->unk_34[1], 1);
            } else {
                ov25_022558C4(v0->unk_34[0], 3);
                ov25_022558C4(v0->unk_34[1], 0);
            }

            PoketchSystem_PlaySoundEffect(1655);
            v0->unk_A4 = 0;
        }
        break;
    }
}

static void ov46_02257010(SysTask *param0, void *param1)
{
    UnkStruct_ov46_02256BCC *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov46_02256BCC_1 *v1 = PoketchTask_GetConstTaskData(param1);

    switch (PoketchTask_GetState(param1)) {
    case 0:
        v0->unk_A0 = 1;
        PoketchTask_IncrementState(param1);
    case 1:
        if (ov46_02256D48(v0, 6)) {
            ov46_02256D60(param1);
        }

        break;
    }
}

static void ov46_02257054(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1)
{
    ov25_022558C4(param0->unk_34[2], (param1->unk_04[0]) ? 6 : 5);
    ov25_022558C4(param0->unk_34[3], (param1->unk_04[1]) ? 8 : 7);
    ov25_022558C4(param0->unk_34[4], (param1->unk_04[2]) ? 10 : 9);
}

static void ov46_02257094(UnkStruct_ov46_02256BCC *param0, const UnkStruct_ov46_02256BCC_1 *param1)
{
    ov25_022558C4(param0->unk_34[13], param1->unk_00);
    ov25_022558C4(param0->unk_34[14], param1->unk_01);
    ov25_022558C4(param0->unk_34[15], param1->unk_02);
    ov25_022558C4(param0->unk_34[16], param1->unk_03);
}

static void ov46_022570C4(UnkStruct_ov46_02256BCC *param0, BOOL param1)
{
    ov25_02255914(param0->unk_34[5], param1);
    ov25_02255914(param0->unk_34[6], param1);
    ov25_02255914(param0->unk_34[7], param1);
    ov25_02255914(param0->unk_34[8], param1);
    ov25_02255914(param0->unk_34[9], param1);
    ov25_02255914(param0->unk_34[10], param1);
    ov25_02255914(param0->unk_34[11], param1);
    ov25_02255914(param0->unk_34[12], param1);
}

u32 ov46_0225710C(UnkStruct_ov46_02256BCC *param0)
{
    return param0->unk_A8;
}
