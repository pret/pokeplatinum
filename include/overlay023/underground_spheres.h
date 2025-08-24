#ifndef POKEPLATINUM_OV23_022416A8_H
#define POKEPLATINUM_OV23_022416A8_H

#include <nitro/math.h>

#include "field/field_system_decl.h"
#include "overlay023/struct_ov23_02241A80.h"
#include "overlay023/struct_ov23_02241A88.h"

#include "strbuf.h"

void BuriedSpheresEnv_Init(void *dest, FieldSystem *fieldSystem);
int BuriedSpheresEnv_Size(void);
void UndergroundSpheres_DisableBuriedSphereSparkles(void);
void UndergroundSpheres_EnableBuriedSphereSparkles(void);
void BuriedSpheresEnv_Free(void);
void UndergroundSpheres_AdvanceBuriedSphereSparkleTimer(void);
void UndergroundSpheres_RetrieveBuriedSphere(int unused, int unused2, void *src, void *unused3);
void ov23_02241A80(UnkStruct_ov23_02241A80 *param0, int param1);
BOOL ov23_02241A88(UnkStruct_ov23_02241A80 *param0, UnkStruct_ov23_02241A88 *param1);
void UndergroundSpheres_TryBurySphere(int sphereType, int sphereSize, int x, int z);
BOOL UndergroundSpheres_IsMiningItemSphere(int miningItemID);
BOOL UndergroundSpheres_IsBuriedSphereAtCoordinates(int x, int z);
int UndergroundSpheres_GetBuriedSphereXCoordAtIndex(int idx);
int UndergroundSpheres_GetBuriedSphereZCoordAtIndex(int idx);
BOOL UndergroundSpheres_CheckForRetrievedSphereNotification(Strbuf *strbuf);
int ov23_02241DF8(MATHRandContext16 *rand);
void SphereRadar_Start(void);
void SphereRadar_Exit(void);
int SphereRadar_GetXCoordOfBuriedSphere(int param0);
int SphereRadar_GetZCoordOfBuriedSphere(int param0);

#endif // POKEPLATINUM_OV23_022416A8_H
