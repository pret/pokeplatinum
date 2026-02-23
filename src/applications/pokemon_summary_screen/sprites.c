#include "applications/pokemon_summary_screen/sprites.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"
#include "constants/pokemon.h"
#include "generated/items.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/subscreen.h"

#include "bg_window.h"
#include "gx_layers.h"
#include "move_table.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "ribbon.h"
#include "sprite.h"
#include "sprite_system.h"
#include "type_icon.h"
#include "vram_transfer.h"

#include "res/graphics/pokemon_summary_screen/pl_pst_gra.naix"

static void SetTypeIcon(PokemonSummaryScreen *summaryScreen, u8 spriteIndex, u8 param2, u8 type);
static void SetMonAndTypeIcons(PokemonSummaryScreen *summaryScreen);
static void DrawConditionFlash(Sprite *sprite, u32 statValue, u32 highestValue, const s16 *bounds);

enum SummaryContestType {
    SUMMARY_CONTEST_TYPE_COOL = 0,
    SUMMARY_CONTEST_TYPE_BEAUTY,
    SUMMARY_CONTEST_TYPE_CUTE,
    SUMMARY_CONTEST_TYPE_SMART,
    SUMMARY_CONTEST_TYPE_TOUGH,
};

enum ConditionFlashBounds {
    FLASH_MAX_X = 0,
    FLASH_MAX_Y,
    FLASH_MIN_X,
    FLASH_MIN_Y,

    FLASH_BOUNDS_MAX,
};

#define MAX_SHEEN_SPRITES           SUMMARY_SHEEN_SPRITES_END - SUMMARY_SHEEN_SPRITES_START + 1
#define MAX_CONDITION_ARROW_SPRITES SUMMARY_CONDITION_ARROW_SPRITES_END - SUMMARY_CONDITION_ARROW_SPRITES_START + 1
#define MAX_CONDITION_FLASH_SPRITES SUMMARY_CONDITION_FLASH_SPRITES_END - SUMMARY_CONDITION_FLASH_SPRITES_START + 1

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

#define BATTLE_MOVE_MON_ICON_X 24
#define BATTLE_MOVE_MON_ICON_Y 48

#define CONTEST_MOVE_MON_ICON_X 32
#define CONTEST_MOVE_MON_ICON_Y 68

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

#define TAP_CIRCLE_BASE_Y 192

