#include "applications/pokemon_summary_screen/sprite.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "constants/pokemon.h"
#include "consts/items.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/subscreen.h"
#include "graphics/pokemon_summary_screen/pl_pst_gra.naix"
#include "overlay007/struct_ov7_0224F2EC.h"
#include "overlay007/struct_ov7_0224F358.h"
#include "overlay104/struct_ov104_022412F4.h"
#include "overlay104/struct_ov104_0224133C.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "gx_layers.h"
#include "move_table.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "ribbon.h"
#include "unk_0200C6E4.h"
#include "unk_0201DBEC.h"
#include "unk_0207C908.h"

static void SetTypeIcon(PokemonSummaryScreen *summaryScreen, u8 spriteIndex, u8 param2, u8 type);
static void SetMonAndTypeIcons(PokemonSummaryScreen *summaryScreen);
static void DrawConditionFlash(CellActor *sprite, u32 statValue, u32 highestValue, const s16 *bounds);

// the summary screen refers to the contest stats in the order they appear in the condition
// screen clock-wise, not the order used elsewhere
enum PSSContestType {
    PSS_CONTEST_TYPE_COOL = 0,
    PSS_CONTEST_TYPE_BEAUTY,
    PSS_CONTEST_TYPE_CUTE,
    PSS_CONTEST_TYPE_SMART,
    PSS_CONTEST_TYPE_TOUGH,
};

enum ConditionFlashBounds {
    FLASH_MAX_X = 0,
    FLASH_MAX_Y,
    FLASH_MIN_X,
    FLASH_MIN_Y,

    FLASH_BOUNDS_MAX,
};

#define MAX_SHEEN_SPRITES           PSS_SHEEN_SPRITES_END - PSS_SHEEN_SPRITES_START + 1
#define MAX_CONDITION_ARROW_SPRITES PSS_CONDITION_ARROW_SPRITES_END - PSS_CONDITION_ARROW_SPRITES_START + 1
#define MAX_CONDITION_FLASH_SPRITES PSS_CONDITION_FLASH_SPRITES_END - PSS_CONDITION_FLASH_SPRITES_START + 1

#define RIBBON_CURSOR_BASE_X 132
#define RIBBON_CURSOR_BASE_Y 56
#define RIBBON_SPACING_X     32
#define RIBBON_SPACING_Y     40

#define MOVE_SELECTOR_X      194
#define MOVE_SELECTOR_BASE_Y 48
#define PIXELS_BETWEEN_MOVES 32

#define CENTERED_TAB_POS_X  188
#define FOCUSED_TAB_WIDTH   24
#define UNFOCUSED_TAB_WIDTH 16

#define PAGE_ARROW_LEFT_X  -12
#define PAGE_ARROW_RIGHT_X -4
#define PAGE_ARROW_Y       24

// info page type icons
#define INFO_SOLO_MON_TYPE_ICON_X 216
#define INFO_MON_TYPE_ICON_1_X    199
#define INFO_MON_TYPE_ICON_2_X    233
#define INFO_MON_TYPE_ICON_Y      80

// moves page type icons
#define MOVES_MON_TYPE_ICON_1_X 63
#define MOVES_MON_TYPE_ICON_2_X 97
#define MOVES_MON_TYPE_ICON_Y   52

#define MOVE_TYPE_ICON_X      151
#define MOVE_TYPE_ICON_BASE_Y 42

#define MOVE_CATEGORY_ICON_X 108
#define MOVE_CATEGORY_ICON_Y 72

// contest stat dot position info for the contest move info
#define COOL_MAX_X 88
#define COOL_MIN_X 88
#define COOL_MAX_Y 49
#define COOL_MIN_Y 73

#define BEAUTY_MAX_X 110
#define BEAUTY_MIN_X 88
#define BEAUTY_MAX_Y 65
#define BEAUTY_MIN_Y 73

#define CUTE_MAX_X 103
#define CUTE_MIN_X 88
#define CUTE_MAX_Y 92
#define CUTE_MIN_Y 73

#define SMART_MAX_X 72
#define SMART_MIN_X 87
#define SMART_MAX_Y 92
#define SMART_MIN_Y 73

#define TOUGH_MAX_X 65
#define TOUGH_MIN_X 87
#define TOUGH_MAX_Y 65
#define TOUGH_MIN_Y 73

#define DOT_MAX_POS 300
#define DOT_MIN_POS 44

