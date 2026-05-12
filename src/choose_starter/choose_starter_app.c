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
    fx32 animation_frame;
    BOOL show;
    VecFx32 position;
    VecFx32 scale;
    u16 rotation_x;
    u16 rotation_y;
    u16 rotation_z;
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
    VecFx32 *target;
    s32 unk_38;
    BOOL unk_3C;
    SysTask *movementTask;
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
    SoftwareSprite *sprite;
    void *unk_0C;
    void *unk_10;
    NNSG2dCharacterData *unk_14;
    NNSG2dPaletteData *unk_18;
    StarterPreviewAnimation unk_1C;
    SysTask *movementTask;
} StarterPreviewWindow;

typedef struct StarterPreviewGraphics {
    PokemonSprite *sprite;
    StarterPreviewAnimation unk_04;
    SysTask *movementTask;
} StarterPreviewGraphics;

typedef struct ChooseStarterApp {
    int choiceStep;
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
    String *string;
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
    VecFx32 cameraTarget;
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
static BOOL IsSelectionMade(ChooseStarterApp *app, int param1);
static void UpdateGraphics(ChooseStarterApp *app, enum HeapID heapID);
static void DrawScene(ChooseStarterApp *param0);
static void SetupDrawing(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteDrawing(void);
static void SetupVRAMBank(void);
static void SetupOAM(enum HeapID heapID);
static void Setup3D(ChooseStarterApp *app);
static void ResetFrm(void);
static void SetupBGs(BgConfig *bgConfig, enum HeapID heapID);
static void DeleteBGs(BgConfig *bgConfig);
static void MakeMessageWindow(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteMessageWindow(ChooseStarterApp *app);
static u8 SetMessageWindowText(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor, u32 renderDelay);
static u8 SetMessageWindowTextAndSaveToString(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor, u32 renderDelay, String **string);
static void DeleteStringBuffer(ChooseStarterApp *app);
static void MakeSubplaneWindows(ChooseStarterApp *param0, enum HeapID heapID);
static void DeleteSubplaneWindows(ChooseStarterApp *app);
static void SetSubplaneWindowText(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor);
static void DeleteSubplaneWindow(ChooseStarterApp *app);
static void MakeConfirmationWindow(ChooseStarterApp *param0, int param1);
static void MakePokemonSprites(ChooseStarterApp *app, enum HeapID heapID);
static void DeletePokemonSprites(ChooseStarterApp *app);
static void MakeSpriteDisplay(ChooseStarterApp *app, enum HeapID heapID);
static void DeleteSpriteDisplay(ChooseStarterApp *app);
static void MakeCellActors(ChooseStarterApp *param0, enum HeapID heapID);
static void DeleteCellActors(ChooseStarterApp *app);
static void MakeCamera(ChooseStarterApp *app, enum HeapID heapID);
static void SetupCamera(Camera *camera, VecFx32 *param1);
static void DeleteCamera(ChooseStarterApp *app);
static void Make3DGraphics(ChooseStarterApp *param0, enum HeapID heapID);
static void Delete3DGraphics(ChooseStarterApp *app);
static void Draw3DGraphicsWithLightAndColor(ChooseStarterApp *app);
static void MakeCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID);
static void DeleteCursorOAM(ChooseStarterApp *app, ChooseStarterCursor *cursor);
static void AttachCursorCellActor(ChooseStarterApp *app, ChooseStarterCursor *cursor, enum HeapID heapID);
static void DeleteCursorCellActor(ChooseStarterCursor *cursor);
static void ShowCursor(ChooseStarterCursor *cursor, BOOL show);
static void SetCursorPosition(ChooseStarterCursor *cursor, int x, int y);
static void MakeSelectionMatrix(ChooseStarterApp *param0);
static void SetSelectionMatrixObjects(ChooseStarterApp *param0);
static void ov78_021D1CA8(ChooseStarterApp *param0, enum HeapID heapID);
static void UpdateSelectedPokeballAnimation(ChooseStarterApp *app);
static void UpdateCursorPosition(ChooseStarterApp *app);
static void ov78_021D1E44(ChooseStarterApp *param0, enum HeapID heapID);
static void MakePokemonSprite(PokemonSprite **sprite, ChooseStarterApp *app, int species);
static void Delete3DGraphic(ChooseStarter3DGraphics *starter3DGraphics, NNSFndAllocator *allocator);
static void Draw3DGraphics(ChooseStarter3DGraphics *starter3DGraphics);
static void Show3DGraphics(ChooseStarter3DGraphics *starter3DGraphics, BOOL show);
static void Set3DGraphicsPosition(ChooseStarter3DGraphics *starter3DGraphics, fx32 x, fx32 y, fx32 z);
static void Set3DGraphicsScale(ChooseStarter3DGraphics *starter3DGraphics, fx32 x, fx32 y, fx32 z);
static void Set3DGraphicsRotation(ChooseStarter3DGraphics *starter3DGraphics, u16 x, u16 y, u16 z);
static BOOL Advance3DGraphicsAnimationIfNotLastFrame(ChooseStarter3DGraphics *starter3DGraphics);
static void Advance3DGraphicsAnimationOnLoop(ChooseStarter3DGraphics *starter3DGraphics);
static void Set3DGraphicsAnimationFrame(ChooseStarter3DGraphics *starter3DGraphics, fx32 frame);
static void Load3DGraphicsModel(ChooseStarter3DGraphics *starter3DGraphics, int narcMemberIdx, enum HeapID heapID);
static void Load3DGraphicsAnimation(ChooseStarter3DGraphics *starter3DGraphics, int narcMemberIdx, enum HeapID heapID, NNSFndAllocator *allocator);
static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2);
static void DeletePreviewWindow(StarterPreviewWindow *previewWindow);
static void ShowPreviewWindow(StarterPreviewWindow *previewWindow, BOOL show);
static void StartPreviewWindowMovement(StarterPreviewWindow *previewWindow, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7);
static void StartOtherPreviewMovement(StarterPreviewWindow *previewWindow);
static void ov78_021D25A0(SysTask *param0, void *param1);
static BOOL ov78_021D2608(StarterPreviewWindow *param0);
static void ov78_021D2618(ChooseStarterApp *param0);
static void ov78_021D2688(ChooseStarterApp *param0);
static BOOL ov78_021D26A4(ChooseStarterApp *param0);
static void StartPreviewGraphicsMovement(StarterPreviewGraphics *previewGraphics, PokemonSprite *sprite, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8);
static void StartOtherPreviewGraphicsMovement(StarterPreviewGraphics *previewGraphics);
static void ov78_021D2740(SysTask *param0, void *param1);
static void ChangePokeballChoice(ChooseStarterApp *app);
static void AdvanceChoiceStep(ChooseStarterApp *app, int param1);
static int GetChoiceStep(ChooseStarterApp *app);
static void ov78_021D2108(ChooseStarterMovement *param0, s32 param1, s32 param2, s32 param3);
static BOOL ov78_021D2114(ChooseStarterMovement *param0, s32 param1);
static void ov78_021D235C(ChooseStarterRotation *param0, fx32 param1, int param2);
static void ov78_021D2368(ChooseStarterRotation *param0);
static void startCameraMovement(ChooseStarterCameraMovement *cameraMovement, Camera *camera, VecFx32 *target);
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
        BOOL selectionMade = IsSelectionMade(app, HEAP_ID_CHOOSE_STARTER_APP);
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

    SetVBlankCallback(NULL, NULL);

    data->species = GetSelectedSpecies(app->cursorPosition);

    BOOL touchPadResult = DisableTouchPad();
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

    ResetFrm();
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

static void ResetFrm(void)
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
    Window_DrawMessageBoxWithScrollCursor(app->messageWindow, FALSE, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX);
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

static void Load3DGraphics(ChooseStarter3DGraphics *starter3DGraphics, int modelNarcMemberIdx, int animNarcMemberIdx, enum HeapID heapID, NNSFndAllocator *allocator)
{
    memset(starter3DGraphics, 0, sizeof(ChooseStarter3DGraphics));

    Load3DGraphicsModel(starter3DGraphics, modelNarcMemberIdx, heapID);
    Load3DGraphicsAnimation(starter3DGraphics, animNarcMemberIdx, heapID, allocator);
    Set3DGraphicsScale(starter3DGraphics, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void Load3DGraphicsWithoutAnimation(ChooseStarter3DGraphics *starter3DGraphics, int modelNarcMemberIdx, enum HeapID heapID)
{
    memset(starter3DGraphics, 0, sizeof(ChooseStarter3DGraphics));

    Load3DGraphicsModel(starter3DGraphics, modelNarcMemberIdx, heapID);
    Set3DGraphicsScale(starter3DGraphics, FX32_ONE, FX32_ONE, FX32_ONE);
}

static void Load3DGraphicsModel(ChooseStarter3DGraphics *starter3DGraphics, int narcMemberIdx, enum HeapID heapID)
{
    starter3DGraphics->modelRes = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__EV_POKESELECT, narcMemberIdx, FALSE, heapID, FALSE);
    starter3DGraphics->modelSet = NNS_G3dGetMdlSet(starter3DGraphics->modelRes);
    starter3DGraphics->model = NNS_G3dGetMdlByIdx(starter3DGraphics->modelSet, 0);
    starter3DGraphics->texture = NNS_G3dGetTex(starter3DGraphics->modelRes);

    Easy3D_UploadTextureToVRAM(starter3DGraphics->texture);
    Easy3D_BindTextureToResource(starter3DGraphics->modelRes, starter3DGraphics->texture);

    NNS_G3dRenderObjInit(&starter3DGraphics->renderObj, starter3DGraphics->model);
}

static void Load3DGraphicsAnimation(ChooseStarter3DGraphics *starter3DGraphics, int narcMemberIdx, enum HeapID heapID, NNSFndAllocator *allocator)
{
    starter3DGraphics->animationRes = LoadMemberFromNARC(NARC_INDEX_GRAPHIC__EV_POKESELECT, narcMemberIdx, FALSE, heapID, FALSE);
    starter3DGraphics->animation = NNS_G3dGetAnmByIdx(starter3DGraphics->animationRes, 0);
    starter3DGraphics->animationObj = NNS_G3dAllocAnmObj(allocator, starter3DGraphics->animation, starter3DGraphics->model);

    NNS_G3dAnmObjInit(starter3DGraphics->animationObj, starter3DGraphics->animation, starter3DGraphics->model, starter3DGraphics->texture);
    NNS_G3dRenderObjAddAnmObj(&starter3DGraphics->renderObj, starter3DGraphics->animationObj);
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

static void Draw3DGraphics(ChooseStarter3DGraphics *starter3DGraphics)
{
    MtxFx33 rotation;
    MtxFx33 temp;

    MTX_Identity33(&rotation);
    MTX_RotX33(&temp, FX_SinIdx(starter3DGraphics->rotation_x), FX_CosIdx(starter3DGraphics->rotation_x));
    MTX_Concat33(&temp, &rotation, &rotation);
    MTX_RotY33(&temp, FX_SinIdx(starter3DGraphics->rotation_y), FX_CosIdx(starter3DGraphics->rotation_y));
    MTX_Concat33(&temp, &rotation, &rotation);
    MTX_RotZ33(&temp, FX_SinIdx(starter3DGraphics->rotation_z), FX_CosIdx(starter3DGraphics->rotation_z));
    MTX_Concat33(&temp, &rotation, &rotation);

    if (starter3DGraphics->show) {
        Easy3D_DrawRenderObj(&starter3DGraphics->renderObj, &starter3DGraphics->position, &rotation, &starter3DGraphics->scale);
    }
}

static void Show3DGraphics(ChooseStarter3DGraphics *starter3DGraphics, BOOL show)
{
    starter3DGraphics->show = show;
}

static void Set3DGraphicsPosition(ChooseStarter3DGraphics *starter3DGraphics, fx32 x, fx32 y, fx32 z)
{
    starter3DGraphics->position.x = x;
    starter3DGraphics->position.y = y;
    starter3DGraphics->position.z = z;
}

static void Set3DGraphicsScale(ChooseStarter3DGraphics *starter3DGraphics, fx32 x, fx32 y, fx32 z)
{
    starter3DGraphics->scale.x = x;
    starter3DGraphics->scale.y = y;
    starter3DGraphics->scale.z = z;
}

static void Set3DGraphicsRotation(ChooseStarter3DGraphics *starter3DGraphics, u16 x, u16 y, u16 z)
{
    starter3DGraphics->rotation_x = x;
    starter3DGraphics->rotation_y = y;
    starter3DGraphics->rotation_z = z;
}

static BOOL Advance3DGraphicsAnimationIfNotLastFrame(ChooseStarter3DGraphics *starter3DGraphics)
{
    fx32 lastFrame = NNS_G3dAnmObjGetNumFrame(starter3DGraphics->animationObj);
    BOOL isLastFrame;

    if ((starter3DGraphics->animation_frame + FX32_ONE) < lastFrame) {
        starter3DGraphics->animation_frame += FX32_ONE;
        isLastFrame = FALSE;
    } else {
        starter3DGraphics->animation_frame = lastFrame;
        isLastFrame = TRUE;
    }

    NNS_G3dAnmObjSetFrame(starter3DGraphics->animationObj, starter3DGraphics->animation_frame);

    return isLastFrame;
}

static void Advance3DGraphicsAnimationOnLoop(ChooseStarter3DGraphics *starter3DGraphics)
{
    starter3DGraphics->animation_frame = (starter3DGraphics->animation_frame + FX32_ONE) % NNS_G3dAnmObjGetNumFrame(starter3DGraphics->animationObj);
    NNS_G3dAnmObjSetFrame(starter3DGraphics->animationObj, starter3DGraphics->animation_frame);
}

static void Set3DGraphicsAnimationFrame(ChooseStarter3DGraphics *starter3DGraphics, fx32 frame)
{
    starter3DGraphics->animation_frame = frame;
    NNS_G3dAnmObjSetFrame(starter3DGraphics->animationObj, frame);
}

static void Make3DGraphics(ChooseStarterApp *param0, enum HeapID heapID)
{
    Load3DGraphics(&param0->starter3DGraphics[0], 1, 0, heapID, &param0->allocator);
    Show3DGraphics(&param0->starter3DGraphics[0], TRUE);

    Load3DGraphicsWithoutAnimation(&param0->starter3DGraphics[1], 8, heapID);
    Show3DGraphics(&param0->starter3DGraphics[1], FALSE);

    for (int i = 2; i <= 4; i++) {
        Load3DGraphics(&param0->starter3DGraphics[i], 3 + (i - 2) * 2, 2 + (i - 2) * 2, heapID, &param0->allocator);
        Show3DGraphics(&param0->starter3DGraphics[i], FALSE);
    }

    Load3DGraphicsWithoutAnimation(&param0->starter3DGraphics[5], 9, heapID);
    Show3DGraphics(&param0->starter3DGraphics[5], TRUE);

    Set3DGraphicsPosition(&param0->starter3DGraphics[5], 0, -28 * FX32_ONE, 40 * FX32_ONE);
    Set3DGraphicsScale(&param0->starter3DGraphics[5], FX32_CONST(3.50f), FX32_ONE, FX32_CONST(3.50f));
    Set3DGraphicsRotation(&param0->starter3DGraphics[5], (0 * 0xffff) / 360, (180 * 0xffff) / 360, (0 * 0xffff) / 360);
}

static void Delete3DGraphics(ChooseStarterApp *app)
{
    for (int i = 0; i < CHOOSE_STARTER_3D_GRAPHICS_NUM; i++) {
        Delete3DGraphic(&app->starter3DGraphics[i], &app->allocator);
    }
}

static void Draw3DGraphicsWithLightAndColor(ChooseStarterApp *app)
{
    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(31, 31, 31));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), FALSE);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), FALSE);

    for (int i = 0; i < CHOOSE_STARTER_3D_GRAPHICS_NUM; i++) {
        Draw3DGraphics(&app->starter3DGraphics[i]);
    }
}

