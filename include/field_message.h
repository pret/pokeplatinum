#ifndef POKEPLATINUM_FIELD_MESSAGE_H
#define POKEPLATINUM_FIELD_MESSAGE_H

#include "bg_window.h"
#include "game_options.h"
#include "graphics.h"
#include "string_gf.h"

void FieldMessage_LoadTextPalettes(enum PaletteLoadLocation palLocation, u32 resetPrinters);
void FieldMessage_AddWindow(BgConfig *bgConfig, Window *window, u32 bgLayer);
void FieldMessage_DrawWindow(Window *window, const Options *options);
void FieldMessage_ClearWindow(Window *window);
u8 FieldMessage_Print(Window *window, String *string, const Options *options, u8 canSkipDelay);
u8 FieldMessage_PrintWithParams(Window *window, String *string, int fontID, int renderDelay, u8 canSkipDelay, BOOL autoScroll);
u8 FieldMessage_FinishedPrinting(u8 printerID);
void FieldMessage_AddSignpostWindow(BgConfig *bgConfig, Window *window, u16 signpostType, u16 bgLayer);
void FieldMessage_LoadAndDrawSignpost(Window *window, u16 signpostType, u16 signpostNARCMemberIdx);

#endif // POKEPLATINUM_FIELD_MESSAGE_H
