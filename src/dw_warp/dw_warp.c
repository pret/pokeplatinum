#include "dw_warp/dw_warp.h"

#include <nitro.h>
#include <string.h>

#include "consts/sdat.h"

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_defs/struct_0207C690.h"
#include "struct_defs/struct_02099F80.h"

#include "overlay115/camera_angle.h"

#include "camera.h"
#include "core_sys.h"
#include "easy3d_object.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "overlay_manager.h"
#include "render_text.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_02017728.h"
#include "unk_0201E3D8.h"
#include "unk_0202419C.h"
#include "unk_02024220.h"

#define DWARP_SND_EFFECT_DELAY 15
#define DWARP_ANM_DURATION     85

typedef struct DistortionWorldWarp {
    GenericPointerData *p3DCallback;
    Camera *camera;
    SysTask *task;
    int frameCnt;
    int soundEffectCnt;
    Easy3DObject animationObj;
    Easy3DAnim animationAnimation;
    Easy3DAnim animationAnimation2;
    Easy3DModel animationModel;
    u32 moveFrame;
    int cameraAngle;
    int cameraAngleCalc;
    fx32 cameraDistance;
    int cameraPerspective;
    NNSFndAllocator allocator;
} DistortionWorldWarp;

static void DWWarp_Update(SysTask *task, void *data);
static void DWWarp_VBlankIntr(void *data);
static void DWWarp_VramSetBank(void);
static void DWWarp_InitCamera(DistortionWorldWarp *warp);
static void DWWarp_DeleteCamera(DistortionWorldWarp *warp);
static void DWWarp_InitModel(DistortionWorldWarp *warp);
static void DWWarp_DeleteModel(DistortionWorldWarp *warp);
static void Model3D_Update(DistortionWorldWarp *warp);
static GenericPointerData *DWWarp_Init3D(int heapId);
static void DWWarp_Setup3D(void);
static void DWWarp_Exit3D(GenericPointerData *param0);
static void DWWarp_CameraMove(DistortionWorldWarp *warp);

BOOL DWWarp_Init(OverlayManager *ovy, int *state)
{
    SetMainCallback(NULL, NULL);
    DisableHBlank();
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    GXS_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_BlendNone();
    G2S_BlendNone();

    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_DISTORTION_WORLD_WARP, HEAP_SIZE_DISTORTION_WORLD_WARP);

    DistortionWorldWarp *dww = OverlayManager_NewData(ovy, sizeof(DistortionWorldWarp), HEAP_ID_DISTORTION_WORLD_WARP);
    MI_CpuClear8(dww, sizeof(DistortionWorldWarp));
    dww->p3DCallback = DWWarp_Init3D(HEAP_ID_DISTORTION_WORLD_WARP);

    SetAutorepeat(4, 8);
    DWWarp_VramSetBank();
    sub_0201E3D8();
    sub_0201E450(4);

    DWWarp_InitModel(dww);
    DWWarp_InitCamera(dww);
    sub_0200F174(0, 1, 1, 0x0, 16, 1, HEAP_ID_DISTORTION_WORLD_WARP);

    gCoreSys.unk_65 = 0;

    GXLayers_SwapDisplay();
    GXLayers_TurnBothDispOn();
    RenderControlFlags_SetCanABSpeedUpPrint(1);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    dww->task = SysTask_Start(DWWarp_Update, dww, 60000);
    SetMainCallback(DWWarp_VBlankIntr, dww);

    return TRUE;
}

enum {
    DWARP_SEQ_SCREENWIPE = 0,
    DWARP_SEQ_LOOP,
    DWARP_SEQ_CLEAR_SCREEN,
    DWARP_SEQ_WAIT
};

