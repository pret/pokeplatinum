#ifndef POKEPLATINUM_CONSTANTS_GRAPHICS_H
#define POKEPLATINUM_CONSTANTS_GRAPHICS_H

#include "constants/colors.h"

enum DSScreen {
    DS_SCREEN_MAIN = 0,
    DS_SCREEN_SUB,
    DS_SCREEN_MAX,
};

#define TILE_HEIGHT_PIXELS 8
#define TILE_WIDTH_PIXELS  8
#define TILE_WIDTH_4BPP    (TILE_WIDTH_PIXELS / 2)

#define TILES_TO_PIXELS(t) ((t) * TILE_WIDTH_PIXELS)

#define TILE_SIZE_4BPP (TILE_HEIGHT_PIXELS * TILE_WIDTH_4BPP)
#define TILE_SIZE_8BPP (TILE_HEIGHT_PIXELS * TILE_WIDTH_PIXELS)

#define SLOTS_PER_PALETTE      16
#define PALETTE_SIZE           (SLOTS_PER_PALETTE)
#define PALETTE_SIZE_EXT       (SLOTS_PER_PALETTE * 16)
#define PALETTE_SIZE_BYTES     (PALETTE_SIZE * sizeof(u16))
#define PALETTE_SIZE_EXT_BYTES (PALETTE_SIZE_EXT * sizeof(u16))
#define PLTT_OFFSET(i)         ((i) * PALETTE_SIZE_BYTES)
#define PLTT_DEST(i)           ((i) * PALETTE_SIZE)

#define SPRITE_ANIM_SIZE 29
#define MAX_SPRITES      128

// Graphics engine A
#define HW_BG_A_PLTT_COLOR(palette, colorIdx)  ((GXRgb *)(HW_BG_PLTT + PLTT_OFFSET(palette) + colorIdx * sizeof(GXRgb)))
#define HW_OBJ_A_PLTT_COLOR(palette, colorIdx) ((GXRgb *)(HW_OBJ_PLTT + PLTT_OFFSET(palette) + colorIdx * sizeof(GXRgb)))
// Graphics engine B
#define HW_BG_B_PLTT_COLOR(palette, colorIdx)  ((GXRgb *)(HW_DB_BG_PLTT + PLTT_OFFSET(palette) + colorIdx * sizeof(GXRgb)))
#define HW_OBJ_B_PLTT_COLOR(palette, colorIdx) ((GXRgb *)(HW_DB_OBJ_PLTT + PLTT_OFFSET(palette) + colorIdx * sizeof(GXRgb)))

#define MON_SPRITE_FRAME_WIDTH_TILES    10
#define MON_SPRITE_FRAME_HEIGHT_TILES   10
#define MON_SPRITE_FRAME_WIDTH          (MON_SPRITE_FRAME_WIDTH_TILES * TILE_WIDTH_PIXELS)
#define MON_SPRITE_FRAME_HEIGHT         (MON_SPRITE_FRAME_HEIGHT_TILES * TILE_HEIGHT_PIXELS)
#define MON_SPRITE_FRAME_MAX_SIZE_TILES (MON_SPRITE_FRAME_WIDTH_TILES * MON_SPRITE_FRAME_HEIGHT_TILES)
#define MON_SPRITE_FRAME_MAX_SIZE_BYTES (TILE_SIZE_4BPP * MON_SPRITE_FRAME_MAX_SIZE_TILES)

#define MON_AFFINE_SHIFT    8
#define MON_AFFINE_SCALE(i) (i << MON_AFFINE_SHIFT)

#define SHADOW_SPRITE_FRAME_WIDTH_TILES  8
#define SHADOW_SPRITE_FRAME_HEIGHT_TILES 2
#define SHADOW_SPRITE_FRAME_WIDTH        (SHADOW_SPRITE_FRAME_WIDTH_TILES * TILE_WIDTH_PIXELS)
#define SHADOW_SPRITE_FRAME_HEIGHT       (SHADOW_SPRITE_FRAME_HEIGHT_TILES * TILE_HEIGHT_PIXELS)

#define GX_LIGHTS_COUNT 4

#define GX_COLOR_DIMS  3
#define GX_VEC_FX_DIMS 3

#define G3X_DEPTH_MAX 0x7FFF

#define RGBA_BLACK GX_RGBA(0, 0, 0, 0)
#define RGBA_WHITE GX_RGBA(31, 31, 31, 1)

#define RGB_TO_GRAYSCALE(r, g, b) (((r) * 76 + (g) * 151 + (b) * 29) >> 8)

// Below are some typical window sizes

// This is for the typical window frame used by menus and choice-boxes
#define STANDARD_WINDOW_TILE_W    3
#define STANDARD_WINDOW_TILE_H    3
#define STANDARD_WINDOW_TILE_SIZE (STANDARD_WINDOW_TILE_W * STANDARD_WINDOW_TILE_H)

// This is for the typical dialogue window used in conversations in the field
#define MESSAGE_BOX_TILE_W    6
#define MESSAGE_BOX_TILE_H    3
#define MESSAGE_BOX_TILE_SIZE (MESSAGE_BOX_TILE_W * MESSAGE_BOX_TILE_H)

// This is for the scroll arrow used on message boxes that must wrap their text or
// which wait for player input
#define SCROLL_CURSOR_TILE_SIZE 12

#endif // POKEPLATINUM_CONSTANTS_GRAPHICS_H