static BOOL IsSelectionMade(ChooseStarterApp *app, int param1)
{
    if (app->unk_08 == TRUE) {
        return FALSE;
    }

    switch (GetChoiceStep(app)) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        ChangePokeballChoice(app);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            AdvanceChoiceStep(app, 1);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
        break;
    case 4:
        break;
    case 5:
        return TRUE;
    default:
        break;
    }

    return FALSE;
}

static void UpdateGraphics(ChooseStarterApp *app, enum HeapID heapID)
{
    switch (GetChoiceStep(app)) {
    case 0:

        app->unk_08 = 1;
        app->unk_0C = 36;
        AdvanceChoiceStep(app, 1);
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG3, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ, 10, 16 - 10);
        break;
    case 1:
        app->unk_0C--;

        if (app->unk_0C < 0) {
            AdvanceChoiceStep(app, 1);
            Sound_PlayEffect(SEQ_SE_DP_BAG_030);
        }
        break;
    case 2:
        if (Advance3DGraphicsAnimationIfNotLastFrame(&app->starter3DGraphics[0])) {
            Show3DGraphics(&app->starter3DGraphics[0], FALSE);
            Show3DGraphics(&app->starter3DGraphics[1], TRUE);
            Show3DGraphics(&app->starter3DGraphics[2], TRUE);
            Show3DGraphics(&app->starter3DGraphics[3], TRUE);
            Show3DGraphics(&app->starter3DGraphics[4], TRUE);
            AdvanceChoiceStep(app, 1);
        }
        break;
    case 3:
        ov78_021D1CA8(app, heapID);
        break;
    case 4:
        ov78_021D1E44(app, heapID);
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
        Draw3DGraphicsWithLightAndColor(param0);
    }

    NNS_G3dGePopMtx(1);

    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    SpriteList_Update(param0->spriteList);
}

