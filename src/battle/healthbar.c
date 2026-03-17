#include "battle/healthbar.h"

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

#define HEALTHBAR_SCROLL_SPEED      24
#define HEALTHBAR_SCROLL_OUT_OFFSET 160

#define HEALTHBAR_X_OFFSET_SOLO_PLAYER   192
#define HEALTHBAR_Y_OFFSET_SOLO_PLAYER   116
#define HEALTHBAR_X_OFFSET_SOLO_ENEMY    58
#define HEALTHBAR_Y_OFFSET_SOLO_ENEMY    36
#define HEALTHBAR_X_OFFSET_PLAYER_SLOT_1 HEALTHBAR_X_OFFSET_SOLO_PLAYER
#define HEALTHBAR_Y_OFFSET_PLAYER_SLOT_1 HEALTHBAR_Y_OFFSET_SOLO_PLAYER - 13
#define HEALTHBAR_X_OFFSET_PLAYER_SLOT_2 HEALTHBAR_X_OFFSET_SOLO_PLAYER + 6
#define HEALTHBAR_Y_OFFSET_PLAYER_SLOT_2 HEALTHBAR_Y_OFFSET_SOLO_PLAYER + 16
#define HEALTHBAR_X_OFFSET_ENEMY_SLOT_1  HEALTHBAR_X_OFFSET_SOLO_ENEMY + 6
#define HEALTHBAR_Y_OFFSET_ENEMY_SLOT_1  HEALTHBAR_Y_OFFSET_SOLO_ENEMY - 20
#define HEALTHBAR_X_OFFSET_ENEMY_SLOT_2  HEALTHBAR_X_OFFSET_SOLO_ENEMY
#define HEALTHBAR_Y_OFFSET_ENEMY_SLOT_2  HEALTHBAR_Y_OFFSET_SOLO_ENEMY + 9

#define HEALTHBAR_WINDOW_BLOCK_SIZE 32

#define HEALTHBAR_NAME_BLOCK_COUNT_X    8
#define HEALTHBAR_NAME_BLOCK_COUNT_Y    2
#define HEALTHBAR_NAME_WINDOW_OFFSET    0
#define HEALTHBAR_NAME_BYTE_SIZE        (HEALTHBAR_NAME_BLOCK_COUNT_X * HEALTHBAR_NAME_BLOCK_COUNT_Y * HEALTHBAR_WINDOW_BLOCK_SIZE)
#define HEALTHBAR_NAME_BACKGROUND_COLOR 0xF
#define HEALTHBAR_NAME_TEXT_COLOR       TEXT_COLOR(14, 2, HEALTHBAR_NAME_BACKGROUND_COLOR)

#define HEALTHBAR_HP_CELL_COUNT  6
#define HEALTHBAR_EXP_CELL_COUNT 12

#define VRAM_TRANSFER_DST(vram, transferTable, index_0, index_1, imgProxy) ( \
    (void *)((u32)vram + transferTable[index_0][index_1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]))

#define S32_MIN -2147483648

typedef struct VRAMTransfer {
    u16 pos;
    u16 size;
} VRAMTransfer;

typedef struct {
    Healthbar *healthbar;
    u8 *unk_04;
    u8 state;
    u8 unk_09;
    s8 unk_0A;
} UnkStruct_ov16_0226834C;

enum HealthbarPart {
    HEALTHBAR_PART_HP_H = 0,
    HEALTHBAR_PART_HP_P,
    HEALTHBAR_PART_GREEN_FILL_0,
    HEALTHBAR_PART_GREEN_FILL_1,
    HEALTHBAR_PART_GREEN_FILL_2,
    HEALTHBAR_PART_GREEN_FILL_3,
    HEALTHBAR_PART_GREEN_FILL_4,
    HEALTHBAR_PART_GREEN_FILL_5,
    HEALTHBAR_PART_GREEN_FILL_6,
    HEALTHBAR_PART_GREEN_FILL_7,
    HEALTHBAR_PART_GREEN_FILL_8,
    HEALTHBAR_PART_YELLOW_FILL_0,
    HEALTHBAR_PART_YELLOW_FILL_1,
    HEALTHBAR_PART_YELLOW_FILL_2,
    HEALTHBAR_PART_YELLOW_FILL_3,
    HEALTHBAR_PART_YELLOW_FILL_4,
    HEALTHBAR_PART_YELLOW_FILL_5,
    HEALTHBAR_PART_YELLOW_FILL_6,
    HEALTHBAR_PART_YELLOW_FILL_7,
    HEALTHBAR_PART_YELLOW_FILL_8,
    HEALTHBAR_PART_RED_FILL_0,
    HEALTHBAR_PART_RED_FILL_1,
    HEALTHBAR_PART_RED_FILL_2,
    HEALTHBAR_PART_RED_FILL_3,
    HEALTHBAR_PART_RED_FILL_4,
    HEALTHBAR_PART_RED_FILL_5,
    HEALTHBAR_PART_RED_FILL_6,
    HEALTHBAR_PART_RED_FILL_7,
    HEALTHBAR_PART_RED_FILL_8,
    HEALTHBAR_PART_EXP_FILL_0,
    HEALTHBAR_PART_EXP_FILL_1,
    HEALTHBAR_PART_EXP_FILL_2,
    HEALTHBAR_PART_EXP_FILL_3,
    HEALTHBAR_PART_EXP_FILL_4,
    HEALTHBAR_PART_EXP_FILL_5,
    HEALTHBAR_PART_EXP_FILL_6,
    HEALTHBAR_PART_EXP_FILL_7,
    HEALTHBAR_PART_EXP_FILL_8,
    HEALTHBAR_PART_STATUS_HEALTHY_0,
    HEALTHBAR_PART_STATUS_HEALTHY_1,
    HEALTHBAR_PART_STATUS_HEALTHY_2,
    HEALTHBAR_PART_STATUS_PARALYSIS_0,
    HEALTHBAR_PART_STATUS_PARALYSIS_1,
    HEALTHBAR_PART_STATUS_PARALYSIS_2,
    HEALTHBAR_PART_STATUS_FREEZE_0,
    HEALTHBAR_PART_STATUS_FREEZE_1,
    HEALTHBAR_PART_STATUS_FREEZE_2,
    HEALTHBAR_PART_STATUS_SLEEP_0,
    HEALTHBAR_PART_STATUS_SLEEP_1,
    HEALTHBAR_PART_STATUS_SLEEP_2,
    HEALTHBAR_PART_STATUS_POISON_0,
    HEALTHBAR_PART_STATUS_POISON_1,
    HEALTHBAR_PART_STATUS_POISON_2,
    HEALTHBAR_PART_STATUS_BURN_0,
    HEALTHBAR_PART_STATUS_BURN_1,
    HEALTHBAR_PART_STATUS_BURN_2,
    HEALTHBAR_PART_EMPTY_0,
    HEALTHBAR_PART_EMPTY_1,
    HEALTHBAR_PART_EMPTY_2,
    HEALTHBAR_PART_CAUGHT_INDICATOR,
    HEALTHBAR_PART_LEVEL_FEMALE_TOP_0,
    HEALTHBAR_PART_LEVEL_FEMALE_TOP_1,
    HEALTHBAR_PART_LEVEL_MALE_TOP_0,
    HEALTHBAR_PART_LEVEL_MALE_TOP_1,
    HEALTHBAR_PART_LEVEL_GENDERLESS_TOP_0,
    HEALTHBAR_PART_LEVEL_GENDERLESS_TOP_1,
    HEALTHBAR_PART_HP_H_2,
    HEALTHBAR_PART_HP_P_2,
    HEALTHBAR_PART_BAR_END,
    HEALTHBAR_PART_SLASH,
    HEALTHBAR_PART_NUMBERS_LEFT,
    HEALTHBAR_PART_NUMBERS_RIGHT,
    HEALTHBAR_PART_LEVEL_FEMALE_BOTTOM_0,
    HEALTHBAR_PART_LEVEL_FEMALE_BOTTOM_1,
    HEALTHBAR_PART_LEVEL_MALE_BOTTOM_0,
    HEALTHBAR_PART_LEVEL_MALE_BOTTOM_1,
    HEALTHBAR_PART_LEVEL_GENDERLESS_BOTTOM_0,
    HEALTHBAR_PART_LEVEL_GENDERLESS_BOTTOM_1,
};

