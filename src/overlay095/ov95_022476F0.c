#include "overlay095/ov95_022476F0.h"

#include <nitro.h>
#include <string.h>

#include "camera.h"
#include "easy3d.h"
#include "gfx_box_test.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "narc.h"

static void inline inline_Trade3DModel_BuildRotationMatrix(MtxFx33 *matrix, const VecFx16 *rotation);
static void Trade3DModel_Render(Trade3DModel *tradeModel);
static void Trade3DModel_Init(Trade3DModel *tradeModel);
static void Trade3DModel_Unload(Trade3DModel *tradeModel);
static void Trade3DScene_InitCamera(Trade3DScene *tradeScene, fx32 targetX, fx32 targetY, fx32 targetZ);
static void Trade3DScene_DestroyCamera(Trade3DScene *tradeScene);

Trade3DScene *Trade3DScene_New(u32 modelCount, fx32 targetX, fx32 targetY, fx32 targetZ)
{
    Trade3DScene *tradeScene = Heap_Alloc(HEAP_ID_58, sizeof(Trade3DScene));

    if (tradeScene) {
        Trade3DScene_InitCamera(tradeScene, targetX, targetY, targetZ);

        tradeScene->models = Heap_Alloc(HEAP_ID_58, sizeof(Trade3DModel) * modelCount);
        tradeScene->modelCount = modelCount;

        for (int i = 0; i < modelCount; i++) {
            Trade3DModel_Init(&tradeScene->models[i]);
        }
    }

    return tradeScene;
}

void Trade3DScene_Free(Trade3DScene *tradeScene)
{
    for (int i = 0; i < tradeScene->modelCount; i++) {
        Trade3DModel_Unload(&(tradeScene->models[i]));
    }

    Heap_Free(tradeScene->models);
    Trade3DScene_DestroyCamera(tradeScene);
    Heap_Free(tradeScene);
}

void Trade3DScene_Render(Trade3DScene *tradeScene)
{
    NNS_G3dGePushMtx();
    Camera_ComputeViewMatrix();

    for (int i = 0; i < tradeScene->modelCount; i++) {
        if (tradeScene->models[i].enabled) {
            Trade3DModel_Render(&(tradeScene->models[i]));
        }
    }

    NNS_G3dGePopMtx(1);
}

static void inline inline_Trade3DModel_BuildRotationMatrix(MtxFx33 *matrix, const VecFx16 *rotation)
{
    MtxFx33 tempMatrix;

    MTX_Identity33(matrix);
    MTX_RotX33(&tempMatrix, FX_SinIdx((u16)(rotation->x)), FX_CosIdx((u16)(rotation->x)));
    MTX_Concat33(&tempMatrix, matrix, matrix);
    MTX_RotY33(&tempMatrix, FX_SinIdx((u16)(rotation->y)), FX_CosIdx((u16)(rotation->y)));
    MTX_Concat33(&tempMatrix, matrix, matrix);
    MTX_RotZ33(&tempMatrix, FX_SinIdx((u16)(rotation->z)), FX_CosIdx((u16)(rotation->z)));
    MTX_Concat33(&tempMatrix, matrix, matrix);
}

static void Trade3DModel_Render(Trade3DModel *tradeModel)
{
    MtxFx33 mtxFx;

    inline_Trade3DModel_BuildRotationMatrix(&mtxFx, &(tradeModel->rotation));

    if (tradeModel->alpha != 31) {
        NNS_G3dGlbPolygonAttr(0, 0, 0, 0, tradeModel->alpha, 0);
    }

    Easy3D_DrawRenderObj(&tradeModel->renderObj, &tradeModel->position, &mtxFx, &tradeModel->scale);
}

static void Trade3DModel_Init(Trade3DModel *tradeModel)
{
    tradeModel->enabled = 0;
    tradeModel->modelData = NULL;
    tradeModel->rotation.x = tradeModel->rotation.y = tradeModel->rotation.z = 0;
    tradeModel->scale.x = tradeModel->scale.y = tradeModel->scale.z = FX32_ONE;
    tradeModel->position.x = tradeModel->position.y = tradeModel->position.z = 0;
}

static void Trade3DModel_Unload(Trade3DModel *tradeModel)
{
    if (tradeModel->modelData) {
        Heap_Free(tradeModel->modelData);
        tradeModel->modelData = NULL;
        tradeModel->enabled = 0;
    }
}

