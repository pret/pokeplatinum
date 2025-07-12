#include "nitro/gx/g3.h"
#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/species.h"

#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay077/const_ov77_021D742C.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "camera.h"
#include "easy3d.h"
#include "easy3d_object.h"
#include "font.h"
#include "fx_util.h"
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
#include "strbuf.h"
#include "system.h"
#include "text.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"
#include "text/bank/title_screen.h"
#include "res/graphics/title_screen/titledemo.naix.h"


FS_EXTERN_OVERLAY(overlay77);
FS_EXTERN_OVERLAY(overlay89);
FS_EXTERN_OVERLAY(overlay97);
FS_EXTERN_OVERLAY(d_startmenu);

#define KEY_PRESSED(key) (JOY_NEW(key) == key)
#define KEY_HELD(key) (JOY_HELD(key) == key)
#define LIGHT_COLOR(r, g, b) ((((r) << 0) & GX_RGB_R_MASK) | (((g) << 5) & GX_RGB_G_MASK) | (((b) << 10) & GX_RGB_B_MASK))
#define ANGLE(angle) FX_DEG_TO_IDX(FX32_CONST(angle))

#define TITLE_CAM_MOVE_IN_FRAMES 60
#define LIGHT1_BRIGHTNESS_MIN    5
#define LIGHT1_BRIGHTNESS_MAX    31
#define LIGHT1_BRIGHTNESS_STEP   2

#define INTRO_CAM_PITCH_START    ANGLE(319.94)
#define INTRO_CAM_PITCH_END      ANGLE(270.094)

// These angles are divided by 256 before being passed to Camera_AdjustFOV.
// The actual angles are denoted in the comments below.
#define INTRO_CAM_FOV_STEP_START  ANGLE(168.75)  // Actually ~0.66°
#define INTRO_CAM_FOV_STEP_REDUCE ANGLE(3.516)   // Actually ~0.0137°
#define INTRO_CAM_FOV_STEP_MIN    ANGLE(22.5)    // Actually ~0.088°

enum TitleScreenAppState {
    TITLE_SCREEN_APP_STATE_INIT_RESOURCES,
    TITLE_SCREEN_APP_STATE_SHOW_INTRO,
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
    RENDER_STATE_ENABLE,  // Enable rendering
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
    fx32 unk_21C;
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
    };
    Window pressStartWindow;
    VecFx32 titleCamTarget;
    VecFx32 titleCamPos;
    BOOL unk_254;
    VecFx32 titleCamStartPos;
    VecFx32 titleCamEndPos;
    VecFx32 titleCamStartTarget;
    VecFx32 titleCamEndTarget;
    VecFx16 light0Dir;
    VecFx16 light1Dir;
    u16 light1Brightness;
    u16 light1State; // See enum Light1State
    fx32 unk_298;
    BOOL giratinaShown; // Giratina 3D model shown
    BOOL introShown; // Sky pillar portal with Giratina face shown
    int titleCamMoveInCounter;
    int giratinaHoverAngle;
    int unk_2AC;
} TitleScreen;

typedef struct TitleScreenAppData {
    int heapID;
    BgConfig *bgConfig;
    GenericPointerData *unk_08;
    TitleScreenUnusedStruct unused;
    TitleScreen titleScreen;
    u16 unk_4E8;
    int unk_4EC;
    int unk_4F0;
    int unk_4F4;
    int unk_4F8;
    int unk_4FC;
} TitleScreenAppData;

extern const ApplicationManagerTemplate Unk_020F8A48;
extern const ApplicationManagerTemplate Unk_020F8AB4;
extern const ApplicationManagerTemplate gOpeningCutsceneAppTemplate;

