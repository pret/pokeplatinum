#ifndef POKEPLATINUM_SCRCMD_PARTY_H
#define POKEPLATINUM_SCRCMD_PARTY_H

#include "field_script_context.h"

BOOL ScrCmd_GivePokemon(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonSpecies(ScriptContext *ctx);
BOOL ScrCmd_CheckIsPartyMonOutsider(ScriptContext *ctx);
BOOL ScrCmd_GiveEgg(ScriptContext *ctx);
BOOL ScrCmd_ResetPartyMonMoveSlot_Unused(ScriptContext *ctx);
BOOL ScrCmd_CheckPartyMonHasMove(ScriptContext *ctx);
BOOL ScrCmd_FindPartySlotWithMove(ScriptContext *ctx);
BOOL ScrCmd_SurvivePoison(ScriptContext *ctx);
BOOL ScrCmd_CountPartyMonsBelowLevelThreshold(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonLevel(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonNature(ScriptContext *ctx);
BOOL ScrCmd_FindPartySlotWithNature(ScriptContext *ctx);
BOOL ScrCmd_GetFriendshipByPartySlot(ScriptContext *ctx);
BOOL ScrCmd_IncreasePartyMonFriendship(ScriptContext *ctx);
BOOL ScrCmd_DecreasePartyMonFriendship_Unused(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonContestStat(ScriptContext *ctx);
BOOL ScrCmd_GetFirstNonEggInParty(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonType(ScriptContext *ctx);
BOOL ScrCmd_GetPartyCount(ScriptContext *ctx);
BOOL ScrCmd_CountPartyNonEggs(ScriptContext *ctx);
BOOL ScrCmd_CountAliveMonsExcept(ScriptContext *ctx);
BOOL ScrCmd_CountAliveMonsAndBoxMons(ScriptContext *ctx);
BOOL ScrCmd_CountPartyEggs(ScriptContext *ctx);
BOOL ScrCmd_CheckPartyPokerus(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonGender_Unused(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonMoveCount(ScriptContext *ctx);
BOOL ScrCmd_ClearPartyMonMoveSlot(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonMove(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonHeldItem_Unused(ScriptContext *ctx);
BOOL ScrCmd_DeletePartyMonHeldItem_Unused(ScriptContext *ctx);
BOOL ScrCmd_CheckPartyHasSpecies(ScriptContext *ctx);
BOOL ScrCmd_CountRepeatedSpeciesInParty(ScriptContext *ctx);
BOOL ScrCmd_FindPartySlotWithSpecies(ScriptContext *ctx);
BOOL ScrCmd_CountPartyMonRibbons_Unused(ScriptContext *ctx);
BOOL ScrCmd_CountPartyRibbons(ScriptContext *ctx);
BOOL ScrCmd_GetPartyMonRibbon(ScriptContext *ctx);
BOOL ScrCmd_SetPartyMonRibbon(ScriptContext *ctx);
BOOL ScrCmd_CheckPartyHasBadEgg(ScriptContext *ctx);
BOOL ScrCmd_Dummy0A0(ScriptContext *ctx);
BOOL ScrCmd_FindPartySlotWithFatefulEncounterSpecies(ScriptContext *ctx);
BOOL ScrCmd_CheckPartyHasHeldItem(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_PARTY_H
