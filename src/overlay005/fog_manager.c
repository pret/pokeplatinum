#include "overlay005/fog_manager.h"

#include <nitro.h>

#include "heap.h"

FogManager *FogManager_New(void)
{
    FogManager *fogMan = Heap_Alloc(HEAP_ID_FIELD1, sizeof(FogManager));
    MI_CpuClear32(fogMan, sizeof(FogManager));

    return fogMan;
}

void FogManager_Free(FogManager **fogMan)
{
    Heap_FreeExplicit(HEAP_ID_FIELD1, *fogMan);
    *fogMan = NULL;
}

BOOL FogManager_IsEnabled(FogManager *fogMan)
{
    return fogMan->enabled;
}

int FogManager_GetSlope(FogManager *fogMan)
{
    return fogMan->slope;
}

int FogManager_GetOffset(FogManager *fogMan)
{
    return fogMan->offset;
}

GXRgb FogManager_GetColor(FogManager *fogMan)
{
    return fogMan->color;
}

void FogManager_ApplyParameters(FogManager *fogMan, enum FogParameterFlags paramFlags, BOOL enabled, GXFogBlend mode, GXFogSlope slope, int offset)
{
    if (paramFlags & FOG_PARAMETER_ENABLED) {
        fogMan->enabled = enabled;
    }

    if (paramFlags & FOG_PARAMETER_MODE) {
        fogMan->mode = mode;
    }

    if (paramFlags & FOG_PARAMETER_SLOPE) {
        fogMan->slope = slope;
    }

    if (paramFlags & FOG_PARAMETER_OFFSET) {
        fogMan->offset = offset;
    }

    G3X_SetFog(fogMan->enabled, fogMan->mode, fogMan->slope, fogMan->offset);
}

void FogManager_ApplyColor(FogManager *fogMan, enum FogParameterFlags paramFlags, GXRgb color, int alpha)
{
    if (paramFlags & FOG_PARAMETER_COLOR) {
        fogMan->color = color;
    }

    if (paramFlags & FOG_PARAMETER_ALPHA) {
        fogMan->alpha = alpha;
    }

    G3X_SetFogColor(fogMan->color, fogMan->alpha);
}

void FogManager_ApplyDensityTable(FogManager *fogMan, const char *densityTable)
{
    MI_CpuCopy32(densityTable, fogMan->densityTable, sizeof(fogMan->densityTable));
    G3X_SetFogTable((u32 *)fogMan->densityTable);
}