BOOL DWWarp_Main(OverlayManager *ovy, int *state)
{
    DistortionWorldWarp *warp = OverlayManager_Data(ovy);

    switch (*state) {
    case DWARP_SEQ_SCREENWIPE:
        if (ScreenWipe_Done() == TRUE) {
            (*state)++;
        }
        break;
    case DWARP_SEQ_LOOP:
        if (warp->soundEffectCnt == DWARP_SND_EFFECT_DELAY) {
            Sound_PlayEffect(SEQ_SE_PL_SYUWA2);
        }

        warp->soundEffectCnt++;
        warp->frameCnt++;

        if (warp->frameCnt > DWARP_ANM_DURATION) {
            (*state)++;
        }
        break;
    case DWARP_SEQ_CLEAR_SCREEN:
        sub_0200F174(0, 0, 0, 0x0, 20, 1, 30);
        (*state)++;
        break;
    case DWARP_SEQ_WAIT:
        if (ScreenWipe_Done() == TRUE) {
            return TRUE;
        }
        break;
    }

    DWWarp_CameraMove(warp);

    return FALSE;
}

BOOL DWWarp_Exit(OverlayManager *ovy, int *state)
{
    DistortionWorldWarp *warp = OverlayManager_Data(ovy);

    SysTask_Done(warp->task);

    DWWarp_DeleteModel(warp);
    DWWarp_DeleteCamera(warp);
    DWWarp_Exit3D(warp->p3DCallback);

    SetMainCallback(NULL, NULL);
    DisableHBlank();
    sub_0201E530();
    RenderControlFlags_SetCanABSpeedUpPrint(0);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);
    OverlayManager_FreeData(ovy);
    Heap_Destroy(HEAP_ID_DISTORTION_WORLD_WARP);

    return TRUE;
}

static void DWWarp_Update(SysTask *task, void *data)
{
    DistortionWorldWarp *dw = data;

    Model3D_Update(dw);
    G3_RequestSwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_W);
}

static void DWWarp_VBlankIntr(void *data)
{
    DistortionWorldWarp *dw = data;
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void DWWarp_VramSetBank(void)
{
    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    UnkStruct_02099F80 vramBank = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&vramBank);

    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_BG_VRAM, HW_DB_BG_VRAM_SIZE);
    MI_CpuClear32((void *)HW_OBJ_VRAM, HW_OBJ_VRAM_SIZE);
    MI_CpuClear32((void *)HW_DB_OBJ_VRAM, HW_DB_OBJ_VRAM_SIZE);
}

static void DWWarp_InitCamera(DistortionWorldWarp *warp)
{
    static const CameraAngle DWW_CameraAngle = {
        0x10000 - 0x1c7d,
        0,
        0,
    };
    VecFx32 target = { 0, 0, 0 };

    warp->camera = Camera_Alloc(HEAP_ID_DISTORTION_WORLD_WARP);

    Camera_InitWithTarget(&target, (160 << FX32_SHIFT), &DWW_CameraAngle, ((22 * 0xffff) / 360), 0, 0, warp->camera);
    Camera_SetClipping(0, (FX32_ONE * 300), warp->camera);

    CameraAngle angle = { 0, 0, 0, 0 };

    angle = Camera_GetAngle(warp->camera);
    angle.x = (0x10000 - 0x3fef);

    Camera_SetAngleAroundTarget(&angle, warp->camera);

    Camera_SetAsActive(warp->camera);
}

static void DWWarp_DeleteCamera(DistortionWorldWarp *warp)
{
    Camera_Delete(warp->camera);
}