static void ov77_021D1D48(BgConfig *param0, int param1);
void EnqueueApplication(FSOverlayID param0, const ApplicationManagerTemplate *param1);
static BOOL TitleScreen_Init(ApplicationManager *appMan, int *param1);
static int TitleScreen_Main(ApplicationManager *appMan, int *param1);
static int TitleScreen_Exit(ApplicationManager *appMan, int *param1);
static void TitleScreen_VBlank(void *param0);
static void TitleScreen_SetVRAMBanks(void);
static void TitleScreen_InitBgs(TitleScreenAppData *param0);
static void ov77_021D1908(TitleScreenAppData *param0);
static void ov77_021D11CC(TitleScreenAppData *param0);
static void ov77_021D11FC(TitleScreenAppData *param0);
static void TitleScreen_Load3DGfx(TitleScreenGraphics *param0, int param1, int param2, enum HeapId param3);
static void ov77_021D14E4(TitleScreenGraphics *param0);
static void TitleScreen_Render(TitleScreen *param0, TitleScreenGraphics *param1);
static BOOL TitleScreen_ShouldSkipIntro(void);
static BOOL TitleScreen_InitGraphics(TitleScreen *param0, BgConfig *param1, enum HeapId param2);
static BOOL TitleScreen_ShowIntro(TitleScreen *param0, BgConfig *param1, enum HeapId heapID);
static BOOL ov77_021D20E4(TitleScreen *param0, BgConfig *param1, int param2);
static BOOL ov77_021D21C0(TitleScreen *param0, BgConfig *param1, int param2);
static void TitleScreen_LoadCutscene3DGfx(TitleScreenGraphics *param0, enum HeapId heapID);
static void ov77_021D1514(TitleScreenGraphics *param0);
static void TitleScreen_RenderIntroGraphics(TitleScreenGraphics *param0);
static void TitleScreen_UpdateIntroCamera(TitleScreen *param0, TitleScreenGraphics *param1);
static void EmptyCameraFunction(Camera *camera);
static void TitleScreen_Load2DGfx(BgConfig *param0, enum HeapId param1, TitleScreen *param2);
static void ov77_021D2428(BgConfig *param0, enum HeapId param1, TitleScreen *param2);
static void TitleScreen_InitCoordinates(TitleScreen *param0);
static void TitleScreen_UpdateLight1(TitleScreen *param0);

const ApplicationManagerTemplate gTitleScreenAppTemplate = {
    .init = TitleScreen_Init,
    .main = TitleScreen_Main,
    .exit = TitleScreen_Exit,
    .overlayID = FS_OVERLAY_ID_NONE
};

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
    appData->unk_4E8 = 0;
    appData->unk_4F8 = 0;

    TitleScreen_SetVRAMBanks();
    TitleScreen_InitBgs(appData);
    ov77_021D11CC(appData);

    SetVBlankCallback(TitleScreen_VBlank, appData);
    GXLayers_TurnBothDispOn();

    return TRUE;
}

