#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
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

typedef struct TitleScreenResources {
    int unk_00;
    NNSG3dRenderObj unk_04;
    NNSG3dResMdl *unk_58;
    NNSG3dResFileHeader *unk_5C;
    void *unk_60;
    void *unk_64;
    NNSG3dAnmObj *unk_68;
    NNSG3dAnmObj *unk_6C;
    NNSFndAllocator unk_70;
    VecFx32 unk_80;
    VecFx32 unk_8C;
    VecFx32 unk_98;
    Camera *titleCamera;
    Camera *camera2;
    int unk_AC;
    Easy3DObject unk_B0;
    Easy3DAnim unk_128;
    Easy3DAnim unk_13C;
    Easy3DModel unk_150;
    Easy3DObject unk_160;
    Easy3DAnim unk_1D8;
    Easy3DAnim unk_1EC;
    Easy3DModel unk_200;
    u32 unk_210;
    int unk_214;
    int unk_218;
    fx32 unk_21C;
    int unk_220;
    u8 unk_224;
    u8 unk_225;
} TitleScreenResources;

typedef struct TitleScreenUnusedStruct {
    int unused0;
    TitleScreenResources unused1;
} TitleScreenUnusedStruct;

typedef struct TitleScreen {
    int state;
    TitleScreenResources resources;
    u16 unk_22A;
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
    u16 unk_294;
    u16 unk_296;
    fx32 unk_298;
    BOOL unk_29C;
    BOOL unk_2A0;
    int unk_2A4;
    int unk_2A8;
    int unk_2AC;
} TitleScreen;

typedef struct {
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

enum TitleScreenState {
    TITLE_SCREEN_STATE_INIT_RESOURCES,
};

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
static void TitleScreen_Load3DGfx(TitleScreenResources *param0, int param1, int param2, enum HeapId param3);
static void ov77_021D14E4(TitleScreenResources *param0);
static void ov77_021D1568(TitleScreen *param0, TitleScreenResources *param1);
static BOOL ov77_021D11A4(void);
static BOOL TitleScreen_InitResources(TitleScreen *param0, BgConfig *param1, enum HeapId param2);
static BOOL ov77_021D1DF0(TitleScreen *param0, BgConfig *param1, enum HeapId heapID);
static BOOL ov77_021D20E4(TitleScreen *param0, BgConfig *param1, int param2);
static BOOL ov77_021D21C0(TitleScreen *param0, BgConfig *param1, int param2);
static void ov77_021D1300(TitleScreenResources *param0, int heapID);
static void ov77_021D1514(TitleScreenResources *param0);
static void ov77_021D1704(TitleScreenResources *param0);
static void ov77_021D1984(TitleScreen *param0, TitleScreenResources *param1);
static void ov77_021D25AC(Camera *camera);
static void TitleScreen_Load2DGfx(BgConfig *param0, enum HeapId param1, TitleScreen *param2);
static void ov77_021D2428(BgConfig *param0, enum HeapId param1, TitleScreen *param2);
static void TitleScreen_InitCoordinates(TitleScreen *param0);
static void ov77_021D2438(TitleScreen *param0);

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
    case TITLE_SCREEN_STATE_INIT_RESOURCES:
        if (TitleScreen_InitResources(&appData->titleScreen, appData->bgConfig, appData->heapID) == TRUE) {
            appData->titleScreen.state = 0;

            if (!gSystem.unk_6C) {
                appData->unk_4EC = 30 * 1;
                appData->titleScreen.unk_29C = 1;
                appData->titleScreen.unk_2A0 = 0;
                *state = 2;
            } else {
                appData->unk_4EC = 0;
                gSystem.unk_6C = 0;
                appData->titleScreen.unk_2A0 = 1;
                *state = 1;
            }
        }
        break;
    case 1:
        if (ov77_021D1DF0(&appData->titleScreen, appData->bgConfig, appData->heapID) == 1) {
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
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, appData->heapID);
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
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_WHITE, 6, 1, appData->heapID);
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
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_WHITE, 6, 1, appData->heapID);
            *state = 6;
        }
        break;
    case 5:
        appData->titleScreen.unk_254 = 0;
        ov77_021D20E4(&appData->titleScreen, appData->bgConfig, appData->heapID);

        if (Sound_IsFadeActive() == FALSE) {
            Sound_StopBGM(SEQ_TITLE01, 0);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_WHITE, 6, 1, appData->heapID);
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

