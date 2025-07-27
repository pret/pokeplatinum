#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H

#include <nitro/fx/fx.h>

#include "constants/moves.h"

#include "struct_decls/battle_font_decl.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_defs/archived_poke_sprite_data.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/sprite_animation_frame.h"

#include "bg_window.h"
#include "camera.h"
#include "game_options.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

enum SummaryMode {
    SUMMARY_MODE_NORMAL = 0,
    SUMMARY_MODE_LOCK_MOVES,
    SUMMARY_MODE_SELECT_MOVE,
    SUMMARY_MODE_FEED_POFFIN,
    SUMMARY_MODE_SHOW_CONDITION_CHANGE,
};

enum SummaryPage {
    SUMMARY_PAGE_INFO = 0,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONDITION,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_RIBBONS,
    SUMMARY_PAGE_EXIT,

    SUMMARY_PAGE_MAX,

    SUMMARY_PAGE_NONE = 0xFF
};

enum SummaryDataType {
    SUMMARY_DATA_MON = 0,
    SUMMARY_DATA_PARTY_MON,
    SUMMARY_DATA_BOX_MON,
};

enum SummaryReturnMode {
    SUMMARY_RETURN_SELECT = 0,
    SUMMARY_RETURN_CANCEL,
};

enum SummarySubscreenType {
    SUMMARY_SUBSCREEN_TYPE_NORMAL = 0,
    SUMMARY_SUBSCREEN_TYPE_NO_CONTEST_INFO,
    SUMMARY_SUBSCREEN_TYPE_UNUSED_MOVES_ONLY, // only shows battle and contest move pages, never used

    SUMMARY_SUBSCREEN_TYPE_NO_BUTTONS = 0xF,
};

enum SummaryStaticWindow {
    SUMMARY_WINDOW_LABEL_INFO = 0,
    SUMMARY_WINDOW_LABEL_MEMO,
    SUMMARY_WINDOW_LABEL_SKILLS,
    SUMMARY_WINDOW_LABEL_CONDITION,
    SUMMARY_WINDOW_LABEL_BATTLE_MOVES,
    SUMMARY_WINDOW_LABEL_CONTEST_MOVES,
    SUMMARY_WINDOW_LABEL_ITEM,
    SUMMARY_WINDOW_LABEL_DEX_NUM,
    SUMMARY_WINDOW_LABEL_SPECIES_NAME,
    SUMMARY_WINDOW_LABEL_TYPE,
    SUMMARY_WINDOW_LABEL_OT_NAME,
    SUMMARY_WINDOW_LABEL_OT_ID,
    SUMMARY_WINDOW_LABEL_EXP,
    SUMMARY_WINDOW_LABEL_EXP_NEXT_LV,
    SUMMARY_WINDOW_DUMMY_14,
    SUMMARY_WINDOW_LABEL_HP,
    SUMMARY_WINDOW_LABEL_ATTACK,
    SUMMARY_WINDOW_LABEL_DEFENSE,
    SUMMARY_WINDOW_LABEL_SP_ATTACK,
    SUMMARY_WINDOW_LABEL_SP_DEFENSE,
    SUMMARY_WINDOW_LABEL_SPEED,
    SUMMARY_WINDOW_LABEL_ABILITY,
    SUMMARY_WINDOW_LABEL_SHEEN,
    SUMMARY_WINDOW_DUMMY_23,
    SUMMARY_WINDOW_LABEL_MOVE_CANCEL,
    SUMMARY_WINDOW_LABEL_MOVE_CATEGORY,
    SUMMARY_WINDOW_LABEL_MOVE_POWER,
    SUMMARY_WINDOW_LABEL_MOVE_ACCURACY,
    SUMMARY_WINDOW_LABEL_CLOSE_WINDOW,
    SUMMARY_WINDOW_LABEL_APPEAL_POINTS,
    SUMMARY_WINDOW_LABEL_RIBBON_COUNT,
    SUMMARY_WINDOW_LABEL_RIBBONS,
    SUMMARY_WINDOW_ITEM_NAME,
    SUMMARY_WINDOW_MON_LEVEL,
    SUMMARY_WINDOW_MON_NICKNAME_GENDER,
    SUMMARY_WINDOW_BUTTON_PROMPT,

