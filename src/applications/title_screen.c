#include "text/bank/title_screen.h"

#include <nitro/gx/g3.h>
#include <nitro/types.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/species.h"

#include "game_opening/const_ov77_021D742C.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "easy3d.h"
#include "easy3d_object.h"
#include "font.h"
#include "fx_util.h"
#include "g3d_pipeline.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "system.h"
#include "text.h"
#include "unk_0202419C.h"

#include "res/graphics/title_screen/titledemo.naix"

FS_EXTERN_OVERLAY(game_opening);
FS_EXTERN_OVERLAY(main_menu);
FS_EXTERN_OVERLAY(d_startmenu);

#define LIGHT_COLOR(r, g, b) ((((r) << 0) & GX_RGB_R_MASK) | (((g) << 5) & GX_RGB_G_MASK) | (((b) << 10) & GX_RGB_B_MASK))
#define ANGLE(angle)         FX_DEG_TO_IDX(FX32_CONST(angle))

#define TITLE_SCREEN_LAYER_GIRATINA    BG_LAYER_MAIN_0
#define TITLE_SCREEN_LAYER_COPYRIGHT   BG_LAYER_MAIN_1
#define TITLE_SCREEN_LAYER_GIRATINA_BG BG_LAYER_MAIN_3
#define TITLE_SCREEN_LAYER_PRESS_START BG_LAYER_SUB_0
#define TITLE_SCREEN_LAYER_LOGO_BG_2   BG_LAYER_SUB_1
#define TITLE_SCREEN_LAYER_LOGO        BG_LAYER_SUB_2
#define TITLE_SCREEN_LAYER_LOGO_BG     BG_LAYER_SUB_3

#define TITLE_CAM_MOVE_IN_FRAMES            60 // How long the title camera takes to move in
#define TITLE_SCREEN_INPUT_DISABLE_FRAMES   30 // How long the inputs are disabled for after the intro
#define TITLE_SCREEN_REPLAY_OPENING_FRAMES  900 // After how long the opening cutscene is replayed
#define TITLE_SCREEN_EXIT_FADE_DELAY_FRAMES 10 // After how long the title screen is faded out after pressing Start

#define LIGHT1_BRIGHTNESS_MIN  5
#define LIGHT1_BRIGHTNESS_MAX  31
#define LIGHT1_BRIGHTNESS_STEP 2

#define INTRO_CAM_PITCH_START ANGLE(319.94)
#define INTRO_CAM_PITCH_END   ANGLE(270.094)

// These angles are divided by 256 before being passed to Camera_AdjustFOV.
// The actual angles are denoted in the comments below.
#define INTRO_CAM_FOV_STEP_START  ANGLE(168.75) // Actually ~0.66°
#define INTRO_CAM_FOV_STEP_REDUCE ANGLE(3.516) // Actually ~0.0137°
#define INTRO_CAM_FOV_STEP_MIN    ANGLE(22.5) // Actually ~0.088°

enum TitleScreenAppState {
    TITLE_SCREEN_APP_STATE_INIT_RESOURCES,
    TITLE_SCREEN_APP_STATE_SHOW_INTRO,
    TITLE_SCREEN_APP_STATE_INIT_SOUND,
    TITLE_SCREEN_APP_STATE_MAIN,
    TITLE_SCREEN_APP_STATE_EXIT_NORMAL,
    TITLE_SCREEN_APP_STATE_EXIT_REPLAY_OPENING,
    TITLE_SCREEN_APP_STATE_CLEANUP,
};

enum TitleScreenIntroState {
    INTRO_STATE_FADE_FROM_BLACK = 0,
    INTRO_STATE_WAIT_FOR_FADE,
    INTRO_STATE_WAIT_AND_FADE_TO_WHITE,
    INTRO_STATE_WAIT_AND_FADE_FROM_WHITE,
    INTRO_STATE_RESET_COUNTER,
    INTRO_STATE_WAIT_AND_FADE_TO_WHITE_2,
    INTRO_STATE_WAIT_AND_FADE_MAIN_FROM_WHITE,
    INTRO_STATE_FADE_MAIN_FROM_BLACK,
    INTRO_STATE_WAIT_FOR_DELAY,
    INTRO_STATE_MOVE_IN_TITLE_CAMERA,
    INTRO_STATE_WAIT_FOR_DELAY_AND_FADE,
};

enum TitleScreenMainState {
    MAIN_STATE_CONFIGURE_BGS = 0,
    MAIN_STATE_BLINK_TEXT,
};

enum Light1State {
    LIGHT1_STATE_DEFAULT = 0,
    LIGHT1_STATE_IDLE,
    LIGHT1_STATE_BRIGHTEN,
    LIGHT1_STATE_DARKEN,
};

enum GiratinaFaceState {
    GIRATINA_FACE_STATE_HIDDEN = 0,
    GIRATINA_FACE_STATE_SHOWN,
    GIRATINA_FACE_STATE_DONE,
};

enum GiratinaAnimState {
    GIRATINA_ANIM_STATE_DISABLED = 0, // No animation
    GIRATINA_ANIM_STATE_STOP, // Let the animation run until the end and then stop
    GIRATINA_ANIM_STATE_PLAY, // Play the animation from the start
};

enum TitleScreenRenderState {
    RENDER_STATE_OFF = 0, // No rendering
    RENDER_STATE_DISABLE, // Reset GFX pipeline and disable rendering after
    RENDER_STATE_ENABLE, // Enable rendering
};

enum TitleScreenNextApp {
    NEXT_APP_NONE = 0,
    NEXT_APP_START_MENU,
    NEXT_APP_CLEAR_SAVE_FILE,
    NEXT_APP_REPLAY_OPENING,
};

typedef struct TitleScreenGraphics {
    enum TitleScreenRenderState renderState;
    NNSG3dRenderObj giratinaRenderObj;
    NNSG3dResMdl *giratinaModel;
    NNSG3dResFileHeader *giratinaModelRes;
    void *giratinaTexAnimRes;
    void *giratinaAnimRes;
    NNSG3dAnmObj *giratinaTexAnim;
    NNSG3dAnmObj *giratinaAnim;
    NNSFndAllocator allocator;
    VecFx32 giratinaPos;
    VecFx32 giratinaScale;
    VecFx32 giratinaRot;
    Camera *titleCamera;
    Camera *introCamera;
    enum GiratinaAnimState giratinaAnimState;
    Easy3DObject giratinaFaceObj;
    Easy3DAnim giratinaFaceAnim;
    Easy3DAnim giratinaFaceMatAnim;
    Easy3DModel giratinaFaceModel;
    Easy3DObject portalObj;
    Easy3DAnim portalAnim;
    Easy3DAnim portalTexAnim;
    Easy3DModel portalModel;
    u32 introFrameCounter;
    int introCamPitchStep;
    int introCamPitch;
    fx32 unused;
    int introCamFovStep; // Amount by which the camera FOV is adjusted each frame
    u8 giratinaFaceAnimState;
    u8 giratinaFaceMatAnimState;
} TitleScreenGraphics;

