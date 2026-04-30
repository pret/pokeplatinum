#include "macros/scrcmd.inc"
#include "res/field/events/events_contest_hall_stage_ongoing_contest.h"
#include "res/field/events/events_contest_hall_lobby.h"
#include "res/text/bank/contest_registration.h"
#include "res/text/bank/menu_entries.h"

#include "constants/communication/comm_type.h"
#include "constants/contests.h"
#include "constants/map_object.h"
#include "constants/pokemon.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"


    ScriptEntry _0036 @ 0x2648
    ScriptEntry ContestRegistration_Dummy @ 0x2649
    ScriptEntry OngoingContest_OnTransition @ 0x264A
    ScriptEntry ContestHallLobby_OnTransition @ 0x264B
    ScriptEntry _01D4 @ 0x264C
    ScriptEntry _01E9 @ 0x264D
    ScriptEntry ContestRegistration_ReceptionistOfficialContest @ 0x264E
    ScriptEntry ContestRegistration_ReceptionistLinkContest @ 0x264F
    ScriptEntry ContestRegistration_ReceptionistPracticeContest @ 0x2650
    ScriptEntry ContestRegistration_ReceptionistPracticeContest @ 0x2651
    ScriptEntry ContestRegistration_ReceptionistPracticeContest @ 0x2652
    ScriptEntry ContestRegistration_ReceptionistPracticeContest @ 0x2653
    ScriptEntry ContestRegistration_LinkContestRecordsDisplay @ 0x2654
    ScriptEntryEnd

_0036:
    LockAll
    SetVar VAR_RESULT, 7
    Call ContestRegistration_Movement_ExitContestHall
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 0
    ReleaseAll
    End

ContestRegistration_Movement_ExitContestHall:
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_WalkSouth
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_RESULT, 5, ANIMATION_TAG_DOOR_1
    Call ContestRegistration_OpenDoor
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_WalkSouth2
    WaitMovement
    Call ContestRegistration_CloseDoor
    Return

ContestRegistration_Movement_ReturnToReceptionist:
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_WalkWest2FaceNorth
    WaitMovement
    Return

ContestRegistration_AssessPracticeResults:
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_ToPracticeReceptionist
    WaitMovement
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_VISUAL, ContestRegistration_CompletedVisualPractice
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_DANCE, ContestRegistration_CompletedDancePractice
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_ACTING, ContestRegistration_CompletedActingPractice
    SetVar VAR_0x8004, 0
    ShowYesNoMenu VAR_RESULT
    Return

ContestRegistration_CompletedVisualPractice:
    GoToIfGt VAR_0x8004, 1, ContestRegistration_FailedVisualPractice
    Message ContestRegistration_Text_CompletedVisualPractice
    Return

ContestRegistration_FailedVisualPractice:
    Message ContestRegistration_Text_FailedVisualPractice
    Return

ContestRegistration_CompletedDancePractice:
    GoToIfGt VAR_0x8004, 1, ContestRegistration_FailedDancePractice
    Message ContestRegistration_Text_CompletedDancePractice
    Return

ContestRegistration_FailedDancePractice:
    Message ContestRegistration_Text_FailedDancePractice
    Return

ContestRegistration_CompletedActingPractice:
    GoToIfGt VAR_0x8004, 1, ContestRegistration_FailedActingPractice
    Message ContestRegistration_Text_CompletedActingPractice
    Return

ContestRegistration_FailedActingPractice:
    Message ContestRegistration_Text_FailedActingPractice
    Return

ContestRegistration_OpenDoor:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

ContestRegistration_CloseDoor:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

    .balign 4, 0
ContestRegistration_Movement_WalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_WalkSouth2:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_ToPracticeReceptionist:
    WalkNormalWest
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_WalkWest2FaceNorth:
    WalkNormalWest 2
    WalkOnSpotFastNorth
    EndMovement

ContestRegistration_Dummy:
    End

OngoingContest_OnTransition:
    CallIfEq VAR_ONGOING_CONTEST, FALSE, OngoingContest_HideContestObjects
    GoToIfEq VAR_ONGOING_CONTEST, FALSE, OngoingContest_End
    HidePoketch
OngoingContest_End:
    End

OngoingContest_HideContestObjects:
    SetVar VAR_ONGOING_CONTEST, FALSE
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT1
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT2
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT3
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT4
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT_WINNER
    Return

ContestHallLobby_OnTransition:
    ShowPoketch
    Call _01B1
    Call OngoingContest_HideContestObjects
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_CONTEST_HALL, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, ContestHallLobby_HideReporter
    ClearFlag FLAG_HIDE_CONTEST_HALL_LOBBY_REPORTER
    End

ContestHallLobby_HideReporter:
    SetFlag FLAG_HIDE_CONTEST_HALL_LOBBY_REPORTER
    End

_01B1:
    GoToIfSet FLAG_TALKED_TO_CONTEST_HALL_LOBBY_RICH_BOY, _01BE
    Return

_01BE:
    SetObjectEventPos CONTEST_HALL_LOBBY_RICH_BOY, 24, 6
    SetObjectEventMovementType CONTEST_HALL_LOBBY_RICH_BOY, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir CONTEST_HALL_LOBBY_RICH_BOY, DIR_SOUTH
    Return

_01D4:
    CallIfEq VAR_ONGOING_CONTEST, TRUE, _01E3
    End

_01E3:
    HideObject LOCALID_PLAYER
    Return

_01E9:
    NPCMessage 0
    End

ContestRegistration_ReceptionistOfficialContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL
    SetVar VAR_0x8007, CONTEST_COMPETITION_LINK_OR_OFFICIAL
    Message ContestRegistration_Text_Welcome
    GoTo ContestRegistration_Receptionists_WouldYouLikeToEnterContest
    End

ContestRegistration_ReceptionistLinkContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_LINK
    SetVar VAR_0x8007, CONTEST_COMPETITION_LINK_OR_OFFICIAL
    Message ContestRegistration_Text_WelcomeLinkContest
    GoTo ContestRegistration_Receptionists_WouldYouLikeToEnterContest
    End

ContestRegistration_Receptionists_WouldYouLikeToEnterContest:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_ReceptionistLinkContest_WouldYouLikeToEnterContest
    Message ContestRegistration_Text_WouldYouLikeToEnterAContest
    GoTo ContestRegistration_Receptionists_ContestMenu


#define Receptionists_ContestMenuItem_Enter 0
#define Receptionists_ContestMenuItem_Info 1
#define Receptionists_ContestMenuItem_Exit 2

ContestRegistration_ReceptionistLinkContest_WouldYouLikeToEnterContest:
    Message ContestRegistration_Text_WouldYouLikeToEnterLinkContest
