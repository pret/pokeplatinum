#ifndef POKEPLATINUM_VS_SEEKER_H
#define POKEPLATINUM_VS_SEEKER_H

#include "field/field_system_decl.h"
#include "string_template.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

void VsSeeker_Start(TaskManager *param0, StringTemplate *template, u16 *outResult);
BOOL VsSeeker_UpdateStepCount(FieldSystem * fieldSystem);
u16 VsSeeker_GetRematchTrainerID(FieldSystem * fieldSystem, MapObject * param1, u16 param2);
void VsSeeker_SetMoveCodeForFacingDirection(FieldSystem * fieldSystem, MapObject * param1);

#endif // POKEPLATINUM_VS_SEEKER_H