static int TitleScreen_Main(ApplicationManager *appMan, int *state)
{
    TitleScreenAppData *appData = ApplicationManager_Data(appMan);

    switch (*state) {
    case TITLE_SCREEN_APP_STATE_INIT_RESOURCES:
        if (TitleScreen_InitGraphics(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
            appData->titleScreen.state = INTRO_STATE_FADE_FROM_BLACK;

            if (!gSystem.unk_6C) {
                appData->unk_4EC = 30 * 1;
                appData->titleScreen.giratinaShown = 1;
                appData->titleScreen.introShown = 0;
                *state = 2;
            } else {
                appData->unk_4EC = 0;
                gSystem.unk_6C = FALSE;
                appData->titleScreen.introShown = 1;
                *state = TITLE_SCREEN_APP_STATE_SHOW_INTRO;
            }
        }
        break;
    case TITLE_SCREEN_APP_STATE_SHOW_INTRO:
        if (TitleScreen_ShowIntro(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
            appData->titleScreen.state = 0;
            *state = 2;
        }
        break;
    case 2:
        Sound_SetScene(SOUND_SCENE_NONE);
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_1, SEQ_TITLE01, 1);
        *state = 3;
        break;
    case 3:
        if (appData->unk_4EC) {
            appData->unk_4EC--;

            appData->titleScreen.unk_254 = 0;
            ov77_021D20E4(&appData->titleScreen, appData->bgConfig, appData->heapID);
            break;
        } else {
            appData->titleScreen.unk_254 = 1;
            ov77_021D20E4(&appData->titleScreen, appData->bgConfig, appData->heapID);
        }

        appData->unk_4F8++;

        if (((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gSystem.pressedKeys & PAD_BUTTON_START) == PAD_BUTTON_START)) {
            appData->unk_4E8 = 1;
            Sound_FadeOutBGM(0, 60);
            Sound_PlayPokemonCry(SPECIES_GIRATINA, 1);
            ov77_021D1D48(appData->bgConfig, appData->heapID);
            *state = 4;
            break;
        }

        if ((gSystem.heldKeys & (PAD_BUTTON_B | PAD_KEY_UP | PAD_BUTTON_SELECT)) == (PAD_BUTTON_B | PAD_KEY_UP | PAD_BUTTON_SELECT)) {
            appData->unk_4E8 = 2;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, FADE_TO_BLACK, 6, 1, appData->heapID);
            *state = 6;
            break;
        }

        if (appData->unk_4F8 > 30 * 30) {
            appData->unk_4E8 = 3;
            gSystem.unk_6C = 1;
            {
                GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
            }
            Sound_FadeOutBGM(0, 60);
            *state = 5;
            break;
        }
        break;
    case 4:
        appData->titleScreen.unk_254 = 0;
        ov77_021D20E4(&appData->titleScreen, appData->bgConfig, appData->heapID);

        if ((++appData->unk_4FC) == 10) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, FADE_TO_WHITE, 6, 1, appData->heapID);
        }

        if ((Sound_IsPokemonCryPlaying() == 0) && (IsScreenFadeDone() == TRUE) && (appData->unk_4FC >= 10)) {
            Sound_StopBGM(SEQ_TITLE01, 0);

            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, FADE_TO_WHITE, 6, 1, appData->heapID);
            *state = 6;
        }
        break;
    case 5:
        appData->titleScreen.unk_254 = 0;
        ov77_021D20E4(&appData->titleScreen, appData->bgConfig, appData->heapID);

        if (Sound_IsFadeActive() == FALSE) {
            Sound_StopBGM(SEQ_TITLE01, 0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, FADE_TO_WHITE, 6, 1, appData->heapID);
            *state = 6;
        }
        break;
    case 6:
        if (IsScreenFadeDone() == TRUE) {
            if (ov77_021D21C0(&appData->titleScreen, appData->bgConfig, appData->heapID) == 1) {
                return 1;
            }
        }
        break;
    }

    return 0;
}

static int TitleScreen_Exit(ApplicationManager *appMan, int *param1)
{
    TitleScreenAppData *v0 = ApplicationManager_Data(appMan);
    int heapID = v0->heapID;
    int v2 = v0->unk_4E8;

    SetVBlankCallback(NULL, NULL);

    ov77_021D11FC(v0);
    ov77_021D1908(v0);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(heapID);

    switch (v2) {
    default:
    case 1:
        EnqueueApplication(0xffffffff, &Unk_020F8AB4);
        break;
    case 2:
        EnqueueApplication(0xffffffff, &Unk_020F8A48);
        break;
    case 3:
        Sound_SetScene(SOUND_SCENE_NONE);
        EnqueueApplication(FS_OVERLAY_ID(overlay77), &gOpeningCutsceneAppTemplate);
        break;
    }

    return 1;
}

static void TitleScreen_VBlank(void *param)
{
    TitleScreenAppData *appData = param;
    Bg_RunScheduledUpdates(appData->bgConfig);
}