static const SpriteTemplateFromResourceHeader sSummaryScreenSpriteTemplates[] = {
    [SUMMARY_SPRITE_TAB_INFO] = {
        .resourceHeaderID = 1,
        .x = 128,
        .y = 24,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_MEMO] = {
        .resourceHeaderID = 1,
        .x = 144,
        .y = 24,
        .z = 0,
        .animIdx = 1,
        .priority = 1,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_SKILLS] = {
        .resourceHeaderID = 1,
        .x = 160,
        .y = 24,
        .z = 0,
        .animIdx = 2,
        .priority = 1,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_BATTLE_MOVES] = {
        .resourceHeaderID = 1,
        .x = 176,
        .y = 24,
        .z = 0,
        .animIdx = 3,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_CONDITION] = {
        .resourceHeaderID = 1,
        .x = 192,
        .y = 24,
        .z = 0,
        .animIdx = 4,
        .priority = 1,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_CONTEST_MOVES] = {
        .resourceHeaderID = 1,
        .x = 208,
        .y = 24,
        .z = 0,
        .animIdx = 5,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_RIBBONS] = {
        .resourceHeaderID = 1,
        .x = 224,
        .y = 24,
        .z = 0,
        .animIdx = 6,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_TAB_EXIT] = {
        .resourceHeaderID = 1,
        .x = 240,
        .y = 24,
        .z = 0,
        .animIdx = 7,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CAUGHT_BALL] = {
        .resourceHeaderID = 0,
        .x = 16,
        .y = 32,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 12,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_SELECTOR_1] = {
        .resourceHeaderID = 2,
        .x = 194,
        .y = 48,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_SELECTOR_2] = {
        .resourceHeaderID = 2,
        .x = 194,
        .y = 48,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MON_TYPE_ICON_1] = {
        .resourceHeaderID = 3,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MON_TYPE_ICON_2] = {
        .resourceHeaderID = 4,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_TYPE_ICON_1] = {
        .resourceHeaderID = 5,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_TYPE_ICON_2] = {
        .resourceHeaderID = 6,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_TYPE_ICON_3] = {
        .resourceHeaderID = 7,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_TYPE_ICON_4] = {
        .resourceHeaderID = 8,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_TYPE_ICON_5] = {
        .resourceHeaderID = 9,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MOVE_CATEGORY_ICON] = {
        .resourceHeaderID = 10,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MON_ICON] = {
        .resourceHeaderID = 11,
        .x = 24,
        .y = 48,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 4,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_STATUS_ICON] = {
        .resourceHeaderID = 12,
        .x = 80,
        .y = 52,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 6,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_PAGE_ARROW_LEFT] = {
        .resourceHeaderID = 14,
        .x = 0,
        .y = 24,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_PAGE_ARROW_RIGHT] = {
        .resourceHeaderID = 14,
        .x = 0,
        .y = 24,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_CIRCLE] = {
        .resourceHeaderID = 18,
        .x = 48,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_TRIANGLE] = {
        .resourceHeaderID = 19,
        .x = 56,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_SQUARE] = {
        .resourceHeaderID = 20,
        .x = 64,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_HEART] = {
        .resourceHeaderID = 21,
        .x = 72,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_STAR] = {
        .resourceHeaderID = 22,
        .x = 80,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_MARKING_DIAMOND] = {
        .resourceHeaderID = 23,
        .x = 88,
        .y = 150,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_1] = {
        .resourceHeaderID = 13,
        .x = 152,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_2] = {
        .resourceHeaderID = 13,
        .x = 160,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_3] = {
        .resourceHeaderID = 13,
        .x = 168,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_4] = {
        .resourceHeaderID = 13,
        .x = 176,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_5] = {
        .resourceHeaderID = 13,
        .x = 184,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_6] = {
        .resourceHeaderID = 13,
        .x = 192,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_7] = {
        .resourceHeaderID = 13,
        .x = 200,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_8] = {
        .resourceHeaderID = 13,
        .x = 208,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_9] = {
        .resourceHeaderID = 13,
        .x = 216,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_10] = {
        .resourceHeaderID = 13,
        .x = 224,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_11] = {
        .resourceHeaderID = 13,
        .x = 232,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHEEN_12] = {
        .resourceHeaderID = 13,
        .x = 240,
        .y = 168,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_BUTTON_TAP_CIRCLE] = {
        .resourceHeaderID = 15,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_ARROW_COOL] = {
        .resourceHeaderID = 16,
        .x = 208,
        .y = 48,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_ARROW_BEAUTY] = {
        .resourceHeaderID = 16,
        .x = 224,
        .y = 88,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_ARROW_CUTE] = {
        .resourceHeaderID = 16,
        .x = 216,
        .y = 120,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_ARROW_SMART] = {
        .resourceHeaderID = 16,
        .x = 144,
        .y = 120,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_ARROW_TOUGH] = {
        .resourceHeaderID = 16,
        .x = 136,
        .y = 88,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_A_BUTTON] = {
        .resourceHeaderID = 17,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL] = {
        .resourceHeaderID = 25,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY] = {
        .resourceHeaderID = 25,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE] = {
        .resourceHeaderID = 25,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 3,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART] = {
        .resourceHeaderID = 25,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 2,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH] = {
        .resourceHeaderID = 25,
        .x = 0,
        .y = 0,
        .z = 0,
        .animIdx = 4,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_SHINY_ICON] = {
        .resourceHeaderID = 24,
        .x = 98,
        .y = 72,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_POKERUS_CURED_ICON] = {
        .resourceHeaderID = 24,
        .x = 98,
        .y = 132,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_1] = {
        .resourceHeaderID = 26,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_2] = {
        .resourceHeaderID = 27,
        .x = 164,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_3] = {
        .resourceHeaderID = 28,
        .x = 196,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_4] = {
        .resourceHeaderID = 29,
        .x = 228,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_5] = {
        .resourceHeaderID = 30,
        .x = 132,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_6] = {
        .resourceHeaderID = 31,
        .x = 164,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_7] = {
        .resourceHeaderID = 32,
        .x = 196,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_8] = {
        .resourceHeaderID = 33,
        .x = 228,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_9] = {
        .resourceHeaderID = 34,
        .x = 132,
        .y = 136,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_10] = {
        .resourceHeaderID = 35,
        .x = 164,
        .y = 136,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_11] = {
        .resourceHeaderID = 36,
        .x = 196,
        .y = 136,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_12] = {
        .resourceHeaderID = 37,
        .x = 228,
        .y = 136,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_CURSOR] = {
        .resourceHeaderID = 38,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_ARROW_UP] = {
        .resourceHeaderID = 39,
        .x = 180,
        .y = 32,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_ARROW_DOWN] = {
        .resourceHeaderID = 39,
        .x = 180,
        .y = 120,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_RIBBON_FLASH] = {
        .resourceHeaderID = 40,
        .x = 8,
        .y = 132,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_FLASH_COOL] = {
        .resourceHeaderID = 41,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_FLASH_BEAUTY] = {
        .resourceHeaderID = 41,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_FLASH_CUTE] = {
        .resourceHeaderID = 41,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_FLASH_SMART] = {
        .resourceHeaderID = 41,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_CONDITION_FLASH_TOUGH] = {
        .resourceHeaderID = 41,
        .x = 132,
        .y = 56,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
    [SUMMARY_SPRITE_POKERUS_ICON] = {
        .resourceHeaderID = 42,
        .x = 76,
        .y = 48,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 1,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
    },
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
    VramTransfer_New(32, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    summaryScreen->spriteSys = SpriteSystem_Alloc(HEAP_ID_POKEMON_SUMMARY_SCREEN);
    summaryScreen->spriteMan = SpriteManager_New(summaryScreen->spriteSys);

    RenderOamTemplate renderOamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };

    CharTransferTemplateWithModes charTransferTemplate = {
        .maxTasks = 77,
        .sizeMain = 1024,
        .sizeSub = 1024,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K
    };

    SpriteSystem_Init(summaryScreen->spriteSys, &renderOamTemplate, &charTransferTemplate, 32);
    SpriteSystem_InitSprites(summaryScreen->spriteSys, summaryScreen->spriteMan, SUMMARY_SPRITE_MAX);

    SpriteResourceDataPaths resourcePaths = {
        "data/pst_chr.resdat",
        "data/pst_pal.resdat",
        "data/pst_cell.resdat",
        "data/pst_canm.resdat",
        NULL,
        NULL,
        "data/pst_h.cldat"
    };

    SpriteSystem_LoadResourceDataFromFilepaths(summaryScreen->spriteSys, summaryScreen->spriteMan, &resourcePaths);
}

void PokemonSummaryScreen_FreeSpriteResources(PokemonSummaryScreen *summaryScreen)
{
    SpriteSystem_DestroySpriteManager(summaryScreen->spriteSys, summaryScreen->spriteMan);
    SpriteSystem_Free(summaryScreen->spriteSys);
}

void PokemonSummaryScreen_UpdateArrowAndTapAnims(PokemonSummaryScreen *summaryScreen)
{
    Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_LEFT], FX32_ONE);
    Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_RIGHT], FX32_ONE);
    Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], FX32_ONE);
    Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_UP], FX32_ONE);
    Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_ARROW_DOWN], FX32_ONE);
}

