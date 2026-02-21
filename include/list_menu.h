#ifndef POKEPLATINUM_LIST_MENU_H
#define POKEPLATINUM_LIST_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

#define LIST_NOTHING_CHOSEN -1
#define LIST_CANCEL         -2
#define LIST_HEADER         -3

#define LIST_MENU_NO_SELECTION_YET 0xEEEE // Only used outside of list_menu, as a placeholder for before the player makes a choice

enum ListMenuPagerMode {
    PAGER_MODE_NONE = 0,
    PAGER_MODE_LEFT_RIGHT_PAD,
    PAGER_MODE_SHOULDER_BUTTONS,
};

enum ListMenuAction {
    LIST_MENU_ACTION_NONE = 0,
    LIST_MENU_ACTION_MOVE_UP,
    LIST_MENU_ACTION_MOVE_DOWN,
    LIST_MENU_ACTION_PAGE_UP,
    LIST_MENU_ACTION_PAGE_DOWN,
};

enum ListMenuAttribute {
    LIST_MENU_CURSOR_CALLBACK = 0,
    LIST_MENU_PRINT_CALLBACK,
    LIST_MENU_COUNT,
    LIST_MENU_MAX_DISPLAY,
    LIST_MENU_UNUSED_4,
    LIST_MENU_HEADER_X_OFFSET,
    LIST_MENU_TEXT_X_OFFSET,
    LIST_MENU_CURSOR_X_OFFSET,
    LIST_MENU_Y_OFFSET,
    LIST_MENU_LINE_HEIGHT,
    LIST_MENU_TEXT_COLOR_FG,
    LIST_MENU_TEXT_COLOR_BG,
    LIST_MENU_TEXT_COLOR_SHADOW,
    LIST_MENU_LETTER_SPACING,
    LIST_MENU_LINE_SPACING,
    LIST_MENU_PAGER_MODE,
    LIST_MENU_FONT_ID,
    LIST_MENU_CURSOR_TYPE,
    LIST_MENU_WINDOW,
    LIST_MENU_PARENT,
};

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
    void *parent;
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

ListMenu *ListMenu_New(const ListMenuTemplate *template, u16 startListPos, u16 startCursorPos, u8 heapID);
u32 ListMenu_ProcessInput(ListMenu *menu);
void ListMenu_Free(ListMenu *menu, u16 *outListPos, u16 *outCursorPos);
void ListMenu_Draw(ListMenu *menu);
void ListMenu_SetTextColors(ListMenu *menu, u8 fg, u8 bg, u8 shadow);
u32 ListMenu_TestInput(ListMenu *menu, ListMenuTemplate *template, u16 listPos, u16 cursorPos, u16 updateCursor, u16 input, u16 *outListPos, u16 *outCursorPos);
void ListMenu_SetAltTextColors(ListMenu *menu, u8 fg, u8 bg, u8 shadow);
void ListMenu_CalcTrueCursorPos(ListMenu *menu, u16 *outPos);
void ListMenu_GetListAndCursorPos(ListMenu *menu, u16 *outListPos, u16 *outCursorPos);
u8 ListMenu_GetLastAction(ListMenu *menu);
u32 ListMenu_GetIndexOfChoice(ListMenu *menu, u16 choice);
u32 ListMenu_GetAttribute(ListMenu *menu, u8 attribute);
void ListMenu_SetChoices(ListMenu *menu, StringList *choices);

#endif // POKEPLATINUM_LIST_MENU_H
