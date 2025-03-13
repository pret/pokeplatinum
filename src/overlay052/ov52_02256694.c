#include "overlay052/ov52_02256694.h"

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
#include "overlay052/struct_ov52_02256694_1.h"
#include "overlay052/struct_ov52_02256694_decl.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"

struct UnkStruct_ov52_02256694_t {
    const UnkStruct_ov52_02256694_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    Window unk_20;
    UnkStruct_ov25_022555E8 *unk_30;
    ov25_LinkedElement *unk_34[4];
    UnkStruct_ov25_02255958 unk_44;
    MessageLoader *unk_58;
    Strbuf *unk_5C;
};

static void ov52_0225670C(UnkStruct_ov52_02256694 *param0, const UnkStruct_ov52_02256694_1 *param1);
static void ov52_0225677C(UnkStruct_ov52_02256694 *param0);
static void ov52_022567E0(PoketchTaskManager *param0);
static void ov52_022567F4(SysTask *param0, void *param1);
static void ov52_022568B4(SysTask *param0, void *param1);
static void ov52_022568D8(SysTask *param0, void *param1);
static void ov52_0225691C(SysTask *param0, void *param1);
static void ov52_02256968(SysTask *param0, void *param1);
static void ov52_022569B4(SysTask *param0, void *param1);
static void ov52_02256A00(SysTask *param0, void *param1);
static void ov52_02256A58(SysTask *param0, void *param1);
static void ov52_02256A7C(UnkStruct_ov52_02256694 *param0);
static void ov52_02256B10(UnkStruct_ov52_02256694 *param0);
static void ov52_02256B64(UnkStruct_ov52_02256694 *param0);
static void ov52_02256BDC(UnkStruct_ov52_02256694 *param0);
static void ov52_02256C64(UnkStruct_ov52_02256694 *param0, const UnkStruct_ov52_02256694_1 *param1);

BOOL ov52_02256694(UnkStruct_ov52_02256694 **param0, const UnkStruct_ov52_02256694_1 *param1, BgConfig *param2)
{
    UnkStruct_ov52_02256694 *v0 = (UnkStruct_ov52_02256694 *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov52_02256694));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = Poketch_GetBgConfig();
        v0->unk_30 = ov25_02254664();
        v0->unk_58 = MessageLoader_Init(1, 26, 461, HEAP_ID_POKETCH_APP);
        v0->unk_5C = Strbuf_Init(96, HEAP_ID_POKETCH_APP);
        ov52_0225670C(v0, param1);
        *param0 = v0;

        return 1;
    }

    return 0;
}

void ov52_022566EC(UnkStruct_ov52_02256694 *param0)
{
    if (param0 != NULL) {
        Strbuf_Free(param0->unk_5C);
        MessageLoader_Free(param0->unk_58);
        ov52_0225677C(param0);
        Heap_FreeToHeap(param0);
    }
}

static void ov52_0225670C(UnkStruct_ov52_02256694 *param0, const UnkStruct_ov52_02256694_1 *param1)
{
    static const UnkStruct_ov25_02255810 v0[] = {
        {
            { (112 << FX32_SHIFT), (150 << FX32_SHIFT) },
            3,
            0,
            2,
            0,
            0,
        },
        {
            { (112 << FX32_SHIFT), (102 << FX32_SHIFT) },
            1,
            0,
            2,
            0,
            0,
        },
        {
            { (112 << FX32_SHIFT), (102 << FX32_SHIFT) },
            2,
            0,
            2,
            0,
            0,
        },
        {
            { (112 << FX32_SHIFT), (150 << FX32_SHIFT) },
            0,
            0,
            2,
            0,
            0,
        },
    };
    int v1;

    Graphics_LoadObjectTiles(12, 99, 1, 0, 0, 1, HEAP_ID_POKETCH_APP);
    ov25_LoadNARCMembers(&param0->unk_44, 12, 97, 98, 8);

    for (v1 = 0; v1 < 4; v1++) {
        param0->unk_34[v1] = ov25_SetupNewElem(param0->unk_30, &v0[v1], &param0->unk_44);
    }

    ov25_Set_ElemApplyAffineTransformation(param0->unk_34[1], 1);
    ov25_Set_ElemApplyAffineTransformation(param0->unk_34[2], 1);
    ov25_Set_ElemApplyAffineTransformation(param0->unk_34[3], 1);
}

static void ov52_0225677C(UnkStruct_ov52_02256694 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_34[v0]) {
            ov25_RemoveElem(param0->unk_30, param0->unk_34[v0]);
        }
    }

    ov25_FreeNARCMembers(&param0->unk_44);
}

static const PoketchTask Unk_ov52_02256DE4[] = {
    { 0x0, ov52_022567F4, 0x0 },
    { 0x1, ov52_022568B4, 0x0 },
    { 0x2, ov52_022568D8, 0x0 },
    { 0x3, ov52_0225691C, 0x0 },
    { 0x4, ov52_02256968, 0x0 },
    { 0x5, ov52_022569B4, 0x0 },
    { 0x6, ov52_02256A00, 0x0 },
    { 0x7, ov52_02256A58, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov52_022567A4(UnkStruct_ov52_02256694 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov52_02256DE4, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov52_022567C8(UnkStruct_ov52_02256694 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov52_022567D4(UnkStruct_ov52_02256694 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov52_022567E0(PoketchTaskManager *param0)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov52_022567F4(SysTask *param0, void *param1)
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
    UnkStruct_ov52_02256694 *v2;
    void *v3;
    NNSG2dPaletteData *v4;
    u32 v5;

    v2 = PoketchTask_GetTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);

    v5 = Graphics_LoadTilesToBgLayer(12, 96, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    v5 /= 0x20;

    Graphics_LoadTilemapToBgLayer(12, 95, v2->unk_04, 6, 0, 0, 1, HEAP_ID_POKETCH_APP);
    Poketch_LoadActivePalette(0, 0);

    Window_Add(v2->unk_04, &v2->unk_20, 6, 2, 2, 24, 20, 0, v5);
    Window_PutToTilemap(&v2->unk_20);

    ov52_02256A7C(v2);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov52_022567E0(param1);
}

static void ov52_022568B4(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);

    Window_Remove(&v0->unk_20);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);

    ov52_022567E0(param1);
}

static void ov52_022568D8(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);

    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[0], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[1], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[2], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[3], 1);

    ov52_02256A7C(v0);
    PoketchSystem_PlaySoundEffect(1635);
    ov52_022567E0(param1);
}

