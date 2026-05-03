#include "battle/healthbox.h"

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

#define HEALTHBOX_SCROLL_SPEED      24
#define HEALTHBOX_SCROLL_OUT_OFFSET 160

#define HEALTHBOX_X_OFFSET_SOLO_PLAYER   192
#define HEALTHBOX_Y_OFFSET_SOLO_PLAYER   116
#define HEALTHBOX_X_OFFSET_SOLO_ENEMY    58
#define HEALTHBOX_Y_OFFSET_SOLO_ENEMY    36
#define HEALTHBOX_X_OFFSET_PLAYER_SLOT_1 HEALTHBOX_X_OFFSET_SOLO_PLAYER
#define HEALTHBOX_Y_OFFSET_PLAYER_SLOT_1 HEALTHBOX_Y_OFFSET_SOLO_PLAYER - 13
#define HEALTHBOX_X_OFFSET_PLAYER_SLOT_2 HEALTHBOX_X_OFFSET_SOLO_PLAYER + 6
#define HEALTHBOX_Y_OFFSET_PLAYER_SLOT_2 HEALTHBOX_Y_OFFSET_SOLO_PLAYER + 16
#define HEALTHBOX_X_OFFSET_ENEMY_SLOT_1  HEALTHBOX_X_OFFSET_SOLO_ENEMY + 6
#define HEALTHBOX_Y_OFFSET_ENEMY_SLOT_1  HEALTHBOX_Y_OFFSET_SOLO_ENEMY - 20
#define HEALTHBOX_X_OFFSET_ENEMY_SLOT_2  HEALTHBOX_X_OFFSET_SOLO_ENEMY
#define HEALTHBOX_Y_OFFSET_ENEMY_SLOT_2  HEALTHBOX_Y_OFFSET_SOLO_ENEMY + 9

#define HEALTHBOX_WINDOW_BLOCK_SIZE 32

#define HEALTHBOX_NAME_BLOCK_COUNT_X    8
#define HEALTHBOX_NAME_BLOCK_COUNT_Y    2
#define HEALTHBOX_NAME_WINDOW_OFFSET    0
#define HEALTHBOX_NAME_BYTE_SIZE        (HEALTHBOX_NAME_BLOCK_COUNT_X * HEALTHBOX_NAME_BLOCK_COUNT_Y * HEALTHBOX_WINDOW_BLOCK_SIZE)
#define HEALTHBOX_NAME_BACKGROUND_COLOR 0xF
#define HEALTHBOX_NAME_TEXT_COLOR       TEXT_COLOR(14, 2, HEALTHBOX_NAME_BACKGROUND_COLOR)

#define HEALTHBOX_HP_CELL_COUNT  6
#define HEALTHBOX_EXP_CELL_COUNT 12

#define VRAM_TRANSFER_DST(vram, transferTable, index_0, index_1, imgProxy) ( \
    (void *)((u32)vram + transferTable[index_0][index_1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]))

#define S32_MIN -2147483648

typedef struct VRAMTransfer {
    u16 pos;
    u16 size;
} VRAMTransfer;

typedef struct {
    HealthBox *healthbox;
    u8 *unk_04;
    u8 state;
    u8 unk_09;
    s8 unk_0A;
} UnkStruct_ov16_0226834C;

enum HealthBoxPart {
    HEALTHBOX_PART_HP_H = 0,
    HEALTHBOX_PART_HP_P,
    HEALTHBOX_PART_HP_GREEN_FILL_0,
    HEALTHBOX_PART_HP_GREEN_FILL_1,
    HEALTHBOX_PART_HP_GREEN_FILL_2,
    HEALTHBOX_PART_HP_GREEN_FILL_3,
    HEALTHBOX_PART_HP_GREEN_FILL_4,
    HEALTHBOX_PART_HP_GREEN_FILL_5,
    HEALTHBOX_PART_HP_GREEN_FILL_6,
    HEALTHBOX_PART_HP_GREEN_FILL_7,
    HEALTHBOX_PART_HP_GREEN_FILL_8,
    HEALTHBOX_PART_HP_YELLOW_FILL_0,
    HEALTHBOX_PART_HP_YELLOW_FILL_1,
    HEALTHBOX_PART_HP_YELLOW_FILL_2,
    HEALTHBOX_PART_HP_YELLOW_FILL_3,
    HEALTHBOX_PART_HP_YELLOW_FILL_4,
    HEALTHBOX_PART_HP_YELLOW_FILL_5,
    HEALTHBOX_PART_HP_YELLOW_FILL_6,
    HEALTHBOX_PART_HP_YELLOW_FILL_7,
    HEALTHBOX_PART_HP_YELLOW_FILL_8,
    HEALTHBOX_PART_HP_RED_FILL_0,
    HEALTHBOX_PART_HP_RED_FILL_1,
    HEALTHBOX_PART_HP_RED_FILL_2,
    HEALTHBOX_PART_HP_RED_FILL_3,
    HEALTHBOX_PART_HP_RED_FILL_4,
    HEALTHBOX_PART_HP_RED_FILL_5,
    HEALTHBOX_PART_HP_RED_FILL_6,
    HEALTHBOX_PART_HP_RED_FILL_7,
    HEALTHBOX_PART_HP_RED_FILL_8,
    HEALTHBOX_PART_EXP_FILL_0,
    HEALTHBOX_PART_EXP_FILL_1,
    HEALTHBOX_PART_EXP_FILL_2,
    HEALTHBOX_PART_EXP_FILL_3,
    HEALTHBOX_PART_EXP_FILL_4,
    HEALTHBOX_PART_EXP_FILL_5,
    HEALTHBOX_PART_EXP_FILL_6,
    HEALTHBOX_PART_EXP_FILL_7,
    HEALTHBOX_PART_EXP_FILL_8,
    HEALTHBOX_PART_STATUS_HEALTHY_0,
    HEALTHBOX_PART_STATUS_HEALTHY_1,
    HEALTHBOX_PART_STATUS_HEALTHY_2,
    HEALTHBOX_PART_STATUS_PARALYSIS_0,
    HEALTHBOX_PART_STATUS_PARALYSIS_1,
    HEALTHBOX_PART_STATUS_PARALYSIS_2,
    HEALTHBOX_PART_STATUS_FREEZE_0,
    HEALTHBOX_PART_STATUS_FREEZE_1,
    HEALTHBOX_PART_STATUS_FREEZE_2,
    HEALTHBOX_PART_STATUS_SLEEP_0,
    HEALTHBOX_PART_STATUS_SLEEP_1,
    HEALTHBOX_PART_STATUS_SLEEP_2,
    HEALTHBOX_PART_STATUS_POISON_0,
    HEALTHBOX_PART_STATUS_POISON_1,
    HEALTHBOX_PART_STATUS_POISON_2,
    HEALTHBOX_PART_STATUS_BURN_0,
    HEALTHBOX_PART_STATUS_BURN_1,
    HEALTHBOX_PART_STATUS_BURN_2,
    HEALTHBOX_PART_EMPTY_0,
    HEALTHBOX_PART_EMPTY_1,
    HEALTHBOX_PART_EMPTY_2,
    HEALTHBOX_PART_CAUGHT_INDICATOR,
    HEALTHBOX_PART_LEVEL_FEMALE_TOP_0,
    HEALTHBOX_PART_LEVEL_FEMALE_TOP_1,
    HEALTHBOX_PART_LEVEL_MALE_TOP_0,
    HEALTHBOX_PART_LEVEL_MALE_TOP_1,
    HEALTHBOX_PART_LEVEL_GENDERLESS_TOP_0,
    HEALTHBOX_PART_LEVEL_GENDERLESS_TOP_1,
    HEALTHBOX_PART_HP_H_2,
    HEALTHBOX_PART_HP_P_2,
    HEALTHBOX_PART_BAR_END,
    HEALTHBOX_PART_SLASH,
    HEALTHBOX_PART_NUMBERS_LEFT,
    HEALTHBOX_PART_NUMBERS_RIGHT,
    HEALTHBOX_PART_LEVEL_FEMALE_BOTTOM_0,
    HEALTHBOX_PART_LEVEL_FEMALE_BOTTOM_1,
    HEALTHBOX_PART_LEVEL_MALE_BOTTOM_0,
    HEALTHBOX_PART_LEVEL_MALE_BOTTOM_1,
    HEALTHBOX_PART_LEVEL_GENDERLESS_BOTTOM_0,
    HEALTHBOX_PART_LEVEL_GENDERLESS_BOTTOM_1,
};

