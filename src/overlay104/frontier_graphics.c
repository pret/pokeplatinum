#include "overlay104/frontier_graphics.h"

#include <nitro.h>

#include "constants/field_base_tiles.h"
#include "constants/graphics.h"

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay063/ov63_0222BCE8.h"
#include "overlay063/ov63_0222BE18.h"
#include "overlay063/ov63_0222CA88.h"
#include "overlay063/ov63_0222CCE4.h"
#include "overlay063/ov63_0222D160.h"
#include "overlay063/ov63_0222D1C0.h"
#include "overlay063/ov63_0222D77C.h"
#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay063/struct_ov63_0222CE44.h"
#include "overlay063/struct_ov63_0222D894.h"
#include "overlay063/union_ov63_0222BDAC.h"
#include "overlay065/struct_ov65_0223582C.h"
#include "overlay065/struct_ov65_022376D0.h"
#include "overlay104/frontier_particle_system.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222EA90.h"
#include "overlay104/ov104_0223D768.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223C634.h"
#include "overlay104/struct_ov104_0223C688.h"
#include "overlay104/struct_ov104_0223D3B0.h"
#include "overlay104/struct_ov104_0223D3B0_1.h"
#include "overlay104/struct_ov104_0223D570.h"

#include "bg_window.h"
#include "g3d_pipeline.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "network_icon.h"
#include "palette.h"
#include "render_text.h"
#include "render_window.h"
#include "save_player.h"
#include "sound.h"
#include "sprite_system.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "touch_pad.h"
#include "trainer_info.h"
#include "unk_0202419C.h"
#include "unk_0209B6F8.h"
#include "vram_transfer.h"

#include "res/fonts/pl_font.naix"

static void VBlankCallback(void *data);
static void DummyExecuteOnVBlank(SysTask *task, void *data);
static void ov104_0223C738(SysTask *param0, void *param1);
static void ov104_0223C720(SysTask *param0, void *param1);
static void ov104_0223C72C(SysTask *param0, void *param1);
static void InitBackgrounds(BgConfig *bgConfig, int sceneID);
static void ov104_0223CC74(FrontierGraphics *param0, int sceneID, const TrainerInfo *playerInfo);
static void ov104_0223CEEC(FrontierGraphics *param0);
static void LoadMessageBoxAndWindowGraphics(FrontierGraphics *graphics);
static void InitSpriteSystem(FrontierGraphics *graphics);
static void FreeSpriteSystem(FrontierGraphics *graphics);
FrontierGraphics *FrontierGraphics_New(UnkStruct_0209B75C *param0);
void FrontierGraphics_Free(FrontierGraphics *param0);
static void ov104_0223C8E8(FrontierGraphics *param0);
static void LoadSubScreenBackground(FrontierGraphics *graphics);
static G3DPipelineBuffers *InitG3DPipeline(enum HeapID heapID);
static void G3DPipelineCallback(void);
static void FreeG3DPipeline(G3DPipelineBuffers *g3dPipeline);
static void ov104_0223D3B0(FrontierGraphics *param0);
static void ov104_0223D498(FrontierGraphics *param0);
static void ov104_0223D570(UnkStruct_ov104_0223C634 *param0, UnkStruct_ov104_0223D570 *param1);
static void ov104_0223D584(UnkStruct_0209B75C *param0, int param1, UnkStruct_ov63_0222BEC0 *param2, UnkStruct_ov63_0222CE44 *param3, const UnkStruct_ov104_0223D570 *param4);
static void ov104_0223C798(FrontierGraphics *param0);
static void ov104_0223C7EC(FrontierGraphics *param0);

static const RenderOamTemplate sOamTemplate = {
    .mainOamStart = 0,
    .mainOamCount = 128,
    .mainAffineOamStart = 0,
    .mainAffineOamCount = 32,
    .subOamStart = 0,
    .subOamCount = 128,
    .subAffineOamStart = 0,
    .subAffineOamCount = 32
};

static const CharTransferTemplateWithModes sTransferTemplate = {
    .maxTasks = 0x60,
    .sizeMain = 0x10000,
    .sizeSub = 0x4000,
    .modeMain = GX_OBJVRAMMODE_CHAR_1D_128K,
    .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K
};

static const SpriteResourceCapacities sCapacities = {
    .asStruct = {
        .charCapacity = 96,
        .plttCapacity = 32,
        .cellCapacity = 64,
        .animCapacity = 64,
        .mcellCapacity = 8,
        .manimCapacity = 8,
    }
};

