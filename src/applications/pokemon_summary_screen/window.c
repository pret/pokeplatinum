#include "applications/pokemon_summary_screen/window.h"

#include <nitro.h>
#include <string.h>

#include "generated/genders.h"
#include "generated/items.h"

#include "struct_defs/struct_02090800.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprites.h"

#include "bg_window.h"
#include "dexmode_checker.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "move_table.h"
#include "pokemon.h"
#include "render_window.h"
#include "ribbon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200C440.h"
#include "unk_02092494.h"
#include "unk_02094EDC.h"

#include "res/text/bank/pokemon_summary_screen.h"

// todo: consolidate this with more generic ones if this scheme is used elsewhere
enum SummaryTextAlignment {
    ALIGN_LEFT = 0,
    ALIGN_RIGHT,
    ALIGN_CENTER,
};

#define RIBBON_INDEX_TEXT_X 56

#define PP_TEXT_X 60
#define PP_TEXT_Y 16

static void PrintStrbufToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum SummaryTextAlignment alignment);
static void PrintTextToStaticWindow(PokemonSummaryScreen *summaryScreen, enum SummaryStaticWindow windowIndex, u32 entryID, TextColor color, enum SummaryTextAlignment alignment);
static void PrintStaticWindows(PokemonSummaryScreen *summaryScreen);
static void PrintMoveNameAndPP(PokemonSummaryScreen *summaryScreen, u32 moveIndex);
static void DrawInfoPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawMemoPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawSkillsPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawConditionPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawBattleMovesPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawContestMovesPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawRibbonsPageWindows(PokemonSummaryScreen *summaryScreen);
static void DrawExitPageWindows(PokemonSummaryScreen *summaryScreen);

static const WindowTemplate sStaticWindowTemplates[] = {
    [SUMMARY_WINDOW_LABEL_INFO] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 13,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1,
    },
    [SUMMARY_WINDOW_LABEL_MEMO] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1B,
    },
    [SUMMARY_WINDOW_LABEL_SKILLS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 14,
        .height = 2,
        .palette = 15,
        .baseTile = 0x31,
    },
    [SUMMARY_WINDOW_LABEL_CONDITION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = 15,
        .baseTile = 0x4D,
    },
    [SUMMARY_WINDOW_LABEL_BATTLE_MOVES] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 9,
        .height = 2,
        .palette = 15,
        .baseTile = 0x63,
    },
    [SUMMARY_WINDOW_LABEL_CONTEST_MOVES] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = 15,
        .baseTile = 0x75,
    },
    [SUMMARY_WINDOW_LABEL_ITEM] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 20,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x8B,
    },
    [SUMMARY_WINDOW_LABEL_DEX_NUM] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 5,
        .width = 9,
        .height = 2,
        .palette = 15,
        .baseTile = 0x97,
    },
    [SUMMARY_WINDOW_LABEL_SPECIES_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 7,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0xA9,
    },
    [SUMMARY_WINDOW_LABEL_TYPE] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 9,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0xB3,
    },
    [SUMMARY_WINDOW_LABEL_OT_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 11,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0xBD,
    },
    [SUMMARY_WINDOW_LABEL_OT_ID] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 13,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0xC7,
    },
    [SUMMARY_WINDOW_LABEL_EXP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 15,
        .width = 15,
        .height = 2,
        .palette = 15,
        .baseTile = 0xD1,
    },
    [SUMMARY_WINDOW_LABEL_EXP_NEXT_LV] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 19,
        .width = 12,
        .height = 2,
        .palette = 15,
        .baseTile = 0xEF,
    },
    [SUMMARY_WINDOW_DUMMY_14] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 19,
        .tilemapTop = 21,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x107,
    },
    [SUMMARY_WINDOW_LABEL_HP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 18,
        .tilemapTop = 4,
        .width = 2,
        .height = 2,
        .palette = 15,
        .baseTile = 0x10D,
    },
    [SUMMARY_WINDOW_LABEL_ATTACK] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 7,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x111,
    },
    [SUMMARY_WINDOW_LABEL_DEFENSE] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 9,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x11D,
    },
    [SUMMARY_WINDOW_LABEL_SP_ATTACK] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 11,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x129,
    },
    [SUMMARY_WINDOW_LABEL_SP_DEFENSE] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 13,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x135,
    },
    [SUMMARY_WINDOW_LABEL_SPEED] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 15,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x141,
    },
    [SUMMARY_WINDOW_LABEL_ABILITY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 18,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x14D,
    },
    [SUMMARY_WINDOW_LABEL_SHEEN] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 20,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0x159,
    },
    [SUMMARY_WINDOW_DUMMY_23] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 22,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x163,
    },
    [SUMMARY_WINDOW_LABEL_MOVE_CANCEL] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 20,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0x16F,
    },
    [SUMMARY_WINDOW_LABEL_MOVE_CATEGORY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x179,
    },
    [SUMMARY_WINDOW_LABEL_MOVE_POWER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 10,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x185,
    },
    [SUMMARY_WINDOW_LABEL_MOVE_ACCURACY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 12,
        .width = 8,
        .height = 2,
        .palette = 15,
        .baseTile = 0x191,
    },
    [SUMMARY_WINDOW_LABEL_CLOSE_WINDOW] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 18,
        .tilemapTop = 11,
        .width = 9,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1A1,
    },
    [SUMMARY_WINDOW_LABEL_APPEAL_POINTS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 13,
        .width = 12,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1B3,
    },
    [SUMMARY_WINDOW_LABEL_RIBBON_COUNT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 21,
        .width = 12,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1CB,
    },
    [SUMMARY_WINDOW_LABEL_RIBBONS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1E3,
    },
    [SUMMARY_WINDOW_ITEM_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 22,
        .width = 12,
        .height = 2,
        .palette = 15,
        .baseTile = 0x1F9,
    },
    [SUMMARY_WINDOW_MON_LEVEL] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 5,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x211,
    },
    [SUMMARY_WINDOW_MON_NICKNAME_GENDER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 3,
        .tilemapTop = 3,
        .width = 9,
        .height = 2,
        .palette = 15,
        .baseTile = 0x21D,
    },
    [SUMMARY_WINDOW_BUTTON_PROMPT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 0,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x22F,
    },
};

