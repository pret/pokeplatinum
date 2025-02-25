#ifndef POKEPLATINUM_OV5_021DC018_H
#define POKEPLATINUM_OV5_021DC018_H

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"

#define GENERIC_MENU_ENTRIES_MAX 28
#define NO_ALT_TEXT              0xff

typedef struct {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    Window menuWindow;
    Window *parentWindow;
    Strbuf *choicesStringsBuffers[GENERIC_MENU_ENTRIES_MAX];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    u8 sysTaskDelay;
    u8 unk_95;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unk_97_2 : 4;
    u8 horizontalAnchor : 1;
    u8 verticalAnchor : 1;
    u8 anchorX;
    u8 anchorY;
    u8 unk_9A;
    u8 optionsCount;
    u16 *unk_9C;
    u16 *selectedOptionPtr;
    u16 *listMenuListOffsetPtr;
    u16 *listMenuCursorPosPtr;
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList menuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unk_1C0;
    u16 listMenuAltTextIndex;
    StringList listMenuChoicesStrings[GENERIC_MENU_ENTRIES_MAX];
    u16 choicesAltTextStringIDs[GENERIC_MENU_ENTRIES_MAX];
    u16 cursorPos;
} FieldMenuManager;

FieldMenuManager *FieldMenuManager_New(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
void FieldMenuManager_AddMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 index);
void FieldMenuManager_ShowSingleColumnMenu(FieldMenuManager *menuManager);
void FieldMenuManager_DeleteWithMenu(FieldMenuManager *menuManager);
FieldMenuManager *FieldMenuManager_New2(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u8 initialCursorPos, u8 canExitWithB, u16 *selectedOptionPtr, StringTemplate *stringTemplate, Window *parentWindow, MessageLoader *messageLoader);
void FieldMenuManager_AddListMenuEntry(FieldMenuManager *menuManager, u32 entryID, u32 altTextStringID, u32 entryIndex);
void FieldMenuManager_ShowListMenu(FieldMenuManager *menuManager);
void FieldMenuManager_ShowListMenuWithWidth(FieldMenuManager *menuManager, u16 windowWidth);
void FieldMenuManager_ShowListMenuWithCursorPosition(FieldMenuManager *menuManager, u16 *listOffsetPtr, u16 *cursorPosPtr);
void ov5_021DCB24(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u16 unused);
u16 ov5_021DCCC8(int location);
void FieldMenuManager_ShowMultiColumnMenu(FieldMenuManager *menuManager, u8 columnsCount);
Window *ov5_021DCEB0(FieldSystem *fieldSystem, u8 tilemapTop, u8 tilemapLeft);
void ov5_021DCF58(Window *window);
void ov5_021DCF6C(FieldSystem *fieldSystem, Window *window);
Window *ov5_021DD020(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void ov5_021DD084(Window *window);
void ov5_021DD098(FieldSystem *fieldSystem, Window *window);
Window *ov5_021DD140(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void ov5_021DD1A4(FieldSystem *fieldSystem, Window *window);
FieldMenuManager *FieldMenuManager_NewMoveTutorCostWindow(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u8 redCost, u8 blueCost, u8 yellowCost, u8 greenCost);
void FieldMenuManager_DeleteMoveTutorCost(FieldMenuManager *menuManager);
void FieldMenuManager_SetHorizontalAnchor(FieldMenuManager *menuManager, BOOL horizontalAnchor);
void FieldMenuManager_SetVerticalAnchor(FieldMenuManager *menuManager, BOOL verticalAnchor);

#endif // POKEPLATINUM_OV5_021DC018_H