static void MakeCamera(ChooseStarterApp *app, enum HeapID heapID)
{
    app->camera = Camera_Alloc(heapID);
    SetupCamera(app->camera, &app->cameraTarget);
}

static void SetupCamera(Camera *camera, VecFx32 *target)
{
    CameraAngle angle;
    VecFx32 v1;

    target->x = 0;
    target->y = 0;
    target->z = 0;

    angle.x = ((-30 * 0xffff) / 360);
    angle.y = ((0 * 0xffff) / 360);
    angle.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(target, 300 << FX32_SHIFT, &angle, (22 * 0xffff) / 360, 0, 1, camera);

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
        Set3DGraphicsPosition(&param0->starter3DGraphics[i + 2], param0->unk_58[i][0] << FX32_SHIFT, param0->unk_58[i][1] << FX32_SHIFT, param0->unk_58[i][2] << FX32_SHIFT);
    }
}

static void ChangePokeballChoice(ChooseStarterApp *app)
{
    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (app->cursorPosition - 1 >= 0) {
            app->cursorPosition -= 1;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (app->cursorPosition + 1 < 3) {
            app->cursorPosition += 1;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    }
}

static void AdvanceChoiceStep(ChooseStarterApp *app, int advanceAmount)
{
    app->choiceStep += advanceAmount;
    app->unk_04 = 0;
}

static int GetChoiceStep(ChooseStarterApp *app)
{
    return app->choiceStep;
}

static void ov78_021D1CA8(ChooseStarterApp *app, enum HeapID heapID)
{
    switch (app->unk_04) {
    case 0:
        startCameraMovement(&app->cameraMovement, app->camera, &app->cameraTarget);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        app->unk_04++;
        break;
    case 1:
        if (ov78_021D2200(&app->cameraMovement)) {
            app->unk_0C = 6;
            app->unk_04++;
        }
        break;
    case 2:
        app->unk_0C--;

        if (app->unk_0C < 0) {
            UpdateCursorPosition(app);
            app->unk_04++;
        }
        break;
    case 3:
        app->unk_708 = SetMessageWindowTextAndSaveToString(app->messageWindow, heapID, 360, 0, TEXT_COLOR(1, 2, 15), app->textFrameDelay, &app->string);
        app->unk_04++;
        break;
    case 4:
        if (Text_IsPrinterActive(app->unk_708) == 0) {
            DeleteStringBuffer(app);
            app->unk_04++;
        }
        break;
    case 5:
        app->unk_708 = SetMessageWindowTextAndSaveToString(app->messageWindow, heapID, 360, 7, TEXT_COLOR(1, 2, 15), app->textFrameDelay, &app->string);
        app->unk_04++;
        break;
    case 6:
        if (Text_IsPrinterActive(app->unk_708) == 0) {
            DeleteStringBuffer(app);
            app->unk_04++;
        }
        break;
    case 7:
        ShowCursor(&app->cursor, TRUE);
        app->unk_08 = 0;
        app->unk_04++;
        break;
    case 8:
        UpdateSelectedPokeballAnimation(app);
        UpdateCursorPosition(app);
        break;
    }
}

static void UpdateSelectedPokeballAnimation(ChooseStarterApp *app)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        if (app->cursorPosition == i) {
            Advance3DGraphicsAnimationOnLoop(&app->starter3DGraphics[2 + i]);
        } else {
            Set3DGraphicsAnimationFrame(&app->starter3DGraphics[2 + i], 0);
        }
    }
}

