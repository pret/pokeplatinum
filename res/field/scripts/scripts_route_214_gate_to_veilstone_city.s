#include "macros/scrcmd.inc"
#include "res/text/bank/route_214_gate_to_veilstone_city.h"


    ScriptEntry Route214GateToVeilstoneCity_MiddleAgedMan
    ScriptEntry Route214GateToVeilstoneCity_OnTransition
    ScriptEntryEnd

Route214GateToVeilstoneCity_OnTransition:
    GetRandom VAR_RANDOM_INTERVIEW_QUESTION, 4
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, Route214GateToVeilstoneCity_HideReporter
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_2, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, Route214GateToVeilstoneCity_HideReporter
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_3, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, Route214GateToVeilstoneCity_HideReporter
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_IN_YOUR_FACE_INTERVIEW_QUESTION_4, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, Route214GateToVeilstoneCity_HideReporter
    ClearFlag FLAG_HIDE_ROUTE_214_GATE_TO_VEILSTONE_CITY_REPORTER
    End

Route214GateToVeilstoneCity_HideReporter:
    SetFlag FLAG_HIDE_ROUTE_214_GATE_TO_VEILSTONE_CITY_REPORTER
    End

Route214GateToVeilstoneCity_MiddleAgedMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetUnownFormsSeenCount VAR_MAP_LOCAL_0
    GoToIfGe VAR_MAP_LOCAL_0, 26, Route214GateToVeilstoneCity_ThatRuinManiac
    Message Route214GateToVeilstoneCity_Text_RouteIsChewedUp
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route214GateToVeilstoneCity_ThatRuinManiac:
    Message Route214GateToVeilstoneCity_Text_ThatRuinManiac
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
