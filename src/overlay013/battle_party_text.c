#include "overlay013/battle_party_text.h"

#include "applications/pokemon_summary_screen/main.h"
#include "battle/ov16_0223DF00.h"

#include "unk_0208C098.h"

#include "res/text/bank/battle_party.h"

#define BATTLE_PARTY_PARTY_POKEMON_SCREEN_WINDOW_NUM                    6
#define BATTLE_PARTY_SELECT_POKEMON_SCREEN_WINDOW_NUM                   4
#define BATTLE_PARTY_POKEMON_SUMMARY_SCREEN_WINDOW_NUM                  35
#define BATTLE_PARTY_POKEMON_MOVES_SCREEN_WINDOW_NUM                    11
#define BATTLE_PARTY_MOVE_SUMMARY_SCREEN_WINDOW_NUM                     17
#define BATTLE_PARTY_RESTORE_MOVE_PP_SCREEN_WINDOW_NUM                  5
#define BATTLE_PARTY_LEARN_MOVE_SCREEN_WINDOW_NUM                       6
#define BATTLE_PARTY_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_NUM               12
#define BATTLE_PARTY_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_NUM 7

enum PartyPokemonScreenWindow {
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_1 = 0,
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_2,
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_3,
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_4,
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_5,
    PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_6,
};

enum SelectPokemonScreenWindow {
    SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME = 0,
    SELECT_POKEMON_SCREEN_WINDOW_SHIFT,
    SELECT_POKEMON_SCREEN_WINDOW_SUMMARY,
    SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES,
};

enum PokemonSummaryScreenWindow {
    POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME = 0,
    POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME,
    POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC,
    POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM,
    POKEMON_SUMMARY_SCREEN_WINDOW_HP,
    POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK,
    POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE,
    POKEMON_SUMMARY_SCREEN_WINDOW_SPEED,
    POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK,
    POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF,
    POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR,
    POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL,
    POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_NAME,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_DESC,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HELD_ITEM,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HP,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ATTACK,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_DEFENSE,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SPEED,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_ATK,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_DEF,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HEALTH_BAR,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_LEVEL,
    POKEMON_SUMMARY_SCREEN_WINDOW_ALT_EXP_TO_NEXT_LVL,
};

enum PokemonMovesScreenWindow {
    POKEMON_MOVES_SCREEN_WINDOW_POKEMON_NAME = 0,
    POKEMON_MOVES_SCREEN_WINDOW_MOVE_1,
    POKEMON_MOVES_SCREEN_WINDOW_MOVE_2,
    POKEMON_MOVES_SCREEN_WINDOW_MOVE_3,
    POKEMON_MOVES_SCREEN_WINDOW_MOVE_4,
    POKEMON_MOVES_SCREEN_WINDOW_SUMMARY,
    POKEMON_MOVES_SCREEN_WINDOW_ALT_POKEMON_NAME,
    POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_1,
    POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_2,
    POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_3,
    POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_4,
};

enum MoveSummaryScreenWindow {
    MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME = 0,
    MOVE_SUMMARY_SCREEN_WINDOW_PP,
    MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY,
    MOVE_SUMMARY_SCREEN_WINDOW_POWER,
    MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION,
    MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY,
    MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME,
    MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL,
    MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL,
    MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL,
    MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_MOVE_NAME,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_PP,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_ACCURACY,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_POWER,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_DESCRIPTION,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_CATEGORY,
    MOVE_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME,
};

enum RestoreMovePPScreenWindow {
    RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME = 0,
    RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1,
    RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2,
    RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3,
    RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4,
};

enum LearnMoveScreenWindow {
    LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME = 0,
    LEARN_MOVE_SCREEN_WINDOW_MOVE_1,
    LEARN_MOVE_SCREEN_WINDOW_MOVE_2,
    LEARN_MOVE_SCREEN_WINDOW_MOVE_3,
    LEARN_MOVE_SCREEN_WINDOW_MOVE_4,
    LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN,
};

enum ConfirmLearnMoveScreenWindow {
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME = 0,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY,
    CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM,
};

enum ConfirmLearnMoveContestStatsScreenWindow {
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME = 0,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT,
    CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM,
};

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

