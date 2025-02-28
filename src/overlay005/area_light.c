#include "overlay005/area_light.h"

#include <nitro.h>
#include <string.h>

#include "constants/gx.h"
#include "constants/heap.h"
#include "constants/narc.h"

#include "overlay005/model_attributes.h"

#include "ascii_util.h"
#include "graphics.h"
#include "heap.h"
#include "rtc.h"

#define AREA_LIGHT_FILE_COUNT 4
#define SCRATCH_BUFFER_SIZE   256
#define INVALID_LIGHT_COLOR   0xFFFF

static void AreaLightManager_ApplyActiveParamsToAreaModelAttrs(AreaLightManager *areaLightMan);
static u32 AreaLightParameters_New(u32 archiveID, AreaLightParameters **paramsList);
static void AreaLightParameters_Free(AreaLightParameters **params);
static char *AreaLightParameters_ParseLightParams(char *fileIter, GXRgb *lightColor, VecFx16 *lightVector);
static char *AreaLightParameters_ParseColor(char *fileIter, GXRgb *color);

AreaLightManager *AreaLightManager_New(ModelAttributes *areaModelAttrs, const u8 archiveID)
{
    int i;
    AreaLightManager *areaLightMan;
    int currentTime;

    GF_ASSERT(archiveID < AREA_LIGHT_FILE_COUNT);

    areaLightMan = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(AreaLightManager));

    areaLightMan->areaModelAttrs = areaModelAttrs;
    areaLightMan->paramsCount = AreaLightParameters_New(archiveID, &areaLightMan->paramsList);
    areaLightMan->activeParamsIndex = 0;

    currentTime = GetSecondsSinceMidnight() / 2;

    for (i = 0; i < areaLightMan->paramsCount; i++) {
        if (areaLightMan->paramsList[i].endTime > currentTime) {
            areaLightMan->activeParamsIndex = i;
            break;
        }
    }

    areaLightMan->applyToAreaModelAttrs = TRUE;
    AreaLightManager_ApplyActiveParamsToAreaModelAttrs(areaLightMan);

    return areaLightMan;
}

void AreaLightManager_Free(AreaLightManager **areaLightMan)
{
    GF_ASSERT(areaLightMan);

    AreaLightParameters_Free(&(*areaLightMan)->paramsList);
    Heap_FreeToHeapExplicit(HEAP_ID_FIELD, *areaLightMan);

    *areaLightMan = NULL;
}

void AreaLightManager_UpdateActiveParams(AreaLightManager *areaLightMan)
{
    int previousEndTime;
    int activeEndTime;
    int currentTime;

    GF_ASSERT(areaLightMan);

    currentTime = GetSecondsSinceMidnight() / 2;

    if (areaLightMan->paramsCount > 1) {
        if (areaLightMan->activeParamsIndex - 1 >= 0) {
            previousEndTime = areaLightMan->paramsList[areaLightMan->activeParamsIndex - 1].endTime;
        } else {
            previousEndTime = 0;
        }

        activeEndTime = areaLightMan->paramsList[areaLightMan->activeParamsIndex].endTime;

        if (currentTime >= activeEndTime || currentTime < previousEndTime) {
            areaLightMan->activeParamsIndex++;

            if (areaLightMan->activeParamsIndex >= areaLightMan->paramsCount) {
                areaLightMan->activeParamsIndex = 0;
            }

            if (areaLightMan->applyToAreaModelAttrs) {
                AreaLightManager_ApplyActiveParamsToAreaModelAttrs(areaLightMan);
            }
        }
    }
}

void AreaLightParameters_ApplyToModelAttributes(const AreaLightParameters *params, ModelAttributes *modelAttrs)
{
    for (int i = 0; i < GX_LIGHTS_COUNT; i++) {
        int currentLightMask = (1 << i);

        if ((params->validLightsMask & currentLightMask) != 0) {
            ModelAttributes_SetLightVector(modelAttrs, i, params->lightVectors[i].x, params->lightVectors[i].y, params->lightVectors[i].z);
            ModelAttributes_SetLightColor(modelAttrs, i, params->lightColors[i]);
        } else {
            ModelAttributes_SetLightVector(modelAttrs, i, 0, 0, 0);
            ModelAttributes_SetLightColor(modelAttrs, i, GX_RGB(0, 0, 0));
        }
    }

    ModelAttributes_SetDiffuseReflection(modelAttrs, params->diffuseReflectColor, FALSE, FALSE);
    ModelAttributes_SetAmbientReflection(modelAttrs, params->ambientReflectColor, TRUE);
    ModelAttributes_SetSpecularReflection(modelAttrs, params->specularReflectColor, FALSE, FALSE);
    ModelAttributes_SetEmissionColor(modelAttrs, params->emissionColor, TRUE);
}

static void AreaLightManager_ApplyActiveParamsToAreaModelAttrs(AreaLightManager *areaLightMan)
{
    AreaLightParameters *activeParams = &areaLightMan->paramsList[areaLightMan->activeParamsIndex];
    AreaLightParameters_ApplyToModelAttributes(activeParams, areaLightMan->areaModelAttrs);
}

void AreaLight_UseGlobalModelAttributes(NNSG3dResMdl *model)
{
    NNS_G3dMdlUseGlbDiff(model);
    NNS_G3dMdlUseGlbAmb(model);
    NNS_G3dMdlUseGlbSpec(model);
    NNS_G3dMdlUseGlbEmi(model);
}