static s32 HealthBox_DrawGauge(HealthBox *healthbox, enum HealthBoxGaugeType gaugeType);
static s32 UpdateGauge(s32 max, s32 cur, s32 diff, s32 *temp, u8 size, u16 fillOffset);
static u8 FillCells(s32 max, s32 cur, s32 diff, s32 *temp, u8 *cells, u8 cellNum);
static u32 CalcGaugeFill(s32 curVal, s32 diff, s32 maxVal, u8 gaugeSize);
static const u8 *GetHealthBoxPartsTile(enum HealthBoxPart part);
static void DrawGauge(HealthBox *healthbox, u8 gaugeType);
static void HealthBox_DrawBattlerName(HealthBox *healthbox);
static void HealthBox_DrawLevelText(HealthBox *healthbox);
static void HealthBox_DrawLevelNumber(HealthBox *healthbox);
static void HealthBox_DrawCurrentHP(HealthBox *healthbox, u32 hp);
static void HealthBox_DrawMaxHP(HealthBox *healthbox);
static void HealthBox_DrawCaughtIcon(HealthBox *healthbox);
static void HealthBox_DrawStatusIcon(HealthBox *healthbox, enum HealthBoxPart part);
static void HealthBox_DrawBallCount(HealthBox *healthbox, u32 flags);
static void HealthBox_DrawBallsLeftMessage(HealthBox *healthbox, u32 flags);
static void HealthBox_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type);
static void ov16_02267244(HealthBox *healthbox);
static void ov16_0226728C(HealthBox *healthbox);
static const SpriteTemplate *HealthBox_SpriteTemplate(u8 type);
static const SpriteTemplate *ov16_02268314(u8 type);
static void ScrollHealthBoxTask(SysTask *task, void *data);
static void ov16_02268380(SysTask *task, void *param1);
void ov16_02268470(HealthBox *healthbox);
void ov16_02268498(HealthBox *healthbox);
static void ov16_022684BC(SysTask *task, void *data);
static void HealthBox_EnableArrow(HealthBox *healthbox, BOOL enable);

ALIGN_4 static const s8 sArrowOffsetX[] = {
    [HEALTHBOX_TYPE_PLAYER_SOLO] = 72,
    [HEALTHBOX_TYPE_ENEMY_SOLO] = 0,
    [HEALTHBOX_TYPE_PLAYER_SLOT_1] = 72,
    [HEALTHBOX_TYPE_ENEMY_SLOT_1] = 0,
    [HEALTHBOX_TYPE_PLAYER_SLOT_2] = 72,
    [HEALTHBOX_TYPE_ENEMY_SLOT_2] = 0,
};

