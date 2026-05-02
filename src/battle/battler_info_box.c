#include "battle/battler_info_box.h"

#include <nitro.h>
#include <stdlib.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/pokemon.h"
#include "generated/string_padding_mode.h"

#include "battle/battle_system.h"
#include "graphics/battle/sprites.naix"

#include "assert.h"
#include "bg_window.h"
#include "font_special_chars.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_0208C098.h"

#include "res/text/bank/battle_strings.h"

#define BATTLERINFOBOX_SCROLL_SPEED      24
#define BATTLERINFOBOX_SCROLL_OUT_OFFSET 160

#define BATTLERINFOBOX_X_OFFSET_SOLO_PLAYER   192
#define BATTLERINFOBOX_Y_OFFSET_SOLO_PLAYER   116
#define BATTLERINFOBOX_X_OFFSET_SOLO_ENEMY    58
#define BATTLERINFOBOX_Y_OFFSET_SOLO_ENEMY    36
#define BATTLERINFOBOX_X_OFFSET_PLAYER_SLOT_1 BATTLERINFOBOX_X_OFFSET_SOLO_PLAYER
#define BATTLERINFOBOX_Y_OFFSET_PLAYER_SLOT_1 BATTLERINFOBOX_Y_OFFSET_SOLO_PLAYER - 13
#define BATTLERINFOBOX_X_OFFSET_PLAYER_SLOT_2 BATTLERINFOBOX_X_OFFSET_SOLO_PLAYER + 6
#define BATTLERINFOBOX_Y_OFFSET_PLAYER_SLOT_2 BATTLERINFOBOX_Y_OFFSET_SOLO_PLAYER + 16
#define BATTLERINFOBOX_X_OFFSET_ENEMY_SLOT_1  BATTLERINFOBOX_X_OFFSET_SOLO_ENEMY + 6
#define BATTLERINFOBOX_Y_OFFSET_ENEMY_SLOT_1  BATTLERINFOBOX_Y_OFFSET_SOLO_ENEMY - 20
#define BATTLERINFOBOX_X_OFFSET_ENEMY_SLOT_2  BATTLERINFOBOX_X_OFFSET_SOLO_ENEMY
#define BATTLERINFOBOX_Y_OFFSET_ENEMY_SLOT_2  BATTLERINFOBOX_Y_OFFSET_SOLO_ENEMY + 9

#define BATTLERINFOBOX_WINDOW_BLOCK_SIZE 32

#define BATTLERINFOBOX_NAME_BLOCK_COUNT_X    8
#define BATTLERINFOBOX_NAME_BLOCK_COUNT_Y    2
#define BATTLERINFOBOX_NAME_WINDOW_OFFSET    0
#define BATTLERINFOBOX_NAME_BYTE_SIZE        (BATTLERINFOBOX_NAME_BLOCK_COUNT_X * BATTLERINFOBOX_NAME_BLOCK_COUNT_Y * BATTLERINFOBOX_WINDOW_BLOCK_SIZE)
#define BATTLERINFOBOX_NAME_BACKGROUND_COLOR 0xF
#define BATTLERINFOBOX_NAME_TEXT_COLOR       TEXT_COLOR(14, 2, BATTLERINFOBOX_NAME_BACKGROUND_COLOR)

#define BATTLERINFOBOX_HP_CELL_COUNT  6
#define BATTLERINFOBOX_EXP_CELL_COUNT 12

#define VRAM_TRANSFER_DST(vram, transferTable, index_0, index_1, imgProxy) ( \
    (void *)((u32)vram + transferTable[index_0][index_1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]))

#define S32_MIN -2147483648

typedef struct VRAMTransfer {
    u16 pos;
    u16 size;
} VRAMTransfer;

typedef struct {
    BattlerInfoBox *battlerInfoBox;
    u8 *unk_04;
    u8 state;
    u8 unk_09;
    s8 unk_0A;
} UnkStruct_ov16_0226834C;

enum BattlerInfoBoxPart {
    BATTLERINFOBOX_PART_HP_H = 0,
    BATTLERINFOBOX_PART_HP_P,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_0,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_1,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_2,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_3,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_4,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_5,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_6,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_7,
    BATTLERINFOBOX_PART_HP_GREEN_FILL_8,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_0,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_1,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_2,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_3,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_4,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_5,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_6,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_7,
    BATTLERINFOBOX_PART_HP_YELLOW_FILL_8,
    BATTLERINFOBOX_PART_HP_RED_FILL_0,
    BATTLERINFOBOX_PART_HP_RED_FILL_1,
    BATTLERINFOBOX_PART_HP_RED_FILL_2,
    BATTLERINFOBOX_PART_HP_RED_FILL_3,
    BATTLERINFOBOX_PART_HP_RED_FILL_4,
    BATTLERINFOBOX_PART_HP_RED_FILL_5,
    BATTLERINFOBOX_PART_HP_RED_FILL_6,
    BATTLERINFOBOX_PART_HP_RED_FILL_7,
    BATTLERINFOBOX_PART_HP_RED_FILL_8,
    BATTLERINFOBOX_PART_EXP_FILL_0,
    BATTLERINFOBOX_PART_EXP_FILL_1,
    BATTLERINFOBOX_PART_EXP_FILL_2,
    BATTLERINFOBOX_PART_EXP_FILL_3,
    BATTLERINFOBOX_PART_EXP_FILL_4,
    BATTLERINFOBOX_PART_EXP_FILL_5,
    BATTLERINFOBOX_PART_EXP_FILL_6,
    BATTLERINFOBOX_PART_EXP_FILL_7,
    BATTLERINFOBOX_PART_EXP_FILL_8,
    BATTLERINFOBOX_PART_STATUS_HEALTHY_0,
    BATTLERINFOBOX_PART_STATUS_HEALTHY_1,
    BATTLERINFOBOX_PART_STATUS_HEALTHY_2,
    BATTLERINFOBOX_PART_STATUS_PARALYSIS_0,
    BATTLERINFOBOX_PART_STATUS_PARALYSIS_1,
    BATTLERINFOBOX_PART_STATUS_PARALYSIS_2,
    BATTLERINFOBOX_PART_STATUS_FREEZE_0,
    BATTLERINFOBOX_PART_STATUS_FREEZE_1,
    BATTLERINFOBOX_PART_STATUS_FREEZE_2,
    BATTLERINFOBOX_PART_STATUS_SLEEP_0,
    BATTLERINFOBOX_PART_STATUS_SLEEP_1,
    BATTLERINFOBOX_PART_STATUS_SLEEP_2,
    BATTLERINFOBOX_PART_STATUS_POISON_0,
    BATTLERINFOBOX_PART_STATUS_POISON_1,
    BATTLERINFOBOX_PART_STATUS_POISON_2,
    BATTLERINFOBOX_PART_STATUS_BURN_0,
    BATTLERINFOBOX_PART_STATUS_BURN_1,
    BATTLERINFOBOX_PART_STATUS_BURN_2,
    BATTLERINFOBOX_PART_EMPTY_0,
    BATTLERINFOBOX_PART_EMPTY_1,
    BATTLERINFOBOX_PART_EMPTY_2,
    BATTLERINFOBOX_PART_CAUGHT_INDICATOR,
    BATTLERINFOBOX_PART_LEVEL_FEMALE_TOP_0,
    BATTLERINFOBOX_PART_LEVEL_FEMALE_TOP_1,
    BATTLERINFOBOX_PART_LEVEL_MALE_TOP_0,
    BATTLERINFOBOX_PART_LEVEL_MALE_TOP_1,
    BATTLERINFOBOX_PART_LEVEL_GENDERLESS_TOP_0,
    BATTLERINFOBOX_PART_LEVEL_GENDERLESS_TOP_1,
    BATTLERINFOBOX_PART_HP_H_2,
    BATTLERINFOBOX_PART_HP_P_2,
    BATTLERINFOBOX_PART_BAR_END,
    BATTLERINFOBOX_PART_SLASH,
    BATTLERINFOBOX_PART_NUMBERS_LEFT,
    BATTLERINFOBOX_PART_NUMBERS_RIGHT,
    BATTLERINFOBOX_PART_LEVEL_FEMALE_BOTTOM_0,
    BATTLERINFOBOX_PART_LEVEL_FEMALE_BOTTOM_1,
    BATTLERINFOBOX_PART_LEVEL_MALE_BOTTOM_0,
    BATTLERINFOBOX_PART_LEVEL_MALE_BOTTOM_1,
    BATTLERINFOBOX_PART_LEVEL_GENDERLESS_BOTTOM_0,
    BATTLERINFOBOX_PART_LEVEL_GENDERLESS_BOTTOM_1,
};

