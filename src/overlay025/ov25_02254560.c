#include "overlay025/ov25_02254560.h"

#include <nitro.h>
#include <string.h>

#include "overlay025/ov25_02255090.h"
#include "overlay025/ov25_02255540.h"
#include "overlay025/poketch_system.h"
#include "overlay025/struct_ov25_02254560_1.h"
#include "overlay025/struct_ov25_02254560_decl.h"
#include "overlay025/struct_ov25_022555E8_decl.h"
#include "overlay025/struct_ov25_02255810.h"
#include "overlay025/struct_ov25_022558C4_decl.h"
#include "overlay025/struct_ov25_02255958.h"

#include "bg_window.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "palette.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"

#define POKETCH_PALETTE_NARC_IDX 0

#define NUM_PALETTES                        16
#define NUM_PALETTES_PER_PALETTE_COLOUR_SET 2
#define NUM_PALETTE_COLOUR_SETS             (NUM_PALETTES / NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define SLOTS_PER_PALETTE_COLOUR_SET        (SLOTS_PER_PALETTE * NUM_PALETTES_PER_PALETTE_COLOUR_SET)
#define BACKLIGHT_PALETTE_SLOT_OFFSET       (SLOTS_PER_PALETTE)

typedef struct {
    BOOL unk_00;
    UnkStruct_ov25_022555E8 *unk_04;
    UnkStruct_ov25_02255958 unk_08;
    UnkStruct_ov25_022558C4 *unk_1C[2];
} UnkStruct_ov25_02254DD8;

struct UnkStruct_ov25_02254560_t {
    const UnkStruct_ov25_02254560_1 *unk_00;
    u32 unk_04[10];
    u16 unk_2C[32];
    u16 unk_6C[32];
    u16 unk_AC[32];
    u16 unk_EC[32];
    u16 unk_12C[32];
    u16 unk_16C[32];
    NNSG2dOamManagerInstance unk_1AC;
    NNSG2dOamManagerInstance *unk_1C8;
    UnkStruct_ov25_022555E8 *unk_1CC;
    SysTask *unk_1D0;
    UnkStruct_ov25_02254DD8 unk_1D4;
    BgConfig *unk_1F8;
    PoketchSystem *poketchSys;
    u16 poketchPalettes[NUM_PALETTE_COLOUR_SETS * SLOTS_PER_PALETTE_COLOUR_SET];
    u16 unk_400[16];
};

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_ov25_02254944;

static void ov25_02254654(SysTask *param0, void *param1);
static void Poketch_InitPaletteData(UnkStruct_ov25_02254560 *param0);
static void ov25_02254798(u16 *param0, u32 param1, int param2, int param3);
static void ov25_0225480C(PoketchTaskManager *param0);
static void ov25_02254820(SysTask *param0, void *param1);
static void ov25_02254944(SysTask *param0, void *param1);
static void ov25_02254A5C(SysTask *param0, void *param1);
static void ov25_02254B8C(SysTask *param0, void *param1);
static void ov25_02254BF0(SysTask *param0, void *param1);
static void ov25_02254C54(void *param0, u16 *param1, int param2);
static void ov25_02254CA8(SysTask *param0, void *param1);
static void ov25_02254CCC(SysTask *param0, void *param1);
static void ov25_02254CF4(SysTask *param0, void *param1);
static void ov25_02254D0C(SysTask *param0, void *param1);
static void ov25_02254D24(SysTask *param0, void *param1);
static void ov25_02254D48(SysTask *param0, void *param1);
static void ov25_02254D70(SysTask *param0, void *param1);
static void ov25_02254D9C(SysTask *param0, void *param1);
static void ov25_02254DBC(SysTask *param0, void *param1);
static void ov25_02254DD8(UnkStruct_ov25_02254DD8 *param0, UnkStruct_ov25_022555E8 *param1);
static void ov25_02254DE0(UnkStruct_ov25_02254560 *param0, UnkStruct_ov25_02254DD8 *param1);
static void ov25_02254E84(UnkStruct_ov25_02254560 *param0, u32 param1);
static void ov25_02254EE8(UnkStruct_ov25_02254DD8 *param0, const UnkStruct_ov25_02254560_1 *param1);
static void ov25_02254F40(UnkStruct_ov25_02254DD8 *param0);
static void ov25_02254F68(SysTask *param0, void *param1);
static void ov25_02255004(SysTask *param0, void *param1);
static void ov25_02255064(SysTask *param0, void *param1);
struct PoketchSystem *FieldSystem_GetPoketchSystem(void);
SysTask *SysTask_ExecuteAfterVBlank(SysTaskFunc param0, void *param1, u32 param2);

