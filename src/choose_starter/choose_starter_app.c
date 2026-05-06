#include "choose_starter/choose_starter_app.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/narc.h"
#include "constants/species.h"

#include "struct_defs/choose_starter_data.h"

#include "bg_window.h"
#include "camera.h"
#include "char_transfer.h"
#include "easy3d.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "overlay_manager.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_oam.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "software_sprite.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_pad.h"
#include "unk_0202419C.h"
#include "vram_transfer.h"

#define NUM_STARTER_OPTIONS 3
#define STARTER_OPTION_0    SPECIES_TURTWIG
#define STARTER_OPTION_1    SPECIES_CHIMCHAR
#define STARTER_OPTION_2    SPECIES_PIPLUP

#define OAM_MAIN_START 0
#define OAM_MAIN_END   128
#define OAM_SUB_START  0
#define OAM_SUB_END    128

#define OAM_AFFINE_MAIN_START 0
#define OAM_AFFINE_MAIN_END   32
#define OAM_AFFINE_SUB_START  0
#define OAM_AFFINE_SUB_END    32

#define OAM_NUM_BYTES               32
#define OAM_VRAM_TRANSFER_MAIN_SIZE (0x14000)
#define OAM_VRAM_TRANSFER_SUB_SIZE  (0x4000)

#define TRANSPARENT_DEPTH      0x7FFF
#define TRANSPARENT_POLYGON_ID 63

// Coordinates for the camera viewport of the rendered 3D scene
#define VIEWPORT_LOWER_LEFT_X  0
#define VIEWPORT_LOWER_LEFT_Y  0
#define VIEWPORT_UPPER_RIGHT_X 255
#define VIEWPORT_UPPER_RIGHT_Y 191

#define TEXT_POS_X   4
#define TEXT_POS_Y   19
#define TEXT_COLUMNS 23
#define TEXT_ROWS    4

#define FRAME_PALETTE_INDEX      2
#define FRAME_TEXT_START         512
#define FRAME_TEXT_PALETTE_INDEX 0

#define POKEMON_SPRITE_CHAR_SIZE  0x8000
#define POKEMON_SPRITE_PLTT_SIZE  0x80
#define POKEMON_SPRITE_POS_X      128
#define POKEMON_SPRITE_POS_Y      96
#define POKEMON_SPRITE_POS_Z      1023
#define POKEMON_SPRITE_POLYGON_ID 0

#define CHOOSE_STARTER_3D_GRAPHICS_NUM 6

enum CursorPosition {
    CURSOR_POSITION_LEFT = 0,
    CURSOR_POSITION_CENTER,
    CURSOR_POSITION_RIGHT,
};

typedef struct ChooseStarter3DGraphics {
    NNSG3dRenderObj renderObj;
    void *modelRes;
    NNSG3dResMdlSet *modelSet;
    NNSG3dResMdl *model;
    NNSG3dResTex *texture;
    void *animationRes;
    void *animation;
    NNSG3dAnmObj *animationObj;
    fx32 unk_70;
    BOOL unk_74;
    VecFx32 unk_78;
    VecFx32 unk_84;
    u16 unk_90;
    u16 unk_92;
    u16 unk_94;
} ChooseStarter3DGraphics;

typedef struct ChooseStarterMovement {
    s32 unk_00;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
} ChooseStarterMovement;

typedef struct ChooseStarterCameraMovement {
    ChooseStarterMovement unk_00;
    ChooseStarterMovement unk_10;
    ChooseStarterMovement unk_20;
    Camera *camera;
    VecFx32 *unk_34;
    s32 unk_38;
    BOOL unk_3C;
    SysTask *unk_40;
} ChooseStarterCameraMovement;

typedef struct ChooseStarterRotation {
    fx32 unk_00;
    fx32 unk_04;
    int unk_08;
    int unk_0C;
} ChooseStarterRotation;

typedef struct ChooseStarterCursor {
    Sprite *sprite;
    SpriteResource *resources[6];
    VecFx32 position;
    SysTask *movementTask;
    ChooseStarterRotation unk_2C;
} ChooseStarterCursor;

typedef struct StarterPreviewAnimation {
    ChooseStarterMovement unk_00;
    ChooseStarterMovement unk_10;
    ChooseStarterMovement unk_20;
    int unk_30;
    int unk_34;
} StarterPreviewAnimation;

typedef struct StarterPreviewWindow {
    SoftwareSpriteChars *unk_00;
    SoftwareSpritePalette *unk_04;
    SoftwareSprite *unk_08;
    void *unk_0C;
    void *unk_10;
    NNSG2dCharacterData *unk_14;
    NNSG2dPaletteData *unk_18;
    StarterPreviewAnimation unk_1C;
    SysTask *unk_54;
} StarterPreviewWindow;

typedef struct StarterPreviewGraphics {
    PokemonSprite *unk_00;
    StarterPreviewAnimation unk_04;
    SysTask *unk_3C;
} StarterPreviewGraphics;

typedef struct ChooseStarterApp {
    int unk_00;
    int unk_04;
    BOOL unk_08;
    int unk_0C;
    ChooseStarterCameraMovement cameraMovement;
    enum CursorPosition cursorPosition;
    int unk_58[NUM_STARTER_OPTIONS][3];
    int unk_7C[NUM_STARTER_OPTIONS][2];
    BgConfig *bgConfig;
    Window *messageWindow;
    Window *subplaneWindows[NUM_STARTER_OPTIONS];
    int unk_A8;
    String *unk_AC;
    WindowTemplate unk_B0;
    Menu *unk_B8;
    G2dRenderer unk_BC;
    SpriteList *spriteList;
    SpriteResourceCollection *spriteResourceCollection[6];
    PokemonSpriteManager *spriteManager;
    PokemonSprite *sprites[NUM_STARTER_OPTIONS];
    StarterPreviewGraphics previewGraphics;
    NNSFndAllocator allocator;
    ChooseStarter3DGraphics starter3DGraphics[CHOOSE_STARTER_3D_GRAPHICS_NUM];
    Camera *camera;
    VecFx32 unk_64C;
    ChooseStarterCursor cursor;
    GXRgb edgeMarkings[8];
    SoftwareSpriteManager *spriteDisplay;
    StarterPreviewWindow previewWindow;
    int messageFrame;
    u32 textFrameDelay;
    u8 unk_708;
    u8 unk_709[3];
} ChooseStarterApp;

