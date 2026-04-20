#include "overlay006/ov6_022465FC.h"

#include <nitro.h>

#include "constants/tv_broadcast.h"

#include "struct_decls/tv_broadcast.h"

#include "field/field_system.h"
#include "overlay006/tv_episode.h"
#include "savedata/save_table.h"

#include "math_util.h"
#include "narc.h"
#include "rtc.h"
#include "tv_segment.h"
#include "unk_0202E2CC.h"
#include "unk_020559DC.h"

#include "res/text/bank/tv_programs.h"

#define TV_BROADCAST_MAX_PROGRAM 10

#define TV_BROADCAST_MAX_PROGRAM_SEGMENTS            11
#define TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS 16
#define TV_BROADCAST_MAX_FILTERED_PENDING_SEGMENTS   11

#define TV_BROADCAST_PROGRAMS_PER_HOUR   4
#define TV_BROADCAST_MINUTES_PER_PROGRAM (MINUTES_PER_HOUR / TV_BROADCAST_PROGRAMS_PER_HOUR)

typedef struct TVProgramFramingMessages {
    u8 goodMorning;
    u8 goodDay;
    u8 goodEvening;
    u8 leadSegment;
    u8 nextSegment;
    u8 farewell;
    u8 farewellExtended;
} TVProgramFramingMessages;

static const TVProgramFramingMessages sProgramFramingMessages[] = {
    {
        TVBroadcast_Text_BattlingTrainers_GoodMorning,
        TVBroadcast_Text_BattlingTrainers_GoodDay,
        TVBroadcast_Text_BattlingTrainers_GoodEvening,
        TVBroadcast_Text_BattlingTrainers_LeadSegment,
        TVBroadcast_Text_BattlingTrainers_NextSegment,
        TVBroadcast_Text_BattlingTrainers_Farewell,
        TVBroadcast_Text_BattlingTrainers_FarewellExtended,
    },
    {
        TVBroadcast_Text_TrainerResearch_GoodMorning,
        TVBroadcast_Text_TrainerResearch_GoodDay,
        TVBroadcast_Text_TrainerResearch_GoodEvening,
        TVBroadcast_Text_TrainerResearch_LeadSegment,
        TVBroadcast_Text_TrainerResearch_NextSegment,
        TVBroadcast_Text_TrainerResearch_Farewell,
        TVBroadcast_Text_TrainerResearch_FarewellExtended,
    },
    {
        TVBroadcast_Text_BattleWatch_GoodMorning,
        TVBroadcast_Text_BattleWatch_GoodDay,
        TVBroadcast_Text_BattleWatch_GoodEvening,
        TVBroadcast_Text_BattleWatch_LeadSegment,
        TVBroadcast_Text_BattleWatch_NextSegment,
        TVBroadcast_Text_BattleWatch_Farewell,
        TVBroadcast_Text_BattleWatch_FarewellExtended,
    },
    {
        TVBroadcast_Text_TrainersDay_GoodMorning,
        TVBroadcast_Text_TrainersDay_GoodDay,
        TVBroadcast_Text_TrainersDay_GoodEvening,
        TVBroadcast_Text_TrainersDay_LeadSegment,
        TVBroadcast_Text_TrainersDay_NextSegment,
        TVBroadcast_Text_TrainersDay_Farewell,
        TVBroadcast_Text_TrainersDay_FarewellExtended,
    },
    {
        TVBroadcast_Text_SinnohNewsNet_GoodMorning,
        TVBroadcast_Text_SinnohNewsNet_GoodDay,
        TVBroadcast_Text_SinnohNewsNet_GoodEvening,
        TVBroadcast_Text_SinnohNewsNet_LeadSegment,
        TVBroadcast_Text_SinnohNewsNet_NextSegment,
        TVBroadcast_Text_SinnohNewsNet_Farewell,
        TVBroadcast_Text_SinnohNewsNet_FarewellExtended,
    },
    {
        TVBroadcast_Text_RackEmUpRecords_GoodMorning,
        TVBroadcast_Text_RackEmUpRecords_GoodDay,
        TVBroadcast_Text_RackEmUpRecords_GoodEvening,
        TVBroadcast_Text_RackEmUpRecords_LeadSegment,
        TVBroadcast_Text_RackEmUpRecords_NextSegment,
        TVBroadcast_Text_RackEmUpRecords_Farewell,
        TVBroadcast_Text_RackEmUpRecords_FarewellExtended,
    },
    {
        TVBroadcast_Text_SinnohNow_GoodMorning,
        TVBroadcast_Text_SinnohNow_GoodDay,
        TVBroadcast_Text_SinnohNow_GoodEvening,
        TVBroadcast_Text_SinnohNow_LeadSegment,
        TVBroadcast_Text_SinnohNow_NextSegment,
        TVBroadcast_Text_SinnohNow_Farewell,
        TVBroadcast_Text_SinnohNow_FarewellExtended,
    },
    {
        TVBroadcast_Text_TrendTracker_GoodMorning,
        TVBroadcast_Text_TrendTracker_GoodDay,
        TVBroadcast_Text_TrendTracker_GoodEvening,
        TVBroadcast_Text_TrendTracker_LeadSegment,
        TVBroadcast_Text_TrendTracker_NextSegment,
        TVBroadcast_Text_TrendTracker_Farewell,
        TVBroadcast_Text_TrendTracker_FarewellExtended,
    },
    {
        TVBroadcast_Text_VarietyHour_GoodMorning,
        TVBroadcast_Text_VarietyHour_GoodDay,
        TVBroadcast_Text_VarietyHour_GoodEvening,
        TVBroadcast_Text_VarietyHour_LeadSegment,
        TVBroadcast_Text_VarietyHour_NextSegment,
        TVBroadcast_Text_VarietyHour_Farewell,
        TVBroadcast_Text_VarietyHour_FarewellExtended,
    },
};