typedef struct TitleScreenUnusedStruct {
    int unused0;
    TitleScreenGraphics unused1;
} TitleScreenUnusedStruct;

typedef struct TitleScreen {
    int state;
    TitleScreenGraphics graphics;
    union {
        u16 delay;
        u16 fadeCount;
        u16 blinkCounter;
    };
    Window pressStartWindow;
    VecFx32 titleCamTarget;
    VecFx32 titleCamPos;
    BOOL enableInputs;
    VecFx32 titleCamStartPos;
    VecFx32 titleCamEndPos;
    VecFx32 titleCamStartTarget;
    VecFx32 titleCamEndTarget;
    VecFx16 light0Dir;
    VecFx16 light1Dir;
    u16 light1Brightness;
    u16 light1State; // See enum Light1State
    fx32 unused0;
    BOOL giratinaShown; // Giratina 3D model shown
    BOOL introShown; // Sky pillar portal with Giratina face shown
    int titleCamMoveInCounter;
    int giratinaHoverAngle;
    int unused1;
} TitleScreen;

typedef struct TitleScreenAppData {
    enum HeapID heapID;
    BgConfig *bgConfig;
    G3DPipelineBuffers *buffers;
    TitleScreenUnusedStruct unused0;
    TitleScreen titleScreen;
    u16 nextApp;
    int inputEnableDelay; // How long the inputs are disabled for after the intro
    int unused1;
    int unused2;
    int titleScreenTimer; // How long the title screen has been shown for
    int exitFadeTimer;
} TitleScreenAppData;

extern const ApplicationManagerTemplate Unk_020F8A48;
extern const ApplicationManagerTemplate Unk_020F8AB4;
extern const ApplicationManagerTemplate gOpeningCutsceneAppTemplate;

static BOOL TitleScreen_Init(ApplicationManager *appMan, int *state);
static BOOL TitleScreen_Main(ApplicationManager *appMan, int *state);
static BOOL TitleScreen_Exit(ApplicationManager *appMan, int *state);
static void TitleScreen_VBlank(void *param);
static void TitleScreen_SetVRAMBanks(void);
static void TitleScreen_InitBgs(TitleScreenAppData *appData);
static void TitleScreen_ReleaseBgs(TitleScreenAppData *appData);
static void TitleScreen_Init3DPipeline(TitleScreenAppData *appData);
static void TitleScreen_Free3DPipelineBuffers(TitleScreenAppData *appData);
static void TitleScreen_Load3DGfx(TitleScreenGraphics *gfx, int giratinaModel, int giratinaTexAnim, enum HeapID heapID);
static void TitleScreen_Release3DGfx(TitleScreenGraphics *gfx);
static void TitleScreen_Render(TitleScreen *titleScreen, TitleScreenGraphics *gfx);
static BOOL TitleScreen_ShouldSkipIntro(void);
static BOOL TitleScreen_LoadGfx(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID);
static BOOL TitleScreen_ShowIntro(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID);
static BOOL TitleScreen_RenderMain(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID);
static BOOL TitleScreen_ReleaseGfx(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID);
static void TitleScreen_LoadCutscene3DGfx(TitleScreenGraphics *gfx, enum HeapID heapID);
static void TitleScreen_ReleaseIntro3DGfx(TitleScreenGraphics *gfx);
static void TitleScreen_RenderIntroGraphics(TitleScreenGraphics *gfx);
static void TitleScreen_UpdateIntroCamera(TitleScreen *titleScreen, TitleScreenGraphics *gfx);
static void TitleScreen_ShowBlurEffect(BgConfig *bgConfig, enum HeapID heapID);
static void EmptyCameraFunction(Camera *camera);
static void TitleScreen_Load2DGfx(BgConfig *bgConfig, enum HeapID heapID, TitleScreen *titleScreen);
static void TitleScreen_Release2DGfx(BgConfig *bgConfig, enum HeapID heapID, TitleScreen *titleScreen);
static void TitleScreen_InitCoordinates(TitleScreen *titleScreen);
static void TitleScreen_UpdateLight1(TitleScreen *titleScreen);

const ApplicationManagerTemplate gTitleScreenAppTemplate = {
    .init = TitleScreen_Init,
    .main = TitleScreen_Main,
    .exit = TitleScreen_Exit,
    .overlayID = FS_OVERLAY_ID_NONE
};

static inline void ToggleGiratinaLayer(BOOL enable)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, enable);
}

static inline void ToggleGiratinaBgLayer(BOOL enable)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, enable);
}

static inline void ToggleCopyrightLayer(BOOL enable)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, enable);
}

static inline void ToggleLogoBgLayer(BOOL enable)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, enable);
}

static inline void ToggleLogoLayer(BOOL enable)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, enable);
}

static inline void TogglePressStartLayer(BOOL enable)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, enable);
}

static inline void ToggleLogoBg2Layer(BOOL enable)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, enable);
}

static inline void DisableAllLayers(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, FALSE);
}

static BOOL TitleScreen_Init(ApplicationManager *appMan, int *unused)
{
    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

    G2S_BlendNone();
    G2_BlendNone();

    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    SetAutorepeat(4, 8);

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_DISTORTION_WORLD_WARP, 0x40000);

    TitleScreenAppData *appData = ApplicationManager_NewData(appMan, sizeof(TitleScreenAppData), HEAP_ID_DISTORTION_WORLD_WARP);
    memset(appData, 0, sizeof(TitleScreenAppData));

    appData->heapID = HEAP_ID_DISTORTION_WORLD_WARP;
    appData->nextApp = NEXT_APP_NONE;
    appData->titleScreenTimer = 0;

    TitleScreen_SetVRAMBanks();
    TitleScreen_InitBgs(appData);
    TitleScreen_Init3DPipeline(appData);

    SetVBlankCallback(TitleScreen_VBlank, appData);
    GXLayers_TurnBothDispOn();

    return TRUE;
}