#define HEALTH_BAR_MAX_PIXELS 48

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
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 0,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 133,
    },
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 1,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 208,
    },
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 6,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 283,
    },
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_4] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 7,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 358,
    },
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_5] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 0,
        .tilemapTop = 12,
        .width = 15,
        .height = 5,
        .palette = 9,
        .baseTile = 433,
    },
    [PARTY_POKEMON_SCREEN_WINDOW_PARTY_SLOT_6] = {
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
    [SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 4,
        .width = 12,
        .height = 3,
        .palette = 9,
        .baseTile = 1,
    },
    [SELECT_POKEMON_SCREEN_WINDOW_SHIFT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 11,
        .tilemapTop = 12,
        .width = 10,
        .height = 3,
        .palette = 9,
        .baseTile = 37,
    },
    [SELECT_POKEMON_SCREEN_WINDOW_SUMMARY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 67,
    },
    [SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES] = {
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
    [POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 293,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 9,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 329,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 11,
        .width = 18,
        .height = 4,
        .palette = 13,
        .baseTile = 351,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 16,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 423,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_HP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 7,
        .height = 2,
        .palette = 13,
        .baseTile = 447,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 7,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 461,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 9,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 467,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SPEED] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 15,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 473,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 11,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 479,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 485,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 25,
        .tilemapTop = 6,
        .width = 6,
        .height = 1,
        .palette = 9,
        .baseTile = 491,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 4,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 497,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 6,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 503,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 4,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 133,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 7,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 137,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 9,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 149,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 15,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 161,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 11,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 173,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 21,
        .tilemapTop = 13,
        .width = 6,
        .height = 2,
        .palette = 13,
        .baseTile = 185,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 4,
        .width = 4,
        .height = 2,
        .palette = 13,
        .baseTile = 197,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 205,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 227,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 311,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 9,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 609,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ABILITY_DESC] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 11,
        .width = 18,
        .height = 4,
        .palette = 13,
        .baseTile = 631,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HELD_ITEM] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 16,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 703,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 7,
        .height = 2,
        .palette = 13,
        .baseTile = 727,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_ATTACK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 7,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 741,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_DEFENSE] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 9,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 747,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SPEED] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 15,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 753,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_ATK] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 11,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 759,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_SP_DEF] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 28,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 765,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_HEALTH_BAR] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 25,
        .tilemapTop = 6,
        .width = 6,
        .height = 1,
        .palette = 9,
        .baseTile = 771,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_LEVEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 4,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 777,
    },
    [POKEMON_SUMMARY_SCREEN_WINDOW_ALT_EXP_TO_NEXT_LVL] = {
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
    [POKEMON_MOVES_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 293,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 329,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 399,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 469,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 539,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_SUMMARY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 13,
        .tilemapTop = 20,
        .width = 11,
        .height = 3,
        .palette = 9,
        .baseTile = 260,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_ALT_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 311,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 609,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 679,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 749,
    },
    [POKEMON_MOVES_SCREEN_WINDOW_ALT_MOVE_4] = {
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
    [MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 157,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 183,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 225,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_POWER] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 231,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 237,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 411,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 139,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 20,
        .tilemapTop = 5,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 179,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 16,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 193,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 209,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 387,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 427,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_PP] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 449,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 459,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_POWER] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 465,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 471,
    },
    [MOVE_SUMMARY_SCREEN_WINDOW_ALT_CATEGORY] = {
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
    [RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 139,
    },
    [RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 157,
    },
    [RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 227,
    },
    [RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 297,
    },
    [RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4] = {
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
    [LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 133,
    },
    [LEARN_MOVE_SCREEN_WINDOW_MOVE_1] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 151,
    },
    [LEARN_MOVE_SCREEN_WINDOW_MOVE_2] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 6,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 221,
    },
    [LEARN_MOVE_SCREEN_WINDOW_MOVE_3] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 291,
    },
    [LEARN_MOVE_SCREEN_WINDOW_MOVE_4] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 17,
        .tilemapTop = 12,
        .width = 14,
        .height = 5,
        .palette = 9,
        .baseTile = 361,
    },
    [LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN] = {
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
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 5,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 19,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 20,
        .tilemapTop = 5,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 41,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 45,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 16,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 91,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 107,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 16,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 123,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 13,
        .baseTile = 129,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = 13,
        .baseTile = 135,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 285,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = 8,
        .height = 2,
        .palette = 13,
        .baseTile = 309,
    },
    [CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM] = {
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
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 5,
        .tilemapTop = 1,
        .width = 9,
        .height = 2,
        .palette = 13,
        .baseTile = 1,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 4,
        .tilemapTop = 8,
        .width = 11,
        .height = 2,
        .palette = 13,
        .baseTile = 19,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 20,
        .tilemapTop = 8,
        .width = 2,
        .height = 2,
        .palette = 13,
        .baseTile = 41,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 23,
        .tilemapTop = 8,
        .width = 5,
        .height = 2,
        .palette = 13,
        .baseTile = 45,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 2,
        .tilemapTop = 11,
        .width = 12,
        .height = 2,
        .palette = 13,
        .baseTile = 325,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 16,
        .tilemapTop = 11,
        .width = 15,
        .height = 6,
        .palette = 13,
        .baseTile = 349,
    },
    [CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM] = {
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
    case BATTLE_PARTY_SCREEN_PARTY_POKEMON:
        windowTemplates = sPartyPokemonScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_PARTY_POKEMON_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_SELECT_POKEMON:
        windowTemplates = sSelectPokemonScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_SELECT_POKEMON_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_SUMMARY:
        windowTemplates = sPokemonSummaryScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_POKEMON_SUMMARY_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_POKEMON_MOVES:
        windowTemplates = sPokemonMovesScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_POKEMON_MOVES_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_MOVE_SUMMARY:
        windowTemplates = sMoveSummaryScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_MOVE_SUMMARY_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP:
        windowTemplates = sRestoreMovePPScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_RESTORE_MOVE_PP_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_LEARN_MOVE:
    case BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS:
        windowTemplates = sLearnMoveScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_LEARN_MOVE_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE:
        windowTemplates = sConfirmLearnMoveScreenWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_CONFIRM_LEARN_MOVE_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS:
        windowTemplates = sConfirmLearnMoveContestStatsWindowTemplates;
        battleParty->numWindows = BATTLE_PARTY_CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_NUM;
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
    case BATTLE_PARTY_SCREEN_PARTY_POKEMON:
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
    Strbuf *formattedStrbuf = Strbuf_Init(12, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, sPartyPokemonNameTextIDs[partyIndex]);

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    if (font == FONT_SYSTEM) {
        Text_AddPrinterWithParamsAndColor(window, font, formattedStrbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(window, font, formattedStrbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    }

    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);

    if (pokemon->displayNidoranGender == FALSE && pokemon->isEgg == FALSE) {
        u32 genderIconXOffset;
        if (pokemon->gender == GENDER_MALE) {
            strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MaleIcon);
            genderIconXOffset = Window_GetWidth(window) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

            if (font == FONT_SYSTEM) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
            }

            Strbuf_Free(strbuf);
        } else if (pokemon->gender == GENDER_FEMALE) {
            strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_FemaleIcon);
            genderIconXOffset = Window_GetWidth(window) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

            if (font == FONT_SYSTEM) {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
            } else {
                Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, genderIconXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
            }

            Strbuf_Free(strbuf);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintPokemonLevel(BattleParty *battleParty, u32 windowIndex, u16 partyIndex, u8 x, u8 y)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];

    FontSpecialChars_DrawPartyScreenText(battleParty->unk_1FA0, SPECIAL_CHAR_LEVEL, pokemon->level, POKEMON_LEVEL_DIGITS, PADDING_MODE_NONE, &battleParty->windows[windowIndex], x + 8, y);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintPartyPokemonStats(BattleParty *battleParty, u32 windowIndex, u16 partyIndex, u8 x, u8 y)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];

    FontSpecialChars_DrawPartyScreenHPText(battleParty->unk_1FA0, pokemon->curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_SPACES, &battleParty->windows[windowIndex], x, y);
    FontSpecialChars_DrawPartyScreenLevelText(battleParty->unk_1FA0, SPECIAL_CHAR_SLASH, &battleParty->windows[windowIndex], x + 8 * 3, y);
    FontSpecialChars_DrawPartyScreenHPText(battleParty->unk_1FA0, pokemon->maxHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, &battleParty->windows[windowIndex], x + 8 * 3 + 8, y);
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
    Strbuf *formattedStrbuf = Strbuf_Init(16, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonAbilityName);

    StringTemplate_SetAbilityName(battleParty->stringTemplate, 0, pokemon->ability);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, formattedStrbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintPokemonHeldItem(BattleParty *battleParty, u32 windowIndex, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    Strbuf *formattedStrbuf;
    Strbuf *strbuf;

    if (pokemon->heldItem == ITEM_NONE) {
        formattedStrbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonNoItemHeld);
    } else {
        formattedStrbuf = Strbuf_Init(18, battleParty->context->heapID);
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonHeldItemName);

        StringTemplate_SetItemName(battleParty->stringTemplate, 0, pokemon->heldItem);
        StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
        Strbuf_Free(strbuf);
    }

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, formattedStrbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintMoveName(BattleParty *battleParty, enum Move move, u32 windowIndex, u32 textID, u16 font, u16 yOffset, TextColor color)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *formattedStrbuf = Strbuf_Init(16, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, textID);
    u32 xOffset;

    StringTemplate_SetMoveName(battleParty->stringTemplate, 0, move);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    if (font == FONT_SUBSCREEN) {
        xOffset = (Window_GetWidth(window) * 8 - Font_CalcStrbufWidth(font, formattedStrbuf, 0)) / 2;
    } else {
        xOffset = 0;
    }

    Text_AddPrinterWithParamsAndColor(window, font, formattedStrbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPPLabel(BattleParty *battleParty, u16 windowIndex, u8 xOffset, u8 yOffset)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonPPLabel);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[windowIndex], FONT_SYSTEM, strbuf, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[windowIndex]);
}