void FieldSystem_SetTVProgramFinished(FieldSystem *fieldSystem)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    TVBroadcast_SetProgramFinished(broadcast, TRUE);
}

int TVBroadcast_GetPendingBroadcastType(FieldSystem *fieldSystem)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    if (TVBroadcast_IsProgramFinished(broadcast) == TRUE) {
        return TV_BROADCAST_STATUS_FINISHED;
    }

    int playedCount = TVBroadcast_CountPlayedSegments(broadcast);

    if (playedCount == 0) {
        return TV_BROADCAST_STATUS_BEGIN;
    }

    if (playedCount == TV_BROADCAST_MAX_PLAYED_SEGMENTS) {
        return TV_BROADCAST_STATUS_FINISH;
    }

    return TV_BROADCAST_STATUS_CONTINUE;
}

static int TVBroadcast_GetScheduledProgramID(FieldSystem *fieldSystem)
{
    int dayOfWeek = (FieldSystem_GetWeek(fieldSystem) + (RTC_WEEK_MAX - 1)) % RTC_WEEK_MAX;
    int hour = FieldSystem_GetHour(fieldSystem);
    int minute = FieldSystem_GetMinute(fieldSystem);
    int offset = (((19 + hour) % HOURS_PER_DAY) * TV_BROADCAST_PROGRAMS_PER_HOUR + (minute / TV_BROADCAST_MINUTES_PER_PROGRAM)) * RTC_WEEK_MAX;

    u8 weekTimeSlot[RTC_WEEK_MAX];
    NARC_ReadFromMemberByIndexPair(weekTimeSlot, NARC_INDEX_ARC__TV, 0, offset, sizeof(weekTimeSlot));
    u8 tvProgramID = weekTimeSlot[dayOfWeek];

    GF_ASSERT(0 < tvProgramID && tvProgramID < TV_BROADCAST_MAX_PROGRAM);
    return tvProgramID;
}

static int TVBroadcast_GetProgramType(int programID)
{
    u8 programType;
    int offset = (1 + TV_BROADCAST_MAX_PROGRAM_SEGMENTS) * (programID - 1);

    NARC_ReadFromMemberByIndexPair(&programType, NARC_INDEX_ARC__TV, 1, offset, sizeof(u8));

    GF_ASSERT(programType < 6);
    return programType;
}

static void TVBroadcast_LoadProgramSegmentIDsFromNarc(int programID, u8 *programSegmentIDs)
{
    u8 unused;
    int offset = (1 + TV_BROADCAST_MAX_PROGRAM_SEGMENTS) * (programID - 1) + 1;

    NARC_ReadFromMemberByIndexPair(programSegmentIDs, NARC_INDEX_ARC__TV, 1, offset, sizeof(u8) * TV_BROADCAST_MAX_PROGRAM_SEGMENTS);
}

static BOOL TVBroadcast_IsValidProgramSegmentDummy(FieldSystem *fieldSystem, int programID, int programSegmentID)
{
    return TRUE;
}

