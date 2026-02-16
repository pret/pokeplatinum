#ifndef POKEPLATINUM_OV104_02231F74_H
#define POKEPLATINUM_OV104_02231F74_H

#include "struct_defs/pokemon.h"

#include "overlay063/struct_ov63_0222BEC0_decl.h"
#include "overlay063/struct_ov63_0222CCB8.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/struct_ov104_0222FEDC.h"
#include "overlay104/struct_ov104_022320B4_decl.h"
#include "overlay104/struct_ov104_0223C4CC_decl.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "sprite.h"
#include "string_template.h"
#include "sys_task_manager.h"

#define FRONTIER_MENU_ENTRIES_MAX 28

typedef struct FrontierMenuManager {
    UnkStruct_ov104_022320B4 *unk_00;
    SysTask *sysTask;
    Window window;
    Window *parent;
    String *choiceStringBuffers[FRONTIER_MENU_ENTRIES_MAX];
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    u8 sysTaskDelay;
    u8 unused;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unused2 : 4;
    u8 anchorRight : 1;
    u8 anchorBottom : 1;
    u8 anchorX;
    u8 anchorY;
    u8 unused3;
    u8 optionCount;
    u16 *unused4;
    u16 *selectedOptionPtr;
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList menuChoiceStrings[FRONTIER_MENU_ENTRIES_MAX];
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unused5;
    u16 listMenuAltTextIndex;
    StringList listMenuChoiceStrings[FRONTIER_MENU_ENTRIES_MAX];
    u16 choicesAltTextEntryIDs[FRONTIER_MENU_ENTRIES_MAX];
    u16 cursorPos;
} FrontierMenuManager;

void FrontierShowMessage(UnkStruct_ov104_022320B4 *param0, const MessageLoader *msgLoader, u16 messageID, u8 canSpeedUp, FrontierMessageOptions *msgOptions);
void Frontier_CloseMessage(UnkStruct_ov104_022320B4 *param0);
FrontierMenuManager *FrontierMenuManager_New(UnkStruct_ov104_022320B4 *param0, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 CanExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader);
void FrontierMenuManager_AddMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index);
void FrontierMenuManager_ShowMenu(FrontierMenuManager *menuManager);
FrontierMenuManager *FrontierMenuManager_New2(UnkStruct_ov104_022320B4 *param0, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 CanExitWithB, u16 *selectedOptionPtr, StringTemplate *strTemplate, MessageLoader *msgLoader);
void FrontierMenuManager_AddListMenuEntry(FrontierMenuManager *menuManager, u32 entryID, u32 altTextEntryID, u32 index);
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
void ov104_022330FC(FrontierScriptContext *param0, u16 *param1);
void ov104_0223310C(FrontierScriptContext *param0, u16 *param1, u32 param2);
void ov104_0223319C(SysTask *param0, void *param1);
void ov104_022331E8(SysTask *param0, void *param1);
void FrontierMenuManager_SetHorizontalAnchor(FrontierMenuManager *menuManager, BOOL anchorRight);
void FrontierMenuManager_SetVerticalAnchor(FrontierMenuManager *menuManager, BOOL anchorBottom);

#endif // POKEPLATINUM_OV104_02231F74_H