void PokemonSummaryScreen_SetDefaultSpriteStates(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < SUMMARY_SPRITE_MAX; i++) {
        summaryScreen->sprites[i] = SpriteSystem_NewSpriteFromResourceHeader(summaryScreen->spriteSys, summaryScreen->spriteMan, &sSummaryScreenSpriteTemplates[i]);
    }

    SetMonAndTypeIcons(summaryScreen);

    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_2], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_ARROW_COOL], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_ARROW_BEAUTY], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_ARROW_CUTE], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_ARROW_SMART], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_ARROW_TOUGH], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_A_BUTTON], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_COOL], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_BEAUTY], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_CUTE], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_SMART], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_TOUGH], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_ICON], FALSE);
}

static u8 CalcPageTabsBaseXPos(PokemonSummaryScreen *summaryScreen)
{
    u8 page, visiblePageCount = 0;

    for (page = 0; page < SUMMARY_PAGE_MAX; page++) {
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
    Sprite **sprites = &summaryScreen->sprites[0];
    u8 visiblePageCount = 0;

    for (page = 0; page < SUMMARY_PAGE_MAX; page++) {
        if (PokemonSummaryScreen_PageIsVisble(summaryScreen, page) == FALSE) {
            Sprite_SetDrawFlag(sprites[page], FALSE);
            continue;
        }

        activeAnim = Sprite_GetActiveAnim(sprites[page]);

        if (summaryScreen->page == page) {
            if (activeAnim < 8) {
                Sprite_SetAnim(sprites[page], activeAnim + 8);
            }
        } else {
            if (activeAnim >= 8) {
                Sprite_SetAnim(sprites[page], activeAnim - 8);
            }
        }

        Sprite_GetPositionXY(sprites[page], &x, &y);

        if (summaryScreen->page >= page) {
            x = baseXPos + visiblePageCount * UNFOCUSED_TAB_WIDTH;
        } else {
            x = baseXPos + FOCUSED_TAB_WIDTH + (visiblePageCount - 1) * UNFOCUSED_TAB_WIDTH;
        }

        Sprite_SetPositionXY(summaryScreen->sprites[page], x, y);
        Sprite_SetDrawFlag(sprites[page], TRUE);

        visiblePageCount++;
    }
}

void PokemonSummaryScreen_SetPageArrowsPos(PokemonSummaryScreen *summaryScreen)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        PokemonSummaryScreen_UpdatePageArrows(summaryScreen, FALSE);
    }

    u8 baseXPos = CalcPageTabsBaseXPos(summaryScreen);

    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_LEFT], baseXPos + PAGE_ARROW_LEFT_X, PAGE_ARROW_Y);
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_RIGHT], CENTERED_TAB_POS_X + (CENTERED_TAB_POS_X - baseXPos) + PAGE_ARROW_RIGHT_X, PAGE_ARROW_Y);
}

