#include "boat_cutscene/ship_demo.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02099F80.h"

#include "boat_cutscene/boat_cutscene.h"
#include "overlay009/camera_configuration.h"

#include "camera.h"
#include "easy3d.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "system.h"
#include "unk_0202419C.h"
#include "unk_0208C098.h"

#define BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS 4

typedef struct BoatTravelCutscene_ShipDemo {
    Camera *camera;
    NNSG3dRenderObj renderObj;
    NNSG3dResMdl *model;
    NNSG3dResFileHeader *modelFile;
    void *animationFiles[BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS];
    NNSFndAllocator allocator;
    NNSG3dAnmObj *anmObjs[BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS];
    VecFx32 unused;
    u8 startDir;
    u8 firstAnimationFinished;
} BoatTravelCutscene_ShipDemo;

typedef struct BoatTravelCutscene_ShipDemo_NarcMemberIndexes {
    u16 modelMemberIndex;
    u16 animationMemberIndexes[BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS];
} BoatTravelCutscene_ShipDemo_NarcMemberIndexes;

static void BoatTravelCutscene_ShipDemo_Init3D(void);
static void BoatTravelCutscene_ShipDemo_SetGXBanks(void);
static void BoatTravelCutscene_ShipDemo_LoadAnimations(BoatTravelCutscene_ShipDemo *cutsceneData);

static const CameraConfiguration cameraConfig = {
    .distance = BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_DISTANCE,
    .cameraAngle = {
        BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_X,
        BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_Y,
        BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_ANGLE_Z },
    .projectionMtx = BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_PROJECTION_MTX,
    .fovY = BOAT_TRAVEL_CUTSCENE_CAMERA_BASE_FOVY,
};

static const GXRgb edgeColorTable[8] = {
    GX_RGB(0, 0, 0),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4),
    GX_RGB(4, 4, 4)
};

static BoatTravelCutscene_ShipDemo_NarcMemberIndexes narcMemberIndexes[4] = {
    {
        2,
        { 0, 1, 3, 4 },
    },
    {
        7,
        { 5, 6, 8, 9 },
    },
    {
        12,
        { 10, 11, 13, 14 },
    },
    {
        17,
        { 15, 16, 18, 19 },
    },
};

int BoatTravelCutscene_ShipDemo_Init(ApplicationManager *appMan, int *state)
{
    u8 lightID;
    BoatTravelCutscene_ShipDemo *cutsceneData;
    BoatTravelCutscene *taskEnv;

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_72, BOAT_TRAVEL_CUTSCENE_HEAP_SIZE);

    cutsceneData = ApplicationManager_NewData(appMan, sizeof(BoatTravelCutscene_ShipDemo), HEAP_ID_72);
    memset(cutsceneData, 0, sizeof(BoatTravelCutscene_ShipDemo));

    taskEnv = ApplicationManager_Args(appMan);

    cutsceneData->startDir = taskEnv->startDir;
    cutsceneData->firstAnimationFinished = FALSE;
    cutsceneData->camera = Camera_Alloc(HEAP_ID_72);

    BoatTravelCutscene_ShipDemo_Init3D();
    BoatTravelCutscene_ShipDemo_LoadAnimations(cutsceneData);

    VecFx32 cameraTarget = { 0, 0, 0 };

    Camera_InitWithTarget(&cameraTarget, cameraConfig.distance, &cameraConfig.cameraAngle, cameraConfig.fovY, cameraConfig.projectionMtx, FALSE, cutsceneData->camera);
    Camera_SetAsActive(cutsceneData->camera);

    for (lightID = 0; lightID < BOAT_TRAVEL_CUTSCENE_NUM_LIGHTS; lightID++) {
        NNS_G3dGlbLightVector(lightID, taskEnv->areaModelAttrs->lightVectors[lightID].x, taskEnv->areaModelAttrs->lightVectors[lightID].y, taskEnv->areaModelAttrs->lightVectors[lightID].z);
        NNS_G3dGlbLightColor(lightID, taskEnv->areaModelAttrs->lightColors[lightID]);
    }

    NNS_G3dGlbMaterialColorDiffAmb(taskEnv->areaModelAttrs->diffuseReflectColor, taskEnv->areaModelAttrs->ambientReflectColor, taskEnv->areaModelAttrs->setDiffuseColorAsVertexColor);
    NNS_G3dGlbMaterialColorSpecEmi(taskEnv->areaModelAttrs->specularReflectColor, taskEnv->areaModelAttrs->emissionColor, taskEnv->areaModelAttrs->enableSpecularReflectShininessTable);
    NNS_G3dGlbPolygonAttr(taskEnv->areaModelAttrs->enabledLightsMask, taskEnv->areaModelAttrs->polygonMode, taskEnv->areaModelAttrs->cullMode, taskEnv->areaModelAttrs->polygonID, taskEnv->areaModelAttrs->alpha, taskEnv->areaModelAttrs->miscFlags);

    App_StartScreenFade(FALSE, HEAP_ID_72);
    return TRUE;
}

