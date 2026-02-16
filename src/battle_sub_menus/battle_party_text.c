#include "battle_sub_menus/battle_party_text.h"

#include "constants/graphics.h"

#include "applications/pokemon_summary_screen/main.h"
#include "battle/battle_system.h"
#include "battle_sub_menus/battle_party.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

#include "res/text/bank/battle_party.h"

#define BATTLE_POKEMON_PARTY_SCREEN_WINDOW_NUM                    6
#define BATTLE_SELECT_POKEMON_SCREEN_WINDOW_NUM                   4
#define BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_NUM                  35
#define BATTLE_POKEMON_MOVES_SCREEN_WINDOW_NUM                    11
#define BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_NUM                     17
#define BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_NUM                  5
#define BATTLE_LEARN_MOVE_SCREEN_WINDOW_NUM                       6
#define BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_NUM               12
#define BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_NUM 7

#define POKEMON_LEVEL_DIGITS              3
#define POKEMON_XP_TO_NEXT_LEVEL_DIGITS   6
#define POKEMON_HP_STAT_DIGITS            3
#define POKEMON_ATTACK_STAT_DIGITS        3
#define POKEMON_DEFENSE_STAT_DIGITS       3
#define POKEMON_SP_ATK_STAT_DIGITS        3
#define POKEMON_SP_DEF_STAT_DIGITS        3
#define POKEMON_SPEED_STAT_DIGITS         3
#define MOVE_ACCURACY_STAT_DIGITS         3
#define MOVE_POWER_STAT_DIGITS            3
#define MOVE_PP_STAT_DIGIT                2
#define SUMMARY_SCREEN_MOVE_PP_STAT_DIGIT 3

enum BattlePartyMessageBox {
    BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION = 0,
    BATTLE_PARTY_MESSAGE_BOX_ERROR,
};

enum BattlePartyPokemonMoveCategory {
    BATTLE_PARTY_POKEMON_MOVE_CATEGORY_PHYSICAL = 0,
    BATTLE_PARTY_POKEMON_MOVE_CATEGORY_SPECIAL,
    BATTLE_PARTY_POKEMON_MOVE_CATEGORY_STATUS,
};

enum HealedStatusEffectFlag {
    HEALED_STATUS_EFFECT_FLAG_SLEEP = 1,
    HEALED_STATUS_EFFECT_FLAG_POISON = 2,
    HEALED_STATUS_EFFECT_FLAG_BURN = 4,
    HEALED_STATUS_EFFECT_FLAG_FREEZE = 8,
    HEALED_STATUS_EFFECT_FLAG_PARALYSIS = 16,
    HEALED_STATUS_EFFECT_FLAG_CONFUSION = 32,
    HEALED_STATUS_EFFECT_FLAG_INFATUATION = 64,
};

static void RenderPartyPokemonScreen(BattleParty *battleParty);
static void RenderSelectPokemonScreen(BattleParty *battleParty);
static void RenderPokemonSummaryScreen(BattleParty *battleParty);
static void RenderPokemonMovesScreen(BattleParty *battleParty);
static void RenderMoveSummaryScreen(BattleParty *battleParty);
static void RenderRestoreMovePPScreen(BattleParty *battleParty);
static void RenderLearnMoveScreen(BattleParty *battleParty);
static void RenderConfirmLearnMoveScreen(BattleParty *battleParty);
static void RenderConfirmLearnMoveContestStatsScreen(BattleParty *battleParty);
static void PrintSelectedPokemonName(BattleParty *battleParty, u32 partyIndex);

static const WindowTemplate sMessageBoxWindowTemplates[] = {
    [BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION] = { .bgLayer = BG_LAYER_SUB_0, .tilemapLeft = 2, .tilemapTop = 21, .width = 22, .height = 2, .palette = 15, .baseTile = 31 },
    [BATTLE_PARTY_MESSAGE_BOX_ERROR] = { .bgLayer = BG_LAYER_SUB_0, .tilemapLeft = 2, .tilemapTop = 19, .width = 27, .height = 4, .palette = 15, .baseTile = 31 }
};

static const WindowTemplate sPartyPokemonScreenWindowTemplates[] = {
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 133,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 1,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 208,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 6,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 283,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_4] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 7,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 358,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_5] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 12,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 433,
    },
    [BATTLE_POKEMON_PARTY_SCREEN_WINDOW_PARTY_SLOT_6] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 13,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 508,
    }
};

static const WindowTemplate sSelectPokemonScreenWindowTemplates[] = {
    [BATTLE_SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 4,
        .width = 12,
        .height = 3,
        .palette = 9,
        .baseTile = 1,
    },
    [BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SHIFT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 11,
        .tilemapTop = 12,
        .width = 10,
        .height = 3,
        .palette = 9,
        .baseTile = 37,
    },
    [BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SUMMARY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 67,
    },
    [BATTLE_SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 14,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 100,
    }
};

