#include "cutscenes/egg_hatch/graphics.h"

#include <nitro.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "struct_defs/sprite_animation_frame.h"

#include "bg_window.h"
#include "camera.h"
#include "font.h"
#include "g3d_pipeline.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "palette.h"
#include "particle_system.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_0202419C.h"
#include "vram_transfer.h"

#include "res/fonts/pl_font.naix"
#include "res/graphics/egg_hatch/egg_graphics.naix"
#include "res/graphics/poketch/poketch.naix"
#include "res/text/bank/egg_hatch.h"

#define ID_EGG_CHAR 20000
#define ID_EGG_PLTT 20001
#define ID_EGG_CELL 20002
#define ID_EGG_ANIM 20003
#define ID_BAR_CHAR 25000
#define ID_BAR_PLTT 25001
#define ID_BAR_CELL 25002
#define ID_BAR_ANIM 25003

static void G3DPipelineCallback(void);
static u32 AllocTexVram(u32 size, BOOL is4x4comp);
static u32 AllocPaletteVram(u32 size, BOOL is4pltt);
static ParticleSystem *NewParticleSystem(enum HeapID heapID);
static ParticleSystem *CreateParticleSystem(enum HeapID heapID, int narcID, int narcMemberIdx);
static void SetSPLEmitterPos(SPLEmitter *emitter);

void EggHatch_InitGraphicsPlane(void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

void EggHatch_SetBlendAlphas(void)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 11, 7);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 7, 8);
}

G3DPipelineBuffers *EggHatch_InitG3DPipeline(void)
{
    return G3DPipeline_Init(HEAP_ID_EGG_HATCH, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, G3DPipelineCallback);
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
    G3_ViewPort(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);
}

void EggHatch_ZeroParticleSystem(void)
{
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(0x8000, FALSE, 0);
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(0x80, FALSE, 0);

    GF_ASSERT(texKey != NNS_GFD_ALLOC_ERROR_TEXKEY);
    GF_ASSERT(plttKey != NNS_GFD_ALLOC_ERROR_PLTTKEY);

    NNS_GfdGetTexKeyAddr(texKey);
    NNS_GfdGetPlttKeyAddr(plttKey);

    ParticleSystem_ZeroAll();
}

void EggHatch_InitBackgrounds(BgConfig *bgConfig)
{
    GXLayers_DisableEngineALayers();

    GXBanks gxBanks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_BC,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&gxBanks);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);

    GraphicsModes grapicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&grapicsModes);

    BgTemplate bgTemplates[] = {
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x04000,
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
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        },
        {
            .x = 0,
            .y = 0,
            .bufferSize = 0x1000,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x3000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        },
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplates[0], BG_TYPE_STATIC);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplates[1], BG_TYPE_STATIC);
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplates[2], BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    G2_SetBG0Priority(1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);

    GXLayers_TurnBothDispOn();
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x6800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
}

void EggHatch_VBlankCallback(void *arg)
{
    EggHatchCutscene *eggHatch = arg;

    PokemonSpriteManager_UpdateCharAndPltt(eggHatch->graphics.monSpriteMan);
    VramTransfer_Process();
    SpriteSystem_TransferOam();
    PaletteData_CommitFadedBuffers(eggHatch->graphics.plttData);
    Bg_RunScheduledUpdates(eggHatch->graphics.bgConfig);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

void EggHatchParticleSystem_Update(void)
{
    G3_ResetG3X();

    if (ParticleSystem_DrawAll() > 0) {
        G3_ResetG3X();
        NNS_G2dSetupSoftwareSpriteCamera();
    }

    ParticleSystem_UpdateAll();
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void EggHatch_FadeIn(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_EGG_HATCH);
}

void EggHatch_FadeOut(void)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_EGG_HATCH);
}

void EggHatch_LoadMessageBoxGraphics(BgConfig *bgConfig, PaletteData *plttData, int frame)
{
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_1, BASE_TILE_OFFSET, PLTT_15, frame, HEAP_ID_EGG_HATCH);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(frame), HEAP_ID_EGG_HATCH, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(12));
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_1, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT, PLTT_13, STANDARD_WINDOW_SYSTEM, HEAP_ID_EGG_HATCH);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetStandardWindowPaletteNARCMember(), HEAP_ID_EGG_HATCH, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(13));
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_GRAPHIC__PL_FONT, screen_indicators_NCLR, HEAP_ID_EGG_HATCH, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES, PLTT_DEST(14));
}

