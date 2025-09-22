#include "overlay006/ov6_022465FC.h"

#include <nitro.h>
#include <string.h>

#include "constants/tv_broadcast.h"

#include "struct_decls/struct_0202440C_decl.h"

#include "field/field_system.h"
#include "overlay006/ov6_02246444.h"
#include "overlay006/struct_ov6_022465F4_decl.h"
#include "savedata/save_table.h"

#include "math_util.h"
#include "narc.h"
#include "rtc.h"
#include "unk_0202E2CC.h"
#include "unk_020559DC.h"
#include "unk_0206CCB0.h"

#include "res/text/bank/tv_programs.h"

#define TV_BROADCAST_MAX_PROGRAM 10

#define TV_PROGRAM_MAX_SEGMENT_TYPES               11
#define TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS 16
#define TV_PROGRAM_MAX_FILTERED_PENDING_SEGMENTS   11

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
    int playedCount;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    if (TVBroadcast_IsProgramFinished(broadcast) == TRUE) {
        return TV_BROADCAST_STATUS_FINISHED;
    }

    playedCount = TVBroadcast_CountPlayedSegments(broadcast);

    if (playedCount == 0) {
        return TV_BROADCAST_STATUS_BEGIN;
    }

    if (playedCount == 4) {
        return TV_BROADCAST_STATUS_FINISH;
    }

    return TV_BROADCAST_STATUS_CONTINUE;
}

static int TVBroadcast_GetScheduledProgramID(FieldSystem *fieldSystem)
{
    u8 tvProgramID;
    u8 weekTimeSlot[7];
    int dayOfWeek, hour, minute;
    int offset;

    dayOfWeek = (FieldSystem_GetWeek(fieldSystem) + 6) % 7;
    hour = FieldSystem_GetHour(fieldSystem);
    minute = FieldSystem_GetMinute(fieldSystem);
    offset = (((19 + hour) % 24) * 4 + (minute / 15)) * 7;

    NARC_ReadFromMemberByIndexPair(weekTimeSlot, NARC_INDEX_ARC__TV, 0, offset, sizeof(u8) * 7);
    tvProgramID = weekTimeSlot[dayOfWeek];

    GF_ASSERT(0 < tvProgramID && tvProgramID < TV_BROADCAST_MAX_PROGRAM);
    return tvProgramID;
}

static int TVBroadcast_GetProgramType(int programID)
{
    u8 programType;
    int offset = (1 + TV_PROGRAM_MAX_SEGMENT_TYPES) * (programID - 1);

    NARC_ReadFromMemberByIndexPair(&programType, NARC_INDEX_ARC__TV, 1, offset, sizeof(u8));

    GF_ASSERT(programType < 6);
    return programType;
}

static void TVBroadcast_LoadSegmentTypesFromNarc(int programID, u8 *segmentTypes)
{
    u8 unused;
    int offset = (1 + TV_PROGRAM_MAX_SEGMENT_TYPES) * (programID - 1) + 1;

    NARC_ReadFromMemberByIndexPair(segmentTypes, NARC_INDEX_ARC__TV, 1, offset, sizeof(u8) * TV_PROGRAM_MAX_SEGMENT_TYPES);
}

static BOOL TVBroadcast_IsValidSegmentTypeDummy(FieldSystem *fieldSystem, int programID, int segmentType)
{
    return TRUE;
}

static void TVBroadcast_LoadProgramSegmentTypes(int programID, FieldSystem *fieldSystem, u8 *segmentTypes)
{
    u8 loadedSegmentTypes[TV_PROGRAM_MAX_SEGMENT_TYPES];
    int loadedIndex, copiedIndex;
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    TVBroadcast_LoadSegmentTypesFromNarc(programID, loadedSegmentTypes);
    MI_CpuClear8(segmentTypes, sizeof(u8) * TV_PROGRAM_MAX_SEGMENT_TYPES);

    for (loadedIndex = 0, copiedIndex = 0; loadedIndex < TV_PROGRAM_MAX_SEGMENT_TYPES; loadedIndex++) {
        if (loadedSegmentTypes[loadedIndex] == NULL) {
            break;
        }

        if (TVBroadcast_IsValidSegmentTypeDummy(fieldSystem, programID, loadedSegmentTypes[loadedIndex]) == TRUE) {
            segmentTypes[copiedIndex] = loadedSegmentTypes[loadedIndex];
            copiedIndex++;
        }
    }
}