static void ChooseStarterAppMainCallback(void *data);
static void StartFadeIn(ChooseStarterApp *param0);
static void StartFadeOut(ChooseStarterApp *param0);
static BOOL IsFadeDone(ChooseStarterApp *param0);
static u16 GetSelectedSpecies(u16 cursorPosition);
static BOOL IsSelectionMade(ChooseStarterApp *param0, int param1);
static void UpdateGraphics(ChooseStarterApp *param0, enum HeapID heapID);
static void DrawScene(ChooseStarterApp *param0);
static void SetupDrawing(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteDrawing(void);
static void SetupVRAMBank(void);
static void SetupOAM(enum HeapID heapID);
static void Setup3D(ChooseStarterApp *app);
static void ov78_021D1218(void);
static void SetupBGs(BgConfig *bgConfig, enum HeapID heapID);
static void DeleteBGs(BgConfig *bgConfig);
static void MakeMessageWindow(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteMessageWindow(ChooseStarterApp *app);
static u8 ov78_021D1FB4(Window *param0, enum HeapID heapID, int param2, int param3, TextColor param4, u32 param5);
static u8 ov78_021D201C(Window *param0, enum HeapID heapID, int param2, int param3, u32 param4, u32 param5, String **param6);
static void ov78_021D2090(ChooseStarterApp *param0);
static void MakeSubplaneWindows(ChooseStarterApp *param0, enum HeapID heapID);
static void DeleteSubplaneWindows(ChooseStarterApp *app);
static void ov78_021D28A8(Window *param0, enum HeapID heapID, int param2, int param3, TextColor param4);
static void ov78_021D2904(ChooseStarterApp *param0);
static void MakeConfirmationWindow(ChooseStarterApp *param0, int param1);
static void MakePokemonSprites(ChooseStarterApp *app, enum HeapID heapID);
static void DeletePokemonSprites(ChooseStarterApp *app);
static void MakeSpriteDisplay(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteSpriteDisplay(ChooseStarterApp *app);
static void MakeCellActors(ChooseStarterApp *param0, enum HeapID heapID);
static void DeleteCellActors(ChooseStarterApp *app);
static void MakeCamera(ChooseStarterApp *param0, int param1);
static void ov78_021D1B3C(Camera *camera, VecFx32 *param1);
static void DeleteCamera(ChooseStarterApp *app);
static void Make3DGraphics(ChooseStarterApp *param0, enum HeapID heapID);
static void Delete3DGraphics(ChooseStarterApp *app);
static void ov78_021D192C(ChooseStarterApp *param0);
static void MakeCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID);
static void DeleteCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor);
static void AttachCursorCellActor(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID);
static void DeleteCursorCellActor(ChooseStarterCursor *cursor);
static void ov78_021D2430(ChooseStarterCursor *param0, BOOL param1);
static void ov78_021D243C(ChooseStarterCursor *param0, int param1, int param2);
static void MakeSelectionMatrix(ChooseStarterApp *param0);
static void SetSelectionMatrixObjects(ChooseStarterApp *param0);
static void ov78_021D1CA8(ChooseStarterApp *param0, enum HeapID heapID);
static void ov78_021D1DF0(ChooseStarterApp *param0);
static void ov78_021D1E28(ChooseStarterApp *param0);
static void ov78_021D1E44(ChooseStarterApp *param0, enum HeapID heapID);
static void MakePokemonSprite(PokemonSprite **sprite, ChooseStarterApp *app, int species);
static void Delete3DGraphic(ChooseStarter3DGraphics *starter3DGraphics, NNSFndAllocator *allocator);
static void ov78_021D1708(ChooseStarter3DGraphics *param0);
static void ov78_021D17A4(ChooseStarter3DGraphics *param0, BOOL param1);
static void ov78_021D17A8(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17B4(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3);
static void ov78_021D17CC(ChooseStarter3DGraphics *param0, u16 param1, u16 param2, u16 param3);
static BOOL ov78_021D17E4(ChooseStarter3DGraphics *param0);
static void ov78_021D180C(ChooseStarter3DGraphics *param0);
static void ov78_021D182C(ChooseStarter3DGraphics *param0, fx32 param1);
static void ov78_021D1630(ChooseStarter3DGraphics *param0, int param1, enum HeapID heapID);
static void ov78_021D1694(ChooseStarter3DGraphics *param0, int param1, enum HeapID heapID, NNSFndAllocator *param3);
static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2);
static void DeletePreviewWindow(StarterPreviewWindow *previewWindow);
static void ov78_021D2508(StarterPreviewWindow *param0, BOOL param1);
static void ov78_021D2514(StarterPreviewWindow *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7);
static void ov78_021D256C(StarterPreviewWindow *param0);
static void ov78_021D25A0(SysTask *param0, void *param1);
static BOOL ov78_021D2608(StarterPreviewWindow *param0);
static void ov78_021D2618(ChooseStarterApp *param0);
static void ov78_021D2688(ChooseStarterApp *param0);
static BOOL ov78_021D26A4(ChooseStarterApp *param0);
static void ov78_021D26B4(StarterPreviewGraphics *param0, PokemonSprite *param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8);
static void ov78_021D270C(StarterPreviewGraphics *param0);
static void ov78_021D2740(SysTask *param0, void *param1);
static void ov78_021D1C58(ChooseStarterApp *param0);
static void ov78_021D1C98(ChooseStarterApp *param0, int param1);
static int ov78_021D1CA4(ChooseStarterApp *param0);
static void ov78_021D2108(ChooseStarterMovement *param0, s32 param1, s32 param2, s32 param3);
static BOOL ov78_021D2114(ChooseStarterMovement *param0, s32 param1);
static void ov78_021D235C(ChooseStarterRotation *param0, fx32 param1, int param2);
static void ov78_021D2368(ChooseStarterRotation *param0);
static void ov78_021D213C(ChooseStarterCameraMovement *param0, Camera *camera, VecFx32 *param2);
static void ov78_021D219C(SysTask *param0, void *param1);
static BOOL ov78_021D2200(ChooseStarterCameraMovement *param0);
static void StartCursorMovement(ChooseStarterCursor *cursor);
static void ov78_021D23E8(SysTask *param0, void *param1);
static void StopCursorMovement(ChooseStarterCursor *cursor);

BOOL ChooseStarter_Init(ApplicationManager *appMan, int *param1)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_CHOOSE_STARTER_APP, HEAP_SIZE_CHOOSE_STARTER_APP);

    ChooseStarterApp *app = ApplicationManager_NewData(appMan, sizeof(ChooseStarterApp), HEAP_ID_CHOOSE_STARTER_APP);
    GF_ASSERT(app);
    memset(app, 0, sizeof(ChooseStarterApp));

    HeapExp_FndInitAllocator(&app->allocator, HEAP_ID_CHOOSE_STARTER_APP, 32);

    ChooseStarterData *data = ApplicationManager_Args(appMan);
    app->messageFrame = Options_Frame(data->options);
    app->textFrameDelay = Options_TextFrameDelay(data->options);

    VramTransfer_New(8, HEAP_ID_CHOOSE_STARTER_APP);
    SetVBlankCallback(ChooseStarterAppMainCallback, app);
    DisableHBlank();

    EnableTouchPad();
    GF_ASSERT(InitializeTouchPad(4) == 1);

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    SetupDrawing(app, HEAP_ID_CHOOSE_STARTER_APP);

    app->bgConfig = BgConfig_New(HEAP_ID_CHOOSE_STARTER_APP);

    // changing to designated initializers breaks the checksum.
    GraphicsModes bgHeader;
    bgHeader.displayMode = GX_DISPMODE_GRAPHICS;
    bgHeader.mainBgMode = GX_BGMODE_0;
    bgHeader.subBgMode = GX_BGMODE_1;
    bgHeader.bg0As2DOr3D = GX_BG0_AS_3D;
    SetAllGraphicsModes(&bgHeader);

    SetupBGs(app->bgConfig, HEAP_ID_CHOOSE_STARTER_APP);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);

    MakeMessageWindow(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeConfirmationWindow(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeSubplaneWindows(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakePokemonSprites(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeSpriteDisplay(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeCellActors(app, HEAP_ID_CHOOSE_STARTER_APP);
    Make3DGraphics(app, HEAP_ID_CHOOSE_STARTER_APP);
    MakeCamera(app, HEAP_ID_CHOOSE_STARTER_APP);

    MakeSelectionMatrix(app);
    SetSelectionMatrixObjects(app);
    MakeCursorOAM(app, &app->cursor, HEAP_ID_CHOOSE_STARTER_APP);
    AttachCursorCellActor(app, &app->cursor, HEAP_ID_CHOOSE_STARTER_APP);
    StartCursorMovement(&app->cursor);
    MakePreviewWindow(&app->previewWindow, app, HEAP_ID_CHOOSE_STARTER_APP);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_60, SEQ_NONE, 0);

    return TRUE;
}

enum ChooseStarterAppState {
    CHOOSE_STARTER_MAIN_FADE_IN = 0,
    CHOOSE_STARTER_MAIN_WAIT_FADE_IN,
    CHOOSE_STARTER_MAIN_LOOP,
    CHOOSE_STARTER_MAIN_FADE_OUT,
    CHOOSE_STARTER_MAIN_WAIT_FADE_OUT,
};

BOOL ChooseStarter_Main(ApplicationManager *appMan, int *state)
{
    ChooseStarterApp *app = ApplicationManager_Data(appMan);
    BOOL selectionMade;
    u16 palette = 0x08C3;

    switch (*state) {
    case CHOOSE_STARTER_MAIN_FADE_IN:
        StartFadeIn(app);
        GX_LoadBGPltt(&palette, 0, sizeof(u16));
        (*state)++;
        break;

    case CHOOSE_STARTER_MAIN_WAIT_FADE_IN:
        if (IsFadeDone(app)) {
            ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
            ResetVisibleHardwareWindows(DS_SCREEN_SUB);
            (*state)++;
        }
        break;

    case CHOOSE_STARTER_MAIN_LOOP:
        selectionMade = IsSelectionMade(app, HEAP_ID_CHOOSE_STARTER_APP);
        UpdateGraphics(app, HEAP_ID_CHOOSE_STARTER_APP);

        if (selectionMade == TRUE) {
            (*state)++;
        }
        break;

    case CHOOSE_STARTER_MAIN_FADE_OUT:
        StartFadeOut(app);
        (*state)++;
        break;

    case CHOOSE_STARTER_MAIN_WAIT_FADE_OUT:
        if (IsFadeDone(app)) {
            ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
            ResetVisibleHardwareWindows(DS_SCREEN_SUB);

            return TRUE;
        }
        break;
    }

    DrawScene(app);
    return FALSE;
}

BOOL ChooseStarter_Exit(ApplicationManager *appMan, int *param1)
{
    ChooseStarterApp *app = ApplicationManager_Data(appMan);
    ChooseStarterData *data = ApplicationManager_Args(appMan);
    BOOL touchPadResult;

    SetVBlankCallback(NULL, NULL);

    data->species = GetSelectedSpecies(app->cursorPosition);

    touchPadResult = DisableTouchPad();
    GF_ASSERT(touchPadResult == AUTO_SAMPLING_OPERATION_RESULT_SUCCESS);

    DeletePreviewWindow(&app->previewWindow);
    DeleteCursorCellActor(&app->cursor);
    DeleteCursorOAM(app, &app->cursor);
    StopCursorMovement(&app->cursor);

    DeleteCamera(app);
    Delete3DGraphics(app);
    DeleteCellActors(app);
    DeletePokemonSprites(app);
    DeleteSpriteDisplay(app);
    DeleteMessageWindow(app);
    DeleteSubplaneWindows(app);

    DeleteBGs(app->bgConfig);
    Heap_Free(app->bgConfig);
    DeleteDrawing();

    VramTransfer_Free();
    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_CHOOSE_STARTER_APP);

    return TRUE;
}

static void ChooseStarterAppMainCallback(void *data)
{
    ChooseStarterApp *app = data;

    RenderOam_Transfer();
    Bg_RunScheduledUpdates(app->bgConfig);
    PokemonSpriteManager_UpdateCharAndPltt(app->spriteManager);
    VramTransfer_Process();
}

static void StartFadeIn(ChooseStarterApp *param0)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_CHOOSE_STARTER_APP);
}