static BOOL ov77_021D11A4(void)
{
    if (((gSystem.pressedKeys & PAD_BUTTON_A) == PAD_BUTTON_A) || ((gSystem.pressedKeys & PAD_BUTTON_START) == PAD_BUTTON_START) || ((gSystem.pressedKeys & PAD_BUTTON_SELECT) == PAD_BUTTON_SELECT)) {
        return 1;
    }

    return 0;
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

static void TitleScreen_Load3DGfx(TitleScreenResources *param0, int param1, int param2, enum HeapId heapID)
{
    void *v0;
    void *v1;
    NNSG3dResTex *v2;

    Heap_FndInitAllocatorForExpHeap(&param0->unk_70, heapID, 4);

    param0->unk_5C = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, param1, heapID);
    param0->unk_60 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, param2, heapID);
    param0->unk_64 = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_DEMO__TITLE__TITLEDEMO, giratina_nsbca, heapID);

    Easy3D_InitRenderObjFromResource(&param0->unk_04, &param0->unk_58, &param0->unk_5C);

    v0 = NNS_G3dGetAnmByIdx(param0->unk_60, 0);
    v1 = NNS_G3dGetAnmByIdx(param0->unk_64, 0);

    param0->unk_68 = NNS_G3dAllocAnmObj(&param0->unk_70, v0, param0->unk_58);
    param0->unk_6C = NNS_G3dAllocAnmObj(&param0->unk_70, v1, param0->unk_58);

    v2 = NNS_G3dGetTex(param0->unk_5C);

    NNS_G3dAnmObjInit(param0->unk_68, v0, param0->unk_58, v2);
    NNS_G3dAnmObjInit(param0->unk_6C, v1, param0->unk_58, v2);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_04, param0->unk_68);
    NNS_G3dRenderObjAddAnmObj(&param0->unk_04, param0->unk_6C);

    {
        VecFx32 v3 = { 0, 0, 0 };
        VecFx32 v4 = { FX32_ONE, FX32_ONE, FX32_ONE };
        VecFx32 v5 = { 0, 0, 0 };

        param0->unk_80 = v3;
        param0->unk_8C = v4;
        param0->unk_98 = v5;
    }

    param0->unk_AC = 0;

    ov77_021D1300(param0, heapID);
}

static void ov77_021D1300(TitleScreenResources *param0, int heapID)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_DEMO__TITLE__TITLEDEMO, heapID);

    {
        Easy3DModel_LoadFrom(&param0->unk_150, v0, giratina_face_nsbmd, heapID);

        NNS_G3dMdlUseMdlAlpha(param0->unk_150.model);
        NNS_G3dMdlUseMdlPolygonID(param0->unk_150.model);

        Easy3DAnim_LoadFrom(&param0->unk_128, &param0->unk_150, v0, giratina_face_nsbca, heapID, &param0->unk_70);
        Easy3DAnim_SetFrame(&param0->unk_128, 0);

        Easy3DAnim_LoadFrom(&param0->unk_13C, &param0->unk_150, v0, giratina_face_nsbma, heapID, &param0->unk_70);
        Easy3DAnim_SetFrame(&param0->unk_13C, 0);

        Easy3DObject_Init(&param0->unk_B0, &param0->unk_150);

        Easy3DObject_SetPosition(&param0->unk_B0, 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_B0, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        Easy3DObject_SetVisibility(&param0->unk_B0, 1);

        Easy3DObject_AddAnim(&param0->unk_B0, &param0->unk_128);
        Easy3DObject_AddAnim(&param0->unk_B0, &param0->unk_13C);
    }

    {
        Easy3DModel_LoadFrom(&param0->unk_200, v0, giratina_portal_nsbmd, heapID);
        NNS_G3dMdlUseMdlAlpha(param0->unk_200.model);
        NNS_G3dMdlUseMdlPolygonID(param0->unk_200.model);

        Easy3DAnim_LoadFrom(&param0->unk_1D8, &param0->unk_200, v0, giratina_portal_nsbca, heapID, &param0->unk_70);
        Easy3DAnim_SetFrame(&param0->unk_1D8, 0);

        Easy3DAnim_LoadFrom(&param0->unk_1EC, &param0->unk_200, v0, giratina_portal_nsbta, heapID, &param0->unk_70);
        Easy3DAnim_SetFrame(&param0->unk_1EC, 0);

        Easy3DObject_Init(&param0->unk_160, &param0->unk_200);

        Easy3DObject_SetPosition(&param0->unk_160, 0, 0, 0);
        Easy3DObject_SetScale(&param0->unk_160, (FX32_ONE), (FX32_ONE), (FX32_ONE));
        Easy3DObject_SetVisibility(&param0->unk_160, 1);

        Easy3DObject_AddAnim(&param0->unk_160, &param0->unk_1D8);
        Easy3DObject_AddAnim(&param0->unk_160, &param0->unk_1EC);
    }

    NARC_dtor(v0);

    param0->unk_214 = ((0x10000 - 0x3fef) - (0x10000 - 0x1c7d)) / 30;
    param0->unk_218 = (0x10000 - 0x1c7d);
    param0->unk_21C = (FX32_ONE);
    param0->unk_220 = (120 << 8);
}

