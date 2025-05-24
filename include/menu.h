#ifndef POKEPLATINUM_MENU_H
#define POKEPLATINUM_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

#define MENU_NOTHING_CHOSEN -1
#define MENU_CANCELED       -2
#define MENU_DUMMY          -3

enum MenuAction {
    MENU_ACTION_NONE = 0,
    MENU_ACTION_MOVE_UP,
    MENU_ACTION_MOVE_DOWN,
    MENU_ACTION_MOVE_LEFT,
    MENU_ACTION_MOVE_RIGHT,
};

enum MenuExternalInput {
    MENU_INPUT_CONFIRM = 0,
    MENU_INPUT_CANCEL,
    MENU_INPUT_MOVE_UP,
    MENU_INPUT_MOVE_DOWN,
    MENU_INPUT_MOVE_LEFT,
    MENU_INPUT_MOVE_RIGHT,
};

typedef struct MenuTemplate {
    StringList *choices;
    Window *window;
    u8 fontID;
    u8 xSize;
    u8 ySize;
    u8 lineSpacing : 4;
    u8 suppressCursor : 2;
    u8 loopAround : 2;
} MenuTemplate;

typedef struct Menu {
    MenuTemplate template;
    ColoredArrow *cursor;
    u32 cancelKeys;
    u8 dummy14;
    u8 cursorPos;
    u8 width;
    u8 xOffset;
    u8 yOffset;
    u8 letterWidth;
    u8 lineHeight;
    u8 lastAction;
    u8 heapID;
} Menu;

Menu *Menu_New(const MenuTemplate *template, u8 xOffset, u8 yOffset, u8 cursorStart, u8 heapID, u32 cancelKeys);
Menu *Menu_NewAndCopyToVRAM(const MenuTemplate *template, u8 xOffset, u8 yOffset, u8 cursorStart, u8 heapID, u32 cancelKeys);
Menu *Menu_NewSimple(const MenuTemplate *template, u8 cursorStart, u8 heapID);
void Menu_Free(Menu *menu, u8 *outCursorPos);
u32 Menu_ProcessInput(Menu *menu);
u32 Menu_ProcessInputWithSound(Menu *menu, u16 sdatID);
u32 Menu_ProcessExternalInput(Menu *menu, u8 input);
u8 Menu_GetCursorPos(Menu *menu);
u8 Menu_GetLastAction(Menu *menu);
Menu *Menu_MakeYesNoChoiceWithCursorAt(BgConfig *bgConfig, const WindowTemplate *winTemplate, u16 borderTileStart, u8 borderPalette, u8 cursorStart, u32 heapID);
Menu *Menu_MakeYesNoChoice(BgConfig *bgConfig, const WindowTemplate *winTemplate, u16 borderTileStart, u8 borderPalette, u32 heapID);
u32 Menu_ProcessInputAndHandleExit(Menu *menu, enum HeapId heapID);
u32 Menu_ProcessExternalInputAndHandleExit(Menu *menu, u8 input, u32 heapID);
void Menu_DestroyForExit(Menu *menu, u32 heapID);
void Window_DrawMenuCursor(Window *window, u32 x, u32 y);

#endif // POKEPLATINUM_MENU_H