static const WindowTemplate sPokemonSummaryScreenWindowTemplates[] = {
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 293,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 9,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 329,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 11,
        .width = 18,
        .height = 4,
        .palette = 13,
        .baseTile = 351,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 16,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 423,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 7,
        .height = 2,
        .palette = 13,
        .baseTile = 447,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 7,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 461,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 9,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 467,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 15,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 473,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 11,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 479,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 485,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 25,
        .tilemapTop = 6,
        .width = 6,
        .height = 1,
        .palette = 9,
        .baseTile = 491,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 4,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 497,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 6,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 503,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 4,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 133,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 7,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 137,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 9,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 149,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 15,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 161,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 11,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 173,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 13,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 185,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 4,
        .width = 4,
        .height = 2,
        .palette = 13,
        .baseTile = 197,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 205,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 227,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 311,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 9,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 609,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_DESC] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 11,
        .width = 18,
        .height = 4,
        .palette = 13,
        .baseTile = 631,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HELD_ITEM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 16,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 703,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 7,
        .height = 2,
        .palette = 13,
        .baseTile = 727,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ATTACK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 7,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 741,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_DEFENSE] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 9,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 747,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SPEED] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 15,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 753,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_ATK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 11,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 759,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_DEF] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 765,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HEALTH_BAR] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 25,
        .tilemapTop = 6,
        .width = 6,
        .height = 1,
        .palette = 9,
        .baseTile = 771,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_LEVEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 4,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 777,
    },
    [BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_EXP_TO_NEXT_LVL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 6,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 783,
    }
};

static const WindowTemplate sPokemonMovesScreenWindowTemplates[] = {
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 293,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 329,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 399,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 469,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 539,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_SUMMARY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 260,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 311,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 609,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 679,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 749,
    },
    [BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 819,
    }
};

static const WindowTemplate sMoveSummaryScreenWindowTemplates[] = {
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 157,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 183,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 225,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 231,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 237,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 411,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 139,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 20,
        .tilemapTop = 5,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 179,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 16,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 193,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 209,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 387,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 427,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_PP] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 449,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 459,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_POWER] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 465,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 471,
    },
    [BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_CATEGORY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 621,
    }
};

static const WindowTemplate sRestoreMovePPScreenWindowTemplates[] = {
    [BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 139,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 157,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 227,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 297,
    },
    [BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 367,
    }
};

static const WindowTemplate sLearnMoveScreenWindowTemplates[] = {
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 133,
    },
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 151,
    },
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 221,
    },
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 291,
    },
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 361,
    },
    [BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 9,
        .tilemapTop = 18,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 431,
    }
};

static const WindowTemplate sConfirmLearnMoveScreenWindowTemplates[] = {
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 19,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 20,
        .tilemapTop = 5,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 41,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 45,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 16,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 91,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 107,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 123,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 129,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 135,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 285,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 309,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 7,
        .tilemapTop = 20,
        .width = 12,
        .height = 3,
        .palette = 9,
        .baseTile = 55,
    }
};

static const WindowTemplate sConfirmLearnMoveContestStatsWindowTemplates[] = {
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 8,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 19,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 20,
        .tilemapTop = 8,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 41,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 23,
        .tilemapTop = 8,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 45,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 2,
        .tilemapTop = 11,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 325,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 11,
        .width = 15,
        .height = 6,
        .palette = 13,
        .baseTile = 349,
    },
    [BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 7,
        .tilemapTop = 20,
        .width = 12,
        .height = 3,
        .palette = 9,
        .baseTile = 55,
    }
};

static const u32 sPartyPokemonNameTextIDs[] = {
    BattleParty_Text_PartyPokemon1Name,
    BattleParty_Text_PartyPokemon2Name,
    BattleParty_Text_PartyPokemon3Name,
    BattleParty_Text_PartyPokemon4Name,
    BattleParty_Text_PartyPokemon5Name,
    BattleParty_Text_PartyPokemon6Name
};

static const u32 sMoveNameTextIDs[] = {
    BattleParty_Text_Move1Name,
    BattleParty_Text_Move2Name,
    BattleParty_Text_Move3Name,
    BattleParty_Text_Move4Name,
    BattleParty_Text_MoveToLearnName
};

void BattlePartyText_InitializeWindows(BattleParty *battleParty)
{
    for (u32 i = 0; i < NUM_BATTLE_PARTY_MESSAGE_BOX_WINDOWS; i++) {
        Window_AddFromTemplate(battleParty->background, &battleParty->messageBoxWindows[i], &sMessageBoxWindowTemplates[i]);
    }

    BattlePartyText_InitializeScreenWindows(battleParty, battleParty->currentScreen);
}

