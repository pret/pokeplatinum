#ifndef POKEPLATINUM_FOG_MANAGER_H
#define POKEPLATINUM_FOG_MANAGER_H

#include <nitro/gx.h>

#include "constants/graphics.h"

typedef struct FogManager {
    BOOL enabled;
    GXFogBlend mode;
    GXFogSlope slope;
    int offset;
    GXRgb color;
    int alpha;
    char densityTable[G3X_FOG_DENSITY_TABLE_SIZE];
} FogManager;

enum FogParameterFlags {
    FOG_PARAMETER_ENABLED = (1 << 0),
    FOG_PARAMETER_MODE = (1 << 1),
    FOG_PARAMETER_SLOPE = (1 << 2),
    FOG_PARAMETER_OFFSET = (1 << 3),
    FOG_PARAMETER_COLOR = (1 << 4),
    FOG_PARAMETER_ALPHA = (1 << 5),
    FOG_PARAMETER_ALL = 0xFFFFFFFF,
};

FogManager *FogManager_New(void);
void FogManager_Free(FogManager **fogMan);
BOOL FogManager_IsEnabled(FogManager *fogMan);
int FogManager_GetSlope(FogManager *fogMan);
int FogManager_GetOffset(FogManager *fogMan);
GXRgb FogManager_GetColor(FogManager *fogMan);
void FogManager_ApplyParameters(FogManager *fogMan, enum FogParameterFlags paramFlags, BOOL enabled, GXFogBlend mode, GXFogSlope slope, int offset);
void FogManager_ApplyColor(FogManager *fogMan, enum FogParameterFlags paramFlags, GXRgb color, int alpha);
void FogManager_ApplyDensityTable(FogManager *fogMan, const char *densityTable);

#endif // POKEPLATINUM_FOG_MANAGER_H
