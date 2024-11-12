#ifndef POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
#define POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H

#include "constants/moves.h"

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/archived_poke_sprite_data.h"
#include "struct_defs/chatot_cry.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02091850.h"

#include "bg_window.h"
#include "camera.h"
#include "cell_actor.h"
#include "game_options.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "trainer_info.h"

enum PSSMode {
    PSS_MODE_NORMAL = 0,
    PSS_MODE_LOCK_MOVES,
    PSS_MODE_SELECT_MOVE,
    PSS_MODE_POFFIN,
    PSS_MODE_CONDITION,
};

enum PSSPage {
    PSS_PAGE_INFO = 0,
    PSS_PAGE_MEMO,
    PSS_PAGE_SKILLS,
    PSS_PAGE_BATTLE_MOVES,
    PSS_PAGE_CONDITION,
    PSS_PAGE_CONTEST_MOVES,
    PSS_PAGE_RIBBONS,
    PSS_PAGE_EXIT,

    PSS_PAGE_MAX,

    PSS_PAGE_NONE = 0xFF
};

enum PSSState {
    PSS_STATE_TRANSITION_IN = 0,
    PSS_STATE_WAIT_TRANSITION,
    PSS_STATE_HANDLE_INPUT,
    PSS_STATE_SETUP_BATTLE_MOVE_INFO,
    PSS_STATE_HIDE_BATTLE_MOVE_INFO,
    PSS_STATE_SETUP_CONTEST_MOVE_INFO,
    PSS_STATE_HIDE_CONTEST_MOVE_INFO,
    PSS_STATE_MOVE_SELECT,
    PSS_STATE_MOVE_SWAP,
    PSS_STATE_LEARN_MOVE,
    PSS_STATE_WAIT_HM_MSG_INPUT,
    PSS_STATE_SETUP_RIBBON_INFO,
    PSS_STATE_HIDE_RIBBON_INFO,
    PSS_STATE_RIBBON_SELECT,
    PSS_STATE_SUBSCREEN_INPUT,
    PSS_STATE_SETUP_POFFIN_FEED,
    PSS_STATE_PRINT_CONTEST_STAT_MSGS,
    PSS_STATE_WAIT_FINISH_POFFIN_FEED,
    PSS_STATE_TRANSITION_OUT,
    PSS_STATE_WAIT_EXIT,
};

enum PSSDataType {
    PSS_DATA_MON = 0,
    PSS_DATA_PARTY_MON,
    PSS_DATA_BOX_MON,
};

// todo: consolidate this with more generic ones if this scheme is used elsewhere
enum PSSTextAlignment {
    PSS_ALIGNMENT_LEFT = 0,
    PSS_ALIGNMENT_RIGHT,
    PSS_ALIGNMENT_CENTER,
};

enum PSSSubscreenType {
    PSS_SUBSCREEN_TYPE_NORMAL = 0,
    PSS_SUBSCREEN_TYPE_NO_CONTEST_INFO,
    PSS_SUBSCREEN_TYPE_UNUSED_MOVES_ONLY, // only shows battle and contest move pages, never used

    PSS_SUBSCREEN_TYPE_NO_BUTTONS = 0xF,
};