static s32 Healthbar_DrawGauge(Healthbar *healthbar, enum HealthbarGaugeType gaugeType);
static s32 UpdateGauge(s32 max, s32 cur, s32 diff, s32 *temp, u8 size, u16 fillOffset);
static u8 FillCells(s32 max, s32 cur, s32 diff, s32 *temp, u8 *cells, u8 cellNum);
static u32 CalcGaugeFill(s32 curVal, s32 diff, s32 maxVal, u8 gaugeSize);
static const u8 *GetHealthbarPartsTile(enum HealthbarPart part);
static void DrawGauge(Healthbar *healthbar, u8 gaugeType);
static void Healthbar_DrawBattlerName(Healthbar *healthbar);
static void Healthbar_DrawLevelText(Healthbar *healthbar);
static void Healthbar_DrawLevelNumber(Healthbar *healthbar);
static void Healthbar_DrawCurrentHP(Healthbar *healthbar, u32 hp);
static void Healthbar_DrawMaxHP(Healthbar *healthbar);
static void Healthbar_DrawCaughtIcon(Healthbar *healthbar);
static void Healthbar_DrawStatusIcon(Healthbar *healthbar, enum HealthbarPart part);
static void Healthbar_DrawBallCount(Healthbar *healthbar, u32 flags);
static void Healthbar_DrawBallsLeftMessage(Healthbar *healthbar, u32 flags);
static void Healthbar_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type);
static void ov16_02267244(Healthbar *healthbar);
static void ov16_0226728C(Healthbar *healthbar);
static const SpriteTemplate *Healthbar_SpriteTemplate(u8 type);
static const SpriteTemplate *ov16_02268314(u8 type);
static void ScrollHealthbarTask(SysTask *task, void *data);
static void ov16_02268380(SysTask *task, void *param1);
void ov16_02268470(Healthbar *healthbar);
void ov16_02268498(Healthbar *healthbar);
static void ov16_022684BC(SysTask *task, void *data);
static void Healthbar_EnableArrow(Healthbar *healthbar, BOOL enable);

ALIGN_4 static const s8 sArrowOffsetX[] = {
    [HEALTHBAR_TYPE_PLAYER_SOLO] = 72,
    [HEALTHBAR_TYPE_ENEMY_SOLO] = 0,
    [HEALTHBAR_TYPE_PLAYER_SLOT_1] = 72,
    [HEALTHBAR_TYPE_ENEMY_SLOT_1] = 0,
    [HEALTHBAR_TYPE_PLAYER_SLOT_2] = 72,
    [HEALTHBAR_TYPE_ENEMY_SLOT_2] = 0,
};

