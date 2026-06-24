#include "macros/scrcmd.inc"


    ScriptEntry CanalaveCityWestHouse_Dummy1
    ScriptEntry CanalaveCityWestHouse_OnTransition
    ScriptEntryEnd

CanalaveCityWestHouse_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_STREET_CORNER_PERSONALITY_CHECKUP, VAR_MAP_LOCAL_0x0
    GoToIfEq VAR_MAP_LOCAL_0x0, FALSE, CanalaveCityWestHouse_HideReporter
    ClearFlag FLAG_HIDE_CANALAVE_CITY_WEST_HOUSE_REPORTER
    End

CanalaveCityWestHouse_HideReporter:
    SetFlag FLAG_HIDE_CANALAVE_CITY_WEST_HOUSE_REPORTER
    End

CanalaveCityWestHouse_Dummy1:
    End

    .balign 4, 0
