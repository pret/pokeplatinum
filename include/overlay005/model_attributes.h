#ifndef POKEPLATINUM_OV5_MODEL_ATTRIBUTES_H
#define POKEPLATINUM_OV5_MODEL_ATTRIBUTES_H

#include <nitro/gx.h>
#include <nnsys.h>

#include "constants/gx.h"

typedef struct ModelAttributes {
    VecFx16 lightVectors[GX_LIGHTS_COUNT];
    GXRgb lightColors[GX_LIGHTS_COUNT];
    GXRgb diffuseReflectColor;
    GXRgb ambientReflectColor;
    GXRgb specularReflectColor;
    GXRgb emissionColor;
    BOOL setDiffuseColorAsVertexColor;
    BOOL enableSpecularReflectShininessTable;
    int enabledLightsMask;
    GXPolygonMode polygonMode;
    GXCull cullMode;
    int polygonID;
    int alpha;
    int miscFlags;
} ModelAttributes;

enum ModelAttributesShift {
    MODEL_LIGHT_VECTORS_SHIFT = 0,
    MODEL_LIGHT_COLORS_SHIFT = 4,
    MODEL_DIFFUSE_REFLECT_COLOR_SHIFT = 8,
    MODEL_AMBIENT_REFLECT_COLOR_SHIFT,
    MODEL_SPECULAR_REFLECT_COLOR_SHIFT,
    MODEL_EMISSION_COLOR_SHIFT,
    MODEL_LIGHT_ENABLE_FLAGS_SHIFT = 12,
    MODEL_POLYGON_ATTRS_SHIFT = 12,
    MODEL_POLYGON_MODE_SHIFT,
    MODEL_CULL_MODE_SHIFT,
    MODEL_POLYGON_ID_SHIFT,
    MODEL_ALPHA_SHIFT,
    MODEL_MISC_FOG_SHIFT,
    MODEL_MISC_DEPTHTEST_DECAL_SHIFT,
    MODEL_MISC_DISP_1DOT_SHIFT,
    MODEL_MISC_FAR_CLIPPING_SHIFT,
    MODEL_MISC_XLU_DEPTH_UPDATE_SHIFT,
    MODEL_ATTRIBUTES_LAST_SHIFT
};

enum ModelAttributesBit {
    MODEL_LIGHT_VECTOR_1 = 1 << MODEL_LIGHT_VECTORS_SHIFT,
    MODEL_LIGHT_VECTOR_2 = 1 << (MODEL_LIGHT_VECTORS_SHIFT + 1),
    MODEL_LIGHT_VECTOR_3 = 1 << (MODEL_LIGHT_VECTORS_SHIFT + 2),
    MODEL_LIGHT_VECTOR_4 = 1 << (MODEL_LIGHT_VECTORS_SHIFT + 3),
    MODEL_LIGHT_COLOR_1 = 1 << MODEL_LIGHT_COLORS_SHIFT,
    MODEL_LIGHT_COLOR_2 = 1 << (MODEL_LIGHT_COLORS_SHIFT + 1),
    MODEL_LIGHT_COLOR_3 = 1 << (MODEL_LIGHT_COLORS_SHIFT + 2),
    MODEL_LIGHT_COLOR_4 = 1 << (MODEL_LIGHT_COLORS_SHIFT + 3),
    MODEL_DIFFUSE_REFLECT_COLOR = 1 << MODEL_DIFFUSE_REFLECT_COLOR_SHIFT,
    MODEL_AMBIENT_REFLECT_COLOR = 1 << MODEL_AMBIENT_REFLECT_COLOR_SHIFT,
    MODEL_SPECULAR_REFLECT_COLOR = 1 << MODEL_SPECULAR_REFLECT_COLOR_SHIFT,
    MODEL_EMISSION_COLOR = 1 << MODEL_EMISSION_COLOR_SHIFT,
    MODEL_LIGHT_ENABLE_FLAGS = 1 << MODEL_LIGHT_ENABLE_FLAGS_SHIFT,
    MODEL_POLYGON_ATTRS = 1 << MODEL_POLYGON_ATTRS_SHIFT,
    MODEL_POLYGON_MODE = 1 << MODEL_POLYGON_MODE_SHIFT,
    MODEL_CULL_MODE = 1 << MODEL_CULL_MODE_SHIFT,
    MODEL_POLYGON_ID = 1 << MODEL_POLYGON_ID_SHIFT,
    MODEL_ALPHA = 1 << MODEL_ALPHA_SHIFT,
    MODEL_MISC_FOG = 1 << MODEL_MISC_FOG_SHIFT,
    MODEL_MISC_DEPTHTEST_DECAL = 1 << MODEL_MISC_DEPTHTEST_DECAL_SHIFT,
    MODEL_MISC_DISP_1DOT = 1 << MODEL_MISC_DISP_1DOT_SHIFT,
    MODEL_MISC_FAR_CLIPPING = 1 << MODEL_MISC_FAR_CLIPPING_SHIFT,
    MODEL_MISC_XLU_DEPTH_UPDATE = 1 << MODEL_MISC_XLU_DEPTH_UPDATE_SHIFT,
    MODEL_ATTRIBUTES_LAST_BIT = 1 << MODEL_ATTRIBUTES_LAST_SHIFT
};

ModelAttributes *ModelAttributes_New(void);
void ModelAttributes_Free(ModelAttributes **modelAttrs);
void ModelAttributes_ApplyGlobal(ModelAttributes *modelAttrs, int attributes);
void ModelAttributes_ApplyToModel(ModelAttributes *modelAttrs, NNSG3dResMdl *model, int attributes);
void ModelAttributes_SetLightVector(ModelAttributes *modelAttrs, int index, fx16 x, fx16 y, fx16 z);
void ModelAttributes_SetLightColor(ModelAttributes *modelAttrs, int index, GXRgb lightColor);
void ModelAttributes_SetDiffuseReflection(ModelAttributes *modelAttrs, GXRgb diffuseReflectColor, BOOL setDiffuseColorAsVertexColor, BOOL applyGlobal);
void ModelAttributes_SetAmbientReflection(ModelAttributes *modelAttrs, GXRgb ambientReflectColor, BOOL applyGlobal);
void ModelAttributes_SetSpecularReflection(ModelAttributes *modelAttrs, GXRgb specularReflectColor, BOOL enableSpecularReflectShininessTable, BOOL applyGlobal);
void ModelAttributes_SetEmissionColor(ModelAttributes *modelAttrs, GXRgb emissionColor, BOOL applyGlobal);
void ModelAttributes_SetPolygonMode(ModelAttributes *modelAttrs, GXPolygonMode polygonMode, BOOL applyGlobal);
void ModelAttributes_SetCullMode(ModelAttributes *modelAttrs, GXCull cullMode, BOOL applyGlobal);
void ModelAttributes_SetAlpha(ModelAttributes *modelAttrs, int alpha, BOOL applyGlobal);
void ModelAttributes_SetMiscAttrEnabled(ModelAttributes *modelAttrs, int miscFlagsMask, BOOL enable, BOOL applyGlobal);

#endif // POKEPLATINUM_OV5_MODEL_ATTRIBUTES_H