static void StartFadeOut(ChooseStarterApp *param0)
{
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_CHOOSE_STARTER_APP);
}

static BOOL IsFadeDone(ChooseStarterApp *param0)
{
    return IsScreenFadeDone();
}

static void SetupDrawing(ChooseStarterApp *app, enum HeapID heap)
{
    SetupVRAMBank();
    SetupOAM(heap);
    Setup3D(app);
}

static void DeleteDrawing(void)
{
    RenderOam_Free();
    CharTransfer_Free();
    PlttTransfer_Free();

    ov78_021D1218();
}

static void SetupVRAMBank(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_80_EF,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&banks);
}

static void SetupOAM(enum HeapID heapID)
{
    NNS_G2dInitOamManagerModule();

    RenderOam_Init(OAM_MAIN_START, OAM_MAIN_END, OAM_AFFINE_MAIN_START, OAM_AFFINE_MAIN_END, OAM_SUB_START, OAM_SUB_END, OAM_AFFINE_SUB_START, OAM_AFFINE_SUB_END, heapID);

    CharTransferTemplate v0 = {
        OAM_NUM_BYTES,
        OAM_VRAM_TRANSFER_MAIN_SIZE,
        OAM_VRAM_TRANSFER_SUB_SIZE,
        heapID,
    };

    CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);

    PlttTransfer_Init(32, heapID);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

static void Setup3D(ChooseStarterApp *app)
{
    NNS_G3dInit();

    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(TRUE);

    for (int i = 0; i < 8; i++) {
        app->edgeMarkings[i] = COLOR_DARK_GRAY;
    }

    G3X_SetEdgeColorTable(app->edgeMarkings);
    G3X_SetClearColor(COLOR_TRANSPARENT, 0, TRANSPARENT_DEPTH, TRANSPARENT_POLYGON_ID, FALSE);

    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(VIEWPORT_LOWER_LEFT_X, VIEWPORT_LOWER_LEFT_Y, VIEWPORT_UPPER_RIGHT_X, VIEWPORT_UPPER_RIGHT_Y);

    NNS_GfdInitFrmTexVramManager(1, TRUE);
    NNS_GfdInitFrmPlttVramManager(0x4000, TRUE);
}

static void ov78_021D1218(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

static void SetupBGs(BgConfig *bgConfig, enum HeapID heapID)
{
    G2_SetBG0Priority(1);

    {
        BgTemplate header = {
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
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &header, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, heapID);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate header = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x0c000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &header, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, heapID);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);
    }

    {
        BgTemplate header = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x14000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &header, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, heapID);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);
    }
}

static void DeleteBGs(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
}

static void MakeMessageWindow(ChooseStarterApp *app, enum HeapID heapID)
{
    app->messageWindow = Window_New(heapID, 1);
    Window_Init(app->messageWindow);

    Window_Add(app->bgConfig, app->messageWindow, BG_LAYER_MAIN_1, TEXT_POS_X, TEXT_POS_Y, TEXT_COLUMNS, TEXT_ROWS, FRAME_PALETTE_INDEX, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1);

    Window_FillTilemap(app->messageWindow, 15);
    LoadMessageBoxGraphics(app->bgConfig, BG_LAYER_MAIN_1, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX, app->messageFrame, heapID);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__EV_POKESELECT, 16, 0, FRAME_PALETTE_INDEX * 32, 32, heapID);
    Window_DrawMessageBoxWithScrollCursor(app->messageWindow, 0, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX);
}

static void DeleteMessageWindow(ChooseStarterApp *app)
{
    Window_Remove(app->messageWindow);
    Heap_Free(app->messageWindow);
}

static void MakePokemonSprites(ChooseStarterApp *app, enum HeapID heapID)
{
    app->spriteManager = PokemonSpriteManager_New(heapID);

    NNSGfdTexKey texture = NNS_GfdAllocTexVram(POKEMON_SPRITE_CHAR_SIZE, FALSE, 0);
    NNSGfdPlttKey palette = NNS_GfdAllocPlttVram(POKEMON_SPRITE_PLTT_SIZE, FALSE, NNS_GFD_ALLOC_FROM_LOW);
    PokemonSpriteManager_SetCharBaseAddrAndSize(app->spriteManager, NNS_GfdGetTexKeyAddr(texture), NNS_GfdGetTexKeySize(texture));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(app->spriteManager, NNS_GfdGetPlttKeyAddr(palette), NNS_GfdGetPlttKeySize(palette));

    MakePokemonSprite(&app->sprites[0], app, STARTER_OPTION_0);
    MakePokemonSprite(&app->sprites[1], app, STARTER_OPTION_1);
    MakePokemonSprite(&app->sprites[2], app, STARTER_OPTION_2);

    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        PokemonSprite_SetAttribute(app->sprites[i], MON_SPRITE_HIDE, TRUE);
    }
}