static const VRAMTransfer sBattlerNameVRAMTransfer[][4] = {
    [HEALTHBAR_TYPE_PLAYER_SOLO] = {
        { 19 * HEALTHBAR_WINDOW_BLOCK_SIZE, 5 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 27 * HEALTHBAR_WINDOW_BLOCK_SIZE, 5 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 3 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 3 * HEALTHBAR_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBAR_TYPE_ENEMY_SOLO] = {
        { 17 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBAR_TYPE_PLAYER_SLOT_1] = {
        { 18 * HEALTHBAR_WINDOW_BLOCK_SIZE, 6 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 26 * HEALTHBAR_WINDOW_BLOCK_SIZE, 6 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 2 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 2 * HEALTHBAR_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBAR_TYPE_ENEMY_SLOT_1] = {
        { 17 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBAR_TYPE_PLAYER_SLOT_2] = {
        { 18 * HEALTHBAR_WINDOW_BLOCK_SIZE, 6 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 26 * HEALTHBAR_WINDOW_BLOCK_SIZE, 6 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 2 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 2 * HEALTHBAR_WINDOW_BLOCK_SIZE },
    },
    [HEALTHBAR_TYPE_ENEMY_SLOT_2] = {
        { 17 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 25 * HEALTHBAR_WINDOW_BLOCK_SIZE, 7 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 80 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 88 * HEALTHBAR_WINDOW_BLOCK_SIZE, 1 * HEALTHBAR_WINDOW_BLOCK_SIZE },
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
        { 0x4E0, HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
    {
        { 0x4E0, 0x0 },
        { 0xC00, 0xC0 },
    },
    {
        { 0x4E0, HEALTHBAR_WINDOW_BLOCK_SIZE },
        { 0xC00, 0xA0 },
    },
};

static const VRAMTransfer Unk_ov16_0226F38C[] = {
    { 0x460, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x440, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x440, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x420, HEALTHBAR_WINDOW_BLOCK_SIZE },
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
    { 0xCC0, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xCC0, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

static const VRAMTransfer Unk_ov16_0226F3D4[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0xC60, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
    { 0xC60, HEALTHBAR_WINDOW_BLOCK_SIZE },
    { 0x0, 0x0 },
};

#define HEALTHBAR_MAIN_PALETTE_RESID    20006
#define HEALTHBAR_EFFECTS_PALETTE_RESID 20007
#define HEALTHBAR_SAFARI_PALETTE_RESID  20008

static const SpriteTemplate sHealthbarTemplate_SoloPlayer = {
    .x = HEALTHBAR_X_OFFSET_SOLO_PLAYER,
    .y = HEALTHBAR_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_singles_NCGR_lz,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_tall_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_6,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_SoloEnemy = {
    .x = HEALTHBAR_X_OFFSET_SOLO_ENEMY,
    .y = HEALTHBAR_Y_OFFSET_SOLO_ENEMY,
    .z = 0,
    .animIdx = 0,
    .priority = 24,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_5,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_PlayerSlot1 = {
    .x = HEALTHBAR_X_OFFSET_PLAYER_SLOT_1,
    .y = HEALTHBAR_Y_OFFSET_PLAYER_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 28,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_doubles_NCGR_lz,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_3,
        misc_single_frame_anim_NANR_lz_9,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_EnemySlot1 = {
    .x = HEALTHBAR_X_OFFSET_ENEMY_SLOT_1,
    .y = HEALTHBAR_Y_OFFSET_ENEMY_SLOT_1,
    .z = 0,
    .animIdx = 0,
    .priority = 25,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz_1,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_1,
        misc_single_frame_anim_NANR_lz_7,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_PlayerSlot2 = {
    .x = HEALTHBAR_X_OFFSET_PLAYER_SLOT_2,
    .y = HEALTHBAR_Y_OFFSET_PLAYER_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 26,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_player_doubles_NCGR_lz_1,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_4,
        misc_single_frame_anim_NANR_lz_10,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_EnemySlot2 = {
    .x = HEALTHBAR_X_OFFSET_ENEMY_SLOT_2,
    .y = HEALTHBAR_Y_OFFSET_ENEMY_SLOT_2,
    .z = 0,
    .animIdx = 0,
    .priority = 27,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_enemy_NCGR_lz_2,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_short_cell_NCER_lz_2,
        misc_single_frame_anim_NANR_lz_8,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

static const SpriteTemplate sHealthbarTemplate_Unk_ov16_0226F514 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animIdx = 0,
    .priority = 17,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_arrows_wide_NCGR_lz,
        HEALTHBAR_MAIN_PALETTE_RESID,
        healthbox_arrows_wide_cell_NCER_lz,
        healthbox_arrows_wide_anim_NANR_lz,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE
};

static const SpriteTemplate sHealthbarTemplate_NoPlayerMon = {
    .x = HEALTHBAR_X_OFFSET_SOLO_PLAYER,
    .y = HEALTHBAR_Y_OFFSET_SOLO_PLAYER,
    .z = 0,
    .animIdx = 0,
    .priority = 23,
    .plttIdx = 0,
    .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    .resources = {
        healthbox_safari_NCGR_lz,
        HEALTHBAR_SAFARI_PALETTE_RESID,
        healthbox_safari_cell_NCER_lz,
        misc_single_frame_anim_NANR_lz_15,
        SPRITE_RESOURCE_NONE,
        SPRITE_RESOURCE_NONE,
    },
    .bgPriority = 0,
    .vramTransfer = FALSE,
};

#include "res/graphics/battle/healthbox/healthbar_parts.4bpp.h"

void Healthbar_LoadResources(SpriteSystem *spriteSys, SpriteManager *spriteMan, NARC *narc, PaletteData *palette, enum HealthbarType healthbarType)
{
    const SpriteTemplate *template = Healthbar_SpriteTemplate(healthbarType);

    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBAR_MAIN_PALETTE_RESID);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, spriteMan, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBAR_EFFECTS_PALETTE_RESID);

    if (healthbarType == HEALTHBAR_TYPE_SAFARI_ZONE || healthbarType == HEALTHBAR_TYPE_PAL_PARK) {
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, spriteMan, narc, healthbox_safari_NCLR, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBAR_SAFARI_PALETTE_RESID);
    }
}

static void Healthbar_LoadMainPalette(SpriteSystem *spriteSys, SpriteManager *handler, NARC *narc, PaletteData *palette, int type)
{
    const SpriteTemplate *template = ov16_02268314(type);

    if (template != NULL) {
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CHAR], TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, template->resources[SPRITE_RESOURCE_CHAR]);
        SpriteSystem_LoadPaletteBufferFromOpenNarc(palette, PLTTBUF_MAIN_OBJ, spriteSys, handler, narc, healthbox_primary_NCLR, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEALTHBAR_MAIN_PALETTE_RESID);
        SpriteSystem_LoadCellResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_CELL], TRUE, template->resources[SPRITE_RESOURCE_CELL]);
        SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSys, handler, narc, template->resources[SPRITE_RESOURCE_ANIM], TRUE, template->resources[SPRITE_RESOURCE_ANIM]);
    }
}

ManagedSprite *Healthbar_DrawSprite(SpriteSystem *spriteSys, SpriteManager *handler, int type)
{
    const SpriteTemplate *template = Healthbar_SpriteTemplate(type);
    ManagedSprite *managedSprite = SpriteSystem_NewSprite(spriteSys, handler, template);

    Sprite_TickFrame(managedSprite->sprite);
    return managedSprite;
}

void Healthbar_DrawInfo(Healthbar *healthbar, u32 hp, u32 flags)
{
    BOOL caughtSpecies = FALSE;

    GF_ASSERT(healthbar->mainSprite != NULL);

    u32 flagsCopy = flags;

    if (healthbar->type == HEALTHBAR_TYPE_SAFARI_ZONE) {
        flags &= HEALTHBAR_INFO_ALL_SAFARI;
    } else if (healthbar->type == HEALTHBAR_TYPE_PAL_PARK) {
        flags &= HEALTHBAR_INFO_ALL_PARK;
    } else {
        flags &= ~(HEALTHBAR_INFO_ALL_SAFARI | HEALTHBAR_INFO_ALL_PARK);
    }

    switch (healthbar->type) {
    case HEALTHBAR_TYPE_ENEMY_SOLO:
    case HEALTHBAR_TYPE_ENEMY_SLOT_1:
    case HEALTHBAR_TYPE_ENEMY_SLOT_2:
        // Never display current HP, max HP, or the EXP bar on an enemy healthbar
        flags &= ~HEALTHBAR_INFO_NOT_ON_ENEMY;
        caughtSpecies = TRUE;
        break;

    case HEALTHBAR_TYPE_PLAYER_SLOT_1:
    case HEALTHBAR_TYPE_PLAYER_SLOT_2:
        // Never display the EXP bar in doubles
        flags &= ~(HEALTHBAR_INFO_EXP_GAUGE | HEALTHBAR_INFO_CAUGHT_SPECIES);

        // Allow toggling between showing the HP bar and raw current/max numbers
        if (healthbar->numberMode == FALSE) {
            flags &= ~(HEALTHBAR_INFO_CURRENT_HP | HEALTHBAR_INFO_MAX_HP);
        } else {
            flags &= ~HEALTHBAR_INFO_HP_GAUGE;
        }
        break;

    case HEALTHBAR_TYPE_PLAYER_SOLO:
        // Never show the pokeball icon on a player's healthbar for a captured species
        flags &= ~HEALTHBAR_INFO_CAUGHT_SPECIES;
        break;

    case HEALTHBAR_TYPE_SAFARI_ZONE:
    case HEALTHBAR_TYPE_PAL_PARK:
        break;
    }

    if (BattleSystem_GetBattleType(healthbar->battleSys) & BATTLE_TYPE_TRAINER) {
        // Never show the pokeball icon on an enemy trainer's healthbar
        flags &= ~HEALTHBAR_INFO_CAUGHT_SPECIES;
    }

    if (flags & HEALTHBAR_INFO_HP_GAUGE) {
        Healthbar_CalcHP(healthbar, 0);
        Healthbar_DrawGauge(healthbar, HEALTHBAR_GAUGE_HP);
    }

    if (flags & HEALTHBAR_INFO_CURRENT_HP) {
        Healthbar_DrawCurrentHP(healthbar, hp);
    }

    if (flags & HEALTHBAR_INFO_MAX_HP) {
        Healthbar_DrawMaxHP(healthbar);
    }

    if ((flags & HEALTHBAR_INFO_LEVEL_TEXT) || (flags & HEALTHBAR_INFO_GENDER)) {
        Healthbar_DrawLevelText(healthbar);
    }

    if (flags & HEALTHBAR_INFO_LEVEL) {
        Healthbar_DrawLevelNumber(healthbar);
    }

    if (flags & HEALTHBAR_INFO_NAME) {
        Healthbar_DrawBattlerName(healthbar);
    }

    if (flags & HEALTHBAR_INFO_EXP_GAUGE) {
        Healthbar_CalcExp(healthbar, 0);
        Healthbar_DrawGauge(healthbar, HEALTHBAR_GAUGE_EXP);
    }

    if (flags & HEALTHBAR_INFO_CAUGHT_SPECIES) {
        Healthbar_DrawCaughtIcon(healthbar);
    }

    if (flags & HEALTHBAR_INFO_STATUS) {
        switch (healthbar->status) {
        default:
        case BATTLE_ANIMATION_NONE:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_HEALTHY_0);
            break;
        case BATTLE_ANIMATION_ASLEEP:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_SLEEP_0);
            break;
        case BATTLE_ANIMATION_POISONED:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_POISON_0);
            break;
        case BATTLE_ANIMATION_BURNED:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_BURN_0);
            break;
        case BATTLE_ANIMATION_FROZEN:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_FREEZE_0);
            break;
        case BATTLE_ANIMATION_PARALYZED:
            Healthbar_DrawStatusIcon(healthbar, HEALTHBAR_PART_STATUS_PARALYSIS_0);
            break;
        }
    }

    if (flags & (HEALTHBAR_INFO_COUNT_SAFARI_BALLS | HEALTHBAR_INFO_COUNT_PARK_BALLS)) {
        Healthbar_DrawBallCount(healthbar, flags);
    }

    if (flags & (HEALTHBAR_INFO_REMAINING_SAFARI_BALLS | HEALTHBAR_INFO_REMAINING_PARK_BALLS)) {
        Healthbar_DrawBallsLeftMessage(healthbar, flags);
    }
}

