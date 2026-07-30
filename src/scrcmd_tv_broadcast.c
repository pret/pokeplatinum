#include "scrcmd_tv_broadcast.h"

#include <nitro.h>
#include <string.h>

#include "constants/map_object.h"
#include "constants/tv_broadcast.h"
#include "generated/movement_types.h"
#include "generated/trainer_score_events.h"

#include "struct_decls/tv_broadcast.h"
#include "struct_defs/image_clips.h"
#include "struct_defs/struct_0202E7E4.h"
#include "struct_defs/struct_0202E7F0.h"
#include "struct_defs/struct_0202E7FC.h"
#include "struct_defs/struct_0202E808.h"
#include "struct_defs/struct_0202E810.h"
#include "struct_defs/struct_0202E81C.h"
#include "struct_defs/tv_segment_contest_hall_showcased_pokemon.h"

#include "applications/poketch/poketch_system.h"
#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/ov6_022465FC.h"
#include "overlay006/tv_commercials.h"
#include "savedata/save_table.h"

#include "field_script_context.h"
#include "game_records.h"
#include "inlines.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "poketch.h"
#include "script_manager.h"
#include "string_gf.h"
#include "string_template.h"
#include "tv_segment.h"
#include "unk_020298BC.h"
#include "unk_0202E2CC.h"
#include "unk_02054884.h"

#include "res/text/bank/tv_reporter_interviews.h"

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

BOOL ScrCmd_CallTVBroadcast(ScriptContext *ctx)
{
    switch (ScriptContext_ReadHalfWord(ctx)) {
    case TV_BROADCAST_CALL_CHECK_STATUS: {
        u16 *statusDestVar = ScriptContext_GetVarPointer(ctx);

        *statusDestVar = TVBroadcast_GetPendingBroadcastType(ctx->fieldSystem);
    } break;
    case TV_BROADCAST_CALL_LOAD_FRAMING_MESSAGE: {
        u16 framingMessageType = ScriptContext_ReadHalfWord(ctx);
        u16 *bankDestVar = ScriptContext_GetVarPointer(ctx);
        u16 *messageDestVar = ScriptContext_GetVarPointer(ctx);

        *bankDestVar = TEXT_BANK_TV_PROGRAMS;
        *messageDestVar = TVBroadcast_GetProgramFramingMessage(ctx->fieldSystem, framingMessageType);
    } break;
    case TV_BROADCAST_CALL_LOAD_SEGMENT: {
        StringTemplate **template = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);
        u16 segmentID = ScriptContext_GetVar(ctx);
        u16 *bankDestVar = ScriptContext_GetVarPointer(ctx);
        u16 *messageDestVar = ScriptContext_GetVarPointer(ctx);

        TVBroadcast_LoadSegmentMessage(ctx->fieldSystem, *template, segmentID, bankDestVar, messageDestVar);
    } break;
    case TV_BROADCAST_CALL_FINISH_PROGRAM:
        FieldSystem_SetTVProgramFinished(ctx->fieldSystem);
        break;
    case TV_BROADCAST_CALL_LOAD_COMMERCIAL: {
        u16 *bankDestVar = ScriptContext_GetVarPointer(ctx);
        u16 *messageDestVar = ScriptContext_GetVarPointer(ctx);

        *bankDestVar = TEXT_BANK_TV_COMMERCIALS;
        *messageDestVar = TVBroadcast_GetProgramCommercialMessage(ctx->fieldSystem);
    } break;
    case TV_BROADCAST_CALL_UNUSED: {
        u16 v10 = ScriptContext_GetVar(ctx);
        u16 v11 = ScriptContext_GetVar(ctx);
        u16 *v12 = ScriptContext_GetVarPointer(ctx);

        *v12 = ov6_022468B0(ctx->fieldSystem, v10, v11);
    } break;
    case TV_BROADCAST_CALL_GET_NEXT_SEGMENT_ID: {
        u16 *segmentDestVar = ScriptContext_GetVarPointer(ctx);
        *segmentDestVar = TVBroadcast_GetNextSegmentID(ctx->fieldSystem);
    } break;
    }

    return FALSE;
}

BOOL ScrCmd_SaveTVSegmentHiddenItem(ScriptContext *ctx)
{
    FieldSystem_SaveTVSegment_HiddenItemBreakingNews(ctx->fieldSystem, ScriptContext_GetVar(ctx));
    return FALSE;
}

BOOL ScrCmd_2B8(ScriptContext *param0)
{
    Party *v0 = SaveData_GetParty(param0->fieldSystem->saveData);
    Pokemon *v1 = Party_GetPokemonBySlotIndex(v0, ScriptContext_GetVar(param0));

    FieldSystem_SaveTVSegment_RateThatNameChange(param0->fieldSystem, v1);
    return FALSE;
}

