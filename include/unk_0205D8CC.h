#ifndef POKEPLATINUM_UNK_0205D8CC_H
#define POKEPLATINUM_UNK_0205D8CC_H

#include "bg_window.h"
#include "game_options.h"
#include "strbuf.h"

void FieldMessage_LoadTextPalettes(u32 palLocation, u32 resetPrinters);
void FieldMessage_AddWindow(BgConfig *bgConfig, Window *window, u32 param2);
void FieldMessage_DrawWindow(Window *window, const Options *options);
void FieldMessaage_FillWindowTilemap(Window *window);
u8 FieldMessage_Print(Window *window, Strbuf *strBuf, const Options *options, u8 canSkipDelay);
u8 sub_0205D9CC(Window *window, Strbuf *strBuf, int param2, int param3, u8 param4, int param5);
u8 FieldMessage_FinishedPrinting(u8 printerID);
void sub_0205DA1C(BgConfig *bgConfig, Window *param1, u16 param2, u16 param3);
void sub_0205DA80(Window *window, u16 param1, u16 param2);

#endif // POKEPLATINUM_UNK_0205D8CC_H
