#ifndef POKEPLATINUM_OV5_AREA_LIGHT_H
#define POKEPLATINUM_OV5_AREA_LIGHT_H

#include <nitro/fx/fx.h>
#include <nitro/gx.h>
#include <nnsys.h>

#include "constants/gx.h"

#include "overlay005/model_attributes.h"

typedef struct AreaLightTemplate {
    u32 endTime;
    u8 validLightsMask;
    GXRgb lightColors[GX_LIGHTS_COUNT];
    VecFx16 lightVectors[GX_LIGHTS_COUNT];
    GXRgb diffuseReflectColor;
    GXRgb ambientReflectColor;
    GXRgb specularReflectColor;
    GXRgb emissionColor;
} AreaLightTemplate;

typedef struct AreaLightManager {
    u32 templateCount;
    AreaLightTemplate *templates;
    int activeTemplateIndex;
    ModelAttributes *areaModelAttrs;
    BOOL applyToAreaModelAttrs;
} AreaLightManager;

AreaLightManager *AreaLightManager_New(ModelAttributes *areaModelAttrs, const u8 archiveID);
void AreaLightManager_Free(AreaLightManager **areaLightMan);
void AreaLightManager_UpdateActiveTemplate(AreaLightManager *areaLightMan);
void AreaLightTemplate_ApplyToModelAttributes(const AreaLightTemplate *template, ModelAttributes *modelAttrs);
void AreaLight_UseGlobalModelAttributes(NNSG3dResMdl *model);

#endif // POKEPLATINUM_OV5_AREA_LIGHT_H
