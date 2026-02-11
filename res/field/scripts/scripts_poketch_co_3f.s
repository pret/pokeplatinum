#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_3f.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry PoketchCo3F_NinjaBoy
    ScriptEntry PoketchCo3F_PokefanF
    ScriptEntry PoketchCo3F_ExpertF
    ScriptEntry PoketchCo3F_PCSouthWest
    ScriptEntry PoketchCo3F_PCSouthMiddle
    ScriptEntry PoketchCo3F_PCSouthEast
    ScriptEntry PoketchCo3F_PCNorthWest
    ScriptEntryEnd

PoketchCo3F_NinjaBoy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_TheresAGirlsModelAndABoysModel
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_MyHusbandsThePresident
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_PeopleEverywhereMakePoketchApps
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_PCSouthWest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_ThereAreDescriptionsOfPoketchApps1
PoketchCo3F_PCSouthWestAddMenuEntries:
    Message PoketchCo3F_Text_WhichPoketchAppWouldYouLikeToReadAbout1
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    CheckPoketchEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PoketchCo3F_PCSouthWestShowMenu
    Call PoketchCo3F_CheckAddMenuEntryDigitalWatch
    Call PoketchCo3F_CheckAddMenuEntryAnalogWatch
    Call PoketchCo3F_CheckAddMenuEntryStopwatch
    Call PoketchCo3F_CheckAddMenuEntryKitchenTimer
    Call PoketchCo3F_CheckAddMenuEntryAlarmClock
    Call PoketchCo3F_CheckAddMenuEntryCalendar
PoketchCo3F_PCSouthWestShowMenu:
    AddMenuEntry MenuEntries_Text_PoketchDescriptionsExit, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, PoketchCo3F_DescriptionDigitalWatch
    GoToIfEq VAR_0x8004, 2, PoketchCo3F_DescriptionAnalogWatch
    GoToIfEq VAR_0x8004, 3, PoketchCo3F_DescriptionStopwatch
    GoToIfEq VAR_0x8004, 4, PoketchCo3F_DescriptionKitchenTimer
    GoToIfEq VAR_0x8004, 5, PoketchCo3F_DescriptionAlarmClock
    GoToIfEq VAR_0x8004, 6, PoketchCo3F_DescriptionCalendar
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_CheckAddMenuEntryDigitalWatch:
    CheckPoketchAppRegistered POKETCH_APPID_DIGITALWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_DigitalWatch, 1
    Return

PoketchCo3F_DescriptionDigitalWatch:
    Message PoketchCo3F_Text_DescriptionDigitalWatch
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryAnalogWatch:
    CheckPoketchAppRegistered POKETCH_APPID_ANALOGWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_AnalogWatch, 2
    Return

PoketchCo3F_DescriptionAnalogWatch:
    Message PoketchCo3F_Text_DescriptionAnalogWatch
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryStopwatch:
    CheckPoketchAppRegistered POKETCH_APPID_STOPWATCH, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_Stopwatch, 3
    Return

PoketchCo3F_DescriptionStopwatch:
    Message PoketchCo3F_Text_DescriptionStopwatch
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryKitchenTimer:
    CheckPoketchAppRegistered POKETCH_APPID_KITCHENTIMER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_KitchenTimer, 4
    Return

PoketchCo3F_DescriptionKitchenTimer:
    Message PoketchCo3F_Text_DescriptionKitchenTimer
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryAlarmClock:
    CheckPoketchAppRegistered POKETCH_APPID_ALARMCLOCK, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_AlarmClock, 5
    Return

PoketchCo3F_DescriptionAlarmClock:
    Message PoketchCo3F_Text_DescriptionAlarmClock
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryCalendar:
    CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthWestReturn
    AddMenuEntry MenuEntries_Text_Calendar, 6
    Return

PoketchCo3F_DescriptionCalendar:
    Message PoketchCo3F_Text_DescriptionCalendar
    GoTo PoketchCo3F_PCSouthWestAddMenuEntries

PoketchCo3F_PCSouthWestReturn:
    Return

PoketchCo3F_PCSouthMiddle:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_ThereAreDescriptionsOfPoketchApps2
PoketchCo3F_PCSouthMiddleAddMenuEntries:
    Message PoketchCo3F_Text_WhichPoketchAppWouldYouLikeToReadAbout2
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    CheckPoketchEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PoketchCo3F_PCSouthMiddleShowMenu
    Call PoketchCo3F_CheckAddMenuEntryCalculator
    Call PoketchCo3F_CheckAddMenuEntryMemoPad
    Call PoketchCo3F_CheckAddMenuEntryFriendshipChecker
    Call PoketchCo3F_CheckAddMenuEntryDaycareChecker
    Call PoketchCo3F_CheckAddMenuEntryMatchupChecker
    Call PoketchCo3F_CheckAddMenuEntryPokemonHistory
    Call PoketchCo3F_CheckAddMenuEntryBerrySearcher
