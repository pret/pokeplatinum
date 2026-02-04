#ifndef POKEPLATINUM_BATTLE_PARTY_H
#define POKEPLATINUM_BATTLE_PARTY_H

#include "constants/moves.h"

#include "struct_decls/battle_system.h"

#include "battle_sub_menus/battle_sub_menu_buttons_defs.h"
#include "battle_sub_menus/battle_sub_menu_cursor.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "sprite_system.h"
#include "string_gf.h"
#include "string_template.h"

enum BattlePartyScreen {
    BATTLE_PARTY_SCREEN_POKEMON_PARTY = 0,
    BATTLE_PARTY_SCREEN_SELECT_POKEMON,
    BATTLE_PARTY_SCREEN_POKEMON_SUMMARY,
    BATTLE_PARTY_SCREEN_POKEMON_MOVES,
    BATTLE_PARTY_SCREEN_MOVE_SUMMARY,
    BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP,
    BATTLE_PARTY_SCREEN_LEARN_MOVE,
    BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE,
    BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS,
    BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS,
};

enum BattlePokemonPartyScreenButton {
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_1 = 0,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_2,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_3,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_4,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_5,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_POKEMON_6,
    BATTLE_POKEMON_PARTY_SCREEN_BUTTON_CANCEL,
};

enum BattleSelectPokemonScreenButton {
    BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SHIFT = 0,
    BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
    BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES,
    BATTLE_POKEMON_SELECT_POKEMON_SCREEN_BUTTON_CANCEL,
};

enum BattlePokemonSummaryScreenButton {
    BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON = 0,
    BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
    BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
    BATTLE_POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
};

enum BattlePokemonMovesScreenButton {
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_1 = 0,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_SUMMARY,
    BATTLE_POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
};

enum BattleMoveSummaryScreenButton {
    BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1 = 0,
    BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2,
    BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
    BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
    BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
};

enum BattleRestoreMovePPScreenButton {
    BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1 = 0,
    BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
    BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3,
    BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
    BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
};

enum BattleLearnMoveScreenButton {
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_1 = 0,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    BATTLE_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
};

enum BattleConfirmLearnMoveScreenButton {
    BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM = 0,
    BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
};

#define PARTY_POKEMON_BUTTON_WIDTH_TILES  16
#define PARTY_POKEMON_BUTTON_HEIGHT_TILES 6
#define PARTY_POKEMON_BUTTON_SIZE_TILES   (PARTY_POKEMON_BUTTON_WIDTH_TILES * PARTY_POKEMON_BUTTON_HEIGHT_TILES)

#define SHIFT_POKEMON_BUTTON_WIDTH_TILES  30
#define SHIFT_POKEMON_BUTTON_HEIGHT_TILES 17
#define SHIFT_POKEMON_BUTTON_SIZE_TILES   (SHIFT_POKEMON_BUTTON_WIDTH_TILES * SHIFT_POKEMON_BUTTON_HEIGHT_TILES)

#define SUMMARY_CHECK_MOVES_BUTTON_WIDTH_TILES  13
#define SUMMARY_CHECK_MOVES_BUTTON_HEIGHT_TILES 5
#define SUMMARY_CHECK_MOVES_BUTTON_SIZE_TILES   (SUMMARY_CHECK_MOVES_BUTTON_WIDTH_TILES * SUMMARY_CHECK_MOVES_BUTTON_HEIGHT_TILES)

#define MOVE_BUTTON_WIDTH_TILES  16
#define MOVE_BUTTON_HEIGHT_TILES 6
#define MOVE_BUTTON_SIZE_TILES   (MOVE_BUTTON_WIDTH_TILES * MOVE_BUTTON_HEIGHT_TILES)

#define CONTEST_STATS_BUTTON_WIDTH_TILES  9
#define CONTEST_STATS_BUTTON_HEIGHT_TILES 4
#define CONTEST_STATS_BUTTON_SIZE_TILES   (CONTEST_STATS_BUTTON_WIDTH_TILES * CONTEST_STATS_BUTTON_HEIGHT_TILES)

#define MOVE_SUMMARY_SCREEN_MOVE_BUTTON_WIDTH_TILES  5
#define MOVE_SUMMARY_SCREEN_MOVE_BUTTON_HEIGHT_TILES 2
#define MOVE_SUMMARY_SCREEN_MOVE_BUTTON_SIZE_TILES   (MOVE_SUMMARY_SCREEN_MOVE_BUTTON_WIDTH_TILES * MOVE_SUMMARY_SCREEN_MOVE_BUTTON_HEIGHT_TILES)

enum BattlePartyMode {
    BATTLE_PARTY_MODE_SELECT_POKEMON = 0,
    BATTLE_PARTY_MODE_SELECT_POKEMON_NO_CANCEL,
    BATTLE_PARTY_MODE_USE_ITEM,
    BATTLE_PARTY_MODE_LEARN_MOVE,
};

typedef struct BattlePartyPokemonMove {
    u16 move;
    u8 currentPP;
    u8 maxPP;
    u8 type;
    u8 class;
    u8 accuracy;
    u8 power;
} BattlePartyPokemonMove;

