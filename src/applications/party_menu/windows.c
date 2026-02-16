#include "applications/party_menu/windows.h"

#include "constants/graphics.h"
#include "constants/heap.h"
#include "constants/pokemon.h"
#include "generated/genders.h"
#include "generated/species.h"
#include "generated/string_padding_mode.h"

#include "applications/party_menu/defs.h"
#include "applications/party_menu/main.h"
#include "applications/party_menu/unk_02083370.h"
#include "applications/party_menu/unk_02084B70.h"
#include "applications/pokemon_summary_screen/main.h"

#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "menu.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_stats.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_0208C098.h"

#include "res/text/bank/party_menu.h"

#define EVO_COMMENT_ABLE   0
#define EVO_COMMENT_UNABLE 1

#define MOVE_COMMENT_ABLE    0
#define MOVE_COMMENT_UNABLE  1
#define MOVE_COMMENT_LEARNED 2

#define SELECTION_COMMENT_NOT_ENTERED 7
#define SELECTION_COMMENT_BANNED      8

static void AddPartyMemberWindows(BgConfig *bgConfig, Window *target, const WindowTemplate *source);
static void PrintMemberEvoComment(PartyMenuApplication *application, u8 slot, u8 which);
static void PrintMemberMoveComment(PartyMenuApplication *application, u8 slot, u8 which);
static void PrintMemberContestComment(PartyMenuApplication *application, u8 slot, u8 isEligible);
static void PrintMemberSelectionComment(PartyMenuApplication *application, u8 slot, u8 comment);
static BOOL TextPrinter_HandleSound(TextPrinterTemplate *printer, u16 param);

enum {
    WIN_TEMPLATE_NAME_MEMB0 = 0,
    WIN_TEMPLATE_LEVEL_MEMB0,
    WIN_TEMPLATE_HP_MEMB0,
    WIN_TEMPLATE_HEALTHBAR_MEMB0,
    WIN_TEMPLATE_COMMENT_MEMB0,
    WIN_TEMPLATE_NAME_MEMB1,
    WIN_TEMPLATE_LEVEL_MEMB1,
    WIN_TEMPLATE_HP_MEMB1,
    WIN_TEMPLATE_HEALTHBAR_MEMB1,
    WIN_TEMPLATE_COMMENT_MEMB1,
    WIN_TEMPLATE_NAME_MEMB2,
    WIN_TEMPLATE_LEVEL_MEMB2,
    WIN_TEMPLATE_HP_MEMB2,
    WIN_TEMPLATE_HEALTHBAR_MEMB2,
    WIN_TEMPLATE_COMMENT_MEMB2,
    WIN_TEMPLATE_NAME_MEMB3,
    WIN_TEMPLATE_LEVEL_MEMB3,
    WIN_TEMPLATE_HP_MEMB3,
    WIN_TEMPLATE_HEALTHBAR_MEMB3,
    WIN_TEMPLATE_COMMENT_MEMB3,
    WIN_TEMPLATE_NAME_MEMB4,
    WIN_TEMPLATE_LEVEL_MEMB4,
    WIN_TEMPLATE_HP_MEMB4,
    WIN_TEMPLATE_HEALTHBAR_MEMB4,
    WIN_TEMPLATE_COMMENT_MEMB4,
    WIN_TEMPLATE_NAME_MEMB5,
    WIN_TEMPLATE_LEVEL_MEMB5,
    WIN_TEMPLATE_HP_MEMB5,
    WIN_TEMPLATE_HEALTHBAR_MEMB5,
    WIN_TEMPLATE_COMMENT_MEMB5,
    WIN_TEMPLATE_NAME_MEMB1_MULTI,
    WIN_TEMPLATE_LEVEL_MEMB1_MULTI,
    WIN_TEMPLATE_HP_MEMB1_MULTI,
    WIN_TEMPLATE_HEALTHBAR_MEMB1_MULTI,
    WIN_TEMPLATE_COMMENT_MEMB1_MULTI,
    WIN_TEMPLATE_NAME_MEMB3_MULTI,
    WIN_TEMPLATE_LEVEL_MEMB3_MULTI,
    WIN_TEMPLATE_HP_MEMB3_MULTI,
    WIN_TEMPLATE_HEALTHBAR_MEMB3_MULTI,
    WIN_TEMPLATE_COMMENT_MEMB3_MULTI,
    WIN_TEMPLATE_NAME_MEMB5_MULTI,
    WIN_TEMPLATE_LEVEL_MEMB5_MULTI,
    WIN_TEMPLATE_HP_MEMB5_MULTI,
    WIN_TEMPLATE_HEALTHBAR_MEMB5_MULTI,
    WIN_TEMPLATE_COMMENT_MEMB5_MULTI,
};

#define WIN_SIZE(__midfix) (WIN_##__midfix##_W * WIN_##__midfix##_H)

#define WIN_NAME_MEMB_W        9
#define WIN_NAME_MEMB_H        2
#define WIN_LEVEL_MEMB_W       6
#define WIN_LEVEL_MEMB_MULTI_W 5
#define WIN_LEVEL_MEMB_H       2
#define WIN_HP_MEMB_W          8
#define WIN_HP_MEMB_H          2
#define WIN_HEALTHBAR_MEMB_W   6
#define WIN_HEALTHBAR_MEMB_H   1
#define WIN_COMMENT_MEMB_W     10
#define WIN_COMMENT_MEMB_H     2