static s32 BattlerInfoBox_DrawGauge(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxGaugeType gaugeType);
static s32 UpdateGauge(s32 max, s32 cur, s32 diff, s32 *temp, u8 size, u16 fillOffset);
static u8 FillCells(s32 max, s32 cur, s32 diff, s32 *temp, u8 *cells, u8 cellNum);
static u32 CalcGaugeFill(s32 curVal, s32 diff, s32 maxVal, u8 gaugeSize);
static const u8 *GetBattlerInfoBoxPartsTile(enum BattlerInfoBoxPart part);
static void DrawGauge(BattlerInfoBox *battlerInfoBox, u8 gaugeType);
static void BattlerInfoBox_DrawBattlerName(BattlerInfoBox *battlerInfoBox);
static void BattlerInfoBox_DrawLevelText(BattlerInfoBox *battlerInfoBox);
static void BattlerInfoBox_DrawLevelNumber(BattlerInfoBox *battlerInfoBox);
static void BattlerInfoBox_DrawCurrentHP(BattlerInfoBox *battlerInfoBox, u32 hp);
static void BattlerInfoBox_DrawMaxHP(BattlerInfoBox *battlerInfoBox);
static void BattlerInfoBox_DrawCaughtIcon(BattlerInfoBox *battlerInfoBox);
static void BattlerInfoBox_DrawStatusIcon(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxPart part);
static void BattlerInfoBox_DrawBallCount(BattlerInfoBox *battlerInfoBox, u32 flags);
static void BattlerInfoBox_DrawBallsLeftMessage(BattlerInfoBox *battlerInfoBox, u32 flags);
static void BattlerInfoBox_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type);
static void ov16_02267244(BattlerInfoBox *battlerInfoBox);
static void ov16_0226728C(BattlerInfoBox *battlerInfoBox);
static const SpriteTemplate *BattlerInfoBox_SpriteTemplate(u8 type);
static const SpriteTemplate *ov16_02268314(u8 type);
static void ScrollBattlerInfoBoxTask(SysTask *task, void *data);
static void ov16_02268380(SysTask *task, void *param1);
void ov16_02268470(BattlerInfoBox *battlerInfoBox);
void ov16_02268498(BattlerInfoBox *battlerInfoBox);
static void ov16_022684BC(SysTask *task, void *data);
static void BattlerInfoBox_EnableArrow(BattlerInfoBox *battlerInfoBox, BOOL enable);

ALIGN_4 static const s8 sArrowOffsetX[] = {
    [BATTLERINFOBOX_TYPE_PLAYER_SOLO] = 72,
    [BATTLERINFOBOX_TYPE_ENEMY_SOLO] = 0,
    [BATTLERINFOBOX_TYPE_PLAYER_SLOT_1] = 72,
    [BATTLERINFOBOX_TYPE_ENEMY_SLOT_1] = 0,
    [BATTLERINFOBOX_TYPE_PLAYER_SLOT_2] = 72,
    [BATTLERINFOBOX_TYPE_ENEMY_SLOT_2] = 0,
};