static void DWWarp_InitModel(DistortionWorldWarp *warp)
{
    Heap_FndInitAllocatorForExpHeap(&warp->allocator, HEAP_ID_DISTORTION_WORLD_WARP, 4);

    NARC *narc = NARC_ctor(NARC_INDEX_DEMO__TITLE__TITLEDEMO, HEAP_ID_DISTORTION_WORLD_WARP);

    Easy3DModel_LoadFrom(&warp->animationModel, narc, 16, HEAP_ID_DISTORTION_WORLD_WARP);

    NNS_G3dMdlUseMdlAlpha(warp->animationModel.model);
    NNS_G3dMdlUseMdlPolygonID(warp->animationModel.model);

    Easy3DAnim_LoadFrom(&warp->animationAnimation, &warp->animationModel, narc, 18, HEAP_ID_DISTORTION_WORLD_WARP, &warp->allocator);
    Easy3DAnim_SetFrame(&warp->animationAnimation, 0);

    Easy3DAnim_LoadFrom(&warp->animationAnimation2, &warp->animationModel, narc, 17, HEAP_ID_DISTORTION_WORLD_WARP, &warp->allocator);
    Easy3DAnim_SetFrame(&warp->animationAnimation2, 0);
    Easy3DObject_Init(&warp->animationObj, &warp->animationModel);

    Easy3DObject_SetPosition(&warp->animationObj, 0, 0, 0);
    Easy3DObject_SetScale(&warp->animationObj, FX32_ONE, FX32_ONE, FX32_ONE);
    Easy3DObject_SetVisibility(&warp->animationObj, TRUE);

    Easy3DObject_AddAnim(&warp->animationObj, &warp->animationAnimation);
    Easy3DObject_AddAnim(&warp->animationObj, &warp->animationAnimation2);

    NARC_dtor(narc);

    warp->cameraAngle = ((0x10000 - 0x3fef) - (0x10000 - 0x1c7d)) / 30;
    warp->cameraAngleCalc = 0x10000 - 0x1c7d;
    warp->cameraDistance = FX32_ONE;
    warp->cameraPerspective = 60 << 8;
}

static void DWWarp_DeleteModel(DistortionWorldWarp *warp)
{
    Easy3DModel_Release(&warp->animationModel);
    Easy3DAnim_Release(&warp->animationAnimation, &warp->allocator);
    Easy3DAnim_Release(&warp->animationAnimation2, &warp->allocator);
}

static void Model3D_Update(DistortionWorldWarp *warp)
{
    VecFx32 scaleVec, transVec;
    MtxFx33 rot33;

    scaleVec.x = FX32_ONE;
    scaleVec.y = FX32_ONE;
    scaleVec.z = FX32_ONE;

    transVec.x = 0;
    transVec.y = 0;
    transVec.z = 0;

    MTX_Identity33(&rot33);

    sub_020241B4();
    Camera_SetAsActive(warp->camera);
    Camera_ComputeProjectionMatrix(0, warp->camera);
    Camera_ComputeViewMatrix();

    NNS_G3dGlbLightVector(0, 0, -FX32_ONE, 0);
    NNS_G3dGlbLightColor(0, GX_RGB(28, 28, 28));
    NNS_G3dGlbMaterialColorDiffAmb(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), FALSE);
    NNS_G3dGlbMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(31, 31, 31), FALSE);
    NNS_G3dGlbSetBaseTrans(&transVec);
    NNS_G3dGlbSetBaseRot(&rot33);
    NNS_G3dGlbSetBaseScale(&scaleVec);

    Easy3DAnim_UpdateLooped(&warp->animationAnimation, FX32_ONE);
    Easy3DAnim_UpdateLooped(&warp->animationAnimation2, FX32_ONE);

    NNS_G3dGePushMtx();

    Easy3DObject_Draw(&warp->animationObj);
    NNS_G3dGePopMtx(1);
}

static GenericPointerData *DWWarp_Init3D(int param0)
{
    return sub_02024220(param0, 0, 2, 0, 2, DWWarp_Setup3D);
}

static void DWWarp_Setup3D(void)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);

    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(TRUE);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, FALSE);
    G3_ViewPort(0, 0, 255, 191);
}

static void DWWarp_Exit3D(GenericPointerData *param0)
{
    sub_020242C4(param0);
}

static void DWWarp_CameraMove(DistortionWorldWarp *warp)
{
    VecFx32 v0 = { 0, 0, 0 };
    CameraAngle v1 = { 0, 0, 0, 0 };
    int v2;

    Camera_AdjustFOV(-(warp->cameraPerspective >> 8), warp->camera);
    warp->cameraPerspective -= 0x80;

    if (warp->cameraPerspective < (16 << 8)) {
        warp->cameraPerspective = (16 << 8);
    }

    warp->moveFrame++;
}
