#ifndef POKEPLATINUM_MENU_H
#define POKEPLATINUM_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

#define MENU_DUMMY -3

typedef struct MenuTemplate {
    const StringList *choices;
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

Menu *Menu_New(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
Menu *Menu_NewAndCopyToVRAM(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
Menu *Menu_NewSimple(const MenuTemplate *param0, u8 param1, u8 param2);
void Menu_Free(Menu *param0, u8 *param1);
u32 Menu_ProcessInput(Menu *param0);
u32 Menu_ProcessInputWithSound(Menu *param0, u16 param1);
u32 Menu_ProcessExternalInput(Menu *param0, u8 param1);
u8 Menu_GetCursorPos(Menu *param0);
u8 Menu_GetLastAction(Menu *param0);
Menu *Menu_MakeYesNoChoiceWithCursorAt(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u8 param4, u32 param5);
Menu *Menu_MakeYesNoChoice(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u32 param4);
u32 Menu_ProcessInputAndHandleExit(Menu *param0, u32 param1);
u32 Menu_ProcessExternalInputAndHandleExit(Menu *param0, u8 param1, u32 param2);
void Menu_DestroyForExit(Menu *param0, u32 param1);
void Menu_DrawCursorBitmap(Window *param0, u32 param1, u32 param2);

#endif // POKEPLATINUM_MENU_H
