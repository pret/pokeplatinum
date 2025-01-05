#ifndef POKEPLATINUM_FIELD_MESSAGE_H
#define POKEPLATINUM_FIELD_MESSAGE_H

#include "bg_window.h"
#include "game_options.h"
#include "strbuf.h"

void FieldMessage_LoadTextPalettes(u32 palLocation, u32 resetPrinters);
void FieldMessage_AddWindow(BgConfig *bgConfig, Window *window, u32 bgLayer);
void FieldMessage_DrawWindow(Window *window, const Options *options);
void FieldMessage_ClearWindow(Window *window);
u8 FieldMessage_Print(Window *window, Strbuf *strBuf, const Options *options, u8 canSkipDelay);
u8 FieldMessage_PrintWithParams(Window *window, Strbuf *strBuf, int fontID, int renderDelay, u8 canSkipDelay, BOOL autoScroll);
u8 FieldMessage_FinishedPrinting(u8 printerID);
void FieldMessage_AddSignpostWindow(BgConfig *bgConfig, Window *window, u16 signpostType, u16 bgLayer);
void FieldMessage_LoadAndDrawSignpost(Window *window, u16 signpostType, u16 signpostNARCMemberIdx);

#endif // POKEPLATINUM_FIELD_MESSAGE_H
