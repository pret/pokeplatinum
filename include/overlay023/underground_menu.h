#ifndef POKEPLATINUM_UNDERGROUND_MENU_H
#define POKEPLATINUM_UNDERGROUND_MENU_H

#include "struct_defs/underground.h"

#include "field/field_system_decl.h"
#include "overlay005/sprite_resource_manager.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_records.h"

#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "scroll_prompts.h"
#include "sprite_system.h"
#include "string_gf.h"
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

#define SHOP_INVENTORY_SIZE 5

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
    ListMenu *listMenu;
    UndergroundItemListMenu *itemListMenu;
    ListMenu *itemSelectedMenu;
    Menu *menu;
    u8 padding[4];
    Menu *yesNoMenu;
    CursorCallback cursorCallback;
    PrintCallback printCallback;
    String *string;
    String *fmtString;
    StringTemplate *template;
    SpriteResourceManager spriteManager;
    ManagedSprite *sprites[UNDERGROUND_START_MENU_OPTION_COUNT + 1];
    u32 spriteCount;
    ExitCallback exitCallback;
    GetItemCountFunc getItemCount;
    GetItemFunc getItem;
    GetSphereSizeFunc getSphereSize;
    RecordScreenContext *checkFlagsCtx;
    u8 shopInventory[SHOP_INVENTORY_SIZE];
    u8 shopPriceTypes[SHOP_INVENTORY_SIZE];
    u8 shopPriceSizes[SHOP_INVENTORY_SIZE];
    u8 padding2[4];
    int vendorIndex;
    int printerID; // pointless; written to in one place but never read
    int listMenuCursorPos;
    int listMenuListPos;
    u8 padding3[4];
    u16 menuCursorPos;
    u32 startMenuInput;
    u8 padding4[4];
    u8 shopSelection;
    u8 nextState;
    u8 state;
    u8 isSelling;
    u8 vendorType;
    u16 listMenuPos;
    u16 itemSelectedMenuPos;
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
void UndergroundMenu_OpenSellTrapsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenTrapsMenu(UndergroundMenu *menu);
void UndergroundMenu_RemoveSelectedSphere(int sphereType);
void UndergroundMenu_OpenPayWithSpheresMenu(UndergroundMenu *menu);
void UndergroundMenu_PrintTreasureDescription(ListMenu *listMenu, u32 index, u8 onInit);
void UndergroundMenu_OpenSellTreasuresMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenTreasuresMenu(UndergroundMenu *menu);
void UndergroundMenu_StartHoldingFlag(ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundMenu_PrintGoodDescription(ListMenu *listMenu, u32 index, u8 onInit);
void UndergroundMenu_OpenSellGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenStoreGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_OpenWithdrawGoodsMenu(UndergroundMenu *menu);
void UndergroundMenu_Exit(void *data, u32 input);
void *UndergroundMenu_StartGiftMenu(ExitCallback exitCallback, FieldSystem *fieldSystem);
void UndergroundMenu_MoveListCursorPosInBounds(UndergroundMenu *menu, int maxDisplay, int count);
void UndergroundMenu_ResetBrightnessAndExit(SysTask *sysTask, void *data);
void UndergroundMenu_UpdateScrollPrompts(UndergroundMenu *menu, int listPos, int count, int maxDisplay);

#endif // POKEPLATINUM_UNDERGROUND_MENU_H