void BattlePartyText_InitializeScreenWindows(BattleParty *battleParty, enum BattlePartyScreen screen)
{
    const WindowTemplate *windowTemplates;

    switch (screen) {
    case BATTLE_PARTY_SCREEN_POKEMON_PARTY:
        windowTemplates = sPartyPokemonScreenWindowTemplates;
        battleParty->numWindows = BATTLE_POKEMON_PARTY_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_SELECT_POKEMON:
        windowTemplates = sSelectPokemonScreenWindowTemplates;
        battleParty->numWindows = BATTLE_SELECT_POKEMON_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_SUMMARY:
        windowTemplates = sPokemonSummaryScreenWindowTemplates;
        battleParty->numWindows = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_MOVES:
        windowTemplates = sPokemonMovesScreenWindowTemplates;
        battleParty->numWindows = BATTLE_POKEMON_MOVES_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_MOVE_SUMMARY:
        windowTemplates = sMoveSummaryScreenWindowTemplates;
        battleParty->numWindows = BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP:
        windowTemplates = sRestoreMovePPScreenWindowTemplates;
        battleParty->numWindows = BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE:
    case BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS:
        windowTemplates = sLearnMoveScreenWindowTemplates;
        battleParty->numWindows = BATTLE_LEARN_MOVE_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE:
        windowTemplates = sConfirmLearnMoveScreenWindowTemplates;
        battleParty->numWindows = BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS:
        windowTemplates = sConfirmLearnMoveContestStatsWindowTemplates;
        battleParty->numWindows = BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_NUM;
        break;
    }

    battleParty->windows = Window_New(battleParty->context->heapID, battleParty->numWindows);

    for (u8 i = 0; i < battleParty->numWindows; i++) {
        Window_AddFromTemplate(battleParty->background, &battleParty->windows[i], &windowTemplates[i]);
    }
}

void BattlePartyText_ClearScreenWindows(BattleParty *battleParty)
{
    Windows_Delete(battleParty->windows, battleParty->numWindows);
}

void BattlePartyText_ClearWindows(BattleParty *battleParty)
{
    Windows_Delete(battleParty->windows, battleParty->numWindows);

    for (u32 i = 0; i < NUM_BATTLE_PARTY_MESSAGE_BOX_WINDOWS; i++) {
        Window_Remove(&battleParty->messageBoxWindows[i]);
    }
}

void BattlePartyText_ChangeScreen(BattleParty *battleParty, enum BattlePartyScreen screen)
{
    switch (screen) {
    case BATTLE_PARTY_SCREEN_POKEMON_PARTY:
        RenderPartyPokemonScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_SELECT_POKEMON:
        RenderSelectPokemonScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_SUMMARY:
        RenderPokemonSummaryScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_MOVES:
        RenderPokemonMovesScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_MOVE_SUMMARY:
        RenderMoveSummaryScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP:
        RenderRestoreMovePPScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE:
    case BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS:
        RenderLearnMoveScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE:
        RenderConfirmLearnMoveScreen(battleParty);
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS:
        RenderConfirmLearnMoveContestStatsScreen(battleParty);
        break;
    }
}

