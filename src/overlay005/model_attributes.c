#include "overlay005/model_attributes.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"

#include "heap.h"

ModelAttributes *ModelAttributes_New(void)
{
    ModelAttributes *modelAttrs = Heap_Alloc(HEAP_ID_FIELD1, sizeof(ModelAttributes));
    MI_CpuClear32(modelAttrs, sizeof(ModelAttributes));

    return modelAttrs;
}

void ModelAttributes_Free(ModelAttributes **modelAttrs)
{
    Heap_FreeExplicit(HEAP_ID_FIELD1, *modelAttrs);
    *modelAttrs = NULL;
}

void ModelAttributes_ApplyGlobal(ModelAttributes *modelAttrs, int attributes)
{
    for (int i = MODEL_LIGHT_VECTORS_SHIFT; i < MODEL_LIGHT_VECTORS_SHIFT + GX_LIGHTS_COUNT; i++) {
        if (attributes & (1 << i)) {
            NNS_G3dGlbLightVector(i, modelAttrs->lightVectors[i].x, modelAttrs->lightVectors[i].y, modelAttrs->lightVectors[i].z);
        }

        if (attributes & (1 << (i + GX_LIGHTS_COUNT))) {
            NNS_G3dGlbLightColor(i, modelAttrs->lightColors[i]);
        }
    }

    if (attributes & (MODEL_DIFFUSE_REFLECT_COLOR | MODEL_AMBIENT_REFLECT_COLOR)) {
        NNS_G3dGlbMaterialColorDiffAmb(
            modelAttrs->diffuseReflectColor, modelAttrs->ambientReflectColor, modelAttrs->setDiffuseColorAsVertexColor);
    }

    if (attributes & (MODEL_SPECULAR_REFLECT_COLOR | MODEL_EMISSION_COLOR)) {
        NNS_G3dGlbMaterialColorSpecEmi(
            modelAttrs->specularReflectColor, modelAttrs->emissionColor, modelAttrs->enableSpecularReflectShininessTable);
    }

    if (attributes >= MODEL_POLYGON_ATTRS) {
        NNS_G3dGlbPolygonAttr(modelAttrs->enabledLightsMask, modelAttrs->polygonMode, modelAttrs->cullMode, modelAttrs->polygonID, modelAttrs->alpha, modelAttrs->miscFlags);
    }
}

void ModelAttributes_ApplyToModel(ModelAttributes *modelAttrs, NNSG3dResMdl *model, int attributes)
{
    if (attributes & MODEL_DIFFUSE_REFLECT_COLOR) {
        NNS_G3dMdlSetMdlDiffAll(model, modelAttrs->diffuseReflectColor);
    }

    if (attributes & MODEL_AMBIENT_REFLECT_COLOR) {
        NNS_G3dMdlSetMdlAmbAll(model, modelAttrs->ambientReflectColor);
    }

    if (attributes & MODEL_SPECULAR_REFLECT_COLOR) {
        NNS_G3dMdlSetMdlSpecAll(model, modelAttrs->specularReflectColor);
    }

    if (attributes & MODEL_EMISSION_COLOR) {
        NNS_G3dMdlSetMdlEmiAll(model, modelAttrs->emissionColor);
    }

    if (attributes & MODEL_LIGHT_ENABLE_FLAGS) {
        NNS_G3dMdlSetMdlLightEnableFlagAll(model, modelAttrs->enabledLightsMask);
    }

    if (attributes & MODEL_POLYGON_MODE) {
        NNS_G3dMdlSetMdlPolygonModeAll(model, modelAttrs->polygonMode);
    }

    if (attributes & MODEL_CULL_MODE) {
        NNS_G3dMdlSetMdlCullModeAll(model, modelAttrs->cullMode);
    }

    if (attributes & MODEL_POLYGON_ID) {
        NNS_G3dMdlSetMdlPolygonIDAll(model, modelAttrs->polygonID);
    }

    if (attributes & MODEL_ALPHA) {
        NNS_G3dMdlSetMdlAlphaAll(model, modelAttrs->alpha);
    }

    if (attributes & MODEL_MISC_FOG) {
        NNS_G3dMdlSetMdlFogEnableFlagAll(model, modelAttrs->miscFlags & GX_POLYGON_ATTR_MISC_FOG);
    }

    if (attributes & MODEL_MISC_DEPTHTEST_DECAL) {
        NNS_G3dMdlSetMdlDepthTestCondAll(model, modelAttrs->miscFlags & GX_POLYGON_ATTR_MISC_DEPTHTEST_DECAL);
    }

    if (attributes & MODEL_MISC_DISP_1DOT) {
        NNS_G3dMdlSetMdl1DotAll(model, modelAttrs->miscFlags & GX_POLYGON_ATTR_MISC_DISP_1DOT);
    }

    if (attributes & MODEL_MISC_FAR_CLIPPING) {
        NNS_G3dMdlSetMdlFarClipAll(model, modelAttrs->miscFlags & GX_POLYGON_ATTR_MISC_FAR_CLIPPING);
    }

    if (attributes & MODEL_MISC_XLU_DEPTH_UPDATE) {
        NNS_G3dMdlSetMdlXLDepthUpdateAll(model, modelAttrs->miscFlags & GX_POLYGON_ATTR_MISC_XLU_DEPTH_UPDATE);
    }
}