static const WindowTemplate sExtraWindowTemplates_Info[] = {
    [SUMMARY_WINDOW_DEX_NUM] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 5,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_SPECIES_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 7,
        .width = 8,
        .height = 2,
        .palette = 15,
        .baseTile = 0x247,
    },
    [SUMMARY_WINDOW_OT_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 11,
        .width = 8,
        .height = 2,
        .palette = 15,
        .baseTile = 0x257,
    },
    [SUMMARY_WINDOW_OT_ID] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 13,
        .width = 4,
        .height = 2,
        .palette = 15,
        .baseTile = 0x267,
    },
    [SUMMARY_WINDOW_EXP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 17,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x271,
    },
    [SUMMARY_WINDOW_EXP_NEXT_LV] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 21,
        .width = 6,
        .height = 2,
        .palette = 15,
        .baseTile = 0x27F,
    },
};

static const WindowTemplate sExtraWindowTemplates_Memo[] = {
    [SUMMARY_WINDOW_MEMO] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 5,
        .width = 17,
        .height = 18,
        .palette = 15,
        .baseTile = 0x23B,
    },
};

static const WindowTemplate sExtraWindowTemplates_Skills[] = {
    [SUMMARY_WINDOW_HP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 4,
        .width = 7,
        .height = 2,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_ATTACK] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 7,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x249,
    },
    [SUMMARY_WINDOW_DEFENSE] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 9,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x24F,
    },
    [SUMMARY_WINDOW_SP_ATTACK] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 11,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x255,
    },
    [SUMMARY_WINDOW_SP_DEFENSE] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 13,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x25B,
    },
    [SUMMARY_WINDOW_SPEED] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 15,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x261,
    },
    [SUMMARY_WINDOW_ABILITY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 18,
        .width = 11,
        .height = 2,
        .palette = 15,
        .baseTile = 0x267,
    },
    [SUMMARY_WINDOW_ABILITY_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 14,
        .tilemapTop = 20,
        .width = 18,
        .height = 4,
        .palette = 15,
        .baseTile = 0x27D,
    },
};

static const WindowTemplate sExtraWindowTemplates_BattleMoves[] = {
    [SUMMARY_WINDOW_BATTLE_MOVE_1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 4,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 8,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x267,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 12,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x293,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 16,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x2BF,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 20,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x2EB,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_POWER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 12,
        .tilemapTop = 10,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x317,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 12,
        .tilemapTop = 12,
        .width = 3,
        .height = 2,
        .palette = 15,
        .baseTile = 0x31D,
    },
    [SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 14,
        .width = 15,
        .height = 10,
        .palette = 15,
        .baseTile = 0x323,
    },
};

static const WindowTemplate sExtraWindowTemplates_ContestMoves[] = {
    [SUMMARY_WINDOW_CONTEST_MOVE_1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 4,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_CONTEST_MOVE_2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 8,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x267,
    },
    [SUMMARY_WINDOW_CONTEST_MOVE_3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 12,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x293,
    },
    [SUMMARY_WINDOW_CONTEST_MOVE_4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 16,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x2BF,
    },
    [SUMMARY_WINDOW_CONTEST_MOVE_5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 20,
        .width = 11,
        .height = 4,
        .palette = 15,
        .baseTile = 0x2EB,
    },
    [SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 18,
        .width = 15,
        .height = 6,
        .palette = 15,
        .baseTile = 0x317,
    },
};

static const WindowTemplate sExtraWindowTemplates_Ribbons[] = {
    [SUMMARY_WINDOW_RIBBON_COUNT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 21,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_RIBBON_INDEX] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 15,
        .width = 7,
        .height = 2,
        .palette = 15,
        .baseTile = 0x245,
    },
    [SUMMARY_WINDOW_RIBBON_NAME] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 18,
        .width = 21,
        .height = 2,
        .palette = 15,
        .baseTile = 0x253,
    },
    [SUMMARY_WINDOW_RIBBON_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 20,
        .width = 30,
        .height = 4,
        .palette = 15,
        .baseTile = 0x27D,
    },
};