static void PrintPokemonNameHeader(BattleParty *battleParty, u32 windowIndex, enum Font font, u16 partyIndex, u8 xOffset, u8 yOffset)
{
    Window *window = &battleParty->windows[windowIndex];
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    String *formattedString = String_Init(12, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, sPartyPokemonNameTextIDs[partyIndex]);

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->mon));
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    if (font == FONT_SYSTEM) {
        Text_AddPrinterWithParamsAndColor(window, font, formattedString, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(window, font, formattedString, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    }

    String_Free(string);
    String_Free(formattedString);

    if (pokemon->displayNidoranGender == FALSE && pokemon->isEgg == FALSE) {
        u32 genderIconXOffset;
        if (pokemon->gender == GENDER_MALE) {
            string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MaleIcon);
            genderIconXOffset = Window_GetWidth(window) * 8 - Font_CalcStringWidth(FONT_SYSTEM, string, 0);

            if (font == FONT_SYSTEM) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
            }

            String_Free(string);
        } else if (pokemon->gender == GENDER_FEMALE) {
            string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_FemaleIcon);
            genderIconXOffset = Window_GetWidth(window) * 8 - Font_CalcStringWidth(FONT_SYSTEM, string, 0);

            if (font == FONT_SYSTEM) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
            }

            String_Free(string);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintPokemonLevel(BattleParty *battleParty, u32 windowIndex, u16 partyIndex, u8 x, u8 y)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];

    FontSpecialChars_DrawPartyScreenText(battleParty->unused3, SPECIAL_CHAR_LEVEL, pokemon->level, POKEMON_LEVEL_DIGITS, PADDING_MODE_NONE, &battleParty->windows[windowIndex], x + 8, y);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintPartyPokemonStats(BattleParty *battleParty, u32 windowIndex, u16 partyIndex, u8 x, u8 y)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];

    FontSpecialChars_DrawPartyScreenHPText(battleParty->unused3, pokemon->curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_SPACES, &battleParty->windows[windowIndex], x, y);
    FontSpecialChars_DrawPartyScreenLevelText(battleParty->unused3, SPECIAL_CHAR_SLASH, &battleParty->windows[windowIndex], x + TILE_WIDTH_PIXELS * POKEMON_HP_STAT_DIGITS, y);
    FontSpecialChars_DrawPartyScreenHPText(battleParty->unused3, pokemon->maxHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, &battleParty->windows[windowIndex], x + TILE_WIDTH_PIXELS * POKEMON_HP_STAT_DIGITS + TILE_WIDTH_PIXELS, y);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void DrawPokemonHealthBar(BattleParty *battleParty, u32 windowIndex, u16 partyIndex, u8 x, u8 y)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u8 color = 1;
    u8 filledPixels = App_PixelCount(pokemon->curHP, pokemon->maxHP, HEALTH_BAR_MAX_PIXELS);

    switch (HealthBar_Color(pokemon->curHP, pokemon->maxHP, HEALTH_BAR_MAX_PIXELS)) {
    case BARCOLOR_EMPTY:
        Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
        return;
    case BARCOLOR_MAX:
    case BARCOLOR_GREEN:
        color = 1;
        break;
    case BARCOLOR_YELLOW:
        color = 3;
        break;
    case BARCOLOR_RED:
        color = 5;
        break;
    }

    Window_FillRectWithColor(&battleParty->windows[windowIndex], color + 1, x, y + 1, filledPixels, 1);
    Window_FillRectWithColor(&battleParty->windows[windowIndex], color, x, y + 2, filledPixels, 2);
    Window_FillRectWithColor(&battleParty->windows[windowIndex], color + 1, x, y + 4, filledPixels, 1);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintPokemonAbilityName(BattleParty *battleParty, u32 windowIndex, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    String *formattedString = String_Init(16, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonAbilityName);

    StringTemplate_SetAbilityName(battleParty->stringTemplate, 0, pokemon->ability);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, formattedString, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintPokemonHeldItem(BattleParty *battleParty, u32 windowIndex, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    String *formattedString;

    if (pokemon->heldItem == ITEM_NONE) {
        formattedString = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonNoItemHeld);
    } else {
        formattedString = String_Init(18, battleParty->context->heapID);
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonHeldItemName);

        StringTemplate_SetItemName(battleParty->stringTemplate, 0, pokemon->heldItem);
        StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
        String_Free(string);
    }

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, formattedString, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintMoveName(BattleParty *battleParty, enum Move move, u32 windowIndex, u32 textID, u16 font, u16 yOffset, TextColor color)
{
    Window *window = &battleParty->windows[windowIndex];
    String *formattedString = String_Init(16, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, textID);
    u32 xOffset;

    StringTemplate_SetMoveName(battleParty->stringTemplate, 0, move);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    if (font == FONT_SUBSCREEN) {
        xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - Font_CalcStringWidth(font, formattedString, 0)) / 2;
    } else {
        xOffset = 0;
    }

    Text_AddPrinterWithParamsAndColor(window, font, formattedString, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPPLabel(BattleParty *battleParty, u16 windowIndex, u8 xOffset, u8 yOffset)
{
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonPPLabel);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintSelectOptionText(BattleParty *battleParty, u32 textID)
{
    String *string;

    Window_DrawMessageBoxWithScrollCursor(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], TRUE, 1, 14);
    Window_FillTilemap(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], 15);

    string = MessageLoader_GetNewString(battleParty->messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], FONT_MESSAGE, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION]);
}

static void PrintButtonText(BattleParty *battleParty, u32 windowIndex, u32 textID)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, textID);
    u32 stringWidth = Font_CalcStringWidth(FONT_SUBSCREEN, string, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, string, (Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintSelectedPokemonLevel(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonLevelLabel);
    String *formattedString;
    u16 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonLevelValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->level, POKEMON_LEVEL_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset], FONT_SYSTEM, formattedString, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonExpToNextLevelLabel);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonExpToNextLevelValue);
    formattedString = String_Init(14, battleParty->context->heapID);

    if (pokemon->level < MAX_POKEMON_LEVEL) {
        StringTemplate_SetNumber(
            battleParty->stringTemplate, 0, pokemon->nextLevelExp - pokemon->exp, POKEMON_XP_TO_NEXT_LEVEL_DIGITS, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    } else {
        StringTemplate_SetNumber(
            battleParty->stringTemplate, 0, 0, POKEMON_XP_TO_NEXT_LEVEL_DIGITS, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    }

    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset]) * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset]);
}

static void PrintPokemonAttackStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonAttackStatLabel);
    String *formattedString;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonAttackStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->attack, POKEMON_ATTACK_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset]) * TILE_WIDTH_PIXELS - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset]);
}

static void PrintPokemonDefenseStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonDefenseStatLabel);
    String *formattedString;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonDefenseStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->defence, POKEMON_DEFENSE_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset]) * TILE_WIDTH_PIXELS - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset]);
}