#define WIN_BASE_TILE_START           (1 + STANDARD_WINDOW_TILE_COUNT + SCROLLING_MESSAGE_BOX_TILE_COUNT)
#define WIN_NAME_MEMB0_BASE_TILE      (WIN_BASE_TILE_START)
#define WIN_LEVEL_MEMB0_BASE_TILE     (WIN_NAME_MEMB0_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB0_BASE_TILE        (WIN_LEVEL_MEMB0_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB0_BASE_TILE (WIN_HP_MEMB0_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB0_BASE_TILE   (WIN_LEVEL_MEMB0_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_NAME_MEMB1_BASE_TILE      (WIN_HEALTHBAR_MEMB0_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_LEVEL_MEMB1_BASE_TILE     (WIN_NAME_MEMB1_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB1_BASE_TILE        (WIN_LEVEL_MEMB1_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB1_BASE_TILE (WIN_HP_MEMB1_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB1_BASE_TILE   (WIN_LEVEL_MEMB1_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_NAME_MEMB2_BASE_TILE      (WIN_HEALTHBAR_MEMB1_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_LEVEL_MEMB2_BASE_TILE     (WIN_NAME_MEMB2_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB2_BASE_TILE        (WIN_LEVEL_MEMB2_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB2_BASE_TILE (WIN_HP_MEMB2_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB2_BASE_TILE   (WIN_LEVEL_MEMB2_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_NAME_MEMB3_BASE_TILE      (WIN_HEALTHBAR_MEMB2_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_LEVEL_MEMB3_BASE_TILE     (WIN_NAME_MEMB3_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB3_BASE_TILE        (WIN_LEVEL_MEMB3_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB3_BASE_TILE (WIN_HP_MEMB3_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB3_BASE_TILE   (WIN_LEVEL_MEMB3_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_NAME_MEMB4_BASE_TILE      (WIN_HEALTHBAR_MEMB3_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_LEVEL_MEMB4_BASE_TILE     (WIN_NAME_MEMB4_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB4_BASE_TILE        (WIN_LEVEL_MEMB4_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB4_BASE_TILE (WIN_HP_MEMB4_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB4_BASE_TILE   (WIN_LEVEL_MEMB4_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_NAME_MEMB5_BASE_TILE      (WIN_HEALTHBAR_MEMB4_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_LEVEL_MEMB5_BASE_TILE     (WIN_NAME_MEMB5_BASE_TILE + WIN_SIZE(NAME_MEMB))
#define WIN_HP_MEMB5_BASE_TILE        (WIN_LEVEL_MEMB5_BASE_TILE + WIN_SIZE(LEVEL_MEMB))
#define WIN_HEALTHBAR_MEMB5_BASE_TILE (WIN_HP_MEMB5_BASE_TILE + WIN_SIZE(HP_MEMB))
#define WIN_COMMENT_MEMB5_BASE_TILE   (WIN_LEVEL_MEMB5_BASE_TILE + WIN_SIZE(LEVEL_MEMB))

static const WindowTemplate sMemberWindowTemplates[] = {
    [WIN_TEMPLATE_NAME_MEMB0] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 1,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB0_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB0] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 4,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB0_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB0] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 7,
        .tilemapTop = 4,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB0_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB0] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 8,
        .tilemapTop = 3,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 3,
        .baseTile = WIN_HEALTHBAR_MEMB0_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB0] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 4,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB0_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 2,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 5,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 4,
        .baseTile = WIN_HEALTHBAR_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB1] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 5,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 7,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB2_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 10,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB2_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 7,
        .tilemapTop = 10,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB2_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 8,
        .tilemapTop = 9,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 5,
        .baseTile = WIN_HEALTHBAR_MEMB2_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB2] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 10,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB2_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 8,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 11,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 11,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 10,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 6,
        .baseTile = WIN_HEALTHBAR_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB3] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 11,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 13,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB4_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 0,
        .tilemapTop = 16,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB4_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 7,
        .tilemapTop = 16,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB4_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 8,
        .tilemapTop = 15,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 7,
        .baseTile = WIN_HEALTHBAR_MEMB4_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB4] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 6,
        .tilemapTop = 16,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB4_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 14,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 16,
        .tilemapTop = 17,
        .width = WIN_LEVEL_MEMB_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 17,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 16,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 8,
        .baseTile = WIN_HEALTHBAR_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB5] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 17,
        .width = WIN_COMMENT_MEMB_W,
        .height = WIN_COMMENT_MEMB_H,
        .palette = 0,
        .baseTile = WIN_COMMENT_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB1_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 1,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB1_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 17,
        .tilemapTop = 5,
        .width = WIN_LEVEL_MEMB_MULTI_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB1_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 5,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB1_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 4,
        .baseTile = WIN_HEALTHBAR_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB1_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 4,
        .baseTile = WIN_HEALTHBAR_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB3_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 8,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB3_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 17,
        .tilemapTop = 11,
        .width = WIN_LEVEL_MEMB_MULTI_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB3_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 11,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB3_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 10,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 6,
        .baseTile = WIN_HEALTHBAR_MEMB3_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB3_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 4,
        .baseTile = WIN_HEALTHBAR_MEMB1_BASE_TILE,
    },
    [WIN_TEMPLATE_NAME_MEMB5_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 22,
        .tilemapTop = 14,
        .width = WIN_NAME_MEMB_W,
        .height = WIN_NAME_MEMB_H,
        .palette = 0,
        .baseTile = WIN_NAME_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_LEVEL_MEMB5_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 17,
        .tilemapTop = 17,
        .width = WIN_LEVEL_MEMB_MULTI_W,
        .height = WIN_LEVEL_MEMB_H,
        .palette = 0,
        .baseTile = WIN_LEVEL_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_HP_MEMB5_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 23,
        .tilemapTop = 17,
        .width = WIN_HP_MEMB_W,
        .height = WIN_HP_MEMB_H,
        .palette = 0,
        .baseTile = WIN_HP_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_HEALTHBAR_MEMB5_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 16,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 8,
        .baseTile = WIN_HEALTHBAR_MEMB5_BASE_TILE,
    },
    [WIN_TEMPLATE_COMMENT_MEMB5_MULTI] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = WIN_HEALTHBAR_MEMB_W,
        .height = WIN_HEALTHBAR_MEMB_H,
        .palette = 4,
        .baseTile = WIN_HEALTHBAR_MEMB1_BASE_TILE,
    }
};

