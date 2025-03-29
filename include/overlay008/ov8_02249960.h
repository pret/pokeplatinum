#ifndef POKEPLATINUM_OV8_02249960_H
#define POKEPLATINUM_OV8_02249960_H

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "message.h"
#include "strbuf.h"

void ov8_0224997C(FieldSystem *fieldSystem);
BOOL PastoriaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
void PastoriaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void ov8_02249FB8(FieldSystem *fieldSystem);
void CanalaveGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
BOOL ov8_0224AAA8(FieldSystem *fieldSystem);
void CanalaveGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL CanalaveGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
void SunyshoreGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void SunyshoreGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL SunyshoreGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
void ov8_0224AD34(FieldSystem *fieldSystem, const u8 param1);
void EternaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void EternaGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL EternaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
BOOL ov8_0224B67C(FieldSystem *fieldSystem, Window *param1, MessageLoader *param2, Strbuf *param3);
BOOL EternaGym_IsHourHandJumpTile(FieldSystem *fieldSystem, int tileX, int tileY, int direction);
void VeilstoneGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void VeilstoneGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL VeilstoneGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
BOOL ov8_0224BF4C(FieldSystem *fieldSystem);
void HearthomeGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void HearthomeGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL ov8_0224C51C(FieldSystem *fieldSystem);
BOOL ov8_0224C5DC(FieldSystem *fieldSystem, void *param1);
BOOL ov8_0224C62C(FieldSystem *fieldSystem, int param1, int param2, int *param3);

#endif // POKEPLATINUM_OV8_02249960_H