static const UnkStruct_ov7_0224F358 Unk_020F41A8[] = {
    [PSS_SPRITE_TAB_INFO] = { 0x1, 0x80, 0x18, 0x0, 0x0, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_MEMO] = { 0x1, 0x90, 0x18, 0x0, 0x1, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_SKILLS] = { 0x1, 0xA0, 0x18, 0x0, 0x2, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_BATTLE_MOVES] = { 0x1, 0xB0, 0x18, 0x0, 0x3, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_CONDITION] = { 0x1, 0xC0, 0x18, 0x0, 0x4, 0x1, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_CONTEST_MOVES] = { 0x1, 0xD0, 0x18, 0x0, 0x5, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_RIBBONS] = { 0x1, 0xE0, 0x18, 0x0, 0x6, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_TAB_EXIT] = { 0x1, 0xF0, 0x18, 0x0, 0x7, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CAUGHT_BALL] = { 0x0, 0x10, 0x20, 0x0, 0x0, 0x0, 0xC, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_SELECTOR_1] = { 0x2, 0xC2, 0x30, 0x0, 0x0, 0x1, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_SELECTOR_2] = { 0x2, 0xC2, 0x30, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MON_TYPE_ICON_1] = { 0x3, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MON_TYPE_ICON_2] = { 0x4, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_TYPE_ICON_1] = { 0x5, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_TYPE_ICON_2] = { 0x6, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_TYPE_ICON_3] = { 0x7, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_TYPE_ICON_4] = { 0x8, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_TYPE_ICON_5] = { 0x9, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MOVE_CATEGORY_ICON] = { 0xA, 0x0, 0x0, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MON_ICON] = { 0xB, 0x18, 0x30, 0x0, 0x0, 0x0, 0x4, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_STATUS_ICON] = { 0xC, 0x50, 0x34, 0x0, 0x0, 0x0, 0x6, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_PAGE_ARROW_LEFT] = { 0xE, 0x0, 0x18, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_PAGE_ARROW_RIGHT] = { 0xE, 0x0, 0x18, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_CIRCLE] = { 0x12, 0x30, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_TRIANGLE] = { 0x13, 0x38, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_SQUARE] = { 0x14, 0x40, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_HEART] = { 0x15, 0x48, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_STAR] = { 0x16, 0x50, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_MARKING_DIAMOND] = { 0x17, 0x58, 0x96, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_1] = { 0xD, 0x98, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_2] = { 0xD, 0xA0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_3] = { 0xD, 0xA8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_4] = { 0xD, 0xB0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_5] = { 0xD, 0xB8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_6] = { 0xD, 0xC0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_7] = { 0xD, 0xC8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_8] = { 0xD, 0xD0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_9] = { 0xD, 0xD8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_10] = { 0xD, 0xE0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_11] = { 0xD, 0xE8, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHEEN_12] = { 0xD, 0xF0, 0xA8, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_BUTTON_PULSE] = { 0xF, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_ARROW_COOL] = { 0x10, 0xD0, 0x30, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_ARROW_BEAUTY] = { 0x10, 0xE0, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_ARROW_CUTE] = { 0x10, 0xD8, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_ARROW_SMART] = { 0x10, 0x90, 0x78, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_ARROW_TOUGH] = { 0x10, 0x88, 0x58, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_A_BUTTON] = { 0x11, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONTEST_STAT_DOT_COOL] = { 0x19, 0x0, 0x0, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY] = { 0x19, 0x0, 0x0, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONTEST_STAT_DOT_CUTE] = { 0x19, 0x0, 0x0, 0x0, 0x3, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONTEST_STAT_DOT_SMART] = { 0x19, 0x0, 0x0, 0x0, 0x2, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONTEST_STAT_DOT_TOUGH] = { 0x19, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_SHINY_ICON] = { 0x18, 0x62, 0x48, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_POKERUS_CURED_ICON] = { 0x18, 0x62, 0x84, 0x0, 0x1, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_1] = { 0x1A, 0x84, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_2] = { 0x1B, 0xA4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_3] = { 0x1C, 0xC4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_4] = { 0x1D, 0xE4, 0x38, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_5] = { 0x1E, 0x84, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_6] = { 0x1F, 0xA4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_7] = { 0x20, 0xC4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_8] = { 0x21, 0xE4, 0x60, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_9] = { 0x22, 0x84, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_10] = { 0x23, 0xA4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_11] = { 0x24, 0xC4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_12] = { 0x25, 0xE4, 0x88, 0x0, 0x0, 0x0, 0x0, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_CURSOR] = { 0x26, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_ARROW_UP] = { 0x27, 0xB4, 0x20, 0x0, 0x1, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_ARROW_DOWN] = { 0x27, 0xB4, 0x78, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_RIBBON_FLASH] = { 0x28, 0x8, 0x84, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_FLASH_COOL] = { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_FLASH_BEAUTY] = { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_FLASH_CUTE] = { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_FLASH_SMART] = { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_CONDITION_FLASH_TOUGH] = { 0x29, 0x84, 0x38, 0x0, 0x0, 0x0, 0x2, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 },
    [PSS_SPRITE_POKERUS_ICON] = { 0x2A, 0x4C, 0x30, 0x0, 0x0, 0x0, 0x1, NNS_G2D_VRAM_TYPE_2DMAIN, 0x0, 0x0, 0x0, 0x0 }
};