static int TVBroadcast_RandomPendingSegment(FieldSystem *fieldSystem, const u8 *pendingSegments)
{
    u8 squashedPendingSegments[TV_PROGRAM_MAX_FILTERED_PENDING_SEGMENTS];
    int segmentIndex, pendingCount;

    MI_CpuClear8(squashedPendingSegments, sizeof(u8) * TV_PROGRAM_MAX_FILTERED_PENDING_SEGMENTS);

    for (segmentIndex = 0, pendingCount = 0; segmentIndex < TV_PROGRAM_MAX_FILTERED_PENDING_SEGMENTS; segmentIndex++) {
        if (pendingSegments[segmentIndex] != NULL) {
            squashedPendingSegments[pendingCount] = pendingSegments[segmentIndex];
            pendingCount++;
        }
    }

    if (pendingCount == 0) {
        return NULL;
    } else if (pendingCount == 1) {
        return squashedPendingSegments[0];
    }

    return squashedPendingSegments[MTRNG_Next() % pendingCount];
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

static int TVBroadcast_GetPendingProgramSegments(int programType, FieldSystem *fieldSystem, BOOL param2, BOOL param3, const u8 *segmentTypes, u8 *pendingSegments)
{
    u8 loadedPendingSegments[TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS];
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);
    int v2, loadedIndex;
    int pendingCount = 0;

    while (*segmentTypes != NULL) {
        MI_CpuClear8(loadedPendingSegments, TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS);

        if (ov6_0224678C(broadcast, programType, *segmentTypes, param2, param3, loadedPendingSegments)) {
            for (loadedIndex = 0; loadedPendingSegments[loadedIndex] != 0 && loadedIndex < TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS; loadedIndex++) {
                pendingSegments[pendingCount] = loadedPendingSegments[loadedIndex];
                pendingCount++;
            }
        }

        segmentTypes++;
    }

    return pendingCount;
}

static void ov6_02246844(FieldSystem *fieldSystem, int programType, u8 *pendingSegments)
{
    int segmentIndex;
    UnkStruct_ov6_022465F4 *v1;

    for (segmentIndex = 0; *pendingSegments != NULL && segmentIndex < TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS; pendingSegments++, segmentIndex++) {
        v1 = ov6_022465A0(fieldSystem, programType, *pendingSegments);

        if (!TVBroadcastSegment_IsEligible(programType, fieldSystem, v1)) {
            *pendingSegments = NULL;
        }

        ov6_022465F4(v1);
    }
}

static void TVBroadcast_ExcludePlayedSegments(FieldSystem *fieldSystem, u8 *param1)
{
    TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldSystem->saveData);

    while (*param1 != 0) {
        if (TVBroadcast_IsPlayedSegment(broadcast, *param1)) {
            *param1 = NULL;
        }

        param1++;
    }
}

int ov6_022468B0(FieldSystem *fieldSystem, BOOL param1, BOOL param2)
{
    u8 segmentTypes[TV_PROGRAM_MAX_SEGMENT_TYPES];
    u8 pendingSegments[TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS];
    int numPendingOrResultID;
    int programID;
    int programType;

    programID = TVBroadcast_GetScheduledProgramID(fieldSystem);
    programType = TVBroadcast_GetProgramType(programID);

    MI_CpuClear8(segmentTypes, TV_PROGRAM_MAX_SEGMENT_TYPES);
    MI_CpuClear8(pendingSegments, TV_PROGRAM_MAX_UNFILTERED_PENDING_SEGMENTS);

    TVBroadcast_LoadProgramSegmentTypes(programID, fieldSystem, segmentTypes);

    numPendingOrResultID = TVBroadcast_GetPendingProgramSegments(programType, fieldSystem, param1, param2, segmentTypes, pendingSegments);

    if (numPendingOrResultID == NULL) {
        return NULL;
    }

    ov6_02246844(fieldSystem, programType, pendingSegments);
    TVBroadcast_ExcludePlayedSegments(fieldSystem, pendingSegments);

    numPendingOrResultID = TVBroadcast_RandomPendingSegment(fieldSystem, pendingSegments);

    return numPendingOrResultID;
}

int ov6_02246920(FieldSystem *fieldSystem)
{
    int v0 = ov6_022468B0(fieldSystem, FALSE, FALSE);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, TRUE, FALSE);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, FALSE, TRUE);

    if (v0) {
        return v0;
    }

    v0 = ov6_022468B0(fieldSystem, TRUE, TRUE);
    return v0;
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
    UnkStruct_ov6_022465F4 *segment;

    TVBroadcast_SetPlayedSegment(broadcast, segmentID);

    segment = ov6_022465A0(fieldSystem, programType, segmentID);

    ov6_0224647C(segment);
    *messageDestVar = TVBroadcastSegment_LoadMessage(programType, fieldSystem, template, segment, bankDestVar);
    ov6_022465F4(segment);

    return TRUE;
}