void ov16_02267220(Healthbar *healthbar)
{
    if (healthbar->task_50 != NULL) {
        SysTask_Done(healthbar->task_50);
        healthbar->task_50 = NULL;
    }

    if (healthbar->mainSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(healthbar->mainSprite);
    healthbar->mainSprite = NULL;
}

static void ov16_02267244(Healthbar *healthbar)
{
    if (healthbar->arrowSprite == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(healthbar->arrowSprite);
    healthbar->arrowSprite = NULL;
}

void ov16_02267258(Healthbar *healthbar)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = Healthbar_SpriteTemplate(healthbar->type);
    spriteSystem = BattleSystem_GetSpriteSystem(healthbar->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(healthbar->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

static void ov16_0226728C(Healthbar *healthbar)
{
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    const SpriteTemplate *spriteTemplate = ov16_02268314(healthbar->type);

    if (spriteTemplate == NULL) {
        return;
    }

    spriteSystem = BattleSystem_GetSpriteSystem(healthbar->battleSys);
    spriteManager = BattleSystem_GetSpriteManager(healthbar->battleSys);

    SpriteManager_UnloadCharObjById(spriteManager, spriteTemplate->resources[0]);
    SpriteManager_UnloadCellObjById(spriteManager, spriteTemplate->resources[2]);
    SpriteManager_UnloadAnimObjById(spriteManager, spriteTemplate->resources[3]);
}

void ov16_022672C4(Healthbar *healthbar)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    SpriteSystem *spriteSystem = BattleSystem_GetSpriteSystem(healthbar->battleSys);
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(healthbar->battleSys);
    PaletteData *paletteData = BattleSystem_GetPaletteData(healthbar->battleSys);
    const SpriteTemplate *spriteTemplate = Healthbar_SpriteTemplate(healthbar->type);

    Healthbar_LoadResources(spriteSystem, spriteManager, narc, paletteData, healthbar->type);
    healthbar->mainSprite = Healthbar_DrawSprite(spriteSystem, spriteManager, healthbar->type);

    Healthbar_LoadMainPalette(spriteSystem, spriteManager, narc, paletteData, healthbar->type);

    if (healthbar->arrowSprite != NULL) {
        Sprite_SetPositionXY(healthbar->arrowSprite->sprite, spriteTemplate->x - sArrowOffsetX[healthbar->type], spriteTemplate->y + 0);
    }

    NARC_dtor(narc);
}

void ov16_02267360(Healthbar *healthbar)
{
    ov16_02267220(healthbar);
    ov16_02267258(healthbar);
    ov16_02267244(healthbar);
    ov16_0226728C(healthbar);
}

void ov16_0226737C(Healthbar *healthbar)
{
    const u8 *tileNum;
    NNSG2dImageProxy *imgProxy;
    void *v2;

    switch (healthbar->type) {
    case HEALTHBAR_TYPE_PLAYER_SLOT_1:
    case HEALTHBAR_TYPE_PLAYER_SLOT_2:
        break;
    default:
        return;
    }

    healthbar->numberMode ^= 1;

    v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);

    if (healthbar->numberMode == 1) {
        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_NUMBERS_LEFT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[healthbar->type].pos + HEALTHBAR_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);
        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_NUMBERS_RIGHT);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbar->type].pos + HEALTHBAR_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);

        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_SLASH);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3D4[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3D4[healthbar->type].size);

        Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_CURRENT_HP | HEALTHBAR_INFO_MAX_HP);
    } else {
        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_HP_H_2);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F374[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F374[healthbar->type].size);

        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_BAR_END);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3A4[healthbar->type].size);

        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_STATUS_HEALTHY_0);
        MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F3A4[healthbar->type].pos + HEALTHBAR_WINDOW_BLOCK_SIZE + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);

        Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_HP_GAUGE);
    }
}

void Healthbar_CalcHP(Healthbar *healthbar, int damage)
{
    healthbar->hpTemp = S32_MIN;

    // bound the damage input to [0, maxHP]
    if (healthbar->curHP + damage < 0) {
        damage -= healthbar->curHP + damage;
    }
    if (healthbar->curHP + damage > healthbar->maxHP) {
        damage -= (healthbar->curHP + damage) - healthbar->maxHP;
    }

    // update cached values
    healthbar->damage = -damage;

    if (healthbar->curHP < 0) {
        healthbar->curHP = 0;
    }

    if (healthbar->curHP > healthbar->maxHP) {
        healthbar->curHP = healthbar->maxHP;
    }
}