void EggHatch_CreateMessageWindow(BgConfig *bgConfig, Window *window, enum BgLayer bgLayer, int tilemapTop, int tilemapLeft, int width, int height, int baseTile, int palette)
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapTop, tilemapLeft, width, height, palette, baseTile);
    Window_DrawMessageBoxWithScrollCursor(window, TRUE, BASE_TILE_OFFSET, PLTT_12);
    Window_FillTilemap(window, 15);
    Window_CopyToVRAM(window);
}

int EggHatch_PrintMessage(Window *window, int entryID, Pokemon *mon, int renderDelay)
{
    Window_FillTilemap(window, 15);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_EGG_HATCH, HEAP_ID_EGG_HATCH);
    StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_EGG_HATCH);
    String *fmtStr = MessageLoader_GetNewString(loader, entryID);
    String *displayStr = String_Init(255, HEAP_ID_EGG_HATCH);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    StringTemplate_SetSpeciesName(strTemplate, 0, boxMon);
    StringTemplate_Format(strTemplate, displayStr, fmtStr);

    int printerID = Text_AddPrinterWithParams(window, FONT_MESSAGE, displayStr, 0, 0, renderDelay, NULL);

    MessageLoader_Free(loader);
    String_Free(displayStr);
    String_Free(fmtStr);
    StringTemplate_Free(strTemplate);

    return printerID;
}

void EggHatch_CreateYesNoMenu(EggHatchCutscene *eggHatch, BgConfig *bgConfig, Window *window, int bgLayer, int tilemapLeft, int tilemapTop, int width, int height, int baseTile, int palette)
{
    Window_Init(window);
    Window_Add(bgConfig, window, bgLayer, tilemapLeft, tilemapTop, width, height, palette, baseTile);

    eggHatch->graphics.strList = StringList_New(2, HEAP_ID_EGG_HATCH);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_EGG_HATCH, HEAP_ID_EGG_HATCH);

    for (int i = 0; i < 2; i++) {
        String *string = MessageLoader_GetNewString(loader, EggHatch_Text_Yes + i);
        StringList_AddFromString(eggHatch->graphics.strList, string, i);
        String_Free(string);
    }

    MessageLoader_Free(loader);

    MenuTemplate menuTemplate;
    menuTemplate.choices = eggHatch->graphics.strList;
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.window = window;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = 2;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = TRUE;

    Window_DrawStandardFrame(window, TRUE, BASE_TILE_OFFSET + SCROLLING_MESSAGE_BOX_TILE_COUNT, PLTT_13);
    eggHatch->graphics.yesNoMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_EGG_HATCH, PAD_BUTTON_B);
}

void EggHatch_FreeMenu(EggHatchCutscene *eggHatch)
{
    Window_EraseStandardFrame(&eggHatch->graphics.windows[WINDOW_MENU], TRUE);
    Window_ClearAndCopyToVRAM(&eggHatch->graphics.windows[WINDOW_MENU]);
    Window_Remove(&eggHatch->graphics.windows[WINDOW_MENU]);
    Menu_Free(eggHatch->graphics.yesNoMenu, NULL);
    StringList_Free(eggHatch->graphics.strList);
}

void EggHatch_FreeWindow(Window *window)
{
    Window_ClearAndCopyToVRAM(window);
    Window_Remove(window);
}

void EggHatch_LoadMainBackground(BgConfig *bgConfig, PaletteData *plttData)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, background_NCGR_lz, bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_EGG_HATCH);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, background_NSCR_lz, bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_EGG_HATCH);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_DEMO__EGG__DATA__EGG_DATA, background_NCLR, HEAP_ID_EGG_HATCH, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * 2, 0);
}