static const VRAMTransfer sBattlerNameVRAMTransfer[][4] = {
    [HEALTHBOX_TYPE_PLAYER_SOLO] = {
        { 19 * HEALTHBOX_WINDOW_BLOCK_SIZE, 5 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 27 * HEALTHBOX_WINDOW_BLOCK_SIZE, 5 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 3 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 3 * HEALTHBOX_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBOX_TYPE_ENEMY_SOLO] = {
        { 17 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBOX_TYPE_PLAYER_SLOT_1] = {
        { 18 * HEALTHBOX_WINDOW_BLOCK_SIZE, 6 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 26 * HEALTHBOX_WINDOW_BLOCK_SIZE, 6 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 2 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 2 * HEALTHBOX_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBOX_TYPE_ENEMY_SLOT_1] = {
        { 17 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBOX_TYPE_PLAYER_SLOT_2] = {
        { 18 * HEALTHBOX_WINDOW_BLOCK_SIZE, 6 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 26 * HEALTHBOX_WINDOW_BLOCK_SIZE, 6 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 2 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 2 * HEALTHBOX_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBOX_TYPE_ENEMY_SLOT_2] = {
        { 17 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBOX_WINDOW_BLOCK_SIZE, 7 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBOX_WINDOW_BLOCK_SIZE, 1 * HEALTHBOX_WINDOW_BLOCK_SIZE },
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
        { 0x4E0, HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, HEALTHBOX_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
};

static const VRAMTransfer Unk_ov16_0226F38C[] = {
    { 0x460, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x440, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x440, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBOX_WINDOW_BLOCK_SIZE },
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
    { 0xCC0, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xCC0, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

static const VRAMTransfer Unk_ov16_0226F3D4[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0xC60, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xC60, HEALTHBOX_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

#define HEALTHBOX_MAIN_PALETTE_RESID    20006
#define HEALTHBOX_EFFECTS_PALETTE_RESID 20007
#define HEALTHBOX_SAFARI_PALETTE_RESID  20008

static const SpriteTemplate sHealthBoxTemplate_SoloPlayer = {
    .x = HEALTHBOX_X_OFFSET_SOLO_PLAYER,
    .y = HEALTHBOX_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_singles_NCGR_lz,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_tall_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_6,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_SoloEnemy = {
    .x = HEALTHBOX_X_OFFSET_SOLO_ENEMY,
    .y = HEALTHBOX_Y_OFFSET_SOLO_ENEMY,
    .z = 0,
    .animIdx = 0,
    .priority = 24,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_5,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_PlayerSlot1 = {
    .x = HEALTHBOX_X_OFFSET_PLAYER_SLOT_1,
    .y = HEALTHBOX_Y_OFFSET_PLAYER_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 28,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_doubles_NCGR_lz,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_3,
        misc_single_frame_anim_NANR_lz_9,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_EnemySlot1 = {
    .x = HEALTHBOX_X_OFFSET_ENEMY_SLOT_1,
    .y = HEALTHBOX_Y_OFFSET_ENEMY_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 25,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz_1,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_1,
        misc_single_frame_anim_NANR_lz_7,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_PlayerSlot2 = {
    .x = HEALTHBOX_X_OFFSET_PLAYER_SLOT_2,
    .y = HEALTHBOX_Y_OFFSET_PLAYER_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 26,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_doubles_NCGR_lz_1,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_4,
        misc_single_frame_anim_NANR_lz_10,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_EnemySlot2 = {
    .x = HEALTHBOX_X_OFFSET_ENEMY_SLOT_2,
    .y = HEALTHBOX_Y_OFFSET_ENEMY_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 27,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz_2,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_2,
        misc_single_frame_anim_NANR_lz_8,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthBoxTemplate_Unk_ov16_0226F514 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 17,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_arrows_wide_NCGR_lz,
        HEALTHBOX_MAIN_PALETTE_RESID,
        healthbox_arrows_wide_cell_NCER_lz,
        healthbox_arrows_wide_anim_NANR_lz,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE
};

static const SpriteTemplate sHealthBoxTemplate_NoPlayerMon = {
    .x = HEALTHBOX_X_OFFSET_SOLO_PLAYER,
    .y = HEALTHBOX_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_safari_NCGR_lz,
        HEALTHBOX_SAFARI_PALETTE_RESID,
        healthbox_safari_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_15,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

#include "res/graphics/battle/healthbox/healthbox_parts.4bpp.h"

void HealthBox_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, PaletteData *palette, enum HealthBoxType healthboxType)
{
    const SpriteTemplate *template = HealthBox_SpriteTemplate(healthboxType);

    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBOX_MAIN_PALETTE_RESID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBOX_EFFECTS_PALETTE_RESID);

    if (healthboxType == HEALTHBOX_TYPE_SAFARI_ZONE || healthboxType == HEALTHBOX_TYPE_PAL_PARK) {
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_safari_NCLR, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBOX_SAFARI_PALETTE_RESID);
    }
}

static void HealthBox_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type)
{
    const SpriteTemplate *template = ov16_02268314(type);

    if (template != NULL) {
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, handler, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBOX_MAIN_PALETTE_RESID);
        SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
        SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    }
}

ManagedSprite *HealthBox_DrawSprite(SpriteSystem *spriteSys, SpriteManager *handler, int type)
{
    const SpriteTemplate *template = HealthBox_SpriteTemplate(type);
    ManagedSprite *managedSprite = SpriteSystem_NewSprite(spriteSys, handler, template);

    Sprite_TickFrame(managedSprite->sprite);
    return managedSprite;
}

void HealthBox_DrawInfo(HealthBox *healthbox, u32 hp, u32 flags)
{
    BOOL caughtSpecies = FALSE;

    GF_ASSERT(healthbox->mainSprite != NULL);

    u32 flagsCopy = flags;

    if (healthbox->type == HEALTHBOX_TYPE_SAFARI_ZONE) {
        flags &= HEALTHBOX_INFO_ALL_SAFARI;
    } else if (healthbox->type == HEALTHBOX_TYPE_PAL_PARK) {
        flags &= HEALTHBOX_INFO_ALL_PARK;
    } else {
        flags &= ~(HEALTHBOX_INFO_ALL_SAFARI | HEALTHBOX_INFO_ALL_PARK);
    }

    switch (healthbox->type) {
    case HEALTHBOX_TYPE_ENEMY_SOLO:
    case HEALTHBOX_TYPE_ENEMY_SLOT_1:
    case HEALTHBOX_TYPE_ENEMY_SLOT_2:
        // Never display current HP, max HP, or the EXP bar on an enemy healthbox
        flags &= ~HEALTHBOX_INFO_NOT_ON_ENEMY;
        caughtSpecies = TRUE;
        break;

    case HEALTHBOX_TYPE_PLAYER_SLOT_1:
    case HEALTHBOX_TYPE_PLAYER_SLOT_2:
        // Never display the EXP bar in doubles
        flags &= ~(HEALTHBOX_INFO_EXP_GAUGE | HEALTHBOX_INFO_CAUGHT_SPECIES);

        // Allow toggling between showing the HP bar and raw current/max numbers
        if (healthbox->numberMode == FALSE) {
            flags &= ~(HEALTHBOX_INFO_CURRENT_HP | HEALTHBOX_INFO_MAX_HP);
        } else {
            flags &= ~HEALTHBOX_INFO_HP_GAUGE;
        }
        break;

    case HEALTHBOX_TYPE_PLAYER_SOLO:
        // Never show the pokeball icon on a player's healthbox for a captured species
        flags &= ~HEALTHBOX_INFO_CAUGHT_SPECIES;
        break;

    case HEALTHBOX_TYPE_SAFARI_ZONE:
    case HEALTHBOX_TYPE_PAL_PARK:
        break;
    }

    if (BattleSystem_GetBattleType(healthbox->battleSys) & BATTLE_TYPE_TRAINER) {
        // Never show the pokeball icon on an enemy trainer's healthbox
        flags &= ~HEALTHBOX_INFO_CAUGHT_SPECIES;
    }

    if (flags & HEALTHBOX_INFO_HP_GAUGE) {
        HealthBox_CalcHP(healthbox, 0);
        HealthBox_DrawGauge(healthbox, HEALTHBOX_GAUGE_HP);
    }

    if (flags & HEALTHBOX_INFO_CURRENT_HP) {
        HealthBox_DrawCurrentHP(healthbox, hp);
    }

    if (flags & HEALTHBOX_INFO_MAX_HP) {
        HealthBox_DrawMaxHP(healthbox);
    }

    if ((flags & HEALTHBOX_INFO_LEVEL_TEXT) || (flags & HEALTHBOX_INFO_GENDER)) {
        HealthBox_DrawLevelText(healthbox);
    }

    if (flags & HEALTHBOX_INFO_LEVEL) {
        HealthBox_DrawLevelNumber(healthbox);
    }

    if (flags & HEALTHBOX_INFO_NAME) {
        HealthBox_DrawBattlerName(healthbox);
    }

    if (flags & HEALTHBOX_INFO_EXP_GAUGE) {
        HealthBox_CalcExp(healthbox, 0);
        HealthBox_DrawGauge(healthbox, HEALTHBOX_GAUGE_EXP);
    }

    if (flags & HEALTHBOX_INFO_CAUGHT_SPECIES) {
        HealthBox_DrawCaughtIcon(healthbox);
    }

    if (flags & HEALTHBOX_INFO_STATUS) {
        switch (healthbox->status) {
        default:
        case BATTLE_ANIMATION_NONE:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_HEALTHY_0);
            break;
        case BATTLE_ANIMATION_ASLEEP:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_SLEEP_0);
            break;
        case BATTLE_ANIMATION_POISONED:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_POISON_0);
            break;
        case BATTLE_ANIMATION_BURNED:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_BURN_0);
            break;
        case BATTLE_ANIMATION_FROZEN:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_FREEZE_0);
            break;
        case BATTLE_ANIMATION_PARALYZED:
            HealthBox_DrawStatusIcon(healthbox, HEALTHBOX_PART_STATUS_PARALYSIS_0);
            break;
        }
    }

    if (flags & (HEALTHBOX_INFO_COUNT_SAFARI_BALLS | HEALTHBOX_INFO_COUNT_PARK_BALLS)) {
        HealthBox_DrawBallCount(healthbox, flags);
    }

    if (flags & (HEALTHBOX_INFO_REMAINING_SAFARI_BALLS | HEALTHBOX_INFO_REMAINING_PARK_BALLS)) {
        HealthBox_DrawBallsLeftMessage(healthbox, flags);
    }
}

void ov16_02267220(HealthBox *healthbox)
{
    if (healthbox->task_50 != NULL) {
        SysTask_Done(healthbox->task_50);
        healthbox->task_50 = NULL;
    }

    if (healthbox->mainSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(healthbox->mainSprite);
    healthbox->mainSprite = NULL;
}

static void ov16_02267244(HealthBox *healthbox)
{
    if (healthbox->arrowSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(healthbox->arrowSprite);
    healthbox->arrowSprite = NULL;
}

void ov16_02267258(HealthBox *healthbox)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = HealthBox_SpriteTemplate(healthbox->type);
    spriteSystem = BattleSystem_GetSpriteSystem(healthbox->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(healthbox->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

static void ov16_0226728C(HealthBox *healthbox)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = ov16_02268314(healthbox->type);

    if (spriteTemplate == NULL) {
        return;
    }

    spriteSystem = BattleSystem_GetSpriteSystem(healthbox->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(healthbox->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

void ov16_022672C4(HealthBox *healthbox)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(healthbox->battleSys);
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(healthbox->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(healthbox->battleSys);
    const SpriteTemplate *spriteTemplate = HealthBox_SpriteTemplate(healthbox->type);

    HealthBox_LoadResources(spriteSystem, spriteManager, narc, paletteData, healthbox->type);
    healthbox->mainSprite = HealthBox_DrawSprite(spriteSystem, spriteManager, healthbox->type);

    HealthBox_LoadMainPalette(spriteSystem, spriteManager, narc, paletteData, healthbox->type);

    if (healthbox->arrowSprite != NULL) {
        Sprite_SetPositionXY(healthbox->arrowSprite->sprite, spriteTemplate->x - sArrowOffsetX[healthbox->type], spriteTemplate->y + 0);
    }

    NARC_dtor(narc);
}

void ov16_02267360(HealthBox *healthbox)
{
    ov16_02267220(healthbox);
    ov16_02267258(healthbox);
    ov16_02267244(healthbox);
    ov16_0226728C(healthbox);
}

void ov16_0226737C(HealthBox *healthbox)
{
    const u8 *tileNum;
    NNSG2dImageProxy *imgProxy;
    void *v2;

    switch (healthbox->type) {
    case HEALTHBOX_TYPE_PLAYER_SLOT_1:
    case HEALTHBOX_TYPE_PLAYER_SLOT_2:
        break;
    default:
        return;
    }

    healthbox->numberMode ^= 1;

    v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);

    if (healthbox->numberMode == 1) {
        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_NUMBERS_LEFT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[healthbox->type].pos + HEALTHBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);
        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_NUMBERS_RIGHT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbox->type].pos + HEALTHBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);

        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_SLASH);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3D4[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3D4[healthbox->type].size);

        HealthBox_DrawInfo(healthbox, healthbox->curHP, HEALTHBOX_INFO_CURRENT_HP | HEALTHBOX_INFO_MAX_HP);
    } else {
        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_HP_H_2);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F374[healthbox->type].size);

        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_BAR_END);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3A4[healthbox->type].size);

        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_STATUS_HEALTHY_0);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbox->type].pos + HEALTHBOX_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);

        HealthBox_DrawInfo(healthbox, healthbox->curHP, HEALTHBOX_INFO_HP_GAUGE);
    }
}