static void TitleScreen_SetVRAMBanks(void)
{
    UnkStruct_02099F80 banks = {
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
    if (KEY_PRESSED(PAD_BUTTON_A) || KEY_PRESSED(PAD_BUTTON_START) || KEY_PRESSED(PAD_BUTTON_SELECT)) {
        return TRUE;
    }

    return FALSE;
}

static void ov77_021D11CC(TitleScreenAppData *appData)
{
    appData->unk_08 = sub_02024220(appData->heapID, 0, 1, 0, 4, NULL);
    G2_SetBG0Priority(1);
}

static void ov77_021D11FC(TitleScreenAppData *param0)
{
    sub_020242C4(param0->unk_08);
}

static void TitleScreen_Load3DGfx(TitleScreenGraphics *gfx, int giratinaModel, int giratinaTexAnim, enum HeapId heapID)
{
    Heap_FndInitAllocatorForExpHeap(&gfx->allocator, heapID, 4);

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

static void TitleScreen_LoadCutscene3DGfx(TitleScreenGraphics *gfx, enum HeapId heapID)
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
    gfx->unk_21C = (FX32_ONE);
    gfx->introCamFovStep = INTRO_CAM_FOV_STEP_START;
}

static void ov77_021D14E4(TitleScreenGraphics *param0)
{
    ov77_021D1514(param0);

    NNS_G3dFreeAnmObj(&param0->allocator, param0->giratinaTexAnim);
    NNS_G3dFreeAnmObj(&param0->allocator, param0->giratinaAnim);

    Heap_Free(param0->giratinaTexAnimRes);
    Heap_Free(param0->giratinaAnimRes);
    Heap_Free(param0->giratinaModelRes);
}

static void ov77_021D1514(TitleScreenGraphics *param0)
{
    Easy3DModel_Release(&param0->giratinaFaceModel);
    Easy3DAnim_Release(&param0->giratinaFaceAnim, &param0->allocator);
    Easy3DAnim_Release(&param0->giratinaFaceMatAnim, &param0->allocator);

    Easy3DModel_Release(&param0->portalModel);
    Easy3DAnim_Release(&param0->portalAnim, &param0->allocator);
    Easy3DAnim_Release(&param0->portalTexAnim, &param0->allocator);
}

static void TitleScreen_Render(TitleScreen *titleScreen, TitleScreenGraphics *gfx)
{
    MtxFx33 rotationMatrix = {
        FX32_ONE, 0,        0,
        0,        FX32_ONE, 0,
        0,        0,        FX32_ONE
    };

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
        sub_020241B4();
        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        gfx->renderState = RENDER_STATE_OFF;
        break;
    case RENDER_STATE_ENABLE:
        sub_020241B4();
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

    if (gfx->giratinaFaceAnimState != GIRATINA_FACE_STATE_DONE ||
        gfx->giratinaFaceMatAnimState != GIRATINA_FACE_STATE_DONE) {
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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_SUB_0, &bgSub0, BG_TYPE_STATIC);

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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_SUB_1, &bgSub1, BG_TYPE_STATIC);

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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_SUB_2, &bgSub2, BG_TYPE_STATIC);

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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_MAIN_1, &bgMain1, BG_TYPE_STATIC);

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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_MAIN_3, &bgMain3, BG_TYPE_STATIC);

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
        .dummy = 0,
        .mosaic = FALSE
    };
    Bg_InitFromTemplate(appData->bgConfig, BG_LAYER_SUB_3, &bgSub3, BG_TYPE_STATIC);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, FALSE);
    Bg_MaskPalette(BG_LAYER_MAIN_0, COLOR_BLACK);
    Bg_MaskPalette(BG_LAYER_SUB_0, COLOR_BLACK);
}

static void ov77_021D1908(TitleScreenAppData *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(param0->bgConfig, BG_LAYER_SUB_3);
    Heap_Free(param0->bgConfig);
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
    .bgLayer = BG_LAYER_SUB_0,
    .tilemapLeft = 2,
    .tilemapTop = 19,
    .width = 28,
    .height = 2,
    .palette = 2,
    .baseTile = 1
};

static BOOL TitleScreen_InitGraphics(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapId heapID)
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
    NNS_G3dGlbLightColor(GX_LIGHTID_0, GX_RGB(31, 31, 31));
    NNS_G3dGlbLightVector(GX_LIGHTID_1, titleScreen->light1Dir.x, titleScreen->light1Dir.y, titleScreen->light1Dir.z);
    NNS_G3dGlbLightColor(GX_LIGHTID_1, GX_RGB(31, 31, 31));

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

static void TitleScreen_LoadTopScreenBg(BgConfig *bgConfig, enum HeapId heapID)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);

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
        .dummy = 0,
        .mosaic = FALSE
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &template, BG_TYPE_STATIC);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCGR, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_2_NSCR, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, heapID);

    G2_BlendNone();
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 10, 10);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, TRUE);
}