enum {
    WIN_TEMPLATE_CANCEL_BUTTON = 0,
    WIN_TEMPLATE_CONFIRM_BUTTON,
    WIN_TEMPLATE_SHORT_MESSAGE,
    WIN_TEMPLATE_MEDIUM_MESSAGE,
    WIN_TEMPLATE_LONG_MESSAGE,
    WIN_TEMPLATE_GIVE_ITEM_OR_MAIL,
    WIN_TEMPLATE_TEACH_MOVE,
};

#define WIN_CANCEL_BUTTON_W     5
#define WIN_CANCEL_BUTTON_H     2
#define WIN_CONFIRM_BUTTON_W    7
#define WIN_CONFIRM_BUTTON_H    2
#define WIN_SHORT_MESSAGE_W     20
#define WIN_SHORT_MESSAGE_H     2
#define WIN_MEDIUM_MESSAGE_W    13
#define WIN_MEDIUM_MESSAGE_H    4
#define WIN_LONG_MESSAGE_W      27
#define WIN_LONG_MESSAGE_H      4
#define WIN_GIVE_ITEM_OR_MAIL_W 12
#define WIN_GIVE_ITEM_OR_MAIL_H 6
#define WIN_TEACH_MOVE_W        12
#define WIN_TEACH_MOVE_H        8

#define WIN_CANCEL_BUTTON_BASE_TILE  (WIN_HEALTHBAR_MEMB5_BASE_TILE + WIN_SIZE(HEALTHBAR_MEMB))
#define WIN_CONFIRM_BUTTON_BASE_TILE (WIN_CANCEL_BUTTON_BASE_TILE + WIN_SIZE(CANCEL_BUTTON))
#define WIN_SHORT_MESSAGE_BASE_TILE  (WIN_CONFIRM_BUTTON_BASE_TILE + WIN_SIZE(CONFIRM_BUTTON))
#define WIN_MEDIUM_MESSAGE_BASE_TILE (WIN_SHORT_MESSAGE_BASE_TILE + WIN_SIZE(SHORT_MESSAGE))
#define WIN_LONG_MESSAGE_BASE_TILE   (WIN_MEDIUM_MESSAGE_BASE_TILE + WIN_SIZE(MEDIUM_MESSAGE))
#define WIN_CONTEXT_WINDOW_BASE_TILE (WIN_LONG_MESSAGE_BASE_TILE + WIN_SIZE(LONG_MESSAGE))

static const WindowTemplate sTextWindows[] = {
    [WIN_TEMPLATE_CANCEL_BUTTON] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 26,
        .tilemapTop = 21,
        .width = WIN_CANCEL_BUTTON_W,
        .height = WIN_CANCEL_BUTTON_H,
        .palette = 0,
        .baseTile = WIN_CANCEL_BUTTON_BASE_TILE,
    },
    [WIN_TEMPLATE_CONFIRM_BUTTON] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 25,
        .tilemapTop = 20,
        .width = WIN_CONFIRM_BUTTON_W,
        .height = WIN_CONFIRM_BUTTON_H,
        .palette = 0,
        .baseTile = WIN_CONFIRM_BUTTON_BASE_TILE,
    },
    [WIN_TEMPLATE_SHORT_MESSAGE] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 21,
        .width = WIN_SHORT_MESSAGE_W,
        .height = WIN_SHORT_MESSAGE_H,
        .palette = 13,
        .baseTile = WIN_SHORT_MESSAGE_BASE_TILE,
    },
    [WIN_TEMPLATE_MEDIUM_MESSAGE] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = WIN_MEDIUM_MESSAGE_W,
        .height = WIN_MEDIUM_MESSAGE_H,
        .palette = 13,
        .baseTile = WIN_MEDIUM_MESSAGE_BASE_TILE,
    },
    [WIN_TEMPLATE_LONG_MESSAGE] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = WIN_LONG_MESSAGE_W,
        .height = WIN_LONG_MESSAGE_H,
        .palette = 13,
        .baseTile = WIN_LONG_MESSAGE_BASE_TILE,
    },
    [WIN_TEMPLATE_GIVE_ITEM_OR_MAIL] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 19,
        .tilemapTop = 17,
        .width = WIN_GIVE_ITEM_OR_MAIL_W,
        .height = WIN_GIVE_ITEM_OR_MAIL_H,
        .palette = 0,
        .baseTile = WIN_CONTEXT_WINDOW_BASE_TILE,
    },
    [WIN_TEMPLATE_TEACH_MOVE] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 19,
        .tilemapTop = 15,
        .width = WIN_TEACH_MOVE_W,
        .height = WIN_TEACH_MOVE_H,
        .palette = 0,
        .baseTile = WIN_CONTEXT_WINDOW_BASE_TILE,
    }
};