static const u8 sBallIDToPaletteNum[] = {
    [ITEM_NONE] = 2,
    [ITEM_MASTER_BALL] = 0,
    [ITEM_ULTRA_BALL] = 2,
    [ITEM_GREAT_BALL] = 2,
    [ITEM_POKE_BALL] = 0,
    [ITEM_SAFARI_BALL] = 1,
    [ITEM_NET_BALL] = 1,
    [ITEM_DIVE_BALL] = 1,
    [ITEM_NEST_BALL] = 1,
    [ITEM_REPEAT_BALL] = 2,
    [ITEM_TIMER_BALL] = 2,
    [ITEM_LUXURY_BALL] = 2,
    [ITEM_PREMIER_BALL] = 2,
    [ITEM_DUSK_BALL] = 3,
    [ITEM_HEAL_BALL] = 3,
    [ITEM_QUICK_BALL] = 2,
    [ITEM_CHERISH_BALL] = 0,
};

void PokemonSummaryScreen_InitSpriteResources(PokemonSummaryScreen *summaryScreen)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, TRUE);
    VRAMTransferManager_New(32, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    summaryScreen->renderer = sub_0200C6E4(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->gfxHandler = sub_0200C704(summaryScreen->renderer);

    UnkStruct_ov104_0224133C v0 = {
        0,
        128,
        0,
        32,
        0,
        128,
        0,
        32,
    };

    UnkStruct_ov104_022412F4 v1 = {
        77,
        1024,
        1024,
        GX_OBJVRAMMODE_CHAR_1D_32K,
        GX_OBJVRAMMODE_CHAR_1D_32K
    };

    sub_0200C73C(summaryScreen->renderer, &v0, &v1, 32);
    sub_0200C7C0(summaryScreen->renderer, summaryScreen->gfxHandler, PSS_SPRITE_MAX);

    UnkStruct_ov7_0224F2EC v2 = {
        "data/pst_chr.resdat",
        "data/pst_pal.resdat",
        "data/pst_cell.resdat",
        "data/pst_canm.resdat",
        NULL,
        NULL,
        "data/pst_h.cldat"
    };

    sub_0200C8F0(summaryScreen->renderer, summaryScreen->gfxHandler, &v2);
}

void PokemonSummaryScreen_FreeSpriteResources(PokemonSummaryScreen *summaryScreen)
{
    sub_0200C8B0(summaryScreen->renderer, summaryScreen->gfxHandler);
    sub_0200C8D4(summaryScreen->renderer);
}

void PokemonSummaryScreen_UpdateArrowAndPulseAnims(PokemonSummaryScreen *summaryScreen)
{
    CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_LEFT], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_RIGHT], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_RIBBON_ARROW_UP], FX32_ONE);
    CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_RIBBON_ARROW_DOWN], FX32_ONE);
}

void PokemonSummaryScreen_SetDefaultSpriteStates(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < PSS_SPRITE_MAX; i++) {
        summaryScreen->sprites[i] = sub_0200CA08(summaryScreen->renderer, summaryScreen->gfxHandler, &Unk_020F41A8[i]);
    }

    SetMonAndTypeIcons(summaryScreen);

    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_ARROW_COOL], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_ARROW_BEAUTY], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_ARROW_CUTE], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_ARROW_SMART], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_ARROW_TOUGH], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_COOL], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_CUTE], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_SMART], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_TOUGH], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_COOL], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_BEAUTY], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_CUTE], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_SMART], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_TOUGH], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_POKERUS_ICON], FALSE);
}

static u8 CalcPageTabsBaseXPos(PokemonSummaryScreen *summaryScreen)
{
    u8 page, visiblePageCount = 0;

    for (page = 0; page < PSS_PAGE_MAX; page++) {
        if (PokemonSummaryScreen_PageIsVisble(summaryScreen, page) != FALSE) {
            visiblePageCount++;
        }
    }

    return CENTERED_TAB_POS_X - (FOCUSED_TAB_WIDTH + (visiblePageCount - 1) * UNFOCUSED_TAB_WIDTH) / 2;
}

