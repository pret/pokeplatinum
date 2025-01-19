#ifndef POKEPLATINUM_OV104_02231F74_H
#define POKEPLATINUM_OV104_02231F74_H

#include "struct_decls/cell_actor_data.h"
#include "struct_defs/pokemon.h"

#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay104/struct_ov104_0222E930_decl.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_02232B5C_decl.h"
#include "overlay104/struct_ov104_0223C4CC_decl.h"

#include "message.h"
#include "string_template.h"
#include "sys_task_manager.h"

void ov104_02231F74(UnkStruct_ov104_022320B4 *param0, const MessageLoader *param1, u16 param2, u8 param3, UnkStruct_ov104_0222FEDC *param4);
void ov104_02232088(UnkStruct_ov104_022320B4 *param0);
void ov104_022320B4(UnkStruct_ov104_022320B4 *param0, u8 param1, u16 param2, u16 param3, u16 param4, s16 param5, u8 param6);
UnkStruct_ov104_02232B5C *ov104_02232258(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7);
void ov104_022322A8(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
void ov104_022322B0(UnkStruct_ov104_02232B5C *param0);
UnkStruct_ov104_02232B5C *ov104_022325FC(UnkStruct_ov104_022320B4 *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 *param5, StringTemplate *param6, MessageLoader *param7);
void ov104_0223261C(UnkStruct_ov104_02232B5C *param0, u32 param1, u32 param2, u32 param3);
void ov104_02232624(UnkStruct_ov104_02232B5C *param0);
void ov104_02232B5C(UnkStruct_ov104_02232B5C *param0);
void ov104_02232B78(SysTask *param0, void *param1);
void ov104_02232C80(UnkStruct_ov63_0222CCB8 *param0, UnkStruct_ov63_0222BEC0 *param1, int param2, int param3);
void ov104_02232CE0(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, u16 param9);
void ov104_02232E80(UnkStruct_ov104_0223C4CC *param0, int param1);
void ov104_02232EC0(UnkStruct_ov104_0223C4CC *param0);
void ov104_02232F28(UnkStruct_ov104_0223C4CC *param0);
CellActorData *ov104_02232F4C(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4);
void ov104_02232FD4(UnkStruct_ov104_0223C4CC *param0, CellActorData *param1, int param2);
void ov104_02232FEC(UnkStruct_ov104_0223C4CC *param0);
void ov104_0223307C(UnkStruct_ov104_0223C4CC *param0);
CellActorData *ov104_022330AC(UnkStruct_ov104_0223C4CC *param0, int param1, int param2);
void ov104_022330F0(UnkStruct_ov104_0223C4CC *param0, CellActorData *param1);
void ov104_022330FC(UnkStruct_ov104_0222E930 *param0, u16 *param1);
void ov104_0223310C(UnkStruct_ov104_0222E930 *param0, u16 *param1, u32 param2);
void ov104_0223319C(SysTask *param0, void *param1);
void ov104_022331E8(SysTask *param0, void *param1);
void ov104_0223327C(UnkStruct_ov104_02232B5C *param0, int param1);
void ov104_02233298(UnkStruct_ov104_02232B5C *param0, int param1);

#endif // POKEPLATINUM_OV104_02231F74_H
