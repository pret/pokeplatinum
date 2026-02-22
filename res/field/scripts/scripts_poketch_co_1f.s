#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_1f.h"
#include "res/field/events/events_poketch_co_1f.h"


    ScriptEntry PoketchCo1F_PoketchCoPresident
    ScriptEntry PoketchCo1F_ScientistM
    ScriptEntry PoketchCo1F_Receptionist
    ScriptEntry PoketchCo1F_Lass
    ScriptEntry PoketchCo1F_OnTransition
    ScriptEntryEnd

PoketchCo1F_OnTransition:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_THE_POKETCH_WATCH, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, PoketchCo1F_HideReporter
    GoToIfLt VAR_JUBILIFE_CITY_STATE, 2, PoketchCo1F_HideReporter
    ClearFlag FLAG_HIDE_POKETCH_CO_1F_REPORTER
    End

PoketchCo1F_HideReporter:
    SetFlag FLAG_HIDE_POKETCH_CO_1F_REPORTER
    End

PoketchCo1F_PoketchCoPresident:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo1F_Text_ImThePresidentOfThePoketchCompany
    CountBadgesAcquired VAR_0x8000
    GoToIfEq VAR_0x8000, 0, PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetAGymBadge
    CheckPoketchAppRegistered POKETCH_APPID_MEMOPAD, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo1F_CheckBadgesForMemoPadApp
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo1F_CheckBadgesForMarkingMapApp
    CheckPoketchAppRegistered POKETCH_APPID_LINKSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo1F_CheckBadgesForLinkSearcherApp
    CheckPoketchAppRegistered POKETCH_APPID_MOVETESTER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo1F_CheckBadgesForMoveTesterApp
    CheckItem ITEM_POKE_RADAR, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PoketchCo1F_DoYouThinkIShouldSolicitNewPoketchIdeas
    GoTo PoketchCo1F_YupAllSortsOfPeopleWillGiveYouPoketchApps

PoketchCo1F_CheckBadgesForMemoPadApp:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 1, PoketchCo1F_GiveMemoPadApp
    GoTo PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetAGymBadge

PoketchCo1F_CheckBadgesForMarkingMapApp:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 3, PoketchCo1F_GiveMarkingMapApp
    GoTo PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetThreeGymBadges

PoketchCo1F_CheckBadgesForLinkSearcherApp:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 5, PoketchCo1F_GiveLinkSearcherApp
    GoTo PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetFiveGymBadges

PoketchCo1F_CheckBadgesForMoveTesterApp:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 7, PoketchCo1F_GiveMoveTesterApp
    GoTo PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetSevenGymBadges

PoketchCo1F_GiveMemoPadApp:
    Message PoketchCo1F_Text_IveDevelopedANewPoketchApp
    SetVar VAR_0x8004, POKETCH_APPID_MEMOPAD
    Common_GivePoketchApp
    Message PoketchCo1F_Text_ThatsTheMemoPad
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_GiveMarkingMapApp:
    Message PoketchCo1F_Text_IveDevelopedAnotherNewPoketchApp
    SetVar VAR_0x8004, POKETCH_APPID_MARKINGMAP
    Common_GivePoketchApp
    Message PoketchCo1F_Text_HavingAMapConstantlyDisplayedIsConvenientNo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_GiveLinkSearcherApp:
    Message PoketchCo1F_Text_IveDevelopedYetAnotherNewPoketchApp
    SetVar VAR_0x8004, POKETCH_APPID_LINKSEARCHER
    Common_GivePoketchApp
    Message PoketchCo1F_Text_IThinkItWillBeUsefulToKnowHowManyPeopleAreCommunicating
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_GiveMoveTesterApp:
    Message PoketchCo1F_Text_IveDevelopedStillYetAnotherNewPoketchApp
    SetVar VAR_0x8004, POKETCH_APPID_MOVETESTER
    Common_GivePoketchApp
    Message PoketchCo1F_Text_CheckTypeMatchupsSoYouCanMakeAllYourAttackSuperEffective
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetAGymBadge:
    Message PoketchCo1F_Text_NewPoketchAppWillBeReadyWhenYouGetAGymBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetThreeGymBadges:
    Message PoketchCo1F_Text_NewPoketchAppWillBeReadyWhenYouGetThreeGymBadges
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetFiveGymBadges:
    Message PoketchCo1F_Text_NewPoketchAppWillBeReadyWhenYouGetFiveGymBadges
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_NewPoketchAppWillBeReadyWhenYouGetSevenGymBadges:
    Message PoketchCo1F_Text_NewPoketchAppWillBeReadyWhenYouGetSevenGymBadges
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_YupAllSortsOfPeopleWillGiveYouPoketchApps:
    Message PoketchCo1F_Text_YupAllSortsOfPeopleWillGiveYouPoketchApps
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_DoYouThinkIShouldSolicitNewPoketchIdeas:
    Message PoketchCo1F_Text_DoYouThinkIShouldSolicitNewPoketchIdeas
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo1F_Text_OhYouCanBeSureIWillKeepDevelopingPoketchApps
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_Receptionist:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo1F_Text_WelcomeToThePoketchCompany
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo1F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo1F_Text_HeyDoYouWatchTV
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