static void MakePokemonSprite(PokemonSprite **sprite, ChooseStarterApp *app, int species)
{
    int gender = Pokemon_GetGenderOf(species, 0);

    PokemonSpriteTemplate spriteTemplate;
    BuildPokemonSpriteTemplate(&spriteTemplate, species, gender, FACE_FRONT, FALSE, NULL, NULL);

    *sprite = PokemonSpriteManager_CreateSprite(app->spriteManager,
        &spriteTemplate,
        POKEMON_SPRITE_POS_X,
        POKEMON_SPRITE_POS_Y,
        POKEMON_SPRITE_POS_Z,
        POKEMON_SPRITE_POLYGON_ID,
        NULL,
        NULL);
}

static void DeletePokemonSprites(ChooseStarterApp *app)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        if (app->sprites[i]) {
            PokemonSprite_Delete(app->sprites[i]);
        }
    }

    PokemonSpriteManager_Free(app->spriteManager);
}

static void MakeSpriteDisplay(ChooseStarterApp *param0, enum HeapID heapID)
{
    SoftwareSpriteManagerTemplate v0 = {
        .numSprites = 1,
        .numChars = 1,
        .numPalettes = 1,
        .heapID = HEAP_ID_SYSTEM
    };

    v0.heapID = heapID;
    param0->spriteDisplay = SoftwareSpriteManager_New(&v0);
}

static void DeleteSpriteDisplay(ChooseStarterApp *app)
{
    SoftwareSpriteManager_Free(app->spriteDisplay);
}