enum PSSStaticWindow {
    PSS_STATIC_WINDOW_0 = 0,
    PSS_STATIC_WINDOW_1,
    PSS_STATIC_WINDOW_2,
    PSS_STATIC_WINDOW_3,
    PSS_STATIC_WINDOW_4,
    PSS_STATIC_WINDOW_5,
    PSS_WINDOW_ITEM_LABEL,
    PSS_STATIC_WINDOW_7,
    PSS_STATIC_WINDOW_8,
    PSS_STATIC_WINDOW_9,
    PSS_STATIC_WINDOW_10,
    PSS_STATIC_WINDOW_11,
    PSS_STATIC_WINDOW_12,
    PSS_STATIC_WINDOW_13,
    PSS_STATIC_WINDOW_14,
    PSS_STATIC_WINDOW_15,
    PSS_STATIC_WINDOW_16,
    PSS_STATIC_WINDOW_17,
    PSS_STATIC_WINDOW_18,
    PSS_STATIC_WINDOW_19,
    PSS_STATIC_WINDOW_20,
    PSS_STATIC_WINDOW_21,
    PSS_STATIC_WINDOW_22,
    PSS_STATIC_WINDOW_23,
    PSS_STATIC_WINDOW_24,
    PSS_STATIC_WINDOW_25,
    PSS_WINDOW_MOVE_POWER,
    PSS_WINDOW_MOVE_ACCURACY,
    PSS_STATIC_WINDOW_28,
    PSS_STATIC_WINDOW_29,
    PSS_STATIC_WINDOW_30,
    PSS_STATIC_WINDOW_31,
    PSS_WINDOW_ITEM_NAME,
    PSS_WINDOW_MON_LEVEL,
    PSS_WINDOW_MON_NICKNAME,
    PSS_WINDOW_BUTTON_PROMPT,

    PSS_STATIC_WINDOW_MAX
};

enum PSSSprite {
    PSS_SPRITE_TAB_INFO = 0,
    PSS_SPRITE_TAB_MEMO,
    PSS_SPRITE_TAB_SKILLS,
    PSS_SPRITE_TAB_BATTLE_MOVES,
    PSS_SPRITE_TAB_CONDITION,
    PSS_SPRITE_TAB_CONTEST_MOVES,
    PSS_SPRITE_TAB_RIBBONS,
    PSS_SPRITE_TAB_EXIT,

    PSS_SPRITE_MOVE_SELECTOR_1 = 9,
    PSS_SPRITE_MOVE_SELECTOR_2,
    PSS_SPRITE_MON_TYPE_ICON_1,
    PSS_SPRITE_MON_TYPE_ICON_2,
    PSS_SPRITE_MOVE_TYPE_ICON_1,
    PSS_SPRITE_MOVE_TYPE_ICON_2,
    PSS_SPRITE_MOVE_TYPE_ICON_3,
    PSS_SPRITE_MOVE_TYPE_ICON_4,
    PSS_SPRITE_MOVE_TYPE_ICON_5,
    PSS_SPRITE_MOVE_CATEGORY_ICON,
    PSS_SPRITE_MON_ICON,
    PSS_SPRITE_STATUS_ICON,
    PSS_SPRITE_PAGE_ARROW_LEFT,
    PSS_SPRITE_PAGE_ARROW_RIGHT,
    PSS_SPRITE_MARKING_CIRCLE, // ravetodo double check order
    PSS_SPRITE_MARKING_TRIANGLE,
    PSS_SPRITE_MARKING_SQUARE,
    PSS_SPRITE_MARKING_HEART,
    PSS_SPRITE_MARKING_STAR,
    PSS_SPRITE_MARKING_DIAMOND,

    PSS_SPRITE_A_BUTTON = 47,

    PSS_SPRITE_SHINY_ICON = 53,
    PSS_SPRITE_POKERUS_CURED_ICON,
    PSS_SPRITE_RIBBON_1,
    PSS_SPRITE_RIBBON_2,
    PSS_SPRITE_RIBBON_3,
    PSS_SPRITE_RIBBON_4,
    PSS_SPRITE_RIBBON_5,
    PSS_SPRITE_RIBBON_6,
    PSS_SPRITE_RIBBON_7,
    PSS_SPRITE_RIBBON_8,
    PSS_SPRITE_RIBBON_9,
    PSS_SPRITE_RIBBON_10,
    PSS_SPRITE_RIBBON_11,
    PSS_SPRITE_RIBBON_12,
    PSS_SPRITE_RIBBON_CURSOR,

    PSS_SPRITE_RIBBON_FLASH = 70,

    PSS_SPRITE_MAX = 77,
};