#define WIN_YES_NO_W 7
#define WIN_YES_NO_H 4

static const WindowTemplate sYesNoChoiceTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = WIN_YES_NO_W,
    .height = WIN_YES_NO_H,
    .palette = 0,
    .baseTile = WIN_CONTEXT_WINDOW_BASE_TILE,
};

static void AddPartyMemberWindows(BgConfig *bgConfig, Window *target, const WindowTemplate *source)
{
    Window_AddFromTemplate(bgConfig, &target[0], &source[0]);
    Window_AddFromTemplate(bgConfig, &target[1], &source[1]);
    Window_AddFromTemplate(bgConfig, &target[2], &source[2]);
    Window_AddFromTemplate(bgConfig, &target[3], &source[3]);
    Window_AddFromTemplate(bgConfig, &target[4], &source[4]);
}

void PartyMenu_AddWindows(PartyMenuApplication *application)
{
#define appBgConfig application->bgConfig
#define appWindows  application->windows

    const WindowTemplate *templates = sMemberWindowTemplates;

    AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB0], &templates[WIN_TEMPLATE_NAME_MEMB0]);
    AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB2], &templates[WIN_TEMPLATE_NAME_MEMB2]);
    AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB4], &templates[WIN_TEMPLATE_NAME_MEMB4]);

    if (application->partyMenu->type == PARTY_MENU_TYPE_MULTI_BATTLE) {
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB1], &templates[WIN_TEMPLATE_NAME_MEMB1_MULTI]);
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB3], &templates[WIN_TEMPLATE_NAME_MEMB3_MULTI]);
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB5], &templates[WIN_TEMPLATE_NAME_MEMB5_MULTI]);
    } else {
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB1], &templates[WIN_TEMPLATE_NAME_MEMB1]);
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB3], &templates[WIN_TEMPLATE_NAME_MEMB3]);
        AddPartyMemberWindows(appBgConfig, &appWindows[PARTY_MENU_WIN_NAME_MEMB5], &templates[WIN_TEMPLATE_NAME_MEMB5]);
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_CONFIRM
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_TOWER
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE
        || application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        WindowTemplate template = sTextWindows[WIN_TEMPLATE_CANCEL_BUTTON];
        template.tilemapTop = 22;
        Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_CANCEL_BUTTON], &template);
    } else {
        Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_CANCEL_BUTTON], &sTextWindows[WIN_TEMPLATE_CANCEL_BUTTON]);
    }

    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_CONFIRM_BUTTON], &sTextWindows[WIN_TEMPLATE_CONFIRM_BUTTON]);
    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_SHORT_MESSAGE], &sTextWindows[WIN_TEMPLATE_SHORT_MESSAGE]);
    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_MEDIUM_MESSAGE], &sTextWindows[WIN_TEMPLATE_MEDIUM_MESSAGE]);
    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_LONG_MESSAGE], &sTextWindows[WIN_TEMPLATE_LONG_MESSAGE]);
    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_GIVE_ITEM_OR_MAIL], &sTextWindows[WIN_TEMPLATE_GIVE_ITEM_OR_MAIL]);
    Window_AddFromTemplate(appBgConfig, &appWindows[PARTY_MENU_WIN_TEACH_MOVE], &sTextWindows[WIN_TEMPLATE_TEACH_MOVE]);

#undef appBgConfig
#undef appWindows
}

void PartyMenu_RemoveWindows(PartyMenuApplication *application)
{
    // Must use `u16` to match
    for (u16 i = 0; i < NUM_PARTY_MENU_WINS; i++) {
        Window_Remove(&application->windows[i]);
    }

    // This loop is not optimized out in the compiled binary
    for (u16 i = 0; i < 1; i++) {
        if (Window_IsInUse(&application->menuWindows[i]) == TRUE) {
            Window_Remove(&application->menuWindows[i]);
        }
    }
}

void PartyMenu_LoadContextMenuStrings(PartyMenuApplication *application)
{
#define LoadMenuString(__bankEntry, __arrEntry) MessageLoader_GetString(application->messageLoader, __bankEntry, application->menuStrings[__arrEntry])

    LoadMenuString(PartyMenu_Text_Switch, PARTY_MENU_STR_SWITCH);
    LoadMenuString(PartyMenu_Text_Summary, PARTY_MENU_STR_SUMMARY);
    LoadMenuString(PartyMenu_Text_Item, PARTY_MENU_STR_ITEM);
    LoadMenuString(PartyMenu_Text_ItemGive, PARTY_MENU_STR_ITEM_GIVE);
    LoadMenuString(PartyMenu_Text_ItemTake, PARTY_MENU_STR_ITEM_TAKE);
    LoadMenuString(PartyMenu_Text_Mail, PARTY_MENU_STR_MAIL);
    LoadMenuString(PartyMenu_Text_MailRead, PARTY_MENU_STR_MAIL_READ);
    LoadMenuString(PartyMenu_Text_MailTake, PARTY_MENU_STR_MAIL_TAKE);
    LoadMenuString(PartyMenu_Text_MailStore, PARTY_MENU_STR_MAIL_STORE);
    LoadMenuString(PartyMenu_Text_ContextCancel, PARTY_MENU_STR_CANCEL);
    LoadMenuString(PartyMenu_Text_Separator, PARTY_MENU_STR_SEPARATOR);
    LoadMenuString(PartyMenu_Text_Enter, PARTY_MENU_STR_ENTER);
    LoadMenuString(PartyMenu_Text_NoEntry, PARTY_MENU_STR_NO_ENTRY);
    LoadMenuString(PartyMenu_Text_Enter, PARTY_MENU_STR_ENTER_2);
    LoadMenuString(PartyMenu_Text_Set, PARTY_MENU_STR_SET);
    LoadMenuString(PartyMenu_Text_ContextConfirm, PARTY_MENU_STR_CONFIRM);

#undef LoadMenuString
}