static BOOL TitleScreen_Main(ApplicationManager *appMan, int *state)
{
    TitleScreenAppData *appData = ApplicationManager_Data(appMan);

    switch (*state) {
    case TITLE_SCREEN_APP_STATE_INIT_RESOURCES:
        if (TitleScreen_LoadGfx(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
            appData->titleScreen.state = INTRO_STATE_FADE_FROM_BLACK;

            if (!gSystem.showTitleScreenIntro) {
                appData->inputEnableDelay = TITLE_SCREEN_INPUT_DISABLE_FRAMES;
                appData->titleScreen.giratinaShown = TRUE;
                appData->titleScreen.introShown = FALSE;
                *state = TITLE_SCREEN_APP_STATE_INIT_SOUND;
            } else {
                appData->inputEnableDelay = 0;
                gSystem.showTitleScreenIntro = FALSE;
                appData->titleScreen.introShown = TRUE;
                *state = TITLE_SCREEN_APP_STATE_SHOW_INTRO;
            }
        }
        break;
    case TITLE_SCREEN_APP_STATE_SHOW_INTRO:
        if (TitleScreen_ShowIntro(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
            appData->titleScreen.state = 0;
            *state = TITLE_SCREEN_APP_STATE_INIT_SOUND;
        }
        break;
    case TITLE_SCREEN_APP_STATE_INIT_SOUND:
        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_TITLE_SCREEN, SEQ_TITLE01, 1);
        *state = TITLE_SCREEN_APP_STATE_MAIN;
        break;
    case TITLE_SCREEN_APP_STATE_MAIN:
        if (appData->inputEnableDelay) {
            appData->inputEnableDelay--;

            appData->titleScreen.enableInputs = FALSE;
            TitleScreen_RenderMain(&appData->titleScreen, appData->bgConfig, appData->heapID);
            break;
        } else {
            appData->titleScreen.enableInputs = TRUE;
            TitleScreen_RenderMain(&appData->titleScreen, appData->bgConfig, appData->heapID);
        }

        appData->titleScreenTimer++;

        if (JOY_NEW_ONLY(PAD_BUTTON_A) || JOY_NEW_ONLY(PAD_BUTTON_START)) {
            appData->nextApp = NEXT_APP_START_MENU;
            Sound_FadeOutBGM(0, 60);
            Sound_PlayPokemonCry(SPECIES_GIRATINA, 1);
            TitleScreen_ShowBlurEffect(appData->bgConfig, appData->heapID);
            *state = TITLE_SCREEN_APP_STATE_EXIT_NORMAL;
            break;
        }

        if (JOY_HELD_ONLY(PAD_BUTTON_B | PAD_KEY_UP | PAD_BUTTON_SELECT)) {
            appData->nextApp = NEXT_APP_CLEAR_SAVE_FILE;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, appData->heapID);
            *state = TITLE_SCREEN_APP_STATE_CLEANUP;
            break;
        }

        if (appData->titleScreenTimer > TITLE_SCREEN_REPLAY_OPENING_FRAMES) {
            appData->nextApp = NEXT_APP_REPLAY_OPENING;
            gSystem.showTitleScreenIntro = TRUE;

            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
            Sound_FadeOutBGM(0, 60);
            *state = TITLE_SCREEN_APP_STATE_EXIT_REPLAY_OPENING;
            break;
        }
        break;
    case TITLE_SCREEN_APP_STATE_EXIT_NORMAL:
        appData->titleScreen.enableInputs = FALSE;
        TitleScreen_RenderMain(&appData->titleScreen, appData->bgConfig, appData->heapID);

        if ((++appData->exitFadeTimer) == TITLE_SCREEN_EXIT_FADE_DELAY_FRAMES) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, appData->heapID);
        }

        if (Sound_IsPokemonCryPlaying() == FALSE && IsScreenFadeDone() == TRUE && appData->exitFadeTimer >= TITLE_SCREEN_EXIT_FADE_DELAY_FRAMES) {
            Sound_StopBGM(SEQ_TITLE01, 0);

            DisableAllLayers();

            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 6, 1, appData->heapID);
            *state = TITLE_SCREEN_APP_STATE_CLEANUP;
        }
        break;
    case TITLE_SCREEN_APP_STATE_EXIT_REPLAY_OPENING:
        appData->titleScreen.enableInputs = FALSE;
        TitleScreen_RenderMain(&appData->titleScreen, appData->bgConfig, appData->heapID);

        if (Sound_IsFadeActive() == FALSE) {
            Sound_StopBGM(SEQ_TITLE01, 0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 6, 1, appData->heapID);
            *state = TITLE_SCREEN_APP_STATE_CLEANUP;
        }
        break;
    case TITLE_SCREEN_APP_STATE_CLEANUP:
        if (IsScreenFadeDone() == TRUE) {
            if (TitleScreen_ReleaseGfx(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
                return TRUE;
            }
        }
        break;
    }

    return FALSE;
}

static BOOL TitleScreen_Exit(ApplicationManager *appMan, int *state)
{
    TitleScreenAppData *appData = ApplicationManager_Data(appMan);
    enum HeapID heapID = appData->heapID;
    enum TitleScreenNextApp nextApp = appData->nextApp;

    SetVBlankCallback(NULL, NULL);

    TitleScreen_Free3DPipelineBuffers(appData);
    TitleScreen_ReleaseBgs(appData);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    switch (nextApp) {
    default:
    case NEXT_APP_START_MENU:
        EnqueueApplication(FS_OVERLAY_ID_NONE, &Unk_020F8AB4);
        break;
    case NEXT_APP_CLEAR_SAVE_FILE:
        EnqueueApplication(FS_OVERLAY_ID_NONE, &Unk_020F8A48);
        break;
    case NEXT_APP_REPLAY_OPENING:
        Sound_SetScene(SOUND_SCENE_NONE);
        EnqueueApplication(FS_OVERLAY_ID(game_opening), &gOpeningCutsceneAppTemplate);
        break;
    }

    return TRUE;
}

static void TitleScreen_VBlank(void *param)
{
    TitleScreenAppData *appData = param;
    Bg_RunScheduledUpdates(appData->bgConfig);
}

static void TitleScreen_SetVRAMBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_B,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_0123_H,
        GX_VRAM_OBJ_NONE,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_NONE,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_A,
        GX_VRAM_TEXPLTT_0_G
    };

    GXLayers_SetBanks(&banks);
}

static BOOL TitleScreen_ShouldSkipIntro(void)
{
    if (JOY_NEW_ONLY(PAD_BUTTON_A) || JOY_NEW_ONLY(PAD_BUTTON_START) || JOY_NEW_ONLY(PAD_BUTTON_SELECT)) {
        return TRUE;
    }

    return FALSE;
}

static void TitleScreen_Init3DPipeline(TitleScreenAppData *appData)
{
    appData->buffers = G3DPipeline_Init(appData->heapID, TEXTURE_VRAM_SIZE_128K, PALETTE_VRAM_SIZE_64K, NULL);
    G2_SetBG0Priority(1);
}

static void TitleScreen_Free3DPipelineBuffers(TitleScreenAppData *appData)
{
    G3DPipelineBuffers_Free(appData->buffers);
}

static void TitleScreen_Load3DGfx(TitleScreenGraphics *gfx, int giratinaModel, int giratinaTexAnim, enum HeapID heapID)
{
    HeapExp_FndInitAllocator(&gfx->allocator, heapID, 4);

    gfx->giratinaModelRes = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, giratinaModel, heapID);
    gfx->giratinaTexAnimRes = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, giratinaTexAnim, heapID);
    gfx->giratinaAnimRes = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, giratina_nsbca, heapID);

    Easy3D_InitRenderObjFromResource(&gfx->giratinaRenderObj, &gfx->giratinaModel, &gfx->giratinaModelRes);

    void *texAnim = NNS_G3dGetAnmByIdx(gfx->giratinaTexAnimRes, 0);
    void *skeletalAnim = NNS_G3dGetAnmByIdx(gfx->giratinaAnimRes, 0);

    gfx->giratinaTexAnim = NNS_G3dAllocAnmObj(&gfx->allocator, texAnim, gfx->giratinaModel);
    gfx->giratinaAnim = NNS_G3dAllocAnmObj(&gfx->allocator, skeletalAnim, gfx->giratinaModel);

    NNSG3dResTex *texRes = NNS_G3dGetTex(gfx->giratinaModelRes);

    NNS_G3dAnmObjInit(gfx->giratinaTexAnim, texAnim, gfx->giratinaModel, texRes);
    NNS_G3dAnmObjInit(gfx->giratinaAnim, skeletalAnim, gfx->giratinaModel, texRes);
    NNS_G3dRenderObjAddAnmObj(&gfx->giratinaRenderObj, gfx->giratinaTexAnim);
    NNS_G3dRenderObjAddAnmObj(&gfx->giratinaRenderObj, gfx->giratinaAnim);

    VecFx32 pos = { 0, 0, 0 };
    VecFx32 scale = { FX32_ONE, FX32_ONE, FX32_ONE };
    VecFx32 rot = { 0, 0, 0 };

    gfx->giratinaPos = pos;
    gfx->giratinaScale = scale;
    gfx->giratinaRot = rot;

    gfx->giratinaAnimState = GIRATINA_ANIM_STATE_DISABLED;

    TitleScreen_LoadCutscene3DGfx(gfx, heapID);
}