void PokemonSummaryScreen_UpdatePageTabSprites(PokemonSummaryScreen *summaryScreen)
{
    s16 x, y;
    u16 activeAnim;
    u8 page;

    s16 baseXPos = CalcPageTabsBaseXPos(summaryScreen);
    CellActor **sprites = &summaryScreen->sprites[0];
    u8 visiblePageCount = 0;

    for (page = 0; page < PSS_PAGE_MAX; page++) {
        if (PokemonSummaryScreen_PageIsVisble(summaryScreen, page) == FALSE) {
            CellActor_SetDrawFlag(sprites[page], FALSE);
            continue;
        }

        activeAnim = CellActor_GetActiveAnim(sprites[page]);

        if (summaryScreen->page == page) {
            if (activeAnim < 8) {
                CellActor_SetAnim(sprites[page], activeAnim + 8);
            }
        } else {
            if (activeAnim >= 8) {
                CellActor_SetAnim(sprites[page], activeAnim - 8);
            }
        }

        sub_0200D50C(sprites[page], &x, &y);

        if (summaryScreen->page >= page) {
            x = baseXPos + visiblePageCount * UNFOCUSED_TAB_WIDTH;
        } else {
            x = baseXPos + FOCUSED_TAB_WIDTH + (visiblePageCount - 1) * UNFOCUSED_TAB_WIDTH;
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[page], x, y);
        CellActor_SetDrawFlag(sprites[page], TRUE);

        visiblePageCount++;
    }
}

void PokemonSummaryScreen_SetPageArrowsPos(PokemonSummaryScreen *summaryScreen)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
    }

    u8 baseXPos = CalcPageTabsBaseXPos(summaryScreen);

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_LEFT], baseXPos + PAGE_ARROW_LEFT_X, PAGE_ARROW_Y);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_RIGHT], CENTERED_TAB_POS_X + (CENTERED_TAB_POS_X - baseXPos) + PAGE_ARROW_RIGHT_X, PAGE_ARROW_Y);
}

void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        showArrows = FALSE;
    }

    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_LEFT], showArrows);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_PAGE_ARROW_RIGHT], showArrows);
}

void PokemonSummaryScreen_SetCaughtBallGfx(PokemonSummaryScreen *summaryScreen)
{
    u32 ballMember;

    if (summaryScreen->monData.caughtBall == ITEM_NONE) {
        ballMember = master_ball_NCGR;
    } else {
        ballMember = master_ball_NCGR + summaryScreen->monData.caughtBall - 1;
    }

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, ballMember, FALSE, 0);
    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, balls_0_NCLR + sBallIDToPaletteNum[summaryScreen->monData.caughtBall], FALSE, 6);
}

void PokemonSummaryScreen_UpdateStatusIcon(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.status == 7) {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_STATUS_ICON], FALSE);
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_POKERUS_ICON], FALSE);
    } else if (summaryScreen->monData.status != 0) {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_POKERUS_ICON], FALSE);
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_STATUS_ICON], TRUE);
        CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_STATUS_ICON], summaryScreen->monData.status);
    } else {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_POKERUS_ICON], TRUE);
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_STATUS_ICON], FALSE);
    }
}

static void SetMonAndTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_SetMonTypeIcons(summaryScreen);

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (summaryScreen->monData.moves[i] == MOVE_NONE) {
            continue;
        }

        SetTypeIcon(summaryScreen, PSS_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
    }

    PokemonSummaryScreen_SetMonIcon(summaryScreen);
}

void PokemonSummaryScreen_UpdateTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    u16 i;
    for (i = PSS_SPRITE_MON_TYPE_ICON_1; i <= PSS_SPRITE_MON_ICON; i++) {
        SpriteActor_DrawSprite(summaryScreen->sprites[i], FALSE);
    }

    switch (summaryScreen->page) {
    case PSS_PAGE_INFO:
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], TRUE);

        if (summaryScreen->monData.type1 == summaryScreen->monData.type2) {
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], INFO_SOLO_MON_TYPE_ICON_X, INFO_MON_TYPE_ICON_Y);
        } else {
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], INFO_MON_TYPE_ICON_1_X, INFO_MON_TYPE_ICON_Y);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], INFO_MON_TYPE_ICON_2_X, INFO_MON_TYPE_ICON_Y);
        }
        break;
    case PSS_PAGE_BATTLE_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            SetTypeIcon(summaryScreen, PSS_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + i], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            SetTypeIcon(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_TYPE));
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], TRUE);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    case PSS_PAGE_CONTEST_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            SetTypeIcon(summaryScreen, PSS_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + i], 1);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            SetTypeIcon(summaryScreen, PSS_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], 1);
            SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    }
}