static const UnkUnion_ov63_0222BDAC Unk_ov104_022413D8[256] = { 0 };

FrontierGraphics *FrontierGraphics_New(UnkStruct_0209B75C *param0)
{
    FrontierGraphics *graphics;
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(param0);
    const TrainerInfo *playerInfo = SaveData_GetTrainerInfo(v3->saveData);
    int sceneID = v3->sceneID;

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_94, 0x90000);

    graphics = Heap_Alloc(HEAP_ID_94, sizeof(FrontierGraphics));
    MI_CpuClear8(graphics, sizeof(FrontierGraphics));

    graphics->unk_08 = param0;
    graphics->sceneID = sceneID;

    for (int i = 0; i < 8; i++) {
        graphics->unk_3C.unk_34[i] = 0xffff;
    }

    graphics->g3dPipeline = InitG3DPipeline(HEAP_ID_94);
    graphics->plttData = PaletteData_New(HEAP_ID_94);

    PaletteData_SetAutoTransparent(graphics->plttData, TRUE);
    PaletteData_AllocBuffer(graphics->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_94);
    PaletteData_AllocBuffer(graphics->plttData, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 16, HEAP_ID_94);
    PaletteData_AllocBuffer(graphics->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * 16 - 64, HEAP_ID_94);
    PaletteData_AllocBuffer(graphics->plttData, PLTTBUF_SUB_OBJ, PALETTE_SIZE_BYTES * 16, HEAP_ID_94);

    graphics->bgConfig = BgConfig_New(HEAP_ID_94);

    VramTransfer_New(64, HEAP_ID_94);
    SetAutorepeat(4, 8);

    InitBackgrounds(graphics->bgConfig, sceneID);
    LoadMessageBoxAndWindowGraphics(graphics);
    LoadSubScreenBackground(graphics);

    EnableTouchPad();
    InitializeTouchPad(4);

    InitSpriteSystem(graphics);

    graphics->particleSys = FrontierParticleSystem_New(HEAP_ID_94);

    ov104_0223CC74(graphics, sceneID, playerInfo);

    graphics->unk_94 = SysTask_Start(ov104_0223C720, graphics, 60000);
    graphics->unk_98 = SysTask_Start(ov104_0223C72C, graphics, 61000);
    graphics->unk_9C = SysTask_Start(ov104_0223C738, graphics, 80000);

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, GetFrontierSceneValue(sceneID, FR_SCENE_BGM_ID), 1);

    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    SetVBlankCallback(VBlankCallback, graphics);
    graphics->dummyExecuteOnVBlank = SysTask_ExecuteOnVBlank(DummyExecuteOnVBlank, graphics, 10);
    ov104_0222EB8C(graphics, &graphics->unk_90, graphics->sceneID);
    NetworkIcon_Init();

    return graphics;
}

void FrontierGraphics_Free(FrontierGraphics *graphics)
{
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(graphics->unk_08);
    ov104_0222EBA4(graphics, &graphics->unk_90, graphics->sceneID);

    ov104_0223CEEC(graphics);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_MAIN_3);

    Bg_ToggleLayer(BG_LAYER_SUB_0, 0);
    Bg_FreeTilemapBuffer(graphics->bgConfig, BG_LAYER_SUB_0);

    FreeSpriteSystem(graphics);
    FrontierParticleSystem_Free(graphics->particleSys);

    VramTransfer_Free();

    PaletteData_FreeBuffer(graphics->plttData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffer(graphics->plttData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffer(graphics->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(graphics->plttData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(graphics->plttData);
    Heap_Free(graphics->bgConfig);
    SysTask_Done(graphics->unk_94);
    SysTask_Done(graphics->unk_98);
    SysTask_Done(graphics->unk_9C);
    SysTask_Done(graphics->dummyExecuteOnVBlank);

    FreeG3DPipeline(graphics->g3dPipeline);

    DisableTouchPad();
    Heap_Free(graphics);

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);

    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    Heap_Destroy(HEAP_ID_94);

    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    NetworkIcon_Destroy();

    MI_CpuFill16((void *)HW_BG_PLTT, COLOR_WHITE, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE);
    MI_CpuFill16((void *)HW_OBJ_PLTT, COLOR_WHITE, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE);
    MI_CpuFill16((void *)HW_DB_BG_PLTT, COLOR_WHITE, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE);
    MI_CpuFill16((void *)HW_DB_OBJ_PLTT, COLOR_WHITE, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE);

    G2_BlendNone();
    G2S_BlendNone();
}

void ov104_0223C634(FrontierGraphics *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C634 *v1;

        for (v0 = 0; v0 < 32; v0++) {
            v1 = sub_0209B9D4(param0->unk_08, v0);

            if (v1->unk_00 != NULL) {
                v1->unk_08.unk_0A = ov63_0222BF90(v1->unk_00, 6);
                v1->unk_08.unk_02 = ov63_0222BF90(v1->unk_00, 5);
                v1->unk_08.unk_06 = ov63_0222BF90(v1->unk_00, 0);
                v1->unk_08.unk_08 = ov63_0222BF90(v1->unk_00, 1);
                v1->unk_08.unk_0B = ov63_0222CFFC(v1->sprite);
            }
        }
    }

    ov104_0223D3B0(param0);
}

void ov104_0223C688(FrontierGraphics *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C688 *v1;

        v1 = sub_0209B9CC(param0->unk_08);

        for (v0 = 0; v0 < 24; v0++) {
            if (v1[v0].unk_00 != 0xffff) {
                ov63_0222CDE8(param0->unk_20, v1[v0].unk_00, v1[v0].unk_02, HEAP_ID_94);
            }
        }
    }

    {
        UnkStruct_ov104_0223C634 *v2;
        UnkStruct_ov104_0223D570 v3;

        for (v0 = 0; v0 < 32; v0++) {
            v2 = sub_0209B9D4(param0->unk_08, v0);

            if (v2->unk_08.unk_04 != 0xffff) {
                ov104_0223D570(v2, &v3);
                ov104_0223D180(param0, &v3, v0);
            }
        }
    }

    ov104_0223D498(param0);
}