void PartyMenu_SetKnownFieldMove(PartyMenuApplication *application, u16 move, u8 menuEntry)
{
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_FieldMove0 + menuEntry);
    StringTemplate_SetMoveName(application->template, 0, move);
    StringTemplate_Format(application->template, application->menuStrings[PARTY_MENU_STR_MOVE0 + menuEntry], string);
    String_Free(string);
}

void PartyMenu_DrawContextMenu(PartyMenuApplication *application, const u8 *entries, u8 numEntries)
{
    Window_Add(
        application->bgConfig,
        &application->menuWindows[0],
        BG_LAYER_MAIN_0,
        19,
        23 - numEntries * MAX_LETTER_HEIGHT_TILES,
        12,
        numEntries * MAX_LETTER_HEIGHT_TILES,
        0,
        WIN_CONTEXT_WINDOW_BASE_TILE);
    application->contextMenuChoices = StringList_New(numEntries, HEAP_ID_PARTY_MENU);

    u16 numFieldMoves = 0;
    for (u16 i = 0; i < numEntries; i++) {
        if (entries[i] >= PARTY_MENU_STR_MOVE0) {
            StringList_AddFromString(
                application->contextMenuChoices,
                application->menuStrings[PARTY_MENU_STR_MOVE0 + numFieldMoves],
                PartyMenu_GetAction(entries[i]));
            numFieldMoves++;
        } else {
            StringList_AddFromString(
                application->contextMenuChoices,
                application->menuStrings[entries[i]],
                PartyMenu_GetAction(entries[i]));
        }
    }

    MenuTemplate template;
    template.choices = application->contextMenuChoices;
    template.window = &application->menuWindows[0];
    template.fontID = FONT_SYSTEM;
    template.xSize = 1;
    template.ySize = numEntries;
    template.lineSpacing = 0;
    template.suppressCursor = FALSE;

    if (numEntries >= 4) {
        template.loopAround = TRUE;
    } else {
        template.loopAround = FALSE;
    }

    Window_DrawStandardFrame(&application->menuWindows[0], TRUE, 1, 14);
    application->contextMenu = Menu_NewAndCopyToVRAM(&template, 8, 0, 0, HEAP_ID_PARTY_MENU, PAD_BUTTON_B);
}

void PartyMenu_LoadContextMenuPrompt(PartyMenuApplication *application)
{
    if (application->partyMenu->mode == PARTY_MENU_MODE_BALL_SEAL) {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_PromptCustomBall, application->tmpString);
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_SELECT_EGG && application->partyMembers[application->currPartySlot].isEgg == TRUE) {
        MessageLoader_GetString(application->messageLoader, PartyMenu_Text_PromptEgg, application->tmpString);
    } else {
        Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
        String *fmtString = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_PromptPokemon);

        StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
        StringTemplate_Format(application->template, application->tmpString, fmtString);
        String_Free(fmtString);
    }
}

static const struct {
    u16 bankEntry;
    u16 unused1;
    u16 unused2;
    u16 unused3;
} sPartySlotNicknameTemplates[MAX_PARTY_SIZE] = {
    { PartyMenu_Text_MemberNickname0, 2, 20, 14 },
    { PartyMenu_Text_MemberNickname1, 3, 21, 15 },
    { PartyMenu_Text_MemberNickname2, 4, 22, 16 },
    { PartyMenu_Text_MemberNickname3, 5, 23, 17 },
    { PartyMenu_Text_MemberNickname4, 6, 24, 18 },
    { PartyMenu_Text_MemberNickname5, 7, 25, 19 }
};

static void PartyMenu_PrintMemberHPSlash(PartyMenuApplication *application, u8 slot)
{
    FontSpecialChars_DrawPartyScreenLevelText(
        application->specialChars,
        SPECIAL_CHAR_SLASH,
        &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER],
        28,
        2);
}

void PartyMenu_SetMemberName(PartyMenuApplication *application, Pokemon *mon, u32 partySlot)
{
    String *fmt = MessageLoader_GetNewString(application->messageLoader, sPartySlotNicknameTemplates[partySlot].bankEntry);
    StringTemplate_SetNickname(application->template, 0, Pokemon_GetBoxPokemon(mon));
    StringTemplate_Format(application->template, application->partyMembers[partySlot].name, fmt);
    String_Free(fmt);
}