static const WindowTemplate sExtraWindowTemplates_Condition[] = {
    [SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 0,
        .width = 5,
        .height = 2,
        .palette = 15,
        .baseTile = 0x23B,
    },
    [SUMMARY_WINDOW_FAVORITE_FOOD] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 20,
        .width = 12,
        .height = 4,
        .palette = 15,
        .baseTile = 0x24D,
    },
    [SUMMARY_WINDOW_POFFIN_FEED_MSG] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 21,
        .width = 27,
        .height = 2,
        .palette = 14,
        .baseTile = 0x27D,
    },
};

void PokemonSummaryScreen_DrawStaticWindows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 window = 0; window < SUMMARY_STATIC_WINDOW_MAX; window++) {
        Window_AddFromTemplate(summaryScreen->bgConfig, &summaryScreen->staticWindows[window], &sStaticWindowTemplates[window]);
        Window_FillTilemap(&summaryScreen->staticWindows[window], 0);
    }

    PrintStaticWindows(summaryScreen);
    PokemonSummaryScreen_PrintNicknameAndGender(summaryScreen);
    PokemonSummaryScreen_PrintLevel(summaryScreen);
    PokemonSummaryScreen_PrintItemName(summaryScreen);
}

void PokemonSummaryScreen_AddExtraWindows(PokemonSummaryScreen *summaryScreen)
{
    const WindowTemplate *extraWindows;

    switch (summaryScreen->page) {
    case SUMMARY_PAGE_INFO:
        extraWindows = sExtraWindowTemplates_Info;
        summaryScreen->numExtraWindows = SUMMARY_INFO_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_MEMO:
        extraWindows = sExtraWindowTemplates_Memo;
        summaryScreen->numExtraWindows = SUMMARY_MEMO_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_SKILLS:
        extraWindows = sExtraWindowTemplates_Skills;
        summaryScreen->numExtraWindows = SUMMARY_SKILLS_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_BATTLE_MOVES:
        extraWindows = sExtraWindowTemplates_BattleMoves;
        summaryScreen->numExtraWindows = SUMMARY_BATTLE_MOVES_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_CONTEST_MOVES:
        extraWindows = sExtraWindowTemplates_ContestMoves;
        summaryScreen->numExtraWindows = SUMMARY_CONTEST_MOVES_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_RIBBONS:
        extraWindows = sExtraWindowTemplates_Ribbons;
        summaryScreen->numExtraWindows = SUMMARY_RIBBONS_WINDOW_MAX;
        break;
    case SUMMARY_PAGE_CONDITION:
    case SUMMARY_PAGE_EXIT:
        // the exit page shows the "favorite food" condition extra window when feeding poffins
        if (summaryScreen->data->mode != SUMMARY_MODE_FEED_POFFIN && summaryScreen->data->mode != SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
            return;
        }

        extraWindows = sExtraWindowTemplates_Condition;
        summaryScreen->numExtraWindows = SUMMARY_CONDITION_WINDOW_MAX;
        break;
    default:
        return;
    }

    summaryScreen->extraWindows = Window_New(HEAP_ID_POKEMON_SUMMARY_SCREEN, summaryScreen->numExtraWindows);

    for (u32 i = 0; i < summaryScreen->numExtraWindows; i++) {
        Window_AddFromTemplate(summaryScreen->bgConfig, &summaryScreen->extraWindows[i], &extraWindows[i]);
    }
}

void PokemonSummaryScreen_RemoveExtraWindows(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->page) {
    case SUMMARY_PAGE_INFO:
    case SUMMARY_PAGE_MEMO:
    case SUMMARY_PAGE_SKILLS:
    case SUMMARY_PAGE_BATTLE_MOVES:
    case SUMMARY_PAGE_CONTEST_MOVES:
    case SUMMARY_PAGE_RIBBONS:
        break;
    case SUMMARY_PAGE_CONDITION:
    case SUMMARY_PAGE_EXIT:
        // the exit page shows the "favorite food" condition extra window when feeding poffins
        if (summaryScreen->data->mode != SUMMARY_MODE_FEED_POFFIN && summaryScreen->data->mode != SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
            return;
        }
        break;
    default:
        return;
    }

    Windows_Delete(summaryScreen->extraWindows, summaryScreen->numExtraWindows);
}

void PokemonSummaryScreen_RemoveWindows(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_RemoveExtraWindows(summaryScreen);

    for (u32 i = 0; i < SUMMARY_STATIC_WINDOW_MAX; i++) {
        Window_Remove(&summaryScreen->staticWindows[i]);
    }
}

