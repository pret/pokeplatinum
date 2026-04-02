#include "macros/scrcmd.inc"


    ScriptEntry CanalaveCityWestHouse_Unused
    ScriptEntry CanalaveCityWestHouse_OnTransition
    ScriptEntryEnd

CanalaveCityWestHouse_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCityWestHouse_HideReporter
    ClearFlag FLAG_HIDE_CANALAVE_CITY_WEST_HOUSE_REPORTER
    End

CanalaveCityWestHouse_HideReporter:
    SetFlag FLAG_HIDE_CANALAVE_CITY_WEST_HOUSE_REPORTER
    End

CanalaveCityWestHouse_Unused:
    End

    .balign 4, 0