ContestRegistration_Receptionists_ContestMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_Enter, Receptionists_ContestMenuItem_Enter
    AddMenuEntryImm ContestRegistration_Text_Info1, Receptionists_ContestMenuItem_Info
    AddMenuEntryImm ContestRegistration_Text_Exit1, Receptionists_ContestMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, Receptionists_ContestMenuItem_Enter, ContestRegistration_Receptionists_ContestMenuItem_EnterSelected
    GoToIfEq VAR_0x8008, Receptionists_ContestMenuItem_Info, ContestRegistration_Receptionists_ContestMenuItem_InfoSelected
    GoTo ContestRegistration_Receptionists_ContestMenuExit
    End

ContestRegistration_Receptionists_ContestMenuExit:
    EndCommunication
    SetVar VAR_UNK_0x40D5, 0
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Message ContestRegistration_Text_LookForwardToYourParticipationAnotherTime
    WaitButton
    CloseMessage
    ReleaseAll
    End

ContestRegistration_Receptionists_ContestMenuItem_EnterSelected:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_ReceptionistLinkContest_EnterLinkContest
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestRankMenu
    End

ContestRegistration_ReceptionistLinkContest_EnterLinkContest:
    HealParty
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0  @ VAR_MAP_LOCAL_0 is set in CommonScript_SaveGame
    GoToIfEq VAR_RESULT, TRUE, ContestRegistration_ReceptionistLinkContest_SavedGame
    GoTo ContestRegistration_Receptionists_ContestMenuExit
    End

ContestRegistration_ReceptionistLinkContest_SavedGame:
    SetVar VAR_0x8004, 2
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu
    End

ContestRegistration_Receptionists_ContestMenuItem_InfoSelected:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_ReceptionistLinkContest_LinkContestInfo
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoMenuEntry
    End

ContestRegistration_ReceptionistLinkContest_LinkContestInfo:
    Message ContestRegistration_Text_ExplainLinkContest
    GoTo ContestRegistration_Receptionists_WouldYouLikeToEnterContest


#define ReceptionistOfficialContest_InfoMenuItem_ContestBasics 0
#define ReceptionistOfficialContest_InfoMenuItem_TypesOfContests 1
#define ReceptionistOfficialContest_InfoMenuItem_ContestRanks 2
#define ReceptionistOfficialContest_InfoMenuItem_Cancel 3

ContestRegistration_ReceptionistOfficialContest_InfoMenuEntry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow1
ContestRegistration_ReceptionistOfficialContest_InfoMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestBasics, ReceptionistOfficialContest_InfoMenuItem_ContestBasics
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_TypesOfContests, ReceptionistOfficialContest_InfoMenuItem_TypesOfContests
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestRanks, ReceptionistOfficialContest_InfoMenuItem_ContestRanks
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_Cancel, ReceptionistOfficialContest_InfoMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoMenuItem_ContestBasics, GoTo_ContestRegistration_ReceptionistOfficialContest_InfoContestBasics
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoMenuItem_TypesOfContests, ContestRegistration_ReceptionistOfficialContest_InfoTypesOfContests
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoMenuItem_ContestRanks, ContestRegistration_ReceptionistOfficialContest_InfoContestRanks
    GoTo ContestRegistration_Receptionists_WouldYouLikeToEnterContest
    End

GoTo_ContestRegistration_ReceptionistOfficialContest_InfoContestBasics:
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoContestBasics
    End

ContestRegistration_ReceptionistOfficialContest_InfoTypesOfContests:
    Message ContestRegistration_Text_ExplainContestTypes
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoMenuEntry
    End

ContestRegistration_ReceptionistOfficialContest_InfoContestRanks:
    Message ContestRegistration_Text_ExplainContestRanks
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoMenuEntry
    End

#define ReceptionistOfficialContest_InfoContestBasicsMenuItem_WhatsAContest 0
#define ReceptionistOfficialContest_InfoContestBasicsMenuItem_VisualCompetition 1
#define ReceptionistOfficialContest_InfoContestBasicsMenuItem_DanceCompetition 2
#define ReceptionistOfficialContest_InfoContestBasicsMenuItem_ActingCompetition 3
#define ReceptionistOfficialContest_InfoContestBasicsMenuItem_CancelCompetition 4

ContestRegistration_ReceptionistOfficialContest_InfoContestBasicsReentry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
ContestRegistration_ReceptionistOfficialContest_InfoContestBasics:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_WhatsAContest, ReceptionistOfficialContest_InfoContestBasicsMenuItem_WhatsAContest
    AddMenuEntryImm ContestRegistration_Text_VisualCompetition, ReceptionistOfficialContest_InfoContestBasicsMenuItem_VisualCompetition
    AddMenuEntryImm ContestRegistration_Text_DanceCompetition, ReceptionistOfficialContest_InfoContestBasicsMenuItem_DanceCompetition
    AddMenuEntryImm ContestRegistration_Text_ActingCompetition, ReceptionistOfficialContest_InfoContestBasicsMenuItem_ActingCompetition
    AddMenuEntryImm ContestRegistration_Text_CancelCompetition, ReceptionistOfficialContest_InfoContestBasicsMenuItem_CancelCompetition
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoContestBasicsMenuItem_WhatsAContest, ContestRegistration_ReceptionistOfficialContest_WhatsAContest
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoContestBasicsMenuItem_VisualCompetition, ContestRegistration_ReceptionistOfficialContest_VisualCompetition
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoContestBasicsMenuItem_DanceCompetition, ContestRegistration_ReceptionistOfficialContest_DanceCompetition
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_InfoContestBasicsMenuItem_ActingCompetition, ContestRegistration_ReceptionistOfficialContest_ActingCompetition
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoMenu
    End

ContestRegistration_ReceptionistOfficialContest_WhatsAContest:
    Message ContestRegistration_Text_ExplainOfficialContest
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoContestBasicsReentry
    End

ContestRegistration_ReceptionistOfficialContest_VisualCompetition:
    Message ContestRegistration_Text_ExplainVisualContest
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoContestBasicsReentry
    End

ContestRegistration_ReceptionistOfficialContest_DanceCompetition:
    Message ContestRegistration_Text_ExplainDanceContest
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoContestBasicsReentry
    End

ContestRegistration_ReceptionistOfficialContest_ActingCompetition:
    Message ContestRegistration_Text_ExplainActingContest
    GoTo ContestRegistration_ReceptionistOfficialContest_InfoContestBasicsReentry
    End


#define ReceptionistOfficialContest_ContestRankMenuItem_NormalRank 0
#define ReceptionistOfficialContest_ContestRankMenuItem_GreatRank 1
#define ReceptionistOfficialContest_ContestRankMenuItem_UltraRank 2
#define ReceptionistOfficialContest_ContestRankMenuItem_MasterRank 3
#define ReceptionistOfficialContest_ContestRankMenuItem_Exit 4

