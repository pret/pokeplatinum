#include "scrcmd_tv_broadcast.h"

#include <nitro.h>
#include <string.h>

#include "constants/tv_broadcast.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/struct_0202440C_decl.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_defs/struct_0202E7D8.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"

#include "applications/poketch/poketch_system.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/ov6_022465FC.h"
#include "overlay006/ov6_02246A30.h"
#include "savedata/save_table.h"

#include "field_script_context.h"
#include "game_records.h"
#include "inlines.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"
#include "script_manager.h"
#include "strbuf.h"
#include "string_template.h"
#include "tv_episode_segment.h"
#include "unk_020298BC.h"
#include "unk_0202E2CC.h"
#include "unk_02054884.h"

typedef void (*TVInterview_SaveResponseFunction)(FieldSystem *, u16);
typedef void (*TVInterview_LoadMessageFunction)(FieldSystem *, StringTemplate *);
typedef BOOL (*TVInterview_IsEligibleFunction)(FieldSystem *);

typedef struct TVInterview {
    TVInterview_SaveResponseFunction saveResponseFn;
    TVInterview_LoadMessageFunction loadMessageFn;
    TVInterview_IsEligibleFunction isEligibleFn;
    u32 messageID;
} TVInterview;

static int TVInterview_LoadMessage(int param0, FieldSystem *fieldSystem, StringTemplate *template);
static void TVInterview_SaveResponse(FieldSystem *fieldSystem, int segmentID, u16 customMessageWord, u16 unused);
static BOOL TVInterview_IsEligible(FieldSystem *fieldSystem, int param1);