static void PrintPokemonSpeedStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpeedStatLabel);
    String *formattedString;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpeedStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->speed, POKEMON_SPEED_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset]) * TILE_WIDTH_PIXELS - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset]);
}

static void PrintPokemonSpAtkStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpAtkStatLabel);
    String *formattedString;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpAtkStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->spAtk, POKEMON_SP_ATK_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset]) * TILE_WIDTH_PIXELS - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset]);
}

static void PrintPokemonSpDefStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpDefStatLabel);
    String *formattedString;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonSpDefStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->spDef, POKEMON_SP_DEF_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
    xOffset = Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset]) * TILE_WIDTH_PIXELS - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset]);
}

static void PrintPokemonHPStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonHPStatLabel);
    String *formattedString;
    u32 stringWidth, formattedStringWidth;
    u16 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonHPStatDivider);
    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    xOffset = (Window_GetWidth(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP]) * TILE_WIDTH_PIXELS - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonHPStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    formattedStringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset - formattedStringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_PokemonMaxHPStatValue);
    formattedString = String_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->maxHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, formattedString, xOffset + stringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset]);
}

static void PrintPokemonAbilityDescription(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u32 windowIndexOffset = windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_DESCRIPTIONS, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(messageLoader, pokemon->ability);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset]);
}

static void PrintMoveAccuracyLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveAccuracyLabel);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveAccuracyValue(BattleParty *battleParty, u32 windowIndex, u32 moveAccuracyStat)
{
    Window *window = &battleParty->windows[windowIndex];

    if (moveAccuracyStat == 0) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveStatNoValue);
        u16 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
        u16 xOffset = Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(string);
    } else {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveAccuracyValue);
        String *formattedString = String_Init(8, battleParty->context->heapID);
        u16 stringWidth;
        u16 xOffset;

        StringTemplate_SetNumber(battleParty->stringTemplate, 0, moveAccuracyStat, MOVE_ACCURACY_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

        stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
        xOffset = Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(string);
        String_Free(formattedString);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovePowerLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePowerLabel);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovePowerValue(BattleParty *battleParty, u32 windowIndex, u32 movePowerStat)
{
    Window *window = &battleParty->windows[windowIndex];

    if (movePowerStat <= 1) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveStatNoValue);
        u16 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
        u16 xOffset = Window_GetWidth(window) * 8 - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(string);
    } else {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePowerValue);
        String *formattedString = String_Init(8, battleParty->context->heapID);
        u16 stringWidth;
        u16 xOffset;

        StringTemplate_SetNumber(battleParty->stringTemplate, 0, movePowerStat, MOVE_POWER_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

        stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
        xOffset = Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(string);
        String_Free(formattedString);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveDescription(BattleParty *battleParty, u32 windowIndex, u32 textID)
{
    Window *window = &battleParty->windows[windowIndex];
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_DESCRIPTIONS, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveContestEffect(BattleParty *battleParty, u32 windowIndex, enum Move move)
{
    Window *window = &battleParty->windows[windowIndex];
    u32 textID = sub_0209577C(MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT));
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);

    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCategoryLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCategoryLabel);
    u16 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    u16 xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCategory(BattleParty *battleParty, u32 windowIndex, u32 moveCategory)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string;
    u32 xOffset;

    switch (moveCategory) {
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_PHYSICAL:
        string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCategoryPhysical);
        break;
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_SPECIAL:
        string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCategorySpecial);
        break;
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_STATUS:
        string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCategoryStatus);
    }

    xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, string, 0, 56);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintSummaryScreenMovePPStats(BattleParty *battleParty, u32 windowIndex, u32 currentPP, u32 maxPP)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePPDivider);
    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    u32 xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth) / 2;
    String *formattedString;
    u32 formattedStringWidth;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);
    formattedString = String_Init(6, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, currentPP, SUMMARY_SCREEN_MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    formattedStringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, xOffset - formattedStringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveMaxPP);
    formattedString = String_Init(6, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, maxPP, SUMMARY_SCREEN_MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, xOffset + stringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintConfirmMoveButton(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *string;
    u32 stringWidth;

    if (battleParty->context->selectedMoveSlot == MOVE_TO_LEARN_SLOT) {
        string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_CancelMoveButton);
    } else {
        string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ForgetMoveButton);
    }

    stringWidth = Font_CalcStringWidth(FONT_SUBSCREEN, string, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, string, (96 - stringWidth) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

void BattlePartyText_PrintHMMovesCantBeForgottenText(BattleParty *battleParty)
{
    Window *window;
    String *string;

    if (battleParty->currentScreen == BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE) {
        window = &battleParty->windows[BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS];
    } else {
        window = &battleParty->windows[BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP];
    }

    Window_FillTilemap(window, 0);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_HMMovesCantBeForgotten);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovesScreenMovePPStats(BattleParty *battleParty, BattlePartyPokemonMove *move, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *formattedString = String_Init(6, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePPLabel);
    u32 stringWidth;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 40, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePPDivider);
    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 80, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveMaxPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->maxPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, 80 + stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->currentPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, 80 - stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCurrentPP(BattleParty *battleParty, BattlePartyPokemonMove *move, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    String *formattedString = String_Init(6, battleParty->context->heapID);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MovePPLabel);
    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    String_Free(string);
    Window_FillRectWithColor(window, 0, 40 + stringWidth, 24, 80 - (40 + stringWidth), 16);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->currentPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedString, string);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedString, 80 - stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
    String_Free(formattedString);
    Window_ScheduleCopyToVRAM(window);
}