static void VBlankCallback(void *data)
{
    FrontierGraphics *graphics = data;

    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(graphics->plttData);
    Bg_RunScheduledUpdates(graphics->bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void DummyExecuteOnVBlank(SysTask *task, void *data)
{
}

static void ov104_0223C720(SysTask *param0, void *param1)
{
    FrontierGraphics *v0 = param1;
    ov63_0222BE84(v0->unk_14);
}

static void ov104_0223C72C(SysTask *param0, void *param1)
{
    FrontierGraphics *v0 = param1;
    ov104_0223C8E8(v0);
}

static void ov104_0223C738(SysTask *param0, void *param1)
{
    FrontierGraphics *v0 = param1;

    {
        UnkStruct_ov104_0223C634 *v1;

        v1 = sub_0209B9D4(v0->unk_08, 32 - 1);

        if (v1->unk_00 != NULL) {
            ov63_0222D160(&v0->unk_1C, v1->unk_00);
        }

        ov104_0223C798(v0);
    }

    ov63_0222CEE4(v0->unk_20);

    {
        u32 v2 = v0->unk_3C.unk_30;
        int v3;

        for (v3 = 0; v3 < 8; v3++) {
            if ((v0->unk_3C.unk_00[v3] != NULL) && (v2 & 1)) {
                ManagedSprite_TickFrame(v0->unk_3C.unk_00[v3]);
            }

            v2 >>= 1;
        }
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
    SpriteSystem_UpdateTransfer();

    FrontierParticleSystem_Update();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static void ov104_0223C798(FrontierGraphics *param0)
{
    int v0;
    UnkStruct_ov104_02230BE4 *v1 = sub_0209B970(param0->unk_08);

    v0 = GetFrontierSceneValue(v1->sceneID, FR_SCENE_FLAG_1);

    switch (v0) {
    case 0:
    default:
        if (param0->unk_24 != NULL) {
            ov63_0222D228(param0->unk_24, &param0->unk_1C);
        }

        if ((param0->unk_28 != NULL) && (GetFrontierSceneValue(v1->sceneID, FR_SCENE_FLAG_2) == 1)) {
            ov63_0222D228(param0->unk_28, &param0->unk_1C);
        }
        break;
    case 1:
        ov104_0223C7EC(param0);
        break;
    }
}

static void ov104_0223C7EC(FrontierGraphics *param0)
{
    s16 v0;
    s16 v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->unk_08);

    v1 = ov63_0222D1B0(&param0->unk_1C) + param0->unk_A4.unk_06;
    v0 = ov63_0222D1B8(&param0->unk_1C) + param0->unk_A4.unk_04;

    SetMainScreenViewRect(SpriteSystem_GetRenderer(param0->spriteSystem), FX32_CONST(v0), FX32_CONST(v1));
    Bg_ScheduleScroll(param0->bgConfig, 3, 0, v0);
    Bg_ScheduleScroll(param0->bgConfig, 3, 3, v1);

    if ((GetFrontierSceneValue(v2->sceneID, FR_SCENE_SUB_TILEMAP_IDX) != 0xffff) && (GetFrontierSceneValue(v2->sceneID, FR_SCENE_FLAG_2) == 1)) {
        Bg_ScheduleScroll(param0->bgConfig, 2, 0, v0);
        Bg_ScheduleScroll(param0->bgConfig, 2, 3, v1);
    }
}

static void ov104_0223C8E8(FrontierGraphics *param0)
{
    UnkStruct_ov63_0222D894 v0;
    UnkStruct_ov63_0222CCB8 v1;
    BOOL v2;

    while (ov63_0222D810(param0->unk_30, &v1) == 1) {
        ov63_0222BE70(param0->unk_14, &v1);
    }

    while (ov63_0222D8D0(param0->unk_2C, &v0) == 1) {
        v2 = ov63_0222CA88(param0->unk_18, param0->unk_14, &v0, &v1);

        if (v2 == 1) {
            ov63_0222BE70(param0->unk_14, &v1);
        }
    }
}

static void InitBackgrounds(BgConfig *bgConfig, int sceneID)
{
    GXBGMode bgMode = GetFrontierSceneValue(sceneID, FR_SCENE_BGMODE);
    GXLayers_DisableEngineALayers();

    GXBanks banks = {
        GX_VRAM_BG_256_BC,
        GX_VRAM_BGEXTPLTT_23_G,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_F
    };

    GXLayers_SetBanks(&banks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_5,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    graphicsModes.mainBgMode = bgMode;
    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x20000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x2000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_512x512,
            .colorMode = GX_BG_COLORMODE_256,
            .screenBase = GX_BG_SCRBASE_0x2800,
            .charBase = GX_BG_CHARBASE_0x30000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    if (bgMode == GX_BGMODE_0) {
        bgTemplates[1].colorMode = GX_BG_COLORMODE_16;
        bgTemplates[2].colorMode = GX_BG_COLORMODE_16;
        bgTemplates[1].bgExtPltt = GX_BG_EXTPLTT_01;
        bgTemplates[2].bgExtPltt = GX_BG_EXTPLTT_01;
    }

    u16 screenSize = GetFrontierSceneValue(sceneID, FR_SCENE_SCREEN_SIZE);
    bgTemplates[2].screenSize = screenSize;

    if (GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILEMAP_IDX) != 0xffff) {
        bgTemplates[1].screenSize = screenSize;
    }

    if (bgMode == GX_BGMODE_0) {
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);
    } else {
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_1, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC_WITH_AFFINE);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC_WITH_AFFINE);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_X, 0);
        Bg_SetOffset(bgConfig, BG_LAYER_MAIN_3, BG_OFFSET_UPDATE_SET_Y, 0);
    }

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    BgTemplate subBgTemplate[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subBgTemplate[0], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, BG_LAYER_SUB_0, BG_OFFSET_UPDATE_SET_Y, 0);
}

