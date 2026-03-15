#include "scrcmd_contests.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/contest_player_mon_dto.h"

#include "field/field_system_sub2_t.h"
#include "overlay005/hblank_system.h"
#include "overlay006/link_contest_record_display.h"

#include "contest.h"
#include "field_script_context.h"
#include "field_system.h"
#include "inlines.h"
#include "map_header.h"
#include "party.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save_player.h"
#include "script_manager.h"
#include "string_gf.h"
#include "string_template.h"
#include "system_flags.h"
#include "trainer_info.h"
#include "unk_020298BC.h"
#include "vars_flags.h"

static BOOL ResumeWhenContestSynced(ScriptContext *ctx);
static BOOL IsContestCommTaskDone(ScriptContext *ctx);
static BOOL IsContestCameraFlashTaskDone(ScriptContext *ctx);

BOOL ScrCmd_StartContestCommSync(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 syncNo = ScriptContext_GetVar(ctx);

    Contest_StartCommSync(*contest, syncNo);
    return FALSE;
}

BOOL ScrCmd_WaitForCommSyncState(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 syncState = ScriptContext_GetVar(ctx);

    ctx->data[0] = syncState;

    ScriptContext_Pause(ctx, ResumeWhenContestSynced);
    return TRUE;
}

static BOOL ResumeWhenContestSynced(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    return Contest_IsSyncState(*contest, ctx->data[0]);
}

BOOL ScrCmd_NewContest(ScriptContext *ctx)
{
    String *trainerName;
    Pokemon *mon;
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(FieldSystem_GetSaveData(ctx->fieldSystem));
    u16 contestRank = ScriptContext_GetVar(ctx);
    u16 contestType = ScriptContext_GetVar(ctx);
    u16 competitionType = ScriptContext_GetVar(ctx);
    u16 pokemonPartySlot = ScriptContext_GetVar(ctx);
    PlayerMonContestDTO playerMonContestDTO;

    mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(ctx->fieldSystem->saveData), pokemonPartySlot);
    trainerName = TrainerInfo_NameNewString(trainerInfo, HEAP_ID_FIELD1);

    playerMonContestDTO.contestType = contestType;
    playerMonContestDTO.contestRank = contestRank;
    playerMonContestDTO.competitionType = competitionType;
    playerMonContestDTO.isGameCompleted = SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(ctx->fieldSystem->saveData));
    playerMonContestDTO.isNatDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(ctx->fieldSystem->saveData));
    playerMonContestDTO.monPartySlot = pokemonPartySlot;
    playerMonContestDTO.mon = mon;
    playerMonContestDTO.trainerName = trainerName;
    playerMonContestDTO.trainerInfo = trainerInfo;
    playerMonContestDTO.imageClips = SaveData_GetImageClips(ctx->fieldSystem->saveData);
    playerMonContestDTO.options = SaveData_GetOptions(ctx->fieldSystem->saveData);
    playerMonContestDTO.saveData = ctx->fieldSystem->saveData;
    playerMonContestDTO.chatotCry = SaveData_GetChatotCry(ctx->fieldSystem->saveData);

    *contest = Contest_Init(&playerMonContestDTO);

    String_Free(trainerName);

    return FALSE;
}

BOOL ScrCmd_EndContest(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 unused = ScriptContext_GetVar(ctx);
    u32 mapID = MapHeader_GetMapLabelTextID(ctx->fieldSystem->location->mapId);

    Contest_EndContest(*contest, ctx->fieldSystem->saveData, mapID, ctx->fieldSystem->journalEntry);
    Contest_Free(*contest);

    return FALSE;
}

BOOL ScrCmd_BufferJudgeName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 judgeID = ScriptContext_GetVar(ctx);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferJudgeName(*contest, judgeID, *strTemplate, idx);

    return FALSE;
}

BOOL ScrCmd_BufferContestantTrainerName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTempalte = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 contestantEntryNum = ScriptContext_GetVar(ctx);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferContestantTrainerName(*contest, contestantEntryNum, *strTempalte, idx);

    return FALSE;
}

BOOL ScrCmd_BufferContestantMonName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 contestantEntryNum = ScriptContext_GetVar(ctx);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferMonNickname(*contest, contestantEntryNum, *strTemplate, idx);

    return FALSE;
}

BOOL ScrCmd_BufferContestRegistrationEntryNumber(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **str = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 entryNum = ScriptContext_GetVar(ctx);
    u16 strNumIdx = ScriptContext_GetVar(ctx);

    StringTemplate_SetNumber(*str, strNumIdx, entryNum, 1, 0, 1);
    return FALSE;
}

BOOL ScrCmd_WaitForLinkContestSetup(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    Contest_SetUpLinkContest(*contest);
    ScriptContext_Pause(ctx, IsContestCommTaskDone);

    return TRUE;
}

static BOOL IsContestCommTaskDone(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    return Contest_IsCommTaskDone(*contest);
}

BOOL ScrCmd_RunContestApplication(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    FieldTask_InitRunContestTask(ctx->task, *contest);
    return TRUE;
}

BOOL ScrCmd_BufferContestRank(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferContestRank(*contest, *strTemplate, idx);
    return FALSE;
}

BOOL ScrCmd_BufferContestType(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferContestType(*contest, *strTemplate, idx);
    return FALSE;
}

BOOL ScrCmd_BufferWinningContestantTrainerName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferWinningContestantTrainerName(*contest, *strTemplate, idx);
    return FALSE;
}