static void UpdateCursorPosition(ChooseStarterApp *app)
{
    SetCursorPosition(&app->cursor, app->unk_7C[app->cursorPosition][0], app->unk_7C[app->cursorPosition][1]);
}

static void ov78_021D1E44(ChooseStarterApp *param0, enum HeapID heapID)
{
    u32 v0;

    switch (param0->unk_04) {
    case 0:
        ShowCursor(&param0->cursor, FALSE);
        UpdateCursorPosition(param0);
        DeleteSubplaneWindow(param0);
        ov78_021D2618(param0);
        param0->unk_04++;
        param0->unk_08 = 1;
        break;
    case 1:
        ShowPreviewWindow(&param0->previewWindow, TRUE);
        PokemonSprite_SetAttribute(param0->sprites[param0->cursorPosition], MON_SPRITE_HIDE, FALSE);

        if (ov78_021D26A4(param0)) {
            Sound_PlayPokemonCry(GetSelectedSpecies(param0->cursorPosition), 0);

            param0->unk_04++;
        }
        break;
    case 2:
        SetMessageWindowText(param0->messageWindow, heapID, 360, 1 + param0->cursorPosition, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
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
            AdvanceChoiceStep(param0, 1);
            break;
        case 0xfffffffe:
            param0->unk_04++;
            ov78_021D2688(param0);
            break;
        }
        break;
    case 4:
        if (ov78_021D26A4(param0)) {
            AdvanceChoiceStep(param0, -1);
            param0->unk_04 = 7;
            ShowPreviewWindow(&param0->previewWindow, FALSE);
            PokemonSprite_SetAttribute(param0->sprites[param0->cursorPosition], MON_SPRITE_HIDE, TRUE);
            param0->unk_708 = SetMessageWindowText(param0->messageWindow, heapID, 360, 7, TEXT_COLOR(1, 2, 15), TEXT_SPEED_NO_TRANSFER);
        }
        break;
    }
}