void EggHatch_LoadSubScreenBackground(BgConfig *bgConfig, PaletteData *plttData)
{
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, unavailable_bg_tiles_NCGR_lz, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_EGG_HATCH);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__POKETCH, unavailable_NSCR_lz, bgConfig, BG_LAYER_SUB_0, 0, 0, TRUE, HEAP_ID_EGG_HATCH);
    PaletteData_LoadBufferFromFileStart(plttData, NARC_INDEX_GRAPHIC__POKETCH, unavailable_bg_tiles_NCLR, HEAP_ID_EGG_HATCH, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 0);
}

static u32 AllocTexVram(u32 size, BOOL is4x4Comp)
{
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(size, is4x4Comp, 0);
    ParticleSystem_RegisterTextureKey(texKey);

    return NNS_GfdGetTexKeyAddr(texKey);
}

static u32 AllocPaletteVram(u32 size, BOOL is4Pltt)
{
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(size, is4Pltt, 0);
    ParticleSystem_RegisterPaletteKey(plttKey);

    return NNS_GfdGetPlttKeyAddr(plttKey);
}

static ParticleSystem *NewParticleSystem(enum HeapID heapID)
{
    void *heap = Heap_Alloc(heapID, 0x4800);
    ParticleSystem *ps = ParticleSystem_New(AllocTexVram, AllocPaletteVram, heap, 0x4800, TRUE, heapID);
    Camera *camera = ParticleSystem_GetCamera(ps);

    if (camera != NULL) {
        Camera_SetClipping(FX32_ONE, FX32_CONST(900), camera);
    }

    return ps;
}

static ParticleSystem *CreateParticleSystem(enum HeapID heapID, int narcID, int narcMemberIdx)
{
    ParticleSystem *ps = NewParticleSystem(heapID);
    void *resource = ParticleSystem_LoadResourceFromNARC(narcID, narcMemberIdx, heapID);

    ParticleSystem_SetResource(ps, resource, VRAM_AUTO_RELEASE_TEXTURE_LNK | VRAM_AUTO_RELEASE_PALETTE_LNK, TRUE);

    return ps;
}

void EggHatchParticleSystem_FreeParticleSystem(ParticleSystem *ps)
{
    void *heap = ParticleSystem_GetHeapStart(ps);
    ParticleSystem_Free(ps);
    Heap_Free(heap);
}

static void SetSPLEmitterPos(SPLEmitter *emitter)
{
    VecFx32 pos = { 0, 0, 0 };
    SPLEmitter_SetPos(emitter, &pos);
}

EggHatchParticleSystem *EggHatchParticleSystem_New(EggHatchParticleSystemArgs *args)
{
    EggHatchParticleSystem *eps = Heap_Alloc(args->heapID, sizeof(EggHatchParticleSystem));

    GF_ASSERT(eps != NULL);

    eps->args = *args;
    eps->ps = CreateParticleSystem(eps->args.heapID, NARC_INDEX_DEMO__EGG__DATA__PARTICLE__EGG_DEMO_PARTICLE, eps->args.narcIdx);

    ParticleSystem_SetCameraProjection(eps->ps, CAMERA_PROJECTION_ORTHOGRAPHIC);

    return eps;
}

void EggHatchParticleSystem_CreateEmitter(EggHatchParticleSystem *eps, int resourceID)
{
    ParticleSystem_CreateEmitterWithCallback(eps->ps, resourceID, SetSPLEmitterPos, eps);
    ParticleSystem_SetCameraProjection(eps->ps, CAMERA_PROJECTION_ORTHOGRAPHIC);
}

BOOL EggHatchParticleSystem_EmittersActive(EggHatchParticleSystem *eps)
{
    return !!ParticleSystem_GetActiveEmitterCount(eps->ps);
}

void EggHatchParticleSystem_Free(EggHatchParticleSystem *eps)
{
    Heap_Free(eps);
}