static void RenderPartyPokemonScreen(BattleParty *battleParty)
{
    for (s32 i = 0; i < Party_GetCurrentCount(battleParty->context->party); i++) {
        Window_FillTilemap(&battleParty->windows[i], 0);

        if (battleParty->partyPokemon[i].species == SPECIES_NONE) {
            continue;
        }

        PrintPokemonNameHeader(battleParty, i, FONT_SUBSCREEN, i, 32, 8);

        if (battleParty->partyPokemon[i].isEgg == FALSE) {
            BattlePartyText_RenderPartyPokemonStats(battleParty, i);
        }

        if (PokemonSummaryScreen_StatusIconAnimIdx(battleParty->partyPokemon[i].mon) != SUMMARY_CONDITION_NONE) {
            continue;
        }

        BattlePartyText_PrintPartyPokemonLevel(battleParty, i);
    }

    if (battleParty->context->battlePartyMode == BATTLE_PARTY_MODE_USE_ITEM) {
        PrintSelectOptionText(battleParty, BattleParty_Text_UseOnWhichPokemon);
    } else {
        PrintSelectOptionText(battleParty, BattleParty_Text_ChooseAPokemon);
    }
}

void BattlePartyText_RenderPartyPokemonStats(BattleParty *battleParty, u8 windowIndex)
{
    Window_FillRectWithColor(&battleParty->windows[windowIndex], 0, 56, 32, 24, 8);
    Window_FillRectWithColor(&battleParty->windows[windowIndex], 0, 64, 24, 64, 8);

    PrintPartyPokemonStats(battleParty, windowIndex, windowIndex, 56, 32);
    DrawPokemonHealthBar(battleParty, windowIndex, windowIndex, 64, 24);
}

void BattlePartyText_PrintPartyPokemonLevel(BattleParty *battleParty, u8 partyIndex)
{
    if (battleParty->partyPokemon[partyIndex].isEgg == FALSE) {
        PrintPokemonLevel(battleParty, partyIndex, partyIndex, 0, 32);
    }
}

static void RenderSelectPokemonScreen(BattleParty *battleParty)
{
    Window_FillTilemap(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SHIFT], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SUMMARY], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES], 0);

    PrintSelectedPokemonName(battleParty, battleParty->context->selectedPartyIndex);

    PrintButtonText(battleParty, BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SHIFT, BattleParty_Text_ShiftButton);

    if (battleParty->partyPokemon[battleParty->context->selectedPartyIndex].isEgg == FALSE) {
        PrintButtonText(battleParty, BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SUMMARY, BattleParty_Text_SummaryButton);
        PrintButtonText(battleParty, BATTLE_SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES, BattleParty_Text_CheckMovesButton);
    } else {
        Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_SUMMARY]);
        Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES]);
    }
}

