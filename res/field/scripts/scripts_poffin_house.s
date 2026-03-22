#include "macros/scrcmd.inc"
#include "res/text/bank/poffin_house.h"
#include "res/field/events/events_poffin_house.h"


    ScriptEntry PoffinHouse_Idol
    ScriptEntry PoffinHouse_OldMan
    ScriptEntry PoffinHouse_OldWoman
    ScriptEntry PoffinHouse_SchoolKidF
    ScriptEntry PoffinHouse_OnResume
    ScriptEntry PoffinHouse_OnTransition
    ScriptEntryEnd

PoffinHouse_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, FALSE, PoffinHouse_HideReporter
    End

PoffinHouse_OnResume:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER, VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, FALSE, PoffinHouse_ShowReporter
    CallIfUnset FLAG_HIDE_POFFIN_HOUSE_REPORTER, PoffinHouse_HideReporter
    End

PoffinHouse_HideReporter:
    SetFlag FLAG_HIDE_POFFIN_HOUSE_REPORTER
    Return

PoffinHouse_ShowReporter:
    GoToIfSet FLAG_HIDE_POFFIN_HOUSE_REPORTER, PoffinHouse_AddReporter
    ClearFlag FLAG_HIDE_POFFIN_HOUSE_REPORTER
    End

PoffinHouse_AddReporter:
    ClearFlag FLAG_HIDE_POFFIN_HOUSE_REPORTER
    AddObject LOCALID_REPORTER
    End

PoffinHouse_Idol:
    NPCMessage PoffinHouse_Text_HeresMyAdviceOnCookingPoffins
    End

PoffinHouse_OldMan:
    NPCMessage PoffinHouse_Text_HaveYouGotSomeBerries
    End

PoffinHouse_OldWoman:
    NPCMessage PoffinHouse_Text_EatingMakesPeopleAndPokemonHappy
    End

PoffinHouse_SchoolKidF:
    NPCMessage PoffinHouse_Text_AtTheWiFiClubICanCookWithFriends
    End