void PartyMenu_PrintMemberName(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        application->partyMembers[slot].name,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);

    if (application->partyMembers[slot].isEgg == TRUE) {
        Window_ScheduleCopyToVRAM(window);
        return;
    }

    if (application->partyMembers[slot].hideGenderMarker == FALSE) {
        if (application->partyMembers[slot].gender == GENDER_MALE) {
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_MaleSymbol, application->tmpFormat);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                application->tmpFormat,
                64,
                0,
                TEXT_SPEED_NO_TRANSFER,
                TEXT_COLOR(3, 4, 0),
                NULL);
        } else if (application->partyMembers[slot].gender == GENDER_FEMALE) {
            MessageLoader_GetString(application->messageLoader, PartyMenu_Text_FemaleSymbol, application->tmpFormat);
            Text_AddPrinterWithParamsAndColor(
                window,
                FONT_SYSTEM,
                application->tmpFormat,
                64,
                0,
                TEXT_SPEED_NO_TRANSFER,
                TEXT_COLOR(5, 6, 0),
                NULL);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintMemberLevel(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    if (application->partyMembers[slot].statusIcon != SUMMARY_CONDITION_NONE) {
        Window_ScheduleCopyToVRAM(window);
        return;
    }

    FontSpecialChars_DrawPartyScreenText(
        application->specialChars,
        SPECIAL_CHAR_LEVEL,
        application->partyMembers[slot].level,
        3,
        PADDING_MODE_NONE,
        window,
        5,
        2);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintMemberCurrentHP(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    FontSpecialChars_DrawPartyScreenHPText(
        application->specialChars,
        application->partyMembers[slot].curHP,
        3,
        PADDING_MODE_SPACES,
        window,
        4,
        2);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_ClearMemberHP(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Window_FillRectWithColor(window, 0, 4, 0, 24, MAX_LETTER_HEIGHT);
    Window_ScheduleCopyToVRAM(window);
}

static void PartyMenu_PrintMemberMaxHP(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    FontSpecialChars_DrawPartyScreenHPText(
        application->specialChars,
        application->partyMembers[slot].maxHP,
        3,
        PADDING_MODE_NONE,
        window,
        36,
        2);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_DrawMemberHealthbar(PartyMenuApplication *application, u8 slot)
{
    Window *window = &application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    switch (HealthBar_Color(application->partyMembers[slot].curHP, application->partyMembers[slot].maxHP, 48)) {
    case BARCOLOR_EMPTY:
        Window_ScheduleCopyToVRAM(window);
        return;

    case BARCOLOR_MAX:
    case BARCOLOR_GREEN:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(0) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;

    case BARCOLOR_YELLOW:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(1) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;

    case BARCOLOR_RED:
        Bg_LoadPalette(BG_LAYER_MAIN_1, &application->colors[PLTT_DEST(2) + 9], 2 * sizeof(u16), (PLTT_DEST(window->palette) + 9) * sizeof(u16));
        break;
    }

    u8 fillCount = App_PixelCount(application->partyMembers[slot].curHP, application->partyMembers[slot].maxHP, 48);
    Window_FillRectWithColor(window, 10, 0, 2, fillCount, 1);
    Window_FillRectWithColor(window, 9, 0, 3, fillCount, 2);
    Window_FillRectWithColor(window, 10, 0, 5, fillCount, 1);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_DrawMemberPanelData(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
        Window_ScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
        return;
    }

    PartyMenu_PrintMemberHPSlash(application, slot);
    PartyMenu_PrintMemberLevel(application, slot);
    PartyMenu_PrintMemberCurrentHP(application, slot);
    PartyMenu_PrintMemberMaxHP(application, slot);
    PartyMenu_DrawMemberHealthbar(application, slot);
}

void PartyMenu_LoadMemberWindowTiles(PartyMenuApplication *application, u8 slot)
{
    Window_LoadTiles(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_LoadTiles(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_LoadTiles(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_LoadTiles(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
}

void PartyMenu_CopyMemberWindowToVRAM(PartyMenuApplication *application, u8 slot)
{
    Window_ClearAndScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_ClearAndScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_ClearAndScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HP_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
    Window_ClearAndScheduleCopyToVRAM(&application->windows[PARTY_MENU_WIN_HEALTHBAR_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER]);
}

void PartyMenu_PrintMemberComment_CanUseEvoItem(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_UNABLE);
        return;
    }

    PartyMenu_PrintMemberLevel(application, slot);

    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    if (Pokemon_GetEvolutionTargetSpecies(NULL, mon, EVO_CLASS_BY_ITEM, application->partyMenu->usedItemID, NULL) == SPECIES_NONE) {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_UNABLE);
    } else {
        PrintMemberEvoComment(application, slot, EVO_COMMENT_ABLE);
    }
}

void PartyMenu_PrintMemberComment_CanLearnMove(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg == TRUE) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_UNABLE);
        return;
    }

    PartyMenu_PrintMemberLevel(application, slot);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(application->partyMenu->party, slot);
    u8 result = PartyMenu_CanMonLearnMove(application, v0);
    if (result == MON_MOVE_RESULT_CANNOT_LEARN) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_UNABLE);
    } else if (result == MON_MOVE_RESULT_ALREADY_LEARNED) {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_LEARNED);
    } else {
        PrintMemberMoveComment(application, slot, MOVE_COMMENT_ABLE);
    }
}

void PartyMenu_PrintMemberComment_IsContestEligible(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg != TRUE) {
        PartyMenu_PrintMemberLevel(application, slot);
    }

    PrintMemberContestComment(application, slot, application->partyMembers[slot].isContestEligible);
}