BOOL ov25_02254560(UnkStruct_ov25_02254560 **param0, const UnkStruct_ov25_02254560_1 *param1, NNSG2dOamManagerInstance *param2, PoketchSystem *poketchSys)
{
    *param0 = Heap_AllocFromHeap(HEAP_ID_POKETCH_MAIN, sizeof(UnkStruct_ov25_02254560));

    if (*param0 != NULL) {
        UnkStruct_ov25_02254560 *v0 = *param0;

        v0->unk_1C8 = param2;
        NNS_G2dResetOamManagerBuffer(v0->unk_1C8);
        v0->unk_1CC = ov25_02255540(v0->unk_1C8, 7);

        if (v0->unk_1CC == NULL) {
            Heap_FreeToHeap(*param0);
            *param0 = NULL;
            return 0;
        }

        v0->unk_00 = param1;
        v0->unk_1F8 = BgConfig_New(HEAP_ID_POKETCH_MAIN);
        v0->poketchSys = poketchSys;

        Poketch_InitPaletteData(v0);
        ov25_02254DD8(&v0->unk_1D4, v0->unk_1CC);
        PoketchTask_InitActiveTaskList((*param0)->unk_04, 8);

        ov25_02254798((*param0)->unk_2C, 64 + 8, 4, 6);
        ov25_02254798((*param0)->unk_6C, 64 + 12, 4, 6);
        ov25_02254798((*param0)->unk_AC, 64 + 16, 4, 6);

        ov25_02254798((*param0)->unk_EC, 64 + 20, 2, 4);
        ov25_02254798((*param0)->unk_12C, 64 + 24, 2, 4);
        ov25_02254798((*param0)->unk_16C, 64 + 28, 2, 4);

        v0->unk_1D0 = SysTask_ExecuteAfterVBlank(ov25_02254654, v0, 0);

        return 1;
    }

    return 0;
}

static void ov25_02254654(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = (UnkStruct_ov25_02254560 *)param1;
    ov25_02255614(v0->unk_1CC);
}

UnkStruct_ov25_022555E8 *ov25_02254664(void)
{
    UnkStruct_ov25_02254560 *v0 = ov25_02254418();
    return v0->unk_1CC;
}

BgConfig *Poketch_GetBgConfig(void)
{
    UnkStruct_ov25_02254560 *v0 = ov25_02254418();
    return v0->unk_1F8;
}

static void Poketch_InitPaletteData(UnkStruct_ov25_02254560 *param0)
{
    NNSG2dPaletteData *paletteData;

    void *poketchPalettes = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__POKETCH, POKETCH_PALETTE_NARC_IDX, &paletteData, HEAP_ID_POKETCH_MAIN);

    if (poketchPalettes) {
        MI_CpuCopy32(paletteData->pRawData, param0->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        DC_FlushRange(param0->poketchPalettes, NUM_PALETTES * PALETTE_SIZE_BYTES);
        Heap_FreeToHeap(poketchPalettes);
    }
}

void Poketch_LoadActivePalette(u32 bgOffset, u32 objOffset)
{
    UnkStruct_ov25_02254560 *v0 = ov25_02254418();
    Poketch *poketch = PoketchSystem_GetPoketchData(v0->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&v0->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], bgOffset * PALETTE_SIZE_BYTES, PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&v0->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], objOffset, PALETTE_SIZE_BYTES);
}