ContestRegistration_ReceptionistOfficialContest_ContestRankMenu:
    Message ContestRegistration_Text_SelectRank
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_NormalRank, ReceptionistOfficialContest_ContestRankMenuItem_NormalRank
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_GreatRank, ReceptionistOfficialContest_ContestRankMenuItem_GreatRank
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_UltraRank, ReceptionistOfficialContest_ContestRankMenuItem_UltraRank
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_MasterRank, ReceptionistOfficialContest_ContestRankMenuItem_MasterRank
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestRankExit, ReceptionistOfficialContest_ContestRankMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestRankMenuItem_NormalRank, ContestRegistration_ReceptionistOfficialContest_NormalRank
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestRankMenuItem_GreatRank, ContestRegistration_ReceptionistOfficialContest_GreatRank
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestRankMenuItem_UltraRank, ContestRegistration_ReceptionistOfficialContest_UltraRank
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestRankMenuItem_MasterRank, ContestRegistration_ReceptionistOfficialContest_MasterRank
    GoTo ContestRegistration_Receptionists_ContestMenuExit
    End

ContestRegistration_ReceptionistOfficialContest_NormalRank:
    SetVar VAR_0x8004, CONTEST_RANK_NORMAL
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu
    End

ContestRegistration_ReceptionistOfficialContest_GreatRank:
    SetVar VAR_0x8004, CONTEST_RANK_GREAT
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu
    End

ContestRegistration_ReceptionistOfficialContest_UltraRank:
    SetVar VAR_0x8004, CONTEST_RANK_ULTRA
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu
    End

ContestRegistration_ReceptionistOfficialContest_MasterRank:
    SetVar VAR_0x8004, CONTEST_RANK_MASTER
    GoTo ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu
    End


#define ReceptionistOfficialContest_ContestTypeMenuItem_Cool 0
#define ReceptionistOfficialContest_ContestTypeMenuItem_Beauty 1
#define ReceptionistOfficialContest_ContestTypeMenuItem_Cute 2
#define ReceptionistOfficialContest_ContestTypeMenuItem_Smart 3
#define ReceptionistOfficialContest_ContestTypeMenuItem_Tough 4
#define ReceptionistOfficialContest_ContestTypeMenuItem_Exit 5

ContestRegistration_ReceptionistOfficialContest_ContestTypeMenu:
    Message ContestRegistration_Text_SelectContestType
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_CoolContest, ReceptionistOfficialContest_ContestTypeMenuItem_Cool
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_BeautyContest, ReceptionistOfficialContest_ContestTypeMenuItem_Beauty
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_CuteContest, ReceptionistOfficialContest_ContestTypeMenuItem_Cute
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_SmartContest, ReceptionistOfficialContest_ContestTypeMenuItem_Smart
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ToughContest, ReceptionistOfficialContest_ContestTypeMenuItem_Tough
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestTypeExit, ReceptionistOfficialContest_ContestTypeMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestTypeMenuItem_Cool, ContestRegistration_ReceptionistOfficialContest_SelectContestTypeCool
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestTypeMenuItem_Beauty, ContestRegistration_ReceptionistOfficialContest_SelectContestTypeBeauty
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestTypeMenuItem_Cute, ContestRegistration_ReceptionistOfficialContest_SelectContestTypeCute
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestTypeMenuItem_Smart, ContestRegistration_ReceptionistOfficialContest_SelectContestTypeSmart
    GoToIfEq VAR_0x8008, ReceptionistOfficialContest_ContestTypeMenuItem_Tough, ContestRegistration_ReceptionistOfficialContest_SelectContestTypeTough
    GoTo ContestRegistration_Receptionists_ContestMenuExit
    End

ContestRegistration_ReceptionistOfficialContest_SelectContestTypeCool:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_ReceptionistOfficialContest_SelectContestTypeBeauty:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_ReceptionistOfficialContest_SelectContestTypeCute:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_ReceptionistOfficialContest_SelectContestTypeSmart:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_ReceptionistOfficialContest_SelectContestTypeTough:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_Receptionists_RegisterMon:
    Message ContestRegistration_Text_EnterWhichPokemon1
    Message ContestRegistration_Text_PleaseChoosePokemon1
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, ContestRegistration_ReceptionistOfficialContest_UseSelectedContestRank
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_ReceptionistLinkContest_UseDefaultContestRank
    SetVar VAR_RESULT, 0
ContestRegistration_Receptionists_TryRegisterMon:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_4
    TryEnterContestMon VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ContestRegistration_Receptionists_RegisterMonDone
    SetMonSummary VAR_MAP_LOCAL_2
    GetMonPartySlot VAR_RESULT
    GoTo ContestRegistration_Receptionists_TryRegisterMon

ContestRegistration_Receptionists_RegisterMonDone:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, PARTY_SLOT_NONE, ContestRegistration_Receptionists_ConfirmCancelEntry
    GoTo ContestRegistration_Receptionists_PreContestControl
    End

ContestRegistration_Receptionists_ConfirmCancelEntry:
    Message ContestRegistration_Text_CancelEntry
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, ContestRegistration_Receptionists_ContestMenuExit
    GoTo ContestRegistration_Receptionists_RegisterMon
    End

ContestRegistration_ReceptionistOfficialContest_UseSelectedContestRank:
    SetVar VAR_MAP_LOCAL_4, FALSE
    Return

ContestRegistration_ReceptionistLinkContest_UseDefaultContestRank:
    SetVar VAR_MAP_LOCAL_4, TRUE
    Return

ContestRegistration_Receptionists_PreContestControl:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_ReceptionistLinkContest_EstablishGroup
    GoTo ContestRegistration_StartContest
    End


#define ReceptionistLinkContest_EstablishGroupMenuItem_JoinGroup 0
#define ReceptionistLinkContest_EstablishGroupMenuItem_BecomeLeader 1
#define ReceptionistLinkContest_EstablishGroupMenuItem_Exit 2

ContestRegistration_ReceptionistLinkContest_EstablishGroup:
    Message ContestRegistration_Text_OnePersonMustBeLeader
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, ReceptionistLinkContest_EstablishGroupMenuItem_JoinGroup
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, ReceptionistLinkContest_EstablishGroupMenuItem_BecomeLeader
    AddMenuEntryImm MenuEntries_Text_Exit, ReceptionistLinkContest_EstablishGroupMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistLinkContest_EstablishGroupMenuItem_JoinGroup, ContestRegistration_ReceptionistLinkContest_JoinGroup
    GoToIfEq VAR_0x8008, ReceptionistLinkContest_EstablishGroupMenuItem_BecomeLeader, ContestRegistration_ReceptionistLinkContest_BecomeLeader
    GoTo ContestRegistration_Receptionists_ContestMenuExit
    End