static void TitleScreen_LoadCutscene3DGfx(TitleScreenGraphics *gfx, enum HeapID heapID)
{
    NARC *narc = NARC_ctor(NARC_INDEX_DEMO__TITLE__TITLEDEMO, heapID);

    Easy3DModel_LoadFrom(&gfx->giratinaFaceModel, narc, giratina_face_nsbmd, heapID);

    NNS_G3dMdlUseMdlAlpha(gfx->giratinaFaceModel.model);
    NNS_G3dMdlUseMdlPolygonID(gfx->giratinaFaceModel.model);

    Easy3DAnim_LoadFrom(&gfx->giratinaFaceAnim, &gfx->giratinaFaceModel, narc, giratina_face_nsbca, heapID, &gfx->allocator);
    Easy3DAnim_SetFrame(&gfx->giratinaFaceAnim, 0);

    Easy3DAnim_LoadFrom(&gfx->giratinaFaceMatAnim, &gfx->giratinaFaceModel, narc, giratina_face_nsbma, heapID, &gfx->allocator);
    Easy3DAnim_SetFrame(&gfx->giratinaFaceMatAnim, 0);

    Easy3DObject_Init(&gfx->giratinaFaceObj, &gfx->giratinaFaceModel);

    Easy3DObject_SetPosition(&gfx->giratinaFaceObj, 0, 0, 0);
    Easy3DObject_SetScale(&gfx->giratinaFaceObj, FX32_ONE, FX32_ONE, FX32_ONE);
    Easy3DObject_SetVisible(&gfx->giratinaFaceObj, TRUE);

    Easy3DObject_AddAnim(&gfx->giratinaFaceObj, &gfx->giratinaFaceAnim);
    Easy3DObject_AddAnim(&gfx->giratinaFaceObj, &gfx->giratinaFaceMatAnim);

    Easy3DModel_LoadFrom(&gfx->portalModel, narc, giratina_portal_nsbmd, heapID);
    NNS_G3dMdlUseMdlAlpha(gfx->portalModel.model);
    NNS_G3dMdlUseMdlPolygonID(gfx->portalModel.model);

    Easy3DAnim_LoadFrom(&gfx->portalAnim, &gfx->portalModel, narc, giratina_portal_nsbca, heapID, &gfx->allocator);
    Easy3DAnim_SetFrame(&gfx->portalAnim, 0);

    Easy3DAnim_LoadFrom(&gfx->portalTexAnim, &gfx->portalModel, narc, giratina_portal_nsbta, heapID, &gfx->allocator);
    Easy3DAnim_SetFrame(&gfx->portalTexAnim, 0);

    Easy3DObject_Init(&gfx->portalObj, &gfx->portalModel);

    Easy3DObject_SetPosition(&gfx->portalObj, 0, 0, 0);
    Easy3DObject_SetScale(&gfx->portalObj, FX32_ONE, FX32_ONE, FX32_ONE);
    Easy3DObject_SetVisible(&gfx->portalObj, TRUE);

    Easy3DObject_AddAnim(&gfx->portalObj, &gfx->portalAnim);
    Easy3DObject_AddAnim(&gfx->portalObj, &gfx->portalTexAnim);

    NARC_dtor(narc);

    gfx->introCamPitchStep = (INTRO_CAM_PITCH_END - INTRO_CAM_PITCH_START) / 30;
    gfx->introCamPitch = INTRO_CAM_PITCH_START;
    gfx->unused = FX32_ONE;
    gfx->introCamFovStep = INTRO_CAM_FOV_STEP_START;
}

static void TitleScreen_Release3DGfx(TitleScreenGraphics *gfx)
{
    TitleScreen_ReleaseIntro3DGfx(gfx);

    NNS_G3dFreeAnmObj(&gfx->allocator, gfx->giratinaTexAnim);
    NNS_G3dFreeAnmObj(&gfx->allocator, gfx->giratinaAnim);

    Heap_Free(gfx->giratinaTexAnimRes);
    Heap_Free(gfx->giratinaAnimRes);
    Heap_Free(gfx->giratinaModelRes);
}

static void TitleScreen_ReleaseIntro3DGfx(TitleScreenGraphics *gfx)
{
    Easy3DModel_Release(&gfx->giratinaFaceModel);
    Easy3DAnim_Release(&gfx->giratinaFaceAnim, &gfx->allocator);
    Easy3DAnim_Release(&gfx->giratinaFaceMatAnim, &gfx->allocator);

    Easy3DModel_Release(&gfx->portalModel);
    Easy3DAnim_Release(&gfx->portalAnim, &gfx->allocator);
    Easy3DAnim_Release(&gfx->portalTexAnim, &gfx->allocator);
}