void PokemonSummaryScreen_UpdatePageArrows(PokemonSummaryScreen *summaryScreen, BOOL showArrows)
{
    if (PokemonSummaryScreen_CountVisiblePages(summaryScreen) <= 1) {
        showArrows = FALSE;
    }

    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_LEFT], showArrows);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_PAGE_ARROW_RIGHT], showArrows);
}

void PokemonSummaryScreen_SetCaughtBallGfx(PokemonSummaryScreen *summaryScreen)
{
    u32 ballMember;

    if (summaryScreen->monData.caughtBall == ITEM_NONE) {
        ballMember = master_ball_NCGR;
    } else {
        ballMember = master_ball_NCGR + summaryScreen->monData.caughtBall - 1;
    }

    SpriteSystem_ReplaceCharResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_GRAPHIC__PL_PST_GRA, ballMember, FALSE, 0);
    SpriteSystem_ReplacePlttResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_GRAPHIC__PL_PST_GRA, balls_0_NCLR + sBallIDToPaletteNum[summaryScreen->monData.caughtBall], FALSE, 6);
}

void PokemonSummaryScreen_UpdateStatusIcon(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.status == SUMMARY_CONDITION_NONE) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_STATUS_ICON], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_ICON], FALSE);
    } else if (summaryScreen->monData.status != SUMMARY_CONDITION_POKERUS) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_ICON], FALSE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_STATUS_ICON], TRUE);
        Sprite_SetAnim(summaryScreen->sprites[SUMMARY_SPRITE_STATUS_ICON], summaryScreen->monData.status);
    } else {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_ICON], TRUE);
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_STATUS_ICON], FALSE);
    }
}

static void SetMonAndTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_SetMonTypeIcons(summaryScreen);

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (summaryScreen->monData.moves[i] == MOVE_NONE) {
            continue;
        }

        SetTypeIcon(summaryScreen, SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
    }

    PokemonSummaryScreen_SetMonIcon(summaryScreen);
}