s32 ov16_022674F8(Healthbar *healthbar)
{
    s32 result = Healthbar_DrawGauge(healthbar, HEALTHBAR_GAUGE_HP);

    if (result == -1) {
        healthbar->curHP -= healthbar->damage;
        Healthbar_DrawInfo(healthbar, healthbar->curHP, HEALTHBAR_INFO_CURRENT_HP);
    } else {
        Healthbar_DrawInfo(healthbar, result, HEALTHBAR_INFO_CURRENT_HP);
    }

    return result;
}

void Healthbar_CalcExp(Healthbar *healthbar, int expReward)
{
    healthbar->expTemp = S32_MIN;

    if (healthbar->curExp + expReward < 0) {
        expReward -= healthbar->curExp + expReward;
    }

    if (healthbar->curExp + expReward > healthbar->maxExp) {
        expReward -= (healthbar->curExp + expReward) - healthbar->maxExp;
    }

    healthbar->expReward = -expReward;

    if (healthbar->curExp < 0) {
        healthbar->curExp = 0;
    }

    if (healthbar->curExp > healthbar->maxExp) {
        healthbar->curExp = healthbar->maxExp;
    }
}

s32 ov16_02267560(Healthbar *healthbar)
{
    s32 result = Healthbar_DrawGauge(healthbar, HEALTHBAR_GAUGE_EXP);

    if (result == -1) {
        healthbar->curExp -= healthbar->expReward;
    }

    return result;
}

void ov16_0226757C(Healthbar *healthbar)
{
    if (healthbar->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(healthbar->arrowSprite->sprite, TRUE);
        Healthbar_EnableArrow(healthbar, TRUE);
    }

    if ((BattleSystem_GetBattleType(healthbar->battleSys) & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) == FALSE) {
        ov16_02268470(healthbar);
    }
}

void ov16_022675AC(Healthbar *healthbar)
{
    if (healthbar->arrowSprite != NULL) {
        Sprite_SetAnimateFlag(healthbar->arrowSprite->sprite, FALSE);
        Sprite_SetAnimFrame(healthbar->arrowSprite->sprite, 0);
        Healthbar_EnableArrow(healthbar, FALSE);
    }

    ov16_02268498(healthbar);
}

void ov16_022675D8(Healthbar *healthbar, int priority)
{
    if (healthbar->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetExplicitPriority(healthbar->mainSprite, priority);

    if (healthbar->arrowSprite != NULL) {
        ManagedSprite_SetExplicitPriority(healthbar->arrowSprite, priority);
    }
}

/**
 * @brief Enable the extended arrow-graphic used by the healthbar for Pokemon battlers.
 *
 * @param battleSys
 * @param enable
 */
static void Healthbar_EnableArrow(Healthbar *battleSys, BOOL enable)
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

void Healthbar_Enable(Healthbar *battleSys, BOOL enable)
{
    if (battleSys->mainSprite == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(battleSys->mainSprite, enable);
    Healthbar_EnableArrow(battleSys, enable);
}

void Healthbar_OffsetPositionXY(Healthbar *healthbar, int x, int y)
{
    GF_ASSERT(healthbar->mainSprite != NULL);
    const SpriteTemplate *template = Healthbar_SpriteTemplate(healthbar->type);

    Sprite_SetPositionXY(healthbar->mainSprite->sprite, template->x + x, template->y + y);
    if (healthbar->arrowSprite != NULL) {
        Sprite_SetPositionXY(healthbar->arrowSprite->sprite,
            template->x + x - sArrowOffsetX[healthbar->type],
            template->y + y + 0);
    }
}

void Healthbar_Scroll(Healthbar *healthbar, enum HealthbarScrollDirection direction)
{
    GF_ASSERT(healthbar != NULL);
    GF_ASSERT(healthbar->mainSprite != NULL);

    healthbar->doneScrolling = 0;
    healthbar->scrollDirection = direction;

    if (direction == HEALTHBAR_SCROLL_IN) {
        switch (healthbar->type) {
        case HEALTHBAR_TYPE_PLAYER_SOLO:
        case HEALTHBAR_TYPE_PLAYER_SLOT_1:
        case HEALTHBAR_TYPE_PLAYER_SLOT_2:
        case HEALTHBAR_TYPE_SAFARI_ZONE:
        case HEALTHBAR_TYPE_PAL_PARK:
            // Player-side healthbar
            Healthbar_OffsetPositionXY(healthbar, HEALTHBAR_SCROLL_OUT_OFFSET, 0);
            break;

        default:
            // Enemy-side healthbar
            Healthbar_OffsetPositionXY(healthbar, -HEALTHBAR_SCROLL_OUT_OFFSET, 0);
            break;
        }
    } else {
        Healthbar_OffsetPositionXY(healthbar, 0, 0);
    }

    SysTask_Start(ScrollHealthbarTask, healthbar, 990);
}

/**
 * @brief Scroll the healthbar in or out by the configured scroll-speed value.
 *
 * @param task
 * @param data
 */
static void ScrollHealthbarTask(SysTask *task, void *data)
{
    Healthbar *healthbar = data;
    int done = 0;
    const SpriteTemplate *template = Healthbar_SpriteTemplate(healthbar->type);

    s16 x, y;
    ManagedSprite_GetPositionXY(healthbar->mainSprite, &x, &y);

    // Determine new X and Y based on the type of healthbar
    switch (healthbar->type) {
    case HEALTHBAR_TYPE_PLAYER_SOLO:
    case HEALTHBAR_TYPE_PLAYER_SLOT_1:
    case HEALTHBAR_TYPE_PLAYER_SLOT_2:
    case HEALTHBAR_TYPE_SAFARI_ZONE:
    case HEALTHBAR_TYPE_PAL_PARK:
        // Player-side healthbar
        if (healthbar->scrollDirection == HEALTHBAR_SCROLL_IN) {
            x -= HEALTHBAR_SCROLL_SPEED;

            if (x < template->x) {
                x = template->x;
                done++;
            }
        } else {
            x += HEALTHBAR_SCROLL_SPEED;

            if (x > template->x + HEALTHBAR_SCROLL_OUT_OFFSET) {
                x = template->x + HEALTHBAR_SCROLL_OUT_OFFSET;
                done++;
            }
        }
        break;

    default:
        // Enemy-side healthbar
        if (healthbar->scrollDirection == HEALTHBAR_SCROLL_IN) {
            x += HEALTHBAR_SCROLL_SPEED;

            if (x > template->x) {
                x = template->x;
                done++;
            }
        } else {
            x -= HEALTHBAR_SCROLL_SPEED;

            if (x < template->x - HEALTHBAR_SCROLL_SPEED) {
                x = template->x - HEALTHBAR_SCROLL_SPEED;
                done++;
            }
        }
        break;
    }

    // Update positions of the sprites on the screen
    ManagedSprite_SetPositionXY(healthbar->mainSprite, x, y);
    if (healthbar->arrowSprite != NULL) {
        ManagedSprite_SetPositionXY(healthbar->arrowSprite, x - sArrowOffsetX[healthbar->type], y + 0);
    }

    // If the sprites are now in position, we're done
    if (done > 0) {
        healthbar->doneScrolling = TRUE;
        SysTask_Done(task);
    }
}

/**
 * @brief Draw the battler's name onto the healthbar.
 *
 * @param healthbar
 */
static void Healthbar_DrawBattlerName(Healthbar *healthbar)
{
    BgConfig *bgl = BattleSystem_GetBgConfig(healthbar->battleSys);
    u8 *buf;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbar->battleSys);
    StringTemplate *strFormatter = BattleSystem_GetStringTemplate(healthbar->battleSys);

    String *nickname = String_Init(MON_NAME_LEN + 12, HEAP_ID_BATTLE); // TODO: not sure why there is a +12 here
    String *template = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_HealthbarPokemonName);

    Pokemon *mon = BattleSystem_GetPartyPokemon(healthbar->battleSys, healthbar->battler, healthbar->selectedPartySlot);
    BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

    StringTemplate_SetNickname(strFormatter, 0, boxMon);
    StringTemplate_Format(strFormatter, nickname, template);

    Window_AddToTopLeftCorner(bgl, &window, HEALTHBAR_NAME_BLOCK_COUNT_X, HEALTHBAR_NAME_BLOCK_COUNT_Y, HEALTHBAR_NAME_WINDOW_OFFSET, HEALTHBAR_NAME_BACKGROUND_COLOR);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, HEALTHBAR_NAME_TEXT_COLOR, 0, 0, NULL);
    buf = window.pixels;

    // copy the window's data into VRAM over the painted healthbar
    void *vram = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    u8 *hiHalf = buf;
    u8 *loHalf = &buf[HEALTHBAR_NAME_BLOCK_COUNT_X * HEALTHBAR_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(hiHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbar->type, 0, imgProxy),
        sBattlerNameVRAMTransfer[healthbar->type][0].size);
    MI_CpuCopy16(loHalf,
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbar->type, 1, imgProxy),
        sBattlerNameVRAMTransfer[healthbar->type][1].size);
    MI_CpuCopy16(&hiHalf[sBattlerNameVRAMTransfer[healthbar->type][0].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbar->type, 2, imgProxy),
        sBattlerNameVRAMTransfer[healthbar->type][2].size);
    MI_CpuCopy16(&loHalf[sBattlerNameVRAMTransfer[healthbar->type][1].size],
        VRAM_TRANSFER_DST(vram, sBattlerNameVRAMTransfer, healthbar->type, 3, imgProxy),
        sBattlerNameVRAMTransfer[healthbar->type][3].size);

    Window_Remove(&window);
    String_Free(nickname);
    String_Free(template);
}