static void MakeCellActors(ChooseStarterApp *app, enum HeapID heapID)
{
    app->spriteList = SpriteList_InitRendering(2, &app->unk_BC, heapID);
    app->spriteResourceCollection[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_New(2, 0, heapID);
    app->spriteResourceCollection[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_New(2, 1, heapID);
    app->spriteResourceCollection[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_New(2, 2, heapID);
    app->spriteResourceCollection[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_New(2, 3, heapID);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void DeleteCellActors(ChooseStarterApp *app)
{
    SpriteList_Delete(app->spriteList);
    SpriteResourceCollection_Delete(app->spriteResourceCollection[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Delete(app->spriteResourceCollection[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Delete(app->spriteResourceCollection[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Delete(app->spriteResourceCollection[SPRITE_RESOURCE_ANIM]);
}

static void ov78_021D15CC(ChooseStarter3DGraphics *param0, int param1, int param2, enum HeapID heapID, NNSFndAllocator *param4)
{
    memset(param0, 0, sizeof(ChooseStarter3DGraphics));

    ov78_021D1630(param0, param1, heapID);
    ov78_021D1694(param0, param2, heapID, param4);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1604(ChooseStarter3DGraphics *param0, int param1, enum HeapID heapID)
{
    memset(param0, 0, sizeof(ChooseStarter3DGraphics));

    ov78_021D1630(param0, param1, heapID);
    ov78_021D17B4(param0, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void ov78_021D1630(ChooseStarter3DGraphics *param0, int param1, enum HeapID heapID)
{
    param0->modelRes = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__EV_POKESELECT, param1, 0, heapID, 0);
    param0->modelSet = NNS_G3dGetMdlSet(param0->modelRes);
    param0->model = NNS_G3dGetMdlByIdx(param0->modelSet, 0);
    param0->texture = NNS_G3dGetTex(param0->modelRes);

    Easy3D_UploadTextureToVRAM(param0->texture);
    Easy3D_BindTextureToResource(param0->modelRes, param0->texture);

    NNS_G3dRenderObjInit(&param0->renderObj, param0->model);
}

static void ov78_021D1694(ChooseStarter3DGraphics *param0, int param1, enum HeapID heapID, NNSFndAllocator *param3)
{
    param0->animationRes = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__EV_POKESELECT, param1, 0, heapID, 0);
    param0->animation = NNS_G3dGetAnmByIdx(param0->animationRes, 0);
    param0->animationObj = NNS_G3dAllocAnmObj(param3, param0->animation, param0->model);

    NNS_G3dAnmObjInit(param0->animationObj, param0->animation, param0->model, param0->texture);
    NNS_G3dRenderObjAddAnmObj(&param0->renderObj, param0->animationObj);
}

static void Delete3DGraphic(ChooseStarter3DGraphics *starter3DGraphic, NNSFndAllocator *allocator)
{
    if (starter3DGraphic->modelRes) {
        Heap_Free(starter3DGraphic->modelRes);
    }

    if (starter3DGraphic->animationRes) {
        NNS_G3dFreeAnmObj(allocator, starter3DGraphic->animationObj);
        Heap_Free(starter3DGraphic->animationRes);
    }

    memset(starter3DGraphic, 0, sizeof(ChooseStarter3DGraphics));
}

static void ov78_021D1708(ChooseStarter3DGraphics *param0)
{
    MtxFx33 v0;
    MtxFx33 v1;

    MTX_Identity33(&v0);
    MTX_RotX33(&v1, FX_SinIdx(param0->unk_90), FX_CosIdx(param0->unk_90));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotY33(&v1, FX_SinIdx(param0->unk_92), FX_CosIdx(param0->unk_92));
    MTX_Concat33(&v1, &v0, &v0);
    MTX_RotZ33(&v1, FX_SinIdx(param0->unk_94), FX_CosIdx(param0->unk_94));
    MTX_Concat33(&v1, &v0, &v0);

    if (param0->unk_74) {
        Easy3D_DrawRenderObj(&param0->renderObj, &param0->unk_78, &v0, &param0->unk_84);
    }
}

static void ov78_021D17A4(ChooseStarter3DGraphics *param0, BOOL param1)
{
    param0->unk_74 = param1;
}

static void ov78_021D17A8(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_78.x = param1;
    param0->unk_78.y = param2;
    param0->unk_78.z = param3;
}

static void ov78_021D17B4(ChooseStarter3DGraphics *param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_84.x = param1;
    param0->unk_84.y = param2;
    param0->unk_84.z = param3;
}

static void ov78_021D17CC(ChooseStarter3DGraphics *param0, u16 param1, u16 param2, u16 param3)
{
    param0->unk_90 = param1;
    param0->unk_92 = param2;
    param0->unk_94 = param3;
}

static BOOL ov78_021D17E4(ChooseStarter3DGraphics *param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->animationObj);
    BOOL v1;

    if ((param0->unk_70 + FX32_ONE) < v0) {
        param0->unk_70 += FX32_ONE;
        v1 = 0;
    } else {
        param0->unk_70 = v0;
        v1 = 1;
    }

    NNS_G3dAnmObjSetFrame(param0->animationObj, param0->unk_70);

    return v1;
}

static void ov78_021D180C(ChooseStarter3DGraphics *param0)
{
    fx32 v0 = NNS_G3dAnmObjGetNumFrame(param0->animationObj);

    param0->unk_70 = (param0->unk_70 + FX32_ONE) % v0;
    NNS_G3dAnmObjSetFrame(param0->animationObj, param0->unk_70);
}

static void ov78_021D182C(ChooseStarter3DGraphics *param0, fx32 param1)
{
    param0->unk_70 = param1;
    NNS_G3dAnmObjSetFrame(param0->animationObj, param1);
}

static void Make3DGraphics(ChooseStarterApp *param0, enum HeapID heapID)
{
    int v0;

    ov78_021D15CC(&param0->starter3DGraphics[0], 1, 0, heapID, &param0->allocator);
    ov78_021D17A4(&param0->starter3DGraphics[0], 1);

    ov78_021D1604(&param0->starter3DGraphics[1], 8, heapID);
    ov78_021D17A4(&param0->starter3DGraphics[1], 0);

    for (v0 = 2; v0 <= 4; v0++) {
        ov78_021D15CC(&param0->starter3DGraphics[v0], 3 + (v0 - 2) * 2, 2 + (v0 - 2) * 2, heapID, &param0->allocator);
        ov78_021D17A4(&param0->starter3DGraphics[v0], 0);
    }

    ov78_021D1604(&param0->starter3DGraphics[5], 9, heapID);
    ov78_021D17A4(&param0->starter3DGraphics[5], 1);

    ov78_021D17A8(&param0->starter3DGraphics[5], 0, -28 * FX32_ONE, 40 * FX32_ONE);
    ov78_021D17B4(&param0->starter3DGraphics[5], FX32_CONST(3.50f), FX32_ONE, FX32_CONST(3.50f));
    ov78_021D17CC(&param0->starter3DGraphics[5], (0 * 0xffff) / 360, (180 * 0xffff) / 360, (0 * 0xffff) / 360);
}

static void Delete3DGraphics(ChooseStarterApp *app)
{
    for (int i = 0; i < CHOOSE_STARTER_3D_GRAPHICS_NUM; i++) {
        Delete3DGraphic(&app->starter3DGraphics[i], &app->allocator);
    }
}

static void ov78_021D192C(ChooseStarterApp *param0)
{
    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), 0);

    for (int i = 0; i < CHOOSE_STARTER_3D_GRAPHICS_NUM; i++) {
        ov78_021D1708(&param0->starter3DGraphics[i]);
    }
}

static BOOL IsSelectionMade(ChooseStarterApp *param0, int param1)
{
    if (param0->unk_08 == 1) {
        return 0;
    }

    switch (ov78_021D1CA4(param0)) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        ov78_021D1C58(param0);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            ov78_021D1C98(param0, 1);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
        break;
    case 4:
        break;
    case 5:
        return 1;
    default:
        break;
    }

    return 0;
}

static void UpdateGraphics(ChooseStarterApp *param0, enum HeapID heapID)
{
    switch (ov78_021D1CA4(param0)) {
    case 0:

        param0->unk_08 = 1;
        param0->unk_0C = 36;
        ov78_021D1C98(param0, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, 10, 16 - 10);
        break;
    case 1:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1C98(param0, 1);
            Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        }
        break;
    case 2:
        if (ov78_021D17E4(&param0->starter3DGraphics[0])) {
            ov78_021D17A4(&param0->starter3DGraphics[0], 0);
            ov78_021D17A4(&param0->starter3DGraphics[1], 1);
            ov78_021D17A4(&param0->starter3DGraphics[2], 1);
            ov78_021D17A4(&param0->starter3DGraphics[3], 1);
            ov78_021D17A4(&param0->starter3DGraphics[4], 1);
            ov78_021D1C98(param0, 1);
        }
        break;
    case 3:
        ov78_021D1CA8(param0, heapID);
        break;
    case 4:
        ov78_021D1E44(param0, heapID);
        break;
    case 5:
        G2_BlendNone();
        break;
    default:
        break;
    }
}

static void DrawScene(ChooseStarterApp *param0)
{
    G3_ResetG3X();

    NNS_G3dGePushMtx();

    {
        NNS_G3dGeFlushBuffer();
        NNS_G2dSetupSoftwareSpriteCamera();

        PokemonSpriteManager_DrawSprites(param0->spriteManager);
        SoftwareSpriteManager_DrawVisible(param0->spriteDisplay);
    }

    NNS_G3dGePopMtx(1);
    NNS_G3dGePushMtx();

    {
        Camera_ComputeViewMatrix();
        ov78_021D192C(param0);
    }

    NNS_G3dGePopMtx(1);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    SpriteList_Update(param0->spriteList);
}

static void MakeCamera(ChooseStarterApp *param0, int param1)
{
    param0->camera = Camera_Alloc(param1);
    ov78_021D1B3C(param0->camera, &param0->unk_64C);
}

static void ov78_021D1B3C(Camera *camera, VecFx32 *param1)
{
    CameraAngle v0;
    VecFx32 v1;

    param1->x = 0;
    param1->y = 0;
    param1->z = 0;

    v0.x = ((-30 * 0xffff) / 360);
    v0.y = ((0 * 0xffff) / 360);
    v0.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(param1, 300 << FX32_SHIFT, &v0, (22 * 0xffff) / 360, 0, 1, camera);

    v1.x = 0;
    v1.y = FX32_ONE;
    v1.z = 0;

    Camera_SetUp(&v1, camera);
    Camera_SetAsActive(camera);
}

static void DeleteCamera(ChooseStarterApp *app)
{
    Camera_Delete(app->camera);
}

static void MakeSelectionMatrix(ChooseStarterApp *param0)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        switch (i) {
        case 0:
            param0->unk_58[i][0] = -44;
            param0->unk_58[i][1] = -4;
            param0->unk_58[i][2] = 32;
            break;
        case 1:
            param0->unk_58[i][0] = 0;
            param0->unk_58[i][1] = -4;
            param0->unk_58[i][2] = 62;
            break;
        case 2:
            param0->unk_58[i][0] = 38;
            param0->unk_58[i][1] = -4;
            param0->unk_58[i][2] = 26;
            break;
        }
    }

    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        switch (i) {
        case 0:
            param0->unk_7C[i][0] = 78;
            param0->unk_7C[i][1] = 55;
            break;
        case 1:
            param0->unk_7C[i][0] = 130;
            param0->unk_7C[i][1] = 82;
            break;
        case 2:
            param0->unk_7C[i][0] = 172;
            param0->unk_7C[i][1] = 50;
            break;
        }
    }
}

static void SetSelectionMatrixObjects(ChooseStarterApp *param0)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        ov78_021D17A8(&param0->starter3DGraphics[i + 2], param0->unk_58[i][0] << FX32_SHIFT, param0->unk_58[i][1] << FX32_SHIFT, param0->unk_58[i][2] << FX32_SHIFT);
    }
}

static void ov78_021D1C58(ChooseStarterApp *param0)
{
    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->cursorPosition - 1 >= 0) {
            param0->cursorPosition -= 1;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->cursorPosition + 1 < 3) {
            param0->cursorPosition += 1;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }
}

static void ov78_021D1C98(ChooseStarterApp *param0, int param1)
{
    param0->unk_00 += param1;
    param0->unk_04 = 0;
}

static int ov78_021D1CA4(ChooseStarterApp *param0)
{
    return param0->unk_00;
}

static void ov78_021D1CA8(ChooseStarterApp *param0, enum HeapID heapID)
{
    switch (param0->unk_04) {
    case 0:
        ov78_021D213C(&param0->cameraMovement, param0->camera, &param0->unk_64C);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        param0->unk_04++;
        break;
    case 1:
        if (ov78_021D2200(&param0->cameraMovement)) {
            param0->unk_0C = 6;
            param0->unk_04++;
        }
        break;
    case 2:
        param0->unk_0C--;

        if (param0->unk_0C < 0) {
            ov78_021D1E28(param0);
            param0->unk_04++;
        }
        break;
    case 3:
        param0->unk_708 = ov78_021D201C(param0->messageWindow, heapID, 360, 0, TEXT_COLOR(1, 2, 15), param0->textFrameDelay, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 4:
        if (Text_IsPrinterActive(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 5:
        param0->unk_708 = ov78_021D201C(param0->messageWindow, heapID, 360, 7, TEXT_COLOR(1, 2, 15), param0->textFrameDelay, &param0->unk_AC);
        param0->unk_04++;
        break;
    case 6:
        if (Text_IsPrinterActive(param0->unk_708) == 0) {
            ov78_021D2090(param0);
            param0->unk_04++;
        }
        break;
    case 7:
        ov78_021D2430(&param0->cursor, 1);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 8:
        ov78_021D1DF0(param0);
        ov78_021D1E28(param0);
        break;
    }
}

static void ov78_021D1DF0(ChooseStarterApp *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->cursorPosition == v0) {
            ov78_021D180C(&param0->starter3DGraphics[2 + v0]);
        } else {
            ov78_021D182C(&param0->starter3DGraphics[2 + v0], 0);
        }
    }
}

static void ov78_021D1E28(ChooseStarterApp *param0)
{
    ov78_021D243C(&param0->cursor, param0->unk_7C[param0->cursorPosition][0], param0->unk_7C[param0->cursorPosition][1]);
}

static void ov78_021D1E44(ChooseStarterApp *param0, enum HeapID heapID)
{
    u32 v0;

    switch (param0->unk_04) {
    case 0:
        ov78_021D2430(&param0->cursor, 0);
        ov78_021D1E28(param0);
        ov78_021D2904(param0);
        ov78_021D2618(param0);
        param0->unk_04++;
        param0->unk_08 = 1;
        break;
    case 1:
        ov78_021D2508(&param0->previewWindow, 1);
        PokemonSprite_SetAttribute(param0->sprites[param0->cursorPosition], MON_SPRITE_HIDE, FALSE);

        if (ov78_021D26A4(param0)) {
            Sound_PlayPokemonCry(GetSelectedSpecies(param0->cursorPosition), 0);

            param0->unk_04++;
        }
        break;
    case 2:
        ov78_021D1FB4(param0->messageWindow, heapID, 360, 1 + param0->cursorPosition, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
        param0->unk_B8 = Menu_MakeYesNoChoice(param0->bgConfig, &param0->unk_B0, 512 + (18 + 12) + 128, 1, heapID);
        param0->unk_08 = 0;
        param0->unk_04++;
        break;
    case 3:
        v0 = Menu_ProcessInputAndHandleExit(param0->unk_B8, heapID);

        switch (v0) {
        case 0xffffffff:
            break;
        case 0:
            ov78_021D1C98(param0, 1);
            break;
        case 0xfffffffe:
            param0->unk_04++;
            ov78_021D2688(param0);
            break;
        }
        break;
    case 4:
        if (ov78_021D26A4(param0)) {
            ov78_021D1C98(param0, -1);
            param0->unk_04 = 7;
            ov78_021D2508(&param0->previewWindow, 0);
            PokemonSprite_SetAttribute(param0->sprites[param0->cursorPosition], MON_SPRITE_HIDE, TRUE);
            param0->unk_708 = ov78_021D1FB4(param0->messageWindow, heapID, 360, 7, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
        }
        break;
    }
}

static u8 ov78_021D1FB4(Window *param0, enum HeapID heapID, int param2, int param3, TextColor param4, u32 param5)
{
    MessageLoader *v0;
    String *v1;
    u8 v2;

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, param2, heapID);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewString(v0, param3);

    Window_FillTilemap(param0, 15);
    v2 = Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, v1, 0, 0, param5, param4, NULL);
    Window_DrawMessageBoxWithScrollCursor(param0, 0, 512, 0);

    String_Free(v1);
    MessageLoader_Free(v0);

    return v2;
}

static u8 ov78_021D201C(Window *param0, enum HeapID heapID, int param2, int param3, u32 param4, u32 param5, String **param6)
{
    MessageLoader *v0;
    u8 v1;

    GF_ASSERT((*param6) == NULL);

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, param2, heapID);
    GF_ASSERT(v0);

    *param6 = MessageLoader_GetNewString(v0, param3);
    Window_FillTilemap(param0, 15);
    v1 = Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, *param6, 0, 0, param5, param4, NULL);

    Window_DrawMessageBoxWithScrollCursor(param0, 0, 512, 0);
    MessageLoader_Free(v0);

    return v1;
}