void PokemonSummaryScreen_UpdateTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    u16 i;
    for (i = SUMMARY_SPRITE_MON_TYPE_ICON_1; i <= SUMMARY_SPRITE_MON_ICON; i++) {
        Sprite_SetDrawFlag2(summaryScreen->sprites[i], FALSE);
    }

    switch (summaryScreen->page) {
    case SUMMARY_PAGE_INFO:
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], TRUE);

        if (summaryScreen->monData.type1 == summaryScreen->monData.type2) {
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], INFO_SOLO_MON_TYPE_ICON_X, INFO_MON_TYPE_ICON_Y);
        } else {
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], INFO_MON_TYPE_ICON_1_X, INFO_MON_TYPE_ICON_Y);
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], TRUE);
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], INFO_MON_TYPE_ICON_2_X, INFO_MON_TYPE_ICON_Y);
        }
        break;
    case SUMMARY_PAGE_BATTLE_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            SetTypeIcon(summaryScreen, SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_TYPE));
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i], TRUE);
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            SetTypeIcon(summaryScreen, SUMMARY_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_TYPE));
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_TYPE_ICON_5], TRUE);
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    case SUMMARY_PAGE_CONTEST_MOVES:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (summaryScreen->monData.moves[i] == MOVE_NONE) {
                continue;
            }

            SetTypeIcon(summaryScreen, SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i, 5 + i, MoveTable_LoadParam(summaryScreen->monData.moves[i], MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i], 1);
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + i * PIXELS_BETWEEN_MOVES);
        }

        if (summaryScreen->data->move != MOVE_NONE) {
            SetTypeIcon(summaryScreen, SUMMARY_SPRITE_MOVE_TYPE_ICON_5, 5 + 4, MoveTable_LoadParam(summaryScreen->data->move, MOVEATTRIBUTE_CONTEST_TYPE) + 18);
            Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_TYPE_ICON_5], 1);
            Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_TYPE_ICON_5], MOVE_TYPE_ICON_X, MOVE_TYPE_ICON_BASE_Y + LEARNED_MOVES_MAX * PIXELS_BETWEEN_MOVES);
        }

        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_1], MOVES_MON_TYPE_ICON_1_X, MOVES_MON_TYPE_ICON_Y);
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_TYPE_ICON_2], MOVES_MON_TYPE_ICON_2_X, MOVES_MON_TYPE_ICON_Y);
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], MOVE_CATEGORY_ICON_X, MOVE_CATEGORY_ICON_Y);
        break;
    }
}

void PokemonSummaryScreen_SetMonTypeIcons(PokemonSummaryScreen *summaryScreen)
{
    SetTypeIcon(summaryScreen, SUMMARY_SPRITE_MON_TYPE_ICON_1, 3, summaryScreen->monData.type1);
    SetTypeIcon(summaryScreen, SUMMARY_SPRITE_MON_TYPE_ICON_2, 4, summaryScreen->monData.type2);
}

static void SetTypeIcon(PokemonSummaryScreen *summaryScreen, u8 spriteIndex, u8 param2, u8 type)
{
    SpriteSystem_ReplaceCharResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, TypeIcon_GetNARC(), TypeIcon_GetChar(type), 1, param2);
    Sprite_SetExplicitPalette2(summaryScreen->sprites[spriteIndex], TypeIcon_GetPltt(type) + 3);
}

static void GetMoveTypeIconPos(PokemonSummaryScreen *summaryScreen, u8 *moveIndex, s16 *outX, s16 *outY)
{
    s16 newYPos = MOVE_TYPE_ICON_BASE_Y + *moveIndex * PIXELS_BETWEEN_MOVES;

    for (s16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        Sprite_GetPositionXY(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + i], outX, outY);

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

    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + moveIndex1], xPos2, yPos2);
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_MOVE_TYPE_ICON_SPRITE_START + moveIndex2], xPos1, yPos1);
}

void PokemonSummaryScreen_UpdateMoveCategoryIcon(PokemonSummaryScreen *summaryScreen, u32 move)
{
    u32 category = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, CategoryIcon_GetNARC(), CategoryIcon_GetChar(category), 1, 10);
    Sprite_SetExplicitPalette2(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_CATEGORY_ICON], CategoryIcon_GetPltt(category) + 3);
}

void PokemonSummaryScreen_UpdateMoveSelectorPos(PokemonSummaryScreen *summaryScreen)
{
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], MOVE_SELECTOR_X, MOVE_SELECTOR_BASE_Y + summaryScreen->cursor * PIXELS_BETWEEN_MOVES);
}

void PokemonSummaryScreen_SetMoveSelector2Pos(PokemonSummaryScreen *summaryScreen)
{
    s16 x, y;
    Sprite_GetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_1], &x, &y);
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_2], x, y);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_MOVE_SELECTOR_2], TRUE);
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

    for (u32 spriteIndex = SUMMARY_SHEEN_SPRITES_START; spriteIndex <= SUMMARY_SHEEN_SPRITES_END; spriteIndex++) {
        Sprite_SetDrawFlag(summaryScreen->sprites[spriteIndex], FALSE);
        Sprite_SetAnimFrame(summaryScreen->sprites[spriteIndex], 0);
    }
}

