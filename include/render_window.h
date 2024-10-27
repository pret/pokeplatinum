#ifndef POKEPLATINUM_RENDER_WINDOW_H
#define POKEPLATINUM_RENDER_WINDOW_H

#include "bg_window.h"
#include "pokemon.h"

#define TEXT_WINDOW_SIZE 30

void LoadStandardWindowTiles(BgConfig *param0, u8 param1, u16 param2, u8 param3, u32 param4);
u32 GetStandardWindowPaletteNARCMember(void);
void LoadStandardWindowGraphics(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5);
void Window_DrawStandardFrame(Window *param0, u8 param1, u16 param2, u8 param3);
void Window_EraseStandardFrame(Window *param0, u8 param1);
u32 GetMessageBoxTilesNARCMember(u32 param0);
u32 GetMessageBoxPaletteNARCMember(u32 param0);
void LoadMessageBoxGraphics(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5);
void Window_DrawMessageBox(Window *param0, u32 param1, u32 param2);
void Window_DrawMessageBoxWithScrollCursor(Window *param0, u8 param1, u16 param2, u8 param3);
void Window_EraseMessageBox(Window *param0, u8 param1);
void ReplaceTransparentTiles(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u32 param5);
void LoadSignpostContentGraphics(BgConfig *param0, u8 param1, u16 param2, u8 param3, u8 param4, u16 param5, u32 param6);
void Window_DrawSignpost(Window *param0, u8 param1, u16 param2, u8 param3, u8 param4);
void Window_EraseSignpost(Window *param0, u8 param1, u8 param2);
void *Window_AddWaitDial(Window *param0, u32 param1);
void DestroyWaitDial(void *param0);
void DestroyWaitDialAndTask(void *param0);
u8 *DrawPokemonPreview(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5, u16 param6, u8 param7, int param8);
u8 *DrawPokemonPreviewFromStruct(BgConfig *param0, u8 param1, u8 param2, u8 param3, u8 param4, u16 param5, Pokemon *param6, int param7);

#endif // POKEPLATINUM_RENDER_WINDOW_H