ContestRegistration_ReceptionistLinkContest_JoinGroup:
    Message ContestRegistration_Text_CommunicatingWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ContestRegistration_ReceptionistLinkContest_EstablishGroup
    CloseMessage
    StartBattleClient COMM_TYPE_CONTEST, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup1
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup2
    GoTo ContestRegistration_StartContest
    End

GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup1:
    GoTo ContestRegistration_ReceptionistLinkContest_EstablishGroup
    End

GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup2:
    GoTo ContestRegistration_ReceptionistLinkContest_EstablishGroup
    End

ContestRegistration_ReceptionistLinkContest_BecomeLeader:
    Message ContestRegistration_Text_CommunicatingWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ContestRegistration_ReceptionistLinkContest_EstablishGroup
    CloseMessage
    StartBattleServer COMM_TYPE_CONTEST, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup3
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, ContestRegistration_ReceptionistLinkContest_End
    GoTo ContestRegistration_StartContest
    End

GoTo_ContestRegistration_ReceptionistLinkContest_EstablishGroup3:
    GoTo ContestRegistration_ReceptionistLinkContest_EstablishGroup
    End

ContestRegistration_ReceptionistLinkContest_End:
    EndCommunication
    CloseMessage
    ReleaseAll
    End

ContestRegistration_StartContest:
    NewContest VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_SetupLinkContest
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, ContestRegistration_RegisteredForPractice
    GetContestRegistrationEntryNum VAR_RESULT
    AddVar VAR_RESULT, 1
    BufferContestRegistrationEntryNumber VAR_RESULT, 0
    MessageSynchronized ContestRegistration_Text_YourPokemonHasBeenAccepted
    GetContestRegistrationEntryNum VAR_RESULT
    BufferContestantTrainerName VAR_RESULT, 0
    BufferContestantMonName VAR_RESULT, 1
    MessageSynchronized ContestRegistration_Text_TheContestWillStartRightAway
    StartContestCommSync 25
    WaitForCommSyncState 25
    CloseMessage
ContestRegistration_SelectContestDoor:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, ContestRegistration_OfficialContestDoor
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, ContestRegistration_LinkContestDoor
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, ContestRegistration_PracticeContestDoor
    End

ContestRegistration_RegisteredForPractice:
    GetContestRegistrationEntryNum VAR_RESULT
    AddVar VAR_RESULT, 1
    BufferContestRegistrationEntryNumber VAR_RESULT, 0
    Message ContestRegistration_Text_YourPokemonRegisteredForPractice
    GetContestRegistrationEntryNum VAR_RESULT
    BufferContestantTrainerName VAR_RESULT, 0
    BufferContestantMonName VAR_RESULT, 1
    CloseMessage
    GoTo ContestRegistration_SelectContestDoor

ContestRegistration_SetupLinkContest:
    Message ContestRegistration_Text_CommunicatingStandBy
    WaitForLinkContestSetup
    Return

ContestRegistration_OfficialContestDoor:
    LoadDoorAnimation 0, 0, 19, 5, ANIMATION_TAG_DOOR_1
    Call ContestRegistration_OpenDoor
    WaitMovement
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_PlayerToOfficialContestDoor
    ApplyMovement CONTEST_HALL_LOBBY_RECEPTIONIST_OFFICIAL_CONTEST, ContestRegistration_Movement_OfficialContestReceptionistToPlayer
    WaitMovement
    Call ContestRegistration_CloseDoor
    WaitMovement
    GoTo ContestRegistration_ChangeIntoContestAttire
    End

ContestRegistration_LinkContestDoor:
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 5
    LoadDoorAnimation 0, 0, 7, 5, ANIMATION_TAG_DOOR_1
    Call ContestRegistration_OpenDoor
    WaitMovement
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_PlayerToLinkContestDoor
    ApplyMovement CONTEST_HALL_LOBBY_RECEPTIONIST_LINK_CONTEST, ContestRegistration_Movement_LinkContestReceptionistToPlayer
    WaitMovement
    Call ContestRegistration_CloseDoor
    WaitMovement
    GoTo ContestRegistration_ChangeIntoContestAttire
    End

ContestRegistration_PracticeContestDoor:
    LoadDoorAnimation 0, 0, 28, 5, ANIMATION_TAG_DOOR_1
    Call ContestRegistration_OpenDoor
    WaitMovement
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_ApproachPracticeContestDoor
    ApplyMovement CONTEST_HALL_LOBBY_RECEPTIONIST_PRACTICE_CONTEST, ContestRegistration_Movement_PracticeReceptionistToPlayer
    WaitMovement
    Call ContestRegistration_CloseDoor
    WaitMovement
    MessageSynchronized ContestRegistration_Text_RightThisWayPlease2
    CloseMessage
    GoTo ContestRegistration_ChangeIntoContestAttire
    End

ContestRegistration_ChangeIntoContestAttire:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, ContestRegistration_StartPracticeContest
    ChangeIntoContestAttire
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, ContestRegistration_PlayerChangedIntoTuxedo
    GoTo ContestRegistration_PlayerChangedIntoDress
    End

ContestRegistration_PlayerChangedIntoTuxedo:
    BufferPlayerName 0
    MessageSynchronized ContestRegistration_Text_PlayerChangedIntoTuxedo
    GoTo ContestRegistration_ThisWayToContestHall
    End

ContestRegistration_PlayerChangedIntoDress:
    BufferPlayerName 0
    MessageSynchronized ContestRegistration_Text_PlayerChangedIntoDress
    GoTo ContestRegistration_ThisWayToContestHall
    End

ContestRegistration_ThisWayToContestHall:
    ApplyMovement LOCALID_PLAYER, ContestRegistration_Movement_FaceContestHall
    WaitMovement
    MessageSynchronized ContestRegistration_Text_RightThisWayPlease1
    StartContestCommSync 26
    WaitForCommSyncState 26
    CloseMessage
    GoTo Contest_DoContest
    End