void Poketch_LoadActiveBacklightPalette(u32 unused_1, u32 unused_2)
{
    UnkStruct_ov25_02254560 *v0 = ov25_02254418();
    Poketch *poketch = PoketchSystem_GetPoketchData(v0->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    GXS_LoadBGPltt(&v0->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
    GXS_LoadOBJPltt(&v0->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET + BACKLIGHT_PALETTE_SLOT_OFFSET], 0, PALETTE_SIZE_BYTES);
}

void Poketch_CopyActivePalette(u16 *dest)
{
    UnkStruct_ov25_02254560 *v0 = ov25_02254418();
    Poketch *poketch = PoketchSystem_GetPoketchData(v0->poketchSys);
    u32 screenColour = Poketch_CurrentScreenColor(poketch);

    MI_CpuCopy16(&v0->poketchPalettes[screenColour * SLOTS_PER_PALETTE_COLOUR_SET], dest, PALETTE_SIZE_BYTES);
}

void ov25_02254754(UnkStruct_ov25_02254560 *param0)
{
    if (param0) {
        ov25_02254F40(&(param0->unk_1D4));

        if (param0->unk_1CC) {
            ov25_022555E8(param0->unk_1CC);
        }

        if (param0->unk_1F8) {
            Heap_FreeToHeap(param0->unk_1F8);
        }

        if (param0->unk_1D0) {
            SysTask_Done(param0->unk_1D0);
        }

        Heap_FreeToHeap(param0);
    }
}

static void ov25_02254798(u16 *param0, u32 param1, int param2, int param3)
{
    int v0, v1, v2;
    int v3;

    v2 = 0;
    v3 = 0;

    for (v1 = 0; v1 < 8; v1++) {
        for (v0 = 0; v0 < 4; v0++) {
            param0[v2] = (15 << 12) | (param1 + v3 + v0);
            v2++;
        }

        if ((v1 >= param2) && (v1 < param3)) {
            (void)0;
        } else {
            v3 += 32;
        }
    }
}

static const PoketchTask Unk_ov25_02255F8C[] = {
    { 0x0, ov25_02254820, 0x0 },
    { 0x1, ov25_02254944, sizeof(UnkStruct_ov25_02254944) },
    { 0x2, ov25_02254944, sizeof(UnkStruct_ov25_02254944) },
    { 0x3, ov25_02254B8C, sizeof(UnkStruct_ov25_02254944) },
    { 0x4, ov25_02254A5C, sizeof(UnkStruct_ov25_02254944) },
    { 0x5, ov25_02254BF0, sizeof(UnkStruct_ov25_02254944) },
    { 0x6, ov25_02254CA8, 0x0 },
    { 0x8, ov25_02254CF4, 0x0 },
    { 0x7, ov25_02254D24, 0x0 },
    { 0x9, ov25_02254CCC, 0x0 },
    { 0xB, ov25_02254D0C, 0x0 },
    { 0xA, ov25_02254D48, 0x0 },
    { 0xC, ov25_02254D70, 0x0 },
    { 0xD, ov25_02254D9C, 0x0 },
    { 0xE, ov25_02254DBC, 0x0 },
    { 0xF, ov25_02254F68, 0x0 },
    { 0x10, ov25_02255004, 0x0 },
    { 0x11, ov25_02255064, 0x0 },
    { 0xffffffff, NULL, 0x0 }
};

void ov25_022547D0(UnkStruct_ov25_02254560 *param0, u32 param1)
{
    PoketchTask_Start(Unk_ov25_02255F8C, param1, param0, param0->unk_00, param0->unk_04, 2, 7);
}

BOOL ov25_022547F4(UnkStruct_ov25_02254560 *param0, u32 param1)
{
    return PoketchTask_TaskIsNotActive(param0->unk_04, param1);
}

BOOL ov25_02254800(UnkStruct_ov25_02254560 *param0)
{
    return PoketchTask_NoActiveTasks(param0->unk_04);
}

static void ov25_0225480C(PoketchTaskManager *param0)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param0);
    PoketchTask_EndTask(v0->unk_04, param0);
}