static void PrintSelectOptionText(BattleParty *battleParty, u32 textID)
{
    Strbuf *strbuf;

    Window_DrawMessageBoxWithScrollCursor(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], TRUE, 1, 14);
    Window_FillTilemap(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], 15);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION], FONT_MESSAGE, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_SELECT_OPTION]);
}

static void PrintButtonText(BattleParty *battleParty, u32 windowIndex, u32 textID)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, textID);
    u32 stringWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, (Window_GetWidth(window) * 8 - stringWidth) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintSelectedPokemonLevel(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonLevelLabel);
    Strbuf *formattedStrbuf;
    u16 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonLevelValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->level, POKEMON_LEVEL_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonExpToNextLevelLabel);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonExpToNextLevelValue);
    formattedStrbuf = Strbuf_Init(14, battleParty->context->heapID);

    if (pokemon->level < MAX_POKEMON_LEVEL) {
        StringTemplate_SetNumber(
            battleParty->stringTemplate, 0, pokemon->nextLevelExp - pokemon->exp, POKEMON_XP_TO_NEXT_LEVEL_DIGITS, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    } else {
        StringTemplate_SetNumber(
            battleParty->stringTemplate, 0, 0, POKEMON_XP_TO_NEXT_LEVEL_DIGITS, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    }

    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset]) * 8 - Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset]);
}

