#ifndef POKEPLATINUM_OV76_GRAPHICS_H
#define POKEPLATINUM_OV76_GRAPHICS_H

#include "overlay076/defs.h"

#include "bg_window.h"
#include "g3d_pipeline.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

// TODO: seperate these constants into a different file (or the .c?)

#define BASE_TILE_1                    1 + MESSAGE_WINDOW_TILE_COUNT + SCROLLING_MESSAGE_BOX_TILE_COUNT + STANDARD_WINDOW_TILE_COUNT
#define BASE_TILE_2                    BASE_TILE_1 + BASE_TILE_INCREMENT
#define BASE_TILE_3                    BASE_TILE_2 + BASE_TILE_INCREMENT
#define BASE_TILE_4                    BASE_TILE_3 + BASE_TILE_INCREMENT
#define BASE_TILE_5                    BASE_TILE_4 + BASE_TILE_INCREMENT
#define BASE_TILE_6                    BASE_TILE_5 + BASE_TILE_INCREMENT
#define BASE_TILE_7                    BASE_TILE_6 + BASE_TILE_INCREMENT
#define BASE_TILE_8                    BASE_TILE_7 + BASE_TILE_INCREMENT
#define BASE_TILE_INCREMENT            (WINDOW_WIDTH) * WINDOW_HEIGHT
#define CAPSULE_ANIM_OFFSET            82
#define CAPSULE_BASE_RES_ID            11000
#define CAPSULE_CELL_OFFSET            174
#define CAPSULE_CHAR_OFFSET            266
#define CAPSULE_MON_X_OFFSET           -16
#define CAPSULE_MON_Y_OFFSET           12
#define CAPSULE_PALETTE_RES_ID         30000
#define CAPSULE_PLTT_OFFSET            286
#define CURSOR_ANIM_OFFSET             87
#define CURSOR_CELL_OFFSET             179
#define CURSOR_CHAR_OFFSET             275
#define CURSOR_PLTT_OFFSET             291
#define CUSTOM_BALL_PLTT_OFFSET        294
#define MESSAGE_BOX_PLTT_OFFSET        15
#define MESSAGE_BOX_TILE_OFFSET        1
#define MON_SPRITE_ANIM_RES_ID         18000
#define MON_SPRITE_CELL_RES_ID         17000
#define MON_SPRITE_CHAR_RES_ID         15000
#define MON_SPRITE_PLTT_RES_ID         16000
#define PALETTE_MEMBER_IDX             7
#define SEAL_ANIM_MEMBER_IDX           88
#define SEAL_ANIM_RES_ID               28088
#define SEAL_CELL_MEMBER_IDX           180
#define SEAL_CELL_RES_ID               27180
#define SEAL_CHAR_RES_ID               25000
#define SEAL_SPRITE_PALETTE_MEMBER_IDX 293
#define SEAL_SPRITE_PALETTE_RES_ID     26292
#define SELECTION_ANIM_MEMBER_IDX      81
#define SELECTION_ANIM_RES_ID          48000
#define SELECTION_ARROWS               4
#define SELECTION_CELL_MEMBER_IDX      173
#define SELECTION_CELL_RES_ID          47000
#define SELECTION_CHAR_MEMBER_IDX      265
#define SELECTION_CHAR_RES_ID          45000
#define SELECTION_PALETTE_RES_ID       26290
#define SPRITE_SYSTEM_MAX_SPRITES      128
#define SPRITE_SYSTEM_PLTT_CAPACITY    32
#define STD_WINDOW_PLTT_OFFSET         13
#define STD_WINDOW_TILE_OFFSET         31
#define WINDOW_BGLAYER                 6
#define WINDOW_HEIGHT                  2
#define WINDOW_PALETTE                 11
#define WINDOW_WIDTH                   4
#define WINDOW_NUM                     11
#define SEAL_COUNT_TEXT_XOFFSET        7
#define SEALS_PER_PAGE                 8
#define CAPSULE_TOUCH_RECTS            21

typedef struct {
    int memberIdx;
    u32 index;
} SealStringIndices;

extern const SealStringIndices sealStringIndices[5];

void ov76_0223B8A8(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223B8C4(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223B904(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223B940(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223B96C(UnkStruct_ov76_0223DE00 *param0, BOOL param1);
void ov76_0223B98C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2, int param3, int param4);
void ov76_0223BA90(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223BB04(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223BBAC(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223BC70(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223BD30(UnkStruct_ov76_0223DE00 *param0, s8 param1, int param2);
G3DPipelineBuffers *ov76_0223BE6C(void);
void ov76_0223BE8C(void);
void ov76_0223BF10(void);
void ov76_0223BF50(void);
void ov76_0223BF74(BgConfig *param0, Window *param1, int param2, UnkStruct_ov76_0223DE00 *param3, int param4);
void ov76_0223C0EC(int param0, s16 *param1, s16 *param2);
void ov76_0223C110(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C188(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C288(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C304(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C32C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C354(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C398(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C424(UnkStruct_ov76_0223C398 *param0);
void ov76_0223C438(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223C4AC(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C544(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C568(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223C588(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C5A4(SpriteSystem *param0, SpriteManager *param1, PaletteData *param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9, NARC *param10);
void ov76_0223C61C(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223C7E0(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C80C(UnkStruct_ov76_0223DE00 *param0, int param1, int param2);
void ov76_0223C88C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8BC(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223C8EC(BgConfig *param0, PaletteData *param1, int param2);
void ov76_0223C974(BgConfig *param0, PaletteData *param1, int param2);
void ov76_0223CA30(Window *param0, int param1);
void ov76_0223CA98(BgConfig *param0, Window *param1, int param2, int param3, int param4, int param5, int param6, int param7);
void ov76_0223CB58(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223CC8C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223CD20(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223CDA4(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223CDC4(Window *param0, int param1);
void ov76_0223CE2C(void);
void ov76_0223CE44(void);
void ov76_0223CE64(void);
void ov76_0223CE84(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CF24(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CF88(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223CFEC(UnkStruct_ov76_0223DE00 *param0, NARC *param1);
void ov76_0223D16C(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D2F4(UnkStruct_ov76_0223DE00 *param0, int param1);
void ov76_0223D318(UnkStruct_ov76_0223DE00 *param0);
void ov76_0223D31C(UnkStruct_ov76_0223DE00 *param0);

#endif // POKEPLATINUM_OV76_GRAPHICS_H
