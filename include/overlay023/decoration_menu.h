#ifndef POKEPLATINUM_UNDERGROUND_DECORATION_MENU_H
#define POKEPLATINUM_UNDERGROUND_DECORATION_MENU_H

#include "field/field_system_decl.h"
#include "overlay023/underground_item_list_menu.h"

#include "list_menu.h"
#include "scroll_prompts.h"
#include "string_list.h"

enum DecorationMenuOption {
    DECORATION_OPTION_DECORATE = 0,
    DECORATION_OPTION_PUT_AWAY,
    DECORATION_OPTION_MOVE_GOODS,
    DECORATION_OPTION_CANCEL,
};

typedef struct DecorationMenu {
    FieldSystem *fieldSystem;
    Window primaryWindow;
    Window secondaryWindow;
    StringList *menuOptions;
    ListMenu *listMenu;
    u8 padding[4];
    u16 *startListPos;
    u16 *startCursorPos;
    u8 state;
    u32 lastInput;
    u16 cursorPos;
} DecorationMenu;

typedef struct DecorationGoodsMenu {
    FieldSystem *fieldSystem;
    ScrollPrompts *scrollPrompts;
    Window primaryWindow;
    Window secondaryWindow;
    StringList *menuOptions;
    UndergroundItemListMenu *itemListMenu;
    u8 padding[8];
    u16 *startListPos;
    u16 *startCursorPos;
    u8 currentPlacedGoods;
    u8 maxPlacedGoods;
    u8 state;
    u32 lastInput;
    int goodsCount;
} DecorationGoodsMenu;

DecorationMenu *DecorationMenu_New(void);
void DecorationMenu_Init(DecorationMenu *menu, FieldSystem *fieldSystem, u16 *startListPos, u16 *startCursorPos);
void DecorationMenu_Free(DecorationMenu *menu);
const u32 DecorationMenu_GetLastInput(DecorationMenu *menu);
BOOL DecorationMenu_Main(DecorationMenu *menu);
DecorationGoodsMenu *DecorationGoodsMenu_New(void);
void DecorationGoodsMenu_Init(DecorationGoodsMenu *menu, FieldSystem *fieldSystem, u16 *startListPos, u16 *startCursorPos);
void DecorationGoodsMenu_SetPlacedGoodData(DecorationGoodsMenu *menu, u8 currentPlacedGoods, u8 maxPlacedGoods);
void DecorationGoodsMenu_Free(DecorationGoodsMenu *menu);
const u32 DecorationGoodsMenu_GetLastInput(DecorationGoodsMenu *menu);
BOOL DecorationGoodsMenu_Main(DecorationGoodsMenu *menu);

#endif // POKEPLATINUM_UNDERGROUND_DECORATION_MENU_H