static void ov78_021D2090(ChooseStarterApp *param0)
{
    String_Free(param0->unk_AC);
    param0->unk_AC = NULL;
}

static void MakeConfirmationWindow(ChooseStarterApp *param0, int param1)
{
    param0->unk_B0.bgLayer = 1;
    param0->unk_B0.tilemapLeft = 23;
    param0->unk_B0.tilemapTop = 12;
    param0->unk_B0.width = 5;
    param0->unk_B0.height = 4;
    param0->unk_B0.palette = 3;
    param0->unk_B0.baseTile = ((18 + 12) + 9 + 128);

    LoadStandardWindowGraphics(param0->bgConfig, BG_LAYER_MAIN_1, 512 + (18 + 12) + 128, 1, 0, param1);
    Font_LoadTextPalette(0, 3 * 32, param1);
}

static void ov78_021D2108(ChooseStarterMovement *param0, s32 param1, s32 param2, s32 param3)
{
    param0->unk_00 = param1;
    param0->unk_04 = param1;
    param0->unk_08 = param2 - param1;
    param0->unk_0C = param3;
}

static BOOL ov78_021D2114(ChooseStarterMovement *param0, s32 param1)
{
    s32 v0;
    BOOL v1;
    s32 v2;

    if (param1 >= param0->unk_0C) {
        v0 = param0->unk_0C;
        v1 = 1;
    } else {
        v0 = param1;
        v1 = 0;
    }

    v2 = param0->unk_08 * param1;
    v2 = v2 / param0->unk_0C;
    v2 += param0->unk_04;

    param0->unk_00 = v2;

    return v1;
}

static void ov78_021D213C(ChooseStarterCameraMovement *param0, Camera *camera, VecFx32 *param2)
{
    GF_ASSERT(param0->unk_40 == NULL);

    ov78_021D2108(&param0->unk_00, (-30 * 0xffff) / 360, (-50 * 0xffff) / 360, 6);
    ov78_021D2108(&param0->unk_10, 300 << FX32_SHIFT, 200 << FX32_SHIFT, 6);
    ov78_021D2108(&param0->unk_20, 0, 36 * FX32_ONE, 6);

    param0->unk_3C = 0;
    param0->camera = camera;
    param0->unk_34 = param2;
    param0->unk_38 = 0;

    SysTask_Start(ov78_021D219C, param0, 0);
}

static void ov78_021D219C(SysTask *param0, void *param1)
{
    ChooseStarterCameraMovement *v0 = param1;
    BOOL v1;
    CameraAngle v2;

    v1 = ov78_021D2114(&v0->unk_00, v0->unk_38);
    ov78_021D2114(&v0->unk_10, v0->unk_38);
    ov78_021D2114(&v0->unk_20, v0->unk_38);

    v2.x = v0->unk_00.unk_00;
    v2.y = ((0 * 0xffff) / 360);
    v2.z = ((0 * 0xffff) / 360);

    Camera_SetAngleAroundTarget(&v2, v0->camera);
    Camera_SetDistance(v0->unk_10.unk_00, v0->camera);

    v0->unk_34->z = v0->unk_20.unk_00;
    v0->unk_38++;

    if (v1 == 1) {
        SysTask_Done(param0);
        v0->unk_40 = NULL;
        v0->unk_3C = 1;
    }
}