void HealthBox_CalcHP(HealthBox *healthbox, int damage) // TODO: all calls pass in damage from healthbox, pls fix.
{
    healthbox->hpTemp = S32_MIN;

    // bound the damage input to [0, maxHP]
    if (healthbox->curHP + damage < 0) {
        damage -= healthbox->curHP + damage;
    }
    if (healthbox->curHP + damage > healthbox->maxHP) {
        damage -= (healthbox->curHP + damage) - healthbox->maxHP;
    }

    // update cached values
    healthbox->damage = -damage;

    if (healthbox->curHP < 0) {
        healthbox->curHP = 0;
    }

    if (healthbox->curHP > healthbox->maxHP) {
        healthbox->curHP = healthbox->maxHP;
    }
}

s32 ov16_022674F8(HealthBox *healthbox)
{
    s32 result = HealthBox_DrawGauge(healthbox, HEALTHBOX_GAUGE_HP);

    if (result == -1) {
        healthbox->curHP -= healthbox->damage;
        HealthBox_DrawInfo(healthbox, healthbox->curHP, HEALTHBOX_INFO_CURRENT_HP);
    } else {
        HealthBox_DrawInfo(healthbox, result, HEALTHBOX_INFO_CURRENT_HP);
    }

    return result;
}

void HealthBox_CalcExp(HealthBox *healthbox, int expReward)
{
    healthbox->expTemp = S32_MIN;

    if (healthbox->curExp + expReward < 0) {
        expReward -= healthbox->curExp + expReward;
    }

    if (healthbox->curExp + expReward > healthbox->maxExp) {
        expReward -= (healthbox->curExp + expReward) - healthbox->maxExp;
    }

    healthbox->expReward = -expReward;

    if (healthbox->curExp < 0) {
        healthbox->curExp = 0;
    }

    if (healthbox->curExp > healthbox->maxExp) {
        healthbox->curExp = healthbox->maxExp;
    }
}