void PokemonSummaryScreen_PrintNicknameAndGender(PokemonSummaryScreen *summaryScreen)
{
    Window *window = &summaryScreen->staticWindows[SUMMARY_WINDOW_MON_NICKNAME_GENDER];

    Window_FillTilemap(window, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->monData.nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_WHITE, NULL);

    if (summaryScreen->monData.hideGender == FALSE) {
        if (summaryScreen->monData.gender == GENDER_MALE) {
            MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_MaleSymbol, summaryScreen->strbuf);
            PrintStrbufToWindow(summaryScreen, window, SUMMARY_TEXT_BLUE, ALIGN_RIGHT);
        } else if (summaryScreen->monData.gender == GENDER_FEMALE) {
            MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_FemaleSymbol, summaryScreen->strbuf);
            PrintStrbufToWindow(summaryScreen, window, SUMMARY_TEXT_RED, ALIGN_RIGHT);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintLevel(PokemonSummaryScreen *summaryScreen)
{
    Window *window = &summaryScreen->staticWindows[SUMMARY_WINDOW_MON_LEVEL];
    Window_FillTilemap(window, 0);

    Strbuf *buf;
    if (summaryScreen->monData.isEgg == FALSE) {
        sub_0200C578(summaryScreen->unk_684, 1, window, 0, 5);

        buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_TemplateMonLevel);

        StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->monData.level, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
        Strbuf_Free(buf);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 16, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintItemName(PokemonSummaryScreen *summaryScreen)
{
    Strbuf *buf;

    Window_FillTilemap(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME], 0);

    if (summaryScreen->monData.heldItem != ITEM_NONE) {
        StringTemplate_SetItemName(summaryScreen->strFormatter, 0, summaryScreen->monData.heldItem);
        buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_TemplateItemName);
        StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
        Strbuf_Free(buf);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_None, summaryScreen->strbuf);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME], SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ITEM]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_ITEM_NAME]);
}

void PokemonSummaryScreen_ClearAndPrintButtonPrompt(PokemonSummaryScreen *summaryScreen, u32 entryID)
{
    Window_FillTilemap(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT], 0);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_BUTTON_PROMPT, entryID, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
}

static BOOL DoesMonOTMatchPlayer(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.OTID == summaryScreen->data->OTID
        && summaryScreen->monData.OTGender == summaryScreen->data->OTGender
        && Strbuf_Compare(summaryScreen->monData.OTName, summaryScreen->playerName) == 0) {
        return TRUE;
    }

    return FALSE;
}

static void PrintStrbufToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum SummaryTextAlignment alignment)
{
    u8 strWidth, windowWidth, xOffset;

    switch (alignment) {
    case ALIGN_LEFT:
        xOffset = 0;
        break;
    case ALIGN_RIGHT:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        windowWidth = Window_GetWidth(window) * 8;
        xOffset = windowWidth - strWidth;
        break;
    case ALIGN_CENTER:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        windowWidth = Window_GetWidth(window) * 8;
        xOffset = (windowWidth - strWidth) / 2;
        break;
    }

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
}

static void PrintTextToStaticWindow(PokemonSummaryScreen *summaryScreen, enum SummaryStaticWindow windowIndex, u32 entryID, TextColor color, enum SummaryTextAlignment alignment)
{
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, entryID, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->staticWindows[windowIndex], color, alignment);
}

static void SetAndFormatNumberBuf(PokemonSummaryScreen *summaryScreen, u32 entryID, u32 number, u8 digits, u8 paddingMode)
{
    Strbuf *buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, entryID);
    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, number, digits, paddingMode, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);
}

static void PrintCurrentAndMaxInfo(PokemonSummaryScreen *summaryScreen, u32 moveIndex, u32 slashEntryID, u32 curEntryID, u32 maxEntryID, u16 curValue, u16 maxValue, u8 digits, u8 xOffset, u8 yOffset)
{
    Window *window = &summaryScreen->extraWindows[moveIndex];

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, slashEntryID, summaryScreen->strbuf);
    u32 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    u16 curXOffset = xOffset - strWidth / 2;
    u16 maxXOffset = curXOffset + strWidth;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, curXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    SetAndFormatNumberBuf(summaryScreen, curEntryID, curValue, digits, PADDING_MODE_NONE);

    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, curXOffset - strWidth, yOffset, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    SetAndFormatNumberBuf(summaryScreen, maxEntryID, maxValue, digits, PADDING_MODE_NONE);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, maxXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
}