static void TitleScreen_Render(TitleScreen *titleScreen, TitleScreenGraphics *gfx)
{
    // Identity matrix
    MtxFx33 rotationMatrix = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

    if (titleScreen->giratinaShown == FALSE && titleScreen->introShown == TRUE) {
        EmptyCameraFunction(gfx->introCamera);
        Camera_ComputeProjectionMatrix(CAMERA_PROJECTION_PERSPECTIVE, gfx->introCamera);
        Camera_SetAsActive(gfx->introCamera);
    } else {
        Camera_ComputeProjectionMatrix(CAMERA_PROJECTION_PERSPECTIVE, gfx->titleCamera);
        Camera_SetAsActive(gfx->titleCamera);
    }

    titleScreen->giratinaHoverAngle += 2;
    titleScreen->giratinaHoverAngle %= 360;

    // BUG: This should pass the value in directly, since the function takes degrees as input, not an index.
    // But in practice this just slightly reduces the range of the hover so it isn't very noticeable.
    fx32 offset = CalcSineDegrees_Wraparound((titleScreen->giratinaHoverAngle * 0xFFFF) / 360);
    offset *= 0.3;
    gfx->giratinaPos.y -= offset;

    switch (gfx->renderState) {
    case RENDER_STATE_OFF:
        break;
    case RENDER_STATE_DISABLE:
        G3_ResetG3X();
        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        gfx->renderState = RENDER_STATE_OFF;
        break;
    case RENDER_STATE_ENABLE:
        G3_ResetG3X();
        Camera_ComputeViewMatrix();
        MTX_Rot33Vec(&rotationMatrix, &gfx->giratinaRot);

        if (titleScreen->giratinaShown == FALSE) {
            if (titleScreen->introShown == TRUE) {
                TitleScreen_RenderIntroGraphics(gfx);
            }
        } else {
            DC_FlushAll();
            Easy3D_DrawRenderObj(&gfx->giratinaRenderObj, &gfx->giratinaPos, &rotationMatrix, &gfx->giratinaScale);
        }

        switch (gfx->giratinaAnimState) {
        case GIRATINA_ANIM_STATE_DISABLED:
            gfx->giratinaTexAnim->frame = 0;
            gfx->giratinaAnim->frame = 0;
            break;
        case GIRATINA_ANIM_STATE_STOP:
            if (gfx->giratinaTexAnim->frame == 0) {
                gfx->giratinaAnimState = GIRATINA_ANIM_STATE_DISABLED;
                break;
            }
        case GIRATINA_ANIM_STATE_PLAY:
            gfx->giratinaTexAnim->frame += FX32_ONE;
            gfx->giratinaAnim->frame += FX32_ONE;

            if (gfx->giratinaTexAnim->frame == NNS_G3dAnmObjGetNumFrame(gfx->giratinaTexAnim)) {
                gfx->giratinaTexAnim->frame = 0;
            }

            if (gfx->giratinaAnim->frame == NNS_G3dAnmObjGetNumFrame(gfx->giratinaAnim)) {
                gfx->giratinaAnim->frame = 0;
            }
            break;
        }

        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        break;
    }
}

static void TitleScreen_RenderIntroGraphics(TitleScreenGraphics *gfx)
{
    if (gfx->giratinaFaceAnimState == GIRATINA_FACE_STATE_SHOWN) {
        if (Easy3DAnim_Update(&gfx->giratinaFaceAnim, FX32_ONE) == TRUE) {
            gfx->giratinaFaceAnimState = GIRATINA_FACE_STATE_DONE;
        }
    }

    if (gfx->giratinaFaceMatAnimState == GIRATINA_FACE_STATE_SHOWN) {
        if (Easy3DAnim_Update(&gfx->giratinaFaceMatAnim, FX32_ONE) == TRUE) {
            gfx->giratinaFaceMatAnimState = GIRATINA_FACE_STATE_DONE;
        }
    }

    Easy3DAnim_UpdateLooped(&gfx->portalAnim, FX32_ONE);
    Easy3DAnim_UpdateLooped(&gfx->portalTexAnim, FX32_ONE);

    NNS_G3dGePushMtx();

    Easy3DObject_Draw(&gfx->portalObj);

    if (gfx->giratinaFaceAnimState != GIRATINA_FACE_STATE_DONE || gfx->giratinaFaceMatAnimState != GIRATINA_FACE_STATE_DONE) {
        Easy3DObject_Draw(&gfx->giratinaFaceObj);
    } else {
        Easy3DObject_SetVisible(&gfx->giratinaFaceObj, FALSE);
    }

    NNS_G3dGePopMtx(1);
}

static void TitleScreen_InitBgs(TitleScreenAppData *appData)
{
    appData->bgConfig = BgConfig_New(appData->heapID);

    GraphicsModes gfxModes = {
        .displayMode = GX_DISPMODE_GRAPHICS,
        .mainBgMode = GX_BGMODE_0,
        .subBgMode = GX_BGMODE_0,
        .bg0As2DOr3D = GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&gfxModes);

    BgTemplate bgSub0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2800,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_PRESS_START, &bgSub0, BG_TYPE_STATIC);

    BgTemplate bgSub1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0x3000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, &bgSub1, BG_TYPE_STATIC);

    BgTemplate bgSub2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0x3800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_23,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO, &bgSub2, BG_TYPE_STATIC);

    BgTemplate bgMain1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3800,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_COPYRIGHT, &bgMain1, BG_TYPE_STATIC);

    BgTemplate bgMain3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_GIRATINA_BG, &bgMain3, BG_TYPE_STATIC);

    BgTemplate bgSub3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO_BG, &bgSub3, BG_TYPE_STATIC);

    DisableAllLayers();
    Bg_MaskPalette(TITLE_SCREEN_LAYER_GIRATINA, COLOR_BLACK);
    Bg_MaskPalette(TITLE_SCREEN_LAYER_PRESS_START, COLOR_BLACK);
}

static void TitleScreen_ReleaseBgs(TitleScreenAppData *appData)
{
    DisableAllLayers();

    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_PRESS_START);
    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2);
    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO);
    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_COPYRIGHT);
    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_GIRATINA_BG);
    Bg_FreeTilemapBuffer(appData->bgConfig, TITLE_SCREEN_LAYER_LOGO_BG);

    Heap_Free(appData->bgConfig);
}

static void TitleScreen_UpdateIntroCamera(TitleScreen *titleScreen, TitleScreenGraphics *gfx)
{
    VecFx32 offset = { 0, 0, 0 };
    CameraAngle angle = { 0, 0, 0, 0 };

    if (titleScreen->giratinaShown == TRUE) {
        return;
    }

    // Move camera towards the portal
    if (gfx->introFrameCounter < 60) {
        offset.z = -FX32_CONST(0.625);
        Camera_Move(&offset, gfx->introCamera);
    }

    if (gfx->introFrameCounter == 75) {
        gfx->giratinaFaceAnimState = 1;
        gfx->giratinaFaceMatAnimState = 1;
    }

    if (gfx->introFrameCounter >= 250) {
        angle = Camera_GetAngle(gfx->introCamera);
        angle.x = gfx->introCamPitch;

        Camera_SetAngleAroundTarget(&angle, gfx->introCamera);

        gfx->introCamPitch += gfx->introCamPitchStep;

        if (gfx->introCamPitch < INTRO_CAM_PITCH_END) {
            gfx->introCamPitch = INTRO_CAM_PITCH_END;

            // "Zoom in" on the portal
            Camera_AdjustFOV(-(gfx->introCamFovStep >> 8), gfx->introCamera);
            gfx->introCamFovStep -= INTRO_CAM_FOV_STEP_REDUCE;

            if (gfx->introCamFovStep < INTRO_CAM_FOV_STEP_MIN) {
                gfx->introCamFovStep = INTRO_CAM_FOV_STEP_MIN;
            }
        }
    }

    gfx->introFrameCounter++;
}

static const WindowTemplate sPressStartWindowTemplate = {
    .bgLayer = TITLE_SCREEN_LAYER_PRESS_START,
    .tilemapLeft = 2,
    .tilemapTop = 19,
    .width = 28,
    .height = 2,
    .palette = 2,
    .baseTile = 1
};

