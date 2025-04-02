#ifndef POKEPLATINUM_OV9_02249960_H
#define POKEPLATINUM_OV9_02249960_H

#include "struct_decls/struct_020216E0_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"
#include "overlay009/struct_ov9_0224F6EC_decl.h"

#include "field_task.h"

typedef struct DistWorldPersistedData {
    u32 valid : 1;
    u32 unk_00_1 : 24;
    u32 unk_00_25 : 4;
    u32 padding : 3;
    u16 cameraAngleX;
    u16 cameraAngleY;
    u16 cameraAngleZ;
    u16 unk_0A;
    u32 unk_0C;
    u8 reserved_10[16];
} DistWorldPersistedData;

void DistWorld_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void DistWorld_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL DistWorld_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
void DistWorld_UpdateCameraAngle(FieldSystem *fieldSystem);
void DistWorld_ResetPersistedCameraAngles(FieldSystem *fieldSystem);
int ov9_0224A520(FieldSystem *fieldSystem, MapObject *param1);
void ov9_0224A558(FieldSystem *fieldSystem, UnkStruct_020216E0 *param1, int param2);
void ov9_0224A564(FieldSystem *fieldSystem, const UnkStruct_020216E0 *param1);
BOOL ov9_0224A59C(FieldSystem *fieldSystem, int param1);
BOOL ov9_0224A67C(FieldSystem *fieldSystem, int param1);
BOOL ov9_0224A71C(FieldSystem *fieldSystem);
BOOL ov9_0224A800(FieldSystem *fieldSystem, int param1);
void ov9_0224CA50(FieldSystem *fieldSystem);
void ov9_0224CA5C(FieldSystem *fieldSystem);
void ov9_0224E884(FieldSystem *fieldSystem, u16 param1);
void ov9_0224E8A8(FieldSystem *fieldSystem);
void ov9_0224F158(FieldSystem *fieldSystem, u16 param1);
void ov9_0224F16C(FieldSystem *fieldSystem, u16 param1);
BOOL ov9_0224F240(const MapObject *param0, int param1);
BOOL ov9_0224F2B0(const MapObject *param0);
UnkStruct_ov9_0224F6EC *ov9_0224F2BC(FieldSystem *fieldSystem, FieldTask *param1, MapObject *param2);
BOOL ov9_0224F6EC(UnkStruct_ov9_0224F6EC *param0);
void ov9_02250780(FieldSystem *fieldSystem);
BOOL ov9_02250F74(FieldSystem *fieldSystem);
BOOL ov9_02250F90(FieldSystem *fieldSystem, int param1, int param2, int param3);
BOOL ov9_02250FBC(FieldSystem *fieldSystem, int param1, int param2, int param3);
BOOL ov9_02250FD8(FieldSystem *fieldSystem, int param1, int param2, int param3);
void ov9_02251000(FieldSystem *fieldSystem, int param1, int param2, int param3);
BOOL ov9_02251044(FieldSystem *fieldSystem, int param1, int param2, int param3, u32 *param4);
void ov9_02251094(int param0, int *param1, int *param2, int *param3);
BOOL ov9_022511A0(FieldSystem *fieldSystem, int param1, int param2, int param3);

#endif // POKEPLATINUM_OV9_02249960_H
