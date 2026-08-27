#ifndef POKEPLATINUM_TRADE_ROOM_HELPERS_H
#define POKEPLATINUM_TRADE_ROOM_HELPERS_H

#include "bg_window.h"
#include "game_options.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"

void TradeRoom_InitWindows(BgConfig *bgConfig, Window *windows, Options *options);
void TradeRoom_FreeWindows(Window *window);
void TradeRoom_PrintStringInWindow(Window *window, String *str, int unused, u32 textSpeed, int xOrCenter, int yOffset);
int TradeRoom_PrintMessage(Window *window, int entryId, int fontId, MessageLoader *msgLoader, StringTemplate *strTemplate);
u32 TradeRoom_ProcessYesNoChoice(BgConfig *bgConfig, Menu **menu, int *step);
void TradeRoom_DrawActionMenuFrame(Window *window);
ListMenu *TradeRoom_NewFriendListMenu(StringList *strList, int friendCount, Window *window, BgConfig *bgConfig);

#endif // POKEPLATINUM_TRADE_ROOM_HELPERS_H