static void PrintPokemonAttackStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonAttackStatLabel);
    Strbuf *formattedStrbuf;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonAttackStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->attack, POKEMON_ATTACK_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset]) * 8 - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset]);
}

static void PrintPokemonDefenseStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonDefenseStatLabel);
    Strbuf *formattedStrbuf;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonDefenseStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->defence, POKEMON_DEFENSE_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset]) * 8 - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset]);
}

static void PrintPokemonSpeedStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpeedStatLabel);
    Strbuf *formattedStrbuf;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpeedStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->speed, POKEMON_SPEED_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset]) * 8 - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset]);
}

static void PrintPokemonSpAtkStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpAtkStatLabel);
    Strbuf *formattedStrbuf;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpAtkStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->spAtk, POKEMON_SP_ATK_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset]) * 8 - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset]);
}

static void PrintPokemonSpDefStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpDefStatLabel);
    Strbuf *formattedStrbuf;
    u8 stringWidth;
    u8 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonSpDefStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->spDef, POKEMON_SP_DEF_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
    xOffset = Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset]) * 8 - stringWidth;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset]);
}

static void PrintPokemonHPStat(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u16 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonHPStatLabel);
    Strbuf *formattedStrbuf;
    u32 stringWidth, formattedStringWidth;
    u16 xOffset;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonHPStatDivider);
    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    xOffset = (Window_GetWidth(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP]) * 8 - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonHPStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    formattedStringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset - formattedStringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_PokemonMaxHPStatValue);
    formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, pokemon->maxHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], FONT_SYSTEM, formattedStrbuf, xOffset + stringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset]);
}

static void PrintPokemonAbilityDescription(BattleParty *battleParty, u32 partyIndex)
{
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    u32 windowIndexOffset = windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_DESCRIPTIONS, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, pokemon->ability);

    Text_AddPrinterWithParamsAndColor(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset]);
}