static void PrintStaticWindows(PokemonSummaryScreen *summaryScreen)
{
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_INFO, PokemonSummary_Text_PageTitleInfo, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_MEMO, PokemonSummary_Text_PageTitleMemo, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SKILLS, PokemonSummary_Text_PageTitleSkills, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_CONDITION, PokemonSummary_Text_PageTitleCondition, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_BATTLE_MOVES, PokemonSummary_Text_PageTitleBattleMoves, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_CONTEST_MOVES, PokemonSummary_Text_PageTitleContestMoves, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_ITEM, PokemonSummary_Text_LabelItem, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_DEX_NUM, PokemonSummary_Text_LabelDexNum, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SPECIES_NAME, PokemonSummary_Text_LabelSpeciesName, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_TYPE, PokemonSummary_Text_LabelType, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_OT_NAME, PokemonSummary_Text_LabelOtName, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_OT_ID, PokemonSummary_Text_LabelOtId, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_EXP, PokemonSummary_Text_LabelExp, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_EXP_NEXT_LV, PokemonSummary_Text_LabelExpNextLv, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_HP, PokemonSummary_Text_LabelHp, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_ATTACK, PokemonSummary_Text_LabelAttack, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_DEFENSE, PokemonSummary_Text_LabelDefense, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SP_ATTACK, PokemonSummary_Text_LabelSpAttack, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SP_DEFENSE, PokemonSummary_Text_LabelSpDefense, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SPEED, PokemonSummary_Text_LabelSpeed, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_ABILITY, PokemonSummary_Text_LabelAbility, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_SHEEN, PokemonSummary_Text_LabelSheen, SUMMARY_TEXT_WHITE, ALIGN_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_MoveCancel, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_CANCEL], FONT_SYSTEM, summaryScreen->strbuf, 0, 2, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_WHITE, NULL);

    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_MOVE_CATEGORY, PokemonSummary_Text_LabelMoveCategory, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_MOVE_POWER, PokemonSummary_Text_LabelMovePower, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_MOVE_ACCURACY, PokemonSummary_Text_LabelMoveAccuracy, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_CLOSE_WINDOW, PokemonSummary_Text_CloseWindow, SUMMARY_TEXT_WHITE, ALIGN_CENTER);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_APPEAL_POINTS, PokemonSummary_Text_LabelAppealPoints, SUMMARY_TEXT_BLACK, ALIGN_CENTER);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_RIBBON_COUNT, PokemonSummary_Text_LabelRibbonCount, SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    PrintTextToStaticWindow(summaryScreen, SUMMARY_WINDOW_LABEL_RIBBONS, PokemonSummary_Text_PageTitleRibbons, SUMMARY_TEXT_WHITE, ALIGN_LEFT);
}

void PokemonSummaryScreen_DrawExtraWindows(PokemonSummaryScreen *summaryScreen)
{
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, 32, 2, 16);
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 0, 14, 2, 18, 22, 16);

    switch (summaryScreen->page) {
    case SUMMARY_PAGE_INFO:
        DrawInfoPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_MEMO:
        DrawMemoPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_SKILLS:
        DrawSkillsPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_CONDITION:
        DrawConditionPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_BATTLE_MOVES:
        DrawBattleMovesPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_CONTEST_MOVES:
        DrawContestMovesPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_RIBBONS:
        DrawRibbonsPageWindows(summaryScreen);
        break;
    case SUMMARY_PAGE_EXIT:
        DrawExitPageWindows(summaryScreen);
        break;
    }
}

static void DrawInfoPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_INFO]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_DEX_NUM]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SPECIES_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_TYPE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_OT_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_OT_ID]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_EXP]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_EXP_NEXT_LV]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_DUMMY_14]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_DEX_NUM], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_SPECIES_NAME], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_NAME], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_ID], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_EXP], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_EXP_NEXT_LV], 0);

    u32 dexNum = GetDexNumber(summaryScreen->data->dexMode, summaryScreen->monData.species);

    if (dexNum != 0) {
        SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_DexNumberTemplate, dexNum, 3, PADDING_MODE_ZEROES);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_ThreeQuestionMarks, summaryScreen->strbuf);
    }

    if (summaryScreen->monData.isShiny == FALSE) {
        PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_DEX_NUM], SUMMARY_TEXT_BLACK, ALIGN_CENTER);
    } else {
        PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_DEX_NUM], SUMMARY_TEXT_RED, ALIGN_CENTER);
    }

    u32 speciesWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->monData.speciesName, 0);
    u32 speciesX = (summaryScreen->extraWindows[SUMMARY_WINDOW_SPECIES_NAME].width * 8 - speciesWidth) / 2;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_SPECIES_NAME], FONT_SYSTEM, summaryScreen->monData.speciesName, speciesX, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);

    u32 OTNameWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->monData.OTName, 0);
    u32 OTNameX = (summaryScreen->extraWindows[SUMMARY_WINDOW_OT_NAME].width * 8 - OTNameWidth) / 2;

    if (summaryScreen->monData.OTGender == GENDER_MALE) {
        Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_NAME], FONT_SYSTEM, summaryScreen->monData.OTName, OTNameX, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLUE, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_NAME], FONT_SYSTEM, summaryScreen->monData.OTName, OTNameX, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_RED, NULL);
    }

    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateOtId, summaryScreen->monData.OTID & 0xFFFF, 5, PADDING_MODE_ZEROES);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_OT_ID], SUMMARY_TEXT_BLACK, ALIGN_CENTER);

    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateExp, summaryScreen->monData.curExp, 7, PADDING_MODE_SPACES);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_EXP], SUMMARY_TEXT_BLACK, ALIGN_CENTER);

    if (summaryScreen->monData.level < MAX_POKEMON_LEVEL) {
        SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateExpNextLv, summaryScreen->monData.nextLevelExp - summaryScreen->monData.curExp, 7, PADDING_MODE_SPACES);
    } else {
        SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateExpNextLv, 0, 7, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_EXP_NEXT_LV], SUMMARY_TEXT_BLACK, ALIGN_CENTER);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_DEX_NUM]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_SPECIES_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_OT_ID]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_EXP]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_EXP_NEXT_LV]);
}

