#include "overlay054/ov54_0225642C.h"

#include <nitro.h>
#include <string.h>

#include "applications/poketch/poketch_animation.h"
#include "applications/poketch/poketch_graphics.h"
#include "applications/poketch/poketch_task.h"
#include "overlay054/struct_ov54_0225642C_1.h"
#include "overlay054/struct_ov54_0225642C_decl.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "pokemon_icon.h"
#include "strbuf.h"
#include "sys_task_manager.h"
#include "text.h"

struct UnkStruct_ov54_0225642C_t {
    const UnkStruct_ov54_0225642C_1 *unk_00;
    BgConfig *unk_04;
    u32 unk_08[6];
    PoketchAnimation_AnimationManager *unk_20;
    PoketchAnimation_AnimatedSpriteData *unk_24[12];
    PoketchAnimation_SpriteData unk_54;
    u32 unk_68[12];
};

static void ov54_022564A8(PoketchTaskManager *param0);
static void ov54_022564BC(SysTask *param0, void *param1);
static void ov54_022565CC(SysTask *param0, void *param1);
static void ov54_022565EC(UnkStruct_ov54_0225642C *param0, const UnkStruct_ov54_0225642C_1 *param1);
static void ov54_022566A8(UnkStruct_ov54_0225642C *param0);

BOOL ov54_0225642C(UnkStruct_ov54_0225642C **param0, const UnkStruct_ov54_0225642C_1 *param1, BgConfig *param2)
{
    UnkStruct_ov54_0225642C *v0 = (UnkStruct_ov54_0225642C *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(UnkStruct_ov54_0225642C));

    if (v0 != NULL) {
        PoketchTask_InitActiveTaskList(v0->unk_08, 4);
        v0->unk_00 = param1;
        v0->unk_04 = PoketchGraphics_GetBgConfig();
        v0->unk_20 = PoketchGraphics_GetAnimationManager();
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

static const PoketchTask Unk_ov54_0225672C[] = {
    { 0x0, ov54_022564BC, 0x0 },
    { 0x1, ov54_022565CC, 0x0 },
    { 0x0, NULL, 0x0 }
};

void ov54_0225646C(UnkStruct_ov54_0225642C *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov54_0225672C, param1, param0, param0->unk_00, param0->unk_08, 2, 8);
}

BOOL ov54_02256490(UnkStruct_ov54_0225642C *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_08, param1);
}

BOOL ov54_0225649C(UnkStruct_ov54_0225642C *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_08);
}

static void ov54_022564A8(PoketchTaskManager *param0)
{
    UnkStruct_ov54_0225642C *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_08, param0);
}

static void ov54_022564BC(SysTask *param0, void *param1)
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
    UnkStruct_ov54_0225642C *v2;
    const UnkStruct_ov54_0225642C_1 *v3;
    Window v4;

    v2 = PoketchTask_GetTaskData(param1);
    v3 = PoketchTask_GetConstTaskData(param1);

    Bg_InitFromTemplate(v2->unk_04, 6, &v0, 0);
    Bg_FillTilesRange(v2->unk_04, 6, 4, 1, 0);
    Bg_FillTilemapRect(v2->unk_04, 6, 0, 0, 0, 32, 24, 0);

    PoketchGraphics_LoadActivePalette(0, 0);

    Window_Add(v2->unk_04, &v4, 6, 2, 2, 24, 2, 0, 1);
    Window_FillTilemap(&v4, 4);
    Window_PutToTilemap(&v4);

    {
        Strbuf *v5 = MessageBank_GetNewStrbufFromNARC(26, 458, 0, 8);

        if (v5) {
            Text_AddPrinterWithParamsAndColor(&v4, FONT_SYSTEM, v5, (192 - Font_CalcStrbufWidth(FONT_SYSTEM, v5, 0)) / 2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 8, 4), NULL);
            Window_LoadTiles(&v4);
            Strbuf_Free(v5);
        }
    }

    Window_Remove(&v4);
    Bg_CopyTilemapBufferToVRAM(v2->unk_04, 6);
    ov54_022565EC(v2, v3);

    v1 = GXS_GetDispCnt();
    GXS_SetVisiblePlane(v1.visiblePlane | GX_PLANEMASK_BG2);

    ov54_022564A8(param1);
}

static void ov54_022565CC(SysTask *param0, void *param1)
{
    UnkStruct_ov54_0225642C *v0 = PoketchTask_GetTaskData(param1);

    ov54_022566A8(v0);
    Bg_FreeTilemapBuffer(v0->unk_04, 6);
    ov54_022564A8(param1);
}

static void ov54_022565EC(UnkStruct_ov54_0225642C *param0, const UnkStruct_ov54_0225642C_1 *param1)
{
    static const PoketchAnimation_AnimationData v0[] = {
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

    PoketchTask_LoadPokemonIconLuminancePalette(0);
    PoketchAnimation_LoadSpriteFromNARC(&param0->unk_54, 12, 5, 6, 8);

    for (v1 = 0; v1 < param1->unk_90; v1++) {
        param0->unk_68[v1] = PokeIconSpriteIndex(param1->unk_00[v1].unk_00, 0, param1->unk_00[v1].unk_08);
        param0->unk_24[v1] = PoketchAnimation_SetupNewAnimatedSprite(param0->unk_20, &v0[v1], &param0->unk_54);

        PoketchAnimation_SetSpriteCharNo(param0->unk_24[v1], v1 * 16);
        PoketchAnimation_SetCParam(param0->unk_24[v1], PokeIconPaletteIndex(param1->unk_00[v1].unk_00, param1->unk_00[v1].unk_08, 0));
    }

    for (; v1 < 12; v1++) {
        param0->unk_24[v1] = NULL;
    }

    PoketchTask_LoadPokemonIcons(0, param0->unk_68, param1->unk_90, 0);
}

static void ov54_022566A8(UnkStruct_ov54_0225642C *param0)
{
    int v0;

    for (v0 = 0; v0 < 12; v0++) {
        if (param0->unk_24[v0] != NULL) {
            PoketchAnimation_RemoveAnimatedSprite(param0->unk_20, param0->unk_24[v0]);
            param0->unk_24[v0] = NULL;
        }
    }

    PoketchAnimation_FreeSpriteData(&param0->unk_54);
}