    SUMMARY_STATIC_WINDOW_MAX
};

enum SummaryExtraWindowInfo {
    SUMMARY_WINDOW_DEX_NUM = 0,
    SUMMARY_WINDOW_SPECIES_NAME,
    SUMMARY_WINDOW_OT_NAME,
    SUMMARY_WINDOW_OT_ID,
    SUMMARY_WINDOW_EXP,
    SUMMARY_WINDOW_EXP_NEXT_LV,

    SUMMARY_INFO_WINDOW_MAX,
};

enum SummaryExtraWindowMemo {
    SUMMARY_WINDOW_MEMO = 0,

    SUMMARY_MEMO_WINDOW_MAX,
};

enum SummaryExtraWindowSkills {
    SUMMARY_WINDOW_HP = 0,
    SUMMARY_WINDOW_ATTACK,
    SUMMARY_WINDOW_DEFENSE,
    SUMMARY_WINDOW_SP_ATTACK,
    SUMMARY_WINDOW_SP_DEFENSE,
    SUMMARY_WINDOW_SPEED,
    SUMMARY_WINDOW_ABILITY,
    SUMMARY_WINDOW_ABILITY_DESCRIPTION,

    SUMMARY_SKILLS_WINDOW_MAX,
};

enum SummaryExtraWindowBattleMoves {
    SUMMARY_WINDOW_BATTLE_MOVE_1 = 0,
    SUMMARY_WINDOW_BATTLE_MOVE_2,
    SUMMARY_WINDOW_BATTLE_MOVE_3,
    SUMMARY_WINDOW_BATTLE_MOVE_4,
    SUMMARY_WINDOW_BATTLE_MOVE_5,
    SUMMARY_WINDOW_BATTLE_MOVE_POWER,
    SUMMARY_WINDOW_BATTLE_MOVE_ACCURACY,
    SUMMARY_WINDOW_BATTLE_MOVE_DESCRIPTION,

    SUMMARY_BATTLE_MOVES_WINDOW_MAX,
};

enum SummaryExtraWindowContestMoves {
    SUMMARY_WINDOW_CONTEST_MOVE_1 = 0,
    SUMMARY_WINDOW_CONTEST_MOVE_2,
    SUMMARY_WINDOW_CONTEST_MOVE_3,
    SUMMARY_WINDOW_CONTEST_MOVE_4,
    SUMMARY_WINDOW_CONTEST_MOVE_5,
    SUMMARY_WINDOW_CONTEST_MOVE_DESCRIPTION,

    SUMMARY_CONTEST_MOVES_WINDOW_MAX,
};

enum SummaryExtraWindowRibbons {
    SUMMARY_WINDOW_RIBBON_COUNT = 0,
    SUMMARY_WINDOW_RIBBON_INDEX,
    SUMMARY_WINDOW_RIBBON_NAME,
    SUMMARY_WINDOW_RIBBON_DESCRIPTION,

    SUMMARY_RIBBONS_WINDOW_MAX,
};

enum SummaryExtraWindowCondition {
    SUMMARY_WINDOW_POFFIN_BUTTON_PROMPT = 0,
    SUMMARY_WINDOW_FAVORITE_FOOD,
    SUMMARY_WINDOW_POFFIN_FEED_MSG,

    SUMMARY_CONDITION_WINDOW_MAX,
};

enum SummarySprite {
    SUMMARY_SPRITE_TAB_INFO = 0,
    SUMMARY_SPRITE_TAB_MEMO,
    SUMMARY_SPRITE_TAB_SKILLS,
    SUMMARY_SPRITE_TAB_BATTLE_MOVES,
    SUMMARY_SPRITE_TAB_CONDITION,
    SUMMARY_SPRITE_TAB_CONTEST_MOVES,
    SUMMARY_SPRITE_TAB_RIBBONS,
    SUMMARY_SPRITE_TAB_EXIT,
    SUMMARY_SPRITE_CAUGHT_BALL,
    SUMMARY_SPRITE_MOVE_SELECTOR_1,
    SUMMARY_SPRITE_MOVE_SELECTOR_2,
    SUMMARY_SPRITE_MON_TYPE_ICON_1,
    SUMMARY_SPRITE_MON_TYPE_ICON_2,