static void PrintTrainerMemo(Window *window, Pokemon *mon, BOOL monOTMatches)
{
    PokemonInfoDisplayStruct *infoDisplay = sub_02092494(mon, monOTMatches, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    if (infoDisplay->unk_14.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, infoDisplay->unk_14.unk_04, 0, (infoDisplay->unk_14.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    if (infoDisplay->unk_1C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, infoDisplay->unk_1C.unk_04, 0, (infoDisplay->unk_1C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    if (infoDisplay->unk_24.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, infoDisplay->unk_24.unk_04, 0, (infoDisplay->unk_24.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    if (infoDisplay->unk_2C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, infoDisplay->unk_2C.unk_04, 0, (infoDisplay->unk_2C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    if (infoDisplay->unk_34.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, infoDisplay->unk_34.unk_04, 0, (infoDisplay->unk_34.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }

    sub_0209282C(infoDisplay);
}

static void DrawMemoPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MEMO]);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_MEMO], 0);

    void *monData = PokemonSummaryScreen_MonData(summaryScreen);
    BOOL monOTMatches = DoesMonOTMatchPlayer(summaryScreen);

    if (summaryScreen->data->dataType == SUMMARY_DATA_BOX_MON) {
        Pokemon *mon = Pokemon_New(HEAP_ID_POKEMON_SUMMARY_SCREEN);

        Pokemon_FromBoxPokemon(monData, mon);
        PrintTrainerMemo(&summaryScreen->extraWindows[SUMMARY_WINDOW_MEMO], mon, monOTMatches);
        Heap_FreeToHeap(mon);
    } else {
        PrintTrainerMemo(&summaryScreen->extraWindows[SUMMARY_WINDOW_MEMO], monData, monOTMatches);
    }

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_MEMO]);
}

static void DrawSkillsPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SKILLS]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_HP]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ATTACK]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_DEFENSE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SP_ATTACK]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SP_DEFENSE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SPEED]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_ABILITY]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_HP], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_ATTACK], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_DEFENSE], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_SP_ATTACK], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_SP_DEFENSE], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_SPEED], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY_DESCRIPTION], 0);

    u32 hpWindowWidth = Window_GetWidth(&summaryScreen->extraWindows[SUMMARY_WINDOW_HP]) * 8;

    PrintCurrentAndMaxInfo(summaryScreen, 0, PokemonSummary_Text_Slash, PokemonSummary_Text_TemplateCurrentHp, PokemonSummary_Text_TemplateMaxHp, summaryScreen->monData.curHP, summaryScreen->monData.maxHP, 3, hpWindowWidth / 2, 0);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateAttack, summaryScreen->monData.attack, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_ATTACK], SUMMARY_TEXT_BLACK, ALIGN_RIGHT);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateDefense, summaryScreen->monData.defense, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_DEFENSE], SUMMARY_TEXT_BLACK, ALIGN_RIGHT);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateSpAttack, summaryScreen->monData.spAttack, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_SP_ATTACK], SUMMARY_TEXT_BLACK, ALIGN_RIGHT);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateSpDefense, summaryScreen->monData.spDefense, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_SP_DEFENSE], SUMMARY_TEXT_BLACK, ALIGN_RIGHT);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateSpeed, summaryScreen->monData.speed, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_SPEED], SUMMARY_TEXT_BLACK, ALIGN_RIGHT);

    StringTemplate_SetAbilityName(summaryScreen->strFormatter, 0, summaryScreen->monData.ability);
    Strbuf *buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_TemplateAbility);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY], SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ABILITY_DESCRIPTIONS, HEAP_ID_POKEMON_SUMMARY_SCREEN);
    MessageLoader_GetStrbuf(msgLoader, summaryScreen->monData.ability, summaryScreen->strbuf);
    MessageLoader_Free(msgLoader);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY_DESCRIPTION], SUMMARY_TEXT_BLACK, ALIGN_LEFT);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_HP]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_ATTACK]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_DEFENSE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_SP_ATTACK]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_SP_DEFENSE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_SPEED]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_ABILITY_DESCRIPTION]);
}

static void DrawConditionPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_CONDITION]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_SHEEN]);

    if (summaryScreen->data->mode != SUMMARY_MODE_FEED_POFFIN && summaryScreen->data->mode != SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
        return;
    }

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], 0);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_FavoriteFood, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], SUMMARY_TEXT_WHITE, ALIGN_LEFT);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_LikesItSpicy + summaryScreen->monData.preferredFlavor, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], FONT_SYSTEM, summaryScreen->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD]);

    if (summaryScreen->data->mode == SUMMARY_MODE_FEED_POFFIN) {
        Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT], 0);
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_PoffinFeedOk, summaryScreen->strbuf);
        PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT], SUMMARY_TEXT_WHITE, ALIGN_LEFT);
        Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT]);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT]);
    }
}

