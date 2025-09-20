#ifndef POKEPLATINUM_OV5_021F6454_H
#define POKEPLATINUM_OV5_021F6454_H

#include "field_script_context.h"

BOOL ScrCmd_ShowPokedexDataMenu(ScriptContext *param0);
BOOL ScrCmd_JudgeStats(ScriptContext *ctx);
BOOL ScrCmd_CountGriseousOrbs(ScriptContext *param0);
BOOL ScrCmd_TryRevertPokemonForm(ScriptContext *param0);
BOOL ScrCmd_SetPokemonForm(ScriptContext *param0);
BOOL ScrCmd_GetPartyRotomCountAndFirst(ScriptContext *ctx);
BOOL ScrCmd_SetRotomForm(ScriptContext *ctx);
BOOL ScrCmd_GetPokemonPotential(ScriptContext *param0);
BOOL ScrCmd_SetFavoritePokemon(ScriptContext *param0);
BOOL ScrCmd_GetFavoritePokemon(ScriptContext *param0);
BOOL ScrCmd_GetPartyMonForm2(ScriptContext *ctx);
BOOL ScrCmd_CheckAchievementRequirements(ScriptContext *param0);
BOOL ScrCmd_ScriptSync(ScriptContext *param0);
BOOL ScrCmd_IncrementSecretBaseProgress(ScriptContext *param0);
BOOL ScrCmd_ElevateAllMapObjects(ScriptContext *param0);
BOOL ScrCmd_ResetAllMapObjectElevation(ScriptContext *param0);
BOOL ScrCmd_ElevateSpecificMapObjects(ScriptContext *param0);
BOOL ScrCmd_ResetSpecificMapObjectElevation(ScriptContext *param0);
BOOL ScrCmd_ElevateMapObjectByPosition(ScriptContext *param0);
BOOL ScrCmd_ResetMapObjectElevation(ScriptContext *param0);
BOOL ScrCmd_ClearWiFiHistory(ScriptContext *param0);
BOOL ScrCmd_SetPlayerVolume(ScriptContext *param0);

#endif // POKEPLATINUM_OV5_021F6454_H