static void PrintMoveAccuracyLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveAccuracyLabel);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveAccuracyValue(BattleParty *battleParty, u32 windowIndex, u32 moveAccuracyStat)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf;
    Strbuf *formattedStrbuf;
    u16 stringWidth;
    u16 xOffset;

    if (moveAccuracyStat == 0) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveStatNoValue);
        stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
        xOffset = Window_GetWidth(window) * 8 - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(strbuf);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveAccuracyValue);
        formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

        StringTemplate_SetNumber(battleParty->stringTemplate, 0, moveAccuracyStat, MOVE_ACCURACY_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

        stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
        xOffset = Window_GetWidth(window) * 8 - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(strbuf);
        Strbuf_Free(formattedStrbuf);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovePowerLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePowerLabel);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovePowerValue(BattleParty *battleParty, u32 windowIndex, u32 movePowerStat)
{
    Window *window;
    Strbuf *strbuf;
    Strbuf *formattedStrbuf;
    u16 stringWidth;
    u16 xOffset;

    window = &battleParty->windows[windowIndex];

    if (movePowerStat <= 1) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveStatNoValue);
        stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
        xOffset = Window_GetWidth(window) * 8 - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(strbuf);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePowerValue);
        formattedStrbuf = Strbuf_Init(8, battleParty->context->heapID);

        StringTemplate_SetNumber(battleParty->stringTemplate, 0, movePowerStat, MOVE_POWER_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

        stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
        xOffset = Window_GetWidth(window) * 8 - stringWidth;

        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(strbuf);
        Strbuf_Free(formattedStrbuf);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveDescription(BattleParty *battleParty, u32 windowIndex, u32 textID)
{
    Window *window = &battleParty->windows[windowIndex];
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_DESCRIPTIONS, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveContestEffect(BattleParty *battleParty, u32 windowIndex, enum Move move)
{
    Window *window = &battleParty->windows[windowIndex];
    u32 textID = sub_0209577C(MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT));
    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(messageLoader, textID);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);

    MessageLoader_Free(messageLoader);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCategoryLabel(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCategoryLabel);
    u16 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    u16 xOffset = (Window_GetWidth(window) * 8 - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCategory(BattleParty *battleParty, u32 windowIndex, u32 moveCategory)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf;
    u32 xOffset;

    switch (moveCategory) {
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_PHYSICAL:
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCategoryPhysical);
        break;
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_SPECIAL:
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCategorySpecial);
        break;
    case BATTLE_PARTY_POKEMON_MOVE_CATEGORY_STATUS:
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCategoryStatus);
    }

    xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 56);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintSummaryScreenMovePPStats(BattleParty *battleParty, u32 windowIndex, u32 currentPP, u32 maxPP)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePPDivider);
    Strbuf *formattedStrbuf;
    u32 stringWidth, formattedStringWidth;
    u32 xOffset;

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    xOffset = (Window_GetWidth(window) * 8 - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);
    formattedStrbuf = Strbuf_Init(6, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, currentPP, SUMMARY_SCREEN_MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    formattedStringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, xOffset - formattedStringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveMaxPP);
    formattedStrbuf = Strbuf_Init(6, battleParty->context->heapID);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, maxPP, SUMMARY_SCREEN_MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, xOffset + stringWidth, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintConfirmMoveButton(BattleParty *battleParty, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *strbuf;
    u32 stringWidth;

    if (battleParty->context->selectedMoveSlot == MOVE_TO_LEARN_SLOT) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CancelMoveButton);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ForgetMoveButton);
    }

    stringWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, (96 - stringWidth) / 2, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

void BattlePartyText_PrintHMMovesCantBeForgottenText(BattleParty *battleParty)
{
    Window *window;
    Strbuf *strbuf;

    if (battleParty->currentScreen == BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE) {
        window = &battleParty->windows[BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS];
    } else {
        window = &battleParty->windows[BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP];
    }

    Window_FillTilemap(window, 0);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_HMMovesCantBeForgotten);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMovesScreenMovePPStats(BattleParty *battleParty, BattlePartyPokemonMove *move, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *formattedStrbuf = Strbuf_Init(6, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePPLabel);
    u32 stringWidth;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 40, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePPDivider);
    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 80, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveMaxPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->maxPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, 80 + stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->currentPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, 80 - stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveCurrentPP(BattleParty *battleParty, BattlePartyPokemonMove *move, u32 windowIndex)
{
    Window *window = &battleParty->windows[windowIndex];
    Strbuf *formattedStrbuf = Strbuf_Init(6, battleParty->context->heapID);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MovePPLabel);
    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Strbuf_Free(strbuf);
    Window_FillRectWithColor(window, 0, 40 + stringWidth, 24, 80 - (40 + stringWidth), 16);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MoveCurrentPP);

    StringTemplate_SetNumber(battleParty->stringTemplate, 0, move->currentPP, MOVE_PP_STAT_DIGIT, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(battleParty->stringTemplate, formattedStrbuf, strbuf);

    stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, formattedStrbuf, 80 - stringWidth, 24, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strbuf);
    Strbuf_Free(formattedStrbuf);
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

        if (PokemonSummaryScreen_StatusIconAnimIdx(battleParty->partyPokemon[i].pokemon) != SUMMARY_CONDITION_NONE) {
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
    Window_FillTilemap(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_SHIFT], 0);
    Window_FillTilemap(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_SUMMARY], 0);
    Window_FillTilemap(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES], 0);

    PrintSelectedPokemonName(battleParty, battleParty->context->selectedPartyIndex);

    PrintButtonText(battleParty, SELECT_POKEMON_SCREEN_WINDOW_SHIFT, BattleParty_Text_ShiftButton);

    if (battleParty->partyPokemon[battleParty->context->selectedPartyIndex].isEgg == FALSE) {
        PrintButtonText(battleParty, SELECT_POKEMON_SCREEN_WINDOW_SUMMARY, BattleParty_Text_SummaryButton);
        PrintButtonText(battleParty, SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES, BattleParty_Text_CheckMovesButton);
    } else {
        Window_ScheduleCopyToVRAM(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_SUMMARY]);
        Window_ScheduleCopyToVRAM(&battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_CHECK_MOVES]);
    }
}

