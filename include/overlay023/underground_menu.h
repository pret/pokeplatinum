#ifndef POKEPLATINUM_OV23_0224F294_H
#define POKEPLATINUM_OV23_0224F294_H

#include "struct_defs/underground.h"

#include "field/field_system_decl.h"
#include "overlay005/sprite_resource_manager.h"
#include "overlay023/underground_item_list_menu.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "scroll_prompts.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task_manager.h"

enum UndergroundStartMenuOptions {
    UNDERGROUND_START_MENU_OPTION_TRAPS = 0,
    UNDERGROUND_START_MENU_OPTION_SPHERES,
    UNDERGROUND_START_MENU_OPTION_GOODS,
    UNDERGROUND_START_MENU_OPTION_TREASURES,
    UNDERGROUND_START_MENU_OPTION_TRAINER,
    UNDERGROUND_START_MENU_OPTION_GO_UP,
    UNDERGROUND_START_MENU_OPTION_CLOSE,
    UNDERGROUND_START_MENU_OPTION_COUNT,
};

typedef void (*ExitCallback)(int selectedID);
typedef int (*GetItemCountFunc)(void *menu);
typedef int (*GetItemFunc)(int slot, void *menu);
typedef int (*GetSphereSizeFunc)(int slot, void *menu);

typedef struct UndergroundMenu {
    void *openMenuFn;
    SysTask *sysTask;
    ScrollPrompts *scrollPrompts;
    FieldSystem *fieldSystem;
    Window primaryWindow;
    Window secondaryWindow;
    Window menuDescriptionWindow;
    StringList *menuOptions;
    StringList *itemSelectedOptions;
    ListMenu *unk_48;
    UndergroundItemListMenu *itemListMenu;
    ListMenu *itemSelectedMenu;
    Menu *menu;
    StringList *unk_58;
    Menu *yesNoMenu;
    CursorCallback cursorCallback;
    PrintCallback printCallback;
    Strbuf *strbuf;
    Strbuf *fmtString;
    StringTemplate *template;
    SpriteResourceManager spriteManager;
    ManagedSprite *sprites[UNDERGROUND_START_MENU_OPTION_COUNT + 1];
    u32 spriteCount;
    ExitCallback exitCallback;
    GetItemCountFunc getItemCount;
    GetItemFunc getItem;
    GetSphereSizeFunc getSphereSize;
    void *unk_270;
    u8 unk_274[5];
    u8 unk_279[5];
    u8 unk_27E[5];
    BOOL unk_284;
    int unk_288;
    int unk_28C;
    int listMenuCursorPos;
    int listMenuListPos;
    u32 unk_298;
    u16 menuCursorPos;
    u32 startMenuInput;
    u16 unk_2A4;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 nextState;
    u8 state;
    u8 unk_2AB;
    u8 unk_2AC;
    u16 unk_2AE;
    u16 itemSelectedMenuCursorPos;
} UndergroundMenu;

void UndergroundMenuContext_Init(Underground *underground);
void UndergroundMenuContext_Free(void);
int UndergroundMenu_GetGoodAtSlotPC(int slot, void *menu);
int UndergroundMenu_GetGoodAtSlotBag(int slot, void *menu);
void UndergroundMenu_RemoveSelectedGoodBag(int goodID);
int UndergroundMenu_GetTrapAtSlot(int slot, void *menu);
int UndergroundMenu_GetSphereTypeAtSlot(int slot, void *menu);
int UndergroundMenu_GetSphereSizeAtSlot(int slot, void *menu);
int UndergroundMenu_GetTreasureAtSlot(int slot, void *menu);
BOOL UndergroundInventory_TryAddSphere(int sphereType, int sphereSize);
BOOL UndergroundInventory_TryAddTreasure(int treasureID);
BOOL UndergroundInventory_TryAddTrap(int trapID);
BOOL UndergroundInventory_TryAddGoodBag(int goodID);
void UndergroundMenu_Start(ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundMenu_EraseCurrentMenu(UndergroundMenu *menu);
void UndergroundMenu_RemoveSelectedTrap(int trapID);
void UndergroundMenu_PrintTrapDescription(ListMenu *listMenu, u32 index, u8 onInit);
void ov23_0224FDBC(UndergroundMenu *menu);
void UndergroundMenu_OpenTrapsMenu(UndergroundMenu *menu);
void UndergroundMenu_RemoveSelectedSphere(int sphereType);
void ov23_02250184(UndergroundMenu *menu);
void UndergroundMenu_PrintTreasureDescription(ListMenu *listMenu, u32 index, u8 onInit);
void ov23_02250578(UndergroundMenu *menu);
void UndergroundMenu_OpenTreasuresMenu(UndergroundMenu *menu);
void UndergroundMenu_StartHoldingFlag(ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundMenu_PrintGoodDescription(ListMenu *listMenu, u32 index, u8 onInit);
void ov23_02250CB0(UndergroundMenu *menu);
void UndergroundMenu_OpenGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenStoreGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenWithdrawGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_Exit(void *data, u32 input);
void *UndergroundMenu_StartGiftMenu(ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundMenu_MoveListCursorPosInBounds(UndergroundMenu *menu, int maxDisplay, int count);
void UndergroundMenu_ResetBrightnessAndExit(SysTask *sysTask, void *data);
void UndergroundMenu_UpdateScrollPrompts(UndergroundMenu *menu, int listPos, int count, int maxDisplay);

#endif // POKEPLATINUM_OV23_0224F294_H