s32 ov16_02267560(HealthBox *healthbox)
{
    s32 result = HealthBox_DrawGauge(healthbox, HEALTHBOX_GAUGE_EXP);

    if (result == -1) {
        healthbox->curExp -= healthbox->expReward;
    }

    return result;
}

void ov16_0226757C(HealthBox *healthbox)
{
    if (healthbox->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(healthbox->arrowSprite->sprite, TRUE);
        HealthBox_EnableArrow(healthbox, TRUE);
    }

    if ((BattleSystem_GetBattleType(healthbox->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) == FALSE) {
        ov16_02268470(healthbox);
    }
}

void ov16_022675AC(HealthBox *healthbox)
{
    if (healthbox->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(healthbox->arrowSprite->sprite, FALSE);
        Sprite_SetAnimFrame(healthbox->arrowSprite->sprite, 0);
        HealthBox_EnableArrow(healthbox, FALSE);
    }

    ov16_02268498(healthbox);
}

void ov16_022675D8(HealthBox *healthbox, int priority)
{
    if (healthbox->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetExplicitPriority(healthbox->mainSprite, priority);

    if (healthbox->arrowSprite != NULL) {
        ManagedSprite_SetExplicitPriority(healthbox->arrowSprite, priority);
    }
}

/**
 * @brief Enable the extended arrow-graphic used by the healthbox for Pokemon battlers.
 *
 * @param battleSys
 * @param enable
 */
static void HealthBox_EnableArrow(HealthBox *battleSys, BOOL enable)
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

void HealthBox_Enable(HealthBox *battleSys, BOOL enable)
{
    if (battleSys->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(battleSys->mainSprite, enable);
    HealthBox_EnableArrow(battleSys, enable);
}

void HealthBox_OffsetPositionXY(HealthBox *healthbox, int x, int y)
{
    GF_ASSERT(healthbox->mainSprite != NULL);
    const SpriteTemplate *template = HealthBox_SpriteTemplate(healthbox->type);

    Sprite_SetPositionXY(healthbox->mainSprite->sprite, template->x + x, template->y + y);
    if (healthbox->arrowSprite != NULL) {
        Sprite_SetPositionXY(healthbox->arrowSprite->sprite,
            template->x + x - sArrowOffsetX[healthbox->type],
            template->y + y + 0);
    }
}

void HealthBox_Scroll(HealthBox *healthbox, enum HealthBoxScrollDirection direction)
{
    GF_ASSERT(healthbox != NULL);
    GF_ASSERT(healthbox->mainSprite != NULL);

    healthbox->doneScrolling = 0;
    healthbox->scrollDirection = direction;

    if (direction == HEALTHBOX_SCROLL_IN) {
        switch (healthbox->type) {
        case HEALTHBOX_TYPE_PLAYER_SOLO:
        case HEALTHBOX_TYPE_PLAYER_SLOT_1:
        case HEALTHBOX_TYPE_PLAYER_SLOT_2:
        case HEALTHBOX_TYPE_SAFARI_ZONE:
        case HEALTHBOX_TYPE_PAL_PARK:
            // Player-side healthbox
            HealthBox_OffsetPositionXY(healthbox, HEALTHBOX_SCROLL_OUT_OFFSET, 0);
            break;

        default:
            // Enemy-side healthbox
            HealthBox_OffsetPositionXY(healthbox, -HEALTHBOX_SCROLL_OUT_OFFSET, 0);
            break;
        }
    } else {
        HealthBox_OffsetPositionXY(healthbox, 0, 0);
    }

    SysTask_Start(ScrollHealthBoxTask, healthbox, 990);
}

/**
 * @brief Scroll the healthbox in or out by the configured scroll-speed value.
 *
 * @param task
 * @param data
 */
static void ScrollHealthBoxTask(SysTask *task, void *data)
{
    HealthBox *healthbox = data;
    int done = 0;
    const SpriteTemplate *template = HealthBox_SpriteTemplate(healthbox->type);

    s16 x, y;
    ManagedSprite_GetPositionXY(healthbox->mainSprite, &x, &y);

    // Determine new X and Y based on the type of healthbox
    switch (healthbox->type) {
    case HEALTHBOX_TYPE_PLAYER_SOLO:
    case HEALTHBOX_TYPE_PLAYER_SLOT_1:
    case HEALTHBOX_TYPE_PLAYER_SLOT_2:
    case HEALTHBOX_TYPE_SAFARI_ZONE:
    case HEALTHBOX_TYPE_PAL_PARK:
        // Player-side healthbox
        if (healthbox->scrollDirection == HEALTHBOX_SCROLL_IN) {
            x -= HEALTHBOX_SCROLL_SPEED;

            if (x < template->x) {
                x = template->x;
                done++;
            }
        } else {
            x += HEALTHBOX_SCROLL_SPEED;

            if (x > template->x + HEALTHBOX_SCROLL_OUT_OFFSET) {
                x = template->x + HEALTHBOX_SCROLL_OUT_OFFSET;
                done++;
            }
        }
        break;

    default:
        // Enemy-side healthbox
        if (healthbox->scrollDirection == HEALTHBOX_SCROLL_IN) {
            x += HEALTHBOX_SCROLL_SPEED;

            if (x > template->x) {
                x = template->x;
                done++;
            }
        } else {
            x -= HEALTHBOX_SCROLL_SPEED;

            if (x < template->x - HEALTHBOX_SCROLL_SPEED) {
                x = template->x - HEALTHBOX_SCROLL_SPEED;
                done++;
            }
        }
        break;
    }

    // Update positions of the sprites on the screen
    ManagedSprite_SetPositionXY(healthbox->mainSprite, x, y);
    if (healthbox->arrowSprite != NULL) {
        ManagedSprite_SetPositionXY(healthbox->arrowSprite, x - sArrowOffsetX[healthbox->type], y + 0);
    }

    // If the sprites are now in position, we're done
    if (done > 0) {
        healthbox->doneScrolling = TRUE;
        SysTask_Done(task);
    }
}

/**
 * @brief Draw the battler's name onto the healthbox.
 *
 * @param healthbox
 */
static void HealthBox_DrawBattlerName(HealthBox *healthbox)
{
    BgConfig *bgl = BattleSystem_GetBgConfig(healthbox->battleSys);
    u8 *buf;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbox->battleSys);
    StringTemplate *strFormatter = BattleSystem_GetStringTemplate(healthbox->battleSys);

    String *nickname = String_Init(MON_NAME_LEN + 12, HEAP_ID_BATTLE); // TODO: not sure why there is a +12 here
    String *template = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_HealthBoxPokemonName);

    Pokemon *mon = BattleSystem_GetPartyPokemon(healthbox->battleSys, healthbox->battler, healthbox->selectedPartySlot);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    StringTemplate_SetNickname(strFormatter, 0, boxMon);
    StringTemplate_Format(strFormatter, nickname, template);

    Window_AddToTopLeftCorner(bgl, &window, HEALTHBOX_NAME_BLOCK_COUNT_X, HEALTHBOX_NAME_BLOCK_COUNT_Y, HEALTHBOX_NAME_WINDOW_OFFSET, HEALTHBOX_NAME_BACKGROUND_COLOR);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, HEALTHBOX_NAME_TEXT_COLOR, 0, 0, NULL);
    buf = window.pixels;

    // copy the window's data into VRAM over the painted healthbox
    void *vram = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    u8 *hiHalf = buf;
    u8 *loHalf = &buf[HEALTHBOX_NAME_BLOCK_COUNT_X * HEALTHBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(hiHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbox->type, 0, imgProxy),
        sBattlerNameVRAMTransfer[healthbox->type][0].size);
    MI_CpuCopy16(loHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbox->type, 1, imgProxy),
        sBattlerNameVRAMTransfer[healthbox->type][1].size);
    MI_CpuCopy16(&hiHalf[sBattlerNameVRAMTransfer[healthbox->type][0].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbox->type, 2, imgProxy),
        sBattlerNameVRAMTransfer[healthbox->type][2].size);
    MI_CpuCopy16(&loHalf[sBattlerNameVRAMTransfer[healthbox->type][1].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbox->type, 3, imgProxy),
        sBattlerNameVRAMTransfer[healthbox->type][3].size);

    Window_Remove(&window);
    String_Free(nickname);
    String_Free(template);
}