BOOL ScrCmd_SaveTVSegmentPokemonStorageBulletin(ScriptContext *param0)
{
    FieldSystem_SaveTVSegment_PokemonStorageSpecialNewsBulletin(param0->fieldSystem);
    return FALSE;
}

BOOL ScrCmd_SaveTVSegmentHomeAndManorNoFurniture(ScriptContext *ctx)
{
    FieldSystem_SaveTVSegment_HomeAndManor_NoFurniture(ctx->fieldSystem);
    return FALSE;
}

BOOL ScrCmd_SaveTVSegmentHomeAndManor(ScriptContext *ctx)
{
    u16 furniture = ScriptContext_GetVar(ctx);

    FieldSystem_SaveTVSegment_HomeAndManor(ctx->fieldSystem, furniture);
    return FALSE;
}

static const TVInterview sInterviews[TV_PROGRAM_TYPE_INTERVIEWS_NUM_SEGMENTS];

BOOL ScrCmd_CallTVInterview(ScriptContext *ctx)
{
    StringTemplate **template = FieldSystem_GetScriptMemberPtr(ctx->fieldSystem, SCRIPT_MANAGER_STR_TEMPLATE);

    switch (ScriptContext_ReadHalfWord(ctx)) {
    case TV_INTERVIEW_CALL_LOAD_MESSAGE: {
        int segmentID = ScriptContext_GetVar(ctx);
        u16 *bankIDVar = ScriptContext_GetVarPointer(ctx);
        u16 *messageIDVar = ScriptContext_GetVarPointer(ctx);
        *bankIDVar = TEXT_BANK_TV_REPORTER_INTERVIEWS;
        *messageIDVar = TVInterview_LoadMessage(segmentID, ctx->fieldSystem, *template);
        break;
    }
    case TV_INTERVIEW_CALL_SAVE_RESPONSE: {
        GameRecords *records = SaveData_GetGameRecords(ctx->fieldSystem->saveData);

        u16 segmentID = ScriptContext_GetVar(ctx);
        u16 customMessageWord = ScriptContext_GetVar(ctx);
        u16 unused = ScriptContext_GetVar(ctx);

        TVInterview_SaveResponse(ctx->fieldSystem, segmentID, customMessageWord, unused);
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_TV_INTERVIEW_GIVEN);
        break;
    }
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

    return FALSE;
}

static void TVInterview_SaveResponse(FieldSystem *fieldSystem, int segmentID, u16 customMessageWord, u16 unused)
{
    TVInterview_SaveResponseFunction saveResponseFn = sInterviews[segmentID - 1].saveResponseFn;

    if (saveResponseFn != NULL) {
        saveResponseFn(fieldSystem, customMessageWord);
    }
}

