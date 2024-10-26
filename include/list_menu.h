#ifndef POKEPLATINUM_LIST_MENU_H
#define POKEPLATINUM_LIST_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

#define LIST_NOTHING_CHOSEN -1
#define LIST_CANCEL         -2
#define LIST_HEADER         -3

typedef struct ListMenu ListMenu;

typedef void (*CursorCallback)(ListMenu *menu, u32 index, u8 onInit);
typedef void (*PrintCallback)(ListMenu *menu, u32 index, u8 yOffset);

typedef struct ListMenuTemplate {
    const StringList *choices;
    CursorCallback cursorCallback;
    PrintCallback printCallback;
    Window *window;
    u16 count;
    u16 maxDisplay;
    u8 headerXOffset;
    u8 textXOffset;
    u8 cursorXOffset;
    u8 yOffset : 4;
    u8 textColorFg : 4;
    u8 textColorBg : 4;
    u8 textColorShadow : 4;
    u16 letterSpacing : 3;
    u16 lineSpacing : 4;
    u16 pagerMode : 2;
    u16 fontID : 6;
    u16 cursorType : 1;
    void *tmp;
} ListMenuTemplate;

struct ListMenu {
    ListMenuTemplate template;
    struct {
        u8 textColorFg : 4;
        u8 textColorBg : 4;
        u8 textColorShadow : 4;
        u8 letterSpacing : 6;
        u8 dummy : 6;
        u8 fontID : 7;
        u8 prefer : 1;
    } altFont;
    ColoredArrow *cursor;
    u16 listPos;
    u16 cursorPos;
    u8 dummy2C;
    u8 dummy2D;
    u8 dummy2E;
    u8 lastAction;
    u8 heapID;
};

ListMenu *ListMenu_New(const ListMenuTemplate *param0, u16 param1, u16 param2, u8 param3);
u32 ListMenu_ProcessInput(ListMenu *param0);
void ListMenu_Free(ListMenu *param0, u16 *param1, u16 *param2);
void ListMenu_Draw(ListMenu *param0);
void ListMenu_SetTextColors(ListMenu *param0, u8 param1, u8 param2, u8 param3);
u32 ListMenu_TestInput(ListMenu *param0, ListMenuTemplate *param1, u16 param2, u16 param3, u16 param4, u16 param5, u16 *param6, u16 *param7);
void ListMenu_SetAltTextColors(ListMenu *param0, u8 param1, u8 param2, u8 param3);
void ListMenu_CalcTrueCursorPos(ListMenu *param0, u16 *param1);
void ListMenu_GetListAndCursorPos(ListMenu *param0, u16 *param1, u16 *param2);
u8 ListMenu_GetLastAction(ListMenu *param0);
u32 ListMenu_GetIndexOfChoice(ListMenu *param0, u16 param1);
u32 ListMenu_GetAttribute(ListMenu *param0, u8 param1);
void ListMenu_SetChoices(ListMenu *param0, StringList *param1);

#endif // POKEPLATINUM_LIST_MENU_H