BOOL ScrCmd_CallTVBroadcast(ScriptContext *param0)
{
    switch (ScriptContext_ReadHalfWord(param0)) {
    case TV_BROADCAST_CALL_CHECK_STATUS: {
        u16 *statusDestVar = ScriptContext_GetVarPointer(param0);

        *statusDestVar = TVBroadcast_GetPendingBroadcastType(param0->fieldSystem);
    } break;
    case TV_BROADCAST_CALL_LOAD_FRAMING_MESSAGE: {
        u16 framingMessageType = ScriptContext_ReadHalfWord(param0);
        u16 *bankDestVar = ScriptContext_GetVarPointer(param0);
        u16 *messageDestVar = ScriptContext_GetVarPointer(param0);

        *bankDestVar = TEXT_BANK_TV_PROGRAMS;
        *messageDestVar = TVBroadcast_GetProgramFramingMessage(param0->fieldSystem, framingMessageType);
    } break;
    case TV_BROADCAST_CALL_LOAD_SEGMENT: {
        StringTemplate **template = FieldSystem_GetScriptMemberPtr(param0->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
        u16 segmentID = ScriptContext_GetVar(param0);
        u16 *bankDestVar = ScriptContext_GetVarPointer(param0);
        u16 *messageDestVar = ScriptContext_GetVarPointer(param0);

        TVBroadcast_LoadSegmentMessage(param0->fieldSystem, *template, segmentID, bankDestVar, messageDestVar);
    } break;
    case TV_BROADCAST_CALL_FINISH_PROGRAM:
        FieldSystem_SetTVProgramFinished(param0->fieldSystem);
        break;
    case TV_BROADCAST_CALL_LOAD_COMMERCIAL: {
        u16 *bankDestVar = ScriptContext_GetVarPointer(param0);
        u16 *messageDestVar = ScriptContext_GetVarPointer(param0);

        *bankDestVar = TEXT_BANK_TV_COMMERCIALS;
        *messageDestVar = ov6_02246B40(param0->fieldSystem);
    } break;
    case TV_BROADCAST_CALL_UNUSED: {
        u16 v10 = ScriptContext_GetVar(param0);
        u16 v11 = ScriptContext_GetVar(param0);
        u16 *v12 = ScriptContext_GetVarPointer(param0);

        *v12 = ov6_022468B0(param0->fieldSystem, v10, v11);
    } break;
    case TV_BROADCAST_CALL_GET_NEXT_SEGMENT_ID: {
        u16 *segmentDestVar = ScriptContext_GetVarPointer(param0);
        *segmentDestVar = ov6_02246920(param0->fieldSystem);
    } break;
    }

    return 0;
}

BOOL ScrCmd_236(ScriptContext *param0)
{
    FieldSystem_SaveTVEpisodeSegment_HiddenItemBreakingNews(param0->fieldSystem, ScriptContext_GetVar(param0));
    return 0;
}

BOOL ScrCmd_2B8(ScriptContext *param0)
{
    Party *v0 = SaveData_GetParty(param0->fieldSystem->saveData);
    Pokemon *v1 = Party_GetPokemonBySlotIndex(v0, ScriptContext_GetVar(param0));

    FieldSystem_SaveTVEpisodeSegment_RateThatNameChange(param0->fieldSystem, v1);
    return 0;
}

BOOL ScrCmd_30B(ScriptContext *param0)
{
    FieldSystem_SaveTVEpisodeSegment_PokemonStorageSpecialNewsBulletin(param0->fieldSystem);
    return 0;
}

BOOL ScrCmd_30C(ScriptContext *param0)
{
    FieldSystem_SaveTVEpisodeSegment_HomeAndManor_NoFurniture(param0->fieldSystem);
    return 0;
}

BOOL ScrCmd_30D(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    FieldSystem_SaveTVEpisodeSegment_HomeAndManor(param0->fieldSystem, v0);
    return 0;
}

static const TVInterview sInterviews[TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS];

BOOL ScrCmd_CallTVInterview(ScriptContext *ctx)
{
    StringTemplate **template;

    template = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    switch (ScriptContext_ReadHalfWord(ctx)) {
    case TV_INTERVIEW_CALL_LOAD_MESSAGE: {
        int segmentID;
        u16 *bankIDVar;
        u16 *messageIDVar;

        segmentID = ScriptContext_GetVar(ctx);
        bankIDVar = ScriptContext_GetVarPointer(ctx);
        messageIDVar = ScriptContext_GetVarPointer(ctx);
        *bankIDVar = TEXT_BANK_TV_REPORTER_INTERVIEWS;
        *messageIDVar = TVInterview_LoadMessage(segmentID, ctx->fieldSystem, *template);
    } break;
    case TV_INTERVIEW_CALL_SAVE_RESPONSE: {
        u16 segmentID;
        u16 customMessageWord, unused;
        GameRecords *records = SaveData_GetGameRecords(ctx->fieldSystem->saveData);

        segmentID = ScriptContext_GetVar(ctx);
        customMessageWord = ScriptContext_GetVar(ctx);
        unused = ScriptContext_GetVar(ctx);

        TVInterview_SaveResponse(ctx->fieldSystem, segmentID, customMessageWord, unused);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_TV_INTERVIEW_GIVEN);
    } break;
    }

    return FALSE;
}

BOOL ScrCmd_CheckTVInterviewEligible(ScriptContext *ctx)
{
    u16 segmentID;
    u16 *destVar;

    segmentID = ScriptContext_GetVar(ctx);
    destVar = ScriptContext_GetVarPointer(ctx);
    *destVar = TVInterview_IsEligible(ctx->fieldSystem, segmentID);

    return FALSE;
}

BOOL ScrCmd_27C(ScriptContext *param0)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(param0->fieldSystem->saveData);

    switch (ScriptContext_ReadHalfWord(param0)) {
    case 0: {
        Party *party = SaveData_GetParty(param0->fieldSystem->saveData);
        Pokemon *v2 = Party_GetPokemonBySlotIndex(party, ScriptContext_GetVar(param0));

        sub_0206CF48(broadcast, v2, HEAP_ID_FIELD1);
    } break;
    case 1:
        sub_0206CFB4(broadcast, ScriptContext_GetVar(param0));
        break;
    case 2:
        sub_0206CF9C(broadcast, ScriptContext_GetVar(param0));
        break;
    }

    return 0;
}