static BOOL TitleScreen_LoadGfx(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID)
{
    TitleScreen_InitCoordinates(titleScreen);
    TitleScreen_Load2DGfx(bgConfig, heapID, titleScreen);
    TitleScreen_Load3DGfx(&titleScreen->graphics, giratina_nsbmd, giratina_nsbta, heapID);

    G3X_AntiAlias(TRUE);
    G3X_AlphaBlend(TRUE);

    titleScreen->titleCamTarget.x = titleScreen->titleCamStartTarget.x;
    titleScreen->titleCamTarget.y = titleScreen->titleCamStartTarget.y;
    titleScreen->titleCamTarget.z = titleScreen->titleCamStartTarget.z;
    titleScreen->titleCamPos.x = titleScreen->titleCamStartPos.x;
    titleScreen->titleCamPos.y = titleScreen->titleCamStartPos.y;
    titleScreen->titleCamPos.z = titleScreen->titleCamStartPos.z;
    titleScreen->graphics.titleCamera = Camera_Alloc(heapID);

    Camera_InitWithTargetAndPosition(
        &titleScreen->titleCamTarget,
        &titleScreen->titleCamPos,
        FX_DEG_TO_IDX(FX32_CONST(15.996)),
        CAMERA_PROJECTION_PERSPECTIVE,
        FALSE,
        titleScreen->graphics.titleCamera);

    Camera_SetClipping(FX32_CONST(0), FX32_CONST(300), titleScreen->graphics.titleCamera);
    Camera_ComputeProjectionMatrix(CAMERA_PROJECTION_PERSPECTIVE, titleScreen->graphics.titleCamera);
    Camera_SetAsActive(titleScreen->graphics.titleCamera);

    static const CameraAngle angle = { FX_DEG_TO_IDX(FX32_CONST(319.94)), 0, 0 };
    VecFx32 target = { 0, 0, 0 };

    titleScreen->graphics.introCamera = Camera_Alloc(heapID);

    Camera_InitWithTarget(
        &target,
        FX32_CONST(160),
        &angle,
        FX_DEG_TO_IDX(FX32_CONST(21.994)),
        CAMERA_PROJECTION_PERSPECTIVE,
        FALSE,
        titleScreen->graphics.introCamera);

    Camera_SetClipping(FX32_CONST(0), FX32_CONST(300), titleScreen->graphics.introCamera);

    VecFx32 pos = { 0, 0, FX32_CONST(37.5) };
    Camera_Move(&pos, titleScreen->graphics.introCamera);
    Camera_SetAsActive(titleScreen->graphics.introCamera);

    NNS_G3dGlbLightVector(GX_LIGHTID_0, titleScreen->light0Dir.x, titleScreen->light0Dir.y, titleScreen->light0Dir.z);
    NNS_G3dGlbLightColor(GX_LIGHTID_0, COLOR_WHITE);
    NNS_G3dGlbLightVector(GX_LIGHTID_1, titleScreen->light1Dir.x, titleScreen->light1Dir.y, titleScreen->light1Dir.z);
    NNS_G3dGlbLightColor(GX_LIGHTID_1, COLOR_WHITE);

    G3X_AntiAlias(TRUE);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;
    GXLayers_SwapDisplay();
    titleScreen->graphics.renderState = RENDER_STATE_ENABLE;

    return TRUE;
}

static void TitleScreen_UpdateTitleCam(TitleScreen *titleScreen)
{
    fx32 steps = TITLE_CAM_MOVE_IN_FRAMES;

    titleScreen->titleCamTarget.x += (titleScreen->titleCamEndTarget.x - titleScreen->titleCamStartTarget.x) / steps;
    titleScreen->titleCamTarget.y += (titleScreen->titleCamEndTarget.y - titleScreen->titleCamStartTarget.y) / steps;
    titleScreen->titleCamTarget.z += (titleScreen->titleCamEndTarget.z - titleScreen->titleCamStartTarget.z) / steps;

    titleScreen->titleCamPos.x += (titleScreen->titleCamEndPos.x - titleScreen->titleCamStartPos.x) / steps;
    titleScreen->titleCamPos.y += (titleScreen->titleCamEndPos.y - titleScreen->titleCamStartPos.y) / steps;
    titleScreen->titleCamPos.z += (titleScreen->titleCamEndPos.z - titleScreen->titleCamStartPos.z) / steps;
}

static void TitleScreen_LoadTopScreenBg(BgConfig *bgConfig, enum HeapID heapID)
{
    Bg_FreeTilemapBuffer(bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2);

    BgTemplate template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, &template, BG_TYPE_STATIC);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCGR, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_2_NSCR, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, 0, 0, FALSE, heapID);

    G2_BlendNone();
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 10, 10);

    ToggleLogoBg2Layer(TRUE);
}

static void TitleScreen_ShowBlurEffect(BgConfig *bgConfig, enum HeapID heapID)
{
    // This function loads the logo tilemap a second time into a different layer,
    // offsets that layer slightly, and applies alpha blending to both layers.

    // Clear "Press Start" tilemap
    Bg_FreeTilemapBuffer(bgConfig, TITLE_SCREEN_LAYER_PRESS_START);

    BgTemplate template = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_256,
        .screenBase = GX_BG_SCRBASE_0x2800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_23,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(bgConfig, TITLE_SCREEN_LAYER_PRESS_START, &template, BG_TYPE_STATIC);

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NSCR, bgConfig, TITLE_SCREEN_LAYER_PRESS_START, 0, 0, FALSE, heapID);

    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(0);
    G2S_SetBG3Priority(2);

    Bg_SetOffset(bgConfig, TITLE_SCREEN_LAYER_LOGO, BG_OFFSET_UPDATE_SET_X, 0);
    Bg_SetOffset(bgConfig, TITLE_SCREEN_LAYER_LOGO, BG_OFFSET_UPDATE_SET_Y, 1);

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 26, 10);

    TogglePressStartLayer(TRUE);
}

