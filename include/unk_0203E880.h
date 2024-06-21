#ifndef POKEPLATINUM_UNK_0203E880_H
#define POKEPLATINUM_UNK_0203E880_H

#include "field/field_system_decl.h"
#include "field_script_context.h"
#include "struct_defs/struct_0203F478.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay005/struct_ov5_021DC1A4_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "string_template.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"
#include "overlay005/struct_ov5_021E1FF4_decl.h"
#include "sys_task_manager.h"

typedef void (* UnkFuncPtr_0203E950)(FieldSystem *);

typedef struct UnkStruct_0203E8B0 {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    MapObject * unk_14;
    SysTask * unk_18;
} UnkStruct_0203E8B0;

typedef struct UnkStruct_0203EF60 {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A;
    BOOL unk_0C;
    UnkStruct_ov5_021DC1A4 * unk_10;
    Window unk_14;
    UIControlData * unk_24;
    int unk_28;
    MapObject * unk_2C;
    MapObject * unk_30;
    u16 * unk_34;
    ScriptContext * unk_38[2];
    StringTemplate * unk_40;
    Strbuf* unk_44;
    Strbuf* unk_48;
    void * unk_4C;
    UnkStruct_0203E8B0 unk_50[2];
    u16 unk_88[14];
    UnkFuncPtr_0203E950 unk_A4;
    void * unk_A8;
    void * unk_AC;
    UnkStruct_ov101_021D5D90 * unk_B0;
    SysTask * unk_B4;
    Window unk_B8;
    Window unk_C8;
    UnkStruct_ov5_021E1FF4 * unk_D8;
} UnkStruct_0203EF60;

void sub_0203E880(FieldSystem * fieldSystem, u16 param1, MapObject * param2);
void sub_0203E8B0(FieldSystem * fieldSystem, MapObject * param1, int param2, int param3, int param4, int param5, int param6, int param7);
void sub_0203E8E0(TaskManager * param0, u16 param1, MapObject * param2, void * param3);
void sub_0203E918(TaskManager * param0, u16 param1, MapObject * param2);
ScriptContext * sub_0203EAB8(FieldSystem * fieldSystem, u16 param1);
void * sub_0203EF60(UnkStruct_0203EF60 * param0, u32 param1);
void * sub_0203F098(FieldSystem * fieldSystem, u32 param1);
void sub_0203F0C0(FieldSystem * fieldSystem);
u16 * FieldSystem_GetVarPointer(FieldSystem * fieldSystem, u16 param1);
u16 sub_0203F150(FieldSystem * fieldSystem, u16 param1);
u16 sub_0203F164(FieldSystem * fieldSystem, u16 param1);
BOOL sub_0203F188(FieldSystem * fieldSystem, u16 param1);
void sub_0203F19C(FieldSystem * fieldSystem, u16 param1);
void sub_0203F1B0(FieldSystem * fieldSystem, u16 param1);
void FieldSystem_ClearLocalFlags(FieldSystem * fieldSystem);
void sub_0203F1FC(FieldSystem * fieldSystem);
void sub_0203F21C(FieldSystem * fieldSystem, u16 param1, u16 param2, u16 param3, u16 param4);
u16 Script_GetTrainerID(u16 param0);
BOOL sub_0203F278(u16 param0);
BOOL Script_IsTrainerDoubleBattle(u16 param0);
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