static void TVInterview_SaveResponse(FieldSystem *fieldSystem, int segmentID, u16 customMessageWord, u16 unused)
{
    TVInterview_SaveResponseFunction saveResponseFn;

    saveResponseFn = sInterviews[segmentID - 1].saveResponseFn;

    if (saveResponseFn != NULL) {
        saveResponseFn(fieldSystem, customMessageWord);
    }
}

static int TVInterview_LoadMessage(int segmentID, FieldSystem *fieldSystem, StringTemplate *template)
{
    TVInterview_LoadMessageFunction loadMessageFn;

    loadMessageFn = sInterviews[segmentID - 1].loadMessageFn;

    if (loadMessageFn != NULL) {
        loadMessageFn(fieldSystem, template);
    }

    return sInterviews[segmentID - 1].messageID;
}

static BOOL TVInterview_IsEligible(FieldSystem *fieldSystem, int segmentID)
{
    TVInterview_IsEligibleFunction isEligibleFn;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    if (sub_0202E6B0(broadcast, 1, segmentID) == 0) {
        return FALSE;
    }

    isEligibleFn = sInterviews[segmentID - 1].isEligibleFn;

    if (isEligibleFn == NULL) {
        return TRUE;
    }

    return isEligibleFn(fieldSystem);
}

static void sub_0204922C(StringTemplate *param0, int param1, const u16 *param2, int param3, int param4, int param5)
{
    Strbuf *v0 = Strbuf_Init(64, HEAP_ID_FIELD1);

    Strbuf_CopyChars(v0, param2);
    StringTemplate_SetStrbuf(param0, param1, v0, param3, param5, param4);
    Strbuf_Free(v0);
}

static void sub_02049268(FieldSystem *fieldSystem, StringTemplate *param1)
{
    Party *v0 = SaveData_GetParty(fieldSystem->saveData);
    Pokemon *v1 = Party_FindFirstHatchedMon(v0);

    StringTemplate_SetSpeciesName(param1, 0, Pokemon_GetBoxPokemon(v1));
}

static void sub_02049288(FieldSystem *fieldSystem, StringTemplate *param1)
{
    int v0 = PoketchSystem_CurrentAppID(fieldSystem->unk_04->poketchSys);
    StringTemplate_SetPoketchAppName(param1, 0, v0);
}

