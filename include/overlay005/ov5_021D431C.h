#ifndef POKEPLATINUM_OV5_021D431C_H
#define POKEPLATINUM_OV5_021D431C_H

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021D432C_decl.h"
#include "overlay005/struct_ov5_021D4E00_decl.h"

#include "field_task.h"

#define DOOR_SOUND_EFFECT_TYPE_HINGED                    0
#define DOOR_SOUND_EFFECT_TYPE_SLIDING                   1
#define DOOR_SOUND_EFFECT_TYPE_VEILSTONE_DPT_STORE_CHIME 2

UnkStruct_ov5_021D432C *ov5_021D431C(void);
void ov5_021D432C(UnkStruct_ov5_021D432C *param0);
void ov5_021D4334(const int param0, const int param1, UnkStruct_ov5_021D432C *param2);
BOOL ov5_021D433C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1);
BOOL ov5_021D453C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1);
BOOL ov5_021D4858(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2);
BOOL ov5_021D4A24(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2);
void DoorAnimation_FindDoorAndLoad(FieldSystem *fieldSystem, const int x, const int z, const u8 tag);
void DoorAnimation_PlayOpenAnimation(FieldSystem *fieldSystem, const u8 tag);
void DoorAnimation_PlayCloseAnimation(FieldSystem *fieldSystem, const u8 tag);
void FieldSystem_WaitForAnimation(FieldSystem *fieldSystem, const u8 tag);
void FieldSystem_UnloadAnimation(FieldSystem *fieldSystem, const u8 tag);
void ov5_021D4D78(const int param0, const int param1, const int param2, FieldSystem *param3);
UnkStruct_ov5_021D4E00 *ov5_021D4E00(void);
BOOL ov5_021D4E10(FieldTask *param0);
BOOL ov5_021D4F14(FieldTask *param0);
BOOL ov5_021D4FA0(FieldTask *param0);
BOOL ov5_021D5020(FieldTask *param0);
BOOL ov5_021D5150(FieldTask *param0);

#endif // POKEPLATINUM_OV5_021D431C_H