static void Healthbar_DrawLevelText(Healthbar *healthbar)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum1;
    const u8 *tileNum2;
    int part1, part2;

    if (healthbar->gender == GENDER_MALE) {
        part1 = HEALTHBAR_PART_LEVEL_MALE_BOTTOM_0;
        part2 = HEALTHBAR_PART_LEVEL_MALE_TOP_0;
    } else if (healthbar->gender == GENDER_FEMALE) {
        part1 = HEALTHBAR_PART_LEVEL_FEMALE_BOTTOM_0;
        part2 = HEALTHBAR_PART_LEVEL_FEMALE_TOP_0;
    } else {
        part1 = HEALTHBAR_PART_LEVEL_GENDERLESS_BOTTOM_0;
        part2 = HEALTHBAR_PART_LEVEL_GENDERLESS_TOP_0;
    }

    tileNum1 = GetHealthbarPartsTile(part1);
    tileNum2 = GetHealthbarPartsTile(part2);

    void *v5 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);

    MI_CpuCopy16(tileNum2, (void *)((u32)v5 + Unk_ov16_0226F47C[healthbar->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[healthbar->type][0].size);
    MI_CpuCopy16(tileNum1, (void *)((u32)v5 + Unk_ov16_0226F47C[healthbar->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F47C[healthbar->type][1].size);
}

static void Healthbar_DrawLevelNumber(Healthbar *healthbar)
{
    NNSG2dImageProxy *imgProxy;
    int v4, v5, v6;

    int size = 3 * HEALTHBAR_WINDOW_BLOCK_SIZE;
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, size);
    u8 *v1 = Heap_Alloc(HEAP_ID_BATTLE, size * 2);

    MI_CpuFill8(v0, 0xf | (0xf << 4), size);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsLevel(healthbar->battleSys), healthbar->level, 3, PADDING_MODE_NONE, v0);

    void *v7 = G2_GetOBJCharPtr();
    u8 *v8, *v9;

    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);

    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[healthbar->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), v1, Unk_ov16_0226F3EC[healthbar->type][0].size);
    MI_CpuCopy16((void *)((u32)v7 + Unk_ov16_0226F3EC[healthbar->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), &v1[size], Unk_ov16_0226F3EC[healthbar->type][1].size);

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

    MI_CpuCopy16(v8, (void *)((u32)v7 + Unk_ov16_0226F3EC[healthbar->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[healthbar->type][0].size);
    MI_CpuCopy16(v9, (void *)((u32)v7 + Unk_ov16_0226F3EC[healthbar->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3EC[healthbar->type][1].size);

    Heap_Free(v0);
    Heap_Free(v1);
}

static void Healthbar_DrawCurrentHP(Healthbar *healthbar, u32 hp)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * HEALTHBAR_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * HEALTHBAR_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(healthbar->battleSys), hp, 3, PADDING_MODE_SPACES, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F41C[healthbar->type][0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[healthbar->type][0].size);
    MI_CpuCopy16(&v3[Unk_ov16_0226F41C[healthbar->type][0].size], (void *)((u32)v2 + Unk_ov16_0226F41C[healthbar->type][1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F41C[healthbar->type][1].size);

    Heap_Free(v0);
}

static void Healthbar_DrawMaxHP(Healthbar *healthbar)
{
    u8 *v0 = Heap_Alloc(HEAP_ID_BATTLE, 3 * HEALTHBAR_WINDOW_BLOCK_SIZE);
    NNSG2dImageProxy *imgProxy;

    MI_CpuFill8(v0, 0xf | (0xf << 4), 3 * HEALTHBAR_WINDOW_BLOCK_SIZE);
    FontSpecialChars_DrawBattleScreenText(BattleSystem_GetSpecialCharsHP(healthbar->battleSys), healthbar->maxHP, 3, PADDING_MODE_NONE, v0);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    u8 *v3 = v0;

    MI_CpuCopy16(v3, (void *)((u32)v2 + Unk_ov16_0226F3BC[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F3BC[healthbar->type].size);

    Heap_Free(v0);
}

static void Healthbar_DrawCaughtIcon(Healthbar *healthbar)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum;

    if (healthbar->caughtSpecies == TRUE) {
        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_CAUGHT_INDICATOR);
    } else {
        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_STATUS_HEALTHY_0);
    }

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F38C[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F38C[healthbar->type].size);
}

static void Healthbar_DrawStatusIcon(Healthbar *healthbar, enum HealthbarPart part)
{
    NNSG2dImageProxy *imgProxy;
    const u8 *tileNum = GetHealthbarPartsTile(part);

    void *v2 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);

    MI_CpuCopy16(tileNum, (void *)((u32)v2 + Unk_ov16_0226F35C[healthbar->type].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F35C[healthbar->type].size);
}

static void Healthbar_DrawBallCount(Healthbar *healthbar, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(healthbar->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbar->battleSys);
    String *string;

    if (flags & (1 << 10)) {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBalls);
    } else {
        string = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBalls);
    }

    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, HEALTHBAR_NAME_TEXT_COLOR, 0, 0, NULL);

    v1 = window.pixels;

    void *v6 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    u8 *v7 = v1;
    u8 *v8 = &v1[13 * HEALTHBAR_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v7, (void *)((u32)v6 + Unk_ov16_0226F33C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[0].size);
    MI_CpuCopy16(v8, (void *)((u32)v6 + Unk_ov16_0226F33C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[1].size);

    MI_CpuCopy16(&v7[Unk_ov16_0226F33C[0].size], (void *)((u32)v6 + Unk_ov16_0226F33C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[2].size);
    MI_CpuCopy16(&v8[Unk_ov16_0226F33C[1].size], (void *)((u32)v6 + Unk_ov16_0226F33C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F33C[3].size);

    Window_Remove(&window);
    String_Free(string);
}

static void Healthbar_DrawBallsLeftMessage(Healthbar *healthbar, u32 flags)
{
    BgConfig *bgConfig = BattleSystem_GetBgConfig(healthbar->battleSys);
    u8 *v1;
    NNSG2dImageProxy *imgProxy;
    Window window;
    MessageLoader *msgLoader = BattleSystem_GetMessageLoader(healthbar->battleSys);
    String *templateString;
    StringTemplate *strTemplate = BattleSystem_GetStringTemplate(healthbar->battleSys);

    String *string = String_Init(30, HEAP_ID_BATTLE);

    if (flags & (1 << 10)) {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_SafariBallsLeft);
    } else {
        templateString = MessageLoader_GetNewString(msgLoader, BattleStrings_Text_ParkBallsLeft);
    }

    StringTemplate_SetNumber(strTemplate, 0, healthbar->numSafariBalls, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(strTemplate, string, templateString);
    Window_AddToTopLeftCorner(bgConfig, &window, 13, 2, 0, 0xf);
    Text_AddPrinterWithParamsColorAndSpacing(&window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(14, 2, 15), 0, 0, NULL);

    v1 = window.pixels;

    void *v8 = G2_GetOBJCharPtr();
    imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    u8 *v9 = v1;
    u8 *v10 = &v1[13 * HEALTHBAR_WINDOW_BLOCK_SIZE];

    MI_CpuCopy16(v9, (void *)((u32)v8 + Unk_ov16_0226F34C[0].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[0].size);
    MI_CpuCopy16(v10, (void *)((u32)v8 + Unk_ov16_0226F34C[1].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[1].size);
    MI_CpuCopy16(&v9[Unk_ov16_0226F34C[0].size], (void *)((u32)v8 + Unk_ov16_0226F34C[2].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[2].size);
    MI_CpuCopy16(&v10[Unk_ov16_0226F34C[1].size], (void *)((u32)v8 + Unk_ov16_0226F34C[3].pos + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), Unk_ov16_0226F34C[3].size);

    Window_Remove(&window);
    String_Free(string);
    String_Free(templateString);
}

static s32 Healthbar_DrawGauge(Healthbar *healthbar, enum HealthbarGaugeType gaugeType)
{
    s32 result;
    s32 fillOffset;

    if (gaugeType == HEALTHBAR_GAUGE_HP) {
        result = UpdateGauge(healthbar->maxHP, healthbar->curHP, healthbar->damage, &healthbar->hpTemp, HEALTHBAR_HP_CELL_COUNT, 1);
    } else {
        fillOffset = CalcGaugeFill(healthbar->curExp, healthbar->expReward, healthbar->maxExp, HEALTHBAR_EXP_CELL_COUNT);

        if (fillOffset == 0) {
            fillOffset = 1;
        }

        fillOffset = abs(healthbar->expReward / fillOffset);
        result = UpdateGauge(healthbar->maxExp, healthbar->curExp, healthbar->expReward, &healthbar->expTemp, HEALTHBAR_EXP_CELL_COUNT, fillOffset);
    }

    if (gaugeType != HEALTHBAR_GAUGE_HP || healthbar->numberMode != TRUE) {
        DrawGauge(healthbar, gaugeType);
    }

    if (result == -1) {
        if (gaugeType == HEALTHBAR_GAUGE_HP) {
            healthbar->hpTemp = 0;
        } else {
            healthbar->expTemp = 0;
        }
    }

    return result;
}

static void DrawGauge(Healthbar *healthbar, u8 gaugeType)
{
    u8 i;
    u8 cells[HEALTHBAR_EXP_CELL_COUNT];
    u8 part;
    u8 pixels;
    u8 level;
    const u8 *tileNum;
    void *v7 = G2_GetOBJCharPtr();
    NNSG2dImageProxy *imgProxy = Sprite_GetImageProxy(healthbar->mainSprite->sprite);
    int numBlocks;

    switch (gaugeType) {
    case HEALTHBAR_GAUGE_HP:
        pixels = FillCells(healthbar->maxHP, healthbar->curHP, healthbar->damage, &healthbar->hpTemp, cells, HEALTHBAR_HP_CELL_COUNT);

        int barColor = App_BarColor(pixels, 8 * HEALTHBAR_HP_CELL_COUNT);

        switch (barColor) {
        case BARCOLOR_GREEN:
            part = HEALTHBAR_PART_GREEN_FILL_0;
            break;
        case BARCOLOR_YELLOW:
            part = HEALTHBAR_PART_YELLOW_FILL_0;
            break;
        case BARCOLOR_RED:
        default:
            part = HEALTHBAR_PART_RED_FILL_0;
            break;
        }

        tileNum = GetHealthbarPartsTile(part);
        numBlocks = Unk_ov16_0226F44C[healthbar->type][0].size / HEALTHBAR_WINDOW_BLOCK_SIZE;

        for (i = 0; i < HEALTHBAR_HP_CELL_COUNT; i++) {
            if (i < numBlocks) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[healthbar->type][0].pos + (i * HEALTHBAR_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + Unk_ov16_0226F44C[healthbar->type][1].pos + ((i - numBlocks) * HEALTHBAR_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);
            }
        }
        break;
    case HEALTHBAR_GAUGE_EXP:
        FillCells(healthbar->maxExp, healthbar->curExp, healthbar->expReward, &healthbar->expTemp, cells, HEALTHBAR_EXP_CELL_COUNT);
        level = healthbar->level;

        if (level == MAX_POKEMON_LEVEL) {
            for (i = 0; i < HEALTHBAR_EXP_CELL_COUNT; i++) {
                cells[i] = 0;
            }
        }

        tileNum = GetHealthbarPartsTile(HEALTHBAR_PART_EXP_FILL_0);

        for (i = 0; i < HEALTHBAR_EXP_CELL_COUNT; i++) {
            if (i < 5) {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 1632 + (i * HEALTHBAR_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);
            } else {
                MI_CpuCopy16(tileNum + (cells[i] << 5), (void *)((u32)v7 + 3584 + ((i - 5) * HEALTHBAR_WINDOW_BLOCK_SIZE) + imgProxy->vramLocation.baseAddrOfVram[NNS_G2D_VRAM_TYPE_2DMAIN]), HEALTHBAR_WINDOW_BLOCK_SIZE);
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

    u8 corrected = size * HEALTHBAR_NAME_BLOCK_COUNT_X;

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

static const u8 *GetHealthbarPartsTile(enum HealthbarPart part)
{
    return &sHealthbarPartsBitmap[part * TILE_SIZE_4BPP];
}

u8 Healthbar_Type(int battlerType, u32 battleType)
{
    switch (battlerType) {
    case BATTLER_TYPE_SOLO_PLAYER:
        if (battleType & BATTLE_TYPE_PAL_PARK) {
            return HEALTHBAR_TYPE_PAL_PARK;
        }

        if (battleType & BATTLE_TYPE_SAFARI) {
            return HEALTHBAR_TYPE_SAFARI_ZONE;
        }

        return HEALTHBAR_TYPE_PLAYER_SOLO;

    case BATTLER_TYPE_SOLO_ENEMY:
        return HEALTHBAR_TYPE_ENEMY_SOLO;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        return HEALTHBAR_TYPE_PLAYER_SLOT_1;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        return HEALTHBAR_TYPE_ENEMY_SLOT_1;

    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        return HEALTHBAR_TYPE_PLAYER_SLOT_2;

    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        return HEALTHBAR_TYPE_ENEMY_SLOT_2;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

/**
 * @brief Grab the sprite template that applies to a given healthbar type.
 *
 * @param type  The healthbar type. See enum HealthbarType for accepted values.
 * @return      Address of the SpriteTemplate struct which applies to this
 *              healthbar type.
 */
static const SpriteTemplate *Healthbar_SpriteTemplate(u8 type)
{
    switch (type) {
    case HEALTHBAR_TYPE_PLAYER_SOLO:
        return &sHealthbarTemplate_SoloPlayer;

    case HEALTHBAR_TYPE_ENEMY_SOLO:
        return &sHealthbarTemplate_SoloEnemy;

    case HEALTHBAR_TYPE_PLAYER_SLOT_1:
        return &sHealthbarTemplate_PlayerSlot1;

    case HEALTHBAR_TYPE_ENEMY_SLOT_1:
        return &sHealthbarTemplate_EnemySlot1;

    case HEALTHBAR_TYPE_PLAYER_SLOT_2:
        return &sHealthbarTemplate_PlayerSlot2;

    case HEALTHBAR_TYPE_ENEMY_SLOT_2:
        return &sHealthbarTemplate_EnemySlot2;

    case HEALTHBAR_TYPE_SAFARI_ZONE:
    case HEALTHBAR_TYPE_PAL_PARK:
        return &sHealthbarTemplate_NoPlayerMon;

    default:
        GF_ASSERT(FALSE);
        return NULL;
    }
}

static const SpriteTemplate *ov16_02268314(u8 type)
{
    const SpriteTemplate *spriteTemplate;

    switch (type) {
    case HEALTHBAR_TYPE_PLAYER_SOLO:
    case HEALTHBAR_TYPE_PLAYER_SLOT_1:
    case HEALTHBAR_TYPE_PLAYER_SLOT_2:
    case HEALTHBAR_TYPE_SAFARI_ZONE:
    case HEALTHBAR_TYPE_PAL_PARK:
        spriteTemplate = &sHealthbarTemplate_Unk_ov16_0226F514;
        break;
    case HEALTHBAR_TYPE_ENEMY_SOLO:
    case HEALTHBAR_TYPE_ENEMY_SLOT_1:
    case HEALTHBAR_TYPE_ENEMY_SLOT_2:
        return NULL;
    default:
        GF_ASSERT(FALSE);
        return NULL;
    }

    return spriteTemplate;
}

void ov16_0226834C(Healthbar *healthbar, u8 *param1)
{
    UnkStruct_ov16_0226834C *v0;

    *param1 = 0;

    v0 = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_ov16_0226834C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov16_0226834C));

    v0->healthbar = healthbar;
    v0->unk_04 = param1;

    SysTask_Start(ov16_02268380, v0, 1000);
}

static void ov16_02268380(SysTask *task, void *param1)
{
    UnkStruct_ov16_0226834C *v0 = param1;
    SpriteManager *spriteManager = BattleSystem_GetSpriteManager(v0->healthbar->battleSys);
    int v2;
    PaletteData *paletteData = BattleSystem_GetPaletteData(v0->healthbar->battleSys);

    switch (v0->state) {
    case 0:
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, 20007, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->healthbar->mainSprite, v2);
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
        v2 = SpriteManager_FindPlttResourceOffset(spriteManager, HEALTHBAR_MAIN_PALETTE_RESID, NNS_G2D_VRAM_TYPE_2DMAIN);
        ManagedSprite_SetExplicitPalette(v0->healthbar->mainSprite, v2);

        *(v0->unk_04) = 1;

        Heap_Free(param1);
        SysTask_Done(task);

        return;
    }
}

void ov16_02268468(Healthbar *healthbar)
{
    return;
}

void ov16_0226846C(Healthbar *healthbar)
{
    return;
}

void ov16_02268470(Healthbar *healthbar)
{
    if (healthbar->task_50 != NULL) {
        return;
    }

    healthbar->degrees = 0;
    healthbar->task_50 = SysTask_Start(ov16_022684BC, healthbar, 1010);
}

void ov16_02268498(Healthbar *healthbar)
{
    if (healthbar->task_50 != NULL) {
        SysTask_Done(healthbar->task_50);
        healthbar->task_50 = NULL;
    }

    healthbar->degrees = 0;
    Healthbar_OffsetPositionXY(healthbar, 0, 0);
}

static void ov16_022684BC(SysTask *task, void *data)
{
    Healthbar *healthbar = data;
    int y;

    healthbar->degrees += 20;

    if (healthbar->degrees >= 360) {
        healthbar->degrees -= 360;
    }

    y = FX_Mul(CalcSineDegrees(healthbar->degrees), 0x1800) / FX32_ONE;
    Healthbar_OffsetPositionXY(healthbar, 0, y);
}
