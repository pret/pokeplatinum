#ifndef POKEPLATINUM_HONEY_TREE_H
#define POKEPLATINUM_HONEY_TREE_H

#include "field/field_system.h"
#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021E1608_decl.h"

HoneyTreeShakeData *HoneyTree_ShakeDataInit(void);
void HoneyTree_FreeShakeData(HoneyTreeShakeData **param0);
BOOL HoneyTree_TryInteract(FieldSystem *fieldSystem, int *eventId);
u16 HoneyTree_GetTreeSlatherStatus(FieldSystem *fieldSystem);
void HoneyTree_SlatherTree(FieldSystem *fieldSystem);
void HoneyTree_StopShaking(FieldSystem *fieldSystem);
int HoneyTree_GetSpecies(FieldSystem *fieldSystem);
void ov5_021F0030(void *param0, const int param1, UnkStruct_ov5_021E1608 *const param2);
void HoneyTree_Unslather(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_HONEY_TREE_H