ContestRegistration_StartPracticeContest:
    FadeScreenOut
    WaitFadeScreen
    RunContestApplication
    GetContestInfo VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    SetVar VAR_ONGOING_CONTEST, FALSE
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 28, 3, DIR_SOUTH
    LockAll
    FadeScreenIn
    WaitFadeScreen
    GetContestMode VAR_MAP_LOCAL_3
    GetContestInfo VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    GetPlayerContestPlacement VAR_0x8004
    LockTextSpeed
    EndContest VAR_MAP_LOCAL_2
    SetVar VAR_RESULT, 28
    Call ContestRegistration_Movement_ExitContestHall
    Call ContestRegistration_AssessPracticeResults
    GoToIfEq VAR_RESULT, MENU_YES, ContestRegistration_StartContest
    Message ContestRegistration_Text_WeLookForwardToYourNextVisit1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Contest_DoContest:
    ClearFlag FLAG_HIDE_HEARTHOME_HIKER_3
    SetVar VAR_ONGOING_CONTEST, TRUE
    Call OngoingContest_GetContestantGFX
    PlaySE SEQ_SE_DP_KAIDAN2
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT1
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT2
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT3
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT4
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_CONTEST_HALL_STAGE_ONGOING_CONTEST, 0, 29, 7, DIR_NORTH
    LockAutoScrollForLinkContests
    GetContestMode VAR_MAP_LOCAL_3
    StopHBlank
    FadeScreenIn
    WaitFadeScreen
    StartHBlank
    StartContestCommSync 3
    WaitForCommSyncState 3
    PlaySE SEQ_SE_DP_CON_F007
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_LookAround
    WaitMovement
    BufferContestRank 0
    BufferContestType 1
    MessageSynchronized ContestRegistration_Text_WeAreAboutToGetUnderWay
    StartContestCommSync 19
    WaitForCommSyncState 19
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_LookWest
    WaitMovement
    BufferContestantTrainerName 0, 0
    MessageSynchronized ContestRegistration_Text_IntroduceFirstContestant
    GetContestantMonContestFame 0, VAR_RESULT
    StartContestCameraFlashTask 0
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 20
    WaitForCommSyncState 20
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_DexterLookNorth
    WaitMovement
    BufferContestantTrainerName 1, 0
    MessageSynchronized ContestRegistration_Text_IntroduceSecondContestant
    GetContestantMonContestFame 1, VAR_RESULT
    StartContestCameraFlashTask 1
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 21
    WaitForCommSyncState 21
    WaitTime 8, VAR_RESULT
    BufferContestantTrainerName 2, 0
    MessageSynchronized ContestRegistration_Text_IntroduceThirdContestant
    GetContestantMonContestFame 2, VAR_RESULT
    StartContestCameraFlashTask 2
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 22
    WaitForCommSyncState 22
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_DexterLookEast
    WaitMovement
    BufferContestantTrainerName 3, 0
    MessageSynchronized ContestRegistration_Text_IntroduceFourthContestant
    GetContestantMonContestFame 3, VAR_RESULT
    StartContestCameraFlashTask 3
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 23
    WaitForCommSyncState 23
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_LookSouth
    WaitMovement
    MessageSynchronized ContestRegistration_Text_DressUpYourPokemon
    CloseMessage
    StartContestCommSync 4
    WaitForCommSyncState 4
    PlaySE SEQ_SE_DP_CON_F007
    WaitTime 30, VAR_RESULT
    StopHBlank
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_UNK_20, COLOR_BLACK
    WaitFadeScreen
    StartHBlank
    DestroyNetworkIcon
    RunContestApplication
    LockAutoScrollForLinkContests
    GetContestInfo VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    GetContestMode VAR_MAP_LOCAL_3
    Call OngoingContest_PresentWinner
    ScrCmd_2B0
    FadeScreenIn FADE_SCREEN_SPEED_FAST, COLOR_WHITE
    WaitFadeScreen
    GetWinningContestantEntryNum VAR_RESULT
    StartContestCameraFlashTask VAR_RESULT
    GetContestantMonContestFame VAR_RESULT, VAR_RESULT
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    MessageSynchronized ContestRegistration_Text_Congratulations2
    GetShouldSkipAwardCeremony VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, OngoingContest_EndContest
    BufferWinningContestantTrainerName 0
    BufferWinningContestantMonName 1
    SetRibbonName 2
    CheckPlayerMonHasRibbon VAR_RESULT
    GoToIfEq VAR_RESULT, 0, OngoingContest_AwardCeremony
    MessageSynchronized ContestRegistration_Text_WeExpectGreatThingsFromWinningTeam
    GoTo OngoingContest_EndContest

OngoingContest_AwardCeremony:
    MessageSynchronized ContestRegistration_Text_LetsRecognizeOurWinner
    CloseMessage
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_DexterLookEast
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT_WINNER, OngoingContest_Movement_LookWest
    WaitMovement
    WaitTime 15, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_MCDEXTER, OngoingContest_Movement_LookSouth
    ApplyMovement CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT_WINNER, OngoingContest_Movement_LookSouth
    WaitMovement
OngoingContest_EndContest:
    MessageSynchronized ContestRegistration_Text_WeLookForwardToYourNextContestChallenge
    CloseMessage
    PlaySE SEQ_SE_DP_CON_F007
    GetWinningContestantEntryNum VAR_RESULT
    StartContestCameraFlashTask VAR_RESULT
    GetContestantMonContestFame VAR_RESULT, VAR_RESULT
    Call OngoingContest_PlayApplause
    WaitForContestCameraFlashTask
    WaitTime 30, VAR_RESULT
    StartContestCommSync 24
    WaitForCommSyncState 24
    ScrCmd_2BB
    WaitTime 10, VAR_RESULT
    DestroyNetworkIcon
    StopHBlank
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_UNK_20, COLOR_BLACK
    WaitFadeScreen
    StartHBlank
    GetContestInfo VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    GetFirstTimeVictoryAccessory VAR_0x8004
    LockTextSpeed
    EndContest VAR_MAP_LOCAL_2
    SetVar VAR_ONGOING_CONTEST, FALSE
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, OngoingContest_OfficialContest_ReturnToContestRegistration
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 7, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 7
    Call ContestRegistration_Movement_ExitContestHall
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 0
    GoTo ContestRegistration_End

OngoingContest_OfficialContest_ReturnToContestRegistration:
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 19
    Call ContestRegistration_Movement_ExitContestHall
    Call ContestRegistration_Movement_ReturnToReceptionist
    GoToIfEq VAR_0x8004, -1, ContestRegistration_ThankYouForParticipating
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Message ContestRegistration_Text_Congratulations1
    SetVar VAR_0x8005, 1
    Common_GiveAccessory
ContestRegistration_ThankYouForParticipating:
    Message ContestRegistration_Text_ThankYouForParticipating
    WaitButton
    CloseMessage
ContestRegistration_End:
    End

OngoingContest_PlayApplause:
    PlaySE SEQ_SE_DP_CON_F007
    CallIfEq VAR_RESULT, 1, OngoingContest_PlayApplauseMinimum
    CallIfEq VAR_RESULT, 2, OngoingContest_PlayApplauseSmall
    CallIfEq VAR_RESULT, 3, OngoingContest_PlayApplauseMedium
    CallIfEq VAR_RESULT, 4, OngoingContest_PlayApplauseLarge
    CallIfGe VAR_RESULT, 5, OngoingContest_PlayApplauseMaximum
    Return

OngoingContest_PlayApplauseMinimum:
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

OngoingContest_PlayApplauseSmall:
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

OngoingContest_PlayApplauseMedium:
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