static BOOL ov78_021D2200(ChooseStarterCameraMovement *param0)
{
    return param0->unk_3C;
}

static void MakeCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID)
{
    cursor->resources[SPRITE_RESOURCE_CHAR] = SpriteResourceCollection_AddTiles(app->spriteResourceCollection[SPRITE_RESOURCE_CHAR], 82, 10, 0, 10, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);

    SpriteTransfer_RequestCharAtEnd(cursor->resources[SPRITE_RESOURCE_CHAR]);
    SpriteResource_ReleaseData(cursor->resources[SPRITE_RESOURCE_CHAR]);

    cursor->resources[SPRITE_RESOURCE_PLTT] = SpriteResourceCollection_AddPalette(app->spriteResourceCollection[SPRITE_RESOURCE_PLTT], 82, 11, 0, 11, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);

    SpriteTransfer_RequestPlttFreeSpace(cursor->resources[SPRITE_RESOURCE_PLTT]);
    SpriteResource_ReleaseData(cursor->resources[SPRITE_RESOURCE_PLTT]);

    cursor->resources[SPRITE_RESOURCE_CELL] = SpriteResourceCollection_Add(app->spriteResourceCollection[SPRITE_RESOURCE_CELL], 82, 12, 0, 12, 2, heapID);
    cursor->resources[SPRITE_RESOURCE_ANIM] = SpriteResourceCollection_Add(app->spriteResourceCollection[SPRITE_RESOURCE_ANIM], 82, 13, 0, 13, 3, heapID);
}

static void DeleteCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor)
{
    SpriteTransfer_ResetCharTransfer(cursor->resources[SPRITE_RESOURCE_CHAR]);
    SpriteTransfer_ResetPlttTransfer(cursor->resources[SPRITE_RESOURCE_PLTT]);

    SpriteResourceCollection_Remove(app->spriteResourceCollection[SPRITE_RESOURCE_CHAR], cursor->resources[SPRITE_RESOURCE_CHAR]);
    SpriteResourceCollection_Remove(app->spriteResourceCollection[SPRITE_RESOURCE_PLTT], cursor->resources[SPRITE_RESOURCE_PLTT]);
    SpriteResourceCollection_Remove(app->spriteResourceCollection[SPRITE_RESOURCE_CELL], cursor->resources[SPRITE_RESOURCE_CELL]);
    SpriteResourceCollection_Remove(app->spriteResourceCollection[SPRITE_RESOURCE_ANIM], cursor->resources[SPRITE_RESOURCE_ANIM]);
}

static void AttachCursorCellActor(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID)
{
    SpriteResourcesHeader cursorResource;
    SpriteListTemplate cursorCellParams;

    SpriteResourcesHeader_Init(&cursorResource, 10, 11, 12, 13, 0xffffffff, 0xffffffff, 0, 1, app->spriteResourceCollection[SPRITE_RESOURCE_CHAR], app->spriteResourceCollection[SPRITE_RESOURCE_PLTT], app->spriteResourceCollection[SPRITE_RESOURCE_CELL], app->spriteResourceCollection[SPRITE_RESOURCE_ANIM], NULL, NULL);

    cursorCellParams.list = app->spriteList;
    cursorCellParams.resourceData = &cursorResource;
    cursorCellParams.priority = 32;
    cursorCellParams.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    cursorCellParams.heapID = heapID;

    cursorCellParams.position.x = 0;
    cursorCellParams.position.y = 0;

    cursor->sprite = SpriteList_Add(&cursorCellParams);
    Sprite_SetDrawFlag(cursor->sprite, FALSE);

    cursor->position.x = 0;
    cursor->position.y = 0;
}

static void DeleteCursorCellActor(ChooseStarterCursor *cursor)
{
    Sprite_Delete(cursor->sprite);
}

static void ov78_021D235C(ChooseStarterRotation *param0, fx32 param1, int param2)
{
    param0->unk_00 = 0;
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_0C = 0;
}

static void ov78_021D2368(ChooseStarterRotation *param0)
{
    u16 v0;
    int v1 = ((360 * 0xffff) / 360) * param0->unk_0C;
    v1 = v1 / param0->unk_08;
    v0 = v1;

    param0->unk_00 = FX_Mul(FX_SinIdx(v0), param0->unk_04);
    param0->unk_0C = (param0->unk_0C + 1) % param0->unk_08;
}

static void StartCursorMovement(ChooseStarterCursor *cursor)
{
    GF_ASSERT(cursor->movementTask == NULL);

    ov78_021D235C(&cursor->unk_2C, 8 * FX32_ONE, 32);
    cursor->movementTask = SysTask_Start(ov78_021D23E8, cursor, 0);
}

static void ov78_021D23E8(SysTask *param0, void *param1)
{
    ChooseStarterCursor *v0 = param1;
    VecFx32 v1;

    ov78_021D2368(&v0->unk_2C);

    v1 = v0->position;
    v1.y += v0->unk_2C.unk_00;

    Sprite_SetPosition(v0->sprite, &v1);
}

static void StopCursorMovement(ChooseStarterCursor *cursor)
{
    if (cursor->movementTask) {
        SysTask_Done(cursor->movementTask);
        cursor->movementTask = NULL;
    }
}

static void ov78_021D2430(ChooseStarterCursor *param0, BOOL param1)
{
    Sprite_SetDrawFlag(param0->sprite, param1);
}

static void ov78_021D243C(ChooseStarterCursor *param0, int param1, int param2)
{
    param0->position.x = param1 << FX32_SHIFT;
    param0->position.y = param2 << FX32_SHIFT;
}

static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2)
{
    SoftwareSpriteCharsTemplate v0;
    SoftwareSpritePaletteTemplate v1;
    SoftwareSpriteTemplate v2;

    param0->unk_0C = Graphics_GetCharData(NARC_INDEX_GRAPHIC__EV_POKESELECT, 14, 0, &param0->unk_14, param2);
    param0->unk_10 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__EV_POKESELECT, 15, &param0->unk_18, param2);

    v0.softSpriteMan = param1->spriteDisplay;
    v0.charsData = param0->unk_14;

    param0->unk_00 = SoftwareSprite_LoadChars(&v0);

    v1.softSpriteMan = param1->spriteDisplay;
    v1.paletteData = param0->unk_18;
    v1.paletteSlot = 1;

    param0->unk_04 = SoftwareSprite_LoadPalette(&v1);

    v2.softSpriteMan = param1->spriteDisplay;
    v2.chars = param0->unk_00;
    v2.palette = param0->unk_04;
    v2.xPos = 0;
    v2.yPos = 0;
    v2.rotation = 0;
    v2.alpha = 31;
    v2.priority = 1022;
    v2.paletteSlot = 0;

    param0->unk_08 = SoftwareSprite_Load(&v2);

    SoftwareSprite_SetVisible(param0->unk_08, 0);
    SoftwareSprite_SetCenter(param0->unk_08, 128 / 2, 128 / 2);
}

static void DeletePreviewWindow(StarterPreviewWindow *previewWindow)
{
    SoftwareSprite_Reset(previewWindow->unk_08);
    SoftwareSprite_FreeChars(previewWindow->unk_00);
    SoftwareSprite_FreePalette(previewWindow->unk_04);
    Heap_Free(previewWindow->unk_0C);
    Heap_Free(previewWindow->unk_10);
}

static void ov78_021D2508(StarterPreviewWindow *param0, BOOL param1)
{
    SoftwareSprite_SetVisible(param0->unk_08, param1);
}

