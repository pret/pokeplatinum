#include "overlay043/ov43_02256544.h"

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
#include "overlay043/struct_ov43_02256544_1.h"
#include "overlay043/struct_ov43_02256544_decl.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"

struct UnkStruct_ov43_02256544_t {
    const UnkStruct_ov43_02256544_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[10];
    UnkStruct_ov25_022555E8 *unk_30;
    UnkStruct_ov25_022558C4 *unk_34[6];
    UnkStruct_ov25_022558C4 *unk_4C[5];
    UnkStruct_ov25_02255958 unk_60;
    Window unk_74;
    Window unk_84;
    Window unk_94;
    Window unk_A4;
    MessageLoader *unk_B4;
    MessageLoader *unk_B8;
    Strbuf *unk_BC;
};

static void ov43_022565B4(UnkStruct_ov43_02256544 *param0);
static void ov43_02256640(UnkStruct_ov43_02256544 *param0);
static void ov43_022566EC(PoketchTaskManager *param0);
static void ov43_02256700(SysTask *param0, void *param1);
static void ov43_022567A4(UnkStruct_ov43_02256544 *param0, const UnkStruct_ov43_02256544_1 *param1, u32 param2);
static void ov43_02256870(UnkStruct_ov43_02256544 *param0);
static void ov43_02256894(SysTask *param0, void *param1);
static void ov43_022568B4(SysTask *param0, void *param1);
static void ov43_022568F0(SysTask *param0, void *param1);
static void ov43_02256924(SysTask *param0, void *param1);
static void ov43_02256948(UnkStruct_ov43_02256544 *param0, const UnkStruct_ov43_02256544_1 *param1);
static void ov43_02256988(UnkStruct_ov43_02256544 *param0, Window *param1, u32 param2);
static void ov43_02256A00(UnkStruct_ov43_02256544 *param0, Window *param1, u32 param2);
static void ov43_02256A4C(UnkStruct_ov43_02256544 *param0, u32 param1);

BOOL ov43_02256544(UnkStruct_ov43_02256544 **param0, const UnkStruct_ov43_02256544_1 *param1, BgConfig *param2)
{
    UnkStruct_ov43_02256544 *v0 = (UnkStruct_ov43_02256544 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov43_02256544));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 8);
        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_30 = ov25_02254664();
        v0->unk_B4 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_TYPE_NAMES, HEAP_ID_POKETCH_APP);
        v0->unk_B8 = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0456, HEAP_ID_POKETCH_APP);
        v0->unk_BC = Strbuf_Init(128, HEAP_ID_POKETCH_APP); // Possibly TRAINER_NAME_LEN + 1
        ov43_022565B4(v0);
        *param0 = v0;

        return 1;
    }

    return 0;
}

static void ov43_022565B4(UnkStruct_ov43_02256544 *param0)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { (28 << FX32_SHIFT), (128 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (116 << FX32_SHIFT), (128 << FX32_SHIFT) },
            2,
            0,
            2,
            0,
            0,
        },
        {
            { (108 << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (196 << FX32_SHIFT), (40 << FX32_SHIFT) },
            2,
            0,
            2,
            0,
            0,
        },
        {
            { (108 << FX32_SHIFT), (72 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
        {
            { (196 << FX32_SHIFT), (72 << FX32_SHIFT) },
            2,
            0,
            2,
            0,
            0,
        },
    };
    static const UnkStruct_ov25_02255810 v1 = {
        { (44 << FX32_SHIFT), (48 << FX32_SHIFT) },
        5,
        0,
        2,
        0,
        0
    };
    int v2;

    Graphics_LoadObjectTiles(12, 64, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
    ov25_02255958(&param0->unk_60, 12, 62, 63, 8);

    for (v2 = 0; v2 < 6; v2++) {
        param0->unk_34[v2] = ov25_02255810(param0->unk_30, &v0[v2], &param0->unk_60);
    }

    for (v2 = 0; v2 < 5; v2++) {
        param0->unk_4C[v2] = ov25_02255810(param0->unk_30, &v1, &param0->unk_60);
        ov25_02255900(param0->unk_4C[v2], ((44 + 8 * v2) << FX32_SHIFT), 48 << FX32_SHIFT);
    }
}

static void ov43_02256640(UnkStruct_ov43_02256544 *param0)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_34[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_34[v0]);
        }
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_4C[v0]) {
            ov25_022558B0(param0->unk_30, param0->unk_4C[v0]);
        }
    }

    ov25_022559B0(&param0->unk_60);
}

void ov43_02256680(UnkStruct_ov43_02256544 *param0)
{
    if (param0 != NULL) {
        Strbuf_Free(param0->unk_BC);
        MessageLoader_Free(param0->unk_B4);
        MessageLoader_Free(param0->unk_B8);
        ov43_02256640(param0);
        Heap_FreeToHeap(param0);
    }
}