void PartyMenu_PrintMemberNameAndLevel(PartyMenuApplication *application, u8 slot)
{
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_NAME_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_LEVEL_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER], 0);
    PartyMenu_PrintMemberName(application, slot);

    if (application->partyMembers[slot].isEgg != TRUE) {
        PartyMenu_PrintMemberLevel(application, slot);
    }
}

void PartyMenu_PrintSelectionEligibility(PartyMenuApplication *application, u8 slot)
{
    for (u8 selectionSlot = 0; selectionSlot < application->partyMenu->maxSelectionSlots; selectionSlot++) {
        if (application->partyMenu->selectionOrder[selectionSlot] == slot + 1) {
            PrintMemberSelectionComment(application, slot, selectionSlot);
            return;
        }
    }

    if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_HALL) {
        if (PartyMenu_CheckBattleHallEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    } else if (application->partyMenu->mode == PARTY_MENU_MODE_BATTLE_CASTLE) {
        if (PartyMenu_CheckBattleCastleEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    } else {
        if (PartyMenu_CheckEligibility(application, slot) == PARTY_MENU_SELECTION_INELIGIBLE) {
            PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_BANNED);
            return;
        }
    }

    PrintMemberSelectionComment(application, slot, SELECTION_COMMENT_NOT_ENTERED);
}

static u32 CalcCenterXPos(enum Font font, const String *string, u32 winWidth)
{
    u32 width = Font_CalcStringWidth(font, string, 0);
    return (winWidth - width) >> 1;
}

void PartyMenu_PrintButtonText(PartyMenuApplication *application, u8 flags)
{
    u32 x;

    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_CONFIRM_BUTTON], 0);
    Window_FillTilemap(&application->windows[PARTY_MENU_WIN_CANCEL_BUTTON], 0);

#define LoadAndPrintToWindow(__bankEntry, __window)                                                        \
    do {                                                                                                   \
        MessageLoader_GetString(application->messageLoader, __bankEntry, application->tmpFormat);          \
        x = CalcCenterXPos(FONT_SYSTEM, application->tmpFormat, application->windows[__window].width * 8); \
        Text_AddPrinterWithParamsAndColor(                                                                 \
            &application->windows[__window],                                                               \
            FONT_SYSTEM,                                                                                   \
            application->tmpFormat,                                                                        \
            x,                                                                                             \
            0,                                                                                             \
            TEXT_SPEED_NO_TRANSFER,                                                                        \
            TEXT_COLOR(15, 14, 0),                                                                         \
            NULL);                                                                                         \
        Window_ScheduleCopyToVRAM(&application->windows[__window]);                                        \
    } while (0)

    if (flags & PARTY_MENU_SHOW_CONFIRM) {
        LoadAndPrintToWindow(PartyMenu_Text_ConfirmButton, PARTY_MENU_WIN_CONFIRM_BUTTON);
    }

    if (flags & PARTY_MENU_SHOW_CANCEL) {
        LoadAndPrintToWindow(PartyMenu_Text_CancelButton, PARTY_MENU_WIN_CANCEL_BUTTON);
    }

#undef LoadAndPrintToWindow
}

static void PrintPartyMenuMessage(PartyMenuApplication *application, Window *window, u32 bankEntry, u8 drawBox)
{
    if (drawBox == TRUE) {
        Window_DrawMessageBoxWithScrollCursor(window, TRUE, 1 + STANDARD_WINDOW_TILE_COUNT, 15);
    }

    Window_FillTilemap(window, 15);
    if (bankEntry != PRINT_MESSAGE_PRELOADED) {
        MessageLoader_GetString(application->messageLoader, bankEntry, application->tmpString);
    }

    Text_AddPrinterWithParams(window, FONT_MESSAGE, application->tmpString, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_PrintShortMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox)
{
    PrintPartyMenuMessage(application, &application->windows[PARTY_MENU_WIN_SHORT_MESSAGE], bankEntry, drawBox);
}

void PartyMenu_PrintMediumMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox)
{
    PrintPartyMenuMessage(application, &application->windows[PARTY_MENU_WIN_MEDIUM_MESSAGE], bankEntry, drawBox);
}

void PartyMenu_PrintLongMessage(PartyMenuApplication *application, u32 bankEntry, u8 drawBox)
{
    Window *window = &application->windows[PARTY_MENU_WIN_LONG_MESSAGE];
    if (drawBox == TRUE) {
        Window_DrawMessageBoxWithScrollCursor(window, TRUE, 1 + STANDARD_WINDOW_TILE_COUNT, 15);
    }

    Window_FillTilemap(window, 15);
    if (bankEntry != PRINT_MESSAGE_PRELOADED) {
        MessageLoader_GetString(application->messageLoader, bankEntry, application->tmpString);
    }

    PartyMenu_AddLongMessagePrinter(application);
}

void PartyMenu_AddLongMessagePrinter(PartyMenuApplication *application)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    application->textPrinterID = Text_AddPrinterWithParams(
        &application->windows[PARTY_MENU_WIN_LONG_MESSAGE],
        FONT_MESSAGE,
        application->tmpString,
        0,
        0,
        Options_TextFrameDelay(application->partyMenu->options),
        TextPrinter_HandleSound);
}

static BOOL TextPrinter_HandleSound(TextPrinterTemplate *printer, u16 param)
{
    switch (param) {
    case 1:
        return Sound_IsAnyEffectPlaying();
    case 2:
        return Sound_IsBGMPausedByFanfare();
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_KON);
        break;
    case 4:
        Sound_PlayFanfare(SEQ_FANFA1);
        break;
    case 5:
        return Sound_IsEffectPlaying(SEQ_SE_DP_KON);
    }

    return FALSE;
}

