#ifndef POKEPLATINUM_MENU_H
#define POKEPLATINUM_MENU_H

#include "bg_window.h"
#include "colored_arrow.h"
#include "string_list.h"

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

Menu *sub_02001AF4(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
Menu *sub_02001B7C(const MenuTemplate *param0, u8 param1, u8 param2, u8 param3, u8 param4, u32 param5);
Menu *sub_02001B9C(const MenuTemplate *param0, u8 param1, u8 param2);
void sub_02001BC4(Menu *param0, u8 *param1);
u32 sub_02001BE0(Menu *param0);
u32 sub_02001C94(Menu *param0, u16 param1);
u32 sub_02001D44(Menu *param0, u8 param1);
u8 sub_02001DC4(Menu *param0);
u8 sub_02001DC8(Menu *param0);
Menu *sub_02002054(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u8 param4, u32 param5);
Menu *sub_02002100(BgConfig *param0, const WindowTemplate *param1, u16 param2, u8 param3, u32 param4);
u32 sub_02002114(Menu *param0, u32 param1);
u32 sub_02002134(Menu *param0, u8 param1, u32 param2);
void sub_02002154(Menu *param0, u32 param1);
void sub_02002180(Window *param0, u32 param1, u32 param2);

#endif // POKEPLATINUM_MENU_H
