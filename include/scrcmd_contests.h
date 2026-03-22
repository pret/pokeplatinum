#ifndef POKEPLATINUM_UNK_02046C7C_H
#define POKEPLATINUM_UNK_02046C7C_H

#include "field_script_context.h"

BOOL ScrCmd_StartContestCommSync(ScriptContext *ctx);
BOOL ScrCmd_WaitForCommSyncState(ScriptContext *ctx);
BOOL ScrCmd_NewContest(ScriptContext *ctx);
BOOL ScrCmd_EndContest(ScriptContext *ctx);
BOOL ScrCmd_BufferJudgeName(ScriptContext *ctx);
BOOL ScrCmd_BufferContestantTrainerName(ScriptContext *ctx);
BOOL ScrCmd_BufferContestantMonName(ScriptContext *ctx);
BOOL ScrCmd_BufferContestRegistrationEntryNumber(ScriptContext *ctx);
BOOL ScrCmd_WaitForLinkContestSetup(ScriptContext *ctx);
BOOL ScrCmd_RunContestApplication(ScriptContext *ctx);
BOOL ScrCmd_BufferContestRank(ScriptContext *ctx);
BOOL ScrCmd_BufferContestType(ScriptContext *ctx);
BOOL ScrCmd_BufferWinningContestantTrainerName(ScriptContext *ctx);
BOOL ScrCmd_SetTrue(ScriptContext *ctx);
BOOL ScrCmd_BufferWinningContestantMonName(ScriptContext *ctx);
BOOL ScrCmd_GetPlayerContestPlacement(ScriptContext *ctx);
BOOL ScrCmd_GetWinningContestantEntryNum(ScriptContext *ctx);
BOOL ScrCmd_GetContestRegistrationEntryNum(ScriptContext *ctx);
BOOL ScrCmd_GetContestantObjEventGFX(ScriptContext *ctx);
BOOL ScrCmd_GetContestantMonContestFame(ScriptContext *ctx);
BOOL ScrCmd_GetContestMode(ScriptContext *ctx);
BOOL ScrCmd_GetContestInfo(ScriptContext *ctx);
BOOL ScrCmd_CheckPlayerMonHasRibbon(ScriptContext *ctx);
BOOL ScrCmd_SetRibbonName(ScriptContext *ctx);
BOOL ScrCmd_GetFirstTimeVictoryAccessory(ScriptContext *ctx);
BOOL ScrCmd_LockAutoScrollForLinkContests(ScriptContext *ctx);
BOOL ScrCmd_LockTextSpeed(ScriptContext *ctx);
BOOL ScrCmd_StartContestCameraFlashTask(ScriptContext *ctx);
BOOL ScrCmd_WaitForContestCameraFlashTask(ScriptContext *ctx);
BOOL ScrCmd_StopHBlank(ScriptContext *ctx);
BOOL ScrCmd_StartHBlank(ScriptContext *ctx);
BOOL ScrCmd_GetShouldSkipAwardCeremony(ScriptContext *ctx);
BOOL ScrCmd_ShowLinkContestRecords(ScriptContext *ctx);

#endif // POKEPLATINUM_UNK_02046C7C_H