static void LoadMessageBoxAndWindowGraphics(FrontierGraphics *graphics)
{
    PaletteData_LoadBufferFromFileStart(graphics->plttData, NARC_INDEX_GRAPHIC__PL_FONT, font_NCLR, HEAP_ID_94, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(14));
    PaletteData_LoadBufferFromFileStart(graphics->plttData, NARC_INDEX_GRAPHIC__PL_FONT, screen_indicators_NCLR, HEAP_ID_94, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(13));

    UnkStruct_ov104_02230BE4 *v0 = sub_0209B970(graphics->unk_08);

    LoadMessageBoxGraphics(graphics->bgConfig, BG_LAYER_MAIN_1, BASE_TILE_SCROLLING_MESSAGE_BOX, 11, Options_Frame(v0->options), HEAP_ID_94);
    PaletteData_LoadBufferFromHardware(graphics->plttData, PLTTBUF_MAIN_BG, 11 * SLOTS_PER_PALETTE, PALETTE_SIZE_BYTES);

    LoadStandardWindowGraphics(graphics->bgConfig, BG_LAYER_MAIN_1, BASE_TILE_STANDARD_WINDOW_FRAME, 12, STANDARD_WINDOW_SYSTEM, HEAP_ID_94);
    PaletteData_LoadBufferFromHardware(graphics->plttData, PLTTBUF_MAIN_BG, 12 * SLOTS_PER_PALETTE, PALETTE_SIZE_BYTES);
}

