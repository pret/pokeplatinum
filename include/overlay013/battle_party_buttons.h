#ifndef POKEPLATINUM_BATTLE_PARTY_BUTTONS_H
#define POKEPLATINUM_BATTLE_PARTY_BUTTONS_H

#include "overlay013/battle_party.h"

#define BATTLE_PARTY_CANCEL_BUTTON_OFFSET              6
#define BATTLE_SELECT_POKEMON_SCREEN_BUTTON_OFFSET     7
#define BATTLE_PARTY_SUMMARY_BUTTON_OFFSET             8
#define BATTLE_PARTY_CHECK_MOVES_BUTTON_OFFSET         10
#define BATTLE_POKEMON_PREV_NEXT_BUTTON_OFFSET         12
#define BATTLE_POKEMON_MOVES_SCREEN_BUTTON_OFFSET      14
#define BATTLE_PARTY_CONTEST_STATS_BUTTON_OFFSET       18
#define BATTLE_RESTORE_MOVE_PP_SCREEN_BUTTON_OFFSET    19
#define BATTLE_LEARN_MOVE_SCREEN_BUTTON_OFFSET         23
#define BATTLE_CONFIRM_LEARN_MOVE_SCREEN_BUTTON_OFFSET 28
#define BATTLE_MOVE_SUMMARY_SCREEN_BUTTON_OFFSET       30

void BattlePartyButtons_InitializeButtonData(BattleParty *battleParty, u16 *screenData);
void BattlePartyButtons_InitializeAdditionalButtonData(BattleParty *battleParty, u16 *screenData);
void BattlePartyButtons_PressButton(BattleParty *battleParty, u8 button);
void BattlePartyButtons_Tick(BattleParty *battleParty);
void BattlePartyButtons_InitializeButtons(BattleParty *battleParty, u8 screen);
void BattlePartyButtons_LoadScreenPaletteData(BattleParty *battleParty, u8 screen);
void BattlePartyButtons_DrawSelectedPartyPokemonButton(BattleParty *battleParty);

#endif // POKEPLATINUM_BATTLE_PARTY_BUTTONS_H
