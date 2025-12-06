#ifndef POKEPLATINUM_BATTLE_PARTY_H
#define POKEPLATINUM_BATTLE_PARTY_H

#include "struct_decls/battle_system.h"

#include "overlay013/battle_sub_menu_cursor.h"

#include "bg_window.h"
#include "font_special_chars.h"
#include "message.h"
#include "palette.h"
#include "party.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"

enum BattlePartyScreen {
    BATTLE_PARTY_SCREEN_PARTY_POKEMON = 0,
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
    Pokemon *pokemon;
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
    void *unk_04;
    BattleSystem *battleSystem;
    u32 heapID;
    u8 unk_10;
    u8 selectedPartyIndex;
    u8 doubleBattleFirstSelectedPartySlot;
    u8 unk_13;
    u8 playerPokemonPartySlot;
    u8 partnerPokemonPartySlot;
    u32 embargoRemainingTurns[2];
    u16 currentDamage;
    u16 selectedBattleBagItem;
    u16 moveToLearn;
    s32 battler;
    u8 pokemonPartySlots[6];
    u8 isCursorEnabled;
    u8 selectedBattleBagPocket;
    u8 selectedMoveSlot;
    u8 battlePartyMode;
    u8 battlePartyExited;
} BattlePartyContext;

#define NUM_BATTLE_PARTY_MESSAGE_BOX_WINDOWS 2

typedef struct BattleParty {
    BattlePartyContext *context;
    BattlePartyPokemon partyPokemon[6];
    BgConfig *background;
    PaletteData *palette;
    u16 unk_1E8[4][96];
    u16 unk_4E8[4][96];
    u16 unk_7E8[4][65];
    u16 unk_9F0[4][25];
    u16 unk_AB8[4][25];
    u16 unk_B80[4][25];
    u16 unk_C48[3][510];
    u16 unk_183C[4][96];
    u16 unk_1B3C[3][130];
    u16 unk_1E48[3][36];
    u16 unk_1F20[3][10];
    u16 unk_1F5C[32];
    u8 unk_1F9C;
    u8 unk_1F9D;
    u8 unk_1F9E;
    u8 unk_1F9F_0 : 4;
    u8 unk_1F9F_4 : 3;
    u8 unk_1F9F_7 : 1;
    FontSpecialCharsContext *unk_1FA0;
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    Strbuf *strbuf;
    SpriteManager *spriteMan;
    ManagedSprite *unk_1FB4[38];
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
    u8 unk_2079;
    u16 selectedPokemonCurrentHP;
    u16 selectedPokemonCurrentMovePPs[4];
    BattleSubMenuCursor *cursor;
    u8 selectPokemonPreviousScreenButton;
    u8 learnMovePreviousScreenButton;
    u8 confirmLearnMovePreviousScreenButton;
    u8 battlerSlot;
} BattleParty;

#define PARTY_SLOT_SELECTABLE_IN_BATTLE     1
#define PARTY_SLOT_SELECTABLE_NOT_IN_BATTLE 2

#define MOVE_TO_LEARN_SLOT LEARNED_MOVES_MAX

void BattlePartyTask_Start(BattlePartyContext *context);
u8 BattlePartyTask_CheckCanPartySlotBeSelected(BattleParty *battleParty, s32 partySlot);
BOOL BattlePartyTask_CheckIfPartnerBattle(BattleParty *battleParty);
BOOL BattlePartyTask_CheckIf2V2Battle(BattleParty *battleParty);
BOOL BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(BattleParty *battleParty, u8 partySlot);

#endif // POKEPLATINUM_BATTLE_PARTY_H