static void ov77_021D1D48(BgConfig *param0, int param1)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);

    {
        BgTemplate v0 = {
            0,
            0,
            0x1000,
            0,
            3,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x2800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_23,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v0, 0);
    }

    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NSCR, param0, 4, 0, 0, 0, param1);

    G2S_SetBG0Priority(0);
    G2S_SetBG1Priority(1);
    G2S_SetBG2Priority(0);
    G2S_SetBG3Priority(2);

    Bg_SetOffset(param0, BG_LAYER_SUB_2, 0, 0);
    Bg_SetOffset(param0, BG_LAYER_SUB_2, 3, +1);

    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 26, 10);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
}

static BOOL TitleScreen_ShowIntro(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapId heapID)
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
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        titleScreen->light1State = LIGHT1_STATE_DEFAULT;

        // Roughly a 9s delay. During this time the portal animation plays.
        titleScreen->delay = 267;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, FADE_TO_BLACK, 15, 3, heapID);
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
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE && 
            BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE) {
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
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE &&
            BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE) {
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
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, FADE_TO_WHITE, 5, 2, heapID);
                titleScreen->light1State = LIGHT1_STATE_BRIGHTEN;
                titleScreen->fadeCount--;
                titleScreen->state = INTRO_STATE_WAIT_AND_FADE_MAIN_FROM_WHITE;
            } else {
                titleScreen->delay = 10;
                titleScreen->state = INTRO_STATE_WAIT_FOR_DELAY;
                titleScreen->giratinaShown = TRUE;
                SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
            }
        }
        break;
    case INTRO_STATE_WAIT_AND_FADE_MAIN_FROM_WHITE:
        if (IsScreenFadeDone() == TRUE) {
            titleScreen->introShown = FALSE;
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, TRUE);
            titleScreen->graphics.giratinaAnimState = GIRATINA_ANIM_STATE_PLAY;
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, FADE_TO_WHITE, 16, 3, heapID);
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
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, FADE_TO_BLACK, 48, 1, heapID);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
        titleScreen->state = INTRO_STATE_MOVE_IN_TITLE_CAMERA;
        titleScreen->titleCamMoveInCounter = 0;
        break;
    case INTRO_STATE_MOVE_IN_TITLE_CAMERA:
        TitleScreen_UpdateTitleCam(titleScreen);
        Camera_SetTarget(&titleScreen->titleCamTarget, titleScreen->graphics.titleCamera);
        Camera_SetPosition(&titleScreen->titleCamPos, titleScreen->graphics.titleCamera);

        titleScreen->titleCamMoveInCounter++;

        if (titleScreen->titleCamMoveInCounter >= TITLE_CAM_MOVE_IN_FRAMES) {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, TRUE);
            TitleScreen_LoadTopScreenBg(bgConfig, heapID);
            StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, FADE_TO_WHITE, 16, 3, heapID);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, TRUE);

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

static BOOL ov77_021D20E4(TitleScreen *param0, BgConfig *param1, int param2)
{
    BOOL v0 = 0;

    switch (param0->state) {
    case 0:
        Camera_SetTarget(&param0->titleCamEndTarget, param0->graphics.titleCamera);
        Camera_SetPosition(&param0->titleCamEndPos, param0->graphics.titleCamera);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);

        {
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        }

        {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
        }

        ResetScreenMasterBrightness(DS_SCREEN_MAIN);
        ResetScreenMasterBrightness(DS_SCREEN_SUB);

        param0->graphics.giratinaAnimState = GIRATINA_ANIM_STATE_PLAY;
        NNS_G3dGlbLightColor(1, 0x7fff);

        {
            TitleScreen_LoadTopScreenBg(param1, param2);
        }

        param0->delay = 0;
        param0->state = 1;
        break;
    case 1:
        if (param0->unk_254 == 1) {
            if (param0->delay == 0) {
                {
                    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
                }
            } else if (param0->delay == 0x10) {
                {
                    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
                }
            }
        } else {
            (void)0;
        }

        param0->delay++;
        param0->delay &= 0x1f;

        v0 = 1;
        break;
    }

    TitleScreen_Render(param0, &param0->graphics);

    return v0;
}