void EggHatch_LoadSpriteResources(EggHatchCutscene *eggHatch)
{
    int narcIdx[][4] = {
        { egg_NCGR_lz, egg_NCLR, egg_cell_NCER_lz, egg_anim_NANR_lz },
        { egg_NCGR_lz, egg_NCLR, egg_cell_NCER_lz, egg_anim_NANR_lz }
    };
    int narcID = NARC_INDEX_DEMO__EGG__DATA__EGG_DATA;
    int vRamType = NNS_G2D_VRAM_TYPE_2DMAIN;

    SpriteSystem *spriteSys = eggHatch->graphics.spriteSys;
    SpriteManager *spriteMan = eggHatch->graphics.spriteMan;
    PaletteData *plttData = eggHatch->graphics.plttData;

    SpriteSystem_LoadCharResObj(spriteSys, spriteMan, narcID, narcIdx[0][0], TRUE, vRamType, ID_EGG_CHAR);
    SpriteSystem_LoadPaletteBuffer(plttData, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narcID, narcIdx[0][1], FALSE, 1, vRamType, ID_EGG_PLTT);
    SpriteSystem_LoadCellResObj(spriteSys, spriteMan, narcID, narcIdx[0][2], TRUE, ID_EGG_CELL);
    SpriteSystem_LoadAnimResObj(spriteSys, spriteMan, narcID, narcIdx[0][3], TRUE, ID_EGG_ANIM);

    SpriteSystem_LoadCharResObj(spriteSys, spriteMan, narcID, black_bar_NCGR_lz, TRUE, vRamType, ID_BAR_CHAR);
    SpriteSystem_LoadPaletteBuffer(plttData, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narcID, 10, FALSE, 1, vRamType, ID_BAR_PLTT);
    SpriteSystem_LoadCellResObj(spriteSys, spriteMan, narcID, black_bar_cell_NCER_lz, TRUE, ID_BAR_CELL);
    SpriteSystem_LoadAnimResObj(spriteSys, spriteMan, narcID, black_bar_anim_NANR_lz, TRUE, ID_BAR_ANIM);
}