int BoatTravelCutscene_ShipDemo_Main(ApplicationManager *appMan, int *state)
{
    u8 animIndex;
    BOOL unused;
    MtxFx33 rotation = {
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
        0,
        0,
        0,
        FX32_ONE,
    };
    VecFx32 scale = {
        FX32_ONE,
        FX32_ONE,
        FX32_ONE,
    };
    VecFx32 position = {
        0,
        0,
        0
    };
    BoatTravelCutscene_ShipDemo *cutsceneData = ApplicationManager_Data(appMan);

    switch (*state) {
    case BOAT_TRAVEL_CUTSCENE_STATE_SFX:
        Sound_PlayEffect(SEQ_SE_DP_SHIP01);
        (*state)++;
        break;
    case BOAT_TRAVEL_CUTSCENE_STATE_FADE_OUT:
        if (!cutsceneData->firstAnimationFinished) {
            if (cutsceneData->anmObjs[0]->frame + FX32_ONE == NNS_G3dAnmObjGetNumFrame(cutsceneData->anmObjs[0])) {
                cutsceneData->firstAnimationFinished = TRUE;
                App_StartScreenFade(TRUE, HEAP_ID_72);
            }
        } else {
            if (IsScreenFadeDone()) {
                return TRUE;
            }
        }
    }

    for (animIndex = 0; animIndex < BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS; animIndex++) {
        if (cutsceneData->anmObjs[animIndex]->frame + FX32_ONE < NNS_G3dAnmObjGetNumFrame(cutsceneData->anmObjs[animIndex])) {
            cutsceneData->anmObjs[animIndex]->frame += FX32_ONE;
        }
    }

    G3_ResetG3X();
    Camera_ComputeViewMatrix();
    Easy3D_DrawRenderObj(&cutsceneData->renderObj, &position, &rotation, &scale);
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);

    return 0;
}

int BoatTravelCutscene_ShipDemo_Exit(ApplicationManager *appMan, int *state)
{
    u8 animIndex;
    BoatTravelCutscene_ShipDemo *cutsceneData = ApplicationManager_Data(appMan);

    for (animIndex = 0; animIndex < BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS; animIndex++) {
        NNS_G3dFreeAnmObj(&cutsceneData->allocator, cutsceneData->anmObjs[animIndex]);
        Heap_Free(cutsceneData->animationFiles[animIndex]);
    }

    Heap_Free(cutsceneData->modelFile);
    Camera_Delete(cutsceneData->camera);
    ApplicationManager_FreeData(appMan);
    Easy3D_Shutdown();
    Heap_Destroy(HEAP_ID_72);

    return TRUE;
}

static void BoatTravelCutscene_ShipDemo_Init3D(void)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    BoatTravelCutscene_ShipDemo_SetGXBanks();
    Easy3D_Init(HEAP_ID_72);

    G3X_EdgeMarking(TRUE);
    G3X_SetEdgeColorTable(edgeColorTable);

    GXLayers_SwapDisplay();
}

static void BoatTravelCutscene_ShipDemo_SetGXBanks(void)
{
    UnkStruct_02099F80 banks = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_16_F,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&banks);
}

static void BoatTravelCutscene_ShipDemo_LoadAnimations(BoatTravelCutscene_ShipDemo *cutsceneData)
{
    u8 animIndex;
    NNSG3dResTex *texture;
    void *animation;
    NARC *narc = NARC_ctor(NARC_INDEX_ARC__SHIP_DEMO, HEAP_ID_72);
    Heap_FndInitAllocatorForExpHeap(&cutsceneData->allocator, HEAP_ID_72, 4);

    cutsceneData->modelFile = NARC_AllocAndReadWholeMember(narc, narcMemberIndexes[cutsceneData->startDir].modelMemberIndex, HEAP_ID_72);
    Easy3D_InitRenderObjFromResource(&cutsceneData->renderObj, &cutsceneData->model, &cutsceneData->modelFile);
    texture = NNS_G3dGetTex(cutsceneData->modelFile);

    NNS_G3dMdlUseGlbDiff(cutsceneData->model);
    NNS_G3dMdlUseGlbAmb(cutsceneData->model);
    NNS_G3dMdlUseGlbSpec(cutsceneData->model);
    NNS_G3dMdlUseGlbEmi(cutsceneData->model);

    for (animIndex = 0; animIndex < BOAT_TRAVEL_CUTSCENE_SHIP_DEMO_NUM_ANIMATIONS; animIndex++) {
        cutsceneData->animationFiles[animIndex] = NARC_AllocAndReadWholeMember(narc, narcMemberIndexes[cutsceneData->startDir].animationMemberIndexes[animIndex], HEAP_ID_72);
        animation = NNS_G3dGetAnmByIdx(cutsceneData->animationFiles[animIndex], 0);
        cutsceneData->anmObjs[animIndex] = NNS_G3dAllocAnmObj(&cutsceneData->allocator, animation, cutsceneData->model);

        NNS_G3dAnmObjInit(cutsceneData->anmObjs[animIndex], animation, cutsceneData->model, texture);
        NNS_G3dRenderObjAddAnmObj(&cutsceneData->renderObj, cutsceneData->anmObjs[animIndex]);
    }

    NARC_dtor(narc);
}