static void LoadSubScreenBackground(FrontierGraphics *graphics)
{
    NARC *narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_94);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, graphics->bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_94);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, graphics->bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_94);
    PaletteData_LoadBufferFromFileStart(graphics->plttData, NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, HEAP_ID_94, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 0);
    NARC_dtor(narc);
}

static void ov104_0223CC74(FrontierGraphics *param0, int sceneID, const TrainerInfo *playerInfo)
{
    param0->unk_14 = ov63_0222BE18(32, HEAP_ID_94);
    param0->unk_18 = ov63_0222BCE8(256 / 16, 256 / 16, HEAP_ID_94);

    ov63_0222D19C(&param0->unk_1C);

    param0->unk_20 = ov63_0222CD2C(SpriteManager_GetSpriteList(param0->spriteMan), param0->plttData, 32, BattleFrontier_GetPlayerObjEventGfx(playerInfo), 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_94);

    {
        UnkStruct_ov65_0223582C v0 = {
            0,
            3,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x2800,
            GX_BG_CHARBASE_0x30000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0,
            1
        };
        int v1;

        v0.narcID = GetFrontierSceneValue(sceneID, FR_SCENE_NARC_ID);
        v0.unk_09 = GetFrontierSceneValue(sceneID, FR_SCENE_TILEMAP_IDX);
        v1 = GetFrontierSceneValue(sceneID, FR_SCENE_FLAG_1);

        if (v1 == 0) {
            param0->unk_24 = ov63_0222D1C0(SpriteSystem_GetRenderer(param0->spriteSystem), param0->bgConfig, &v0, HEAP_ID_94);
        }

        if (GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILEMAP_IDX) != 0xffff) {
            v0.unk_09 = GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILEMAP_IDX);
            v0.unk_01 = 2;
            v0.unk_03 = (GX_BG_SCRBASE_0x0800);
            v0.unk_04 = (GX_BG_CHARBASE_0x20000);
            v0.unk_06 = 1;

            if (v1 == 0) {
                param0->unk_28 = ov63_0222D1C0(SpriteSystem_GetRenderer(param0->spriteSystem), param0->bgConfig, &v0, HEAP_ID_94);
            }
        }
    }

    param0->unk_2C = ov63_0222D848(128, HEAP_ID_94);
    param0->unk_30 = ov63_0222D77C(128, HEAP_ID_94);

    ov63_0222BD50(param0->unk_18, Unk_ov104_022413D8);

    {
        GXBGMode bgMode = GetFrontierSceneValue(sceneID, FR_SCENE_BGMODE);

        u32 narcID = GetFrontierSceneValue(sceneID, FR_SCENE_NARC_ID);
        NARC *narc = NARC_ctor(narcID, HEAP_ID_94);

        Graphics_LoadTilesToBgLayerFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_TILES_IDX), param0->bgConfig, 3, 0, 0, 1, HEAP_ID_94);

        if (bgMode == GX_BGMODE_0) {
            PaletteData_LoadBufferFromFileStart(param0->plttData, narcID, GetFrontierSceneValue(sceneID, FR_SCENE_PLTT_IDX), 94, 0, (10 - 0 + 1) * 0x20, 0 * 16);
        } else {
            NNSG2dPaletteData *plttData;

            void *pltt = Graphics_GetPlttDataFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_PLTT_IDX), &plttData, HEAP_ID_94);
            DC_FlushRange(plttData->pRawData, plttData->szByte);

            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(plttData->pRawData, 0x6000, 0x2000);
            GX_EndLoadBGExtPltt();

            Heap_Free(pltt);
        }

        PaletteData_FillBufferRange(param0->plttData, 0, 2, 0x0, 0, 1);
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_TILEMAP_IDX), param0->bgConfig, 3, 0, 0, 1, HEAP_ID_94);

        if (GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILEMAP_IDX) != 0xffff) {
            Graphics_LoadTilesToBgLayerFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILES_IDX), param0->bgConfig, 2, 0, 0, 1, HEAP_ID_94);
            Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_SUB_TILEMAP_IDX), param0->bgConfig, 2, 0, 0, 1, HEAP_ID_94);

            if (bgMode != GX_BGMODE_0) {
                NNSG2dPaletteData *plttData;

                void *pltt = Graphics_GetPlttDataFromOpenNARC(narc, GetFrontierSceneValue(sceneID, FR_SCENE_SUB_PLTT_IDX), &plttData, HEAP_ID_94);
                DC_FlushRange(plttData->pRawData, plttData->szByte);

                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt(plttData->pRawData, 0x4000, 0x2000);
                GX_EndLoadBGExtPltt();

                Heap_Free(pltt);
            }
        }

        Bg_ScheduleTilemapTransfer(param0->bgConfig, 3);
        NARC_dtor(narc);
    }
}