Trade3DModel *Trade3DModel_Load(Trade3DScene *tradeScene, int modelIndex, enum NarcID narcID, u32 memberIndex, fx32 x, fx32 y, fx32 z, BOOL enabled)
{
    Trade3DModel *tradeModel = &tradeScene->models[modelIndex];

    tradeModel->modelData = LoadMemberFromNARC(narcID, memberIndex, 0, HEAP_ID_58, 1);
    DC_FlushRange(tradeModel->modelData, NARC_GetMemberSizeByIndexPair(narcID, memberIndex));

    if (tradeModel->modelData) {
        tradeModel->modelSet = NNS_G3dGetMdlSet(tradeModel->modelData);
        tradeModel->model = NNS_G3dGetMdlByIdx(tradeModel->modelSet, 0);
        tradeModel->texture = NNS_G3dGetTex(tradeModel->modelData);

        Easy3D_UploadTextureToVRAM(tradeModel->texture);
        Easy3D_BindTextureToResource(tradeModel->modelData, tradeModel->texture);

        NNS_G3dRenderObjInit(&tradeModel->renderObj, tradeModel->model);

        tradeModel->position.x = x;
        tradeModel->position.y = y;
        tradeModel->position.z = z;
        tradeModel->alpha = 31;
        tradeModel->enabled = enabled;
    }

    return tradeModel;
}

void Trade3DModel_GetPosition(const Trade3DModel *tradeModel, VecFx32 *outPosition)
{
    *outPosition = tradeModel->position;
}

void Trade3DModel_SetPosition(Trade3DModel *tradeModel, const VecFx32 *position)
{
    tradeModel->position = *position;
}

void Trade3DModel_GetRotation(const Trade3DModel *tradeModel, VecFx16 *outRotation)
{
    *outRotation = tradeModel->rotation;
}

void Trade3DModel_SetRotation(Trade3DModel *tradeModel, const VecFx16 *rotation)
{
    tradeModel->rotation = *rotation;
}

void Trade3DModel_SetEnabled(Trade3DModel *tradeModel, BOOL enabled)
{
    tradeModel->enabled = enabled;
}

void Trade3DModel_SetAlpha(Trade3DModel *tradeModel, int alpha)
{
    tradeModel->alpha = alpha;

    if (alpha != 31) {
        NNS_G3dMdlUseGlbAlpha(tradeModel->model);
    } else {
        NNS_G3dMdlUseMdlAlpha(tradeModel->model);
    }
}

void Trade3DModel_SetScale(Trade3DModel *tradeModel, fx32 scale)
{
    tradeModel->scale.x = scale;
    tradeModel->scale.y = scale;
    tradeModel->scale.z = scale;
}

BOOL Trade3DModel_IsInView(Trade3DModel *tradeModel)
{
    MtxFx33 rotMatrix;
    BOOL result;

    inline_Trade3DModel_BuildRotationMatrix(&rotMatrix, &(tradeModel->rotation));

    NNS_G3dGePushMtx();

    Camera_ComputeViewMatrix();
    result = GFXBoxTest_IsModelInView(tradeModel->model, &tradeModel->position, &rotMatrix, &tradeModel->scale);

    NNS_G3dGePopMtx(1);

    return result;
}

void Trade3DScene_GetCameraPosition(Trade3DScene *tradeScene, VecFx32 *outPosition)
{
    *outPosition = Camera_GetPosition(tradeScene->camera);
}

void Trade3DScene_SetCameraAngle(Trade3DScene *tradeScene, const CameraAngle *cameraAngle)
{
    Camera_SetAngleAroundTarget(cameraAngle, tradeScene->camera);
}

void Trade3DScene_AdjustCameraAngle(Trade3DScene *tradeScene, const CameraAngle *cameraAngle)
{
    Camera_AdjustAngleAroundSelf(cameraAngle, tradeScene->camera);
}

void Trade3DScene_ComputeProjection(Trade3DScene *tradeScene, u8 projectionType)
{
    Camera_ComputeProjectionMatrix(projectionType, tradeScene->camera);
}

void Trade3DScene_SetFOV(Trade3DScene *tradeScene, u16 fov)
{
    Camera_SetFOV(fov, tradeScene->camera);
}

static void Trade3DScene_InitCamera(Trade3DScene *tradeScene, fx32 targetX, fx32 targetY, fx32 targetZ)
{
    VecFx32 upVector;

    tradeScene->camera = Camera_Alloc(HEAP_ID_58);
    tradeScene->target.x = targetX;
    tradeScene->target.y = targetY;
    tradeScene->target.z = targetZ;
    tradeScene->cameraAngle.x = ((0 * 0xffff) / 360);
    tradeScene->cameraAngle.y = ((0 * 0xffff) / 360);
    tradeScene->cameraAngle.z = ((0 * 0xffff) / 360);

    Camera_InitWithTarget(&(tradeScene->target), 1228800, &(tradeScene->cameraAngle), 4004, 0, 1, tradeScene->camera);

    upVector.x = 0;
    upVector.y = FX32_ONE;
    upVector.z = 0;

    Camera_SetUp(&upVector, tradeScene->camera);
    Camera_SetAsActive(tradeScene->camera);
    Camera_SetClipping((0 << FX32_SHIFT), (1000 << FX32_SHIFT), tradeScene->camera);
}

static void Trade3DScene_DestroyCamera(Trade3DScene *tradeScene)
{
    Camera_ClearActive();
    Camera_Delete(tradeScene->camera);
}
