#ifndef POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H
#define POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H

#include "constants/heap.h"

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager_decl.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/struct_ov104_0222E8C8.h"
#include "overlay104/struct_ov104_0223C4CC_decl.h"

#include "bg_window.h"
#include "menu.h"
#include "message.h"
#include "string_gf.h"
#include "string_template.h"

struct FrontierScriptManager {
    UnkStruct_0209B75C *unk_00;
    FrontierScriptContext *ctx[8];
    UnkStruct_ov104_0222E8C8 unk_24;
    enum HeapID heapID;
    u8 unk_38;
    MessageLoader *msgLoader;
    u8 *script;
    StringTemplate *strTemplate;
    String *string;
    String *fmtString;
    u8 printerID;
    s8 numSetContexts;
    u16 scene;
    u8 unused[5];
    u8 unk_59;
    u8 isMsgBoxOpen;
    int unused2;
    FrontierMenuManager *menuMan;
    Window msgWindow;
    Menu *menu;
    u16 *unused3;
    void *savingIcon;
    int unused4[10];
    Window *unk_A8;
    Window *unk_AC;
    u16 unk_B0;
    u16 unk_B2;
    u16 unk_B4;
    u16 unk_B6;
    u16 *unk_B8;
};

FrontierScriptManager *FrontierScriptManager_New(UnkStruct_0209B75C *param0, enum HeapID heapID, int scene);
BOOL ov104_0222E6A8(FrontierScriptManager *scriptMan);
void FrontierScriptManager_Free(FrontierScriptManager *scriptMan);
void FrontierScriptManager_Load(FrontierScriptManager *scriptMan, int scene, int offsetID);
void FrontierScriptManager_UpdateMessageLoader(FrontierScriptManager *scriptMan, int scene, enum HeapID heapID);
UnkStruct_ov104_0222E8C8 *ov104_0222E8C8(FrontierScriptManager *param0, enum HeapID heapID);
void ov104_0222E8E8(FrontierScriptManager *param0, UnkStruct_ov104_0222E8C8 *param1);
u16 *ov104_0222E91C(FrontierScriptManager *param0, int param1);
UnkStruct_ov104_0223C4CC *ov104_0222E924(FrontierScriptManager *param0);

#endif // POKEPLATINUM_FRONTIER_SCRIPT_MANAGER_H