static int TVInterview_LoadMessage(int segmentID, FieldSystem *fieldSystem, StringTemplate *template)
{
    TVInterview_LoadMessageFunction loadMessageFn = sInterviews[segmentID - 1].loadMessageFn;

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

static void sub_0204922C(StringTemplate *param0, int param1, const u16 *param2, int param3, int language, int param5)
{
    String *v0 = String_Init(64, HEAP_ID_FIELD1);

    String_CopyChars(v0, param2);
    StringTemplate_SetString(param0, param1, v0, param3, param5, language);
    String_Free(v0);
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
    String *v0;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    UnkStruct_0202E81C *v2 = sub_0202E81C(broadcast);

    v0 = String_Init(64, HEAP_ID_FIELD1);

    String_CopyChars(v0, v2->unk_06);
    StringTemplate_SetString(param1, 0, v0, v2->unk_02, 1, GAME_LANGUAGE);
    String_Free(v0);
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
    TVSegment_ContestHall_ShowcasedPokemon *v0 = TVBroadcast_GetShowcasedPokemon(SaveData_GetTVBroadcast(fieldSystem->saveData));
    return v0->unk_00;
}

static BOOL sub_02049378(FieldSystem *fieldSystem)
{
    ImageClips *imageClips = SaveData_GetImageClips(fieldSystem->saveData);
    return ImageClips_DressUpPhotoHasData(imageClips, 0);
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
    [TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_01 - 1] = {
        .saveResponseFn = NULL,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_Dummy3,
    },
    [TV_PROGRAM_SEGMENT_BATTLE_TOWER_CORNER - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_BattleTowerCorner,
        .loadMessageFn = NULL,
        .isEligibleFn = sub_02049348,
        .messageID = TVReporterInterviews_Text_BattleTowerCorner,
    },
    [TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_03 - 1] = {
        .saveResponseFn = NULL,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_Dummy5,
    },
    [TV_PROGRAM_SEGMENT_YOUR_POKEMON_CORNER - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_YourPokemonCorner,
        .loadMessageFn = sub_02049268,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_YourPokemonCorner,
    },
    [TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_05 - 1] = {
        .saveResponseFn = NULL,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_Dummy7,
    },
    [TV_PROGRAM_SEGMENT_THE_POKETCH_WATCH - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_ThePoketchWatch,
        .loadMessageFn = sub_02049288,
        .isEligibleFn = sub_02049358,
        .messageID = TVReporterInterviews_Text_ThePoketchWatch,
    },
    [TV_PROGRAM_SEGMENT_CONTEST_HALL - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_ContestHall,
        .loadMessageFn = NULL,
        .isEligibleFn = sub_02049368,
        .messageID = TVReporterInterviews_Text_ContestHall,
    },
    [TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_08 - 1] = {
        .saveResponseFn = NULL,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_Dummy10,
    },
    [TV_PROGRAM_SEGMENT_RIGHT_ON_PHOTO_CORNER - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_RightOnPhotoCorner,
        .loadMessageFn = NULL,
        .isEligibleFn = sub_02049378,
        .messageID = TVReporterInterviews_Text_RightOnPhotoCorner,
    },
    [TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_StreetCornerPersonalityCheckup,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_StreetCornerPersonalityCheckup,
    },
    [TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_ThreeCheersForPoffinCorner,
        .loadMessageFn = NULL,
        .isEligibleFn = sub_02049388,
        .messageID = TVReporterInterviews_Text_ThreeCheersForPoffinCorner,
    },
    [TV_PROGRAM_SEGMENT_INTERVIEW_UNUSED_12 - 1] = {
        .saveResponseFn = NULL,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_Dummy14,
    },
    [TV_PROGRAM_SEGMENT_AMITY_SQUARE_WATCH - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_AmitySquareWatch,
        .loadMessageFn = sub_020492A0,
        .isEligibleFn = sub_02049398,
        .messageID = TVReporterInterviews_Text_AmitySquareWatch,
    },
    [TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_SINGLE - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_BattleFrontierFrontlineNews_Single,
        .loadMessageFn = sub_020492D4,
        .isEligibleFn = sub_020493A8,
        .messageID = TVReporterInterviews_Text_BattleFrontierFrontlineNews_Single,
    },
    [TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_1 - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_InYourFaceInterview_Question1,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_InYourFaceInterview_Question1,
    },
    [TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_2 - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_InYourFaceInterview_Question2,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_InYourFaceInterview_Question2,
    },
    [TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_3 - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_InYourFaceInterview_Question3,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_InYourFaceInterview_Question3,
    },
    [TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_4 - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_InYourFaceInterview_Question4,
        .loadMessageFn = NULL,
        .isEligibleFn = NULL,
        .messageID = TVReporterInterviews_Text_InYourFaceInterview_Question4,
    },
    [TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI - 1] = {
        .saveResponseFn = FieldSystem_SaveTVSegment_BattleFrontierFrontlineNews_Multi,
        .loadMessageFn = sub_02049308,
        .isEligibleFn = sub_020493B8,
        .messageID = TVReporterInterviews_Text_BattleFrontierFrontlineNews_Multi,
    },
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

BOOL ScrCmd_GetBattleFrontierReporterPosition(ScriptContext *ctx)
{
    TVBroadcast *broadcast;
    UnkStruct_0202E81C *v1;
    u16 *x = ScriptContext_GetVarPointer(ctx);
    u16 *z = ScriptContext_GetVarPointer(ctx);
    u16 *dir = ScriptContext_GetVarPointer(ctx);
    u16 *movementType = ScriptContext_GetVarPointer(ctx);

    broadcast = SaveData_GetTVBroadcast(ctx->fieldSystem->saveData);
    v1 = sub_0202E81C(broadcast);

    switch (v1->unk_01) {
    case 5:
        *x = 25;
        *z = 36;
        *dir = DIR_NORTH;
        *movementType = MOVEMENT_TYPE_LOOK_NORTH;
        break;
    case 4:
        *x = 37;
        *z = 61;
        *dir = DIR_SOUTH;
        *movementType = MOVEMENT_TYPE_LOOK_SOUTH;
        break;
    case 6:
        *x = 59;
        *z = 61;
        *dir = DIR_SOUTH;
        *movementType = MOVEMENT_TYPE_LOOK_SOUTH;
        break;
    case 2:
    case 3:
        *x = 72;
        *z = 36;
        *dir = DIR_NORTH;
        *movementType = MOVEMENT_TYPE_LOOK_NORTH;
        break;
    case 1:
    default:
        *x = 47;
        *z = 21;
        *dir = DIR_NORTH;
        *movementType = MOVEMENT_TYPE_LOOK_NORTH;
        break;
    }

    return FALSE;
}