void EggHatch_CreateSprites(EggHatchCutscene *eggHatch)
{
    SpriteTemplate spriteTemplate;

    spriteTemplate.x = 128;
    spriteTemplate.y = 120;
    spriteTemplate.z = 0;
    spriteTemplate.animIdx = 0;
    spriteTemplate.priority = 0;
    spriteTemplate.plttIdx = 0;
    spriteTemplate.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.bgPriority = 2;
    spriteTemplate.vramTransfer = FALSE;

    spriteTemplate.resources[SPRITE_RESOURCE_CHAR] = ID_EGG_CHAR;
    spriteTemplate.resources[SPRITE_RESOURCE_PLTT] = ID_EGG_PLTT;
    spriteTemplate.resources[SPRITE_RESOURCE_CELL] = ID_EGG_CELL;
    spriteTemplate.resources[SPRITE_RESOURCE_ANIM] = ID_EGG_ANIM;
    spriteTemplate.resources[SPRITE_RESOURCE_MULTI_CELL] = SPRITE_RESOURCE_NONE;
    spriteTemplate.resources[SPRITE_RESOURCE_MULTI_ANIM] = SPRITE_RESOURCE_NONE;

    eggHatch->eggSprite = SpriteSystem_NewSprite(eggHatch->graphics.spriteSys, eggHatch->graphics.spriteMan, &spriteTemplate);

    ManagedSprite_TickFrame(eggHatch->eggSprite);
    ManagedSprite_SetAffineOverwriteMode(eggHatch->eggSprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    spriteTemplate.x = 0;
    spriteTemplate.y = -16;
    spriteTemplate.bgPriority = 0;
    spriteTemplate.resources[SPRITE_RESOURCE_CHAR] = ID_BAR_CHAR;
    spriteTemplate.resources[SPRITE_RESOURCE_PLTT] = ID_BAR_PLTT;
    spriteTemplate.resources[SPRITE_RESOURCE_CELL] = ID_BAR_CELL;
    spriteTemplate.resources[SPRITE_RESOURCE_ANIM] = ID_BAR_ANIM;

    eggHatch->topBarSprite = SpriteSystem_NewSprite(eggHatch->graphics.spriteSys, eggHatch->graphics.spriteMan, &spriteTemplate);
    ManagedSprite_TickFrame(eggHatch->topBarSprite);

    spriteTemplate.y = HW_LCD_HEIGHT - 48;

    eggHatch->bottomBarSprite = SpriteSystem_NewSprite(eggHatch->graphics.spriteSys, eggHatch->graphics.spriteMan, &spriteTemplate);
    ManagedSprite_TickFrame(eggHatch->bottomBarSprite);
}

static const s16 sXOffsets[][10] = {
    [EGG_MINOR_SHAKE] = { -1, 1, 1, -1, -1, 1, 1, -1, 0xFF, 0xFF },
    [EGG_BIG_SHAKE] = { -2, 2, 2, -2, -2, 2, 2, -2, 0xFF, 0xFF },
    [EGG_BIGGER_SHAKE] = { -3, 3, 3, -3, -3, 3, 0xFF, 0xFF },
    [EGG_EXPLOSIVE_SHAKE] = { -3, 3, 3, -3, -3, 3, 0xFF, 0xFF }
};
static const s16 sYOffsets[][10] = {
    [EGG_MINOR_SHAKE] = { 0, 0xFF },
    [EGG_BIG_SHAKE] = { 0, 0, 1, 1, 0, -1, -1, 0, 0, 0xFF },
    [EGG_BIGGER_SHAKE] = { 0, 0, 1, 1, 1, -1, -1, -1, 0, 0 },
    [EGG_EXPLOSIVE_SHAKE] = { 0, 0, 1, 1, 1, -1, -1, -1, 0, 0 }
};
static const f32 sXScales[][10] = {
    [EGG_MINOR_SHAKE] = { 1.0f, 0 },
    [EGG_BIG_SHAKE] = { 1.0f, 1.0f, 1.1f, 1.1f, 1.1f, 1.1f, 1.1f, 1.0f, 1.0f, 0 },
    [EGG_BIGGER_SHAKE] = { 1.0f, 1.1f, 1.1f, 1.2f, 1.2f, 1.2f, 1.1f, 1.1f, 1.0f, 0 },
    [EGG_EXPLOSIVE_SHAKE] = { 1.0f, 1.1f, 1.1f, 1.2f, 1.2f, 1.2f, 1.1f, 1.1f, 1.0f, 0 }
};
static const f32 sYScales[][10] = {
    [EGG_MINOR_SHAKE] = { 1.0f, 0 },
    [EGG_BIG_SHAKE] = { 1.0f, 1.0f, 0.9f, 0.9f, 0.9f, 0.9f, 0.9f, 1.0f, 1.0f, 0 },
    [EGG_BIGGER_SHAKE] = { 1.0f, 1.0f, 0.9f, 0.8f, 0.7f, 0.7f, 0.8f, 0.9f, 1.0f, 1.0f },
    [EGG_EXPLOSIVE_SHAKE] = { 1.0f, 1.0f, 0.9f, 0.8f, 0.7f, 0.7f, 0.8f, 0.9f, 1.0f, 1.0f }
};

static BOOL IncrementShakeAnimation(EggHatchCutscene *eggHatch, enum EggHatchShakeAnimID idx)
{
    EggHatchShakeAnimation *anim = &eggHatch->shake;

    switch (anim->isAnimFinished) {
    case FALSE:
        if (anim->shakeProgress >= 10) {
            anim->isAnimFinished++;
            anim->shakeProgress = 0;
        } else {
            int finishedPieces = 0;

            s16 x = sXOffsets[idx][anim->shakeProgress];
            s16 y = sYOffsets[idx][anim->shakeProgress];
            f32 xScale = sXScales[idx][anim->shakeProgress];
            f32 yScale = sYScales[idx][anim->shakeProgress];

            if (x == 0xFF) {
                x = 0;
                finishedPieces++;
            }

            if (y == 0xFF) {
                y = 0;
                finishedPieces++;
            }

            ManagedSprite_OffsetPositionXY(eggHatch->eggSprite, x, y);

            if (xScale != 0.0f) {
                ManagedSprite_SetAffineScale(eggHatch->eggSprite, xScale, yScale);
            } else {
                finishedPieces++;
            }

            if (finishedPieces != 3) {
                anim->shakeProgress++;
                break;
            } else {
                anim->isAnimFinished++;
            }
        }
    default:
        anim->isAnimFinished = FALSE;
        anim->shakeProgress = 0;
        return FALSE;
    }

    return TRUE;
}

int EggHatch_ShakeEgg(EggHatchCutscene *eggHatch, enum EggHatchShakeAnimID idx)
{
    if (IncrementShakeAnimation(eggHatch, idx) == FALSE) {
        return EGG_SHAKE_FINISHED;
    }

    if (idx == 4) {
        if (eggHatch->shake.shakeProgress == 6) {
            return EGG_SHAKE_HALF_OVER;
        }
    } else {
        if (eggHatch->shake.shakeProgress == 6) {
            return EGG_SHAKE_HALF_OVER;
        }
    }

    return EGG_SHAKE_STARTED;
}

void EggHatch_DeleteSprites(EggHatchCutscene *eggHatch)
{
    Sprite_DeleteAndFreeResources(eggHatch->eggSprite);
    Sprite_DeleteAndFreeResources(eggHatch->topBarSprite);
    Sprite_DeleteAndFreeResources(eggHatch->bottomBarSprite);
}

void EggHatch_InitSpriteSystem(EggHatchGraphics *graphics)
{
    graphics->spriteSys = SpriteSystem_Alloc(HEAP_ID_EGG_HATCH);
    const RenderOamTemplate renderOamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };
    const CharTransferTemplateWithModes charTransferTemplate = {
        .maxTasks = 96,
        .sizeMain = 1024 * 64,
        .sizeSub = 512 * 32,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_64K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(graphics->spriteSys, &renderOamTemplate, &charTransferTemplate, 32);

    const SpriteResourceCapacities capacities = {
        .asStruct = {
            .charCapacity = 96,
            .plttCapacity = 32,
            .cellCapacity = 64,
            .animCapacity = 64,
            .mcellCapacity = 16,
            .manimCapacity = 16,
        }
    };

    graphics->spriteMan = SpriteManager_New(graphics->spriteSys);

    BOOL success = SpriteSystem_InitSprites(graphics->spriteSys, graphics->spriteMan, 255);
    GF_ASSERT(success);

    success = SpriteSystem_InitManagerWithCapacities(graphics->spriteSys, graphics->spriteMan, &capacities);
    GF_ASSERT(success);
}

void EggHatch_FreeSpriteSystem(EggHatchGraphics *eggHatch)
{
    SpriteSystem_FreeResourcesAndManager(eggHatch->spriteSys, eggHatch->spriteMan);
    SpriteSystem_Free(eggHatch->spriteSys);
}

void EggHatch_CreateMonSprite(EggHatchCutscene *eggHatch)
{
    PokemonSpriteTemplate monSpriteTemplate;
    SpriteAnimFrame animFrames[MAX_ANIMATION_FRAMES];

    Pokemon *mon = eggHatch->app->args.mon;
    enum Species species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    int yOffset = Pokemon_SpriteYOffset(mon, FACE_FRONT);

    BOOL isEgg = FALSE;
    Pokemon_SetValue(mon, MON_DATA_IS_EGG, &isEgg);

    Pokemon_BuildSpriteTemplate(&monSpriteTemplate, mon, FACE_FRONT);
    PokemonSprite_LoadAnimFrames(eggHatch->graphics.monDataNarc, &animFrames[0], species, 1);

    eggHatch->monSprite = PokemonSpriteManager_CreateSprite(eggHatch->graphics.monSpriteMan, &monSpriteTemplate, HW_LCD_WIDTH / 2, (HW_LCD_HEIGHT / 2) + yOffset, 0, 0, &animFrames[0], NULL);
}

void EggHatch_PlayMonAnim(EggHatchCutscene *eggHatch)
{
    int species = Pokemon_GetValue(eggHatch->app->args.mon, MON_DATA_SPECIES, NULL);
    int nature = Pokemon_GetNature(eggHatch->app->args.mon);

    PokemonSprite_InitAnim(eggHatch->monSprite, 1);
    PokemonSprite_LoadAnim(eggHatch->graphics.monDataNarc, eggHatch->graphics.animMan, eggHatch->monSprite, species, FACE_FRONT, FALSE, 0);
}

void EggHatch_DeleteMonSprite(EggHatchCutscene *eggHatch)
{
    PokemonSprite_Delete(eggHatch->monSprite);
}

void EggHatch_HideMonSprite(EggHatchCutscene *eggHatch, BOOL hide)
{
    PokemonSprite_SetAttribute(eggHatch->monSprite, MON_SPRITE_HIDE, hide);
}