static void ov78_021D2514(StarterPreviewWindow *param0, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7)
{
    GF_ASSERT(param0->unk_54 == NULL);

    ov78_021D2108(&param0->unk_1C.unk_00, param1, param2, param7);
    ov78_021D2108(&param0->unk_1C.unk_10, param3, param4, param7);
    ov78_021D2108(&param0->unk_1C.unk_20, param5, param6, param7);

    param0->unk_1C.unk_30 = 0;
    param0->unk_1C.unk_34 = 1;
    param0->unk_54 = SysTask_Start(ov78_021D25A0, param0, 0);
}

static void ov78_021D256C(StarterPreviewWindow *param0)
{
    GF_ASSERT(param0->unk_54 == NULL);

    param0->unk_1C.unk_34 = -2;

    if (param0->unk_1C.unk_30 >= param0->unk_1C.unk_00.unk_0C) {
        param0->unk_1C.unk_30 = param0->unk_1C.unk_00.unk_0C + param0->unk_1C.unk_34;
    }

    param0->unk_54 = SysTask_Start(ov78_021D25A0, param0, 0);
}

static void ov78_021D25A0(SysTask *param0, void *param1)
{
    StarterPreviewWindow *v0 = param1;
    BOOL v1;
    fx32 v2, v3;

    v1 = ov78_021D2114(&v0->unk_1C.unk_00, v0->unk_1C.unk_30);

    ov78_021D2114(&v0->unk_1C.unk_10, v0->unk_1C.unk_30);
    ov78_021D2114(&v0->unk_1C.unk_20, v0->unk_1C.unk_30);

    v2 = v0->unk_1C.unk_00.unk_00 - ((128 / 2) * FX32_ONE);
    v3 = v0->unk_1C.unk_10.unk_00 - ((128 / 2) * FX32_ONE);

    SoftwareSprite_SetPosition(v0->unk_08, v2 >> FX32_SHIFT, v3 >> FX32_SHIFT);
    SoftwareSprite_SetScalingFactors(v0->unk_08, v0->unk_1C.unk_20.unk_00, v0->unk_1C.unk_20.unk_00);

    if ((v1 == 1) || (v0->unk_1C.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->unk_54 = NULL;
    }

    v0->unk_1C.unk_30 += v0->unk_1C.unk_34;
}

static BOOL ov78_021D2608(StarterPreviewWindow *param0)
{
    if (param0->unk_54) {
        return 0;
    }

    return 1;
}

static void ov78_021D2618(ChooseStarterApp *param0)
{
    fx32 v0, v1;

    v0 = param0->unk_7C[param0->cursorPosition][0] << FX32_SHIFT;
    v1 = (param0->unk_7C[param0->cursorPosition][1] + 48) << FX32_SHIFT;

    ov78_021D2514(&param0->previewWindow, v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, FX32_CONST(0.40f), FX32_CONST(1.0f), 6);
    ov78_021D26B4(&param0->previewGraphics, param0->sprites[param0->cursorPosition], v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, FX32_CONST(0.40f), FX32_CONST(1.0f), 6);
}

static void ov78_021D2688(ChooseStarterApp *param0)
{
    ov78_021D256C(&param0->previewWindow);
    ov78_021D270C(&param0->previewGraphics);
}

static BOOL ov78_021D26A4(ChooseStarterApp *param0)
{
    return ov78_021D2608(&param0->previewWindow);
}

static void ov78_021D26B4(StarterPreviewGraphics *param0, PokemonSprite *param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8)
{
    GF_ASSERT(param0->unk_3C == NULL);

    ov78_021D2108(&param0->unk_04.unk_00, param2, param3, param8);
    ov78_021D2108(&param0->unk_04.unk_10, param4, param5, param8);
    ov78_021D2108(&param0->unk_04.unk_20, param6, param7, param8);

    param0->unk_00 = param1;
    param0->unk_04.unk_30 = 0;
    param0->unk_04.unk_34 = 1;
    param0->unk_3C = SysTask_Start(ov78_021D2740, param0, 0);
}

static void ov78_021D270C(StarterPreviewGraphics *param0)
{
    GF_ASSERT(param0->unk_3C == NULL);

    param0->unk_04.unk_34 = -2;

    if (param0->unk_04.unk_30 >= param0->unk_04.unk_00.unk_0C) {
        param0->unk_04.unk_30 = param0->unk_04.unk_00.unk_0C + param0->unk_04.unk_34;
    }

    param0->unk_3C = SysTask_Start(ov78_021D2740, param0, 0);
}

static void ov78_021D2740(SysTask *param0, void *param1)
{
    StarterPreviewGraphics *v0 = param1;
    BOOL v1;
    u32 v2;

    v1 = ov78_021D2114(&v0->unk_04.unk_00, v0->unk_04.unk_30);

    ov78_021D2114(&v0->unk_04.unk_10, v0->unk_04.unk_30);
    ov78_021D2114(&v0->unk_04.unk_20, v0->unk_04.unk_30);

    v2 = FX_Mul(0x100 * FX32_ONE, v0->unk_04.unk_20.unk_00) >> FX32_SHIFT;

    PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_X_CENTER, v0->unk_04.unk_00.unk_00 >> FX32_SHIFT);
    PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_Y_CENTER, v0->unk_04.unk_10.unk_00 >> FX32_SHIFT);
    PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_SCALE_X, v2);
    PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_SCALE_Y, v2);

    if ((v1 == 1) || (v0->unk_04.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->unk_3C = NULL;
    }

    v0->unk_04.unk_30 += v0->unk_04.unk_34;
}

static void MakeSubplaneWindows(ChooseStarterApp *param0, enum HeapID heapID)
{
    int v1, v2;

    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__EV_POKESELECT, 17, 0, 5 * 32, 32, heapID);

    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        param0->subplaneWindows[i] = Window_New(heapID, 1);
        Window_Init(param0->subplaneWindows[i]);

        switch (i) {
        case 0:
            v1 = 12;
            v2 = 4;
            break;
        case 1:
            v1 = 4;
            v2 = 14;
            break;
        case 2:
            v1 = 20;
            v2 = 13;
            break;
        }

        Window_Add(param0->bgConfig, param0->subplaneWindows[i], 3, v1, v2, 11, 4, 5, 1 + (64 * i));
        ov78_021D28A8(param0->subplaneWindows[i], heapID, 360, 4 + i, TEXT_COLOR(1, 2, 10));
    }
}

static void DeleteSubplaneWindows(ChooseStarterApp *app)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        Window_Remove(app->subplaneWindows[i]);
        Heap_Free(app->subplaneWindows[i]);
    }
}

static void ov78_021D28A8(Window *param0, enum HeapID heapID, int param2, int param3, TextColor param4)
{
    MessageLoader *v0;
    String *v1;

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, param2, heapID);
    GF_ASSERT(v0);
    v1 = MessageLoader_GetNewString(v0, param3);

    Window_FillTilemap(param0, ((param4) >> 0) & 0xff);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v1, 1, 0, TEXT_SPEED_NO_TRANSFER, param4, NULL);
    String_Free(v1);
    MessageLoader_Free(v0);
}

static void ov78_021D2904(ChooseStarterApp *param0)
{
    Window_ClearAndCopyToVRAM(param0->subplaneWindows[param0->unk_A8]);
}

static u16 GetSelectedSpecies(u16 cursorPosition)
{
    switch (cursorPosition) {
    case CURSOR_POSITION_LEFT:
        return STARTER_OPTION_0;

    case CURSOR_POSITION_CENTER:
        return STARTER_OPTION_1;

    case CURSOR_POSITION_RIGHT:
        return STARTER_OPTION_2;

    default:
        GF_ASSERT(FALSE);
        break;
    }

    return SPECIES_NONE;
}