    SUMMARY_MOVE_TYPE_ICON_SPRITE_START,
    SUMMARY_SPRITE_MOVE_TYPE_ICON_1 = SUMMARY_MOVE_TYPE_ICON_SPRITE_START,
    SUMMARY_SPRITE_MOVE_TYPE_ICON_2,
    SUMMARY_SPRITE_MOVE_TYPE_ICON_3,
    SUMMARY_SPRITE_MOVE_TYPE_ICON_4,
    SUMMARY_SPRITE_MOVE_TYPE_ICON_5,
    SUMMARY_MOVE_TYPE_ICON_SPRITE_END = SUMMARY_SPRITE_MOVE_TYPE_ICON_5,

    SUMMARY_SPRITE_MOVE_CATEGORY_ICON,
    SUMMARY_SPRITE_MON_ICON,
    SUMMARY_SPRITE_STATUS_ICON,
    SUMMARY_SPRITE_PAGE_ARROW_LEFT,
    SUMMARY_SPRITE_PAGE_ARROW_RIGHT,

    SUMMARY_MARKING_SPRITES_START,
    SUMMARY_SPRITE_MARKING_CIRCLE = SUMMARY_MARKING_SPRITES_START,
    SUMMARY_SPRITE_MARKING_TRIANGLE,
    SUMMARY_SPRITE_MARKING_SQUARE,
    SUMMARY_SPRITE_MARKING_HEART,
    SUMMARY_SPRITE_MARKING_STAR,
    SUMMARY_SPRITE_MARKING_DIAMOND,
    SUMMARY_MARKING_SPRITES_END = SUMMARY_SPRITE_MARKING_DIAMOND,

    SUMMARY_SHEEN_SPRITES_START,
    SUMMARY_SPRITE_SHEEN_1 = SUMMARY_SHEEN_SPRITES_START,
    SUMMARY_SPRITE_SHEEN_2,
    SUMMARY_SPRITE_SHEEN_3,
    SUMMARY_SPRITE_SHEEN_4,
    SUMMARY_SPRITE_SHEEN_5,
    SUMMARY_SPRITE_SHEEN_6,
    SUMMARY_SPRITE_SHEEN_7,
    SUMMARY_SPRITE_SHEEN_8,
    SUMMARY_SPRITE_SHEEN_9,
    SUMMARY_SPRITE_SHEEN_10,
    SUMMARY_SPRITE_SHEEN_11,
    SUMMARY_SPRITE_SHEEN_12,
    SUMMARY_SHEEN_SPRITES_END = SUMMARY_SPRITE_SHEEN_12,

    SUMMARY_SPRITE_BUTTON_TAP_CIRCLE,

    SUMMARY_CONDITION_ARROW_SPRITES_START,
    SUMMARY_SPRITE_CONDITION_ARROW_COOL = SUMMARY_CONDITION_ARROW_SPRITES_START,
    SUMMARY_SPRITE_CONDITION_ARROW_BEAUTY,
    SUMMARY_SPRITE_CONDITION_ARROW_CUTE,
    SUMMARY_SPRITE_CONDITION_ARROW_SMART,
    SUMMARY_SPRITE_CONDITION_ARROW_TOUGH,
    SUMMARY_CONDITION_ARROW_SPRITES_END = SUMMARY_SPRITE_CONDITION_ARROW_TOUGH,

    SUMMARY_SPRITE_A_BUTTON,
    SUMMARY_SPRITE_CONTEST_STAT_DOT_COOL,
    SUMMARY_SPRITE_CONTEST_STAT_DOT_BEAUTY,
    SUMMARY_SPRITE_CONTEST_STAT_DOT_CUTE,
    SUMMARY_SPRITE_CONTEST_STAT_DOT_SMART,
    SUMMARY_SPRITE_CONTEST_STAT_DOT_TOUGH,
    SUMMARY_SPRITE_SHINY_ICON,
    SUMMARY_SPRITE_POKERUS_CURED_ICON,