PoketchCo3F_PCSouthMiddleShowMenu:
    AddMenuEntry MenuEntries_Text_PoketchDescriptionsExit, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, PoketchCo3F_DescriptionCalculator
    GoToIfEq VAR_0x8004, 2, PoketchCo3F_DescriptionMemoPad
    GoToIfEq VAR_0x8004, 3, PoketchCo3F_DescriptionFriendshipChecker
    GoToIfEq VAR_0x8004, 4, PoketchCo3F_DescriptionDayCareChecker
    GoToIfEq VAR_0x8004, 5, PoketchCo3F_DescriptionMatchupChecker
    GoToIfEq VAR_0x8004, 6, PoketchCo3F_DescriptionPokemonHistory
    GoToIfEq VAR_0x8004, 7, PoketchCo3F_DescriptionBerrySearcher
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_CheckAddMenuEntryCalculator:
    CheckPoketchAppRegistered POKETCH_APPID_CALCULATOR, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_Calculator, 1
    Return

PoketchCo3F_DescriptionCalculator:
    Message PoketchCo3F_Text_DescriptionCalculator
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryMemoPad:
    CheckPoketchAppRegistered POKETCH_APPID_MEMOPAD, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_MemoPad, 2
    Return

PoketchCo3F_DescriptionMemoPad:
    Message PoketchCo3F_Text_DescriptionMemoPad
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryFriendshipChecker:
    CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_FriendshipChecker, 3
    Return

PoketchCo3F_DescriptionFriendshipChecker:
    Message PoketchCo3F_Text_DescriptionFriendshipChecker
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryDaycareChecker:
    CheckPoketchAppRegistered POKETCH_APPID_DAYCARECHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_DayCareChecker, 4
    Return

PoketchCo3F_DescriptionDayCareChecker:
    Message PoketchCo3F_Text_DescriptionDayCareChecker
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryMatchupChecker:
    CheckPoketchAppRegistered POKETCH_APPID_MATCHUPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_MatchupChecker, 5
    Return

PoketchCo3F_DescriptionMatchupChecker:
    Message PoketchCo3F_Text_DescriptionMatchupChecker
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryPokemonHistory:
    CheckPoketchAppRegistered POKETCH_APPID_POKEMONHISTORY, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_PokemonHistory, 6
    Return

PoketchCo3F_DescriptionPokemonHistory:
    Message PoketchCo3F_Text_DescriptionPokemonHistory
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_CheckAddMenuEntryBerrySearcher:
    CheckPoketchAppRegistered POKETCH_APPID_BERRYSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthMiddleReturn
    AddMenuEntry MenuEntries_Text_BerrySearcher, 7
    Return

PoketchCo3F_DescriptionBerrySearcher:
    Message PoketchCo3F_Text_DescriptionBerrySearcher
    GoTo PoketchCo3F_PCSouthMiddleAddMenuEntries

PoketchCo3F_PCSouthMiddleReturn:
    Return

PoketchCo3F_PCSouthEast:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_ThereAreDescriptionsOfPoketchApps3
PoketchCo3F_PCSouthEastAddMenuEntries:
    Message PoketchCo3F_Text_WhichPoketchAppWouldYouLikeToReadAbout3
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    CheckPoketchEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PoketchCo3F_PCSouthEastShowMenu
    Call PoketchCo3F_CheckAddMenuEntryPokemonList
    Call PoketchCo3F_CheckAddMenuEntryDotArtist
    Call PoketchCo3F_CheckAddMenuEntryCoinToss
    Call PoketchCo3F_CheckAddMenuEntryRoulette
    Call PoketchCo3F_CheckAddMenuEntryColorChanger
    Call PoketchCo3F_CheckAddMenuEntryMarkingMap
PoketchCo3F_PCSouthEastShowMenu:
    AddMenuEntry MenuEntries_Text_PoketchDescriptionsExit, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, PoketchCo3F_DescriptionPokemonList
    GoToIfEq VAR_0x8004, 2, PoketchCo3F_DescriptionDotArtist
    GoToIfEq VAR_0x8004, 3, PoketchCo3F_DescriptionCoinToss
    GoToIfEq VAR_0x8004, 4, PoketchCo3F_DescriptionRoulette
    GoToIfEq VAR_0x8004, 5, PoketchCo3F_DescriptionColorChanger
    GoToIfEq VAR_0x8004, 6, PoketchCo3F_DescriptionMarkingMap
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_CheckAddMenuEntryPokemonList:
    CheckPoketchAppRegistered POKETCH_APPID_PARTYSTATUS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_PokemonList, 1
    Return

PoketchCo3F_DescriptionPokemonList:
    Message PoketchCo3F_Text_DescriptionPokemonList
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_CheckAddMenuEntryDotArtist:
    CheckPoketchAppRegistered POKETCH_APPID_DOTART, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_DotArtist, 2
    Return