void PokemonSummaryScreen_DrawSheenSprites(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->page != SUMMARY_PAGE_CONDITION) {
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
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenPos], TRUE);
            Sprite_SetAnimFrame(summaryScreen->sprites[SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);
            Sprite_SetAnim(summaryScreen->sprites[SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenPos], FALSE);

            summaryScreen->sheenPos++;

            if (summaryScreen->sheenPos == summaryScreen->sheenMax) {
                summaryScreen->sheenState = 2;
                break;
            }
        }

        summaryScreen->sheenCount = (summaryScreen->sheenCount + 1) % 10;
        break;
    case 2:
        if (Sprite_GetDrawFlag(summaryScreen->sprites[SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenMax - 1]) == FALSE) {
            summaryScreen->sheenCount = 0;
            summaryScreen->sheenState = 3;
            break;
        }
        break;
    case 3:
        summaryScreen->sheenCount++;

        if (summaryScreen->sheenCount == 32) {
            for (i = SUMMARY_SHEEN_SPRITES_START; i < SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
                Sprite_SetDrawFlag(summaryScreen->sprites[i], TRUE);
                Sprite_SetAnimFrame(summaryScreen->sprites[i], FALSE);
                Sprite_SetAnim(summaryScreen->sprites[i], FALSE);
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

    for (i = SUMMARY_SHEEN_SPRITES_START; i < SUMMARY_SHEEN_SPRITES_START + summaryScreen->sheenMax; i++) {
        if (Sprite_GetDrawFlag(summaryScreen->sprites[i]) == FALSE) {
            continue;
        }

        Sprite_UpdateAnim(summaryScreen->sprites[i], FX32_ONE);

        if (Sprite_GetAnimFrame(summaryScreen->sprites[i]) == 6) {
            Sprite_SetDrawFlag(summaryScreen->sprites[i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateMiscMonDataSprites(PokemonSummaryScreen *summaryScreen)
{
    for (u32 marking = 0; marking < MAX_POKEMON_MARKINGS; marking++) {
        if (summaryScreen->monData.markings & (1 << marking)) {
            Sprite_SetAnim(summaryScreen->sprites[SUMMARY_MARKING_SPRITES_START + marking], TRUE);
        } else {
            Sprite_SetAnim(summaryScreen->sprites[SUMMARY_MARKING_SPRITES_START + marking], FALSE);
        }
    }

    if (summaryScreen->monData.isShiny == TRUE && summaryScreen->monData.isEgg == FALSE) {
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_SHINY_ICON], TRUE);
    } else {
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_SHINY_ICON], FALSE);
    }

    if (summaryScreen->monData.pokerus == SUMMARY_POKERUS_CURED) {
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_CURED_ICON], TRUE);
    } else {
        Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_POKERUS_CURED_ICON], FALSE);
    }
}

void PokemonSummaryScreen_InitButtonTapAnim(PokemonSummaryScreen *summaryScreen)
{
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], TRUE);
    Sprite_SetAnimFrame(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], 0);
    Sprite_SetAnim(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], 0);

    s16 x, y;
    PokemonSummaryScreen_CalcSubscreenButtonTapAnimPos(summaryScreen, &x, &y);

    if (summaryScreen->subscreenType == SUMMARY_SUBSCREEN_TYPE_NORMAL) {
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], x, y + TAP_CIRCLE_BASE_Y);
    } else {
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], x - 4, y + TAP_CIRCLE_BASE_Y);
    }
}

void PokemonSummaryScreen_HideButtonTapCircle(PokemonSummaryScreen *summaryScreen)
{
    if (Sprite_GetAnimFrame(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE]) == 2) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_BUTTON_TAP_CIRCLE], FALSE);
    }
}

void PokemonSummaryScreen_UpdateConditionArrowSprites(PokemonSummaryScreen *summaryScreen)
{
    for (u8 i = 0; i < MAX_CONDITION_ARROW_SPRITES; i++) {
        if (summaryScreen->pageState & (1 << i)) {
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_CONDITION_ARROW_SPRITES_START + i], TRUE);
        }
    }
}

void PokemonSummaryScreen_UpdateAButtonSprite(PokemonSummaryScreen *summaryScreen, Window *window)
{
    if (window == NULL) {
        Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_A_BUTTON], FALSE);
        return;
    }

    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_A_BUTTON], Window_GetXPos(window) * 8 - 10, 8);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_A_BUTTON], TRUE);
}