    SUMMARY_RIBBON_SPRITES_START,
    SUMMARY_SPRITE_RIBBON_1 = SUMMARY_RIBBON_SPRITES_START,
    SUMMARY_SPRITE_RIBBON_2,
    SUMMARY_SPRITE_RIBBON_3,
    SUMMARY_SPRITE_RIBBON_4,
    SUMMARY_SPRITE_RIBBON_5,
    SUMMARY_SPRITE_RIBBON_6,
    SUMMARY_SPRITE_RIBBON_7,
    SUMMARY_SPRITE_RIBBON_8,
    SUMMARY_SPRITE_RIBBON_9,
    SUMMARY_SPRITE_RIBBON_10,
    SUMMARY_SPRITE_RIBBON_11,
    SUMMARY_SPRITE_RIBBON_12,
    SUMMARY_RIBBON_SPRITES_END = SUMMARY_SPRITE_RIBBON_12,

    SUMMARY_SPRITE_RIBBON_CURSOR,
    SUMMARY_SPRITE_RIBBON_ARROW_UP,
    SUMMARY_SPRITE_RIBBON_ARROW_DOWN,
    SUMMARY_SPRITE_RIBBON_FLASH,

    SUMMARY_CONDITION_FLASH_SPRITES_START,
    SUMMARY_SPRITE_CONDITION_FLASH_COOL = SUMMARY_CONDITION_FLASH_SPRITES_START,
    SUMMARY_SPRITE_CONDITION_FLASH_BEAUTY,
    SUMMARY_SPRITE_CONDITION_FLASH_CUTE,
    SUMMARY_SPRITE_CONDITION_FLASH_SMART,
    SUMMARY_SPRITE_CONDITION_FLASH_TOUGH,
    SUMMARY_CONDITION_FLASH_SPRITES_END = SUMMARY_SPRITE_CONDITION_FLASH_TOUGH,

    SUMMARY_SPRITE_POKERUS_ICON,

    SUMMARY_SPRITE_MAX = 77,
};

enum SummaryStatus {
    SUMMARY_CONDITION_POKERUS = 0,
    SUMMARY_CONDITION_PARALYSIS,
    SUMMARY_CONDITION_FREEZE,
    SUMMARY_CONDITION_SLEEP,
    SUMMARY_CONDITION_POISON,
    SUMMARY_CONDITION_BURN,
    SUMMARY_CONDITION_FAINTED,
    SUMMARY_CONDITION_NONE,
};

enum SummaryPokerusState {
    SUMMARY_POKERUS_NONE = 0,
    SUMMARY_POKERUS_INFECTED,
    SUMMARY_POKERUS_CURED,
};

enum ConditionRect {
    CONDITION_RECT_Q1 = 0,
    CONDITION_RECT_Q2,
    CONDITION_RECT_Q3,
    CONDITION_RECT_Q4,

    MAX_CONDITION_RECT
};

#define SUMMARY_SUBSCREEN_BUTTON_NONE 0xFF

#define RIBBONS_PER_ROW  4
#define RIBBONS_PER_PAGE 12

#define SUMMARY_TEXT_BLACK             TEXT_COLOR(1, 2, 0)
#define SUMMARY_TEXT_WHITE             TEXT_COLOR(15, 14, 0)
#define SUMMARY_TEXT_BLUE              TEXT_COLOR(3, 4, 0)
#define SUMMARY_TEXT_RED               TEXT_COLOR(5, 6, 0)
#define SUMMARY_TEXT_BLACK_DARK_SHADOW TEXT_COLOR(1, 2, 15)

typedef struct ConditionRectangle {
    VecFx16 topLeft;
    VecFx16 topRight;
    VecFx16 bottomLeft;
    VecFx16 bottomRight;
} ConditionRectangle;

typedef struct PokemonSummary {
    void *monData;
    Options *options;
    const charcode_t *OTName;
    u32 OTID;
    u8 OTGender;
    u8 dataType;
    u8 mode;
    u8 monMax;
    u8 monIndex;
    u8 pageFlags;
    u8 selectedMoveSlot;
    u8 returnMode;
    u16 move;

    u8 padding_1A[2];

    u32 dexMode;
    void *specialRibbons;
    void *poffin;
    ChatotCry *chatotCry;
    BOOL showContest;
} PokemonSummary;

