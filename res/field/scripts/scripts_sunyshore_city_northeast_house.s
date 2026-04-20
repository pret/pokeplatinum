#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_northeast_house.h"
#include "generated/ribbons.h"


    ScriptEntry SunyshoreCityEastHouse_Julia
    ScriptEntryEnd

SunyshoreCityEastHouse_Julia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE, SunyshoreCityNortheastHouse_GoToTellAnotherStoryTomorrow
    GoToIfSet FLAG_VISIT_TOMORROW_SUNYSHORE_CITY_NORTHEAST_HOUSE, SunyshoreCityNortheastHouse_PleaseVisitTomorrow
    GoToIfUnset FLAG_TALKED_TO_JULIA_SUNYSHORE_CITY_NORTHEAST_HOUSE, SunyshoreCityNortheastHouse_TellMeStories
    GetFirstNonEggInParty VAR_0x8002
    Call SunyshoreCityNortheastHouse_CheckHasTodaysRibbon
    GoToIfEq VAR_RESULT, TRUE, SunyshoreCityNortheastHouse_GaveRibbonBefore
    GoTo SunyshoreCityNortheastHouse_AskDailyStory

SunyshoreCityNortheastHouse_TellMeStories:
    SetFlag FLAG_TALKED_TO_JULIA_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetFlag FLAG_VISIT_TOMORROW_SUNYSHORE_CITY_NORTHEAST_HOUSE
    Message SunyshoreCityNortheastHouse_Text_TellMeStories
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityNortheastHouse_PleaseVisitTomorrow:
    Message SunyshoreCityNortheastHouse_Text_PleaseVisitTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityNortheastHouse_GoToTellAnotherStoryTomorrow:
    GoTo SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow

SunyshoreCityNortheastHouse_CheckHasTodaysRibbon:
    GetDayOfWeek VAR_RESULT
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_SUNDAY, SunyshoreCityNortheastHouse_CheckHasRibbonSmile
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_MONDAY, SunyshoreCityNortheastHouse_CheckHasRibbonAlert
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_TUESDAY, SunyshoreCityNortheastHouse_CheckHasRibbonShock
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_WEDNESDAY, SunyshoreCityNortheastHouse_CheckHasRibbonDowncast
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_THURSDAY, SunyshoreCityNortheastHouse_CheckHasRibbonCareless
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_FRIDAY, SunyshoreCityNortheastHouse_CheckHasRibbonRelax
    GoTo SunyshoreCityNortheastHouse_CheckHasRibbonSnooze

SunyshoreCityNortheastHouse_CheckHasRibbonSmile:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SMILE
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonAlert:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_ALERT
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonShock:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SHOCK
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonDowncast:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_DOWNCAST
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonCareless:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_CARELESS
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonRelax:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_RELAX
    Return

SunyshoreCityNortheastHouse_CheckHasRibbonSnooze:
    GetPartyMonRibbon VAR_RESULT, VAR_0x8002, RIBBON_SNOOZE
    Return

SunyshoreCityNortheastHouse_GiveRibbon:
    BufferPartyMonSpecies 1, VAR_0x8002
    BufferPlayerName 2
    Message SunyshoreCityNortheastHouse_Text_GiveThisToPokemon
    PlayFanfare SEQ_FANFA1
    Message SunyshoreCityNortheastHouse_Text_PlayerReceivedRibbon
    WaitFanfare
    Message SunyshoreCityNortheastHouse_Text_PlayerPutRibbonOnPokemon
    GoTo SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow

SunyshoreCityNortheastHouse_TellAnotherStoryTomorrow:
    Message SunyshoreCityNortheastHouse_Text_TellAnotherStoryTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityNortheastHouse_GaveRibbonBefore:
    BufferPartyMonSpecies 1, VAR_0x8002
    Message SunyshoreCityNortheastHouse_Text_GaveRibbonBefore
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCityNortheastHouse_AskDailyStory:
    GetDayOfWeek VAR_RESULT
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_SUNDAY, SunyshoreCityNortheastHouse_AskSundayStory
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_MONDAY, SunyshoreCityNortheastHouse_AskMondayStory
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_TUESDAY, SunyshoreCityNortheastHouse_AskTuesdayStory
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_WEDNESDAY, SunyshoreCityNortheastHouse_AskWednesdayStory
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_THURSDAY, SunyshoreCityNortheastHouse_AskThursdayStory
    GoToIfEq VAR_RESULT, DAY_OF_WEEK_FRIDAY, SunyshoreCityNortheastHouse_AskFridayStory
    GoTo SunyshoreCityNortheastHouse_AskSaturdayStory

SunyshoreCityNortheastHouse_AskSundayStory:
    Message SunyshoreCityNortheastHouse_Text_AskSundayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellSundayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_SMILE
    BufferRibbonName 3, RIBBON_SMILE
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskMondayStory:
    Message SunyshoreCityNortheastHouse_Text_AskMondayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellMondayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_ALERT
    BufferRibbonName 3, RIBBON_ALERT
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskTuesdayStory:
    Message SunyshoreCityNortheastHouse_Text_AskTuesdayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellTuesdayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_SHOCK
    BufferRibbonName 3, RIBBON_SHOCK
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskWednesdayStory:
    Message SunyshoreCityNortheastHouse_Text_AskWednesdayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellWednesdayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_DOWNCAST
    BufferRibbonName 3, RIBBON_DOWNCAST
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskThursdayStory:
    Message SunyshoreCityNortheastHouse_Text_AskThursdayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellThursdayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_CARELESS
    BufferRibbonName 3, RIBBON_CARELESS
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskFridayStory:
    Message SunyshoreCityNortheastHouse_Text_AskFridayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellFridayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_RELAX
    BufferRibbonName 3, RIBBON_RELAX
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_AskSaturdayStory:
    Message SunyshoreCityNortheastHouse_Text_AskSaturdayStory
    WaitABPress
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ChooseCustomMessageWord 0, VAR_RESULT, VAR_0x8000
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, SunyshoreCityNortheastHouse_CouldntThinkUpAnything
    BufferCustomMessageWord 0, VAR_0x8000
    Message SunyshoreCityNortheastHouse_Text_TellSaturdayStory
    SetFlag FLAG_TOLD_DAILY_STORY_SUNYSHORE_CITY_NORTHEAST_HOUSE
    SetPartyMonRibbon VAR_0x8002, RIBBON_SNOOZE
    BufferRibbonName 3, RIBBON_SNOOZE
    GoTo SunyshoreCityNortheastHouse_GiveRibbon

SunyshoreCityNortheastHouse_CouldntThinkUpAnything:
    Message SunyshoreCityNortheastHouse_Text_CouldntThinkUpAnything
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
