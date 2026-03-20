#ifndef POKEPLATINUM_OV104_02231F74_H
#define POKEPLATINUM_OV104_02231F74_H

#include "struct_defs/pokemon.h"

#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay104/defs.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_0223C4CC_decl.h"

#include "message.h"
#include "sprite.h"
#include "string_template.h"
#include "sys_task_manager.h"

void FrontierShowMessage(FrontierScriptManager *scriptMan, const MessageLoader *msgLoader, u16 messageID, u8 canSpeedUp, FrontierMessageOptions *msgOptions);
void Frontier_CloseMessage(FrontierScriptManager *scriptMan);
FrontierMenuManager *FrontierMenuManager_New(FrontierScriptManager *scriptMan, u8 anchorX, u8 anchorY, u8 initalCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader);
void FrontierMenuManager_AddMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index);
void FrontierMenuManager_ShowMenu(FrontierMenuManager *menuManager);
FrontierMenuManager *FrontierMenuManager_New2(FrontierScriptManager *scriptMan, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader);
void FrontierMenuManager_AddListMenuEntry(FrontierMenuManager *menuManager, u32 entry, u32 altTextEntryID, u32 index);
void FrontierMenuManager_ShowListMenu(FrontierMenuManager *menuManager);
void FrontierMenuManager_FreeListMenu(FrontierMenuManager *menuManager);
void ov104_02232B78(SysTask *param0, void *param1);
void ov104_02232C80(UnkStruct_ov63_0222CCB8 *param0, UnkStruct_ov63_0222BEC0 *param1, int param2, int param3);
void ov104_02232CE0(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, enum HeapID heapID, int param3, int param4, int param5, int param6, int param7, int param8, u16 param9);
void ov104_02232E80(UnkStruct_ov104_0223C4CC *param0, int param1);
void ov104_02232EC0(UnkStruct_ov104_0223C4CC *param0);
void ov104_02232F28(UnkStruct_ov104_0223C4CC *param0);
ManagedSprite *ov104_02232F4C(UnkStruct_ov104_0223C4CC *param0, Pokemon *param1, int param2, int param3, int param4);
void ov104_02232FD4(UnkStruct_ov104_0223C4CC *param0, ManagedSprite *param1, int param2);
void ov104_02232FEC(UnkStruct_ov104_0223C4CC *param0);
void ov104_0223307C(UnkStruct_ov104_0223C4CC *param0);
ManagedSprite *ov104_022330AC(UnkStruct_ov104_0223C4CC *param0, int param1, int param2);
void ov104_022330F0(UnkStruct_ov104_0223C4CC *param0, ManagedSprite *param1);
void ov104_022330FC(FrontierScriptContext *ctx, u16 *args);
void ov104_0223310C(FrontierScriptContext *ctx, u16 *args, u32 bankID);
void ov104_0223319C(SysTask *param0, void *param1);
void ov104_022331E8(SysTask *param0, void *param1);
void FrontierMenuManager_SetHorizontalAnchor(FrontierMenuManager *menuManager, BOOL anchorRight);
void FrontierMenuManager_SetVerticalAnchor(FrontierMenuManager *menuManager, BOOL anchorBottom);

#endif // POKEPLATINUM_OV104_02231F74_H