void PokemonSummaryScreen_SetMonTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    SetTypeIcon(summaryScreen, PSS_SPRITE_MON_TYPE_ICON_1, 3, summaryScreen->monData.type1);
    SetTypeIcon(summaryScreen, PSS_SPRITE_MON_TYPE_ICON_2, 4, summaryScreen->monData.type2);
}

static void SetTypeIcon(PokemonSummaryScreen *summaryScreen, u8 spriteIndex, u8 param2, u8 type)
{
    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, sub_0207C944(), sub_0207C908(type), 1, param2);
    sub_0200D414(summaryScreen->sprites[spriteIndex], sub_0207C92C(type) + 3);
}

static void GetMoveTypeIconPos(PokemonSummaryScreen *summaryScreen, u8 *moveIndex, s16 *outX, s16 *outY)
{
    s16 newYPos = MOVE_TYPE_ICON_BASE_Y + *moveIndex * PIXELS_BETWEEN_MOVES;

    for (s16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        sub_0200D50C(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + i], outX, outY);

        if (newYPos == *outY) {
            *moveIndex = i;
            break;
        }
    }
}

void PokemonSummaryScreen_SwapMoveTypeIcons(PokemonSummaryScreen *summaryScreen, u8 moveIndex1, u8 moveIndex2)
{
    s16 xPos1, yPos1, xPos2, yPos2;

    GetMoveTypeIconPos(summaryScreen, &moveIndex1, &xPos1, &yPos1);
    GetMoveTypeIconPos(summaryScreen, &moveIndex2, &xPos2, &yPos2);

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + moveIndex1], xPos2, yPos2);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_MOVE_TYPE_ICON_SPRITE_START + moveIndex2], xPos1, yPos1);
}

void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move)
{
    u32 category = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, sub_0207CAC0(), sub_0207CA90(category), 1, 10);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_MOVE_CATEGORY_ICON], sub_0207CAA8(category) + 3);
}

void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], MOVE_SELECTOR_X, MOVE_SELECTOR_BASE_Y + summaryScreen->cursor * PIXELS_BETWEEN_MOVES);
}

void PokemonSummaryScreen_SetMoveSelector2Pos(PokemonSummaryScreen *summaryScreen)
{
    s16 x, y;
    sub_0200D50C(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_1], &x, &y);
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], x, y);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_MOVE_SELECTOR_2], TRUE);
}

void PokemonSummaryScreen_InitSheenSprites(PokemonSummaryScreen *summaryScreen)
{
    summaryScreen->sheenState = 0;
    summaryScreen->sheenCount = 0;
    summaryScreen->sheenPos = 0;

    if (summaryScreen->monData.sheen == 0) {
        summaryScreen->sheenMax = 0;
    } else if (summaryScreen->monData.sheen == MAX_POKEMON_SHEEN) {
        summaryScreen->sheenMax = MAX_SHEEN_SPRITES;
    } else {
        summaryScreen->sheenMax = (((MAX_SHEEN_SPRITES << 8) / MAX_POKEMON_SHEEN) * summaryScreen->monData.sheen) >> 8;
    }

    for (u32 spriteIndex = PSS_SHEEN_SPRITES_START; spriteIndex <= PSS_SHEEN_SPRITES_END; spriteIndex++) {
        CellActor_SetDrawFlag(summaryScreen->sprites[spriteIndex], FALSE);
        SpriteActor_SetAnimFrame(summaryScreen->sprites[spriteIndex], 0);
    }
}