static void PrintSelectedPokemonName(BattleParty *battleParty, u32 partyIndex)
{
    Window *window = &battleParty->windows[BATTLE_SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME];
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    String *string = String_Init(12, battleParty->context->heapID);
    String *formattedString = MessageLoader_GetNewString(battleParty->messageLoader, sPartyPokemonNameTextIDs[partyIndex]);
    u8 stringWidth;
    u8 formattedStringWidth;
    u8 genderIconOffset;
    u8 xOffset;

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->mon));
    StringTemplate_Format(battleParty->stringTemplate, string, formattedString);
    String_Free(formattedString);

    formattedString = NULL;

    if (pokemon->displayNidoranGender == FALSE && pokemon->isEgg == FALSE) {
        if (pokemon->gender == GENDER_MALE) {
            formattedString = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_MaleIcon);
        } else if (pokemon->gender == GENDER_FEMALE) {
            formattedString = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_FemaleIcon);
        }
    }

    stringWidth = Font_CalcStringWidth(FONT_SUBSCREEN, string, 0);

    if (formattedString == NULL) {
        formattedStringWidth = 0;
        genderIconOffset = 0;
    } else {
        formattedStringWidth = Font_CalcStringWidth(FONT_SYSTEM, formattedString, 0);
        genderIconOffset = TILE_WIDTH_PIXELS;
    }

    xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth - formattedStringWidth - genderIconOffset) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    String_Free(string);

    if (formattedString != NULL) {
        if (pokemon->gender == GENDER_MALE) {
            Text_AddPrinterWithParamsAndColor(
                window, FONT_SYSTEM, formattedString, xOffset + stringWidth + genderIconOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                window, FONT_SYSTEM, formattedString, xOffset + stringWidth + genderIconOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
        }

        String_Free(formattedString);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void RenderPokemonMovesScreen(BattleParty *battleParty)
{
    u16 windowIndexOffset = BATTLE_POKEMON_MOVES_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;

    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_2 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_3 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_4 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_SUMMARY], 0);

    PrintPokemonNameHeader(battleParty, 0 + windowIndexOffset, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset + i);
    }

    PrintButtonText(battleParty, BATTLE_POKEMON_MOVES_SCREEN_WINDOW_SUMMARY, BattleParty_Text_SummaryButton);

    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_2 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_3 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_POKEMON_MOVES_SCREEN_WINDOW_MOVE_4 + windowIndexOffset]);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderPokemonSummaryScreen(BattleParty *battleParty)
{
    u32 windowIndexOffset = BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;

    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES], 0);

    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM + windowIndexOffset], 0);

    PrintPokemonNameHeader(battleParty, BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPokemonHPStat(battleParty, battleParty->context->selectedPartyIndex);
    DrawPokemonHealthBar(battleParty, BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR + windowIndexOffset, battleParty->context->selectedPartyIndex, 0, 0);
    PrintSelectedPokemonLevel(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonAttackStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonDefenseStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpeedStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpAtkStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpDefStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonAbilityName(battleParty, BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME + windowIndexOffset, battleParty->context->selectedPartyIndex);
    PrintPokemonHeldItem(battleParty, BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM + windowIndexOffset, battleParty->context->selectedPartyIndex);
    PrintPokemonAbilityDescription(battleParty, battleParty->context->selectedPartyIndex);
    PrintButtonText(battleParty, BATTLE_POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES, BattleParty_Text_CheckMovesButton);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderMoveSummaryScreen(BattleParty *battleParty)
{
    u32 windowIndexOffset = BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ALT_MOVE_NAME * battleParty->useAltSummaryWindows;
    BattlePartyPokemonMove *move;

    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION + windowIndexOffset], 0);

    move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

    PrintPokemonNameHeader(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL, 0, 0);
    PrintMoveName(battleParty, move->move, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME + windowIndexOffset, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
    PrintMoveAccuracyLabel(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL);
    PrintMoveAccuracyValue(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY + windowIndexOffset, move->accuracy);
    PrintMovePowerLabel(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL);
    PrintMovePowerValue(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_POWER + windowIndexOffset, move->power);
    PrintMoveDescription(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION + windowIndexOffset, move->move);
    PrintMoveCategoryLabel(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL);
    PrintMoveCategory(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY + windowIndexOffset, move->class);
    PrintSummaryScreenMovePPStats(battleParty, BATTLE_MOVE_SUMMARY_SCREEN_WINDOW_PP + windowIndexOffset, move->currentPP, move->maxPP);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderLearnMoveScreen(BattleParty *battleParty)
{
    BattlePartyPokemonMove moveToLearn;

    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_1], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_2], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_3], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_4], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN], 0);

    PrintPokemonNameHeader(battleParty, BATTLE_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u32 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_1 + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_1 + i);
    }

    PrintMoveName(battleParty, battleParty->context->moveToLearn, BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN, sMoveNameTextIDs[MOVE_TO_LEARN_SLOT], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));

    moveToLearn.currentPP = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);
    moveToLearn.maxPP = moveToLearn.currentPP;

    PrintMovesScreenMovePPStats(battleParty, &moveToLearn, BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN);

    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_1]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_2]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_3]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_4]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN]);
}

static void RenderConfirmLearnMoveScreen(BattleParty *battleParty)
{
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM], 0);

    PrintPokemonNameHeader(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL, 0, 0);
    PrintMoveAccuracyLabel(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL);
    PrintMovePowerLabel(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL);
    PrintMoveCategoryLabel(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL);

    if (battleParty->context->selectedMoveSlot < MOVE_TO_LEARN_SLOT) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

        PrintMoveName(battleParty, move->move, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveAccuracyValue(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY, move->accuracy);
        PrintMovePowerValue(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER, move->power);
        PrintMoveDescription(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION, move->move);
        PrintMoveCategory(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY, move->class);
        PrintSummaryScreenMovePPStats(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP, move->currentPP, move->maxPP);
    } else {
        u32 pp = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);

        PrintMoveName(battleParty, battleParty->context->moveToLearn, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveDescription(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION, battleParty->context->moveToLearn);
        PrintMoveAccuracyValue(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_ACCURACY));
        PrintMovePowerValue(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_POWER));
        PrintMoveCategory(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_CLASS));
        PrintSummaryScreenMovePPStats(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP, pp, pp);
    }

    PrintConfirmMoveButton(battleParty, BATTLE_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM);
}