BOOL ScrCmd_SetTrue(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destTrue = ScriptContext_GetVarPointer(ctx);

    *destTrue = Contest_True(*contest);
    return FALSE;
}

BOOL ScrCmd_BufferWinningContestantMonName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **strTemplate = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_BufferWinningContestantMonName(*contest, *strTemplate, idx);
    return FALSE;
}

BOOL ScrCmd_GetPlayerContestPlacement(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destPlayerContestPlacement = ScriptContext_GetVarPointer(ctx);

    *destPlayerContestPlacement = Contest_GetPlayerContestPlacement(*contest);
    return FALSE;
}

BOOL ScrCmd_GetWinningContestantEntryNum(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destWinningContestantEntryNum = ScriptContext_GetVarPointer(ctx);

    *destWinningContestantEntryNum = Contest_GetWinningContestantEntryNum(*contest);
    return FALSE;
}

BOOL ScrCmd_GetContestRegistrationEntryNum(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destEntryNum = ScriptContext_GetVarPointer(ctx);

    *destEntryNum = Contest_GetPlayerContestantEntryNum(*contest);
    return FALSE;
}

BOOL ScrCmd_GetContestantObjEventGFX(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 contestantEntryNum = ScriptContext_GetVar(ctx);
    u16 *destContestantObjEventGFX = ScriptContext_GetVarPointer(ctx);

    *destContestantObjEventGFX = Contest_GetContestantObjEventGFX(*contest, contestantEntryNum);
    return FALSE;
}

BOOL ScrCmd_GetContestantMonContestFame(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 entryNum = ScriptContext_GetVar(ctx);
    u16 *destMonContestFame = ScriptContext_GetVarPointer(ctx);

    *destMonContestFame = Contest_GetContestantMonContestFame(*contest, entryNum);
    return FALSE;
}

BOOL ScrCmd_GetContestMode(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destContestMode = ScriptContext_GetVarPointer(ctx);

    *destContestMode = Contest_GetContestMode(*contest);
    return FALSE;
}

BOOL ScrCmd_GetContestInfo(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *contestRank = ScriptContext_GetVarPointer(ctx);
    u16 *contestType = ScriptContext_GetVarPointer(ctx);
    u16 *competitionType = ScriptContext_GetVarPointer(ctx);
    u16 *monPartySlot = ScriptContext_GetVarPointer(ctx);

    Contest_GetContestInfo(*contest, contestRank, contestType, competitionType, monPartySlot);
    return FALSE;
}

BOOL ScrCmd_CheckPlayerMonHasRibbon(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destHasRibbon = ScriptContext_GetVarPointer(ctx);

    *destHasRibbon = Contest_CheckPlayerMonHasRibbon(*contest);
    return FALSE;
}

BOOL ScrCmd_SetRibbonName(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    StringTemplate **string = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
    u16 idx = ScriptContext_GetVar(ctx);

    Contest_SetRibbonName(*contest, *string, idx, 11);
    return FALSE;
}

BOOL ScrCmd_GetFirstTimeVictoryAccessory(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destAccessoryID = ScriptContext_GetVarPointer(ctx);

    *destAccessoryID = Contest_CalcFirstTimeVictoryAccessoryReward(*contest);
    return FALSE;
}

BOOL ScrCmd_LockAutoScrollForLinkContests(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    Contest_LockAutoScrollForLinkContests(*contest);
    return FALSE;
}

BOOL ScrCmd_LockTextSpeed(ScriptContext *ctx)
{
    void **unused = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    Contest_LockTextSpeed(*unused);
    return FALSE;
}

BOOL ScrCmd_StartContestCameraFlashTask(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 contestantEntryNum = ScriptContext_GetVar(ctx);

    Contest_StartCameraFlashTask(*contest, contestantEntryNum);
    return FALSE;
}

BOOL ScrCmd_WaitForContestCameraFlashTask(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    ScriptContext_Pause(ctx, IsContestCameraFlashTaskDone);
    return TRUE;
}

static BOOL IsContestCameraFlashTaskDone(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);

    if (Contest_CameraFlashTaskDone(*contest) == TRUE) {
        return TRUE;
    }

    return FALSE;
}

BOOL ScrCmd_StopHBlank(ScriptContext *ctx)
{
    HBlankSystem_Stop(ctx->fieldSystem->unk_04->hBlankSystem);
    return FALSE;
}

BOOL ScrCmd_StartHBlank(ScriptContext *ctx)
{
    HBlankSystem_Start(ctx->fieldSystem->unk_04->hBlankSystem);
    return FALSE;
}

BOOL ScrCmd_GetShouldSkipAwardCeremony(ScriptContext *ctx)
{
    void **contest = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_DATA_PTR);
    u16 *destSkipAwardCeremony = ScriptContext_GetVarPointer(ctx);
    int winningContestantEntryNum, isLinkContest, v4, isPracticeCompetition, v6;

    sub_02094BB4(*contest, &winningContestantEntryNum, &isLinkContest, &v4, &isPracticeCompetition, &v6);

    if (isLinkContest == TRUE || v4 == 1 || isPracticeCompetition == TRUE || v6 == 1) {
        *destSkipAwardCeremony = TRUE;
    } else {
        *destSkipAwardCeremony = FALSE;
    }

    return FALSE;
}

BOOL ScrCmd_ShowLinkContestRecords(ScriptContext *ctx)
{
    FieldTask_LinkContestRecordDisplayInit(ctx->task);
    return TRUE;
}