static u32 AreaLightParameters_New(u32 archiveID, AreaLightParameters **paramsList)
{
    int i, j;
    int paramsCount;
    void *fileIter;
    void *fileBuffer;
    char lineBuffer[SCRATCH_BUFFER_SIZE];
    char *iter;
    char endTimeBuffer[SCRATCH_BUFFER_SIZE];
    AreaLightParameters *params;

    fileBuffer = LoadMemberFromNARC(NARC_INDEX_DATA__AREALIGHT, archiveID, FALSE, HEAP_ID_FIELD, FALSE);
    fileIter = fileBuffer;
    paramsCount = 0;

    do {
        fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');

        if (!(lineBuffer[0] == 'E' && lineBuffer[1] == 'O' && lineBuffer[2] == 'F')) {
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
            paramsCount++;
        }
    } while (!(lineBuffer[0] == 'E' && lineBuffer[1] == 'O' && lineBuffer[2] == 'F'));

    *paramsList = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(AreaLightParameters) * paramsCount);
    MI_CpuClear8(*paramsList, sizeof(AreaLightParameters) * paramsCount);
    fileIter = fileBuffer;

    for (i = 0; i < paramsCount; i++) {
        params = &(*paramsList)[i];
        fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
        iter = lineBuffer;
        iter = Ascii_CopyToTerminator(iter, endTimeBuffer, ',');
        params->endTime = Ascii_ConvertToInt(endTimeBuffer);

        for (j = 0; j < GX_LIGHTS_COUNT; j++) {
            fileIter = AreaLightParameters_ParseLightParams(fileIter, &params->lightColors[j], &params->lightVectors[j]);

            if (params->lightColors[j] != INVALID_LIGHT_COLOR) {
                params->validLightsMask |= 1 << j;
            } else {
                params->lightColors[j] = GX_RGB(0, 0, 0);
            }
        }

        fileIter = AreaLightParameters_ParseColor(fileIter, &params->diffuseReflectColor);
        fileIter = AreaLightParameters_ParseColor(fileIter, &params->ambientReflectColor);
        fileIter = AreaLightParameters_ParseColor(fileIter, &params->specularReflectColor);
        fileIter = AreaLightParameters_ParseColor(fileIter, &params->emissionColor);
        fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
    }

    Heap_FreeToHeapExplicit(HEAP_ID_FIELD, fileBuffer);

    return paramsCount;
}

static void AreaLightParameters_Free(AreaLightParameters **params)
{
    Heap_FreeToHeapExplicit(HEAP_ID_FIELD, *params);
    *params = NULL;
}

static char *AreaLightParameters_ParseLightParams(char *fileIter, GXRgb *lightColor, VecFx16 *lightVector)
{
    char lineBuffer[SCRATCH_BUFFER_SIZE];
    char partBuffer[SCRATCH_BUFFER_SIZE];
    char *iter;
    u32 lightValid;
    int i;
    u16 lightColorParts[GX_COLOR_DIMS];
    s32 lightVectorParts[GX_VEC_FX_DIMS];

    fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');

    iter = lineBuffer;
    iter = Ascii_CopyToTerminator(iter, partBuffer, ',');
    lightValid = Ascii_ConvertToInt(partBuffer);

    if (lightValid == TRUE) {
        for (i = 0; i < GX_COLOR_DIMS; i++) {
            iter = Ascii_CopyToTerminator(iter, partBuffer, ',');
            lightColorParts[i] = Ascii_ConvertToInt(partBuffer);
        }

        *lightColor = GX_RGB(lightColorParts[0], lightColorParts[1], lightColorParts[2]);

        for (i = 0; i < GX_VEC_FX_DIMS; i++) {
            iter = Ascii_CopyToTerminator(iter, partBuffer, ',');
            lightVectorParts[i] = Ascii_ConvertToInt(partBuffer);
        }

        lightVector->x = lightVectorParts[0];
        lightVector->y = lightVectorParts[1];
        lightVector->z = lightVectorParts[2];

        if (lightVector->x > FX16_ONE) {
            lightVector->x = FX16_ONE;
        }

        if (lightVector->x < -FX16_ONE) {
            lightVector->x = -FX16_ONE;
        }

        if (lightVector->y > FX16_ONE) {
            lightVector->y = FX16_ONE;
        }

        if (lightVector->y < -FX16_ONE) {
            lightVector->y = -FX16_ONE;
        }

        if (lightVector->z > FX16_ONE) {
            lightVector->z = FX16_ONE;
        }

        if (lightVector->z < -FX16_ONE) {
            lightVector->z = -FX16_ONE;
        }
    } else {
        *lightColor = INVALID_LIGHT_COLOR;
    }

    return fileIter;
}

static char *AreaLightParameters_ParseColor(char *fileIter, GXRgb *color)
{
    char lineBuffer[SCRATCH_BUFFER_SIZE];
    char partBuffer[SCRATCH_BUFFER_SIZE];
    char *iter;
    int i;
    u16 colorParts[GX_COLOR_DIMS];

    fileIter = Ascii_CopyToTerminator(fileIter, lineBuffer, '\r');
    iter = lineBuffer;

    for (i = 0; i < GX_COLOR_DIMS; i++) {
        iter = Ascii_CopyToTerminator(iter, partBuffer, ',');
        colorParts[i] = Ascii_ConvertToInt(partBuffer);
    }

    *color = GX_RGB(colorParts[0], colorParts[1], colorParts[2]);

    return fileIter;
}