static void ov104_0223CEEC(FrontierGraphics *param0)
{
    int v0;

    {
        UnkStruct_ov104_0223C634 *v1;

        v1 = sub_0209B9D0(param0->unk_08);

        for (v0 = 0; v0 < 32; v0++) {
            if (v1[v0].unk_00 != NULL) {
                ov63_0222BF08(v1[v0].unk_00);
                GF_ASSERT(v1[v0].movementTask == NULL);
            }
        }
    }

    ov63_0222BE58(param0->unk_14);
    ov63_0222BD30(param0->unk_18);
    ov63_0222CD9C(param0->unk_20);

    if (param0->unk_24 != NULL) {
        ov63_0222D214(param0->unk_24);
    }

    if (param0->unk_28 != NULL) {
        ov63_0222D214(param0->unk_28);
    }

    ov63_0222D880(param0->unk_2C);
    ov63_0222D7B4(param0->unk_30);
}

static G3DPipelineBuffers *InitG3DPipeline(enum HeapID heapID)
{
    return G3DPipeline_Init(heapID, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_16K, G3DPipelineCallback);
}

static void G3DPipelineCallback(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(COLOR_BLACK, 0, G3X_DEPTH_MAX, 63, FALSE);
    G3_ViewPort(0, 0, 255, 191);
}

static void FreeG3DPipeline(G3DPipelineBuffers *g3dPipeline)
{
    G3DPipelineBuffers_Free(g3dPipeline);
}

static void InitSpriteSystem(FrontierGraphics *graphics)
{
    graphics->spriteSystem = SpriteSystem_Alloc(HEAP_ID_94);

    SpriteSystem_Init(graphics->spriteSystem, &sOamTemplate, &sTransferTemplate, 32);
    ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);

    graphics->spriteMan = SpriteManager_New(graphics->spriteSystem);

    SpriteSystem_InitSprites(graphics->spriteSystem, graphics->spriteMan, 128);
    SpriteSystem_InitManagerWithCapacities(graphics->spriteSystem, graphics->spriteMan, &sCapacities);
    SetSubScreenViewRect(SpriteSystem_GetRenderer(graphics->spriteSystem), 0, FX32_CONST(512));
}

static void FreeSpriteSystem(FrontierGraphics *graphics)
{
    for (int i = 0; i < 8; i++) {
        if (graphics->unk_3C.unk_00[i] != NULL) {
            ov104_0223D858(graphics->unk_3C.unk_00[i]);
        }
    }

    for (int i = 0; i < 8; i++) {
        if (graphics->unk_3C.unk_34[i] != 0xffff) {
            ov104_0223D7EC(graphics->spriteMan, graphics->unk_3C.unk_34[i]);
        }
    }

    for (int i = 0; i < ((50000 + 3) - 50000 + 1); i++) {
        if (graphics->unk_80[i] != NULL) {
            Sprite_DeleteAndFreeResources(graphics->unk_80[i]);

            SpriteManager_UnloadCharObjById(graphics->spriteMan, 50000 + i);
            SpriteManager_UnloadPlttObjById(graphics->spriteMan, 50000 + i);
            SpriteManager_UnloadCellObjById(graphics->spriteMan, 50000 + i);
            SpriteManager_UnloadAnimObjById(graphics->spriteMan, 50000 + i);
        }
    }

    SpriteSystem_FreeResourcesAndManager(graphics->spriteSystem, graphics->spriteMan);
    SpriteSystem_Free(graphics->spriteSystem);
}

void ov104_0223D0EC(FrontierGraphics *param0, const UnkStruct_ov104_0223C688 *param1)
{
    UnkStruct_ov104_0223C688 *v0;
    int v1, v2;

    v0 = sub_0209B9CC(param0->unk_08);

    for (v1 = 0; v1 < 24; v1++) {
        if (v0[v1].unk_00 == param1->unk_00) {
            return;
        }
    }

    for (v1 = 0; v1 < 24; v1++) {
        if (v0[v1].unk_00 == 0xffff) {
            break;
        }
    }

    GF_ASSERT(v1 != 24);

    v2 = v1;
    v0[v2] = *param1;

    ov63_0222CDE8(param0->unk_20, param1->unk_00, param1->unk_02, HEAP_ID_94);
}