static void ov25_02254820(SysTask *param0, void *param1)
{
    static const BgTemplate v0 = {
        0,
        0,
        0x824,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0x6000),
        (GX_BG_CHARBASE_0x04000),
        GX_BG_EXTPLTT_01,
        0,
        0,
        0,
        0
    };
    static const BgTemplate v1 = {
        0,
        0,
        0x800,
        0,
        1,
        GX_BG_COLORMODE_16,
        (GX_BG_SCRBASE_0x6800),
        (GX_BG_CHARBASE_0x04000),
        GX_BG_EXTPLTT_01,
        1,
        0,
        0,
        0
    };
    UnkStruct_ov25_02254560 *v2 = PoketchTask_GetTaskData(param1);

    GXS_SetGraphicsMode(GX_BGMODE_0);
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);

    GXLayers_DisableEngineBLayers();
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
    Bg_InitFromTemplate(v2->unk_1F8, 4, &v0, 0);
    Bg_InitFromTemplate(v2->unk_1F8, 5, &v1, 0);

    Graphics_LoadTilesToBgLayer(12, 14, v2->unk_1F8, 4, 64, 0, 1, 7);
    Graphics_LoadTilemapToBgLayer(12, 15, v2->unk_1F8, 4, 0, 0, 1, 7);
    Graphics_LoadPaletteWithSrcOffset(12, 13, 4, PoketchSystem_GetBorderColor(v2->poketchSys) * 0x20, 15 * 0x20, 0x20, 7);

    Bg_FillTilemapRect(v2->unk_1F8, 5, 64 + 164, 0, 0, 32, 24, 15);
    Bg_CopyTilemapBufferToVRAM(v2->unk_1F8, 5);

    GXS_SetVisiblePlane(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    ov25_0225480C(param1);
}

static void ov25_02254944(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254944 *v0;
    UnkStruct_ov25_02254560 *v1;
    u32 v2;

    v0 = PoketchTask_GetExtraData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetState(param1);

    switch (v2) {
    case 0:
        v0->unk_00 = 0;
        v0->unk_02 = 0;
        PoketchTask_IncrementState(param1);
    case 1:
        if (++(v0->unk_00) > 0) {
            u32 v3, v4, v5;

            v0->unk_00 = 0;
            v0->unk_02 += 12;

            if (v0->unk_02 > 40) {
                v0->unk_02 = 40;
            }

            v3 = v0->unk_02 / 4;
            v4 = v0->unk_02 % 4;
            v5 = 2 + (20 / 2) - v3;

            Bg_FillTilemapRect(v1->unk_1F8, 5, 64, 2, v5, 24, v3 * 2, 15);

            if (v4) {
                Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 164 + v4, 2, v5 - 1, 24, 1, 15);
                Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 164 - v4, 2, v5 + v3 * 2, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(v1->unk_1F8, 5);

            if (v0->unk_02 == 40) {
                PoketchTask_IncrementState(param1);
            }
        }
        break;
    case 2:
        ov25_0225480C(param1);
    }
}

static void ov25_02254A5C(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254944 *v0;
    UnkStruct_ov25_02254560 *v1;
    u32 v2;

    v0 = PoketchTask_GetExtraData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetState(param1);

    switch (v2) {
    case 0:
        v0->unk_00 = 0;
        v0->unk_02 = 0;
        PoketchTask_IncrementState(param1);
    case 1:
        if (++(v0->unk_00) > 0) {
            u32 v3, v4, v5;

            v0->unk_00 = 0;
            v0->unk_02 += 8;

            if (v0->unk_02 > 40) {
                v0->unk_02 = 40;
            }

            v3 = v0->unk_02 / 4;
            v4 = v0->unk_02 % 4;
            v5 = 2 + 20 - v3;

            Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 164, 2, 2, 24, v3, 15);
            Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 164, 2, v5, 24, v3, 15);

            if (v4) {
                v4--;

                Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 167 - v4, 2, 0, 24, 1, 15);
                Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 161 + v4, 2, v5 - 1, 24, 1, 15);
            }

            Bg_CopyTilemapBufferToVRAM(v1->unk_1F8, 5);

            if (v0->unk_02 == 40) {
                PoketchTask_IncrementState(param1);
            }
        }
        break;
    case 2:
        ov25_0225480C(param1);
    }
}