typedef struct PokemonSummaryMonData {
    Strbuf *speciesName;
    Strbuf *nickname;
    Strbuf *OTName;

    u16 species;
    u16 heldItem;

    u8 type1;
    u8 type2;
    u8 level : 7;
    u8 hideGender : 1;
    u8 gender : 2;
    u8 caughtBall : 6;

    u32 OTID;
    u32 curExp;
    u32 curLevelExp;
    u32 nextLevelExp;

    u16 curHP;
    u16 maxHP;
    u16 attack;
    u16 defense;
    u16 spAttack;
    u16 spDefense;
    u16 speed;
    u8 ability;
    u8 nature;

    u16 moves[LEARNED_MOVES_MAX];
    u8 curPP[LEARNED_MOVES_MAX];
    u8 maxPP[LEARNED_MOVES_MAX];

    u8 OTGender;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
    u8 preferredFlavor;

    u16 markings;
    u16 form;

    u32 status : 28;
    u32 isEgg : 1;
    u32 isShiny : 1;
    u32 pokerus : 2;

    u32 ribbons[4];
} PokemonSummaryMonData;

typedef struct PokemonSummaryMonSpriteData {
    Camera *camera;
    void *spriteManager;
    SpriteAnimationFrame frames[MAX_ANIMATION_FRAMES];
    PokemonAnimationSys *animationSys;
    PokemonSprite *sprite;
    BOOL flip;
} PokemonSummaryMonSpriteData;

typedef struct PokemonSummaryScreen {
    BgConfig *bgConfig;
    Window staticWindows[SUMMARY_STATIC_WINDOW_MAX];
    Window *extraWindows;
    u32 numExtraWindows;

    PokemonSummary *data;
    PokemonSummaryMonData monData;
    PokemonSummaryMonSpriteData monSprite;

    ConditionRectangle currRects[MAX_CONDITION_RECT];
    ConditionRectangle deltaRects[MAX_CONDITION_RECT];
    ConditionRectangle maxRects[MAX_CONDITION_RECT];
    u32 conditionState;

    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    Sprite *sprites[SUMMARY_SPRITE_MAX];
    ManagedSprite *managedSprites[SUMMARY_SPRITE_MAX];

    BattleFontContext *unk_684;
    MessageLoader *msgLoader;
    MessageLoader *ribbonLoader;
    StringTemplate *strFormatter;
    Strbuf *strbuf;
    Strbuf *playerName;
    MessageLoader *moveNameLoader;
    NARC *narcPlPokeData;

    s8 page;
    u8 cursor : 4;
    u8 cursorTmp : 4;
    u8 pageState;

    u8 subscreenType : 4;
    u8 subscreenExit : 4;

    u8 sheenState;
    u8 sheenMax;
    u8 sheenPos;
    u8 sheenCount;

    u8 buttonAnimFrame;
    u8 buttonState;
    u8 buttonCurrent;

    u8 ribbonCol;
    u8 ribbonRow;
    u8 ribbonMax;
    u8 ribbonID;
} PokemonSummaryScreen;

BOOL PokemonSummaryScreen_ShowContestData(SaveData *saveData);
void PokemonSummaryScreen_FlagVisiblePages(PokemonSummary *summary, const u8 *pages);
u8 PokemonSummaryScreen_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page);
u8 PokemonSummaryScreen_CountVisiblePages(PokemonSummaryScreen *summaryScreen);
void *PokemonSummaryScreen_MonData(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_RibbonIDAt(PokemonSummaryScreen *summaryScreen, u8 col);
void PokemonSummaryScreen_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo);
u32 PokemonSummaryScreen_StatusIconChar(void);
u32 PokemonSummaryScreen_StatusIconPltt(void);
u32 PokemonSummaryScreen_StatusIconCell(void);
u32 PokemonSummaryScreen_StatusIconAnim(void);
u32 PokemonSummaryScreen_StatusIconAnimIdx(Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