static void ov52_0225691C(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);

    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[0], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[1], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[2], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[3], 1);
    ov25_InitAnimation(v0->unk_34[1], 1);

    ov52_02256B10(v0);
    PoketchSystem_PlaySoundEffect(1635);
    ov52_022567E0(param1);
}

static void ov52_02256968(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);

    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[0], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[1], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[2], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[3], 1);
    ov25_InitAnimation(v0->unk_34[2], 2);
    ov52_02256B64(v0);
    PoketchSystem_PlaySoundEffect(1646);
    ov52_022567E0(param1);
}

static void ov52_022569B4(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);

    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[0], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[1], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[2], 0);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[3], 1);
    ov25_InitAnimation(v0->unk_34[2], 2);
    ov52_02256BDC(v0);
    PoketchSystem_PlaySoundEffect(1646);
    ov52_022567E0(param1);
}

static void ov52_02256A00(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov52_02256694_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[0], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[1], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[2], 1);
    ov25_Set_ElemApplyAffineTransformation(v0->unk_34[3], 0);
    ov25_InitAnimation(v0->unk_34[3], 0);

    ov52_02256C64(v0, v1);
    PoketchSystem_PlaySoundEffect(1635);
    ov52_022567E0(param1);
}

static void ov52_02256A58(SysTask *param0, void *param1)
{
    UnkStruct_ov52_02256694 *v0 = PoketchTask_GetTaskData(param1);
    const UnkStruct_ov52_02256694_1 *v1 = PoketchTask_GetConstTaskData(param1);

    ov52_02256C64(v0, v1);
    ov52_022567E0(param1);
}

static void ov52_02256A7C(UnkStruct_ov52_02256694 *param0)
{
    u32 v0;

    Window_FillTilemap(&param0->unk_20, 4);
    MessageLoader_GetStrbuf(param0->unk_58, 0, param0->unk_5C);

    v0 = ((24 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;

    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v0, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    MessageLoader_GetStrbuf(param0->unk_58, 10, param0->unk_5C);

    v0 = ((24 * 8) - Font_CalcMaxLineWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;

    {
        u32 v1 = 8 + 56;

        v1 -= Strbuf_NumLines(param0->unk_5C) * 8;
        Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v0, v1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    }

    Window_LoadTiles(&param0->unk_20);
}

static void ov52_02256B10(UnkStruct_ov52_02256694 *param0)
{
    Window_FillTilemap(&param0->unk_20, 4);
    MessageLoader_GetStrbuf(param0->unk_58, 1, param0->unk_5C);

    {
        u32 v0 = (24 * 8 - Font_CalcMaxLineWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;
        Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    }

    Window_LoadTiles(&param0->unk_20);
}

static void ov52_02256B64(UnkStruct_ov52_02256694 *param0)
{
    u32 v0;

    Window_FillTilemap(&param0->unk_20, 4);
    MessageLoader_GetStrbuf(param0->unk_58, 2, param0->unk_5C);

    v0 = ((24 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;

    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v0, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    MessageLoader_GetStrbuf(param0->unk_58, 3, param0->unk_5C);
    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, 16, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    Window_LoadTiles(&param0->unk_20);
}

static void ov52_02256BDC(UnkStruct_ov52_02256694 *param0)
{
    u32 v0;
    u32 v1;

    Window_FillTilemap(&param0->unk_20, 4);
    MessageLoader_GetStrbuf(param0->unk_58, 2, param0->unk_5C);

    v0 = ((24 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v0, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    MessageLoader_GetStrbuf(param0->unk_58, 4, param0->unk_5C);

    v1 = ((24 * 8) - Font_CalcMaxLineWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v1, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    Window_LoadTiles(&param0->unk_20);
}

static void ov52_02256C64(UnkStruct_ov52_02256694 *param0, const UnkStruct_ov52_02256694_1 *param1)
{
    static const u8 v0[] = {
        6,
        7,
        8,
        9,
    };
    u32 v1;
    int v2;

    Window_FillTilemap(&param0->unk_20, 4);
    MessageLoader_GetStrbuf(param0->unk_58, 5, param0->unk_5C);

    v1 = ((24 * 8) - Font_CalcStrbufWidth(FONT_SYSTEM, param0->unk_5C, 0)) / 2;
    Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, v1, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);

    for (v2 = 0; v2 < 4; v2++) {
        MessageLoader_GetStrbuf(param0->unk_58, v0[v2], param0->unk_5C);
        Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, 8, 32 + 16 * v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
        Strbuf_FormatInt(param0->unk_5C, param1->unk_00[v2], 2, 2, 1);
        Text_AddPrinterWithParamsAndColor(&param0->unk_20, FONT_SYSTEM, param0->unk_5C, 160, 32 + 16 * v2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
    }

    Window_LoadTiles(&param0->unk_20);
}