void PokemonSummaryScreen_DrawSheenSprites(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page != PSS_PAGE_CONDITION) {
        return;
    }

    if (summaryScreen->sheenMax == 0) {
        return;
    }

    u32 i;

    switch (summaryScreen->sheenState) {
    case 0:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 8) {
            summaryScreen->sheenState = 1;
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenPos = 0;
        }
        break;
    case 1:
        if (summaryScreen->sheenCount == 0) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], TRUE);
            SpriteActor_SetAnimFrame(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);
            CellActor_SetAnim(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);

            summaryScreen->sheenPos++;

            if (summaryScreen->sheenPos == summaryScreen->sheenMax) {
                summaryScreen->sheenState = 2;
                break;
            }
        }

        summaryScreen->sheenCount = (summaryScreen->sheenCount + 1) % 10;
        break;
    case 2:
        if (CellActor_GetDrawFlag(summaryScreen->sprites[PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax - 1]) == FALSE) {
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 3;
            break;
        }
        break;
    case 3:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            for (i = PSS_SHEEN_SPRITES_START; i < PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
                CellActor_SetDrawFlag(summaryScreen->sprites[i], TRUE);
                SpriteActor_SetAnimFrame(summaryScreen->sprites[i], FALSE);
                CellActor_SetAnim(summaryScreen->sprites[i], FALSE);
            }

            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 4;
        }
        break;
    case 4:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            summaryScreen->sheenState = 0;
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenPos = 0;
        }
        break;
    }

    for (i = PSS_SHEEN_SPRITES_START; i < PSS_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
        if (CellActor_GetDrawFlag(summaryScreen->sprites[i]) == FALSE) {
            continue;
        }

        CellActor_UpdateAnim(summaryScreen->sprites[i], FX32_ONE);

        if (CellActor_GetAnimFrame(summaryScreen->sprites[i]) == 6) {
            CellActor_SetDrawFlag(summaryScreen->sprites[i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateMiscMonDataSprites(PokemonSummaryScreen *summaryScreen)
{
    for (u32 marking = 0; marking < MAX_POKEMON_MARKINGS; marking++) {
        if (summaryScreen->monData.markings & (1 << marking)) {
            CellActor_SetAnim(summaryScreen->sprites[PSS_MARKING_SPRITES_START + marking], TRUE);
        } else {
            CellActor_SetAnim(summaryScreen->sprites[PSS_MARKING_SPRITES_START + marking], FALSE);
        }
    }

    if (summaryScreen->monData.isShiny == TRUE && summaryScreen->monData.isEgg == FALSE) {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_SHINY_ICON], TRUE);
    } else {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_SHINY_ICON], FALSE);
    }

    if (summaryScreen->monData.pokerus == PSS_POKERUS_CURED) {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_POKERUS_CURED_ICON], TRUE);
    } else {
        SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_POKERUS_CURED_ICON], FALSE);
    }
}

void PokemonSummaryScreen_ButtonPulseAnim(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], TRUE);
    SpriteActor_SetAnimFrame(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], 0);
    CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], 0);

    s16 x, y;
    PokemonSummaryScreen_CalcSubscreenButtonPulsePos(summaryScreen, &x, &y);

    if (summaryScreen->subscreenType == PSS_SUBSCREEN_TYPE_NORMAL) {
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], x, y + 192);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], x - 4, y + 192);
    }
}

void PokemonSummaryScreen_HideButtonPulse(PokemonSummaryScreen *summaryScreen)
{
    if (CellActor_GetAnimFrame(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE]) == 2) {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_BUTTON_PULSE], FALSE);
    }
}

void PokemonSummaryScreen_UpdateConditionArrowSprites(PokemonSummaryScreen *summaryScreen)
{
    for (u8 i = 0; i < MAX_CONDITION_ARROW_SPRITES; i++) {
        if (summaryScreen->pageState & (1 << i)) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_CONDITION_ARROW_SPRITES_START + i], TRUE);
        }
    }
}

void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window)
{
    if (window == NULL) {
        CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], FALSE);
        return;
    }

    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], Window_GetXPos(window) * 8 - 10, 8);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_A_BUTTON], TRUE);
}

void PokemonSummaryScreen_SetMonIcon(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummaryScreen_MonData(summaryScreen);
    u32 iconIndex;

    if (summaryScreen->data->dataType == PSS_DATA_BOX_MON) {
        iconIndex = BoxPokemon_IconSpriteIndex(monData);
    } else {
        iconIndex = Pokemon_IconSpriteIndex(monData);
    }

    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, iconIndex, 0, 11);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_MON_ICON], PokeIconPaletteIndex(summaryScreen->monData.species, summaryScreen->monData.form, summaryScreen->monData.isEgg) + 7);
    CellActor_SetFlipMode(summaryScreen->sprites[PSS_SPRITE_MON_ICON], (PokemonPersonalData_GetFormValue(summaryScreen->monData.species, summaryScreen->monData.form, 28) ^ 1));
}

void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen)
{
    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 5);

    if (summaryScreen->page == PSS_PAGE_BATTLE_MOVES) {
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_ICON], 24, 48);
    } else {
        SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_MON_ICON], 32, 68);
    }

    SpriteActor_DrawSprite(summaryScreen->sprites[PSS_SPRITE_MON_ICON], TRUE);
}