static void HealthBox_DrawLevelText(HealthBox *healthbox)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum1;
    const u8 *tileNum2;
    int part1, part2;

    if (healthbox->gender == GENDER_MALE) {
        part1 = HEALTHBOX_PART_LEVEL_MALE_BOTTOM_0;
        part2 = HEALTHBOX_PART_LEVEL_MALE_TOP_0;
    } else if (healthbox->gender == GENDER_FEMALE) {
        part1 = HEALTHBOX_PART_LEVEL_FEMALE_BOTTOM_0;
        part2 = HEALTHBOX_PART_LEVEL_FEMALE_TOP_0;
    } else {
        part1 = HEALTHBOX_PART_LEVEL_GENDERLESS_BOTTOM_0;
        part2 = HEALTHBOX_PART_LEVEL_GENDERLESS_TOP_0;
    }

    tileNum1 = GetHealthBoxPartsTile(part1);
    tileNum2 = GetHealthBoxPartsTile(part2);

    void *v5 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);

    MI_CpuCopy16(tileNum2, (void *)((u32)v5 + Unk_ov16_0226F47C[healthbox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[healthbox->type][0].size);
    MI_CpuCopy16(tileNum1, (void *)((u32)v5 + Unk_ov16_0226F47C[healthbox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[healthbox->type][1].size);
}

static void HealthBox_DrawLevelNumber(HealthBox *healthbox)
{
    NNSG2dImageProxy *imgProxy;
    int v4, v5, v6;

    int size = 3 * HEALTHBOX_WINDOW_BLOCK_SIZE;
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, size);
    u8 *v1 = Heap_Alloc(HEAP_ID_BATTLE, size * 2);

    MI_CpuFill8(v0, 0xf | (0xf << 4), size);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsLevel(healthbox->battleSys), healthbox->level, 3, PADDING_MODE_NONE, v0);

    void *v7 = G2_GetOBJCharPtr();
    u8 *v8, *v9;

    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);

    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[healthbox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), v1, Unk_ov16_0226F3EC[healthbox->type][0].size);
    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[healthbox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), &v1[size], Unk_ov16_0226F3EC[healthbox->type][1].size);

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

    MI_CpuCopy16(v8, (void *)((u32)v7 + Unk_ov16_0226F3EC[healthbox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[healthbox->type][0].size);
    MI_CpuCopy16(v9, (void *)((u32)v7 + Unk_ov16_0226F3EC[healthbox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[healthbox->type][1].size);

    Heap_Free(v0);
    Heap_Free(v1);
}

static void HealthBox_DrawCurrentHP(HealthBox *healthbox, u32 hp)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * HEALTHBOX_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * HEALTHBOX_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(healthbox->battleSys), hp, 3, PADDING_MODE_SPACES, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F41C[healthbox->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[healthbox->type][0].size);
    MI_CpuCopy16(&v3[Unk_ov16_0226F41C[healthbox->type][0].size], (void *)((u32)v2 + Unk_ov16_0226F41C[healthbox->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[healthbox->type][1].size);

    Heap_Free(v0);
}

static void HealthBox_DrawMaxHP(HealthBox *healthbox)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * HEALTHBOX_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * HEALTHBOX_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(healthbox->battleSys), healthbox->maxHP, 3, PADDING_MODE_NONE, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F3BC[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3BC[healthbox->type].size);

    Heap_Free(v0);
}

static void HealthBox_DrawCaughtIcon(HealthBox *healthbox)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum;

    if (healthbox->caughtSpecies == TRUE) {
        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_CAUGHT_INDICATOR);
    } else {
        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_STATUS_HEALTHY_0);
    }

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F38C[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F38C[healthbox->type].size);
}