static void ov77_021D14E4(TitleScreenResources *param0)
{
    ov77_021D1514(param0);

    NNS_G3dFreeAnmObj(&param0->unk_70, param0->unk_68);
    NNS_G3dFreeAnmObj(&param0->unk_70, param0->unk_6C);

    Heap_Free(param0->unk_60);
    Heap_Free(param0->unk_64);
    Heap_Free(param0->unk_5C);
}

static void ov77_021D1514(TitleScreenResources *param0)
{
    Easy3DModel_Release(&param0->unk_150);
    Easy3DAnim_Release(&param0->unk_128, &param0->unk_70);
    Easy3DAnim_Release(&param0->unk_13C, &param0->unk_70);

    Easy3DModel_Release(&param0->unk_200);
    Easy3DAnim_Release(&param0->unk_1D8, &param0->unk_70);
    Easy3DAnim_Release(&param0->unk_1EC, &param0->unk_70);
}

static void ov77_021D1568(TitleScreen *titleScreen, TitleScreenResources *resources)
{
    MtxFx33 v0 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

    if ((titleScreen->unk_29C == 0) && (titleScreen->unk_2A0 == 1)) {
        ov77_021D25AC(resources->camera2);
        Camera_ComputeProjectionMatrix(0, resources->camera2);
        Camera_SetAsActive(resources->camera2);
    } else {
        Camera_ComputeProjectionMatrix(0, resources->titleCamera);
        Camera_SetAsActive(resources->titleCamera);
    }

    {
        fx32 v1;

        titleScreen->unk_2A8 += 2;
        titleScreen->unk_2A8 %= 360;

        v1 = CalcSineDegrees_Wraparound((titleScreen->unk_2A8 * 0xffff) / 360);
        v1 *= 0.30;

        resources->unk_80.y -= v1;
    }

    switch (resources->unk_00) {
    case 0:
        break;
    case 1:
        sub_020241B4();
        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        resources->unk_00 = 0;
        break;
    case 2:
        sub_020241B4();
        Camera_ComputeViewMatrix();
        MTX_Rot33Vec(&v0, &resources->unk_98);

        if (titleScreen->unk_29C == 0) {
            if (titleScreen->unk_2A0 == 1) {
                ov77_021D1704(resources);
            } else {
                (void)0;
            }
        } else {
            DC_FlushAll();
            Easy3D_DrawRenderObj(&resources->unk_04, &resources->unk_80, &v0, &resources->unk_8C);
        }

        switch (resources->unk_AC) {
        case 0:
            resources->unk_68->frame = 0;
            resources->unk_6C->frame = 0;
            break;
        case 1:
            if (resources->unk_68->frame == 0) {
                resources->unk_AC = 0;
                break;
            }
        case 2:
            resources->unk_68->frame += (FX32_ONE);
            resources->unk_6C->frame += (FX32_ONE);

            if (resources->unk_68->frame == NNS_G3dAnmObjGetNumFrame(resources->unk_68)) {
                resources->unk_68->frame = 0;
            }

            if (resources->unk_6C->frame == NNS_G3dAnmObjGetNumFrame(resources->unk_6C)) {
                resources->unk_6C->frame = 0;
            }
            break;
        }

        G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
        break;
    }
}

