#ifndef POKEPLATINUM_BATTLE_PARTY_TEXT_H
#define POKEPLATINUM_BATTLE_PARTY_TEXT_H

#include "overlay013/battle_party.h"

void BattlePartyText_InitializeWindows(BattleParty *battleParty);
void BattlePartyText_InitializeScreenWindows(BattleParty *battleParty, enum BattlePartyScreen screen);
void BattlePartyText_ClearScreenWindows(BattleParty *battleParty);
void BattlePartyText_ClearWindows(BattleParty *battleParty);
void BattlePartyText_ChangeScreen(BattleParty *battleParty, enum BattlePartyScreen screen);
void BattlePartyText_PrintHMMovesCantBeForgottenText(BattleParty *battleParty);
void BattlePartyText_RenderPartyPokemonStats(BattleParty *battleParty, u8 windowIndex);
void BattlePartyText_PrintPartyPokemonLevel(BattleParty *battleParty, u8 partyIndex);
void BattlePartyText_PrintSelectedMoveCurrentPP(BattleParty *battleParty, u16 windowIndex, u16 moveIndex);
void BattlePartyText_DisplayErrorMessage(BattleParty *battleParty);
void BattlePartyText_PrintToErrorMessageBox(BattleParty *battleParty);
void BattlePartyText_PrintUseItemEffect(BattleParty *battleParty);
void BattlePartyText_PrintEmbargoPreventingItemUse(BattleParty *battleParty);

#endif // POKEPLATINUM_BATTLE_PARTY_TEXT_H