static void HealthBox_DrawStatusIcon(HealthBox *healthbox, enum HealthBoxPart part)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum = GetHealthBoxPartsTile(part);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F35C[healthbox->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F35C[healthbox->type].size);
}

static void HealthBox_DrawBallCount(HealthBox *healthbox, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(healthbox->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbox->battleSys);
    String *string;

    if (flags & (1 << 10)) {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBalls);
    } else {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBalls);
    }

    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, HEALTHBOX_NAME_TEXT_COLOR, 0, 0, NULL);

    v1 = window.pixels;

    void *v6 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    u8 *v7 = v1;
    u8 *v8 = &v1[13 * HEALTHBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v7, (void *)((u32)v6 + Unk_ov16_0226F33C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[0].size);
    MI_CpuCopy16(v8, (void *)((u32)v6 + Unk_ov16_0226F33C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[1].size);

    MI_CpuCopy16(&v7[Unk_ov16_0226F33C[0].size], (void *)((u32)v6 + Unk_ov16_0226F33C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[2].size);
    MI_CpuCopy16(&v8[Unk_ov16_0226F33C[1].size], (void *)((u32)v6 + Unk_ov16_0226F33C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[3].size);

    Window_Remove(&window);
    String_Free(string);
}

static void HealthBox_DrawBallsLeftMessage(HealthBox *healthbox, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(healthbox->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbox->battleSys);
    String *templateString;
    StringTemplate *strTemplate = BattleSystem_GetStringTemplate(healthbox->battleSys);

    String *string = String_Init(30, HEAP_ID_BATTLE);

    if (flags & (1 << 10)) {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBallsLeft);
    } else {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBallsLeft);
    }

    StringTemplate_SetNumber(strTemplate, 0, healthbox->numSafariBalls, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(strTemplate, string, templateString);
    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 2, 15), 0, 0, NULL);

    v1 = window.pixels;

    void *v8 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    u8 *v9 = v1;
    u8 *v10 = &v1[13 * HEALTHBOX_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v9, (void *)((u32)v8 + Unk_ov16_0226F34C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[0].size);
    MI_CpuCopy16(v10, (void *)((u32)v8 + Unk_ov16_0226F34C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[1].size);
    MI_CpuCopy16(&v9[Unk_ov16_0226F34C[0].size], (void *)((u32)v8 + Unk_ov16_0226F34C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[2].size);
    MI_CpuCopy16(&v10[Unk_ov16_0226F34C[1].size], (void *)((u32)v8 + Unk_ov16_0226F34C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[3].size);

    Window_Remove(&window);
    String_Free(string);
    String_Free(templateString);
}

static s32 HealthBox_DrawGauge(HealthBox *healthbox, enum HealthBoxGaugeType gaugeType)
{
    s32 result;
    s32 fillOffset;

    if (gaugeType == HEALTHBOX_GAUGE_HP) {
        result = UpdateGauge(healthbox->maxHP, healthbox->curHP, healthbox->damage, &healthbox->hpTemp, HEALTHBOX_HP_CELL_COUNT, 1);
    } else {
        fillOffset = CalcGaugeFill(healthbox->curExp, healthbox->expReward, healthbox->maxExp, HEALTHBOX_EXP_CELL_COUNT);

        if (fillOffset == 0) {
            fillOffset = 1;
        }

        fillOffset = abs(healthbox->expReward / fillOffset);
        result = UpdateGauge(healthbox->maxExp, healthbox->curExp, healthbox->expReward, &healthbox->expTemp, HEALTHBOX_EXP_CELL_COUNT, fillOffset);
    }

    if (gaugeType != HEALTHBOX_GAUGE_HP || healthbox->numberMode != TRUE) {
        DrawGauge(healthbox, gaugeType);
    }

    if (result == -1) {
        if (gaugeType == HEALTHBOX_GAUGE_HP) {
            healthbox->hpTemp = 0;
        } else {
            healthbox->expTemp = 0;
        }
    }

    return result;
}

static void DrawGauge(HealthBox *healthbox, u8 gaugeType)
{
    u8 i;
    u8 cells[HEALTHBOX_EXP_CELL_COUNT];
    u8 part;
    u8 pixels;
    u8 level;
    const u8 *tileNum;
    void *v7 = G2_GetOBJCharPtr();
    NNSG2dImageProxy *imgProxy = Sprite_GetImageProxy(healthbox->mainSprite->sprite);
    int numBlocks;

    switch (gaugeType) {
    case HEALTHBOX_GAUGE_HP:
        pixels = FillCells(healthbox->maxHP, healthbox->curHP, healthbox->damage, &healthbox->hpTemp, cells, HEALTHBOX_HP_CELL_COUNT);

        int barColor = App_BarColor(pixels, 8 * HEALTHBOX_HP_CELL_COUNT);

        switch (barColor) {
        case BARCOLOR_GREEN:
            part = HEALTHBOX_PART_HP_GREEN_FILL_0;
            break;
        case BARCOLOR_YELLOW:
            part = HEALTHBOX_PART_HP_YELLOW_FILL_0;
            break;
        case BARCOLOR_RED:
        default:
            part = HEALTHBOX_PART_HP_RED_FILL_0;
            break;
        }

        tileNum = GetHealthBoxPartsTile(part);
        numBlocks = Unk_ov16_0226F44C[healthbox->type][0].size / HEALTHBOX_WINDOW_BLOCK_SIZE;

        for (i = 0; i < HEALTHBOX_HP_CELL_COUNT; i++) {
            if (i < numBlocks) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[healthbox->type][0].pos + (i * HEALTHBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[healthbox->type][1].pos + ((i - numBlocks) * HEALTHBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);
            }
        }
        break;
    case HEALTHBOX_GAUGE_EXP:
        FillCells(healthbox->maxExp, healthbox->curExp, healthbox->expReward, &healthbox->expTemp, cells, HEALTHBOX_EXP_CELL_COUNT);
        level = healthbox->level;

        if (level == MAX_POKEMON_LEVEL) {
            for (i = 0; i < HEALTHBOX_EXP_CELL_COUNT; i++) {
                cells[i] = 0;
            }
        }

        tileNum = GetHealthBoxPartsTile(HEALTHBOX_PART_EXP_FILL_0);

        for (i = 0; i < HEALTHBOX_EXP_CELL_COUNT; i++) {
            if (i < 5) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 1632 + (i * HEALTHBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 3584 + ((i - 5) * HEALTHBOX_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBOX_WINDOW_BLOCK_SIZE);
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

    u8 corrected = size * HEALTHBOX_NAME_BLOCK_COUNT_X;

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

static const u8 *GetHealthBoxPartsTile(enum HealthBoxPart part)
{
    return &sHealthBoxPartsBitmap[part * TILE_SIZE_4BPP];
}

u8 HealthBox_Type(int battlerType, u32 battleType)
{
    switch (battlerType) {
    case BATTLER_TYPE_SOLO_PLAYER:
        if (battleType & BATTLE_TYPE_PAL_PARK) {
            return HEALTHBOX_TYPE_PAL_PARK;
        }

        if (battleType & BATTLE_TYPE_SAFARI) {
            return HEALTHBOX_TYPE_SAFARI_ZONE;
        }

        return HEALTHBOX_TYPE_PLAYER_SOLO;

    case BATTLER_TYPE_SOLO_ENEMY:
        return HEALTHBOX_TYPE_ENEMY_SOLO;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        return HEALTHBOX_TYPE_PLAYER_SLOT_1;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        return HEALTHBOX_TYPE_ENEMY_SLOT_1;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        return HEALTHBOX_TYPE_PLAYER_SLOT_2;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        return HEALTHBOX_TYPE_ENEMY_SLOT_2;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

/**
 * @brief Grab the sprite template that applies to a given healthbox type.
 *
 * @param type  The healthbox type. See enum HealthBoxType for accepted values.
 * @return      Address of the SpriteTemplate struct which applies to this
 *              healthbox type.
 */
static const SpriteTemplate *HealthBox_SpriteTemplate(u8 type)
{
    switch (type) {
    case HEALTHBOX_TYPE_PLAYER_SOLO:
        return &sHealthBoxTemplate_SoloPlayer;

    case HEALTHBOX_TYPE_ENEMY_SOLO:
        return &sHealthBoxTemplate_SoloEnemy;

    case HEALTHBOX_TYPE_PLAYER_SLOT_1:
        return &sHealthBoxTemplate_PlayerSlot1;

    case HEALTHBOX_TYPE_ENEMY_SLOT_1:
        return &sHealthBoxTemplate_EnemySlot1;

    case HEALTHBOX_TYPE_PLAYER_SLOT_2:
        return &sHealthBoxTemplate_PlayerSlot2;

    case HEALTHBOX_TYPE_ENEMY_SLOT_2:
        return &sHealthBoxTemplate_EnemySlot2;

    case HEALTHBOX_TYPE_SAFARI_ZONE:
    case HEALTHBOX_TYPE_PAL_PARK:
        return &sHealthBoxTemplate_NoPlayerMon;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

static const SpriteTemplate *ov16_02268314(u8 type)
{
    const SpriteTemplate *spriteTemplate;

    switch (type) {
    case HEALTHBOX_TYPE_PLAYER_SOLO:
    case HEALTHBOX_TYPE_PLAYER_SLOT_1:
    case HEALTHBOX_TYPE_PLAYER_SLOT_2:
    case HEALTHBOX_TYPE_SAFARI_ZONE:
    case HEALTHBOX_TYPE_PAL_PARK:
        spriteTemplate = &sHealthBoxTemplate_Unk_ov16_0226F514;
        break;
    case HEALTHBOX_TYPE_ENEMY_SOLO:
    case HEALTHBOX_TYPE_ENEMY_SLOT_1:
    case HEALTHBOX_TYPE_ENEMY_SLOT_2:
        return NULL;
    default:
        GF_ASSERT(FALSE);
        return NULL;
    }

    return spriteTemplate;
}

void ov16_0226834C(HealthBox *healthbox, u8 *param1)
{
    UnkStruct_ov16_0226834C *v0;

    *param1 = 0;

    v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0226834C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226834C));

    v0->healthbox = healthbox;
    v0->unk_04 = param1;

    SysTask_Start(ov16_02268380, v0, 1000);
}

static void ov16_02268380(SysTask *task, void *param1)
{
    UnkStruct_ov16_0226834C *v0 = param1;
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(v0->healthbox->battleSys);
    int v2;
    PaletteData *paletteData = BattleSystem_GetPaletteData(v0->healthbox->battleSys);

    switch (v0->state) {
    case 0:
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, 20007, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->healthbox->mainSprite, v2);
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
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, HEALTHBOX_MAIN_PALETTE_RESID, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->healthbox->mainSprite, v2);

        *(v0->unk_04) = 1;

        Heap_Free(param1);
        SysTask_Done(task);

        return;
    }
}

void ov16_02268468(HealthBox *healthbox)
{
    return;
}

void ov16_0226846C(HealthBox *healthbox)
{
    return;
}

void ov16_02268470(HealthBox *healthbox)
{
    if (healthbox->task_50 != NULL) {
        return;
    }

    healthbox->degrees = 0;
    healthbox->task_50 = SysTask_Start(ov16_022684BC, healthbox, 1010);
}

void ov16_02268498(HealthBox *healthbox)
{
    if (healthbox->task_50 != NULL) {
        SysTask_Done(healthbox->task_50);
        healthbox->task_50 = NULL;
    }

    healthbox->degrees = 0;
    HealthBox_OffsetPositionXY(healthbox, 0, 0);
}

static void ov16_022684BC(SysTask *task, void *data)
{
    HealthBox *healthbox = data;
    int y;

    healthbox->degrees += 20;

    if (healthbox->degrees >= 360) {
        healthbox->degrees -= 360;
    }

    y = FX_Mul(CalcSineDegrees(healthbox->degrees), 0x1800) / FX32_ONE;
    HealthBox_OffsetPositionXY(healthbox, 0, y);
}
