#ifndef POKEPLATINUM_RENDER_WINDOW_H
#define POKEPLATINUM_RENDER_WINDOW_H

#include "constants/heap.h"
#include "generated/signpost_types.h"

#include "bg_window.h"
#include "pokemon.h"

// These are for the typical window frame used by basic menus and choice-boxes.
#define STANDARD_WINDOW_TILE_W     3
#define STANDARD_WINDOW_TILE_H     3
#define STANDARD_WINDOW_TILE_COUNT (STANDARD_WINDOW_TILE_W * STANDARD_WINDOW_TILE_H)

// These are for the typical dialogue window frame used by, for example, NPC conversations.
// The frame style for this window is customizable by the player, but its size is still constant.
#define MESSAGE_BOX_TILE_W     6
#define MESSAGE_BOX_TILE_H     3
#define MESSAGE_BOX_TILE_COUNT (MESSAGE_BOX_TILE_W * MESSAGE_BOX_TILE_H)

// These are the blank tiles in the dialogue window where messages get printed.
#define MESSAGE_WINDOW_TILE_W     27
#define MESSAGE_WINDOW_TILE_H     4
#define MESSAGE_WINDOW_TILE_COUNT (MESSAGE_WINDOW_TILE_W * MESSAGE_WINDOW_TILE_H)

// This is for the down arrow used as a prompt for dialogue that must wrap its text across viewports
// or information dialogues which otherwise wait for player confirmation before the text disappears.
#define SCROLLING_CURSOR_FRAME_TILE_W     2
#define SCROLLING_CURSOR_FRAME_TILE_H     2
#define SCROLLING_CURSOR_FRAME_TILE_COUNT (SCROLLING_CURSOR_FRAME_TILE_W * SCROLLING_CURSOR_FRAME_TILE_H)
#define SCROLLING_CURSOR_FRAME_COUNT      3
#define SCROLLING_CURSOR_TILE_COUNT       (SCROLLING_CURSOR_FRAME_TILE_COUNT * SCROLLING_CURSOR_FRAME_COUNT)
#define SCROLLING_MESSAGE_BOX_TILE_COUNT  (MESSAGE_BOX_TILE_COUNT + SCROLLING_CURSOR_TILE_COUNT)

#define MAP_TRANSITION_DROPDOWN_TILE_W     32
#define MAP_TRANSITION_DROPDOWN_TILE_H     8
#define MAP_TRANSITION_DROPDOWN_TILE_COUNT (MAP_TRANSITION_DROPDOWN_TILE_W * MAP_TRANSITION_DROPDOWN_TILE_H)

#define SIGNPOST_CONTENT_WIDTH_TILES  6
#define SIGNPOST_CONTENT_HEIGHT_TILES 4
#define SIGNPOST_CONTENT_SIZE_TILES   (SIGNPOST_CONTENT_WIDTH_TILES * SIGNPOST_CONTENT_HEIGHT_TILES)
#define SIGNPOST_FRAME_TILE_W         6
#define SIGNPOST_FRAME_TILE_H         3
#define SIGNPOST_FRAME_TILE_COUNT     (SIGNPOST_FRAME_TILE_W * SIGNPOST_FRAME_TILE_H)

typedef struct WaitDial WaitDial;

enum StandardWindowType {
    STANDARD_WINDOW_SYSTEM = 0,
    STANDARD_WINDOW_FIELD,
    STANDARD_WINDOW_UNDERGROUND,
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

u8 *DrawPokemonPreview(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, u16 species, u8 gender, enum HeapID heapID);
u8 *DrawPokemonPreviewFromStruct(BgConfig *bgConfig, u8 bgLayer, u8 x, u8 y, u8 palette, u16 baseTile, Pokemon *mon, enum HeapID heapID);

#endif // POKEPLATINUM_RENDER_WINDOW_H