void PokemonSummaryScreen_SetMonIcon(PokemonSummaryScreen *summaryScreen)
{
    void *monData = PokemonSummaryScreen_MonData(summaryScreen);
    u32 iconIndex;

    if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
        iconIndex = BoxPokemon_IconSpriteIndex(monData);
    } else {
        iconIndex = Pokemon_IconSpriteIndex(monData);
    }

    SpriteSystem_ReplaceCharResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, iconIndex, 0, 11);
    Sprite_SetExplicitPalette2(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], PokeIconPaletteIndex(summaryScreen->monData.species, summaryScreen->monData.form, summaryScreen->monData.isEgg) + 7);
    Sprite_SetFlipMode(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], (SpeciesData_GetFormValue(summaryScreen->monData.species, summaryScreen->monData.form, SPECIES_DATA_FLIP_SPRITE) ^ 1));
}

void PokemonSummaryScreen_ShowMonIcon(PokemonSummaryScreen *summaryScreen)
{
    SpriteSystem_ReplacePlttResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, PokeIconPalettesFileIndex(), FALSE, 5);

    if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], BATTLE_MOVE_MON_ICON_X, BATTLE_MOVE_MON_ICON_Y);
    } else {
        Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], CONTEST_MOVE_MON_ICON_X, CONTEST_MOVE_MON_ICON_Y);
    }

    Sprite_SetDrawFlag2(summaryScreen->sprites[SUMMARY_SPRITE_MON_ICON], TRUE);
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
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL], CalcContestStatDotPos(summaryScreen->monData.cool, COOL_MAX_X, COOL_MIN_X), CalcContestStatDotPos(summaryScreen->monData.cool, COOL_MAX_Y, COOL_MIN_Y));
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY], CalcContestStatDotPos(summaryScreen->monData.beauty, BEAUTY_MAX_X, BEAUTY_MIN_X), CalcContestStatDotPos(summaryScreen->monData.beauty, BEAUTY_MAX_Y, BEAUTY_MIN_Y));
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE], CalcContestStatDotPos(summaryScreen->monData.cute, CUTE_MAX_X, CUTE_MIN_X), CalcContestStatDotPos(summaryScreen->monData.cute, CUTE_MAX_Y, CUTE_MIN_Y));
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART], CalcContestStatDotPos(summaryScreen->monData.smart, SMART_MAX_X, SMART_MIN_X), CalcContestStatDotPos(summaryScreen->monData.smart, SMART_MAX_Y, SMART_MIN_Y));
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH], CalcContestStatDotPos(summaryScreen->monData.tough, TOUGH_MAX_X, TOUGH_MIN_X), CalcContestStatDotPos(summaryScreen->monData.tough, TOUGH_MAX_Y, TOUGH_MIN_Y));

    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL], TRUE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY], TRUE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE], TRUE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART], TRUE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH], TRUE);
}

void PokemonSummaryScreen_HideContestStatDots(PokemonSummaryScreen *summaryScreen)
{
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART], FALSE);
    Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH], FALSE);
}

static void SetRibbonSpriteGfx(PokemonSummaryScreen *summaryScreen, u8 ribbonID, u8 ribbonIndex)
{
    SpriteSystem_ReplaceCharResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_GRAPHIC__PL_PST_GRA, Ribbon_GetData(ribbonID, RIBBON_DATA_SPRITE_ID), 0, 26 + ribbonIndex);
    Sprite_SetExplicitPalette2(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_1 + ribbonIndex], Ribbon_GetData(ribbonID, RIBBON_DATA_PALETTE_NUM) + 7);
}

void PokemonSummaryScreen_UpdateRibbonSprites(PokemonSummaryScreen *summaryScreen)
{
    u16 i;
    for (i = SUMMARY_RIBBON_SPRITES_START; i <= SUMMARY_SPRITE_RIBBON_FLASH; i++) {
        Sprite_SetDrawFlag(summaryScreen->sprites[i], FALSE);
    }

    if (summaryScreen->page != SUMMARY_PAGE_RIBBONS) {
        return;
    }

    SpriteSystem_ReplacePlttResObj(summaryScreen->spriteSys, summaryScreen->spriteMan, NARC_INDEX_GRAPHIC__PL_PST_GRA, ribbons_NCLR, FALSE, 5);

    for (i = 0; i < RIBBONS_PER_PAGE; i++) {
        if (i < summaryScreen->ribbonMax) {
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_RIBBON_SPRITES_START + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonIDAt(summaryScreen, i), i);
        }
    }

    Sprite_SetAnim(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_FLASH], 0);
}