void ModelAttributes_SetLightVector(ModelAttributes *modelAttrs, int index, fx16 x, fx16 y, fx16 z)
{
    modelAttrs->lightVectors[index].x = x;
    modelAttrs->lightVectors[index].y = y;
    modelAttrs->lightVectors[index].z = z;

    NNS_G3dGlbLightVector(index, modelAttrs->lightVectors[index].x, modelAttrs->lightVectors[index].y, modelAttrs->lightVectors[index].z);
}

void ModelAttributes_SetLightColor(ModelAttributes *modelAttrs, int index, GXRgb lightColor)
{
    modelAttrs->lightColors[index] = lightColor;
    NNS_G3dGlbLightColor(index, modelAttrs->lightColors[index]);
}

void ModelAttributes_SetDiffuseReflection(ModelAttributes *modelAttrs, GXRgb diffuseReflectColor, BOOL setDiffuseColorAsVertexColor, BOOL applyGlobal)
{
    modelAttrs->diffuseReflectColor = diffuseReflectColor;
    modelAttrs->setDiffuseColorAsVertexColor = setDiffuseColorAsVertexColor;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_DIFFUSE_REFLECT_COLOR);
    }
}

void ModelAttributes_SetAmbientReflection(ModelAttributes *modelAttrs, GXRgb ambientReflectColor, BOOL applyGlobal)
{
    modelAttrs->ambientReflectColor = ambientReflectColor;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_AMBIENT_REFLECT_COLOR);
    }
}

void ModelAttributes_SetSpecularReflection(ModelAttributes *modelAttrs, GXRgb specularReflectColor, BOOL enableSpecularReflectShininessTable, BOOL applyGlobal)
{
    modelAttrs->specularReflectColor = specularReflectColor;
    modelAttrs->enableSpecularReflectShininessTable = enableSpecularReflectShininessTable;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_SPECULAR_REFLECT_COLOR);
    }
}

void ModelAttributes_SetEmissionColor(ModelAttributes *modelAttrs, GXRgb emissionColor, BOOL applyGlobal)
{
    modelAttrs->emissionColor = emissionColor;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_EMISSION_COLOR);
    }
}

void ModelAttributes_SetPolygonMode(ModelAttributes *modelAttrs, GXPolygonMode polygonMode, BOOL applyGlobal)
{
    modelAttrs->polygonMode = polygonMode;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_POLYGON_MODE);
    }
}

void ModelAttributes_SetCullMode(ModelAttributes *modelAttrs, GXCull cullMode, BOOL applyGlobal)
{
    modelAttrs->cullMode = cullMode;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_CULL_MODE);
    }
}

void ModelAttributes_SetAlpha(ModelAttributes *modelAttrs, int alpha, BOOL applyGlobal)
{
    modelAttrs->alpha = alpha;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_ALPHA);
    }
}

void ModelAttributes_SetMiscAttrEnabled(ModelAttributes *modelAttrs, int miscFlagsMask, BOOL enable, BOOL applyGlobal)
{
    if (enable == TRUE) {
        if (modelAttrs->miscFlags & miscFlagsMask) {
            return;
        }
    } else {
        if (!(modelAttrs->miscFlags & miscFlagsMask)) {
            return;
        }
    }

    modelAttrs->miscFlags ^= miscFlagsMask;

    if (applyGlobal == TRUE) {
        ModelAttributes_ApplyGlobal(modelAttrs, MODEL_POLYGON_ATTRS);
    }
}
