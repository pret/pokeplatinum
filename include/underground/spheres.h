#ifndef POKEPLATINUM_UNDERGROUND_SPHERES_H
#define POKEPLATINUM_UNDERGROUND_SPHERES_H

#include <nitro/math.h>

#include "generated/sphere_types.h"

#include "field/field_system_decl.h"

#include "string_gf.h"

typedef struct TouchRadarSearchContext {
    u16 iterator;
    u16 radius;
} TouchRadarSearchContext;

typedef struct TouchRadarCoordinates {
    s16 x;
    s16 z;
} TouchRadarCoordinates;

void SpheresEnv_Init(void *dest, FieldSystem *fieldSystem);
int SpheresEnv_Size(void);
void Spheres_DisableBuriedSphereSparkles(void);
void Spheres_EnableBuriedSphereSparkles(void);
void SpheresEnv_Free(void);
void Spheres_AdvanceBuriedSphereSparkleTimer(void);
void Spheres_ProcessRetrieveBuriedSphereRequest(int unused, int unused2, void *src, void *unused3);
void TouchRadarSearch_Init(TouchRadarSearchContext *ctx, int radius);
BOOL TouchRadarSearch_GetNextCoords(TouchRadarSearchContext *ctx, TouchRadarCoordinates *out);
void Spheres_TryBurySphere(enum SphereType sphereType, int sphereSize, int x, int z);
BOOL Spheres_IsMiningItemSphere(int miningItemID);
BOOL Spheres_IsBuriedSphereAtCoordinates(int x, int z);
int Spheres_GetBuriedSphereXCoordAtIndex(int index);
int Spheres_GetBuriedSphereZCoordAtIndex(int index);
BOOL Spheres_GetQueuedMessage(String *string);
int Spheres_SpawnMiningSpotsNearBuriedSpheres(MATHRandContext16 *rand);
void SphereRadar_Start(void);
void SphereRadar_Exit(void);
int SphereRadar_GetXCoordOfBuriedSphere(int radarIndex);
int SphereRadar_GetZCoordOfBuriedSphere(int radarIndex);

#endif // POKEPLATINUM_UNDERGROUND_SPHERES_H