static const PoketchTask Unk_ov43_02256C34[] = {
    { 0x0, ov43_02256700, 0x0 },
    { 0x1, ov43_02256894, 0x0 },
    { 0x2, ov43_022568B4, 0x0 },
    { 0x3, ov43_022568F0, 0x0 },
    { 0x4, ov43_02256924, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov43_022566B0(UnkStruct_ov43_02256544 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov43_02256C34, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov43_022566D4(UnkStruct_ov43_02256544 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov43_022566E0(UnkStruct_ov43_02256544 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov43_022566EC(PoketchTaskManager *param0)
{
    UnkStruct_ov43_02256544 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov43_02256700(SysTask *param0, void *param1)
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
    UnkStruct_ov43_02256544 *v2;
    const UnkStruct_ov43_02256544_1 *v3;
    void *v4;
    NNSG2dPaletteData *v5;
    u32 v6;

    v2 = PoketchTask_GetTaskData(param1);
    v3 = PoketchTask_GetConstTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    v6 = Graphics_LoadTilesToBgLayer(12, 61, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Graphics_LoadTilemapToBgLayer(12, 60, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Poketch_LoadActivePalette(0, 0);

    v6 /= 0x20;
    ov43_022567A4(v2, v3, v6);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov43_022566EC(param1);
}

static void ov43_022567A4(UnkStruct_ov43_02256544 *param0, const UnkStruct_ov43_02256544_1 *param1, u32 param2)
{
    Window_Add(param0->unk_04, &(param0->unk_74), 6, 6, 15, 6, 2, 0, param2);
    param2 += 12;

    Window_Add(param0->unk_04, &(param0->unk_84), 6, 16, 4, 6, 2, 0, param2);
    param2 += 12;

    Window_Add(param0->unk_04, &(param0->unk_94), 6, 16, 8, 6, 2, 0, param2);
    param2 += 12;

    Window_Add(param0->unk_04, &(param0->unk_A4), 6, 3, 19, 22, 2, 0, param2);

    Window_PutToTilemap(&(param0->unk_74));
    Window_PutToTilemap(&(param0->unk_84));
    Window_PutToTilemap(&(param0->unk_94));
    Window_PutToTilemap(&(param0->unk_A4));

    ov43_02256948(param0, param1);
}

static void ov43_02256870(UnkStruct_ov43_02256544 *param0)
{
    Window_Remove(&(param0->unk_74));
    Window_Remove(&(param0->unk_84));
    Window_Remove(&(param0->unk_94));
    Window_Remove(&(param0->unk_A4));
}

static void ov43_02256894(SysTask *param0, void *param1)
{
    UnkStruct_ov43_02256544 *v0 = PoketchTask_GetTaskData(param1);

    ov43_02256870(v0);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov43_022566EC(param1);
}

static void ov43_022568B4(SysTask *param0, void *param1)
{
    UnkStruct_ov43_02256544 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov43_02256544_1 *v1 = PoketchTask_GetConstTaskData(param1);
    u32 v2 = (v1->unk_00 & 1) ? 3 : 1;

    ov25_022558C4(v0->unk_34[v1->unk_00], v2);
    PoketchSystem_PlaySoundEffect(1635);
    ov43_022566EC(param1);
}

static void ov43_022568F0(SysTask *param0, void *param1)
{
    UnkStruct_ov43_02256544 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov43_02256544_1 *v1 = PoketchTask_GetConstTaskData(param1);
    u32 v2 = (v1->unk_00 & 1) ? 2 : 0;

    ov25_022558C4(v0->unk_34[v1->unk_00], v2);
    ov43_022566EC(param1);
}

static void ov43_02256924(SysTask *param0, void *param1)
{
    UnkStruct_ov43_02256544 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov43_02256544_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov43_02256948(v0, v1);
    ov43_022566EC(param1);
}

static void ov43_02256948(UnkStruct_ov43_02256544 *param0, const UnkStruct_ov43_02256544_1 *param1)
{
    ov43_02256988(param0, &(param0->unk_74), param1->unk_06);
    ov43_02256988(param0, &(param0->unk_84), param1->unk_08);
    ov43_02256988(param0, &(param0->unk_94), param1->unk_0A);
    ov43_02256A00(param0, &(param0->unk_A4), param1->unk_04);
    ov43_02256A4C(param0, param1->unk_04);
}

static void ov43_02256988(UnkStruct_ov43_02256544 *param0, Window *param1, u32 param2)
{
    u32 v0;

    Window_FillTilemap(param1, 4);

    if (param2 == 18) {
        MessageLoader_GetStrbuf(param0->unk_B8, 6, param0->unk_BC);
    } else {
        MessageLoader_GetStrbuf(param0->unk_B4, param2, param0->unk_BC);
    }

    v0 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_BC, 0);

    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_BC, ((6 * 8) - v0) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(param1);
}

static void ov43_02256A00(UnkStruct_ov43_02256544 *param0, Window *param1, u32 param2)
{
    Window_FillTilemap(param1, 4);
    MessageLoader_GetStrbuf(param0->unk_B8, param2, param0->unk_BC);
    Text_AddPrinterWithParamsAndColor(param1, FONT_SYSTEM, param0->unk_BC, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(param1);
}

static void ov43_02256A4C(UnkStruct_ov43_02256544 *param0, u32 param1)
{
    u32 v0;

    for (v0 = 0; v0 < param1; v0++) {
        ov25_022558C4(param0->unk_4C[v0], 4);
    }

    for (; v0 < 5; v0++) {
        ov25_022558C4(param0->unk_4C[v0], 5);
    }
}