static void TVBroadcast_LoadProgramSegmentIDs(int programID, FieldSystem *fieldSystem, u8 *programSegmentIDs)
{
    u8 loadedSegmentIDs[TV_BROADCAST_MAX_PROGRAM_SEGMENTS];
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    TVBroadcast_LoadProgramSegmentIDsFromNarc(programID, loadedSegmentIDs);
    MI_CpuClear8(programSegmentIDs, sizeof(u8) * TV_BROADCAST_MAX_PROGRAM_SEGMENTS);

    for (int loadedIndex = 0, copiedIndex = 0; loadedIndex < TV_BROADCAST_MAX_PROGRAM_SEGMENTS; loadedIndex++) {
        if (loadedSegmentIDs[loadedIndex] == NULL) {
            break;
        }

        if (TVBroadcast_IsValidProgramSegmentDummy(fieldSystem, programID, loadedSegmentIDs[loadedIndex]) == TRUE) {
            programSegmentIDs[copiedIndex] = loadedSegmentIDs[loadedIndex];
            copiedIndex++;
        }
    }
}

static int TVBroadcast_RandomPendingSegment(FieldSystem *fieldSystem, const u8 *pendingSegmentIDs)
{
    u8 squashedPendingSegmentIDs[TV_BROADCAST_MAX_FILTERED_PENDING_SEGMENTS];
    int segmentIndex, pendingCount;

    MI_CpuClear8(squashedPendingSegmentIDs, sizeof(u8) * TV_BROADCAST_MAX_FILTERED_PENDING_SEGMENTS);

    for (segmentIndex = 0, pendingCount = 0; segmentIndex < TV_BROADCAST_MAX_FILTERED_PENDING_SEGMENTS; segmentIndex++) {
        if (pendingSegmentIDs[segmentIndex] != NULL) {
            squashedPendingSegmentIDs[pendingCount] = pendingSegmentIDs[segmentIndex];
            pendingCount++;
        }
    }

    if (pendingCount == 0) {
        return NULL;
    } else if (pendingCount == 1) {
        return squashedPendingSegmentIDs[0];
    }

    return squashedPendingSegmentIDs[MTRNG_Next() % pendingCount];
}

static int ov6_0224678C(TVBroadcast *broadcast, int programType, int param2, BOOL param3, BOOL param4, u8 *param5)
{
    if ((programType != TV_PROGRAM_TYPE_SINNOH_NOW) && (programType != TV_PROGRAM_TYPE_VARIETY_HOUR)) {
        return sub_0202E614(broadcast, programType, param2, param3, param4, param5);
    }

    if (param4) {
        return 0;
    }

    if (!param3) {
        return 0;
    }

    if (TVBroadcast_IsPlayedSegment(broadcast, param2) == FALSE) {
        param5[0] = param2;
        return 1;
    }

    return 0;
}

static int TVBroadcast_GetPendingSegments(int programType, FieldSystem *fieldSystem, BOOL param2, BOOL param3, const u8 *programSegmentIDs, u8 *pendingSegmentIDs)
{
    u8 loadedPendingSegments[TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS];
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    int pendingCount = 0;

    while (*programSegmentIDs != NULL) {
        MI_CpuClear8(loadedPendingSegments, TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS);

        if (ov6_0224678C(broadcast, programType, *programSegmentIDs, param2, param3, loadedPendingSegments)) {
            for (int loadedIndex = 0; loadedPendingSegments[loadedIndex] != 0 && loadedIndex < TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS; loadedIndex++) {
                pendingSegmentIDs[pendingCount] = loadedPendingSegments[loadedIndex];
                pendingCount++;
            }
        }

        programSegmentIDs++;
    }

    return pendingCount;
}

static void TVBroadcast_ExcludeIneligibleSegments(FieldSystem *fieldSystem, int programType, u8 *pendingSegmentIDs)
{
    for (int segmentIndex = 0; *pendingSegmentIDs != NULL && segmentIndex < TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS; pendingSegmentIDs++, segmentIndex++) {
        TVEpisode *episode = TVEpisode_New(fieldSystem, programType, *pendingSegmentIDs);

        if (!TVSegment_IsEligible(programType, fieldSystem, episode)) {
            *pendingSegmentIDs = NULL;
        }

        TVEpisode_Free(episode);
    }
}

