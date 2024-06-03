#ifndef POKEPLATINUM_VS_SEEKER_H
#define POKEPLATINUM_VS_SEEKER_H

#include "field/field_system_decl.h"
#include "string_template.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

void VsSeeker_Start(TaskManager *param0, StringTemplate *template, u16 *outResult);
BOOL ov5_021DBB94(FieldSystem * fieldSystem);
u16 ov5_021DBD98(FieldSystem * fieldSystem, MapObject * param1, u16 param2);
void ov5_021DBED4(FieldSystem * fieldSystem, MapObject * param1);

#endif // POKEPLATINUM_VS_SEEKER_H
