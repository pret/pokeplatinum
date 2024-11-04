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
    PSS_STATIC_WINDOW_35,

    PSS_STATIC_WINDOW_MAX
};

#define PSS_MOVE_NONE             0xFFFFFFFF
#define PSS_SUBSCREEN_BUTTON_NONE 0xFF

#define POINTS_PER_APPEAL_HEART 10
#define MAX_APPEAL_HEARTS       6
#define RIBBONS_PER_ROW         4

typedef struct PokemonSummary {
    void *monData;
    Options *options;
    const u16 *OTName;
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
    CellActor *unk_41C[77];
    CellActorData *actor[77];

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
    u8 buttonPos;

    u8 ribbonCol;
    u8 ribbonRow;
    u8 ribbonMax;
    u8 ribbonNum;
} PokemonSummaryScreen;

BOOL PokemonSummary_ShowContestData(SaveData *saveData);
void PokemonSummary_FlagVisiblePages(PokemonSummary *summary, const u8 *pages);
u8 PokemonSummary_PageIsVisble(PokemonSummaryScreen *summaryScreen, u32 page);
u8 PokemonSummary_CountVisiblePages(PokemonSummaryScreen *summaryScreen);
void *PokemonSummary_MonData(PokemonSummaryScreen *summaryScreen);
u8 PokemonSummaryScreen_RibbonNumAt(PokemonSummaryScreen *summaryScreen, u8 col);
void PokemonSummary_SetPlayerProfile(PokemonSummary *summary, const TrainerInfo *trainerInfo);
u32 PokemonSummary_StatusIconChar(void);
u32 PokemonSummary_StatusIconPltt(void);
u32 PokemonSummary_StatusIconCell(void);
u32 PokemonSummary_StatusIconAnim(void);
u32 PokemonSummary_StatusIconAnimIdx(Pokemon *mon);

#endif // POKEPLATINUM_POKEMON_SUMMARY_SCREEN_MAIN_H