OngoingContest_PlayApplauseLarge:
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

OngoingContest_PlayApplauseMaximum:
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 10, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

OngoingContest_GetContestantGFX:
    GetContestantObjEventGFX 0, VAR_OBJ_GFX_ID_0
    GetContestantObjEventGFX 1, VAR_OBJ_GFX_ID_1
    GetContestantObjEventGFX 2, VAR_OBJ_GFX_ID_2
    GetContestantObjEventGFX 3, VAR_OBJ_GFX_ID_3
    Return

OngoingContest_PresentWinner:
    GetWinningContestantEntryNum VAR_RESULT
    GetContestantObjEventGFX VAR_RESULT, VAR_OBJ_GFX_ID_4
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT_WINNER
    AddObject CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT_WINNER
    GetWinningContestantEntryNum VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, OngoingContest_HideContestant1
    GoToIfEq VAR_MAP_LOCAL_0, 1, OngoingContest_HideContestant2
    GoToIfEq VAR_MAP_LOCAL_0, 2, OngoingContest_HideContestant3
    GoToIfEq VAR_MAP_LOCAL_0, 3, OngoingContest_HideContestant4
    Return

OngoingContest_HideContestant1:
    RemoveObject CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT1
    Return

OngoingContest_HideContestant2:
    RemoveObject CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT2
    Return

OngoingContest_HideContestant3:
    RemoveObject CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT3
    Return

OngoingContest_HideContestant4:
    RemoveObject CONTEST_HALL_STAGE_ONGOING_CONTEST_CONTESTANT4
    Return

    .balign 4, 0
ContestRegistration_Movement_PlayerToOfficialContestDoor:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_PlayerToLinkContestDoor:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_ApproachPracticeContestDoor:
    WalkNormalEast
    WalkNormalNorth 3
    EndMovement

ContestRegistration_UnusedMovement:
    Delay4
    FaceEast
    Delay4
    FaceSouth
    Delay2
    FaceWest
    Delay1
    FaceNorth
    Delay1
    FaceEast
    Delay1
    FaceSouth
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_FaceContestHall:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_OfficialContestReceptionistToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_LinkContestReceptionistToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
ContestRegistration_Movement_PracticeReceptionistToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
OngoingContest_Movement_LookAround:
    Delay8 2
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
OngoingContest_Movement_LookWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
OngoingContest_Movement_DexterLookNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
OngoingContest_Movement_DexterLookEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
OngoingContest_Movement_LookSouth:
    WalkOnSpotNormalSouth
    EndMovement

ContestRegistration_ReceptionistPracticeContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE
    SetVar VAR_0x8004, CONTEST_RANK_NORMAL
    Message ContestRegistration_Text_PracticeContest
    GoTo ContestRegistration_ReceptionistPracticeContest_JoinPracticeMenu
    End


#define ReceptionistPractice_JoinPracticeMenuItem_Practice 0
#define ReceptionistPractice_JoinPracticeMenuItem_Info 1
#define ReceptionistPractice_JoinPracticeMenuItem_Exit 2

ContestRegistration_ReceptionistPracticeContest_JoinPracticeMenu:
    Message ContestRegistration_Text_JoinPracticeContest
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_Practice, ReceptionistPractice_JoinPracticeMenuItem_Practice
    AddMenuEntryImm ContestRegistration_Text_Info2, ReceptionistPractice_JoinPracticeMenuItem_Info
    AddMenuEntryImm ContestRegistration_Text_Exit2, ReceptionistPractice_JoinPracticeMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_JoinPracticeMenuItem_Practice, ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu
    GoToIfEq VAR_0x8008, ReceptionistPractice_JoinPracticeMenuItem_Info, ContestRegistration_ReceptionistPracticeContest_InfoMenuEntry
    GoToIfEq VAR_0x8008, ReceptionistPractice_JoinPracticeMenuItem_Exit, ContestRegistration_ReceptionistPracticeContest_Exit
    GoTo ContestRegistration_ReceptionistPracticeContest_Exit
    End


#define ReceptionistPractice_PracticeCategoryMenuItem_Visual 0
#define ReceptionistPractice_PracticeCategoryMenuItem_Dance 1
#define ReceptionistPractice_PracticeCategoryMenuItem_Acting 2
#define ReceptionistPractice_PracticeCategoryMenuItem_Cancel 3

ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_VisualPractice, ReceptionistPractice_PracticeCategoryMenuItem_Visual
    AddMenuEntryImm ContestRegistration_Text_DancePractice, ReceptionistPractice_PracticeCategoryMenuItem_Dance
    AddMenuEntryImm ContestRegistration_Text_ActingPractice, ReceptionistPractice_PracticeCategoryMenuItem_Acting
    AddMenuEntryImm ContestRegistration_Text_CancelPractice, ReceptionistPractice_PracticeCategoryMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_PracticeCategoryMenuItem_Visual, ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_VisualSelected
    GoToIfEq VAR_0x8008, ReceptionistPractice_PracticeCategoryMenuItem_Dance, ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_DanceSelected
    GoToIfEq VAR_0x8008, ReceptionistPractice_PracticeCategoryMenuItem_Acting, ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_ActingSelected
    GoTo ContestRegistration_ReceptionistPracticeContest_Exit2
    End

ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_VisualSelected:
    SetVar VAR_MAP_LOCAL_4, FALSE
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_VISUAL
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_DanceSelected:
    SetVar VAR_MAP_LOCAL_4, TRUE
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_DANCE
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_ActingSelected:
    SetVar VAR_MAP_LOCAL_4, FALSE
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_ACTING
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_ReceptionistPracticeContest_Exit2:
    Message ContestRegistration_Text_WeLookForwardToYourNextVisit3
    WaitButton
    GoTo ContestRegistration_Receptionists_End
    End

ContestRegistration_Unused:
    Message ContestRegistration_Text_Unused
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 169, 0
    AddMenuEntryImm 170, 1
    AddMenuEntryImm 171, 2
    AddMenuEntryImm 172, 3
    AddMenuEntryImm 173, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, ContestRegistration_Unused2
    GoToIfEq VAR_0x8008, 1, ContestRegistration_Unused3
    GoToIfEq VAR_0x8008, 2, ContestRegistration_Unused4
    GoToIfEq VAR_0x8008, 3, ContestRegistration_Unused5
    GoTo ContestRegistration_Unused6
    End

ContestRegistration_Unused2:
    SetVar VAR_0x8004, 0
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_Unused3:
    SetVar VAR_0x8004, 1
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_Unused4:
    SetVar VAR_0x8004, 2
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_Unused5:
    SetVar VAR_0x8004, 3
    GoTo ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected
    End

ContestRegistration_Unused6:
    Message ContestRegistration_Text_Unused6
    WaitButton
    GoTo ContestRegistration_Receptionists_End
    End