static void sub_020492A0(FieldSystem *fieldSystem, StringTemplate *param1)
{
    u16 v0[10 + 1];
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E7E4 *v2 = sub_0202E7E4(broadcast);

    MessageLoader_GetSpeciesName(v2->unk_02, HEAP_ID_FIELD1, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_020492D4(FieldSystem *fieldSystem, StringTemplate *param1)
{
    u16 v0[10 + 1];
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E810 *v2 = sub_0202E810(broadcast);

    MessageLoader_GetSpeciesName(v2->unk_02, HEAP_ID_FIELD1, v0);
    sub_0204922C(param1, 0, v0, 0, GAME_LANGUAGE, 1);
}

static void sub_02049308(FieldSystem *fieldSystem, StringTemplate *param1)
{
    Strbuf *v0;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E81C *v2 = sub_0202E81C(broadcast);

    v0 = Strbuf_Init(64, HEAP_ID_FIELD1);

    Strbuf_CopyChars(v0, v2->unk_06);
    StringTemplate_SetStrbuf(param1, 0, v0, v2->unk_02, 1, GAME_LANGUAGE);
    Strbuf_Free(v0);
}

static BOOL sub_02049348(FieldSystem *fieldSystem)
{
    UnkStruct_0202E7FC *v0 = sub_0202E7FC(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049358(FieldSystem *fieldSystem)
{
    Poketch *poketch = SaveData_GetPoketch(fieldSystem->saveData);
    return Poketch_IsEnabled(poketch);
}

static BOOL sub_02049368(FieldSystem *fieldSystem)
{
    UnkStruct_0202E7D8 *v0 = sub_0202E7D8(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049378(FieldSystem *fieldSystem)
{
    UnkStruct_0202A750 *v0 = sub_0202A750(fieldSystem->saveData);
    return sub_02029D10(v0, 0);
}

static BOOL sub_02049388(FieldSystem *fieldSystem)
{
    UnkStruct_0202E7F0 *v0 = sub_0202E7F0(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049398(FieldSystem *fieldSystem)
{
    UnkStruct_0202E7E4 *v0 = sub_0202E7E4(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_020493A8(FieldSystem *fieldSystem)
{
    UnkStruct_0202E810 *v0 = sub_0202E810(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_020493B8(FieldSystem *fieldSystem)
{
    UnkStruct_0202E81C *v0 = sub_0202E81C(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static const TVInterview sInterviews[TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS] = {
    { NULL, NULL, NULL, 0x3 },
    { FieldSystem_SaveTVEpisodeSegment_BattleTowerCorner, NULL, sub_02049348, 0x4 },
    { NULL, NULL, NULL, 0x5 },
    { FieldSystem_SaveTVEpisodeSegment_YourPokemonCorner, sub_02049268, NULL, 0x6 },
    { NULL, NULL, NULL, 0x7 },
    { FieldSystem_SaveTVEpisodeSegment_ThePoketchWatch, sub_02049288, sub_02049358, 0x8 },
    { FieldSystem_SaveTVEpisodeSegment_ContestHall, NULL, sub_02049368, 0x9 },
    { NULL, NULL, NULL, 0xA },
    { FieldSystem_SaveTVEpisodeSegment_RightOnPhotoCorner, NULL, sub_02049378, 0xB },
    { FieldSystem_SaveTVEpisodeSegment_StreetCornerPersonalityCheckup, NULL, NULL, 0xC },
    { FieldSystem_SaveTVEpisodeSegment_ThreeCheersForPoffinCorner, NULL, sub_02049388, 0xD },
    { NULL, NULL, NULL, 0xE },
    { FieldSystem_SaveTVEpisodeSegment_AmitySquareWatch, sub_020492A0, sub_02049398, 0xF },
    { FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Single, sub_020492D4, sub_020493A8, 0x10 },
    { FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question1, NULL, NULL, 0x11 },
    { FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question2, NULL, NULL, 0x12 },
    { FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question3, NULL, NULL, 0x13 },
    { FieldSystem_SaveTVEpisodeSegment_InYourFaceInterview_Question4, NULL, NULL, 0x14 },
    { FieldSystem_SaveTVEpisodeSegment_BattleFrontierFrontlineNews_Multi, sub_02049308, sub_020493B8, 0x15 }
};

BOOL ScrCmd_GetCurrentSafariGameCaughtNum(ScriptContext *ctx)
{
    TVBroadcast *broadcast;
    UnkStruct_0202E808 *safariGame;
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    broadcast = SaveData_GetTVBroadcast(ctx->fieldSystem->saveData);
    safariGame = TVBroadcast_GetSafariGameData(broadcast);
    *destVar = safariGame->numPokemonCaught;

    return FALSE;
}

BOOL ScrCmd_329(ScriptContext *param0)
{
    TVBroadcast *broadcast;
    UnkStruct_0202E81C *v1;
    u16 *v2 = ScriptContext_GetVarPointer(param0);
    u16 *v3 = ScriptContext_GetVarPointer(param0);
    u16 *v4 = ScriptContext_GetVarPointer(param0);
    u16 *v5 = ScriptContext_GetVarPointer(param0);

    broadcast = SaveData_GetTVBroadcast(param0->fieldSystem->saveData);
    v1 = sub_0202E81C(broadcast);

    switch (v1->unk_01) {
    case 5:
        *v2 = 25;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 4:
        *v2 = 37;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 6:
        *v2 = 59;
        *v3 = 61;
        *v4 = 1;
        *v5 = 0xf;
        break;
    case 2:
    case 3:
        *v2 = 72;
        *v3 = 36;
        *v4 = 0;
        *v5 = 0xe;
        break;
    case 1:
    default:
        *v2 = 47;
        *v3 = 21;
        *v4 = 0;
        *v5 = 0xe;
        break;
    }

    return 0;
}
