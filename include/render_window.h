#ifndef POKEPLATINUM_RENDER_WINDOW_H
#define POKEPLATINUM_RENDER_WINDOW_H

#include "constants/heap.h"

#include "bg_window.h"
#include "pokemon.h"

#define TEXT_WINDOW_SIZE 30

enum StandardWindowType {
    STANDARD_WINDOW_SYSTEM = 0,
    STANDARD_WINDOW_FIELD,
    STANDARD_WINDOW_UNDERGROUND,
};

enum SignpostType {
    SIGNPOST_CITY_MAP = 0,
    SIGNPOST_ROUTE_MAP,
    SIGNPOST_BUILDING_INFO,
    SIGNPOST_FIELD_INFO,
};

void LoadStandardWindowTiles(BgConfig *bgConfig, u8 bgLayer, u16 offset, u8 standardWindowType, u32 heapID);
u32 GetStandardWindowPaletteNARCMember(void);
void LoadStandardWindowGraphics(BgConfig *bgConfig, u8 bgLayer, u16 tileOffset, u8 palOffset, u8 standardWindowType, u32 heapID);
void Window_DrawStandardFrame(Window *window, u8 skipTransfer, u16 tile, u8 palette);
void Window_EraseStandardFrame(Window *window, u8 skipTransfer);

u32 GetMessageBoxTilesNARCMember(u32 messageBoxFrame);
u32 GetMessageBoxPaletteNARCMember(u32 messageBoxFrame);
void LoadMessageBoxGraphics(BgConfig *bgConfig, u8 bgLayer, u16 tileOffset, u8 palOffset, u8 messageBoxFrame, u32 heapID);
void Window_DrawMessageBox(Window *window, u32 tile, u32 palette);
void Window_DrawMessageBoxWithScrollCursor(Window *window, u8 skipTransfer, u16 tile, u8 palette);
void Window_EraseMessageBox(Window *window, u8 skipTransfer);
void ReplaceTransparentTiles(BgConfig *bgConfig, u8 bgLayer, u16 bgBaseTile, u8 withTile, u8 messageBoxFrame, u32 heapID);

void LoadSignpostContentGraphics(BgConfig *bgConfig, u8 bgLayer, u16 baseTile, u8 palette, u8 signpostType, u16 signpostNARCMemberIdx, u32 heapID);
void Window_DrawSignpost(Window *window, u8 skipTransfer, u16 baseTile, u8 palette, u8 signpostType);
void Window_EraseSignpost(Window *window, u8 signpostType, u8 skipTransfer);

void *Window_AddWaitDial(Window *window, u32 baseTile);
void DestroyWaitDial(void *taskData);
void DestroyWaitDialTaskOnly(void *taskData);

u8 *DrawPokemonPreview(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, u16 species, u8 gender, enum HeapId heapID);
u8 *DrawPokemonPreviewFromStruct(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, Pokemon *mon, enum HeapId heapID);

#endif // POKEPLATINUM_RENDER_WINDOW_H