void ov104_0223D148(FrontierGraphics *param0, int param1)
{
    int v0;
    UnkStruct_ov104_0223C688 *v1 = sub_0209B9CC(param0->unk_08);

    for (v0 = 0; v0 < 24; v0++) {
        if (v1[v0].unk_00 == param1) {
            ov63_0222CE0C(param0->unk_20, param1);
            v1[v0].unk_00 = 0xffff;
            return;
        }
    }
}

UnkStruct_ov63_0222BEC0 *ov104_0223D180(FrontierGraphics *param0, const UnkStruct_ov104_0223D570 *param1, int param2)
{
    UnkStruct_ov104_0223C634 *v0;
    int v1, v2;
    UnkStruct_ov65_022376D0 v3;
    UnkStruct_ov63_0222BEC0 *v4;
    UnkStruct_ov63_0222CE44 *v5;

    v0 = sub_0209B9D0(param0->unk_08);

    if (param2 == -1) {
        for (v1 = 0; v1 < 32; v1++) {
            if (v0[v1].unk_00 == NULL) {
                break;
            }
        }

        GF_ASSERT(v1 != 32);
        v2 = v1;
    } else {
        v2 = param2;
    }

    v3.unk_00 = param1->unk_06;
    v3.unk_02 = param1->unk_08;
    v3.unk_04 = param1->unk_04;
    v3.unk_06 = param1->unk_02;
    v3.unk_08 = param1->unk_0A;
    v3.unk_0A = param1->unk_00;

    v4 = ov63_0222BEC0(param0->unk_14, &v3);
    v5 = ov63_0222CE44(param0->unk_20, v4, 0, HEAP_ID_94);

    ov63_0222D008(v5, param1->unk_0B);
    ov104_0223D584(param0->unk_08, v2, v4, v5, param1);

    return v4;
}

void ov104_0223D200(FrontierGraphics *param0, UnkStruct_ov63_0222BEC0 *param1)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1 = sub_0209B9D0(param0->unk_08);

    for (v0 = 0; v0 < 32; v0++) {
        if (v1[v0].unk_00 == param1) {
            ov63_0222BF08(v1[v0].unk_00);
            ov63_0222CECC(v1[v0].sprite);

            GF_ASSERT(v1[v0].movementTask == NULL);
            MI_CpuClear8(&v1[v0], sizeof(UnkStruct_ov104_0223C634));

            v1[v0].unk_08.unk_04 = 0xffff;
            return;
        }
    }
}

void ov104_0223D258(FrontierGraphics *param0, u16 param1, UnkStruct_ov63_0222BEC0 **param2, UnkStruct_ov63_0222CE44 **param3)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1 = sub_0209B9D0(param0->unk_08);

    for (v0 = 0; v0 < 32; v0++) {
        if (v1[v0].unk_08.unk_04 == param1) {
            if (param2 != NULL) {
                *param2 = v1[v0].unk_00;
            }

            if (param3 != NULL) {
                *param3 = v1[v0].sprite;
            }

            return;
        }
    }

    GF_ASSERT(0);
}

void ov104_0223D29C(FrontierGraphics *param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_3C.unk_34[v0] == 0xffff) {
            param0->unk_3C.unk_34[v0] = param1;
            return;
        }
    }

    GF_ASSERT(0);
}

void ov104_0223D2CC(FrontierGraphics *param0, u16 param1)
{
    int v0;

    for (v0 = 0; v0 < 8; v0++) {
        if (param0->unk_3C.unk_34[v0] == param1) {
            param0->unk_3C.unk_34[v0] = 0xffff;
            return;
        }
    }
}

ManagedSprite *ov104_0223D2FC(FrontierGraphics *param0, u16 param1, u16 param2)
{
    ManagedSprite *v0;

    GF_ASSERT(param1 < 8);
    GF_ASSERT(param0->unk_3C.unk_00[param1] == NULL);

    v0 = ov104_0223D828(param0->spriteSystem, param0->spriteMan, param2);

    param0->unk_3C.unk_00[param1] = v0;
    param0->unk_3C.unk_20[param1] = param2;

    ov104_0223D378(param0, param1, 0);
    return v0;
}

void ov104_0223D348(FrontierGraphics *param0, u16 param1)
{
    GF_ASSERT(param1 < 8);
    GF_ASSERT(param0->unk_3C.unk_00[param1] != NULL);

    ov104_0223D858(param0->unk_3C.unk_00[param1]);
    param0->unk_3C.unk_00[param1] = NULL;
}

ManagedSprite *ov104_0223D370(FrontierGraphics *param0, u16 param1)
{
    return param0->unk_3C.unk_00[param1];
}

