#ifndef POKEPLATINUM_FRONTIER_DEFS_H
#define POKEPLATINUM_FRONTIER_DEFS_H

#include "constants/heap.h"

#include "struct_decls/struct_0209B75C_decl.h"

#include "overlay104/struct_ov104_0222E8C8.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "string_gf.h"
#include "string_template.h"

#define FRONTIER_MENU_ENTRIES_MAX 28

typedef struct FrontierScriptManager FrontierScriptManager;
typedef struct FrontierScriptContext FrontierScriptContext;

typedef BOOL (*FrontierScrCmdFunc)(FrontierScriptContext *);
typedef BOOL (*FrontierShouldResumeScriptFunc)(FrontierScriptContext *);

struct FrontierScriptContext {
    FrontierScriptManager *scriptMan;
    u32 unk_04;
    u16 unk_08[8];
    u8 stackPointer;
    u8 state;
    const u8 *scriptPtr;
    const u8 *stack[20];
    const FrontierScrCmdFunc *cmdTable;
    u32 cmdTableSize;
    u16 data[4];
    MessageLoader *msgLoader;
    u8 *scripts;
    FrontierShouldResumeScriptFunc shouldResume;
    u8 comparisonResult;
};

typedef struct FrontierMenuManager {
    FrontierScriptManager *scriptMan;
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
    u8 movementCount;
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

#endif // POKEPLATINUM_FRONTIER_DEFS_H