void PokemonSummaryScreen_UpdateShownRibbonRows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 i = 0; i < RIBBONS_PER_ROW * 2; i++) {
        if ((summaryScreen->ribbonRow * RIBBONS_PER_ROW + i) < summaryScreen->ribbonMax) {
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_RIBBON_SPRITES_START + i], TRUE);
            SetRibbonSpriteGfx(summaryScreen, PokemonSummaryScreen_RibbonIDAt(summaryScreen, i), i);
        } else {
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_RIBBON_SPRITES_START + i], FALSE);
        }
    }
}

void PokemonSummaryScreen_UpdateRibbonCursorPos(PokemonSummaryScreen *summaryScreen)
{
    Sprite_SetPositionXY(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_CURSOR], RIBBON_CURSOR_BASE_X + (summaryScreen->ribbonCol & (RIBBONS_PER_ROW - 1)) * RIBBON_SPACING_X, RIBBON_CURSOR_BASE_Y + (summaryScreen->ribbonCol / RIBBONS_PER_ROW) * RIBBON_SPACING_Y);
}

void PokemonSummaryScreen_UpdateRibbonFlashAnim(PokemonSummaryScreen *summaryScreen)
{
    if (Sprite_GetDrawFlag(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_FLASH]) == TRUE) {
        Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_SPRITE_RIBBON_FLASH], FX32_ONE);
    }
}

static const s16 sConditionFlashCoordBounds[][FLASH_BOUNDS_MAX] = {
    [SUMMARY_CONTEST_TYPE_COOL] = { 180, 57, 180, 90 },
    [SUMMARY_CONTEST_TYPE_BEAUTY] = { 213, 85, 184, 93 },
    [SUMMARY_CONTEST_TYPE_CUTE] = { 200, 125, 182, 97 },
    [SUMMARY_CONTEST_TYPE_SMART] = { 159, 125, 178, 97 },
    [SUMMARY_CONTEST_TYPE_TOUGH] = { 146, 85, 176, 93 }
};

void PokemonSummaryScreen_UpdateConditionFlashSprites(PokemonSummaryScreen *summaryScreen, BOOL showFlashes)
{
    if (showFlashes == FALSE) {
        for (u16 i = 0; i < MAX_CONDITION_FLASH_SPRITES; i++) {
            Sprite_SetDrawFlag(summaryScreen->sprites[SUMMARY_CONDITION_FLASH_SPRITES_START + i], FALSE);
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

        DrawConditionFlash(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_COOL], summaryScreen->monData.cool, highestValue, sConditionFlashCoordBounds[SUMMARY_CONTEST_TYPE_COOL]);
        DrawConditionFlash(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_BEAUTY], summaryScreen->monData.beauty, highestValue, sConditionFlashCoordBounds[SUMMARY_CONTEST_TYPE_BEAUTY]);
        DrawConditionFlash(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_CUTE], summaryScreen->monData.cute, highestValue, sConditionFlashCoordBounds[SUMMARY_CONTEST_TYPE_CUTE]);
        DrawConditionFlash(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_SMART], summaryScreen->monData.smart, highestValue, sConditionFlashCoordBounds[SUMMARY_CONTEST_TYPE_SMART]);
        DrawConditionFlash(summaryScreen->sprites[SUMMARY_SPRITE_CONDITION_FLASH_TOUGH], summaryScreen->monData.tough, highestValue, sConditionFlashCoordBounds[SUMMARY_CONTEST_TYPE_TOUGH]);
    }
}

static void DrawConditionFlash(Sprite *sprite, u32 statValue, u32 highestValue, const s16 *bounds)
{
    if (statValue == 0 || statValue != highestValue) {
        Sprite_SetDrawFlag(sprite, FALSE);
        return;
    }

    Sprite_SetDrawFlag(sprite, TRUE);

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

    Sprite_SetPositionXY(sprite, x, y);
    Sprite_SetAnimFrame(sprite, 0);
    Sprite_SetAnim(sprite, 0);
}

void PokemonSummaryScreen_UpdateConditionFlashAnim(PokemonSummaryScreen *summaryScreen)
{
    for (u32 i = 0; i < MAX_CONDITION_FLASH_SPRITES; i++) {
        Sprite_UpdateAnim(summaryScreen->sprites[SUMMARY_CONDITION_FLASH_SPRITES_START + i], FX32_ONE);
    }
}