static void ov25_02254B8C(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254944 *v0;
    UnkStruct_ov25_02254560 *v1;
    u32 v2;

    v0 = PoketchTask_GetExtraData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetState(param1);

    if (v2 < 4) {
        Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 164 - v2 - 1, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(v1->unk_1F8, 5);
        PoketchTask_IncrementState(param1);
    } else {
        ov25_0225480C(param1);
    }
}

static void ov25_02254BF0(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254944 *v0;
    UnkStruct_ov25_02254560 *v1;
    u32 v2;

    v0 = PoketchTask_GetExtraData(param1);
    v1 = PoketchTask_GetTaskData(param1);
    v2 = PoketchTask_GetState(param1);

    if (v2 < 4) {
        Bg_FillTilemapRect(v1->unk_1F8, 5, 64 + 167 - v2, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(v1->unk_1F8, 5);
        PoketchTask_IncrementState(param1);
    } else {
        ov25_0225480C(param1);
    }
}

static void ov25_02254C54(void *param0, u16 *param1, int param2)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param0);
    int v1, v2;

    if (param2 == 0) {
        v1 = 28;
        v2 = 4;
    } else {
        v1 = 28;
        v2 = 12;
    }

    Bg_LoadToTilemapRect(v0->unk_1F8, 4, param1, v1, v2, 4, 8);
    Bg_CopyTilemapBufferToVRAM(v0->unk_1F8, 4);

    ov25_0225480C(param0);
}

static void ov25_02254CA8(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254C54(param1, v0->unk_6C, 0);
    Sound_PlayEffect(1649);
}

static void ov25_02254CCC(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254C54(param1, v0->unk_12C, 1);
    Sound_PlayEffect(1649);
}

static void ov25_02254CF4(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);
    ov25_02254C54(param1, v0->unk_2C, 0);
}

static void ov25_02254D0C(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);
    ov25_02254C54(param1, v0->unk_EC, 1);
}

static void ov25_02254D24(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254C54(param1, v0->unk_AC, 0);
    Sound_PlayEffect(1647);
}

static void ov25_02254D48(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254C54(param1, v0->unk_16C, 1);
    Sound_PlayEffect(1647);
}

static void ov25_02254D70(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254DE0(v0, &v0->unk_1D4);
    ov25_02254EE8(&v0->unk_1D4, v0->unk_00);
    ov25_0225480C(param1);
}

static void ov25_02254D9C(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254EE8(&v0->unk_1D4, v0->unk_00);
    ov25_0225480C(param1);
}

static void ov25_02254DBC(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    ov25_02254F40(&v0->unk_1D4);
    ov25_0225480C(param1);
}

static void ov25_02254DD8(UnkStruct_ov25_02254DD8 *param0, UnkStruct_ov25_022555E8 *param1)
{
    param0->unk_00 = 0;
    param0->unk_04 = param1;
}

static void ov25_02254DE0(UnkStruct_ov25_02254560 *param0, UnkStruct_ov25_02254DD8 *param1)
{
    if (ov25_02255958(&param1->unk_08, 12, 3, 4, 7)) {
        static const UnkStruct_ov25_02255810 v0 = {
            { (176 << FX32_SHIFT), (40 << FX32_SHIFT) },
            0,
            0,
            0,
            0,
            0
        };

        Graphics_LoadObjectTiles(12, 2, 1, 0, 0, 1, 7);
        Graphics_LoadPalette(12, 0, 5, 0, 0x60, 7);

        ov25_02254E84(param0, 15);

        param1->unk_1C[0] = ov25_02255810(param1->unk_04, &v0, &param1->unk_08);

        if (param1->unk_1C[0] == NULL) {
            return;
        }

        param1->unk_1C[1] = ov25_02255810(param1->unk_04, &v0, &param1->unk_08);

        if (param1->unk_1C[1] == NULL) {
            ov25_022558B0(param1->unk_04, param1->unk_1C[0]);
            return;
        }

        ov25_022558F0(param1->unk_1C[1], 16 * FX32_ONE, 0);
        ov25_02255938(param1->unk_1C[0], 15);
        ov25_02255938(param1->unk_1C[1], 15);

        param1->unk_00 = 1;
    }
}