static void PrintSelectedPokemonName(BattleParty *battleParty, u32 partyIndex)
{
    Window *window = &battleParty->windows[SELECT_POKEMON_SCREEN_WINDOW_POKEMON_NAME];
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[partyIndex];
    Strbuf *strbuf = Strbuf_Init(12, battleParty->context->heapID);
    Strbuf *formattedStrbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, sPartyPokemonNameTextIDs[partyIndex]);
    u8 stringWidth;
    u8 formattedStringWidth;
    u8 genderIconOffset;
    u8 xOffset;

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
    StringTemplate_Format(battleParty->stringTemplate, strbuf, formattedStrbuf);
    Strbuf_Free(formattedStrbuf);

    formattedStrbuf = NULL;

    if (pokemon->displayNidoranGender == FALSE && pokemon->isEgg == FALSE) {
        if (pokemon->gender == GENDER_MALE) {
            formattedStrbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_MaleIcon);
        } else if (pokemon->gender == GENDER_FEMALE) {
            formattedStrbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_FemaleIcon);
        }
    }

    stringWidth = Font_CalcStrbufWidth(FONT_SUBSCREEN, strbuf, 0);

    if (formattedStrbuf == NULL) {
        formattedStringWidth = 0;
        genderIconOffset = 0;
    } else {
        formattedStringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, formattedStrbuf, 0);
        genderIconOffset = 8;
    }

    xOffset = (Window_GetWidth(window) * 8 - stringWidth - formattedStringWidth - genderIconOffset) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SUBSCREEN, strbuf, xOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(7, 8, 9), NULL);
    Strbuf_Free(strbuf);

    if (formattedStrbuf != NULL) {
        if (pokemon->gender == GENDER_MALE) {
            Text_AddPrinterWithParamsAndColor(
                window, FONT_SYSTEM, formattedStrbuf, xOffset + stringWidth + genderIconOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(10, 11, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                window, FONT_SYSTEM, formattedStrbuf, xOffset + stringWidth + genderIconOffset, 8, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(12, 13, 0), NULL);
        }

        Strbuf_Free(formattedStrbuf);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void RenderPokemonMovesScreen(BattleParty *battleParty)
{
    u16 windowIndexOffset = POKEMON_MOVES_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;

    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_2 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_3 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_4 + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_SUMMARY], 0);

    PrintPokemonNameHeader(battleParty, 0 + windowIndexOffset, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u16 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset + i);
    }

    PrintButtonText(battleParty, POKEMON_MOVES_SCREEN_WINDOW_SUMMARY, BattleParty_Text_SummaryButton);

    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_1 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_2 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_3 + windowIndexOffset]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[POKEMON_MOVES_SCREEN_WINDOW_MOVE_4 + windowIndexOffset]);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderPokemonSummaryScreen(BattleParty *battleParty)
{
    u32 windowIndexOffset = POKEMON_SUMMARY_SCREEN_WINDOW_ALT_POKEMON_NAME * battleParty->useAltSummaryWindows;

    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES], 0);

    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_LEVEL + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_EXP_TO_NEXT_LVL + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ATTACK + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_DEFENSE + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SPEED + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_ATK + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_SP_DEF + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HP + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_DESC + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM + windowIndexOffset], 0);

    PrintPokemonNameHeader(battleParty, POKEMON_SUMMARY_SCREEN_WINDOW_POKEMON_NAME + windowIndexOffset, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPokemonHPStat(battleParty, battleParty->context->selectedPartyIndex);
    DrawPokemonHealthBar(battleParty, POKEMON_SUMMARY_SCREEN_WINDOW_HEALTH_BAR + windowIndexOffset, battleParty->context->selectedPartyIndex, 0, 0);
    PrintSelectedPokemonLevel(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonAttackStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonDefenseStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpeedStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpAtkStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonSpDefStat(battleParty, battleParty->context->selectedPartyIndex);
    PrintPokemonAbilityName(battleParty, POKEMON_SUMMARY_SCREEN_WINDOW_ABILITY_NAME + windowIndexOffset, battleParty->context->selectedPartyIndex);
    PrintPokemonHeldItem(battleParty, POKEMON_SUMMARY_SCREEN_WINDOW_HELD_ITEM + windowIndexOffset, battleParty->context->selectedPartyIndex);
    PrintPokemonAbilityDescription(battleParty, battleParty->context->selectedPartyIndex);
    PrintButtonText(battleParty, POKEMON_SUMMARY_SCREEN_WINDOW_CHECK_MOVES, BattleParty_Text_CheckMovesButton);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderMoveSummaryScreen(BattleParty *battleParty)
{
    u32 windowIndexOffset = MOVE_SUMMARY_SCREEN_WINDOW_ALT_MOVE_NAME * battleParty->useAltSummaryWindows;
    BattlePartyPokemonMove *move;

    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_PP + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_POWER + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY + windowIndexOffset], 0);
    Window_FillTilemap(&battleParty->windows[MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION + windowIndexOffset], 0);

    move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

    PrintPokemonNameHeader(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_PP_LABEL, 0, 0);
    PrintMoveName(battleParty, move->move, MOVE_SUMMARY_SCREEN_WINDOW_MOVE_NAME + windowIndexOffset, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
    PrintMoveAccuracyLabel(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY_LABEL);
    PrintMoveAccuracyValue(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_ACCURACY + windowIndexOffset, move->accuracy);
    PrintMovePowerLabel(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_POWER_LABEL);
    PrintMovePowerValue(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_POWER + windowIndexOffset, move->power);
    PrintMoveDescription(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_DESCRIPTION + windowIndexOffset, move->move);
    PrintMoveCategoryLabel(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY_LABEL);
    PrintMoveCategory(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_CATEGORY + windowIndexOffset, move->class);
    PrintSummaryScreenMovePPStats(battleParty, MOVE_SUMMARY_SCREEN_WINDOW_PP + windowIndexOffset, move->currentPP, move->maxPP);

    battleParty->useAltSummaryWindows ^= TRUE;
}

static void RenderLearnMoveScreen(BattleParty *battleParty)
{
    BattlePartyPokemonMove moveToLearn;

    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_1], 0);
    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_2], 0);
    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_3], 0);
    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_4], 0);
    Window_FillTilemap(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN], 0);

    PrintPokemonNameHeader(battleParty, LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u32 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, LEARN_MOVE_SCREEN_WINDOW_MOVE_1 + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, LEARN_MOVE_SCREEN_WINDOW_MOVE_1 + i);
    }

    PrintMoveName(battleParty, battleParty->context->moveToLearn, LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN, sMoveNameTextIDs[MOVE_TO_LEARN_SLOT], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));

    moveToLearn.currentPP = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);
    moveToLearn.maxPP = moveToLearn.currentPP;

    PrintMovesScreenMovePPStats(battleParty, &moveToLearn, LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN);

    Window_ScheduleCopyToVRAM(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_1]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_2]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_3]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_4]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[LEARN_MOVE_SCREEN_WINDOW_MOVE_TO_LEARN]);
}

