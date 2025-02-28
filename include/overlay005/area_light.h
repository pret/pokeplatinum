#ifndef POKEPLATINUM_OV5_AREA_LIGHT_H
#define POKEPLATINUM_OV5_AREA_LIGHT_H

#include <nitro/fx/fx.h>
#include <nitro/gx.h>
#include <nnsys.h>

#include "constants/gx.h"

#include "overlay005/model_attributes.h"

typedef struct AreaLightParameters {
    u32 endTime;
    u8 validLightsMask;
    GXRgb lightColors[GX_LIGHTS_COUNT];
    VecFx16 lightVectors[GX_LIGHTS_COUNT];
    GXRgb diffuseReflectColor;
    GXRgb ambientReflectColor;
    GXRgb specularReflectColor;
    GXRgb emissionColor;
} AreaLightParameters;

typedef struct AreaLightManager {
    u32 paramsCount;
    AreaLightParameters *paramsList;
    int activeParamsIndex;
    ModelAttributes *areaModelAttrs;
    BOOL applyToAreaModelAttrs;
} AreaLightManager;

AreaLightManager *AreaLightManager_New(ModelAttributes *areaModelAttrs, const u8 archiveID);
void AreaLightManager_Free(AreaLightManager **areaLightMan);
void AreaLightManager_UpdateActiveParams(AreaLightManager *areaLightMan);
void AreaLightParameters_ApplyToModelAttributes(const AreaLightParameters *params, ModelAttributes *modelAttrs);
void AreaLight_UseGlobalModelAttributes(NNSG3dResMdl *model);

#endif // POKEPLATINUM_OV5_AREA_LIGHT_H
