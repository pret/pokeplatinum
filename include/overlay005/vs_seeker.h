#ifndef POKEPLATINUM_VS_SEEKER_H
#define POKEPLATINUM_VS_SEEKER_H

#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

#include "string_template.h"

void VsSeeker_Start(TaskManager *taskMan, StringTemplate *template, u16 *outResult);
BOOL VsSeeker_UpdateStepCount(FieldSystem *fieldSystem);
u16 VsSeeker_GetRematchTrainerID(FieldSystem *fieldSystem, MapObject *trainerObj, u16 trainerID);
void VsSeeker_SetMoveCodeForFacingDirection(FieldSystem *fieldSystem, MapObject *trainerObj);

#endif // POKEPLATINUM_VS_SEEKER_H