ContestRegistration_ReceptionistPracticeContest_PracticeCategoryMenu_CategorySelected:
    GoToIfEq VAR_MAP_LOCAL_4, TRUE, ContestRegistration_ReceptionistPracticeContest_RegisterMon
    GoTo ContestRegistration_ReceptionistPracticeContest_ContestTypeMenu

#define ReceptionistPractice_ContestTypeMenuItem_Cool 0
#define ReceptionistPractice_ContestTypeMenuItem_Beauty 1
#define ReceptionistPractice_ContestTypeMenuItem_Cute 2
#define ReceptionistPractice_ContestTypeMenuItem_Smart 3
#define ReceptionistPractice_ContestTypeMenuItem_Tough 4
#define ReceptionistPractice_ContestTypeMenuItem_Exit 5

ContestRegistration_ReceptionistPracticeContest_ContestTypeMenu:
    Message ContestRegistration_Text_WhichContestWouldYouLikeToChallenge
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_Cool, ReceptionistPractice_ContestTypeMenuItem_Cool
    AddMenuEntryImm ContestRegistration_Text_Beauty, ReceptionistPractice_ContestTypeMenuItem_Beauty
    AddMenuEntryImm ContestRegistration_Text_Cute, ReceptionistPractice_ContestTypeMenuItem_Cute
    AddMenuEntryImm ContestRegistration_Text_Smart, ReceptionistPractice_ContestTypeMenuItem_Smart
    AddMenuEntryImm ContestRegistration_Text_Tough, ReceptionistPractice_ContestTypeMenuItem_Tough
    AddMenuEntryImm ContestRegistration_Text_Exit3, ReceptionistPractice_ContestTypeMenuItem_Exit
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_ContestTypeMenuItem_Cool, ContestRegistration_ReceptionistPracticeContest_SelectContestTypeCool
    GoToIfEq VAR_0x8008, ReceptionistPractice_ContestTypeMenuItem_Beauty, ContestRegistration_ReceptionistPracticeContest_SelectContestTypeBeauty
    GoToIfEq VAR_0x8008, ReceptionistPractice_ContestTypeMenuItem_Cute, ContestRegistration_ReceptionistPracticeContest_SelectContestTypeCute
    GoToIfEq VAR_0x8008, ReceptionistPractice_ContestTypeMenuItem_Smart, ContestRegistration_ReceptionistPracticeContest_SelectContestTypeSmart
    GoToIfEq VAR_0x8008, ReceptionistPractice_ContestTypeMenuItem_Tough, ContestRegistration_ReceptionistPracticeContest_SelectContestTypeTough
    GoTo ContestRegistration_ReceptionistPracticeContest_Exit3
    End

ContestRegistration_ReceptionistPracticeContest_SelectContestTypeCool:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo ContestRegistration_ReceptionistPracticeContest_RegisterMon
    End

ContestRegistration_ReceptionistPracticeContest_SelectContestTypeBeauty:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo ContestRegistration_ReceptionistPracticeContest_RegisterMon
    End

ContestRegistration_ReceptionistPracticeContest_SelectContestTypeCute:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo ContestRegistration_ReceptionistPracticeContest_RegisterMon
    End

ContestRegistration_ReceptionistPracticeContest_SelectContestTypeSmart:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo ContestRegistration_ReceptionistPracticeContest_RegisterMon
    End

ContestRegistration_ReceptionistPracticeContest_SelectContestTypeTough:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo ContestRegistration_ReceptionistPracticeContest_RegisterMon
    End

ContestRegistration_ReceptionistPracticeContest_Exit3:
    Message ContestRegistration_Text_WeLookForwardToYourNextVisit4
    WaitButton
    GoTo ContestRegistration_Receptionists_End
    End

#define MenuItemEnter 0

ContestRegistration_ReceptionistPracticeContest_RegisterMon:
    Message ContestRegistration_Text_EnterWhichPokemon2
    Message ContestRegistration_Text_PleaseChoosePokemon2
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_RESULT, 0
ContestRegistration_ReceptionistPracticeContest_TryRegisterMon:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, 0
    TryEnterContestMon VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, MenuItemEnter, ContestRegistration_ReceptionistPracticeContest_RegisterMonDone
    SetMonSummary VAR_MAP_LOCAL_2
    GetMonPartySlot VAR_RESULT
    GoTo ContestRegistration_ReceptionistPracticeContest_TryRegisterMon

ContestRegistration_ReceptionistPracticeContest_RegisterMonDone:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, PARTY_SLOT_NONE, ContestRegistration_ReceptionistPracticeContest_Exit3
    GoTo ContestRegistration_StartContest
    End

#define ReceptionistPractice_InfoMenuItem_Practice 0
#define ReceptionistPractice_InfoMenuItem_Visual 1
#define ReceptionistPractice_InfoMenuItem_Dance 2
#define ReceptionistPractice_InfoMenuItem_Acting 3
#define ReceptionistPractice_InfoMenuItem_Cancel 4

ContestRegistration_ReceptionistPracticeContest_InfoMenuEntry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
ContestRegistration_ReceptionistPracticeContest_InfoMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_Practice1, ReceptionistPractice_InfoMenuItem_Practice
    AddMenuEntryImm ContestRegistration_Text_Visual, ReceptionistPractice_InfoMenuItem_Visual
    AddMenuEntryImm ContestRegistration_Text_Dance, ReceptionistPractice_InfoMenuItem_Dance
    AddMenuEntryImm ContestRegistration_Text_Acting, ReceptionistPractice_InfoMenuItem_Acting
    AddMenuEntryImm ContestRegistration_Text_Cancel, ReceptionistPractice_InfoMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoMenuItem_Practice, ContestRegistration_ReceptionistPracticeContest_InfoPractice
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoMenuItem_Visual, ContestRegistration_ReceptionistPracticeContest_InfoVisualMenu
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoMenuItem_Dance, ContestRegistration_ReceptionistPracticeContest_InfoDanceMenu
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoMenuItem_Acting, ContestRegistration_ReceptionistPracticeContest_InfoActingMenu
    GoTo ContestRegistration_ReceptionistPracticeContest_JoinPracticeMenu
    End

#define ReceptionistPractice_InfoVisualMenuItem_OverallFlow 0
#define ReceptionistPractice_InfoVisualMenuItem_ConditionPoints 1
#define ReceptionistPractice_InfoVisualMenuItem_DressUpPoints 2
#define ReceptionistPractice_InfoVisualMenuItem_Cancel 3