static BOOL TitleScreen_ShowIntro(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID)
{
    BOOL done = FALSE;

    if (TitleScreen_ShouldSkipIntro() == TRUE) {
        titleScreen->giratinaShown = TRUE;
        titleScreen->introShown = FALSE;
        FinishScreenFade();
        BrightnessController_ResetScreenController(BRIGHTNESS_BOTH_SCREENS);
        return TRUE;
    }

    switch (titleScreen->state) {
    case INTRO_STATE_FADE_FROM_BLACK:
        ToggleGiratinaLayer(TRUE);
        titleScreen->light1State = LIGHT1_STATE_DEFAULT;

        // Roughly a 9s delay. During this time the portal animation plays.
        titleScreen->delay = 267;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 15, 3, heapID);
        titleScreen->state = INTRO_STATE_WAIT_FOR_FADE;
        break;
    case INTRO_STATE_WAIT_FOR_FADE:
        if (IsScreenFadeDone() == TRUE) {
            if (titleScreen->delay) {
                titleScreen->delay--;
            } else {
                titleScreen->fadeCount = 2; // Do 2 white flashes
                titleScreen->state = INTRO_STATE_WAIT_AND_FADE_TO_WHITE;
            }
        }
        break;
    case INTRO_STATE_WAIT_AND_FADE_TO_WHITE:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE && BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE) {
            if (titleScreen->fadeCount != 0) {
                // Fade both screens from normal brightness to white
                BrightnessController_StartTransition(
                    10,
                    BRIGHTNESS_WHITE,
                    BRIGHTNESS_NORMAL,
                    GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2,
                    BRIGHTNESS_MAIN_SCREEN);
                BrightnessController_StartTransition(
                    10,
                    BRIGHTNESS_WHITE,
                    BRIGHTNESS_NORMAL,
                    GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD,
                    BRIGHTNESS_SUB_SCREEN);

                titleScreen->light1State = LIGHT1_STATE_BRIGHTEN;
                titleScreen->fadeCount--;
                titleScreen->state = INTRO_STATE_WAIT_AND_FADE_FROM_WHITE;
            } else {
                titleScreen->fadeCount = 0;
                titleScreen->state = INTRO_STATE_RESET_COUNTER;
            }
        }
        break;
    case INTRO_STATE_WAIT_AND_FADE_FROM_WHITE:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE && BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE) {
            // Fade both screens from white to normal brightness
            BrightnessController_StartTransition(
                10,
                BRIGHTNESS_NORMAL,
                BRIGHTNESS_WHITE,
                GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2,
                BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(
                10,
                BRIGHTNESS_NORMAL,
                BRIGHTNESS_WHITE,
                GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD,
                BRIGHTNESS_SUB_SCREEN);

            titleScreen->light1State = LIGHT1_STATE_DARKEN;
            titleScreen->state = INTRO_STATE_WAIT_AND_FADE_TO_WHITE;
        }
        break;
    case INTRO_STATE_RESET_COUNTER:
        if (titleScreen->fadeCount != 0) {
            titleScreen->fadeCount--;
        } else {
            titleScreen->fadeCount = 1;
            titleScreen->state = INTRO_STATE_WAIT_AND_FADE_TO_WHITE_2;
        }
        break;
    case INTRO_STATE_WAIT_AND_FADE_TO_WHITE_2:
        if (IsScreenFadeDone() == TRUE) {
            if (titleScreen->fadeCount) {
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_WHITE, 5, 2, heapID);
                titleScreen->light1State = LIGHT1_STATE_BRIGHTEN;
                titleScreen->fadeCount--;
                titleScreen->state = INTRO_STATE_WAIT_AND_FADE_MAIN_FROM_WHITE;
            } else {
                titleScreen->delay = 10;
                titleScreen->state = INTRO_STATE_WAIT_FOR_DELAY;
                titleScreen->giratinaShown = TRUE;
                SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
            }
        }
        break;
    case INTRO_STATE_WAIT_AND_FADE_MAIN_FROM_WHITE:
        if (IsScreenFadeDone() == TRUE) {
            titleScreen->introShown = FALSE;
            ToggleLogoBg2Layer(TRUE);
            titleScreen->graphics.giratinaAnimState = GIRATINA_ANIM_STATE_PLAY;
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 16, 3, heapID);
            titleScreen->state = INTRO_STATE_WAIT_AND_FADE_TO_WHITE_2;
        }
        break;
    case INTRO_STATE_WAIT_FOR_DELAY:
        if (titleScreen->delay) {
            titleScreen->delay--;
        } else {
            titleScreen->state = INTRO_STATE_FADE_MAIN_FROM_BLACK;
        }
        break;
    case INTRO_STATE_FADE_MAIN_FROM_BLACK:
        // Slowly fade in the Giratina model
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 48, 1, heapID);
        ToggleGiratinaBgLayer(TRUE);
        titleScreen->state = INTRO_STATE_MOVE_IN_TITLE_CAMERA;
        titleScreen->titleCamMoveInCounter = 0;
        break;
    case INTRO_STATE_MOVE_IN_TITLE_CAMERA:
        TitleScreen_UpdateTitleCam(titleScreen);
        Camera_SetTarget(&titleScreen->titleCamTarget, titleScreen->graphics.titleCamera);
        Camera_SetPosition(&titleScreen->titleCamPos, titleScreen->graphics.titleCamera);

        titleScreen->titleCamMoveInCounter++;

        if (titleScreen->titleCamMoveInCounter >= TITLE_CAM_MOVE_IN_FRAMES) {
            ToggleLogoLayer(TRUE);
            TitleScreen_LoadTopScreenBg(bgConfig, heapID);
            StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_WHITE, 16, 3, heapID);
            ToggleCopyrightLayer(TRUE);
            ToggleLogoBgLayer(TRUE);

            titleScreen->delay = 90;
            titleScreen->state = INTRO_STATE_WAIT_FOR_DELAY_AND_FADE;
        }
        break;
    case INTRO_STATE_WAIT_FOR_DELAY_AND_FADE:
        if (titleScreen->delay) {
            titleScreen->delay--;
        } else {
            if (IsScreenFadeDone() == TRUE) {
                done = TRUE;
            }
        }
        break;
    }

    TitleScreen_UpdateLight1(titleScreen);
    TitleScreen_UpdateIntroCamera(titleScreen, &titleScreen->graphics);
    TitleScreen_Render(titleScreen, &titleScreen->graphics);

    return done;
}

static BOOL TitleScreen_RenderMain(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID)
{
    BOOL result = FALSE;

    switch (titleScreen->state) {
    case MAIN_STATE_CONFIGURE_BGS:
        Camera_SetTarget(&titleScreen->titleCamEndTarget, titleScreen->graphics.titleCamera);
        Camera_SetPosition(&titleScreen->titleCamEndPos, titleScreen->graphics.titleCamera);
        ToggleGiratinaLayer(TRUE);
        ToggleGiratinaBgLayer(TRUE);
        ToggleLogoBgLayer(TRUE);
        ToggleLogoLayer(TRUE);
        ToggleCopyrightLayer(TRUE);

        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_SUB);

        titleScreen->graphics.giratinaAnimState = GIRATINA_ANIM_STATE_PLAY;
        NNS_G3dGlbLightColor(GX_LIGHTID_1, COLOR_WHITE);

        TitleScreen_LoadTopScreenBg(bgConfig, heapID);

        titleScreen->blinkCounter = 0;
        titleScreen->state = MAIN_STATE_BLINK_TEXT;
        break;
    case MAIN_STATE_BLINK_TEXT:
        if (titleScreen->enableInputs == 1) {
            if (titleScreen->blinkCounter == 0) {
                TogglePressStartLayer(TRUE);
            } else if (titleScreen->blinkCounter == 16) {
                TogglePressStartLayer(FALSE);
            }
        }

        titleScreen->blinkCounter++;
        titleScreen->blinkCounter &= 31;

        result = TRUE;
        break;
    }

    TitleScreen_Render(titleScreen, &titleScreen->graphics);

    return result;
}

static BOOL TitleScreen_ReleaseGfx(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapID heapID)
{
    Camera_Delete(titleScreen->graphics.titleCamera);
    Camera_Delete(titleScreen->graphics.introCamera);

    TitleScreen_Release3DGfx(&titleScreen->graphics);
    TitleScreen_Release2DGfx(bgConfig, heapID, titleScreen);

    G2_BlendNone();
    G3X_EdgeMarking(FALSE);

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    return TRUE;
}

