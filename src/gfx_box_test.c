#include "gfx_box_test.h"

#include <nitro.h>

#define BOX_TEST_RESULT_READY 0

static void SetBoxTestParams(const fx16 x, const fx16 y, const fx16 z, const fx16 width, const fx16 height, const fx16 depth, GXBoxTestParam *boxTestParam);
static u32 PerformBoxTest(const GXBoxTestParam *boxTestParam);
static void ReduceFx32ToFx16AndScale(const fx32 in, fx16 *outVal, int *outScale);

u32 GFXBoxTest_IsModelInView(const NNSG3dResMdl *model, const VecFx32 *positionPtr, const MtxFx33 *rotation, const VecFx32 *scale)
{
    GXBoxTestParam boxTestParam;

    VecFx32 position = *positionPtr;
    NNSG3dResMdlInfo *modelInfo = NNS_G3dGetMdlInfo(model);

    SetBoxTestParams(modelInfo->boxX, modelInfo->boxY, modelInfo->boxZ, modelInfo->boxW, modelInfo->boxH, modelInfo->boxD, &boxTestParam);

    NNS_G3dGlbSetBaseTrans(&position);
    NNS_G3dGlbSetBaseRot(rotation);
    NNS_G3dGlbSetBaseScale(scale);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    NNS_G3dGeScale(modelInfo->boxPosScale, modelInfo->boxPosScale, modelInfo->boxPosScale);

    u32 boxTestResult = PerformBoxTest(&boxTestParam);
    NNS_G3dGePopMtx(1);

    return boxTestResult;
}

u32 GFXBoxTest_IsBoxAtPositionInView(const VecFx32 *position, const GFXTestBox *box)
{
    GXBoxTestParam boxTestParam;
    SetBoxTestParams(0, 0, 0, box->width, box->height, box->depth, &boxTestParam);

    NNS_G3dGlbSetBaseTrans(position);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    NNS_G3dGeScale(box->xScale * FX32_ONE, box->yScale * FX32_ONE, box->zScale * FX32_ONE);

    u32 boxTestResult = PerformBoxTest(&boxTestParam);
    NNS_G3dGePopMtx(1);

    return boxTestResult;
}

void GFXBoxTest_MakeBox(const fx32 width, const fx32 height, const fx32 depth, GFXTestBox *box)
{
    ReduceFx32ToFx16AndScale(width, &box->width, &box->xScale);
    ReduceFx32ToFx16AndScale(height, &box->height, &box->yScale);
    ReduceFx32ToFx16AndScale(depth, &box->depth, &box->zScale);
}

static void SetBoxTestParams(const fx16 x, const fx16 y, const fx16 z, const fx16 width, const fx16 height, const fx16 depth, GXBoxTestParam *boxTestParam)
{
    boxTestParam->x = x;
    boxTestParam->y = y;
    boxTestParam->z = z;
    boxTestParam->width = width;
    boxTestParam->height = height;
    boxTestParam->depth = depth;
}

static u32 PerformBoxTest(const GXBoxTestParam *boxTestParam)
{
    s32 boxTestResult = 1;

    NNS_G3dGePolygonAttr(GX_LIGHTMASK_0, GX_POLYGONMODE_MODULATE, GX_CULL_NONE, 0, 0, GX_POLYGON_ATTR_MISC_FAR_CLIPPING | GX_POLYGON_ATTR_MISC_DISP_1DOT);
    NNS_G3dGeBegin(GX_BEGIN_TRIANGLES);
    NNS_G3dGeEnd();
    NNS_G3dGeBoxTest(boxTestParam);
    NNS_G3dGeFlushBuffer();

    while (G3X_GetBoxTestResult(&boxTestResult) != BOX_TEST_RESULT_READY) {}

    return boxTestResult;
}

static void ReduceFx32ToFx16AndScale(const fx32 in, fx16 *outVal, int *outScale)
{
    u8 scaleExponent = 0;
    u32 asU32 = (u32)in;

    while (asU32 >= FX16_MAX) {
        asU32 /= 2;
        scaleExponent++;
    }

    *outVal = (fx16)asU32; // Safe conversion: asU32 is below the max fx16 value
    (*outScale) = 1;

    for (int i = 0; i < scaleExponent; i++) {
        (*outScale) *= 2;
    }
}