ContestRegistration_ReceptionistPracticeContest_InfoVisualMenuReentry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
ContestRegistration_ReceptionistPracticeContest_InfoVisualMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_OverallFlow, ReceptionistPractice_InfoVisualMenuItem_OverallFlow
    AddMenuEntryImm ContestRegistration_Text_ConditionPoints, ReceptionistPractice_InfoVisualMenuItem_ConditionPoints
    AddMenuEntryImm ContestRegistration_Text_DressUpPoints, ReceptionistPractice_InfoVisualMenuItem_DressUpPoints
    AddMenuEntryImm ContestRegistration_Text_Cancel1, ReceptionistPractice_InfoVisualMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoVisualMenuItem_OverallFlow, ContestRegistration_ReceptionistPracticeContest_InfoVisualOverallFlow
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoVisualMenuItem_ConditionPoints, ContestRegistration_ReceptionistPracticeContest_InfoVisualCondition
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoVisualMenuItem_DressUpPoints, ContestRegistration_ReceptionistPracticeContest_InfoVisualDressUp
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoVisualReturnToInfoMenu
    End

ContestRegistration_ReceptionistPracticeContest_InfoVisualOverallFlow:
    Message ContestRegistration_Text_ExplainVisualOverallFlow
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoVisualMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoVisualCondition:
    Message ContestRegistration_Text_ExplainCondition
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoVisualMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoVisualDressUp:
    Message ContestRegistration_Text_ExplainDressUp
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoVisualMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoVisualReturnToInfoMenu:
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoMenu
    End

#define ReceptionistPractice_InfoDanceMenuItem_OverallFlow 0
#define ReceptionistPractice_InfoDanceMenuItem_BackupDancer 1
#define ReceptionistPractice_InfoDanceMenuItem_MainDancer 2
#define ReceptionistPractice_InfoDanceMenuItem_Panel 3
#define ReceptionistPractice_InfoDanceMenuItem_Cancel 4

ContestRegistration_ReceptionistPracticeContest_InfoDanceMenuReentry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
ContestRegistration_ReceptionistPracticeContest_InfoDanceMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_OverallFlow1, ReceptionistPractice_InfoDanceMenuItem_OverallFlow
    AddMenuEntryImm ContestRegistration_Text_BackupDancer, ReceptionistPractice_InfoDanceMenuItem_BackupDancer
    AddMenuEntryImm ContestRegistration_Text_MainDancer, ReceptionistPractice_InfoDanceMenuItem_MainDancer
    AddMenuEntryImm ContestRegistration_Text_Panel, ReceptionistPractice_InfoDanceMenuItem_Panel
    AddMenuEntryImm ContestRegistration_Text_Cancel2, ReceptionistPractice_InfoDanceMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoDanceMenuItem_OverallFlow, ContestRegistration_ReceptionistPracticeContest_InfoDanceOverallFlow
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoDanceMenuItem_BackupDancer, ContestRegistration_ReceptionistPracticeContest_InfoDanceBackupDancer
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoDanceMenuItem_MainDancer, ContestRegistration_ReceptionistPracticeContest_InfoDanceMainDancer
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoDanceMenuItem_Panel, ContestRegistration_ReceptionistPracticeContest_InfoDancePanel
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoDanceReturnToInfoMenu
    End

ContestRegistration_ReceptionistPracticeContest_InfoDanceOverallFlow:
    Message ContestRegistration_Text_ExplainDanceOverallFlow
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoDanceMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoDanceBackupDancer:
    Message ContestRegistration_Text_ExplainBackupDancer
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoDanceMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoDanceMainDancer:
    Message ContestRegistration_Text_ExplainMainDancer
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoDanceMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoDancePanel:
    Message ContestRegistration_Text_ExplainDanceColorPanels
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoDanceMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoDanceReturnToInfoMenu:
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoMenu
    End


#define ReceptionistPractice_InfoActingMenuItem_OverallFlow 0
#define ReceptionistPractice_InfoActingMenuItem_ContestMoves 1
#define ReceptionistPractice_InfoActingMenuItem_Judges 2
#define ReceptionistPractice_InfoActingMenuItem_Voltage 3
#define ReceptionistPractice_InfoActingMenuItem_Cancel 4

ContestRegistration_ReceptionistPracticeContest_InfoActingMenuReentry:
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
ContestRegistration_ReceptionistPracticeContest_InfoActingMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestRegistration_Text_OverallFlow2, ReceptionistPractice_InfoActingMenuItem_OverallFlow
    AddMenuEntryImm ContestRegistration_Text_ContestMoves, ReceptionistPractice_InfoActingMenuItem_ContestMoves
    AddMenuEntryImm ContestRegistration_Text_Judges, ReceptionistPractice_InfoActingMenuItem_Judges
    AddMenuEntryImm ContestRegistration_Text_Voltage, ReceptionistPractice_InfoActingMenuItem_Voltage
    AddMenuEntryImm ContestRegistration_Text_Cancel3, ReceptionistPractice_InfoActingMenuItem_Cancel
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoActingMenuItem_OverallFlow, ContestRegistration_ReceptionistPracticeContest_InfoActingOverallFlow
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoActingMenuItem_ContestMoves, ContestRegistration_ReceptionistPracticeContest_InfoActingContestMoves
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoActingMenuItem_Judges, ContestRegistration_ReceptionistPracticeContest_InfoActingJudges
    GoToIfEq VAR_0x8008, ReceptionistPractice_InfoActingMenuItem_Voltage, ContestRegistration_ReceptionistPracticeContest_InfoActingVoltage
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoActingReturnToInfoMenu
    End

ContestRegistration_ReceptionistPracticeContest_InfoActingOverallFlow:
    Message ContestRegistration_Text_ExplainActingOverallFlow
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoActingMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoActingContestMoves:
    Message ContestRegistration_Text_ExplainActingScoring
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoActingMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoActingJudges:
    Message ContestRegistration_Text_ExplainActingJudges
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoActingMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoActingVoltage:
    Message ContestRegistration_Text_ExplainVoltage
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoActingMenuReentry
    End

ContestRegistration_ReceptionistPracticeContest_InfoActingReturnToInfoMenu:
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoMenu
    End

ContestRegistration_ReceptionistPracticeContest_InfoPractice:
    Message ContestRegistration_Text_HereYouMayPracticeEachContestCategory
    Message ContestRegistration_Text_WhatWouldYouLikeToKnow2
    GoTo ContestRegistration_ReceptionistPracticeContest_InfoMenu
    End

ContestRegistration_Unused7:
    Message ContestRegistration_Text_WeLookForwardToYourNextVisit2
    GoTo ContestRegistration_Receptionists_End
    End

ContestRegistration_ReceptionistPracticeContest_Exit:
    Message ContestRegistration_Text_WeLookForwardToYourNextVisit1
    WaitButton
ContestRegistration_Receptionists_End:
    CloseMessage
    ReleaseAll
    End

ContestRegistration_LinkContestRecordsDisplay:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ShowLinkContestRecords
    ReleaseAll
    End

    .balign 4, 0