typedef struct BattlePartyPokemon {
    Pokemon *mon;
    u16 species;
    u16 attack;
    u16 defence;
    u16 speed;
    u16 spAtk;
    u16 spDef;
    u16 curHP;
    u16 maxHP;
    u8 type_1;
    u8 type_2;
    u8 level : 7;
    u8 displayNidoranGender : 1;
    u8 gender : 3;
    u8 summaryStatus : 4;
    u8 isEgg : 1;
    u16 ability;
    u16 heldItem;
    u32 exp;
    u32 currentLevelBaseExp;
    u32 nextLevelExp;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 mail;
    u8 form;
    BattlePartyPokemonMove moves[LEARNED_MOVES_MAX];
} BattlePartyPokemon;

typedef struct BattlePartyContext {
    Party *party;
    void *unused1;
    BattleSystem *battleSys;
    enum HeapID heapID;
    u8 unused2;
    u8 selectedPartyIndex;
    u8 doubleBattleFirstSelectedPartySlot;
    u8 unused3;
    u8 playerPokemonPartySlot;
    u8 partnerPokemonPartySlot;
    u32 embargoRemainingTurns[2];
    u16 currentDamage;
    u16 selectedBattleBagItem;
    u16 moveToLearn;
    s32 battler;
    u8 pokemonPartySlots[MAX_PARTY_SIZE];
    u8 isCursorEnabled;
    u8 selectedBattleBagPocket;
    u8 selectedMoveSlot;
    u8 battlePartyMode;
    u8 battlePartyExited;
} BattlePartyContext;

#define NUM_BATTLE_PARTY_SPRITES 38

#define NUM_BATTLE_PARTY_MESSAGE_BOX_WINDOWS 2

typedef struct BattleParty {
    BattlePartyContext *context;
    BattlePartyPokemon partyPokemon[MAX_PARTY_SIZE];
    BgConfig *background;
    PaletteData *palette;
    u16 partyPokemonButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][PARTY_POKEMON_BUTTON_SIZE_TILES];
    u16 altPartyPokemonButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][PARTY_POKEMON_BUTTON_SIZE_TILES];
    u16 summaryCheckMovesButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][SUMMARY_CHECK_MOVES_BUTTON_SIZE_TILES];
    u16 prevPokemonButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_PREV_NEXT_BUTTON_SIZE_TILES];
    u16 nextPokemonButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_PREV_NEXT_BUTTON_SIZE_TILES];
    u16 cancelButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][BATTLE_SUB_MENU_CANCEL_BUTTON_SIZE_TILES];
    u16 shiftPokemonButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][SHIFT_POKEMON_BUTTON_SIZE_TILES];
    u16 moveButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX][MOVE_BUTTON_SIZE_TILES];
    u16 learnMoveConfirmButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][BATTLE_SUB_MENU_CONFIRM_BUTTON_SIZE_TILES];
    u16 contestStatsButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][CONTEST_STATS_BUTTON_SIZE_TILES];
    u16 moveSummaryScreenMoveButtonData[BATTLE_SUB_MENU_BUTTON_STATE_MAX_CANNOT_DISABLE][MOVE_SUMMARY_SCREEN_MOVE_BUTTON_SIZE_TILES];
    u16 screenPaletteData[PALETTE_SIZE_BYTES];
    u8 pressedButtonState;
    u8 unused1;
    u8 pressedButton;
    u8 unused2 : 4;
    u8 useAltButtons : 3;
    u8 isAButtonPressed : 1;
    FontSpecialCharsContext *unused3;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    String *string;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[NUM_BATTLE_PARTY_SPRITES];
    Window messageBoxWindows[NUM_BATTLE_PARTY_MESSAGE_BOX_WINDOWS];
    Window *windows;
    u8 numWindows;
    u8 useAltSummaryWindows;
    u8 partySlotLearningMove;
    u8 displayingContestStats : 4;
    u8 hasVisitedContestHall : 4;
    u8 currentState;
    u8 queuedState;
    u8 currentScreen;
    u8 textPrinterID;
    u8 useItemState;
    u16 selectedPokemonCurrentHP;
    u16 selectedPokemonCurrentMovePPs[LEARNED_MOVES_MAX];
    BattleSubMenuCursor *cursor;
    u8 selectPokemonPreviousScreenButton;
    u8 learnMovePreviousScreenButton;
    u8 confirmLearnMovePreviousScreenButton;
    u8 battlerSlot;
} BattleParty;

#define PARTY_SLOT_SELECTABLE_IN_BATTLE     1
#define PARTY_SLOT_SELECTABLE_NOT_IN_BATTLE 2

#define MOVE_TO_LEARN_SLOT LEARNED_MOVES_MAX

#define HEALTH_BAR_MAX_PIXELS 48

void BattlePartyTask_Start(BattlePartyContext *context);
u8 BattlePartyTask_CheckCanPartySlotBeSelected(BattleParty *battleParty, s32 partySlot);
BOOL BattlePartyTask_CheckIfPartnerBattle(BattleParty *battleParty);
BOOL BattlePartyTask_CheckIf2V2Battle(BattleParty *battleParty);
BOOL BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(BattleParty *battleParty, u8 partySlot);

#endif // POKEPLATINUM_BATTLE_PARTY_H
