#ifndef POKEPLATINUM_OV23_022416A8_H
#define POKEPLATINUM_OV23_022416A8_H

#include <nitro/math.h>

#include "field/field_system_decl.h"

typedef struct TouchRadarSearchContext {
    u16 iterator;
    u16 radius;
} TouchRadarSearchContext;

typedef struct TouchRadarCoordinates {
    s16 x;
    s16 z;
} TouchRadarCoordinates;

#include "string_gf.h"

void BuriedSpheresEnv_Init(void *dest, FieldSystem *fieldSystem);
int BuriedSpheresEnv_Size(void);
void UndergroundSpheres_DisableBuriedSphereSparkles(void);
void UndergroundSpheres_EnableBuriedSphereSparkles(void);
void BuriedSpheresEnv_Free(void);
void UndergroundSpheres_AdvanceBuriedSphereSparkleTimer(void);
void UndergroundSpheres_RetrieveBuriedSphere(int unused, int unused2, void *src, void *unused3);
void TouchRadarSearch_Init(TouchRadarSearchContext *ctx, int radius);
BOOL TouchRadarSearch_GetNextCoords(TouchRadarSearchContext *ctx, TouchRadarCoordinates *out);
void UndergroundSpheres_TryBurySphere(int sphereType, int sphereSize, int x, int z);
BOOL UndergroundSpheres_IsMiningItemSphere(int miningItemID);
BOOL UndergroundSpheres_IsBuriedSphereAtCoordinates(int x, int z);
int UndergroundSpheres_GetBuriedSphereXCoordAtIndex(int idx);
int UndergroundSpheres_GetBuriedSphereZCoordAtIndex(int idx);
BOOL UndergroundSpheres_GetQueuedMessage(String *string);
int ov23_02241DF8(MATHRandContext16 *rand);
void SphereRadar_Start(void);
void SphereRadar_Exit(void);
int SphereRadar_GetXCoordOfBuriedSphere(int radarIndex);
int SphereRadar_GetZCoordOfBuriedSphere(int radarIndex);

#endif // POKEPLATINUM_OV23_022416A8_H