static s16 CalcContestStatDotPos(u32 statValue, s16 max, s16 min)
{
    u32 pos;

    statValue += DOT_MIN_POS;

    if (min > max) {
        pos = ((min - max) * statValue) << 16;
        pos = (pos / DOT_MAX_POS) >> 16;

        return min + (s16)pos * -1;
    }

    pos = ((max - min) * statValue) << 16;
    pos = (pos / DOT_MAX_POS) >> 16;

    return min + (s16)pos;
}

void PokemonSummaryScreen_DrawContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_COOL], CalcContestStatDotPos(summaryScreen->monData.cool, COOL_MAX_X, COOL_MIN_X), CalcContestStatDotPos(summaryScreen->monData.cool, COOL_MAX_Y, COOL_MIN_Y));
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY], CalcContestStatDotPos(summaryScreen->monData.beauty, BEAUTY_MAX_X, BEAUTY_MIN_X), CalcContestStatDotPos(summaryScreen->monData.beauty, BEAUTY_MAX_Y, BEAUTY_MIN_Y));
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_CUTE], CalcContestStatDotPos(summaryScreen->monData.cute, CUTE_MAX_X, CUTE_MIN_X), CalcContestStatDotPos(summaryScreen->monData.cute, CUTE_MAX_Y, CUTE_MIN_Y));
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_SMART], CalcContestStatDotPos(summaryScreen->monData.smart, SMART_MAX_X, SMART_MIN_X), CalcContestStatDotPos(summaryScreen->monData.smart, SMART_MAX_Y, SMART_MIN_Y));
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_TOUGH], CalcContestStatDotPos(summaryScreen->monData.tough, TOUGH_MAX_X, TOUGH_MIN_X), CalcContestStatDotPos(summaryScreen->monData.tough, TOUGH_MAX_Y, TOUGH_MIN_Y));

    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_COOL], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_CUTE], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_SMART], TRUE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_TOUGH], TRUE);
}

void PokemonSummaryScreen_HideContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_COOL], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_BEAUTY], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_CUTE], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_SMART], FALSE);
    CellActor_SetDrawFlag(summaryScreen->sprites[PSS_SPRITE_CONTEST_STAT_DOT_TOUGH], FALSE);
}

static void SetRibbonSpriteGfx(PokemonSummaryScreen *summaryScreen, u8 ribbonNum, u8 ribbonIndex)
{
    sub_0200D948(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, Ribbon_GetData(ribbonNum, RIBBON_DATA_SPRITE_ID), 0, 26 + ribbonIndex);
    sub_0200D414(summaryScreen->sprites[PSS_SPRITE_RIBBON_1 + ribbonIndex], Ribbon_GetData(ribbonNum, RIBBON_DATA_PALETTE_NUM) + 7);
}

void PokemonSummaryScreen_UpdateRibbonSprites(PokemonSummaryScreen *summaryScreen)
{
    u16 i;
    for (i = PSS_RIBBON_SPRITES_START; i <= PSS_SPRITE_RIBBON_FLASH; i++) {
        CellActor_SetDrawFlag(summaryScreen->sprites[i], FALSE);
    }

    if (summaryScreen->page != PSS_PAGE_RIBBONS) {
        return;
    }

    sub_0200D97C(summaryScreen->renderer, summaryScreen->gfxHandler, NARC_INDEX_GRAPHIC__PL_PST_GRA, ribbons_NCLR, FALSE, 5);

    for (i = 0; i < RIBBONS_PER_PAGE; i++) {
        if (i < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_RIBBON_SPRITES_START + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        }
    }

    CellActor_SetAnim(summaryScreen->sprites[PSS_SPRITE_RIBBON_FLASH], 0);
}

void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < RIBBONS_PER_ROW * 2; i++) {
        if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + i) < summaryScreen->ribbonMax) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_RIBBON_SPRITES_START + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonNumAt(summaryScreen, i), i);
        } else {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_RIBBON_SPRITES_START + i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen)
{
    SpriteActor_SetPositionXY(summaryScreen->sprites[PSS_SPRITE_RIBBON_CURSOR], RIBBON_CURSOR_BASE_X + (summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) * RIBBON_SPACING_X, RIBBON_CURSOR_BASE_Y + (summaryScreen->ribbonCol / RIBBONS_PER_ROW) * RIBBON_SPACING_Y);
}

void PokemonSummaryScreen_UpdateRibbonFlashAnim(PokemonSummaryScreen *summaryScreen)
{
    if (CellActor_GetDrawFlag(summaryScreen->sprites[PSS_SPRITE_RIBBON_FLASH]) == TRUE) {
        CellActor_UpdateAnim(summaryScreen->sprites[PSS_SPRITE_RIBBON_FLASH], FX32_ONE);
    }
}