PoketchCo3F_DescriptionDotArtist:
    Message PoketchCo3F_Text_DescriptionDotArtist
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_CheckAddMenuEntryCoinToss:
    CheckPoketchAppRegistered POKETCH_APPID_COINTOSS, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_CoinToss, 3
    Return

PoketchCo3F_DescriptionCoinToss:
    Message PoketchCo3F_Text_DescriptionCoinToss
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_CheckAddMenuEntryRoulette:
    CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_Roulette, 4
    Return

PoketchCo3F_DescriptionRoulette:
    Message PoketchCo3F_Text_DescriptionRoulette
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_CheckAddMenuEntryColorChanger:
    CheckPoketchAppRegistered POKETCH_APPID_COLORCHANGER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_ColorChanger, 5
    Return

PoketchCo3F_DescriptionColorChanger:
    Message PoketchCo3F_Text_DescriptionColorChanger
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_CheckAddMenuEntryMarkingMap:
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCSouthEastReturn
    AddMenuEntry MenuEntries_Text_MarkingMap, 6
    Return

PoketchCo3F_DescriptionMarkingMap:
    Message PoketchCo3F_Text_DescriptionMarkingMap
    GoTo PoketchCo3F_PCSouthEastAddMenuEntries

PoketchCo3F_PCSouthEastReturn:
    Return

PoketchCo3F_PCNorthWest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PoketchCo3F_Text_ThereAreDescriptionsOfPoketchApps4
PoketchCo3F_PCNorthWestAddMenuEntries:
    Message PoketchCo3F_Text_WhichPoketchAppWouldYouLikeToReadAbout4
    InitGlobalTextMenu 1, 1, 0, VAR_0x8004
    CheckPoketchEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PoketchCo3F_PCNorthWestShowMenu
    Call PoketchCo3F_CheckAddMenuEntryPedometer
    Call PoketchCo3F_CheckAddMenuEntryCounter
    Call PoketchCo3F_CheckAddMenuEntryTrainerCounter
    Call PoketchCo3F_CheckAddMenuEntryLinkSearcher
    Call PoketchCo3F_CheckAddMenuEntryMoveTester
    Call PoketchCo3F_CheckAddMenuEntryDowsingMachine
PoketchCo3F_PCNorthWestShowMenu:
    AddMenuEntry MenuEntries_Text_PoketchDescriptionsExit, 0
    ShowMenu
    GoToIfEq VAR_0x8004, 1, PoketchCo3F_DescriptionPedometer
    GoToIfEq VAR_0x8004, 2, PoketchCo3F_DescriptionCounter
    GoToIfEq VAR_0x8004, 3, PoketchCo3F_DescriptionTrainerCounter
    GoToIfEq VAR_0x8004, 4, PoketchCo3F_DescriptionLinkSearcher
    GoToIfEq VAR_0x8004, 5, PoketchCo3F_DescriptionMoveTester
    GoToIfEq VAR_0x8004, 6, PoketchCo3F_DescriptionDowsingMachine
    CloseMessage
    ReleaseAll
    End

PoketchCo3F_CheckAddMenuEntryPedometer:
    CheckPoketchAppRegistered POKETCH_APPID_PEDOMETER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_Pedometer, 1
    Return

PoketchCo3F_DescriptionPedometer:
    Message PoketchCo3F_Text_DescriptionPedometer
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryCounter:
    CheckPoketchAppRegistered POKETCH_APPID_COUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_Counter, 2
    Return

PoketchCo3F_DescriptionCounter:
    Message PoketchCo3F_Text_DescriptionCounter
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryTrainerCounter:
    CheckPoketchAppRegistered POKETCH_APPID_TRAINERCOUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_TrainerCounter, 3
    Return

PoketchCo3F_DescriptionTrainerCounter:
    Message PoketchCo3F_Text_DescriptionTrainerCounter
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryLinkSearcher:
    CheckPoketchAppRegistered POKETCH_APPID_LINKSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_LinkSearcher, 4
    Return

PoketchCo3F_DescriptionLinkSearcher:
    Message PoketchCo3F_Text_DescriptionLinkSearcher
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryMoveTester:
    CheckPoketchAppRegistered POKETCH_APPID_MOVETESTER, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_MoveTester, 5
    Return

PoketchCo3F_DescriptionMoveTester:
    Message PoketchCo3F_Text_DescriptionMoveTester
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_CheckAddMenuEntryDowsingMachine:
    CheckPoketchAppRegistered POKETCH_APPID_DOWSINGMACHINE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PoketchCo3F_PCNorthWestReturn
    AddMenuEntry MenuEntries_Text_DowsingMachine, 6
    Return

PoketchCo3F_DescriptionDowsingMachine:
    Message PoketchCo3F_Text_DescriptionDowsingMachine
    GoTo PoketchCo3F_PCNorthWestAddMenuEntries

PoketchCo3F_PCNorthWestReturn:
    Return

    .balign 4, 0