void PartyMenu_DrawYesNoChoice(PartyMenuApplication *application)
{
    application->contextMenu = Menu_MakeYesNoChoice(application->bgConfig, &sYesNoChoiceTemplate, 1, 14, HEAP_ID_PARTY_MENU);
}

static void PrintMemberEvoComment(PartyMenuApplication *application, u8 slot, u8 which)
{
    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Window_FillTilemap(window, 0);

    String *string;
    switch (which) {
    case EVO_COMMENT_ABLE:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_AbleToEvolve);
        break;
    case EVO_COMMENT_UNABLE:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_UnableToEvolve);
        break;
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberMoveComment(PartyMenuApplication *application, u8 slot, u8 which)
{
    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Window_FillTilemap(window, 0);

    String *string;
    switch (which) {
    case MOVE_COMMENT_ABLE:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_AbleToLearn);
        break;
    case MOVE_COMMENT_UNABLE:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_UnableToLearn);
        break;
    case MOVE_COMMENT_LEARNED:
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_AlreadyLearned);
        break;
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberContestComment(PartyMenuApplication *application, u8 slot, u8 isEligible)
{
    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Window_FillTilemap(window, 0);

    String *string;
    if (isEligible == FALSE) {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_IneligibleForContest);
    } else {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_EligibleForContest);
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMemberSelectionComment(PartyMenuApplication *application, u8 slot, u8 comment)
{
    Window *window = &application->windows[PARTY_MENU_WIN_COMMENT_MEMB0 + slot * PARTY_MENU_WIN_NUM_PER_MEMBER];
    Window_FillTilemap(window, 0);

    String *string;
    if (comment < MAX_PARTY_SIZE) {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_EnteredFirst + comment);
    } else if (comment == SELECTION_COMMENT_NOT_ENTERED) {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_NotEntered);
    } else {
        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_Banned);
    }

    Text_AddPrinterWithParamsAndColor(
        window,
        FONT_SYSTEM,
        string,
        0,
        0,
        TEXT_SPEED_NO_TRANSFER,
        TEXT_COLOR(15, 14, 0),
        NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

void PartyMenu_DrawLevelUpStatIncreases(PartyMenuApplication *application)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(application->partyMenu->party, application->currPartySlot);
    u16 stats[STAT_MAX] = {
        Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL),
        Pokemon_GetValue(mon, MON_DATA_ATK, NULL),
        Pokemon_GetValue(mon, MON_DATA_DEF, NULL),
        Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL),
        Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL),
        Pokemon_GetValue(mon, MON_DATA_SPEED, NULL),
    };

    Window_Add(application->bgConfig, &application->menuWindows[0], BG_LAYER_MAIN_0, 1, 1, 14, 12, 0, WIN_CONTEXT_WINDOW_BASE_TILE);
    Window_DrawStandardFrame(&application->menuWindows[0], TRUE, 1, 14);
    Window_FillTilemap(&application->menuWindows[0], 15);

    for (u32 stat = 0; stat < STAT_MAX; stat++) {
        String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_LevelUpMaxHP + stat);
        Text_AddPrinterWithParams(&application->menuWindows[0], FONT_SYSTEM, string, 0, MAX_LETTER_HEIGHT * stat, TEXT_SPEED_NO_TRANSFER, NULL);
        String_Free(string);

        string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_LevelUpStatIncrease);
        StringTemplate_SetNumber(application->template, 0, stats[stat] - application->monStats[stat], 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(application->template, application->tmpString, string);
        String_Free(string);

        u32 justified = 13 * 8 - Font_CalcStringWidth(FONT_SYSTEM, application->tmpString, 0);
        Text_AddPrinterWithParams(
            &application->menuWindows[0],
            FONT_SYSTEM,
            application->tmpString,
            justified,
            16 * stat,
            TEXT_SPEED_NO_TRANSFER,
            NULL);
        application->monStats[stat] = stats[stat];
    }

    Window_ScheduleCopyToVRAM(&application->menuWindows[0]);
}

void PartyMenu_DrawLevelUpNewStatValues(PartyMenuApplication *application)
{
    Window_FillRectWithColor(&application->menuWindows[0], 15, 80, 0, 32, 14 * 8);
    String *string = MessageLoader_GetNewString(application->messageLoader, PartyMenu_Text_LevelUpNewStatValue);

    for (u32 stat = 0; stat < STAT_MAX; stat++) {
        StringTemplate_SetNumber(application->template, 0, application->monStats[stat], 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(application->template, application->tmpString, string);

        u32 width = Font_CalcStringWidth(FONT_SYSTEM, application->tmpString, 0);
        Text_AddPrinterWithParams(
            &application->menuWindows[0],
            0,
            application->tmpString,
            13 * 8 - width,
            MAX_LETTER_HEIGHT * stat,
            TEXT_SPEED_NO_TRANSFER,
            NULL);
    }

    String_Free(string);
    Window_ScheduleCopyToVRAM(&application->menuWindows[0]);
}

void PartyMenu_RemoveContextWindow(PartyMenuApplication *application)
{
    Window_EraseStandardFrame(&application->menuWindows[0], 0);
    Window_Remove(&application->menuWindows[0]);
}