static const s16 sConditionFlashCoordBounds[][FLASH_BOUNDS_MAX] = {
    [PSS_CONTEST_TYPE_COOL] = { 180, 57, 180, 90 },
    [PSS_CONTEST_TYPE_BEAUTY] = { 213, 85, 184, 93 },
    [PSS_CONTEST_TYPE_CUTE] = { 200, 125, 182, 97 },
    [PSS_CONTEST_TYPE_SMART] = { 159, 125, 178, 97 },
    [PSS_CONTEST_TYPE_TOUGH] = { 146, 85, 176, 93 }
};

void PokemonSummaryScreen_UpdateConditionFlashSprites(PokemonSummaryScreen *summaryScreen, BOOL showFlashes)
{
    if (showFlashes == FALSE) {
        for (u16 i = 0; i < MAX_CONDITION_FLASH_SPRITES; i++) {
            CellActor_SetDrawFlag(summaryScreen->sprites[PSS_CONDITION_FLASH_SPRITES_START + i], FALSE);
        }
    } else {
        u16 highestValue = summaryScreen->monData.cool;

        if (highestValue < summaryScreen->monData.beauty) {
            highestValue = summaryScreen->monData.beauty;
        }

        if (highestValue < summaryScreen->monData.cute) {
            highestValue = summaryScreen->monData.cute;
        }

        if (highestValue < summaryScreen->monData.smart) {
            highestValue = summaryScreen->monData.smart;
        }

        if (highestValue < summaryScreen->monData.tough) {
            highestValue = summaryScreen->monData.tough;
        }

        DrawConditionFlash(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_COOL], summaryScreen->monData.cool, highestValue, sConditionFlashCoordBounds[PSS_CONTEST_TYPE_COOL]);
        DrawConditionFlash(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_BEAUTY], summaryScreen->monData.beauty, highestValue, sConditionFlashCoordBounds[PSS_CONTEST_TYPE_BEAUTY]);
        DrawConditionFlash(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_CUTE], summaryScreen->monData.cute, highestValue, sConditionFlashCoordBounds[PSS_CONTEST_TYPE_CUTE]);
        DrawConditionFlash(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_SMART], summaryScreen->monData.smart, highestValue, sConditionFlashCoordBounds[PSS_CONTEST_TYPE_SMART]);
        DrawConditionFlash(summaryScreen->sprites[PSS_SPRITE_CONDITION_FLASH_TOUGH], summaryScreen->monData.tough, highestValue, sConditionFlashCoordBounds[PSS_CONTEST_TYPE_TOUGH]);
    }
}

static void DrawConditionFlash(CellActor *sprite, u32 statValue, u32 highestValue, const s16 *bounds)
{
    if (statValue == 0 || statValue != highestValue) {
        CellActor_SetDrawFlag(sprite, FALSE);
        return;
    }

    CellActor_SetDrawFlag(sprite, TRUE);

    s32 x, y;

    if (bounds[FLASH_MAX_X] >= bounds[FLASH_MIN_X]) {
        x = bounds[FLASH_MIN_X] + (((((bounds[FLASH_MAX_X] - bounds[FLASH_MIN_X]) << 8) / 256) * statValue) >> 8);
    } else {
        x = bounds[FLASH_MIN_X] - (((((bounds[FLASH_MIN_X] - bounds[FLASH_MAX_X]) << 8) / 256) * statValue) >> 8);
    }

    if (bounds[FLASH_MAX_Y] >= bounds[FLASH_MIN_Y]) {
        y = bounds[FLASH_MIN_Y] + (((((bounds[FLASH_MAX_Y] - bounds[FLASH_MIN_Y]) << 8) / 256) * statValue) >> 8);
    } else {
        y = bounds[FLASH_MIN_Y] - (((((bounds[FLASH_MIN_Y] - bounds[FLASH_MAX_Y]) << 8) / 256) * statValue) >> 8);
    }

    SpriteActor_SetPositionXY(sprite, x, y);
    SpriteActor_SetAnimFrame(sprite, 0);
    CellActor_SetAnim(sprite, 0);
}

void PokemonSummaryScreen_UpdateConditionFlashAnim(PokemonSummaryScreen *summaryScreen)
{
    for (u32 i = 0; i < MAX_CONDITION_FLASH_SPRITES; i++) {
        CellActor_UpdateAnim(summaryScreen->sprites[PSS_CONDITION_FLASH_SPRITES_START + i], FX32_ONE);
    }
}