// somewhat bewilderingly, the message order does not follow the contest stat order
enum PSSPoffinFeedMsg {
    PSS_MSG_COOLNESS_ENHANCED = 0,
    PSS_MSG_BEAUTY_ENHANCED,
    PSS_MSG_CUTENESS_ENHANCED,
    PSS_MSG_SMARTNESS_ENHANCED,
    PSS_MSG_TOUGHNESS_ENHANCED,

    PSS_MSG_NOTHING_CHANGED = 0xFE,
    PSS_MSG_MON_WONT_EAT_MORE = 0xFF,
};

#define PSS_MOVE_NONE             -1
#define PSS_SUBSCREEN_BUTTON_NONE 0xFF

#define MAX_MARKINGS 6

#define POINTS_PER_APPEAL_HEART 10
#define MAX_APPEAL_HEARTS       6
#define EMPTY_HEART_BASE_TILE   0x12E
#define FILLED_HEART_BASE_TILE  0x12C

#define GREEN_HEALTHBAR_BASE_TILE  0xC0
#define YELLOW_HEALTHBAR_BASE_TILE 0xE0
#define RED_HEALTHBAR_BASE_TILE    0x100
#define PALETTE_SLOT_10_MASK       0xA000

#define RIBBONS_PER_ROW  4
#define RIBBONS_PER_PAGE 12

typedef struct PokemonSummary {
    void *monData;
    Options *options;
    const charcode_t *OTName;
    u32 OTID;
    u8 OTGender;
    u8 dataType;
    u8 mode;
    u8 max;
    u8 pos;
    u8 pageFlag;
    u8 selectedSlot;
    u8 returnMode;
    u16 move;

    u8 padding_1A[2];

    u32 dexMode;
    void *ribbons;
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
    u8 showGender : 1;
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
    Sprite *sprite;
    BOOL flip;
} PokemonSummaryMonSpriteData;

typedef struct PokemonSummaryScreen {
    BgConfig *bgConfig;
    Window staticWindows[PSS_STATIC_WINDOW_MAX];
    Window *extraWindows;
    u32 numExtraWindows;

    PokemonSummary *data;
    PokemonSummaryMonData monData;
    PokemonSummaryMonSpriteData monSprite;

    UnkStruct_02091850 unk_2F0[4];
    UnkStruct_02091850 unk_350[4];
    UnkStruct_02091850 unk_3B0[4];
    u32 unk_410;

    SpriteRenderer *renderer;
    SpriteGfxHandler *gfxHandler;
    CellActor *sprites[PSS_SPRITE_MAX];
    CellActorData *actor[PSS_SPRITE_MAX];

    UnkStruct_0200C440 *unk_684;
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
    u8 subscreen;
    u8 subscreenType : 4;
    u8 subscreenExit : 4;

    u8 sheenState;
    u8 sheenMax;
    u8 sheenPos;
    u8 sheenCount;

    u8 buttonCount;
    u8 buttonState;
    u8 buttonCurrent;

    u8 ribbonCol;
    u8 ribbonRow;
    u8 ribbonMax;
    u8 ribbonNum;
} PokemonSummaryScreen;

BOOL PokemonSummaryScreen_ShowContestData(SaveData *saveData);
void PokemonSummaryScreen_FlagVisiblePages(PokemonSummary *summary, const u8 *pages);
u8 PokemonSummaryScreen_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page);
u8 PokemonSummaryScreen_CountVisiblePages(PokemonSummaryScreen *summaryScreen);
void *PokemonSummaryScreen_MonData(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_RibbonNumAt(PokemonSummaryScreen *summaryScreen, u8 col);
void PokemonSummaryScreen_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo);
u32 PokemonSummaryScreen_StatusIconChar(void);
u32 PokemonSummaryScreen_StatusIconPltt(void);
u32 PokemonSummaryScreen_StatusIconCell(void);
u32 PokemonSummaryScreen_StatusIconAnim(void);
u32 PokemonSummaryScreen_StatusIconAnimIdx(Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