static void ov77_021D1704(TitleScreenResources *param0)
{
    if (param0->unk_224 == 1) {
        if (Easy3DAnim_Update(&param0->unk_128, FX32_ONE) == 1) {
            param0->unk_224 = 2;
        }
    }

    if (param0->unk_225 == 1) {
        if (Easy3DAnim_Update(&param0->unk_13C, FX32_ONE) == 1) {
            param0->unk_225 = 2;
        }
    }

    Easy3DAnim_UpdateLooped(&param0->unk_1D8, FX32_ONE);
    Easy3DAnim_UpdateLooped(&param0->unk_1EC, FX32_ONE);

    NNS_G3dGePushMtx();

    {
        Easy3DObject_Draw(&param0->unk_160);

        if ((param0->unk_224 != 2) || (param0->unk_225 != 2)) {
            Easy3DObject_Draw(&param0->unk_B0);
        } else {
            Easy3DObject_SetVisibility(&param0->unk_B0, 0);
        }
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

static void ov77_021D1984(TitleScreen *param0, TitleScreenResources *param1)
{
    VecFx32 v0 = { 0, 0, 0 };
    CameraAngle v1 = { 0, 0, 0, 0 };
    int v2;

    if (param0->unk_29C == 1) {
        return;
    }

    if (param1->unk_210 < 60) {
        v0.z = -0xa00;
        Camera_Move(&v0, param1->camera2);
    }

    if (param1->unk_210 == 75) {
        param1->unk_224 = 1;
        param1->unk_225 = 1;
    }

    if (param1->unk_210 >= 250) {
        v1 = Camera_GetAngle(param1->camera2);
        v1.x = param1->unk_218;

        Camera_SetAngleAroundTarget(&v1, param1->camera2);

        param1->unk_218 += param1->unk_214;

        if (param1->unk_218 < (0x10000 - 0x3fef)) {
            param1->unk_218 = (0x10000 - 0x3fef);

            Camera_AdjustFOV(-(param1->unk_220 >> 8), param1->camera2);
            param1->unk_220 -= 0x280;

            if (param1->unk_220 < (16 << 8)) {
                param1->unk_220 = (16 << 8);
            }
        }
    }

    if (param1->unk_218 >= (0x10000 - 0x3fef)) {
        (void)0;
    }

    param1->unk_210++;
}

static const WindowTemplate sPressStartWindowTemplate = {
    .bgLayer = BG_LAYER_SUB_0,
    .tilemapLeft = 0x2,
    .tilemapTop = 0x13,
    .width = 0x1C,
    .height = 0x2,
    .palette = 0x2,
    .baseTile = 0x1
};

static BOOL TitleScreen_InitResources(TitleScreen *titleScreen, BgConfig *bgConfig, enum HeapId heapID)
{
    TitleScreen_InitCoordinates(titleScreen);
    TitleScreen_Load2DGfx(bgConfig, heapID, titleScreen);
    TitleScreen_Load3DGfx(&titleScreen->resources, giratina_nsbmd, giratina_nsbta, heapID);

    G3X_AntiAlias(TRUE);
    G3X_AlphaBlend(TRUE);

    titleScreen->titleCamTarget.x = titleScreen->titleCamStartTarget.x;
    titleScreen->titleCamTarget.y = titleScreen->titleCamStartTarget.y;
    titleScreen->titleCamTarget.z = titleScreen->titleCamStartTarget.z;
    titleScreen->titleCamPos.x = titleScreen->titleCamStartPos.x;
    titleScreen->titleCamPos.y = titleScreen->titleCamStartPos.y;
    titleScreen->titleCamPos.z = titleScreen->titleCamStartPos.z;
    titleScreen->resources.titleCamera = Camera_Alloc(heapID);

    Camera_InitWithTargetAndPosition(
        &titleScreen->titleCamTarget,
        &titleScreen->titleCamPos,
        FX_DEG_TO_IDX(FX32_CONST(15.996)),
        CAMERA_PROJECTION_PERSPECTIVE,
        FALSE,
        titleScreen->resources.titleCamera);

    Camera_SetClipping(FX32_CONST(0), FX32_CONST(300), titleScreen->resources.titleCamera);
    Camera_ComputeProjectionMatrix(CAMERA_PROJECTION_PERSPECTIVE, titleScreen->resources.titleCamera);
    Camera_SetAsActive(titleScreen->resources.titleCamera);

    static const CameraAngle angle = { FX_DEG_TO_IDX(FX32_CONST(319.94)), 0, 0 };
    VecFx32 target = { 0, 0, 0 };

    titleScreen->resources.camera2 = Camera_Alloc(heapID);

    Camera_InitWithTarget(
        &target,
        FX32_CONST(160),
        &angle,
        FX_DEG_TO_IDX(FX32_CONST(21.994)),
        CAMERA_PROJECTION_PERSPECTIVE,
        FALSE,
        titleScreen->resources.camera2);

    Camera_SetClipping(FX32_CONST(0), FX32_CONST(300), titleScreen->resources.camera2);

    VecFx32 pos = { 0, 0, FX32_CONST(37.5) };
    Camera_Move(&pos, titleScreen->resources.camera2);
    Camera_SetAsActive(titleScreen->resources.camera2);

    NNS_G3dGlbLightVector(GX_LIGHTID_0, titleScreen->light0Dir.x, titleScreen->light0Dir.y, titleScreen->light0Dir.z);
    NNS_G3dGlbLightColor(GX_LIGHTID_0, GX_RGB(31, 31, 31));
    NNS_G3dGlbLightVector(GX_LIGHTID_1, titleScreen->light1Dir.x, titleScreen->light1Dir.y, titleScreen->light1Dir.z);
    NNS_G3dGlbLightColor(GX_LIGHTID_1, GX_RGB(31, 31, 31));

    G3X_AntiAlias(TRUE);

    gSystem.whichScreenIs3D = DS_SCREEN_SUB;
    GXLayers_SwapDisplay();
    titleScreen->resources.unk_00 = 2;

    return TRUE;
}

static void ov77_021D1C10(TitleScreen *param0)
{
    BOOL v0 = 1;
    fx32 v1;
    fx32 v2 = 60;

    v1 = (param0->titleCamEndTarget.x - param0->titleCamStartTarget.x) / v2;
    param0->titleCamTarget.x += (v1);

    v1 = (param0->titleCamEndTarget.y - param0->titleCamStartTarget.y) / v2;
    param0->titleCamTarget.y += (v1);

    v1 = (param0->titleCamEndTarget.z - param0->titleCamStartTarget.z) / v2;
    param0->titleCamTarget.z += (v1);

    v1 = (param0->titleCamEndPos.x - param0->titleCamStartPos.x) / v2;
    param0->titleCamPos.x += (v1);

    v1 = (param0->titleCamEndPos.y - param0->titleCamStartPos.y) / v2;
    param0->titleCamPos.y += (v1);

    v1 = (param0->titleCamEndPos.z - param0->titleCamStartPos.z) / v2;
    param0->titleCamPos.z += (v1);
}

static void ov77_021D1CC0(BgConfig *param0, int param1)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x3000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v0, 0);
    }

    Graphics_LoadTilesToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_NCGR, param0, BG_LAYER_SUB_1, 0, 0, 0, param1);
    Graphics_LoadTilemapToBgLayer(NARC_INDEX_DEMO__TITLE__TITLEDEMO, top_screen_border_2_NSCR, param0, BG_LAYER_SUB_1, 0, 0, 0, param1);

    G2_BlendNone();
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG3, 10, 10);

    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
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