void ov104_0223D378(FrontierGraphics *param0, u16 param1, int param2)
{
    if (param2 == 1) {
        param0->unk_3C.unk_30 |= 1 << param1;
    } else {
        param0->unk_3C.unk_30 &= 0xffffffff ^ (1 << param1);
    }
}

u32 ov104_0223D3A4(FrontierGraphics *param0, u16 param1)
{
    return (param0->unk_3C.unk_30 >> param1) & 1;
}

static void ov104_0223D3B0(FrontierGraphics *param0)
{
    int v0;
    UnkStruct_ov104_0223D3B0 *v1 = sub_0209B9E0(param0->unk_08);
    UnkStruct_ov104_0223D3B0_1 *v2 = &param0->unk_3C;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_34[v0] != 0xffff) {
            v1->unk_00[v0] = v2->unk_34[v0];
            v0++;
        }
    }

    v0 = 0;

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_00[v0] != NULL) {
            v1->unk_10[v0].unk_05 = ManagedSprite_GetActiveAnim(v2->unk_00[v0]);
            v1->unk_10[v0].unk_06_0 = ManagedSprite_GetAnimationFrame(v2->unk_00[v0]);
            v1->unk_10[v0].unk_06_13 = ov104_0223D3A4(param0, v0);
            v1->unk_10[v0].unk_06_14 = ManagedSprite_GetDrawFlag(v2->unk_00[v0]);
            v1->unk_10[v0].unk_04 = v2->unk_20[v0];
            ManagedSprite_GetPositionXY(v2->unk_00[v0], &v1->unk_10[v0].unk_00, &v1->unk_10[v0].unk_02);
            v1->unk_10[v0].unk_06_15 = 1;
        }
    }
}

static void ov104_0223D498(FrontierGraphics *param0)
{
    int v0;
    NARC *v1;
    UnkStruct_ov104_0223D3B0 *v2;
    ManagedSprite *v3;

    v2 = sub_0209B9E0(param0->unk_08);
    v1 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_OBJ, HEAP_ID_94);

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_00[v0] != 0xffff) {
            ov104_0223D768(param0->spriteSystem, param0->spriteMan, v1, param0->plttData, v2->unk_00[v0]);
            ov104_0223D29C(param0, v2->unk_00[v0]);
        }
    }

    for (v0 = 0; v0 < 8; v0++) {
        if (v2->unk_10[v0].unk_06_15 == 1) {
            v3 = ov104_0223D2FC(param0, v0, v2->unk_10[v0].unk_04);
            ManagedSprite_SetPositionXY(v3, v2->unk_10[v0].unk_00, v2->unk_10[v0].unk_02);
            ManagedSprite_SetDrawFlag(v3, v2->unk_10[v0].unk_06_14);

            ov104_0223D378(param0, v0, v2->unk_10[v0].unk_06_13);

            ManagedSprite_SetAnim(v3, v2->unk_10[v0].unk_05);
            ManagedSprite_SetAnimationFrame(v3, v2->unk_10[v0].unk_06_0);
        }
    }

    NARC_dtor(v1);
    sub_0209B9EC(param0->unk_08);
}

void ov104_0223D554(FrontierGraphics *param0, s16 *param1, s16 *param2)
{
    *param2 = ov63_0222D1B0(&param0->unk_1C);
    *param1 = ov63_0222D1B8(&param0->unk_1C);
}

static void ov104_0223D570(UnkStruct_ov104_0223C634 *param0, UnkStruct_ov104_0223D570 *param1)
{
    *param1 = param0->unk_08;
}

static void ov104_0223D584(UnkStruct_0209B75C *param0, int param1, UnkStruct_ov63_0222BEC0 *param2, UnkStruct_ov63_0222CE44 *param3, const UnkStruct_ov104_0223D570 *param4)
{
    UnkStruct_ov104_0223C634 *v0 = sub_0209B9D4(param0, param1);

    v0->unk_00 = param2;
    v0->sprite = param3;
    v0->unk_08 = *param4;
}

UnkStruct_ov104_0223C634 *ov104_0223D5A8(UnkStruct_0209B75C *param0, int param1)
{
    int v0;
    UnkStruct_ov104_0223C634 *v1 = sub_0209B9D0(param0);

    for (v0 = 0; v0 < 32; v0++) {
        if ((v1->unk_00 != NULL) && (v1->unk_08.unk_04 == param1)) {
            return v1;
        }

        v1++;
    }

    GF_ASSERT(0);
    return NULL;
}