static const VRAMTransfer sBattlerNameVRAMTransfer[][4] = {
    [BATTLERINFOBOX_TYPE_PLAYER_SOLO] = {
        { 19 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 5 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 27 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 5 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
    [BATTLERINFOBOX_TYPE_ENEMY_SOLO] = {
        { 17 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 25 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
    [BATTLERINFOBOX_TYPE_PLAYER_SLOT_1] = {
        { 18 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 6 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 26 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 6 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 2 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 2 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
    [BATTLERINFOBOX_TYPE_ENEMY_SLOT_1] = {
        { 17 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 25 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
    [BATTLERINFOBOX_TYPE_PLAYER_SLOT_2] = {
        { 18 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 6 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 26 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 6 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 2 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 2 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
    [BATTLERINFOBOX_TYPE_ENEMY_SLOT_2] = {
        { 17 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 25 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 7 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 80 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 88 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE, 1 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    },
};

static const VRAMTransfer Unk_ov16_0226F47C[][2] = {
    {
        { 0xA60, 0x40 },
        { 0xB60, 0x40 },
    },
    {
        { 0xA20, 0x40 },
        { 0xB20, 0x40 },
    },
    {
        { 0xA40, 0x40 },
        { 0xB40, 0x40 },
    },
    {
        { 0xA20, 0x40 },
        { 0xB20, 0x40 },
    },
    {
        { 0xA40, 0x40 },
        { 0xB40, 0x40 },
    },
    {
        { 0xA20, 0x40 },
        { 0xB20, 0x40 },
    },
};

static const VRAMTransfer Unk_ov16_0226F3EC[][2] = {
    {
        { 0xAA0, 0x60 },
        { 0xBA0, 0x60 },
    },
    {
        { 0xA60, 0x60 },
        { 0xB60, 0x60 },
    },
    {
        { 0xA80, 0x60 },
        { 0xB80, 0x60 },
    },
    {
        { 0xA60, 0x60 },
        { 0xB60, 0x60 },
    },
    {
        { 0xA80, 0x60 },
        { 0xB80, 0x60 },
    },
    {
        { 0xA60, 0x60 },
        { 0xB60, 0x60 },
    },
};

static const VRAMTransfer Unk_ov16_0226F41C[][2] = {
    {
        { 0x0, 0x0 },
        { 0xD00, 0x60 },
    },
    {
        { 0x620, 0x60 },
        { 0x0, 0x0 },
    },
    {
        { 0x0, 0x0 },
        { 0xC00, 0x60 },
    },
    {
        { 0x620, 0x60 },
        { 0x0, 0x0 },
    },
    {
        { 0x0, 0x0 },
        { 0xC00, 0x60 },
    },
    {
        { 0x620, 0x60 },
        { 0x0, 0x0 },
    },
};

static const VRAMTransfer Unk_ov16_0226F3BC[] = {
    { 0xD80, 0x60 },
    { 0x6A0, 0x60 },
    { 0xC80, 0x60 },
    { 0x6A0, 0x60 },
    { 0xC80, 0x60 },
    { 0x6A0, 0x60 },
};

static const VRAMTransfer Unk_ov16_0226F44C[][2] = {
    {
        { 0x4E0, 0x0 },
        { 0xC20, 0xC0 },
    },
    {
        { 0x4E0, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
};

static const VRAMTransfer Unk_ov16_0226F38C[] = {
    { 0x460, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x420, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x440, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x420, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x440, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x420, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
};

static const VRAMTransfer Unk_ov16_0226F35C[] = {
    { 0x480, 0x60 },
    { 0x440, 0x60 },
    { 0x460, 0x60 },
    { 0x440, 0x60 },
    { 0x460, 0x60 },
    { 0x440, 0x60 },
};

static const VRAMTransfer Unk_ov16_0226F33C[4] = {
    { 0x240, 0xC0 },
    { 0x340, 0xC0 },
    { 0xA00, 0xE0 },
    { 0xB00, 0xE0 },
};

static const VRAMTransfer Unk_ov16_0226F34C[4] = {
    { 0x440, 0xC0 },
    { 0x540, 0xC0 },
    { 0xC00, 0xE0 },
    { 0xD00, 0xE0 },
};

static const VRAMTransfer Unk_ov16_0226F374[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x4C0, 0x40 },
    { 0x0, 0x0 },
    { 0x4C0, 0x40 },
    { 0x0, 0x0 },
};

static const VRAMTransfer Unk_ov16_0226F3A4[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0xCC0, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xCC0, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

static const VRAMTransfer Unk_ov16_0226F3D4[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0xC60, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xC60, BATTLERINFOBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

#define BATTLERINFOBOX_MAIN_PALETTE_RESID    20006
#define BATTLERINFOBOX_EFFECTS_PALETTE_RESID 20007
#define BATTLERINFOBOX_SAFARI_PALETTE_RESID  20008

static const SpriteTemplate sBattlerInfoBoxTemplate_SoloPlayer = {
    .x = BATTLERINFOBOX_X_OFFSET_SOLO_PLAYER,
    .y = BATTLERINFOBOX_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_player_singles_NCGR_lz,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_tall_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_6,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_SoloEnemy = {
    .x = BATTLERINFOBOX_X_OFFSET_SOLO_ENEMY,
    .y = BATTLERINFOBOX_Y_OFFSET_SOLO_ENEMY,
    .z = 0,
    .animIdx = 0,
    .priority = 24,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_enemy_NCGR_lz,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_short_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_5,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_PlayerSlot1 = {
    .x = BATTLERINFOBOX_X_OFFSET_PLAYER_SLOT_1,
    .y = BATTLERINFOBOX_Y_OFFSET_PLAYER_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 28,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_player_doubles_NCGR_lz,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_short_cell_NCER_lz_3,
        misc_single_frame_anim_NANR_lz_9,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_EnemySlot1 = {
    .x = BATTLERINFOBOX_X_OFFSET_ENEMY_SLOT_1,
    .y = BATTLERINFOBOX_Y_OFFSET_ENEMY_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 25,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_enemy_NCGR_lz_1,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_short_cell_NCER_lz_1,
        misc_single_frame_anim_NANR_lz_7,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_PlayerSlot2 = {
    .x = BATTLERINFOBOX_X_OFFSET_PLAYER_SLOT_2,
    .y = BATTLERINFOBOX_Y_OFFSET_PLAYER_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 26,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_player_doubles_NCGR_lz_1,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_short_cell_NCER_lz_4,
        misc_single_frame_anim_NANR_lz_10,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_EnemySlot2 = {
    .x = BATTLERINFOBOX_X_OFFSET_ENEMY_SLOT_2,
    .y = BATTLERINFOBOX_Y_OFFSET_ENEMY_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 27,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_enemy_NCGR_lz_2,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_short_cell_NCER_lz_2,
        misc_single_frame_anim_NANR_lz_8,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sBattlerInfoBoxTemplate_Unk_ov16_0226F514 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 17,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_arrows_wide_NCGR_lz,
        BATTLERINFOBOX_MAIN_PALETTE_RESID,
        battler_info_box_arrows_wide_cell_NCER_lz,
        battler_info_box_arrows_wide_anim_NANR_lz,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE
};

static const SpriteTemplate sBattlerInfoBoxTemplate_NoPlayerMon = {
    .x = BATTLERINFOBOX_X_OFFSET_SOLO_PLAYER,
    .y = BATTLERINFOBOX_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        battler_info_box_safari_NCGR_lz,
        BATTLERINFOBOX_SAFARI_PALETTE_RESID,
        battler_info_box_safari_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_15,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

#include "res/graphics/battle/battler_info_box/info_box_parts.4bpp.h"

void BattlerInfoBox_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, PaletteData *palette, enum BattlerInfoBoxType battlerInfoBoxType)
{
    const SpriteTemplate *template = BattlerInfoBox_SpriteTemplate(battlerInfoBoxType);

    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, battler_info_box_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, BATTLERINFOBOX_MAIN_PALETTE_RESID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, battler_info_box_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, BATTLERINFOBOX_EFFECTS_PALETTE_RESID);

    if (battlerInfoBoxType == BATTLERINFOBOX_TYPE_SAFARI_ZONE || battlerInfoBoxType == BATTLERINFOBOX_TYPE_PAL_PARK) {
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, battler_info_box_safari_NCLR, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, BATTLERINFOBOX_SAFARI_PALETTE_RESID);
    }
}

static void BattlerInfoBox_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type)
{
    const SpriteTemplate *template = ov16_02268314(type);

    if (template != NULL) {
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, handler, narc, battler_info_box_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, BATTLERINFOBOX_MAIN_PALETTE_RESID);
        SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
        SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    }
}

ManagedSprite *BattlerInfoBox_DrawSprite(SpriteSystem *spriteSys, SpriteManager *handler, int type)
{
    const SpriteTemplate *template = BattlerInfoBox_SpriteTemplate(type);
    ManagedSprite *managedSprite = SpriteSystem_NewSprite(spriteSys, handler, template);

    Sprite_TickFrame(managedSprite->sprite);
    return managedSprite;
}

void BattlerInfoBox_DrawInfo(BattlerInfoBox *battlerInfoBox, u32 hp, u32 flags)
{
    BOOL caughtSpecies = FALSE;

    GF_ASSERT(battlerInfoBox->mainSprite != NULL);

    u32 flagsCopy = flags;

    if (battlerInfoBox->type == BATTLERINFOBOX_TYPE_SAFARI_ZONE) {
        flags &= BATTLERINFOBOX_INFO_ALL_SAFARI;
    } else if (battlerInfoBox->type == BATTLERINFOBOX_TYPE_PAL_PARK) {
        flags &= BATTLERINFOBOX_INFO_ALL_PARK;
    } else {
        flags &= ~(BATTLERINFOBOX_INFO_ALL_SAFARI | BATTLERINFOBOX_INFO_ALL_PARK);
    }

    switch (battlerInfoBox->type) {
    case BATTLERINFOBOX_TYPE_ENEMY_SOLO:
    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_1:
    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_2:
        // Never display current HP, max HP, or the EXP bar on an enemy battlerInfoBox
        flags &= ~BATTLERINFOBOX_INFO_NOT_ON_ENEMY;
        caughtSpecies = TRUE;
        break;

    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
        // Never display the EXP bar in doubles
        flags &= ~(BATTLERINFOBOX_INFO_EXP_GAUGE | BATTLERINFOBOX_INFO_CAUGHT_SPECIES);

        // Allow toggling between showing the HP bar and raw current/max numbers
        if (battlerInfoBox->numberMode == FALSE) {
            flags &= ~(BATTLERINFOBOX_INFO_CURRENT_HP | BATTLERINFOBOX_INFO_MAX_HP);
        } else {
            flags &= ~BATTLERINFOBOX_INFO_HP_GAUGE;
        }
        break;

    case BATTLERINFOBOX_TYPE_PLAYER_SOLO:
        // Never show the pokeball icon on a player's battlerInfoBox for a captured species
        flags &= ~BATTLERINFOBOX_INFO_CAUGHT_SPECIES;
        break;

    case BATTLERINFOBOX_TYPE_SAFARI_ZONE:
    case BATTLERINFOBOX_TYPE_PAL_PARK:
        break;
    }

    if (BattleSystem_GetBattleType(battlerInfoBox->battleSys) & BATTLE_TYPE_TRAINER) {
        // Never show the pokeball icon on an enemy trainer's battlerInfoBox
        flags &= ~BATTLERINFOBOX_INFO_CAUGHT_SPECIES;
    }

    if (flags & BATTLERINFOBOX_INFO_HP_GAUGE) {
        BattlerInfoBox_CalcHP(battlerInfoBox, 0);
        BattlerInfoBox_DrawGauge(battlerInfoBox, BATTLERINFOBOX_GAUGE_HP);
    }

    if (flags & BATTLERINFOBOX_INFO_CURRENT_HP) {
        BattlerInfoBox_DrawCurrentHP(battlerInfoBox, hp);
    }

    if (flags & BATTLERINFOBOX_INFO_MAX_HP) {
        BattlerInfoBox_DrawMaxHP(battlerInfoBox);
    }

    if ((flags & BATTLERINFOBOX_INFO_LEVEL_TEXT) || (flags & BATTLERINFOBOX_INFO_GENDER)) {
        BattlerInfoBox_DrawLevelText(battlerInfoBox);
    }

    if (flags & BATTLERINFOBOX_INFO_LEVEL) {
        BattlerInfoBox_DrawLevelNumber(battlerInfoBox);
    }

    if (flags & BATTLERINFOBOX_INFO_NAME) {
        BattlerInfoBox_DrawBattlerName(battlerInfoBox);
    }

    if (flags & BATTLERINFOBOX_INFO_EXP_GAUGE) {
        BattlerInfoBox_CalcExp(battlerInfoBox, 0);
        BattlerInfoBox_DrawGauge(battlerInfoBox, BATTLERINFOBOX_GAUGE_EXP);
    }

    if (flags & BATTLERINFOBOX_INFO_CAUGHT_SPECIES) {
        BattlerInfoBox_DrawCaughtIcon(battlerInfoBox);
    }

    if (flags & BATTLERINFOBOX_INFO_STATUS) {
        switch (battlerInfoBox->status) {
        default:
        case BATTLE_ANIMATION_NONE:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_HEALTHY_0);
            break;
        case BATTLE_ANIMATION_ASLEEP:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_SLEEP_0);
            break;
        case BATTLE_ANIMATION_POISONED:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_POISON_0);
            break;
        case BATTLE_ANIMATION_BURNED:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_BURN_0);
            break;
        case BATTLE_ANIMATION_FROZEN:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_FREEZE_0);
            break;
        case BATTLE_ANIMATION_PARALYZED:
            BattlerInfoBox_DrawStatusIcon(battlerInfoBox, BATTLERINFOBOX_PART_STATUS_PARALYSIS_0);
            break;
        }
    }

    if (flags & (BATTLERINFOBOX_INFO_COUNT_SAFARI_BALLS | BATTLERINFOBOX_INFO_COUNT_PARK_BALLS)) {
        BattlerInfoBox_DrawBallCount(battlerInfoBox, flags);
    }

    if (flags & (BATTLERINFOBOX_INFO_REMAINING_SAFARI_BALLS | BATTLERINFOBOX_INFO_REMAINING_PARK_BALLS)) {
        BattlerInfoBox_DrawBallsLeftMessage(battlerInfoBox, flags);
    }
}

void ov16_02267220(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->task_50 != NULL) {
        SysTask_Done(battlerInfoBox->task_50);
        battlerInfoBox->task_50 = NULL;
    }

    if (battlerInfoBox->mainSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(battlerInfoBox->mainSprite);
    battlerInfoBox->mainSprite = NULL;
}

static void ov16_02267244(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->arrowSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(battlerInfoBox->arrowSprite);
    battlerInfoBox->arrowSprite = NULL;
}

void ov16_02267258(BattlerInfoBox *battlerInfoBox)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = BattlerInfoBox_SpriteTemplate(battlerInfoBox->type);
    spriteSystem = BattleSystem_GetSpriteSystem(battlerInfoBox->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(battlerInfoBox->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

static void ov16_0226728C(BattlerInfoBox *battlerInfoBox)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = ov16_02268314(battlerInfoBox->type);

    if (spriteTemplate == NULL) {
        return;
    }

    spriteSystem = BattleSystem_GetSpriteSystem(battlerInfoBox->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(battlerInfoBox->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

void ov16_022672C4(BattlerInfoBox *battlerInfoBox)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(battlerInfoBox->battleSys);
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(battlerInfoBox->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(battlerInfoBox->battleSys);
    const SpriteTemplate *spriteTemplate = BattlerInfoBox_SpriteTemplate(battlerInfoBox->type);

    BattlerInfoBox_LoadResources(spriteSystem, spriteManager, narc, paletteData, battlerInfoBox->type);
    battlerInfoBox->mainSprite = BattlerInfoBox_DrawSprite(spriteSystem, spriteManager, battlerInfoBox->type);

    BattlerInfoBox_LoadMainPalette(spriteSystem, spriteManager, narc, paletteData, battlerInfoBox->type);

    if (battlerInfoBox->arrowSprite != NULL) {
        Sprite_SetPositionXY(battlerInfoBox->arrowSprite->sprite, spriteTemplate->x - sArrowOffsetX[battlerInfoBox->type], spriteTemplate->y + 0);
    }

    NARC_dtor(narc);
}

void ov16_02267360(BattlerInfoBox *battlerInfoBox)
{
    ov16_02267220(battlerInfoBox);
    ov16_02267258(battlerInfoBox);
    ov16_02267244(battlerInfoBox);
    ov16_0226728C(battlerInfoBox);
}

void ov16_0226737C(BattlerInfoBox *battlerInfoBox)
{
    const u8 *tileNum;
    NNSG2dImageProxy *imgProxy;
    void *v2;

    switch (battlerInfoBox->type) {
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
        break;
    default:
        return;
    }

    battlerInfoBox->numberMode ^= 1;

    v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);

    if (battlerInfoBox->numberMode == 1) {
        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_NUMBERS_LEFT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[battlerInfoBox->type].pos + BATTLERINFOBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_NUMBERS_RIGHT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[battlerInfoBox->type].pos + BATTLERINFOBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);

        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_SLASH);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3D4[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3D4[battlerInfoBox->type].size);

        BattlerInfoBox_DrawInfo(battlerInfoBox, battlerInfoBox->curHP, BATTLERINFOBOX_INFO_CURRENT_HP | BATTLERINFOBOX_INFO_MAX_HP);
    } else {
        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_HP_H_2);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F374[battlerInfoBox->type].size);

        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_BAR_END);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3A4[battlerInfoBox->type].size);

        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_STATUS_HEALTHY_0);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[battlerInfoBox->type].pos + BATTLERINFOBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);

        BattlerInfoBox_DrawInfo(battlerInfoBox, battlerInfoBox->curHP, BATTLERINFOBOX_INFO_HP_GAUGE);
    }
}

void BattlerInfoBox_CalcHP(BattlerInfoBox *battlerInfoBox, int damage) // TODO: all calls pass in damage from battlerInfoBox, pls fix.
{
    battlerInfoBox->hpTemp = S32_MIN;

    // bound the damage input to [0, maxHP]
    if (battlerInfoBox->curHP + damage < 0) {
        damage -= battlerInfoBox->curHP + damage;
    }
    if (battlerInfoBox->curHP + damage > battlerInfoBox->maxHP) {
        damage -= (battlerInfoBox->curHP + damage) - battlerInfoBox->maxHP;
    }

    // update cached values
    battlerInfoBox->damage = -damage;

    if (battlerInfoBox->curHP < 0) {
        battlerInfoBox->curHP = 0;
    }

    if (battlerInfoBox->curHP > battlerInfoBox->maxHP) {
        battlerInfoBox->curHP = battlerInfoBox->maxHP;
    }
}

s32 ov16_022674F8(BattlerInfoBox *battlerInfoBox)
{
    s32 result = BattlerInfoBox_DrawGauge(battlerInfoBox, BATTLERINFOBOX_GAUGE_HP);

    if (result == -1) {
        battlerInfoBox->curHP -= battlerInfoBox->damage;
        BattlerInfoBox_DrawInfo(battlerInfoBox, battlerInfoBox->curHP, BATTLERINFOBOX_INFO_CURRENT_HP);
    } else {
        BattlerInfoBox_DrawInfo(battlerInfoBox, result, BATTLERINFOBOX_INFO_CURRENT_HP);
    }

    return result;
}

void BattlerInfoBox_CalcExp(BattlerInfoBox *battlerInfoBox, int expReward)
{
    battlerInfoBox->expTemp = S32_MIN;

    if (battlerInfoBox->curExp + expReward < 0) {
        expReward -= battlerInfoBox->curExp + expReward;
    }

    if (battlerInfoBox->curExp + expReward > battlerInfoBox->maxExp) {
        expReward -= (battlerInfoBox->curExp + expReward) - battlerInfoBox->maxExp;
    }

    battlerInfoBox->expReward = -expReward;

    if (battlerInfoBox->curExp < 0) {
        battlerInfoBox->curExp = 0;
    }

    if (battlerInfoBox->curExp > battlerInfoBox->maxExp) {
        battlerInfoBox->curExp = battlerInfoBox->maxExp;
    }
}

s32 ov16_02267560(BattlerInfoBox *battlerInfoBox)
{
    s32 result = BattlerInfoBox_DrawGauge(battlerInfoBox, BATTLERINFOBOX_GAUGE_EXP);

    if (result == -1) {
        battlerInfoBox->curExp -= battlerInfoBox->expReward;
    }

    return result;
}

void ov16_0226757C(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(battlerInfoBox->arrowSprite->sprite, TRUE);
        BattlerInfoBox_EnableArrow(battlerInfoBox, TRUE);
    }

    if ((BattleSystem_GetBattleType(battlerInfoBox->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) == FALSE) {
        ov16_02268470(battlerInfoBox);
    }
}

void ov16_022675AC(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(battlerInfoBox->arrowSprite->sprite, FALSE);
        Sprite_SetAnimFrame(battlerInfoBox->arrowSprite->sprite, 0);
        BattlerInfoBox_EnableArrow(battlerInfoBox, FALSE);
    }

    ov16_02268498(battlerInfoBox);
}

void ov16_022675D8(BattlerInfoBox *battlerInfoBox, int priority)
{
    if (battlerInfoBox->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetExplicitPriority(battlerInfoBox->mainSprite, priority);

    if (battlerInfoBox->arrowSprite != NULL) {
        ManagedSprite_SetExplicitPriority(battlerInfoBox->arrowSprite, priority);
    }
}

/**
 * @brief Enable the extended arrow-graphic used by the battlerInfoBox for Pokemon battlers.
 *
 * @param battleSys
 * @param enable
 */
static void BattlerInfoBox_EnableArrow(BattlerInfoBox *battleSys, BOOL enable)
{
    if (battleSys->arrowSprite == NULL) {
        return;
    }

    // Safari battles don't get an arrow.
    if ((BattleSystem_GetBattleType(battleSys->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK))
        && enable == TRUE) {
        return;
    }

    ManagedSprite_SetDrawFlag(battleSys->arrowSprite, enable);
}

void BattlerInfoBox_Enable(BattlerInfoBox *battleSys, BOOL enable)
{
    if (battleSys->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(battleSys->mainSprite, enable);
    BattlerInfoBox_EnableArrow(battleSys, enable);
}

void BattlerInfoBox_OffsetPositionXY(BattlerInfoBox *battlerInfoBox, int x, int y)
{
    GF_ASSERT(battlerInfoBox->mainSprite != NULL);
    const SpriteTemplate *template = BattlerInfoBox_SpriteTemplate(battlerInfoBox->type);

    Sprite_SetPositionXY(battlerInfoBox->mainSprite->sprite, template->x + x, template->y + y);
    if (battlerInfoBox->arrowSprite != NULL) {
        Sprite_SetPositionXY(battlerInfoBox->arrowSprite->sprite,
            template->x + x - sArrowOffsetX[battlerInfoBox->type],
            template->y + y + 0);
    }
}

void BattlerInfoBox_Scroll(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxScrollDirection direction)
{
    GF_ASSERT(battlerInfoBox != NULL);
    GF_ASSERT(battlerInfoBox->mainSprite != NULL);

    battlerInfoBox->doneScrolling = 0;
    battlerInfoBox->scrollDirection = direction;

    if (direction == BATTLERINFOBOX_SCROLL_IN) {
        switch (battlerInfoBox->type) {
        case BATTLERINFOBOX_TYPE_PLAYER_SOLO:
        case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
        case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
        case BATTLERINFOBOX_TYPE_SAFARI_ZONE:
        case BATTLERINFOBOX_TYPE_PAL_PARK:
            // Player-side battlerInfoBox
            BattlerInfoBox_OffsetPositionXY(battlerInfoBox, BATTLERINFOBOX_SCROLL_OUT_OFFSET, 0);
            break;

        default:
            // Enemy-side battlerInfoBox
            BattlerInfoBox_OffsetPositionXY(battlerInfoBox, -BATTLERINFOBOX_SCROLL_OUT_OFFSET, 0);
            break;
        }
    } else {
        BattlerInfoBox_OffsetPositionXY(battlerInfoBox, 0, 0);
    }

    SysTask_Start(ScrollBattlerInfoBoxTask, battlerInfoBox, 990);
}

/**
 * @brief Scroll the battlerInfoBox in or out by the configured scroll-speed value.
 *
 * @param task
 * @param data
 */
static void ScrollBattlerInfoBoxTask(SysTask *task, void *data)
{
    BattlerInfoBox *battlerInfoBox = data;
    int done = 0;
    const SpriteTemplate *template = BattlerInfoBox_SpriteTemplate(battlerInfoBox->type);

    s16 x, y;
    ManagedSprite_GetPositionXY(battlerInfoBox->mainSprite, &x, &y);

    // Determine new X and Y based on the type of battlerInfoBox
    switch (battlerInfoBox->type) {
    case BATTLERINFOBOX_TYPE_PLAYER_SOLO:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
    case BATTLERINFOBOX_TYPE_SAFARI_ZONE:
    case BATTLERINFOBOX_TYPE_PAL_PARK:
        // Player-side battlerInfoBox
        if (battlerInfoBox->scrollDirection == BATTLERINFOBOX_SCROLL_IN) {
            x -= BATTLERINFOBOX_SCROLL_SPEED;

            if (x < template->x) {
                x = template->x;
                done++;
            }
        } else {
            x += BATTLERINFOBOX_SCROLL_SPEED;

            if (x > template->x + BATTLERINFOBOX_SCROLL_OUT_OFFSET) {
                x = template->x + BATTLERINFOBOX_SCROLL_OUT_OFFSET;
                done++;
            }
        }
        break;

    default:
        // Enemy-side battlerInfoBox
        if (battlerInfoBox->scrollDirection == BATTLERINFOBOX_SCROLL_IN) {
            x += BATTLERINFOBOX_SCROLL_SPEED;

            if (x > template->x) {
                x = template->x;
                done++;
            }
        } else {
            x -= BATTLERINFOBOX_SCROLL_SPEED;

            if (x < template->x - BATTLERINFOBOX_SCROLL_SPEED) {
                x = template->x - BATTLERINFOBOX_SCROLL_SPEED;
                done++;
            }
        }
        break;
    }

    // Update positions of the sprites on the screen
    ManagedSprite_SetPositionXY(battlerInfoBox->mainSprite, x, y);
    if (battlerInfoBox->arrowSprite != NULL) {
        ManagedSprite_SetPositionXY(battlerInfoBox->arrowSprite, x - sArrowOffsetX[battlerInfoBox->type], y + 0);
    }

    // If the sprites are now in position, we're done
    if (done > 0) {
        battlerInfoBox->doneScrolling = TRUE;
        SysTask_Done(task);
    }
}

/**
 * @brief Draw the battler's name onto the battlerInfoBox.
 *
 * @param battlerInfoBox
 */
static void BattlerInfoBox_DrawBattlerName(BattlerInfoBox *battlerInfoBox)
{
    BgConfig *bgl = BattleSystem_GetBgConfig(battlerInfoBox->battleSys);
    u8 *buf;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(battlerInfoBox->battleSys);
    StringTemplate *strFormatter = BattleSystem_GetStringTemplate(battlerInfoBox->battleSys);

    String *nickname = String_Init(MON_NAME_LEN + 12, HEAP_ID_BATTLE); // TODO: not sure why there is a +12 here
    String *template = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_BattlerInfoBoxPokemonName);

    Pokemon *mon = BattleSystem_GetPartyPokemon(battlerInfoBox->battleSys, battlerInfoBox->battler, battlerInfoBox->selectedPartySlot);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    StringTemplate_SetNickname(strFormatter, 0, boxMon);
    StringTemplate_Format(strFormatter, nickname, template);

    Window_AddToTopLeftCorner(bgl, &window, BATTLERINFOBOX_NAME_BLOCK_COUNT_X, BATTLERINFOBOX_NAME_BLOCK_COUNT_Y, BATTLERINFOBOX_NAME_WINDOW_OFFSET, BATTLERINFOBOX_NAME_BACKGROUND_COLOR);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, BATTLERINFOBOX_NAME_TEXT_COLOR, 0, 0, NULL);
    buf = window.pixels;

    // copy the window's data into VRAM over the painted battlerInfoBox
    void *vram = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    u8 *hiHalf = buf;
    u8 *loHalf = &buf[BATTLERINFOBOX_NAME_BLOCK_COUNT_X * BATTLERINFOBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(hiHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, battlerInfoBox->type, 0, imgProxy),
        sBattlerNameVRAMTransfer[battlerInfoBox->type][0].size);
    MI_CpuCopy16(loHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, battlerInfoBox->type, 1, imgProxy),
        sBattlerNameVRAMTransfer[battlerInfoBox->type][1].size);
    MI_CpuCopy16(&hiHalf[sBattlerNameVRAMTransfer[battlerInfoBox->type][0].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, battlerInfoBox->type, 2, imgProxy),
        sBattlerNameVRAMTransfer[battlerInfoBox->type][2].size);
    MI_CpuCopy16(&loHalf[sBattlerNameVRAMTransfer[battlerInfoBox->type][1].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, battlerInfoBox->type, 3, imgProxy),
        sBattlerNameVRAMTransfer[battlerInfoBox->type][3].size);

    Window_Remove(&window);
    String_Free(nickname);
    String_Free(template);
}

static void BattlerInfoBox_DrawLevelText(BattlerInfoBox *battlerInfoBox)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum1;
    const u8 *tileNum2;
    int part1, part2;

    if (battlerInfoBox->gender == GENDER_MALE) {
        part1 = BATTLERINFOBOX_PART_LEVEL_MALE_BOTTOM_0;
        part2 = BATTLERINFOBOX_PART_LEVEL_MALE_TOP_0;
    } else if (battlerInfoBox->gender == GENDER_FEMALE) {
        part1 = BATTLERINFOBOX_PART_LEVEL_FEMALE_BOTTOM_0;
        part2 = BATTLERINFOBOX_PART_LEVEL_FEMALE_TOP_0;
    } else {
        part1 = BATTLERINFOBOX_PART_LEVEL_GENDERLESS_BOTTOM_0;
        part2 = BATTLERINFOBOX_PART_LEVEL_GENDERLESS_TOP_0;
    }

    tileNum1 = GetBattlerInfoBoxPartsTile(part1);
    tileNum2 = GetBattlerInfoBoxPartsTile(part2);

    void *v5 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);

    MI_CpuCopy16(tileNum2, (void *)((u32)v5 + Unk_ov16_0226F47C[battlerInfoBox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[battlerInfoBox->type][0].size);
    MI_CpuCopy16(tileNum1, (void *)((u32)v5 + Unk_ov16_0226F47C[battlerInfoBox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[battlerInfoBox->type][1].size);
}

static void BattlerInfoBox_DrawLevelNumber(BattlerInfoBox *battlerInfoBox)
{
    NNSG2dImageProxy *imgProxy;
    int v4, v5, v6;

    int size = 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE;
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, size);
    u8 *v1 = Heap_Alloc(HEAP_ID_BATTLE, size * 2);

    MI_CpuFill8(v0, 0xf | (0xf << 4), size);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsLevel(battlerInfoBox->battleSys), battlerInfoBox->level, 3, PADDING_MODE_NONE, v0);

    void *v7 = G2_GetOBJCharPtr();
    u8 *v8, *v9;

    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);

    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[battlerInfoBox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), v1, Unk_ov16_0226F3EC[battlerInfoBox->type][0].size);
    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[battlerInfoBox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), &v1[size], Unk_ov16_0226F3EC[battlerInfoBox->type][1].size);

    v6 = 0;

    for (v5 = 0; v5 < size; v5 += 32) {
        for (v4 = 0; v4 < 16; v4++) {
            v1[v5 + 16 + v4] = v0[v6];
            v1[v5 + v4 + size] = v0[v6 + 16];
            v6++;
        }

        v6 += 16;
    }

    v8 = v1;
    v9 = &v1[size];

    MI_CpuCopy16(v8, (void *)((u32)v7 + Unk_ov16_0226F3EC[battlerInfoBox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[battlerInfoBox->type][0].size);
    MI_CpuCopy16(v9, (void *)((u32)v7 + Unk_ov16_0226F3EC[battlerInfoBox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[battlerInfoBox->type][1].size);

    Heap_Free(v0);
    Heap_Free(v1);
}

static void BattlerInfoBox_DrawCurrentHP(BattlerInfoBox *battlerInfoBox, u32 hp)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(battlerInfoBox->battleSys), hp, 3, PADDING_MODE_SPACES, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F41C[battlerInfoBox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[battlerInfoBox->type][0].size);
    MI_CpuCopy16(&v3[Unk_ov16_0226F41C[battlerInfoBox->type][0].size], (void *)((u32)v2 + Unk_ov16_0226F41C[battlerInfoBox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[battlerInfoBox->type][1].size);

    Heap_Free(v0);
}

static void BattlerInfoBox_DrawMaxHP(BattlerInfoBox *battlerInfoBox)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(battlerInfoBox->battleSys), battlerInfoBox->maxHP, 3, PADDING_MODE_NONE, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F3BC[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3BC[battlerInfoBox->type].size);

    Heap_Free(v0);
}

static void BattlerInfoBox_DrawCaughtIcon(BattlerInfoBox *battlerInfoBox)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum;

    if (battlerInfoBox->caughtSpecies == TRUE) {
        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_CAUGHT_INDICATOR);
    } else {
        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_STATUS_HEALTHY_0);
    }

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F38C[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F38C[battlerInfoBox->type].size);
}

static void BattlerInfoBox_DrawStatusIcon(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxPart part)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum = GetBattlerInfoBoxPartsTile(part);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F35C[battlerInfoBox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F35C[battlerInfoBox->type].size);
}

static void BattlerInfoBox_DrawBallCount(BattlerInfoBox *battlerInfoBox, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(battlerInfoBox->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(battlerInfoBox->battleSys);
    String *string;

    if (flags & (1 << 10)) {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBalls);
    } else {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBalls);
    }

    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, BATTLERINFOBOX_NAME_TEXT_COLOR, 0, 0, NULL);

    v1 = window.pixels;

    void *v6 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    u8 *v7 = v1;
    u8 *v8 = &v1[13 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v7, (void *)((u32)v6 + Unk_ov16_0226F33C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[0].size);
    MI_CpuCopy16(v8, (void *)((u32)v6 + Unk_ov16_0226F33C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[1].size);

    MI_CpuCopy16(&v7[Unk_ov16_0226F33C[0].size], (void *)((u32)v6 + Unk_ov16_0226F33C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[2].size);
    MI_CpuCopy16(&v8[Unk_ov16_0226F33C[1].size], (void *)((u32)v6 + Unk_ov16_0226F33C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[3].size);

    Window_Remove(&window);
    String_Free(string);
}

static void BattlerInfoBox_DrawBallsLeftMessage(BattlerInfoBox *battlerInfoBox, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(battlerInfoBox->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(battlerInfoBox->battleSys);
    String *templateString;
    StringTemplate *strTemplate = BattleSystem_GetStringTemplate(battlerInfoBox->battleSys);

    String *string = String_Init(30, HEAP_ID_BATTLE);

    if (flags & (1 << 10)) {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBallsLeft);
    } else {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBallsLeft);
    }

    StringTemplate_SetNumber(strTemplate, 0, battlerInfoBox->numSafariBalls, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(strTemplate, string, templateString);
    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 2, 15), 0, 0, NULL);

    v1 = window.pixels;

    void *v8 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    u8 *v9 = v1;
    u8 *v10 = &v1[13 * BATTLERINFOBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v9, (void *)((u32)v8 + Unk_ov16_0226F34C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[0].size);
    MI_CpuCopy16(v10, (void *)((u32)v8 + Unk_ov16_0226F34C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[1].size);
    MI_CpuCopy16(&v9[Unk_ov16_0226F34C[0].size], (void *)((u32)v8 + Unk_ov16_0226F34C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[2].size);
    MI_CpuCopy16(&v10[Unk_ov16_0226F34C[1].size], (void *)((u32)v8 + Unk_ov16_0226F34C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[3].size);

    Window_Remove(&window);
    String_Free(string);
    String_Free(templateString);
}

static s32 BattlerInfoBox_DrawGauge(BattlerInfoBox *battlerInfoBox, enum BattlerInfoBoxGaugeType gaugeType)
{
    s32 result;
    s32 fillOffset;

    if (gaugeType == BATTLERINFOBOX_GAUGE_HP) {
        result = UpdateGauge(battlerInfoBox->maxHP, battlerInfoBox->curHP, battlerInfoBox->damage, &battlerInfoBox->hpTemp, BATTLERINFOBOX_HP_CELL_COUNT, 1);
    } else {
        fillOffset = CalcGaugeFill(battlerInfoBox->curExp, battlerInfoBox->expReward, battlerInfoBox->maxExp, BATTLERINFOBOX_EXP_CELL_COUNT);

        if (fillOffset == 0) {
            fillOffset = 1;
        }

        fillOffset = abs(battlerInfoBox->expReward / fillOffset);
        result = UpdateGauge(battlerInfoBox->maxExp, battlerInfoBox->curExp, battlerInfoBox->expReward, &battlerInfoBox->expTemp, BATTLERINFOBOX_EXP_CELL_COUNT, fillOffset);
    }

    if (gaugeType != BATTLERINFOBOX_GAUGE_HP || battlerInfoBox->numberMode != TRUE) {
        DrawGauge(battlerInfoBox, gaugeType);
    }

    if (result == -1) {
        if (gaugeType == BATTLERINFOBOX_GAUGE_HP) {
            battlerInfoBox->hpTemp = 0;
        } else {
            battlerInfoBox->expTemp = 0;
        }
    }

    return result;
}

static void DrawGauge(BattlerInfoBox *battlerInfoBox, u8 gaugeType)
{
    u8 i;
    u8 cells[BATTLERINFOBOX_EXP_CELL_COUNT];
    u8 part;
    u8 pixels;
    u8 level;
    const u8 *tileNum;
    void *v7 = G2_GetOBJCharPtr();
    NNSG2dImageProxy *imgProxy = Sprite_GetImageProxy(battlerInfoBox->mainSprite->sprite);
    int numBlocks;

    switch (gaugeType) {
    case BATTLERINFOBOX_GAUGE_HP:
        pixels = FillCells(battlerInfoBox->maxHP, battlerInfoBox->curHP, battlerInfoBox->damage, &battlerInfoBox->hpTemp, cells, BATTLERINFOBOX_HP_CELL_COUNT);

        int barColor = App_BarColor(pixels, 8 * BATTLERINFOBOX_HP_CELL_COUNT);

        switch (barColor) {
        case BARCOLOR_GREEN:
            part = BATTLERINFOBOX_PART_HP_GREEN_FILL_0;
            break;
        case BARCOLOR_YELLOW:
            part = BATTLERINFOBOX_PART_HP_YELLOW_FILL_0;
            break;
        case BARCOLOR_RED:
        default:
            part = BATTLERINFOBOX_PART_HP_RED_FILL_0;
            break;
        }

        tileNum = GetBattlerInfoBoxPartsTile(part);
        numBlocks = Unk_ov16_0226F44C[battlerInfoBox->type][0].size / BATTLERINFOBOX_WINDOW_BLOCK_SIZE;

        for (i = 0; i < BATTLERINFOBOX_HP_CELL_COUNT; i++) {
            if (i < numBlocks) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[battlerInfoBox->type][0].pos + (i * BATTLERINFOBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[battlerInfoBox->type][1].pos + ((i - numBlocks) * BATTLERINFOBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
            }
        }
        break;
    case BATTLERINFOBOX_GAUGE_EXP:
        FillCells(battlerInfoBox->maxExp, battlerInfoBox->curExp, battlerInfoBox->expReward, &battlerInfoBox->expTemp, cells, BATTLERINFOBOX_EXP_CELL_COUNT);
        level = battlerInfoBox->level;

        if (level == MAX_POKEMON_LEVEL) {
            for (i = 0; i < BATTLERINFOBOX_EXP_CELL_COUNT; i++) {
                cells[i] = 0;
            }
        }

        tileNum = GetBattlerInfoBoxPartsTile(BATTLERINFOBOX_PART_EXP_FILL_0);

        for (i = 0; i < BATTLERINFOBOX_EXP_CELL_COUNT; i++) {
            if (i < 5) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 1632 + (i * BATTLERINFOBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 3584 + ((i - 5) * BATTLERINFOBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), BATTLERINFOBOX_WINDOW_BLOCK_SIZE);
            }
        }
        break;
    }
}

/**
 * @brief Update the pixels of a gauge based on the calculated
 * change in the current value of a gauge.
 *
 * @param cur       Current value of the gauge
 * @param diff      Change to be applied to the current value
 * @param max       Max value of the gauge
 * @param size      Size of the gauge, in squares of fill
 * @param temp      Temporary value stored in the gauge
 * @return          Number of pixels to be filled
 */
static s32 UpdateGauge(s32 max, s32 cur, s32 diff, s32 *temp, u8 size, u16 fillOffset)
{
    s32 updated, final, ratio;

    u8 corrected = size * BATTLERINFOBOX_NAME_BLOCK_COUNT_X;

    if (*temp == S32_MIN) {
        if (max < corrected) {
            *temp = cur << 8;
        } else {
            *temp = cur;
        }
    }

    updated = cur - diff;

    if (updated < 0) {
        updated = 0;
    } else if (updated > max) {
        updated = max;
    }

    if (max < corrected) {
        if (updated == (*temp >> 8) && (*temp & 0xff) == 0) {
            return -1;
        }
    } else {
        if (updated == *temp) {
            return -1;
        }
    }

    if (max < corrected) {
        ratio = max * 0x100 / corrected;

        if (diff < 0) {
            *temp += ratio;
            final = *temp >> 8;

            if (final >= updated) {
                *temp = updated << 8;
                final = updated;
            }
        } else {
            *temp -= ratio;
            final = *temp >> 8;

            if ((*temp & 0xff) > 0) {
                final++;
            }

            if (final <= updated) {
                *temp = updated << 8;
                final = updated;
            }
        }
    } else {
        if (diff < 0) {
            *temp += fillOffset;

            if (*temp > updated) {
                *temp = updated;
            }
        } else {
            *temp -= fillOffset;

            if (*temp < updated) {
                *temp = updated;
            }
        }

        final = *temp;
    }

    return final;
}

static u8 FillCells(s32 max, s32 cur, s32 diff, s32 *temp, u8 *cells, u8 cellNum)
{
    int cell;
    u32 offset, pixels, final;
    s32 updated = cur - diff;

    if (updated < 0) {
        updated = 0;
    } else if (updated > max) {
        updated = max;
    }

    offset = 8 * cellNum;

    for (cell = 0; cell < cellNum; cell++) {
        cells[cell] = 0;
    }

    if (max < offset) {
        pixels = (*temp * offset / max) >> 8;
    } else {
        pixels = *temp * offset / max;
    }

    final = pixels;

    if (pixels == 0 && updated > 0) {
        cells[0] = 1;
        final = 1;
    } else {
        for (cell = 0; cell < cellNum; cell++) {
            if (pixels >= 8) {
                cells[cell] = 8;
                pixels -= 8;
            } else {
                cells[cell] = pixels;
                break;
            }
        }
    }

    return final;
}

/**
 * @brief Calculate the number of pixels that will need to be filled to account
 * for a change in the current value of a gauge.
 *
 * @param curVal    Current value of the gauge
 * @param diff      Change to be applied to the current value
 * @param maxVal    Max value of the gauge
 * @param gaugeSize Size of the gauge, in squares of fill
 * @return          Number of pixels to be filled
 */
static u32 CalcGaugeFill(s32 curVal, s32 diff, s32 maxVal, u8 gaugeSize)
{
    u8 gaugeSizePixels = gaugeSize * 8; // gauges have 8 pixels per "square" of fill
    s32 newVal = curVal - diff;

    if (newVal < 0) {
        newVal = 0;
    } else if (newVal > maxVal) {
        newVal = maxVal;
    }

    s8 curPixels = curVal * gaugeSizePixels / maxVal;
    s8 newPixels = newVal * gaugeSizePixels / maxVal;

    return abs(curPixels - newPixels);
}

static const u8 *GetBattlerInfoBoxPartsTile(enum BattlerInfoBoxPart part)
{
    return &sInfoBoxPartsBitmap[part * TILE_SIZE_4BPP];
}

u8 BattlerInfoBox_Type(int battlerType, u32 battleType)
{
    switch (battlerType) {
    case BATTLER_TYPE_SOLO_PLAYER:
        if (battleType & BATTLE_TYPE_PAL_PARK) {
            return BATTLERINFOBOX_TYPE_PAL_PARK;
        }

        if (battleType & BATTLE_TYPE_SAFARI) {
            return BATTLERINFOBOX_TYPE_SAFARI_ZONE;
        }

        return BATTLERINFOBOX_TYPE_PLAYER_SOLO;

    case BATTLER_TYPE_SOLO_ENEMY:
        return BATTLERINFOBOX_TYPE_ENEMY_SOLO;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        return BATTLERINFOBOX_TYPE_PLAYER_SLOT_1;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        return BATTLERINFOBOX_TYPE_ENEMY_SLOT_1;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        return BATTLERINFOBOX_TYPE_PLAYER_SLOT_2;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        return BATTLERINFOBOX_TYPE_ENEMY_SLOT_2;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

/**
 * @brief Grab the sprite template that applies to a given battlerInfoBox type.
 *
 * @param type  The battlerInfoBox type. See enum BattlerInfoBoxType for accepted values.
 * @return      Address of the SpriteTemplate struct which applies to this
 *              battlerInfoBox type.
 */
static const SpriteTemplate *BattlerInfoBox_SpriteTemplate(u8 type)
{
    switch (type) {
    case BATTLERINFOBOX_TYPE_PLAYER_SOLO:
        return &sBattlerInfoBoxTemplate_SoloPlayer;

    case BATTLERINFOBOX_TYPE_ENEMY_SOLO:
        return &sBattlerInfoBoxTemplate_SoloEnemy;

    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
        return &sBattlerInfoBoxTemplate_PlayerSlot1;

    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_1:
        return &sBattlerInfoBoxTemplate_EnemySlot1;

    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
        return &sBattlerInfoBoxTemplate_PlayerSlot2;

    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_2:
        return &sBattlerInfoBoxTemplate_EnemySlot2;

    case BATTLERINFOBOX_TYPE_SAFARI_ZONE:
    case BATTLERINFOBOX_TYPE_PAL_PARK:
        return &sBattlerInfoBoxTemplate_NoPlayerMon;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

static const SpriteTemplate *ov16_02268314(u8 type)
{
    const SpriteTemplate *spriteTemplate;

    switch (type) {
    case BATTLERINFOBOX_TYPE_PLAYER_SOLO:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_1:
    case BATTLERINFOBOX_TYPE_PLAYER_SLOT_2:
    case BATTLERINFOBOX_TYPE_SAFARI_ZONE:
    case BATTLERINFOBOX_TYPE_PAL_PARK:
        spriteTemplate = &sBattlerInfoBoxTemplate_Unk_ov16_0226F514;
        break;
    case BATTLERINFOBOX_TYPE_ENEMY_SOLO:
    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_1:
    case BATTLERINFOBOX_TYPE_ENEMY_SLOT_2:
        return NULL;
    default:
        GF_ASSERT(FALSE);
        return NULL;
    }

    return spriteTemplate;
}

void ov16_0226834C(BattlerInfoBox *battlerInfoBox, u8 *param1)
{
    UnkStruct_ov16_0226834C *v0;

    *param1 = 0;

    v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0226834C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226834C));

    v0->battlerInfoBox = battlerInfoBox;
    v0->unk_04 = param1;

    SysTask_Start(ov16_02268380, v0, 1000);
}

static void ov16_02268380(SysTask *task, void *param1)
{
    UnkStruct_ov16_0226834C *v0 = param1;
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(v0->battlerInfoBox->battleSys);
    int v2;
    PaletteData *paletteData = BattleSystem_GetPaletteData(v0->battlerInfoBox->battleSys);

    switch (v0->state) {
    case 0:
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, 20007, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->battlerInfoBox->mainSprite, v2);
        v0->unk_09 = v2;
        v0->state++;
    case 1:
        v0->unk_0A += 2;

        if (v0->unk_0A >= 10) {
            v0->unk_0A = 10;
            v0->state++;
        }

        PaletteData_Blend(paletteData, 2, v0->unk_09 * 16 + 0, 16, v0->unk_0A, 0x73a5);
        break;
    case 2:
        v0->unk_0A -= 2;

        if (v0->unk_0A <= 0) {
            v0->unk_0A = 0;
            v0->state++;
        }

        PaletteData_Blend(paletteData, 2, v0->unk_09 * 16 + 0, 16, v0->unk_0A, 0x73a5);
        break;
    default:
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, BATTLERINFOBOX_MAIN_PALETTE_RESID, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->battlerInfoBox->mainSprite, v2);

        *(v0->unk_04) = 1;

        Heap_Free(param1);
        SysTask_Done(task);

        return;
    }
}

void ov16_02268468(BattlerInfoBox *battlerInfoBox)
{
    return;
}

void ov16_0226846C(BattlerInfoBox *battlerInfoBox)
{
    return;
}

void ov16_02268470(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->task_50 != NULL) {
        return;
    }

    battlerInfoBox->degrees = 0;
    battlerInfoBox->task_50 = SysTask_Start(ov16_022684BC, battlerInfoBox, 1010);
}

void ov16_02268498(BattlerInfoBox *battlerInfoBox)
{
    if (battlerInfoBox->task_50 != NULL) {
        SysTask_Done(battlerInfoBox->task_50);
        battlerInfoBox->task_50 = NULL;
    }

    battlerInfoBox->degrees = 0;
    BattlerInfoBox_OffsetPositionXY(battlerInfoBox, 0, 0);
}

static void ov16_022684BC(SysTask *task, void *data)
{
    BattlerInfoBox *battlerInfoBox = data;
    int y;

    battlerInfoBox->degrees += 20;

    if (battlerInfoBox->degrees >= 360) {
        battlerInfoBox->degrees -= 360;
    }

    y = FX_Mul(CalcSineDegrees(battlerInfoBox->degrees), 0x1800) / FX32_ONE;
    BattlerInfoBox_OffsetPositionXY(battlerInfoBox, 0, y);
}