static BOOL ov77_021D21C0(TitleScreen *param0, BgConfig *param1, int param2)
{
    Camera_Delete(param0->graphics.titleCamera);
    Camera_Delete(param0->graphics.introCamera);

    ov77_021D14E4(&param0->graphics);
    ov77_021D2428(param1, param2, param0);

    G2_BlendNone();
    G3X_EdgeMarking(0);

    gSystem.whichScreenIs3D = DS_SCREEN_MAIN;
    GXLayers_SwapDisplay();

    return 1;
}

static void TitleScreen_Load2DGfx(BgConfig *bgConfig, enum HeapId heapID, TitleScreen *param2)
{
    // Borders
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCGR, bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, heapID);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NCGR, bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NSCR, bgConfig, BG_LAYER_SUB_3, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NSCR, bgConfig, BG_LAYER_MAIN_3, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCLR, PAL_LOAD_SUB_BG, 0, 0, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, bottom_screen_border_NCLR, PAL_LOAD_MAIN_BG, 0, 0, heapID);

    // Game Logo
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NCGR, bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NCLR, PAL_LOAD_SUB_BGEXT, 0x4000, 0, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, logo_NSCR, bgConfig, BG_LAYER_SUB_2, 0, 0, FALSE, heapID);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__OP_DEMO, 14, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__OP_DEMO, 13, PAL_LOAD_SUB_BGEXT, 0x2000, 0, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__OP_DEMO, 12, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, heapID);

    // "GAME FREAK Presents"
    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NCGR, bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, heapID);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NSCR, bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, heapID);
    Graphics_LoadPalette(NARC_INDEX_DEMO__TITLE__TITLEDEMO, gf_presents_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(1), 3 * PALETTE_SIZE_BYTES, heapID);

    Bg_MaskPalette(BG_LAYER_MAIN_0, COLOR_BLACK);
    Bg_MaskPalette(BG_LAYER_SUB_0, COLOR_BLACK);

    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, heapID);

    MessageLoader *msgLoader = MessageLoader_Init(
        MESSAGE_LOADER_NARC_HANDLE,
        NARC_INDEX_MSGDATA__PL_MSG,
        TEXT_BANK_TITLE_SCREEN,
        heapID);
    
    Strbuf *buffer = Strbuf_Init(64, heapID);

    Window_AddFromTemplate(bgConfig, &param2->pressStartWindow, &sPressStartWindowTemplate);
    Window_FillRectWithColor(&param2->pressStartWindow, 0, 0, 0, TILES_TO_PIXELS(28), TILES_TO_PIXELS(2));
    MessageLoader_GetStrbuf(msgLoader, TitleScreen_Text_PressStart, buffer);

    u32 xpos = Font_CalcCenterAlignment(FONT_SYSTEM, buffer, 1, param2->pressStartWindow.width * TILE_HEIGHT_PIXELS);

    Text_AddPrinterWithParamsColorAndSpacing(
        &param2->pressStartWindow,
        FONT_SYSTEM,
        buffer,
        xpos,
        0,
        TEXT_SPEED_INSTANT,
        TEXT_COLOR(1, 1, 0),
        1,
        0,
        NULL);

    Strbuf_Free(buffer);
    MessageLoader_Free(msgLoader);

    u16 fgColor = GX_RGB(21, 0, 0);
    u16 shadowColor = GX_RGB(21, 0, 0);
    Bg_LoadPalette(BG_LAYER_SUB_0, &fgColor,     sizeof(u16), PLTT_OFFSET(2) + 1 * sizeof(u16));
    Bg_LoadPalette(BG_LAYER_SUB_0, &shadowColor, sizeof(u16), PLTT_OFFSET(2) + 2 * sizeof(u16));
}

static void ov77_021D2428(BgConfig *bgConfig, enum HeapId heapID, TitleScreen *param2)
{
    Window_Remove(&param2->pressStartWindow);
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
    titleScreen->unk_298 = FX32_CONST(3);

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
