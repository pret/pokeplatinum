#ifndef POKEPLATINUM_UNK_0203E880_H
#define POKEPLATINUM_UNK_0203E880_H

#include "field/field_system_decl.h"
#include "field_script_context.h"
#include "struct_decls/struct_0203EF60_decl.h"
#include "struct_defs/struct_0203F478.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

void sub_0203E880(FieldSystem * fieldSystem, u16 param1, MapObject * param2);
void sub_0203E8B0(FieldSystem * fieldSystem, MapObject * param1, int param2, int param3, int param4, int param5, int param6, int param7);
void sub_0203E8E0(TaskManager * param0, u16 param1, MapObject * param2, void * param3);
void sub_0203E918(TaskManager * param0, u16 param1, MapObject * param2);
ScriptContext * sub_0203EAB8(FieldSystem * fieldSystem, u16 param1);
void * sub_0203EF60(UnkStruct_0203EF60 * param0, u32 param1);
void * sub_0203F098(FieldSystem * fieldSystem, u32 param1);
void sub_0203F0C0(FieldSystem * fieldSystem);
u16 * sub_0203F118(FieldSystem * fieldSystem, u16 param1);
u16 sub_0203F150(FieldSystem * fieldSystem, u16 param1);
u16 sub_0203F164(FieldSystem * fieldSystem, u16 param1);
BOOL sub_0203F188(FieldSystem * fieldSystem, u16 param1);
void sub_0203F19C(FieldSystem * fieldSystem, u16 param1);
void sub_0203F1B0(FieldSystem * fieldSystem, u16 param1);
void FieldSystem_ClearLocalFlags(FieldSystem * fieldSystem);
void sub_0203F1FC(FieldSystem * fieldSystem);
void sub_0203F21C(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3, u16 param4);
u16 Script_GetTrainerIDFromEventID(u16 param0);
BOOL sub_0203F278(u16 param0);
BOOL Script_IsDoubleBattle(u16 param0);
BOOL Script_IsTrainerDefeated(FieldSystem * fieldSystem, u16 param1);
void sub_0203F2BC(FieldSystem * fieldSystem, u16 param1);
void sub_0203F2D8(FieldSystem * fieldSystem, u16 param1);
u16 sub_0203F2F4(u16 param0);
u16 sub_0203F304(u16 param0);
void sub_0203F310(FieldSystem * fieldSystem);
u8 sub_0203F3C8(u16 param0);
UnkStruct_0203F478 * sub_0203F478(FieldSystem * fieldSystem, int param1);
void FieldSystem_InitNewGameState(FieldSystem * fieldSystem);
void sub_0203F5A4(FieldSystem * fieldSystem, u16 param1);
BOOL sub_0203F5C0(FieldSystem * fieldSystem, u8 param1);

#endif // POKEPLATINUM_UNK_0203E880_H
