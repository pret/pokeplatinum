#ifndef POKEPLATINUM_OV88_0223E9C4_H
#define POKEPLATINUM_OV88_0223E9C4_H

#include "bg_window.h"
#include "game_options.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"

void ov88_0223E9C4(BgConfig *param0, Window *param1, Options *param2);
void ov88_0223EC04(Window *param0);
void ov88_0223EC78(Window *param0, Strbuf *param1, int param2, u32 param3, int param4, int param5);
int ov88_0223ECBC(Window *param0, int param1, int param2, MessageLoader *param3, StringTemplate *param4);
u32 ov88_0223ED2C(BgConfig *param0, UIControlData **param1, int *param2);
void ov88_0223ED80(Window *param0);
ListMenu *ov88_0223ED94(StringList *param0, int param1, Window *param2, BgConfig *param3);

#endif // POKEPLATINUM_OV88_0223E9C4_H
