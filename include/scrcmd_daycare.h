#ifndef POKEPLATINUM_SCRCMD_DAYCARE_H
#define POKEPLATINUM_SCRCMD_DAYCARE_H

#include "field_script_context.h"

BOOL ScrCmd_BufferDaycareMonNicknames(ScriptContext *ctx);
BOOL ScrCmd_GetDaycareState(ScriptContext *ctx);
BOOL ScrCmd_ResetDaycarePersonalityAndStepCounter(ScriptContext *ctx);
BOOL ScrCmd_GiveEggFromDaycare(ScriptContext *ctx);
BOOL ScrCmd_MoveMonToPartyFromDaycareSlot(ScriptContext *ctx);
BOOL ScrCmd_BufferDaycarePriceBySlot(ScriptContext *ctx);
BOOL ScrCmd_BufferDaycareGainedLevelsBySlot(ScriptContext *ctx);
BOOL ScrCmd_BufferPartyMonNicknameReturnSpecies(ScriptContext *ctx);
BOOL ScrCmd_StorePartyMonIntoDaycare(ScriptContext *ctx);
BOOL ScrCmd_BufferDaycareNicknameLevelGender(ScriptContext *ctx);
BOOL ScrCmd_GetDaycareCompatibilityLevel(ScriptContext *ctx);
BOOL ScrCmd_CheckDaycareHasEgg(ScriptContext *ctx);
BOOL ScrCmd_Dummy1A5(ScriptContext *ctx);
BOOL ScrCmd_Dummy1A6(ScriptContext *ctx);
BOOL ScrCmd_Dummy1A7(ScriptContext *ctx);
BOOL ScrCmd_Dummy1AD(ScriptContext *ctx);

#endif // POKEPLATINUM_SCRCMD_DAYCARE_H
