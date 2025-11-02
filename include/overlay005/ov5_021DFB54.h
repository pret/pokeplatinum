#ifndef POKEPLATINUM_OV5_021DFB54_H
#define POKEPLATINUM_OV5_021DFB54_H

#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system_decl.h"

#include "field_task.h"
#include "location.h"
#include "sys_task_manager.h"

void PlayerAvatar_SetTransitionState(PlayerAvatar *playerAvatar, u32 param1);
void PlayerAvatar_RequestChangeState(PlayerAvatar *playerAvatar);
int ov5_021DFDE0(FieldSystem *fieldSystem, PlayerAvatar *playerAvatar, enum FaceDirection dir, int param3);
void FieldTask_StartUseSurf(FieldTask *task, int direction, int partySlot);
int PlayerAvatar_CanUseSurf(PlayerAvatar *playerAvatar, u32 currTileBehavior, u32 nextTileBehavior);
void FieldTask_StartUseRockClimb(FieldTask *task, int direction, int partySlot);
BOOL PlayerAvatar_CanUseRockClimb(u32 metatileBehavior, int facingDir);
void ov5_021E097C(FieldSystem *fieldSystem, int param1);
void FieldTask_StartUseWaterfall(FieldTask *task, int direction, int partySlot);
void ov5_021E0DD4(FieldTask *param0);
void ov5_021E0E94(PlayerAvatar *playerAvatar);
void ov5_021E0EEC(PlayerAvatar *playerAvatar);
SysTask *ov5_021E1000(FieldSystem *fieldSystem);
void ov5_021E100C(SysTask *param0);
SysTask *FieldSystem_StartVsSeekerTask(FieldSystem *fieldSystem);
void FieldSystem_EndVsSeekerTask(SysTask *param0);

#endif // POKEPLATINUM_OV5_021DFB54_H