static BOOL ov77_021D1DF0(TitleScreen *param0, BgConfig *param1, enum HeapId heapID)
{
    BOOL v0 = 0;

    if (ov77_021D11A4() == 1) {
        param0->unk_29C = 1;
        param0->unk_2A0 = 0;
        FinishScreenFade();
        BrightnessController_ResetScreenController(BRIGHTNESS_BOTH_SCREENS);
        return 1;
    }

    switch (param0->state) {
    case 0:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
        param0->unk_296 = 0;
        param0->unk_22A = 15 + 252;
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 15, 3, heapID);
        param0->state = 1;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            if (param0->unk_22A) {
                param0->unk_22A--;
            } else {
                param0->unk_22A = 2;
                param0->state = 2;
            }
        }
        break;
    case 2:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            if (param0->unk_22A) {
                BrightnessController_StartTransition(10, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2), BRIGHTNESS_MAIN_SCREEN);
                BrightnessController_StartTransition(10, 16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
                param0->unk_296 = 2;
                param0->unk_22A--;
                param0->state = 3;
            } else {
                param0->unk_22A = 0;
                param0->state = 4;
            }
        }
        break;
    case 3:
        if ((BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN) == TRUE) && (BrightnessController_IsTransitionComplete(BRIGHTNESS_SUB_SCREEN) == TRUE)) {
            BrightnessController_StartTransition(10, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2), BRIGHTNESS_MAIN_SCREEN);
            BrightnessController_StartTransition(10, 0, 16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_SUB_SCREEN);
            param0->unk_296 = 3;
            param0->state = 2;
        }
        break;
    case 4:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            param0->unk_22A = 1;
            param0->state = 5;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            if (param0->unk_22A) {
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_WHITE, 5, 2, heapID);
                param0->unk_296 = 2;
                param0->unk_22A--;
                param0->state = 6;
            } else {
                param0->unk_22A = 10;
                param0->state = 8;
                param0->unk_29C = 1;
                SetScreenColorBrightness(DS_SCREEN_MAIN, FADE_TO_BLACK);
            }
        }
        break;
    case 6:
        if (IsScreenFadeDone() == TRUE) {
            param0->unk_2A0 = 0;
            {
                GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
            }
            param0->resources.unk_AC = 2;
            StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_WHITE, 16, 3, heapID);
            param0->state = 5;
        }
        break;
    case 8:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            param0->state = 7;
        }
        break;
    case 7:
        StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 48, 1, heapID);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
        param0->state = 9;
        param0->unk_2A4 = 0;
        break;
    case 9: {
        ov77_021D1C10(param0);
        Camera_SetTarget(&param0->titleCamTarget, param0->resources.titleCamera);
        Camera_SetPosition(&param0->titleCamPos, param0->resources.titleCamera);

        param0->unk_2A4++;

        if (param0->unk_2A4 >= 60) {
            {
                GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
            }
            {
                ov77_021D1CC0(param1, heapID);
            }
            StartScreenFade(FADE_SUB_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_WHITE, 16, 3, heapID);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
            GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
            param0->unk_22A = 90;
            param0->state = 10;
        }
    } break;
    case 10:
        if (param0->unk_22A) {
            param0->unk_22A--;
        } else {
            if (IsScreenFadeDone() == TRUE) {
                v0 = 1;
            }
        }
        break;
    }

    ov77_021D2438(param0);
    ov77_021D1984(param0, &param0->resources);
    ov77_021D1568(param0, &param0->resources);

    return v0;
}