static void RenderConfirmLearnMoveScreen(BattleParty *battleParty)
{
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM], 0);

    PrintPokemonNameHeader(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP_LABEL, 0, 0);
    PrintMoveAccuracyLabel(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY_LABEL);
    PrintMovePowerLabel(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER_LABEL);
    PrintMoveCategoryLabel(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY_LABEL);

    if (battleParty->context->selectedMoveSlot < MOVE_TO_LEARN_SLOT) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

        PrintMoveName(battleParty, move->move, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveAccuracyValue(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY, move->accuracy);
        PrintMovePowerValue(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER, move->power);
        PrintMoveDescription(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION, move->move);
        PrintMoveCategory(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY, move->class);
        PrintSummaryScreenMovePPStats(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP, move->currentPP, move->maxPP);
    } else {
        u32 pp = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);

        PrintMoveName(battleParty, battleParty->context->moveToLearn, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveDescription(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_DESCRIPTION, battleParty->context->moveToLearn);
        PrintMoveAccuracyValue(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_ACCURACY, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_ACCURACY));
        PrintMovePowerValue(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_POWER, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_POWER));
        PrintMoveCategory(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CATEGORY, MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_CLASS));
        PrintSummaryScreenMovePPStats(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_PP, pp, pp);
    }

    PrintConfirmMoveButton(battleParty, CONFIRM_LEARN_MOVE_SCREEN_WINDOW_CONFIRM);
}

static void RenderRestoreMovePPScreen(BattleParty *battleParty)
{
    Window_FillTilemap(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1], 0);
    Window_FillTilemap(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2], 0);
    Window_FillTilemap(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3], 0);
    Window_FillTilemap(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4], 0);

    PrintPokemonNameHeader(battleParty, RESTORE_MOVE_PP_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);

    for (u32 i = 0; i < LEARNED_MOVES_MAX; i++) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[i];

        if (move->move == MOVE_NONE) {
            continue;
        }

        PrintMoveName(battleParty, move->move, RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1 + i, sMoveNameTextIDs[i], FONT_SUBSCREEN, 8, TEXT_COLOR(7, 8, 9));
        PrintMovesScreenMovePPStats(battleParty, move, RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1 + i);
    }

    if (Item_LoadParam(battleParty->context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, battleParty->context->heapID) == FALSE) {
        PrintSelectOptionText(battleParty, BattleParty_Text_RestoreWhichMove);
    }

    Window_ScheduleCopyToVRAM(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_1]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_2]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_3]);
    Window_ScheduleCopyToVRAM(&battleParty->windows[RESTORE_MOVE_PP_SCREEN_WINDOW_MOVE_4]);
}