static void RenderRestoreMovePPScreen(BattleParty *battleParty)
{
    Window_FillTilemap(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4], 0);

    PrintPokemonNameHeader(battleParty, BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u32 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1 + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1 + i);
    }

    if (Item_LoadParam(battleParty->context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, battleParty->context->heapID) == FALSE) {
        PrintSelectOptionText(battleParty, BattleParty_Text_RestoreWhichMove);
    }

    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4]);
}

void BattlePartyText_PrintSelectedMoveCurrentPP(BattleParty *battleParty, u16 windowIndex, u16 moveIndex)
{
    BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[moveIndex];
    PrintMoveCurrentPP(battleParty, move, windowIndex);
}

static void RenderConfirmLearnMoveContestStatsScreen(BattleParty *battleParty)
{
    String *string;
    u32 xOffset;

    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT], 0);
    Window_FillTilemap(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM], 0);

    PrintPokemonNameHeader(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL, 0, 0);

    string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_AppealPtsLabel);
    xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, string, 0, 96);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    String_Free(string);
    Window_ScheduleCopyToVRAM(&battleParty->windows[BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS]);

    if (battleParty->context->selectedMoveSlot < MOVE_TO_LEARN_SLOT) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

        PrintMoveName(battleParty, move->move, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveContestEffect(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT, move->move);
        PrintSummaryScreenMovePPStats(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP, move->currentPP, move->maxPP);
    } else {
        u32 pp = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);

        PrintMoveName(battleParty, battleParty->context->moveToLearn, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveContestEffect(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT, battleParty->context->moveToLearn);
        PrintSummaryScreenMovePPStats(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP, pp, pp);
    }

    PrintConfirmMoveButton(battleParty, BATTLE_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM);
}

void BattlePartyText_DisplayErrorMessage(BattleParty *battleParty)
{
    Window_DrawMessageBoxWithScrollCursor(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_ERROR], TRUE, 1, 14);
    Window_FillTilemap(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_ERROR], 15);
    BattlePartyText_PrintToErrorMessageBox(battleParty);
}

void BattlePartyText_PrintToErrorMessageBox(BattleParty *battleParty)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    battleParty->textPrinterID = Text_AddPrinterWithParams(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_ERROR], FONT_MESSAGE, battleParty->string, 0, 0, BattleSystem_GetTextSpeed(battleParty->context->battleSys), NULL);
}

void BattlePartyText_PrintUseItemEffect(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    Pokemon *mon;
    void *itemData = Item_Load(context->selectedBattleBagItem, ITEM_FILE_TYPE_DATA, context->heapID);
    u16 newHP;
    u8 healedStatusEffectFlags;

    mon = BattleSystem_GetPartyPokemon(context->battleSys, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
    newHP = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    healedStatusEffectFlags = 0;

    if (Item_Get(itemData, ITEM_PARAM_HEAL_SLEEP) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_SLEEP;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_POISON) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_POISON;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_BURN) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_BURN;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_FREEZE) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_FREEZE;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_PARALYSIS) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_PARALYSIS;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_CONFUSION) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_CONFUSION;
    }

    if (Item_Get(itemData, ITEM_PARAM_HEAL_ATTRACT) != FALSE) {
        healedStatusEffectFlags |= HEALED_STATUS_EFFECT_FLAG_INFATUATION;
    }

    if (battleParty->partyPokemon[context->selectedPartyIndex].curHP == 0 && newHP != 0) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemRevivedPokemon);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (battleParty->partyPokemon[context->selectedPartyIndex].curHP != newHP) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemRestoredHealth);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_SetNumber(battleParty->stringTemplate, 1, newHP - battleParty->partyPokemon[context->selectedPartyIndex].curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != FALSE || Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) != FALSE) {
        MessageLoader_GetString(battleParty->messageLoader, BattleParty_Text_ItemRestoredPP, battleParty->string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_SLEEP) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredSleep);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_POISON) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredPoisoning);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_BURN) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredBurn);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_FREEZE) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredFreeze);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_PARALYSIS) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredParalysis);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_CONFUSION) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredConfusion);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_INFATUATION) {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredInfatuation);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    } else {
        String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_ItemCuredMultipleStatuses);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
        String_Free(string);
    }

    Heap_Free(itemData);
}

void BattlePartyText_PrintEmbargoPreventingItemUse(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    Pokemon *mon = BattleSystem_GetPartyPokemon(context->battleSys, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
    String *string = MessageLoader_GetNewString(battleParty->messageLoader, BattleParty_Text_EmbargoPreventsItemUse);

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_SetMoveName(battleParty->stringTemplate, 1, MOVE_EMBARGO);
    StringTemplate_Format(battleParty->stringTemplate, battleParty->string, string);
    String_Free(string);
}