static void TVBroadcast_ExcludePlayedSegments(FieldSystem *fieldSystem, u8 *pendingSegmentIDs)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    while (*pendingSegmentIDs != NULL) {
        if (TVBroadcast_IsPlayedSegment(broadcast, *pendingSegmentIDs)) {
            *pendingSegmentIDs = NULL;
        }

        pendingSegmentIDs++;
    }
}

int ov6_022468B0(FieldSystem *fieldSystem, BOOL param1, BOOL param2)
{
    u8 programSegmentIDs[TV_BROADCAST_MAX_PROGRAM_SEGMENTS];
    u8 pendingSegmentIDs[TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS];

    int programID = TVBroadcast_GetScheduledProgramID(fieldSystem);
    int programType = TVBroadcast_GetProgramType(programID);

    MI_CpuClear8(programSegmentIDs, TV_BROADCAST_MAX_PROGRAM_SEGMENTS);
    MI_CpuClear8(pendingSegmentIDs, TV_BROADCAST_MAX_UNFILTERED_PENDING_SEGMENTS);

    TVBroadcast_LoadProgramSegmentIDs(programID, fieldSystem, programSegmentIDs);

    int result = TVBroadcast_GetPendingSegments(programType, fieldSystem, param1, param2, programSegmentIDs, pendingSegmentIDs);

    if (result == NULL) {
        return NULL;
    }

    TVBroadcast_ExcludeIneligibleSegments(fieldSystem, programType, pendingSegmentIDs);
    TVBroadcast_ExcludePlayedSegments(fieldSystem, pendingSegmentIDs);

    result = TVBroadcast_RandomPendingSegment(fieldSystem, pendingSegmentIDs);

    return result;
}

int TVBroadcast_GetNextSegmentID(FieldSystem *fieldSystem)
{
    int segmentID = ov6_022468B0(fieldSystem, FALSE, FALSE);

    if (segmentID) {
        return segmentID;
    }

    segmentID = ov6_022468B0(fieldSystem, TRUE, FALSE);

    if (segmentID) {
        return segmentID;
    }

    segmentID = ov6_022468B0(fieldSystem, FALSE, TRUE);

    if (segmentID) {
        return segmentID;
    }

    segmentID = ov6_022468B0(fieldSystem, TRUE, TRUE);
    return segmentID;
}

static const TVProgramFramingMessages *TVBroadcast_GetScheduledProgramMessages(FieldSystem *fieldSystem)
{
    int scheduledProgramID = TVBroadcast_GetScheduledProgramID(fieldSystem);

    GF_ASSERT(scheduledProgramID <= NELEMS(sProgramFramingMessages));
    return &sProgramFramingMessages[scheduledProgramID - 1];
}

int TVBroadcast_GetProgramFramingMessage(FieldSystem *fieldSystem, int framingMessageType)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    const TVProgramFramingMessages *framingMessages = TVBroadcast_GetScheduledProgramMessages(fieldSystem);

    switch (framingMessageType) {
    default:
        GF_ASSERT(FALSE);
    case TV_PROGRAM_FRAMING_MESSAGE_GREETING:
        switch (GetTimeOfDay()) {
        case TIMEOFDAY_MORNING:
            return framingMessages->goodMorning;
        case TIMEOFDAY_DAY:
            return framingMessages->goodDay;
        default:
            return framingMessages->goodEvening;
        }
    case TV_PROGRAM_FRAMING_MESSAGE_SEGMENT_INTRO:
        if (TVBroadcast_CountPlayedSegments(broadcast) == 0) {
            return framingMessages->leadSegment;
        } else {
            return framingMessages->nextSegment;
        }
    case TV_PROGRAM_FRAMING_MESSAGE_FAREWELL:
        return framingMessages->farewell;
    case TV_PROGRAM_FRAMING_MESSAGE_FAREWELL_EXTENDED:
        return framingMessages->farewellExtended;
    }
}

BOOL TVBroadcast_LoadSegmentMessage(FieldSystem *fieldSystem, StringTemplate *template, int segmentID, u16 *bankDestVar, u16 *messageDestVar)
{
    int programID = TVBroadcast_GetScheduledProgramID(fieldSystem);
    int programType = TVBroadcast_GetProgramType(programID);
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    TVBroadcast_SetPlayedSegment(broadcast, segmentID);

    TVEpisode *episode = TVEpisode_New(fieldSystem, programType, segmentID);

    TVEpisode_IncrementTimesPlayed(episode);
    *messageDestVar = TVSegment_LoadMessage(programType, fieldSystem, template, episode, bankDestVar);
    TVEpisode_Free(episode);

    return TRUE;
}