static u8 SetMessageWindowText(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor, u32 renderDelay)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
    GF_ASSERT(msgLoader);
    String *string = MessageLoader_GetNewString(msgLoader, entryID);

    Window_FillTilemap(window, 15);
    u8 printerID = Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, 0, 0, renderDelay, textColor, NULL);
    Window_DrawMessageBoxWithScrollCursor(window, FALSE, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX);

    String_Free(string);
    MessageLoader_Free(msgLoader);

    return printerID;
}

static u8 SetMessageWindowTextAndSaveToString(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor, u32 renderDelay, String **string)
{
    GF_ASSERT((*string) == NULL);

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
    GF_ASSERT(msgLoader);

    *string = MessageLoader_GetNewString(msgLoader, entryID);
    Window_FillTilemap(window, 15);
    u8 printerID = Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, *string, 0, 0, renderDelay, textColor, NULL);

    Window_DrawMessageBoxWithScrollCursor(window, FALSE, FRAME_TEXT_START, FRAME_TEXT_PALETTE_INDEX);
    MessageLoader_Free(msgLoader);

    return printerID;
}

static void DeleteStringBuffer(ChooseStarterApp *app)
{
    String_Free(app->string);
    app->string = NULL;
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

static void startCameraMovement(ChooseStarterCameraMovement *cameraMovement, Camera *camera, VecFx32 *target)
{
    GF_ASSERT(cameraMovement->movementTask == NULL);

    ov78_021D2108(&cameraMovement->unk_00, (-30 * 0xffff) / 360, (-50 * 0xffff) / 360, 6);
    ov78_021D2108(&cameraMovement->unk_10, 300 << FX32_SHIFT, 200 << FX32_SHIFT, 6);
    ov78_021D2108(&cameraMovement->unk_20, 0, 36 * FX32_ONE, 6);

    cameraMovement->unk_3C = 0;
    cameraMovement->camera = camera;
    cameraMovement->target = target;
    cameraMovement->unk_38 = 0;

    SysTask_Start(ov78_021D219C, cameraMovement, 0);
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

    v0->target->z = v0->unk_20.unk_00;
    v0->unk_38++;

    if (v1 == 1) {
        SysTask_Done(param0);
        v0->movementTask = NULL;
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

    // changing to designated initializers breaks the checksum.
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

static void ShowCursor(ChooseStarterCursor *cursor, BOOL show)
{
    Sprite_SetDrawFlag(cursor->sprite, show);
}

static void SetCursorPosition(ChooseStarterCursor *cursor, int x, int y)
{
    cursor->position.x = x << FX32_SHIFT;
    cursor->position.y = y << FX32_SHIFT;
}

static void MakePreviewWindow(StarterPreviewWindow *param0, ChooseStarterApp *param1, int param2)
{
    SoftwareSpritePaletteTemplate v1;
    SoftwareSpriteTemplate v2;

    param0->unk_0C = Graphics_GetCharData(NARC_INDEX_GRAPHIC__EV_POKESELECT, 14, 0, &param0->unk_14, param2);
    param0->unk_10 = Graphics_GetPlttData(NARC_INDEX_GRAPHIC__EV_POKESELECT, 15, &param0->unk_18, param2);

    SoftwareSpriteCharsTemplate v0 = {
        .softSpriteMan = param1->spriteDisplay,
        .charsData = param0->unk_14
    };

    param0->unk_00 = SoftwareSprite_LoadChars(&v0);

    // changing to designated initializers breaks the checksum.
    v1.softSpriteMan = param1->spriteDisplay;
    v1.paletteData = param0->unk_18;
    v1.paletteSlot = 1;

    param0->unk_04 = SoftwareSprite_LoadPalette(&v1);

    // changing to designated initializers breaks the checksum.
    v2.softSpriteMan = param1->spriteDisplay;
    v2.chars = param0->unk_00;
    v2.palette = param0->unk_04;
    v2.xPos = 0;
    v2.yPos = 0;
    v2.rotation = 0;
    v2.alpha = 31;
    v2.priority = 1022;
    v2.paletteSlot = 0;

    param0->sprite = SoftwareSprite_Load(&v2);

    SoftwareSprite_SetVisible(param0->sprite, 0);
    SoftwareSprite_SetCenter(param0->sprite, 128 / 2, 128 / 2);
}

static void DeletePreviewWindow(StarterPreviewWindow *previewWindow)
{
    SoftwareSprite_Reset(previewWindow->sprite);
    SoftwareSprite_FreeChars(previewWindow->unk_00);
    SoftwareSprite_FreePalette(previewWindow->unk_04);
    Heap_Free(previewWindow->unk_0C);
    Heap_Free(previewWindow->unk_10);
}

static void ShowPreviewWindow(StarterPreviewWindow *previewWindow, BOOL show)
{
    SoftwareSprite_SetVisible(previewWindow->sprite, show);
}

static void StartPreviewWindowMovement(StarterPreviewWindow *previewWindow, fx32 param1, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, int param7)
{
    GF_ASSERT(previewWindow->movementTask == NULL);

    ov78_021D2108(&previewWindow->unk_1C.unk_00, param1, param2, param7);
    ov78_021D2108(&previewWindow->unk_1C.unk_10, param3, param4, param7);
    ov78_021D2108(&previewWindow->unk_1C.unk_20, param5, param6, param7);

    previewWindow->unk_1C.unk_30 = 0;
    previewWindow->unk_1C.unk_34 = 1;
    previewWindow->movementTask = SysTask_Start(ov78_021D25A0, previewWindow, 0);
}

static void StartOtherPreviewMovement(StarterPreviewWindow *previewWindow)
{
    GF_ASSERT(previewWindow->movementTask == NULL);

    previewWindow->unk_1C.unk_34 = -2;

    if (previewWindow->unk_1C.unk_30 >= previewWindow->unk_1C.unk_00.unk_0C) {
        previewWindow->unk_1C.unk_30 = previewWindow->unk_1C.unk_00.unk_0C + previewWindow->unk_1C.unk_34;
    }

    previewWindow->movementTask = SysTask_Start(ov78_021D25A0, previewWindow, 0);
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

    SoftwareSprite_SetPosition(v0->sprite, v2 >> FX32_SHIFT, v3 >> FX32_SHIFT);
    SoftwareSprite_SetScalingFactors(v0->sprite, v0->unk_1C.unk_20.unk_00, v0->unk_1C.unk_20.unk_00);

    if ((v1 == 1) || (v0->unk_1C.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->movementTask = NULL;
    }

    v0->unk_1C.unk_30 += v0->unk_1C.unk_34;
}

static BOOL ov78_021D2608(StarterPreviewWindow *param0)
{
    if (param0->movementTask) {
        return 0;
    }

    return 1;
}

static void ov78_021D2618(ChooseStarterApp *param0)
{
    fx32 v0, v1;

    v0 = param0->unk_7C[param0->cursorPosition][0] << FX32_SHIFT;
    v1 = (param0->unk_7C[param0->cursorPosition][1] + 48) << FX32_SHIFT;

    StartPreviewWindowMovement(&param0->previewWindow, v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, FX32_CONST(0.40f), FX32_CONST(1.0f), 6);
    StartPreviewGraphicsMovement(&param0->previewGraphics, param0->sprites[param0->cursorPosition], v0, 128 << FX32_SHIFT, v1, 96 << FX32_SHIFT, FX32_CONST(0.40f), FX32_CONST(1.0f), 6);
}

static void ov78_021D2688(ChooseStarterApp *param0)
{
    StartOtherPreviewMovement(&param0->previewWindow);
    StartOtherPreviewGraphicsMovement(&param0->previewGraphics);
}

static BOOL ov78_021D26A4(ChooseStarterApp *param0)
{
    return ov78_021D2608(&param0->previewWindow);
}

static void StartPreviewGraphicsMovement(StarterPreviewGraphics *previewGraphics, PokemonSprite *sprite, fx32 param2, fx32 param3, fx32 param4, fx32 param5, fx32 param6, fx32 param7, int param8)
{
    GF_ASSERT(previewGraphics->movementTask == NULL);

    ov78_021D2108(&previewGraphics->unk_04.unk_00, param2, param3, param8);
    ov78_021D2108(&previewGraphics->unk_04.unk_10, param4, param5, param8);
    ov78_021D2108(&previewGraphics->unk_04.unk_20, param6, param7, param8);

    previewGraphics->sprite = sprite;
    previewGraphics->unk_04.unk_30 = 0;
    previewGraphics->unk_04.unk_34 = 1;
    previewGraphics->movementTask = SysTask_Start(ov78_021D2740, previewGraphics, 0);
}

static void StartOtherPreviewGraphicsMovement(StarterPreviewGraphics *previewGraphics)
{
    GF_ASSERT(previewGraphics->movementTask == NULL);

    previewGraphics->unk_04.unk_34 = -2;

    if (previewGraphics->unk_04.unk_30 >= previewGraphics->unk_04.unk_00.unk_0C) {
        previewGraphics->unk_04.unk_30 = previewGraphics->unk_04.unk_00.unk_0C + previewGraphics->unk_04.unk_34;
    }

    previewGraphics->movementTask = SysTask_Start(ov78_021D2740, previewGraphics, 0);
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

    PokemonSprite_SetAttribute(v0->sprite, MON_SPRITE_X_CENTER, v0->unk_04.unk_00.unk_00 >> FX32_SHIFT);
    PokemonSprite_SetAttribute(v0->sprite, MON_SPRITE_Y_CENTER, v0->unk_04.unk_10.unk_00 >> FX32_SHIFT);
    PokemonSprite_SetAttribute(v0->sprite, MON_SPRITE_SCALE_X, v2);
    PokemonSprite_SetAttribute(v0->sprite, MON_SPRITE_SCALE_Y, v2);

    if ((v1 == 1) || (v0->unk_04.unk_30 < 0)) {
        SysTask_Done(param0);
        v0->movementTask = NULL;
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
        SetSubplaneWindowText(param0->subplaneWindows[i], heapID, 360, 4 + i, TEXT_COLOR(1, 2, 10));
    }
}

static void DeleteSubplaneWindows(ChooseStarterApp *app)
{
    for (int i = 0; i < NUM_STARTER_OPTIONS; i++) {
        Window_Remove(app->subplaneWindows[i]);
        Heap_Free(app->subplaneWindows[i]);
    }
}

static void SetSubplaneWindowText(Window *window, enum HeapID heapID, int bankID, int entryID, TextColor textColor)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, bankID, heapID);
    GF_ASSERT(msgLoader);
    String *string = MessageLoader_GetNewString(msgLoader, entryID);

    Window_FillTilemap(window, ((textColor) >> 0) & 0xff);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 1, 0, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
    String_Free(string);
    MessageLoader_Free(msgLoader);
}

static void DeleteSubplaneWindow(ChooseStarterApp *app)
{
    Window_ClearAndCopyToVRAM(app->subplaneWindows[app->unk_A8]);
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