static void TitleScreen_Load2DGfx(BgConfig *bgConfig, enum HeapID heapID, TitleScreen *titleScreen)
{
    // Borders
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCGR, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG, 0, 0, FALSE, heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NCGR, bgConfig, TITLE_SCREEN_LAYER_GIRATINA_BG, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NSCR, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NSCR, bgConfig, TITLE_SCREEN_LAYER_GIRATINA_BG, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCLR, PAL_LOAD_SUB_BG, 0, 0, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NCLR, PAL_LOAD_MAIN_BG, 0, 0, heapID);

    // Game Logo
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NCGR, bgConfig, TITLE_SCREEN_LAYER_LOGO, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NCLR, PAL_LOAD_SUB_BGEXT, 0x4000, 0, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NSCR, bgConfig, TITLE_SCREEN_LAYER_LOGO, 0, 0, FALSE, heapID);

    // Grayscale Pokemon Logo
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__OP_DEMO, 14, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__OP_DEMO, 13, PAL_LOAD_SUB_BGEXT, 0x2000, 0, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__OP_DEMO, 12, bgConfig, TITLE_SCREEN_LAYER_LOGO_BG_2, 0, 0, FALSE, heapID);

    // "GAME FREAK Presents"
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NCGR, bgConfig, TITLE_SCREEN_LAYER_COPYRIGHT, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NSCR, bgConfig, TITLE_SCREEN_LAYER_COPYRIGHT, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(1), 3 * PALETTE_SIZE_BYTES, heapID);

    Bg_MaskPalette(TITLE_SCREEN_LAYER_GIRATINA, COLOR_BLACK);
    Bg_MaskPalette(TITLE_SCREEN_LAYER_PRESS_START, COLOR_BLACK);

    Bg_ClearTilesRange(TITLE_SCREEN_LAYER_PRESS_START, 32, 0, heapID);

    MessageLoader *msgLoader = MessageLoader_Init(
        MSG_LOADER_LOAD_ON_DEMAND,
        NARC_INDEX_MSGDATA__PL_MSG,
        TEXT_BANK_TITLE_SCREEN,
        heapID);

    String *buffer = String_Init(64, heapID);

    Window_AddFromTemplate(bgConfig, &titleScreen->pressStartWindow, &sPressStartWindowTemplate);
    Window_FillRectWithColor(&titleScreen->pressStartWindow, 0, 0, 0, TILES_TO_PIXELS(28), TILES_TO_PIXELS(2));
    MessageLoader_GetString(msgLoader, TitleScreen_Text_PressStart, buffer);

    u32 xpos = Font_CalcCenterAlignment(FONT_SYSTEM, buffer, 1, titleScreen->pressStartWindow.width * TILE_HEIGHT_PIXELS);

    Text_AddPrinterWithParamsColorAndSpacing(
        &titleScreen->pressStartWindow,
        FONT_SYSTEM,
        buffer,
        xpos,
        0,
        TEXT_SPEED_INSTANT,
        TEXT_COLOR(1, 1, 0),
        1,
        0,
        NULL);

    String_Free(buffer);
    MessageLoader_Free(msgLoader);

    u16 letterColor = GX_RGB(21, 0, 0);
    u16 shadowColor = GX_RGB(21, 0, 0);
    Bg_LoadPalette(TITLE_SCREEN_LAYER_PRESS_START, &letterColor, sizeof(u16), PLTT_OFFSET(2) + 1 * sizeof(u16));
    Bg_LoadPalette(TITLE_SCREEN_LAYER_PRESS_START, &shadowColor, sizeof(u16), PLTT_OFFSET(2) + 2 * sizeof(u16));
}

static void TitleScreen_Release2DGfx(BgConfig *bgConfig, enum HeapID heapID, TitleScreen *titleScreen)
{
    Window_Remove(&titleScreen->pressStartWindow);
}

static void TitleScreen_UpdateLight1(TitleScreen *titleScreen)
{
    switch (titleScreen->light1State) {
    case LIGHT1_STATE_DEFAULT:
        titleScreen->light1Brightness = LIGHT1_BRIGHTNESS_MIN;
        titleScreen->light1State = LIGHT1_STATE_IDLE;
        break;
    case LIGHT1_STATE_IDLE:
        break;
    case LIGHT1_STATE_BRIGHTEN:
        titleScreen->light1Brightness += LIGHT1_BRIGHTNESS_STEP;

        if (titleScreen->light1Brightness >= LIGHT1_BRIGHTNESS_MAX) {
            titleScreen->light1Brightness = LIGHT1_BRIGHTNESS_MAX;
            titleScreen->light1State = LIGHT1_STATE_IDLE;
        }
        break;
    case LIGHT1_STATE_DARKEN:
        titleScreen->light1Brightness -= LIGHT1_BRIGHTNESS_STEP;

        if (titleScreen->light1Brightness <= LIGHT1_BRIGHTNESS_MIN) {
            titleScreen->light1Brightness = LIGHT1_BRIGHTNESS_MIN;
            titleScreen->light1State = LIGHT1_STATE_IDLE;
        }
        break;
    }

    NNS_G3dGlbLightColor(GX_LIGHTID_1, LIGHT_COLOR(titleScreen->light1Brightness, titleScreen->light1Brightness, titleScreen->light1Brightness));
}

static void TitleScreen_InitCoordinates(TitleScreen *titleScreen)
{
    titleScreen->titleCamStartPos.x = FX32_CONST(0);
    titleScreen->titleCamStartPos.y = FX32_CONST(192);
    titleScreen->titleCamStartPos.z = FX32_CONST(600);

    titleScreen->titleCamEndPos.x = FX32_CONST(-64);
    titleScreen->titleCamEndPos.y = FX32_CONST(192);
    titleScreen->titleCamEndPos.z = FX32_CONST(484);

    titleScreen->titleCamStartTarget.x = FX32_CONST(0);
    titleScreen->titleCamStartTarget.y = FX32_CONST(100);
    titleScreen->titleCamStartTarget.z = FX32_CONST(-18);

    titleScreen->titleCamEndTarget.x = FX32_CONST(0);
    titleScreen->titleCamEndTarget.y = FX32_CONST(100);
    titleScreen->titleCamEndTarget.z = FX32_CONST(-18);

    titleScreen->light0Dir.x = FX32_CONST(0.5534);
    titleScreen->light0Dir.y = -FX32_CONST(0.4768);
    titleScreen->light0Dir.z = -FX32_CONST(0.6828);

    titleScreen->light1Dir.x = -FX32_CONST(0.5534);
    titleScreen->light1Dir.y = FX32_CONST(0.4768);
    titleScreen->light1Dir.z = -FX32_CONST(0.6828);
    titleScreen->unused0 = FX32_CONST(3);

    VecFx32 light0Dir;
    VEC_Subtract(&titleScreen->titleCamEndTarget, &titleScreen->titleCamEndPos, &light0Dir);
    VecFx32 normalized;
    VEC_Normalize(&light0Dir, &normalized);

    titleScreen->light0Dir.x = normalized.x;
    titleScreen->light0Dir.y = normalized.y;
    titleScreen->light0Dir.z = normalized.z;
}

static void EmptyCameraFunction(Camera *camera)
{
    return;
}