static void DrawBattleMovesPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_BATTLE_MOVES]);

    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectBattleMoveOk);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectBattleMoveInfo);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_1], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_2], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_3], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_4], 0);

    PrintMoveNameAndPP(summaryScreen, 0);
    PrintMoveNameAndPP(summaryScreen, 1);
    PrintMoveNameAndPP(summaryScreen, 2);
    PrintMoveNameAndPP(summaryScreen, 3);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_1]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_2]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_3]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_4]);
}

static void DrawContestMovesPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_CONTEST_MOVES]);

    if (summaryScreen->data->mode == SUMMARY_MODE_SELECT_MOVE) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectContestMoveOk);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_SelectContestMoveInfo);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_1], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_2], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_3], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_4], 0);

    PrintMoveNameAndPP(summaryScreen, 0);
    PrintMoveNameAndPP(summaryScreen, 1);
    PrintMoveNameAndPP(summaryScreen, 2);
    PrintMoveNameAndPP(summaryScreen, 3);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_1]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_2]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_3]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_4]);
}

static void DrawRibbonsPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_RIBBONS]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_RIBBON_COUNT]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_COUNT], 0);
    SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_TemplateRibbonCount, summaryScreen->ribbonMax, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_COUNT], SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_COUNT]);

    if (summaryScreen->ribbonMax != 0) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_RibbonSelectInfo);
        PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);
    }
}

static void DrawExitPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_CLOSE_WINDOW]);
    PokemonSummaryScreen_ClearAndPrintButtonPrompt(summaryScreen, PokemonSummary_Text_PromptExit);
    PokemonSummaryScreen_UpdateAButtonSprite(summaryScreen, &summaryScreen->staticWindows[SUMMARY_WINDOW_BUTTON_PROMPT]);

    // the exit page shows the "favorite food" condition extra window when feeding poffins
    if (summaryScreen->data->mode != SUMMARY_MODE_FEED_POFFIN && summaryScreen->data->mode != SUMMARY_MODE_SHOW_CONDITION_CHANGE) {
        return;
    }

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], 0);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_FavoriteFood, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], SUMMARY_TEXT_WHITE, ALIGN_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_LikesItSpicy + summaryScreen->monData.preferredFlavor, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD], FONT_SYSTEM, summaryScreen->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_FAVORITE_FOOD]);
}

void PokemonSummaryScreen_PrintRibbonIndexAndMax(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX], 0);

    Strbuf *buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_RibbonMaxNumber);

    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->ribbonMax, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);

    u8 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    u8 xOffset = RIBBON_INDEX_TEXT_X - strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX], FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);

    buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_RibbonNumberSlash);
    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, buf, 0);
    xOffset -= strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX], FONT_SYSTEM, buf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    Strbuf_Free(buf);

    buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_RibbonIndexNumber);

    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->ribbonCol + summaryScreen->ribbonRow * RIBBONS_PER_ROW + 1, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);

    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    xOffset -= strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX], FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_INDEX]);
}

void PokemonSummaryScreen_PrintRibbonNameAndDesc(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_NAME], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_DESCRIPTION], 0);

    MessageLoader_GetStrbuf(summaryScreen->ribbonLoader, Ribbon_GetData(summaryScreen->ribbonID, RIBBON_DATA_NAME_ID), summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_NAME], SUMMARY_TEXT_WHITE, ALIGN_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->ribbonLoader, PokemonSummaryScreen_GetRibbonDescriptionID(summaryScreen->data->specialRibbons, summaryScreen->ribbonID), summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_DESCRIPTION], SUMMARY_TEXT_BLACK, ALIGN_LEFT);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_RIBBON_DESCRIPTION]);
}

static void PrintMoveNameAndPP(PokemonSummaryScreen *summaryScreen, u32 moveIndex)
{
    u16 moveName;
    u8 curPP, maxPP;

    Window *window = &summaryScreen->extraWindows[moveIndex];

    if (moveIndex != LEARNED_MOVES_MAX) {
        moveName = summaryScreen->monData.moves[moveIndex];
        curPP = summaryScreen->monData.curPP[moveIndex];
        maxPP = summaryScreen->monData.maxPP[moveIndex];
    } else {
        moveName = summaryScreen->data->move;
        curPP = MoveTable_CalcMaxPP(moveName, 0);
        maxPP = curPP;
    }

    MessageLoader_GetStrbuf(summaryScreen->moveNameLoader, moveName, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 1, 2, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_WHITE, NULL);

    if (moveName != MOVE_NONE) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_LabelPp, summaryScreen->strbuf);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 16, 16, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
        PrintCurrentAndMaxInfo(summaryScreen, moveIndex, PokemonSummary_Text_Slash, PokemonSummary_Text_TemplateCurrentPp_0 + moveIndex, PokemonSummary_Text_TemplateMaxPp_0 + moveIndex, curPP, maxPP, 2, PP_TEXT_X, PP_TEXT_Y);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_TwoDashes, summaryScreen->strbuf);
        u32 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, PP_TEXT_X - strWidth / 2, PP_TEXT_Y, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);
    }
}