void BattlePartyText_PrintSelectedMoveCurrentPP(BattleParty *battleParty, u16 windowIndex, u16 moveIndex)
{
    BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[moveIndex];
    PrintMoveCurrentPP(battleParty, move, windowIndex);
}

static void RenderConfirmLearnMoveContestStatsScreen(BattleParty *battleParty)
{
    Strbuf *strbuf;
    u32 xOffset;

    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT], 0);
    Window_FillTilemap(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM], 0);

    PrintPokemonNameHeader(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_POKEMON_NAME, FONT_SYSTEM, battleParty->context->selectedPartyIndex, 0, 0);
    PrintPPLabel(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP_LABEL, 0, 0);

    strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_AppealPtsLabel);
    xOffset = Font_CalcCenterAlignment(FONT_SYSTEM, strbuf, 0, 96);
    Text_AddPrinterWithParamsAndColor(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    Strbuf_Free(strbuf);
    Window_ScheduleCopyToVRAM(&battleParty->windows[CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_APPEAL_PTS]);

    if (battleParty->context->selectedMoveSlot < MOVE_TO_LEARN_SLOT) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

        PrintMoveName(battleParty, move->move, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[battleParty->context->selectedMoveSlot], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveContestEffect(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT, move->move);
        PrintSummaryScreenMovePPStats(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP, move->currentPP, move->maxPP);
    } else {
        u32 pp = MoveTable_LoadParam(battleParty->context->moveToLearn, MOVEATTRIBUTE_PP);

        PrintMoveName(battleParty, battleParty->context->moveToLearn, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_MOVE_NAME, sMoveNameTextIDs[4], FONT_SYSTEM, 0, TEXT_COLOR(15, 14, 0));
        PrintMoveContestEffect(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONTEST_EFFECT, battleParty->context->moveToLearn);
        PrintSummaryScreenMovePPStats(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_PP, pp, pp);
    }

    PrintConfirmMoveButton(battleParty, CONFIRM_LEARN_MOVE_CONTEST_STATS_SCREEN_WINDOW_CONFIRM);
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
    battleParty->textPrinterID = Text_AddPrinterWithParams(&battleParty->messageBoxWindows[BATTLE_PARTY_MESSAGE_BOX_ERROR], FONT_MESSAGE, battleParty->strbuf, 0, 0, BattleSystem_TextSpeed(battleParty->context->battleSystem), NULL);
}

void BattlePartyText_PrintUseItemEffect(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    Pokemon *pokemon;
    void *itemData;
    Strbuf *strbuf;
    u16 newHP;
    u8 healedStatusEffectFlags;

    itemData = Item_Load(context->selectedBattleBagItem, ITEM_FILE_TYPE_DATA, context->heapID);
    pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
    newHP = Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
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
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemRevivedPokemon);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (battleParty->partyPokemon[context->selectedPartyIndex].curHP != newHP) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemRestoredHealth);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_SetNumber(battleParty->stringTemplate, 1, newHP - battleParty->partyPokemon[context->selectedPartyIndex].curHP, POKEMON_HP_STAT_DIGITS, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (Item_Get(itemData, ITEM_PARAM_PP_RESTORE) != FALSE || Item_Get(itemData, ITEM_PARAM_PP_RESTORE_ALL) != FALSE) {
        MessageLoader_GetStrbuf(battleParty->messageLoader, BattleParty_Text_ItemRestoredPP, battleParty->strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_SLEEP) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredSleep);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_POISON) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredPoisoning);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_BURN) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredBurn);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_FREEZE) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredFreeze);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_PARALYSIS) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredParalysis);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_CONFUSION) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredConfusion);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else if (healedStatusEffectFlags == HEALED_STATUS_EFFECT_FLAG_INFATUATION) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredInfatuation);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    } else {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_ItemCuredMultipleStatuses);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
    }

    Heap_Free(itemData);
}

void BattlePartyText_PrintEmbargoPreventingItemUse(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    Pokemon *pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_EmbargoPreventsItemUse);

    StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon));
    StringTemplate_SetMoveName(battleParty->stringTemplate, 1, MOVE_EMBARGO);
    StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
    Strbuf_Free(strbuf);
}