static void ov25_02254E84(UnkStruct_ov25_02254560 *param0, u32 param1)
{
    Poketch *poketch = PoketchSystem_GetPoketchData(param0->poketchSys);
    u32 v2 = Poketch_CurrentScreenColor(poketch);

    Poketch_CopyActivePalette(param0->unk_400);

    {
        u16 v3 = param0->unk_400[1];
        param0->unk_400[1] = (param0->unk_400[4]);
        param0->unk_400[4] = v3;
    }

    {
        u16 v3 = (param0->unk_400[8]);
        param0->unk_400[8] = param0->unk_400[15];
        param0->unk_400[15] = v3;
    }

    DC_FlushRange(param0->unk_400, sizeof(param0->unk_400));
    GXS_LoadOBJPltt(param0->unk_400, param1 * 0x20, sizeof(param0->unk_400));
}

static void ov25_02254EE8(UnkStruct_ov25_02254DD8 *param0, const UnkStruct_ov25_02254560_1 *param1)
{
    if (param0->unk_00) {
        u32 v0, v1;

        CP_SetDiv32_32((param1->unk_00 + 1), 10);

        v0 = CP_GetDivResult32();
        v1 = CP_GetDivRemainder32();

        ov25_022558C4(param0->unk_1C[0], v0);
        ov25_022558C4(param0->unk_1C[1], v1);
    }
}

static void ov25_02254F40(UnkStruct_ov25_02254DD8 *param0)
{
    if (param0->unk_00) {
        ov25_022558B0(param0->unk_04, param0->unk_1C[0]);
        ov25_022558B0(param0->unk_04, param0->unk_1C[1]);
        ov25_022559B0(&param0->unk_08);

        param0->unk_00 = 0;
    }
}

static void ov25_02254F68(SysTask *param0, void *param1)
{
    u32 v0;
    UnkStruct_ov25_02254944 *v1;
    UnkStruct_ov25_02254560 *v2 = PoketchTask_GetTaskData(param1);

    v1 = PoketchTask_GetExtraData(param1);
    v0 = PoketchTask_GetState(param1);

    switch (v0) {
    case 0:
        G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 0x1a, 0x6);
        Bg_CopyTilemapBufferToVRAM(v2->unk_1F8, 4);
    case 1:
    case 2:
    case 3:
        Bg_FillTilemapRect(v2->unk_1F8, 5, 64 + 167 - v0, 2, 2, 24, 20, 15);
        Bg_CopyTilemapBufferToVRAM(v2->unk_1F8, 5);

        if (v0 == 3) {
            ov25_0225480C(param1);
        } else {
            PoketchTask_IncrementState(param1);
        }
        break;
    }
}

static void ov25_02255004(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FillTilemapRect(v0->unk_1F8, 5, 64, 2, 2, 24, 20, 15);
    Bg_CopyTilemapBufferToVRAM(v0->unk_1F8, 4);
    Bg_CopyTilemapBufferToVRAM(v0->unk_1F8, 5);

    G2S_SetBlendAlpha(0, 0, 0x1f, 0x0);
    ov25_0225480C(param1);
}

static void ov25_02255064(SysTask *param0, void *param1)
{
    UnkStruct_ov25_02254560 *v0 = PoketchTask_GetTaskData(param1);

    Bg_FreeTilemapBuffer(v0->unk_1F8, 4);
    Bg_FreeTilemapBuffer(v0->unk_1F8, 5);

    ov25_0225480C(param1);
}