void PokemonSummaryScreen_PrintBattleMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_CATEGORY]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_POWER]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_ACCURACY]);

    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_POWER], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION], 0);

    u32 moveAttribute = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);

    if (moveAttribute <= 1) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_ThreeDashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_MovePowerTemplate, moveAttribute, 3, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_POWER], SUMMARY_TEXT_BLACK, ALIGN_CENTER);

    moveAttribute = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);

    if (moveAttribute == 0) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_ThreeDashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, PokemonSummary_Text_MoveAccuracyTemplate, moveAttribute, 3, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY], SUMMARY_TEXT_BLACK, ALIGN_CENTER);

    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_DESCRIPTIONS, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    MessageLoader_GetStrbuf(msgLoader, move, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION], SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    MessageLoader_Free(msgLoader);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_POWER]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION]);
}

void PokemonSummaryScreen_ClearBattleAttributeWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_CATEGORY]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_POWER]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_ACCURACY]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_POWER]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION]);
}

void PokemonSummaryScreen_ShowMove5OrCancel(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->move != MOVE_NONE) {
        Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_5], 0);
        PrintMoveNameAndPP(summaryScreen, LEARNED_MOVES_MAX);
        Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_5]);
    } else {
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_CANCEL]);
    }
}

void PokemonSummaryScreen_HideMoveCancelText(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_MOVE_CANCEL]);
    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_1);
}

void PokemonSummaryScreen_SwapMoveNameAndPP(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[summaryScreen->cursor], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[summaryScreen->cursorTmp], 0);

    PrintMoveNameAndPP(summaryScreen, summaryScreen->cursor);
    PrintMoveNameAndPP(summaryScreen, summaryScreen->cursorTmp);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[summaryScreen->cursor]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[summaryScreen->cursorTmp]);
}

void PokemonSummaryScreen_PrintHMMovesCantBeForgotten(PokemonSummaryScreen *summaryScreen)
{
    Window *window;

    if (summaryScreen->page == SUMMARY_PAGE_BATTLE_MOVES) {
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_POWER]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION]);
        window = &summaryScreen->extraWindows[SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION];
    } else {
        window = &summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION];
    }

    Window_FillTilemap(window, 0);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, PokemonSummary_Text_HmMovesCantBeForgotten, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, window, SUMMARY_TEXT_BLACK, ALIGN_LEFT);
    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintContestMoveAttributes(PokemonSummaryScreen *summaryScreen, u32 move)
{
    Window_FillTilemap(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION], 0);

    u32 contestEffect = MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT);
    u32 descEntryID = sub_0209577C(contestEffect);
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    MessageLoader_GetStrbuf(msgLoader, descEntryID, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION], FONT_SYSTEM, summaryScreen->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK, NULL);

    MessageLoader_Free(msgLoader);

    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_APPEAL_POINTS]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION]);
}

void PokemonSummaryScreen_ClearContestAttributeWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[SUMMARY_WINDOW_LABEL_APPEAL_POINTS]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION]);
}

void PokemonSummaryScreen_PrintPoffinFeedMsg(PokemonSummaryScreen *summaryScreen, enum SummaryPoffinFeedMsg msg)
{
    u32 entryID;

    switch (msg) {
    case SUMMARY_MSG_COOLNESS_ENHANCED:
        entryID = PokemonSummary_Text_CoolnessEnhanced;
        break;
    case SUMMARY_MSG_BEAUTY_ENHANCED:
        entryID = PokemonSummary_Text_BeautyEnhanced;
        break;
    case SUMMARY_MSG_CUTENESS_ENHANCED:
        entryID = PokemonSummary_Text_CutenessEnhanced;
        break;
    case SUMMARY_MSG_SMARTNESS_ENHANCED:
        entryID = PokemonSummary_Text_SmartnessEnhanced;
        break;
    case SUMMARY_MSG_TOUGHNESS_ENHANCED:
        entryID = PokemonSummary_Text_ToughnessEnhanced;
        break;
    case SUMMARY_MSG_NOTHING_CHANGED:
        entryID = PokemonSummary_Text_NothingChanged;
        break;
    default:
        entryID = PokemonSummary_Text_PokemonWontEatMore;
    }

    Window *window = &summaryScreen->extraWindows[SUMMARY_WINDOW_POFFIN_FEED_MSG];

    Window_DrawMessageBoxWithScrollCursor(window, TRUE, (1024 - (18 + 12)), 13);
    Window_FillTilemap(window, 15);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, entryID, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, summaryScreen->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, SUMMARY_TEXT_BLACK_DARK_SHADOW, NULL);
    Window_ScheduleCopyToVRAM(window);
}
