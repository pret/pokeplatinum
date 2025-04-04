#ifndef POKEPLATINUM_FIELD_MENU_H
#define POKEPLATINUM_FIELD_MENU_H

#include "field/field_system_decl.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"

#define FIELD_MENU_ENTRIES_MAX 28

typedef struct FieldMenuManager {
    FieldSystem *fieldSystem;
    SysTask *sysTask;
    Window menuWindow;
    Window *parentWindow;
    Strbuf *choicesStringsBuffers[FIELD_MENU_ENTRIES_MAX];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    u8 sysTaskDelay;
    u8 unk_95;
    u8 initialCursorPos;
    u8 canExitWithB : 1;
    u8 freeMsgLoaderOnDelete : 1;
    u8 unk_97_2 : 4;
    u8 anchorRight : 1;
    u8 anchorBottom : 1;
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
    StringList menuChoicesStrings[FIELD_MENU_ENTRIES_MAX];
    ListMenuTemplate listMenuTemplate;
    ListMenu *listMenu;
    u16 unk_1C0;
    u16 listMenuAltTextIndex;
    StringList listMenuChoicesStrings[FIELD_MENU_ENTRIES_MAX];
    u16 choicesAltTextStringIDs[FIELD_MENU_ENTRIES_MAX];
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
void FieldMenu_ShowCurrentFloorWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u16 unused);
u16 FieldMenu_GetFloorsAbove(int location);
void FieldMenuManager_ShowMultiColumnMenu(FieldMenuManager *menuManager, u8 columnsCount);
Window *FieldMenu_CreateMoneyWindow(FieldSystem *fieldSystem, u8 tilemapTop, u8 tilemapLeft);
void FieldMenu_DeleteMoneyWindow(Window *window);
void FieldMenu_PrintMoneyToWindow(FieldSystem *fieldSystem, Window *window);
Window *FieldMenu_DrawCoinWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void FieldMenu_DeleteSpecialCurrencyWindow(Window *window);
void FieldMenu_PrintCoinsToWindow(FieldSystem *fieldSystem, Window *window);
Window *FieldMenu_DrawBPWindow(FieldSystem *fieldSystem, u8 tilemapLeft, u8 tilemapTop);
void FieldMenu_PrintBPToWindow(FieldSystem *fieldSystem, Window *window);
FieldMenuManager *FieldMenuManager_NewMoveTutorCostWindow(FieldSystem *fieldSystem, u8 anchorX, u8 anchorY, u16 *selectedOptionPtr, StringTemplate *stringTemplate, u8 redCost, u8 blueCost, u8 yellowCost, u8 greenCost);
void FieldMenuManager_DeleteMoveTutorCost(FieldMenuManager *menuManager);
void FieldMenuManager_SetHorizontalAnchor(FieldMenuManager *menuManager, BOOL horizontalAnchor);
void FieldMenuManager_SetVerticalAnchor(FieldMenuManager *menuManager, BOOL verticalAnchor);

#endif // POKEPLATINUM_FIELD_MENU_H
