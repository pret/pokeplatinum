#ifndef POKEPLATINUM_UNK_0205B33C_H
#define POKEPLATINUM_UNK_0205B33C_H

#include <nitro/wm.h>

#include "struct_decls/struct_02014EC4_decl.h"
#include "struct_decls/struct_0205B43C_decl.h"
#include "struct_defs/sentence.h"

#include "field/field_system_decl.h"

#include "string_template.h"
#include "sys_task_manager.h"
#include "trainer_info.h"

UnkStruct_0205B43C *FieldSystem_InitCommUnionRoom(FieldSystem *fieldSystem);
void sub_0205B388(FieldSystem *fieldSystem);
void sub_0205B5BC(SysTask *param0, void *param1);
FieldSystem *sub_0205B770(UnkStruct_0205B43C *param0);
WMBssDesc *sub_0205B774(UnkStruct_0205B43C *param0, int param1);
int sub_0205B780(UnkStruct_0205B43C *param0, int param1);
int sub_0205B804(UnkStruct_0205B43C *param0, int param1, u16 param2);
u32 sub_0205B8D8(UnkStruct_0205B43C *param0);
u32 sub_0205B8DC(UnkStruct_0205B43C *param0);
u32 sub_0205B91C(UnkStruct_0205B43C *param0);
void sub_0205B930(UnkStruct_0205B43C *param0, int param1, u32 param2);
void sub_0205B988(int param0, int param1, void *param2, void *param3);
void sub_0205B98C(int param0, int param1, void *param2, void *param3);
void sub_0205B990(int param0, int param1, void *param2, void *param3);
void sub_0205B9AC(int param0, int param1, void *param2, void *param3);
void sub_0205B9C4(int param0, int param1, void *param2, void *param3);
void sub_0205B9E0(int param0, int param1, void *param2, void *param3);
int sub_0205B9E8(UnkStruct_0205B43C *param0);
int sub_0205B9EC(UnkStruct_0205B43C *param0, int param1);
void sub_0205BA08(int param0, int param1, void *param2, void *param3);
u8 *sub_0205BA5C(int param0, void *param1, int param2);
void sub_0205BA6C(int param0, int param1, void *param2, void *param3);
u16 sub_0205BA7C(UnkStruct_0205B43C *param0);
void sub_0205BAAC(int param0);
int UnionRoom_GetTrainerCasePlayerMessage(StringTemplate *strTemplate);
int UnionRoom_GetMessage(UnkStruct_0205B43C *param0, int param1, int msgType, StringTemplate *strTemplate);
u8 UnionRoom_GetCommInfoGameCode(void);
void sub_0205BEA8(int param0);
int UnionRoom_GetTealaMessage(UnkStruct_0205B43C *param0, StringTemplate *strTemplate);
void sub_0205C010(UnkStruct_0205B43C *param0, Sentence *param1);
Sentence *sub_0205C028(UnkStruct_0205B43C *param0);
void UnionRoom_DoGreeting(StringTemplate *strTemplate, int param1, int param2, TrainerInfo *playerTrainerInfo, UnkStruct_02014EC4 *param4);
void sub_0205C12C(Sentence *param0);
void sub_0205C154(UnkStruct_0205B43C *param0);
void *UnionRoom_GetTrainerCase(UnkStruct_0205B43C *param0);
void sub_0205C1F0(UnkStruct_0205B43C *param0);
void UnionRoom_SendTrainerCase(UnkStruct_0205B43C *param0);

#endif // POKEPLATINUM_UNK_0205B33C_H