static BOOL ov77_021D20E4(TitleScreen *param0, BgConfig *param1, int param2)
{
    BOOL v0 = 0;

    switch (param0->state) {
    case 0:
        Camera_SetTarget(&param0->titleCamEndTarget, param0->resources.titleCamera);
        Camera_SetPosition(&param0->titleCamEndPos, param0->resources.titleCamera);
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

        param0->resources.unk_AC = 2;
        NNS_G3dGlbLightColor(1, 0x7fff);

        {
            ov77_021D1CC0(param1, param2);
        }

        param0->unk_22A = 0;
        param0->state = 1;
        break;
    case 1:
        if (param0->unk_254 == 1) {
            if (param0->unk_22A == 0) {
                {
                    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
                }
            } else if (param0->unk_22A == 0x10) {
                {
                    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
                }
            }
        } else {
            (void)0;
        }

        param0->unk_22A++;
        param0->unk_22A &= 0x1f;

        v0 = 1;
        break;
    }

    ov77_021D1568(param0, &param0->resources);

    return v0;
}

static BOOL ov77_021D21C0(TitleScreen *param0, BgConfig *param1, int param2)
{
    Camera_Delete(param0->resources.titleCamera);
    Camera_Delete(param0->resources.camera2);

    ov77_021D14E4(&param0->resources);
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

static void ov77_021D2438(TitleScreen *param0)
{
    switch (param0->unk_296) {
    case 0:
        param0->unk_294 = 5;
        param0->unk_296 = 1;
        break;
    case 1:
        break;
    case 2:
        param0->unk_294 += 2;

        if (param0->unk_294 >= 0x1f) {
            param0->unk_294 = 0x1f;
            param0->unk_296 = 1;
        }
        break;
    case 3:
        param0->unk_294 -= 2;

        if (param0->unk_294 <= 5) {
            param0->unk_294 = 5;
            param0->unk_296 = 1;
        }
        break;
    }

    NNS_G3dGlbLightColor(1, (((param0->unk_294 << 0) & 0x1f) | ((param0->unk_294 << 5) & 0x3e0) | ((param0->unk_294 << 10) & 0x7c00)));
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

static void ov77_021D25AC(Camera *camera)
{
    return;
}
