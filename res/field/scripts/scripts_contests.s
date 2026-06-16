#include "macros/scrcmd.inc"
#include "res/field/events/events_contest_hall_stage_ongoing_contest.h"
#include "res/field/events/events_contest_hall_lobby.h"
#include "res/text/bank/contest_common.h"
#include "res/text/bank/menu_entries.h"

#include "constants/communication/comm_type.h"
#include "constants/contests.h"
#include "constants/map_object.h"
#include "constants/pokemon.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"


    ScriptEntry Contests_LobbyOnFrameExitContestHall @ 0x2648
    ScriptEntry Contests_Dummy9801 @ 0x2649
    ScriptEntry Contests_OngoingContestOnTransition @ 0x264A
    ScriptEntry Contests_LobbyOnTransition @ 0x264B
    ScriptEntry Contests_OngoingContestOnResume @ 0x264C
    ScriptEntry Contests_Dummy9805 @ 0x264D
    ScriptEntry Contests_ReceptionistOfficialContest @ 0x264E
    ScriptEntry Contests_ReceptionistLinkContest @ 0x264F
    ScriptEntry Contests_ReceptionistPracticeContest @ 0x2650
    ScriptEntry Contests_ReceptionistPracticeContest @ 0x2651
    ScriptEntry Contests_ReceptionistPracticeContest @ 0x2652
    ScriptEntry Contests_ReceptionistPracticeContest @ 0x2653
    ScriptEntry Contests_LinkContestRecordsDisplay @ 0x2654
    ScriptEntryEnd

Contests_LobbyOnFrameExitContestHall:
    LockAll
    SetVar VAR_RESULT, 7
    Call Contests_ExitContestHall
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 0
    ReleaseAll
    End

Contests_ExitContestHall:
    ApplyMovement LOCALID_PLAYER, Contests_Movement_ExitContestHall
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_RESULT, 5, ANIMATION_TAG_DOOR_1
    Call Contests_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, Contests_Movement_ExitThroughGate
    WaitMovement
    Call Contests_DoorCloseAnimation
    Return

Contests_ReturnToReceptionist:
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerWalkToOfficialReceptionist
    WaitMovement
    Return

Contests_AssessPracticeResults:
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerWalkToPracticeReceptionist
    WaitMovement
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_VISUAL, Contests_CompletedVisualPractice
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_DANCE, Contests_CompletedDancePractice
    CallIfEq VAR_0x8007, CONTEST_COMPETITION_PRACTICE_ACTING, Contests_CompletedActingPractice
    SetVar VAR_0x8004, 0
    ShowYesNoMenu VAR_RESULT
    Return

Contests_CompletedVisualPractice:
    GoToIfGt VAR_0x8004, 1, Contests_FailedVisualPractice
    Message ContestCommon_Text_CompletedVisualPractice
    Return

Contests_FailedVisualPractice:
    Message ContestCommon_Text_FailedVisualPractice
    Return

Contests_CompletedDancePractice:
    GoToIfGt VAR_0x8004, 1, Contests_FailedDancePractice
    Message ContestCommon_Text_CompletedDancePractice
    Return

Contests_FailedDancePractice:
    Message ContestCommon_Text_FailedDancePractice
    Return

Contests_CompletedActingPractice:
    GoToIfGt VAR_0x8004, 1, Contests_FailedActingPractice
    Message ContestCommon_Text_CompletedActingPractice
    Return

Contests_FailedActingPractice:
    Message ContestCommon_Text_FailedActingPractice
    Return

Contests_DoorOpenAnimation:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

Contests_DoorCloseAnimation:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

    .balign 4, 0
Contests_Movement_ExitContestHall:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
Contests_Movement_ExitThroughGate:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
Contests_Movement_PlayerWalkToPracticeReceptionist:
    WalkNormalWest
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
Contests_Movement_PlayerWalkToOfficialReceptionist:
    WalkNormalWest 2
    WalkOnSpotFastNorth
    EndMovement

Contests_Dummy9801:
    End

Contests_OngoingContestOnTransition:
    CallIfEq VAR_ONGOING_CONTEST, FALSE, Contests_HideOngoingContestContestants
    GoToIfEq VAR_ONGOING_CONTEST, FALSE, Contests_OngoingContestOnTransitionEnd
    HidePoketch
Contests_OngoingContestOnTransitionEnd:
    End

Contests_HideOngoingContestContestants:
    SetVar VAR_ONGOING_CONTEST, FALSE
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT1
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT2
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT3
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT4
    SetFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT_WINNER
    Return

Contests_LobbyOnTransition:
    ShowPoketch
    Call Contests_TryMoveRichBoyAwayFromReceptionist
    Call Contests_HideOngoingContestContestants
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_CONTEST_HALL, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, ContestHallLobby_HideReporter
    ClearFlag FLAG_HIDE_CONTEST_HALL_LOBBY_REPORTER
    End

ContestHallLobby_HideReporter:
    SetFlag FLAG_HIDE_CONTEST_HALL_LOBBY_REPORTER
    End

Contests_TryMoveRichBoyAwayFromReceptionist:
    GoToIfSet FLAG_TALKED_TO_CONTEST_HALL_LOBBY_RICH_BOY, Contests_MoveRichBoyAwayFromReceptionist
    Return

Contests_MoveRichBoyAwayFromReceptionist:
    SetObjectEventPos LOCALID_CONTEST_LOBBY_RICH_BOY, 24, 6
    SetObjectEventMovementType LOCALID_CONTEST_LOBBY_RICH_BOY, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir LOCALID_CONTEST_LOBBY_RICH_BOY, DIR_SOUTH
    Return

Contests_OngoingContestOnResume:
    CallIfEq VAR_ONGOING_CONTEST, TRUE, Contests_HidePlayer
    End

Contests_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

Contests_Dummy9805:
    NPCMessage ContestCommon_Text_Dummy0
    End

Contests_ReceptionistOfficialContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL
    SetVar VAR_0x8007, CONTEST_COMPETITION_LINK_OR_OFFICIAL
    Message ContestCommon_Text_Welcome
    GoTo Contests_AskEnterContest
    End

Contests_ReceptionistLinkContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_LINK
    SetVar VAR_0x8007, CONTEST_COMPETITION_LINK_OR_OFFICIAL
    Message ContestCommon_Text_WelcomeLinkContest
    GoTo Contests_AskEnterContest
    End

Contests_AskEnterContest:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_AskEnterLinkContest
    Message ContestCommon_Text_EnterPokemonInAContest
    GoTo Contests_ContestMenu


#define MENU_ENTRY_ENTER 0
#define MENU_ENTRY_INFO 1
#define MENU_ENTRY_EXIT 2

Contests_AskEnterLinkContest:
    Message ContestCommon_Text_EnterLinkContest
Contests_ContestMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_ContestEnter, MENU_ENTRY_ENTER
    AddMenuEntryImm ContestCommon_Text_ContestInfo, MENU_ENTRY_INFO
    AddMenuEntryImm ContestCommon_Text_ContestExit, MENU_ENTRY_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_ENTER, Contests_EnterContest
    GoToIfEq VAR_0x8008, MENU_ENTRY_INFO, Contests_ContestInfo
    GoTo Contests_ContestMenuExit
    End

Contests_ContestMenuExit:
    EndCommunication
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 0
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Message ContestCommon_Text_LookForwardToParticipation
    WaitButton
    CloseMessage
    ReleaseAll
    End

Contests_EnterContest:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_EnterLinkContest
    GoTo Contests_ContestRankMenu
    End

Contests_EnterLinkContest:
    HealParty
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0  @ VAR_MAP_LOCAL_0 is set in CommonScript_SaveGame
    GoToIfEq VAR_RESULT, TRUE, Contests_SetLinkContestSavedGame
    GoTo Contests_ContestMenuExit
    End

Contests_SetLinkContestSavedGame:
    SetVar VAR_0x8004, 2
    GoTo Contests_OfficialContestTypeMenu
    End

Contests_ContestInfo:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_LinkContestInfo
    GoTo Contests_OfficialContestInfo
    End

Contests_LinkContestInfo:
    Message ContestCommon_Text_ExplainLinkContest
    GoTo Contests_AskEnterContest


#define MENU_ENTRY_CONTEST_BASICS 0
#define MENU_ENTRY_TYPES_OF_CONTESTS 1
#define MENU_ENTRY_CONTESTS_RANKS 2
#define MENU_ENTRY_OFFICIAL_INFO_CANCEL 3

Contests_OfficialContestInfo:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow1
Contests_OfficialContestInfoMenu:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestBasics, MENU_ENTRY_CONTEST_BASICS
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_TypesOfContests, MENU_ENTRY_TYPES_OF_CONTESTS
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestRanks, MENU_ENTRY_CONTESTS_RANKS
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_Cancel, MENU_ENTRY_OFFICIAL_INFO_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_CONTEST_BASICS, Contests_OfficialContestInfoBasics
    GoToIfEq VAR_0x8008, MENU_ENTRY_TYPES_OF_CONTESTS, Contests_OfficialContestInfoTypes
    GoToIfEq VAR_0x8008, MENU_ENTRY_CONTESTS_RANKS, Contests_OfficialContestInfoRanks
    GoTo Contests_AskEnterContest
    End

Contests_OfficialContestInfoBasics:
    GoTo Contests_OfficialContestInfoBasicsMenu
    End

Contests_OfficialContestInfoTypes:
    Message ContestCommon_Text_ExplainContestTypes
    GoTo Contests_OfficialContestInfo
    End

Contests_OfficialContestInfoRanks:
    Message ContestCommon_Text_ExplainContestRanks
    GoTo Contests_OfficialContestInfo
    End

#define MENU_ENTRY_WHATS_A_CONTEST 0
#define MENU_ENTRY_VISUAL_COMPETITION 1
#define MENU_ENTRY_DANCING_COMPETITION 2
#define MENU_ENTRY_ACTING_COMPETITION 3
#define MENU_ENTRY_BASICS_CANCEL 4

Contests_OfficialContestInfoBasicsMenuReentry:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
Contests_OfficialContestInfoBasicsMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_WhatsAContest, MENU_ENTRY_WHATS_A_CONTEST
    AddMenuEntryImm ContestCommon_Text_VisualCompetition, MENU_ENTRY_VISUAL_COMPETITION
    AddMenuEntryImm ContestCommon_Text_DanceCompetition, MENU_ENTRY_DANCING_COMPETITION
    AddMenuEntryImm ContestCommon_Text_ActingCompetition, MENU_ENTRY_ACTING_COMPETITION
    AddMenuEntryImm ContestCommon_Text_CancelCompetition, MENU_ENTRY_BASICS_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_WHATS_A_CONTEST, Contests_OfficialContestInfoWhatsAContest
    GoToIfEq VAR_0x8008, MENU_ENTRY_VISUAL_COMPETITION, Contests_OfficialContestInfoVisualCompetition
    GoToIfEq VAR_0x8008, MENU_ENTRY_DANCING_COMPETITION, Contests_OfficialContestInfoDanceCompetition
    GoToIfEq VAR_0x8008, MENU_ENTRY_ACTING_COMPETITION, Contests_OfficialContestInfoActingCompetition
    GoTo Contests_OfficialContestInfoMenu
    End

Contests_OfficialContestInfoWhatsAContest:
    Message ContestCommon_Text_ExplainOfficialContest
    GoTo Contests_OfficialContestInfoBasicsMenuReentry
    End

Contests_OfficialContestInfoVisualCompetition:
    Message ContestCommon_Text_ExplainVisualContest
    GoTo Contests_OfficialContestInfoBasicsMenuReentry
    End

Contests_OfficialContestInfoDanceCompetition:
    Message ContestCommon_Text_ExplainDanceContest
    GoTo Contests_OfficialContestInfoBasicsMenuReentry
    End

Contests_OfficialContestInfoActingCompetition:
    Message ContestCommon_Text_ExplainActingContest
    GoTo Contests_OfficialContestInfoBasicsMenuReentry
    End


#define MENU_ENTRY_NORMAL_RANK 0
#define MENU_ENTRY_GREAT_RANK 1
#define MENU_ENTRY_ULTRA_RANK 2
#define MENU_ENTRY_MASTER_RANK 3
#define MENU_ENTRY_RANK_EXIT 4

Contests_ContestRankMenu:
    Message ContestCommon_Text_SelectRank
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_NormalRank, MENU_ENTRY_NORMAL_RANK
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_GreatRank, MENU_ENTRY_GREAT_RANK
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_UltraRank, MENU_ENTRY_ULTRA_RANK
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_MasterRank, MENU_ENTRY_MASTER_RANK
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestRankExit, MENU_ENTRY_RANK_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_NORMAL_RANK, Contests_OfficialContestNormalRank
    GoToIfEq VAR_0x8008, MENU_ENTRY_GREAT_RANK, Contests_OfficialContestGreatRank
    GoToIfEq VAR_0x8008, MENU_ENTRY_ULTRA_RANK, Contests_OfficialContestUltraRank
    GoToIfEq VAR_0x8008, MENU_ENTRY_MASTER_RANK, Contests_OfficialContestMasterRank
    GoTo Contests_ContestMenuExit
    End

Contests_OfficialContestNormalRank:
    SetVar VAR_0x8004, CONTEST_RANK_NORMAL
    GoTo Contests_OfficialContestTypeMenu
    End

Contests_OfficialContestGreatRank:
    SetVar VAR_0x8004, CONTEST_RANK_GREAT
    GoTo Contests_OfficialContestTypeMenu
    End

Contests_OfficialContestUltraRank:
    SetVar VAR_0x8004, CONTEST_RANK_ULTRA
    GoTo Contests_OfficialContestTypeMenu
    End

Contests_OfficialContestMasterRank:
    SetVar VAR_0x8004, CONTEST_RANK_MASTER
    GoTo Contests_OfficialContestTypeMenu
    End


#define MENU_ENTRY_COOL 0
#define MENU_ENTRY_BEAUTY 1
#define MENU_ENTRY_CUTE 2
#define MENU_ENTRY_SMART 3
#define MENU_ENTRY_TOUGH 4
#define MENU_ENTRY_TYPE_EXIT 5

Contests_OfficialContestTypeMenu:
    Message ContestCommon_Text_SelectContestType
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_CoolContest, MENU_ENTRY_COOL
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_BeautyContest, MENU_ENTRY_BEAUTY
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_CuteContest, MENU_ENTRY_CUTE
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_SmartContest, MENU_ENTRY_SMART
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ToughContest, MENU_ENTRY_TOUGH
    AddMenuEntryImm MenuEntries_Text_ContestRegistration_ContestTypeExit, MENU_ENTRY_TYPE_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_COOL, Contests_OfficialContestCool
    GoToIfEq VAR_0x8008, MENU_ENTRY_BEAUTY, Contests_OfficialContestBeauty
    GoToIfEq VAR_0x8008, MENU_ENTRY_CUTE, Contests_OfficialContestCute
    GoToIfEq VAR_0x8008, MENU_ENTRY_SMART, Contests_OfficialContestSmart
    GoToIfEq VAR_0x8008, MENU_ENTRY_TOUGH, Contests_OfficialContestTough
    GoTo Contests_ContestMenuExit
    End

Contests_OfficialContestCool:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_OfficialContestBeauty:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_OfficialContestCute:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_OfficialContestSmart:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_OfficialContestTough:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_OfficialContestRegisterMon:
    Message ContestCommon_Text_EnterWhichPokemonOfficial
    Message ContestCommon_Text_PleaseChoosePokemonOfficial
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, Contests_UseSelectedContestRank
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_UseDefaultContestRank
    SetVar VAR_RESULT, 0
Contests_OfficialContestTryRegisterMon:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_4
    GetContestPartyMenuResult VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Contests_OfficialContestRegisterMonDone
    SetMonSummary VAR_MAP_LOCAL_2
    GetMonPartySlot VAR_RESULT
    GoTo Contests_OfficialContestTryRegisterMon

Contests_OfficialContestRegisterMonDone:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, PARTY_SLOT_NONE, Contests_OfficialContestAskCancel
    GoTo Contests_OfficialContestStart
    End

Contests_OfficialContestAskCancel:
    Message ContestCommon_Text_CancelEntry
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Contests_ContestMenuExit
    GoTo Contests_OfficialContestRegisterMon
    End

Contests_UseSelectedContestRank:
    SetVar VAR_MAP_LOCAL_4, FALSE
    Return

Contests_UseDefaultContestRank:
    SetVar VAR_MAP_LOCAL_4, TRUE
    Return

Contests_OfficialContestStart:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_LinkContestEstablishGroup
    GoTo Contests_StartContest
    End


#define MENU_ENTRY_JOIN_GROUP 0
#define MENU_ENTRY_BECOME_LEADER 1
#define MENU_ENTRY_ESTABLISH_GROUP_EXIT 2

Contests_LinkContestEstablishGroup:
    Message ContestCommon_Text_OnePersonMustBeLeader
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, MENU_ENTRY_JOIN_GROUP
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, MENU_ENTRY_BECOME_LEADER
    AddMenuEntryImm MenuEntries_Text_Exit, MENU_ENTRY_ESTABLISH_GROUP_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_JOIN_GROUP, Contests_LinkContestJoinGroup
    GoToIfEq VAR_0x8008, MENU_ENTRY_BECOME_LEADER, Contests_LinkContestBecomeLeader
    GoTo Contests_ContestMenuExit
    End

Contests_LinkContestJoinGroup:
    Message ContestCommon_Text_CommunicationsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Contests_LinkContestEstablishGroup
    CloseMessage
    StartBattleClient COMM_TYPE_CONTEST, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, Contests_LinkContestJoinGroupCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, Contests_LinkContestJoinGroupError
    GoTo Contests_StartContest
    End

Contests_LinkContestJoinGroupCancel:
    GoTo Contests_LinkContestEstablishGroup
    End

Contests_LinkContestJoinGroupError:
    GoTo Contests_LinkContestEstablishGroup
    End

Contests_LinkContestBecomeLeader:
    Message ContestCommon_Text_CommunicationsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, Contests_LinkContestEstablishGroup
    CloseMessage
    StartBattleServer COMM_TYPE_CONTEST, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, Contests_LinkContestBecomeLeaderCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, Contests_LinkContestBecomeLeaderError
    GoTo Contests_StartContest
    End

Contests_LinkContestBecomeLeaderCancel:
    GoTo Contests_LinkContestEstablishGroup
    End

Contests_LinkContestBecomeLeaderError:
    EndCommunication
    CloseMessage
    ReleaseAll
    End

Contests_StartContest:
    NewContest VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    CallIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_SetupLinkContest
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, Contests_RegisteredForPractice
    GetContestRegistrationEntryNum VAR_RESULT
    AddVar VAR_RESULT, 1
    BufferContestRegistrationEntryNumber VAR_RESULT, 0
    MessageSynchronized ContestCommon_Text_YourPokemonHasBeenAccepted
    GetContestRegistrationEntryNum VAR_RESULT
    BufferContestantTrainerName VAR_RESULT, 0
    BufferContestantMonName VAR_RESULT, 1
    MessageSynchronized ContestCommon_Text_ContestWillStart
    StartContestCommSync 25
    WaitForCommSyncState 25
    CloseMessage
Contests_SelectContestDoor:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, Contests_OfficialContestDoor
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_LINK, Contests_LinkContestDoor
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, Contests_PracticeContestDoor
    End

Contests_RegisteredForPractice:
    GetContestRegistrationEntryNum VAR_RESULT
    AddVar VAR_RESULT, 1
    BufferContestRegistrationEntryNumber VAR_RESULT, 0
    Message ContestCommon_Text_RegisteredForPractice
    GetContestRegistrationEntryNum VAR_RESULT
    BufferContestantTrainerName VAR_RESULT, 0
    BufferContestantMonName VAR_RESULT, 1
    CloseMessage
    GoTo Contests_SelectContestDoor

Contests_SetupLinkContest:
    Message ContestCommon_Text_CommunicatingStandBy
    WaitForLinkContestSetup
    Return

Contests_OfficialContestDoor:
    LoadDoorAnimation 0, 0, 19, 5, ANIMATION_TAG_DOOR_1
    Call Contests_DoorOpenAnimation
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerWalkToOfficialContestDoor
    ApplyMovement LOCALID_CONTEST_LOBBY_RECEPTIONIST_OFFICIAL_CONTEST, Contests_Movement_OfficialReceptionistWalkToPlayer
    WaitMovement
    Call Contests_DoorCloseAnimation
    WaitMovement
    GoTo Contests_ChangeIntoContestAttire
    End

Contests_LinkContestDoor:
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 5
    LoadDoorAnimation 0, 0, 7, 5, ANIMATION_TAG_DOOR_1
    Call Contests_DoorOpenAnimation
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerWalkToLinkContestDoor
    ApplyMovement LOCALID_CONTEST_LOBBY_RECEPTIONIST_LINK_CONTEST, Contests_Movement_LinkReceptionistWalkToPlayer
    WaitMovement
    Call Contests_DoorCloseAnimation
    WaitMovement
    GoTo Contests_ChangeIntoContestAttire
    End

Contests_PracticeContestDoor:
    LoadDoorAnimation 0, 0, 28, 5, ANIMATION_TAG_DOOR_1
    Call Contests_DoorOpenAnimation
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerWalkToPracticeContestDoor
    ApplyMovement LOCALID_CONTEST_LOBBY_RECEPTIONIST_PRACTICE_CONTEST, Contests_Movement_PracticeReceptionistWalkToPlayer
    WaitMovement
    Call Contests_DoorCloseAnimation
    WaitMovement
    MessageSynchronized ContestCommon_Text_RightThisWayPlease2
    CloseMessage
    GoTo Contests_ChangeIntoContestAttire
    End

Contests_ChangeIntoContestAttire:
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE, Contests_StartPracticeContest
    ChangeIntoContestAttire
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Contests_PlayerChangedIntoTuxedo
    GoTo Contests_PlayerChangedIntoDress
    End

Contests_PlayerChangedIntoTuxedo:
    BufferPlayerName 0
    MessageSynchronized ContestCommon_Text_PlayerChangedIntoTuxedo
    GoTo Contests_ThisWayToContestHall
    End

Contests_PlayerChangedIntoDress:
    BufferPlayerName 0
    MessageSynchronized ContestCommon_Text_PlayerChangedIntoDress
    GoTo Contests_ThisWayToContestHall
    End

Contests_ThisWayToContestHall:
    ApplyMovement LOCALID_PLAYER, Contests_Movement_PlayerFaceContestHall
    WaitMovement
    MessageSynchronized ContestCommon_Text_RightThisWayPlease1
    StartContestCommSync 26
    WaitForCommSyncState 26
    CloseMessage
    GoTo Contest_DoContest
    End

Contests_StartPracticeContest:
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
    Call Contests_ExitContestHall
    Call Contests_AssessPracticeResults
    GoToIfEq VAR_RESULT, MENU_YES, Contests_StartContest
    Message ContestCommon_Text_LookForwardToNextVisit1
    WaitButton
    CloseMessage
    ReleaseAll
    End

Contest_DoContest:
    ClearFlag FLAG_HIDE_HEARTHOME_HIKER_3
    SetVar VAR_ONGOING_CONTEST, TRUE
    Call Contests_GetContestantsGFX
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
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookAround
    WaitMovement
    BufferContestRank 0
    BufferContestType 1
    MessageSynchronized ContestCommon_Text_AboutToGetUnderWay
    StartContestCommSync 19
    WaitForCommSyncState 19
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookWest
    WaitMovement
    BufferContestantTrainerName 0, 0
    MessageSynchronized ContestCommon_Text_IntroduceFirstContestant
    GetContestantMonContestFame 0, VAR_RESULT
    StartContestCameraFlashTask 0
    Call Contests_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 20
    WaitForCommSyncState 20
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookNorth
    WaitMovement
    BufferContestantTrainerName 1, 0
    MessageSynchronized ContestCommon_Text_IntroduceSecondContestant
    GetContestantMonContestFame 1, VAR_RESULT
    StartContestCameraFlashTask 1
    Call Contests_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 21
    WaitForCommSyncState 21
    WaitTime 8, VAR_RESULT
    BufferContestantTrainerName 2, 0
    MessageSynchronized ContestCommon_Text_IntroduceThirdContestant
    GetContestantMonContestFame 2, VAR_RESULT
    StartContestCameraFlashTask 2
    Call Contests_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 22
    WaitForCommSyncState 22
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookEast
    WaitMovement
    BufferContestantTrainerName 3, 0
    MessageSynchronized ContestCommon_Text_IntroduceFourthContestant
    GetContestantMonContestFame 3, VAR_RESULT
    StartContestCameraFlashTask 3
    Call Contests_PlayApplause
    WaitForContestCameraFlashTask
    StartContestCommSync 23
    WaitForCommSyncState 23
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookSouth
    WaitMovement
    MessageSynchronized ContestCommon_Text_DressUpYourPokemon
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
    Call Contests_PresentWinner
    ScrCmd_2B0
    FadeScreenIn FADE_SCREEN_SPEED_FAST, COLOR_WHITE
    WaitFadeScreen
    GetWinningContestantEntryNum VAR_RESULT
    StartContestCameraFlashTask VAR_RESULT
    GetContestantMonContestFame VAR_RESULT, VAR_RESULT
    Call Contests_PlayApplause
    WaitForContestCameraFlashTask
    MessageSynchronized ContestCommon_Text_Congratulations
    GetShouldSkipAwardCeremony VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, Contests_EndContest
    BufferWinningContestantTrainerName 0
    BufferWinningContestantMonName 1
    SetRibbonName 2
    CheckPlayerMonHasRibbon VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, Contests_AwardCeremony
    MessageSynchronized ContestCommon_Text_ExpectGreatThingsFromWinners
    GoTo Contests_EndContest

Contests_AwardCeremony:
    MessageSynchronized ContestCommon_Text_LetsRecognizeOurWinner
    CloseMessage
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookEast
    ApplyMovement LOCALID_ONGOING_CONTEST_CONTESTANT_WINNER, Contests_Movement_DexterLookWest
    WaitMovement
    WaitTime 15, VAR_RESULT
    PlayFanfare SEQ_FANFA1
    WaitFanfare
    ApplyMovement LOCALID_ONGOING_CONTEST_MCDEXTER, Contests_Movement_DexterLookSouth
    ApplyMovement LOCALID_ONGOING_CONTEST_CONTESTANT_WINNER, Contests_Movement_DexterLookSouth
    WaitMovement
Contests_EndContest:
    MessageSynchronized ContestCommon_Text_LookForwardToNextChallenge
    CloseMessage
    PlaySE SEQ_SE_DP_CON_F007
    GetWinningContestantEntryNum VAR_RESULT
    StartContestCameraFlashTask VAR_RESULT
    GetContestantMonContestFame VAR_RESULT, VAR_RESULT
    Call Contests_PlayApplause
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
    GoToIfEq VAR_MAP_LOCAL_3, CONTEST_MODE_OFFICIAL, Contests_OfficialContestReturnToReceptionist
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 7, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 7
    Call Contests_ExitContestHall
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 0
    GoTo Contests_End

Contests_OfficialContestReturnToReceptionist:
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 19
    Call Contests_ExitContestHall
    Call Contests_ReturnToReceptionist
    GoToIfEq VAR_0x8004, -1, Contests_ThankYouForParticipating
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Message ContestCommon_Text_HeresYourPrize
    SetVar VAR_0x8005, 1
    Common_GiveAccessory
Contests_ThankYouForParticipating:
    Message ContestCommon_Text_ThankYouForParticipating
    WaitButton
    CloseMessage
Contests_End:
    End

Contests_PlayApplause:
    PlaySE SEQ_SE_DP_CON_F007
    CallIfEq VAR_RESULT, 1, Contests_PlayApplauseMinimum
    CallIfEq VAR_RESULT, 2, Contests_PlayApplauseSmall
    CallIfEq VAR_RESULT, 3, Contests_PlayApplauseMedium
    CallIfEq VAR_RESULT, 4, Contests_PlayApplauseLarge
    CallIfGe VAR_RESULT, 5, Contests_PlayApplauseMaximum
    Return

Contests_PlayApplauseMinimum:
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

Contests_PlayApplauseSmall:
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

Contests_PlayApplauseMedium:
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

Contests_PlayApplauseLarge:
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    PlaySE SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlaySE SEQ_SE_DP_CON_015
    WaitSE SEQ_SE_DP_CON_015
    Return

Contests_PlayApplauseMaximum:
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

Contests_GetContestantsGFX:
    GetContestantObjEventGFX 0, VAR_OBJ_GFX_ID_0
    GetContestantObjEventGFX 1, VAR_OBJ_GFX_ID_1
    GetContestantObjEventGFX 2, VAR_OBJ_GFX_ID_2
    GetContestantObjEventGFX 3, VAR_OBJ_GFX_ID_3
    Return

Contests_PresentWinner:
    GetWinningContestantEntryNum VAR_RESULT
    GetContestantObjEventGFX VAR_RESULT, VAR_OBJ_GFX_ID_4
    ClearFlag FLAG_HIDE_CONTEST_HALL_STAGE_CONTESTANT_WINNER
    AddObject LOCALID_ONGOING_CONTEST_CONTESTANT_WINNER
    GetWinningContestantEntryNum VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, Contests_HideContestant1
    GoToIfEq VAR_MAP_LOCAL_0, 1, Contests_HideContestant2
    GoToIfEq VAR_MAP_LOCAL_0, 2, Contests_HideContestant3
    GoToIfEq VAR_MAP_LOCAL_0, 3, Contests_HideContestant4
    Return

Contests_HideContestant1:
    RemoveObject LOCALID_ONGOING_CONTEST_CONTESTANT1
    Return

Contests_HideContestant2:
    RemoveObject LOCALID_ONGOING_CONTEST_CONTESTANT2
    Return

Contests_HideContestant3:
    RemoveObject LOCALID_ONGOING_CONTEST_CONTESTANT3
    Return

Contests_HideContestant4:
    RemoveObject LOCALID_ONGOING_CONTEST_CONTESTANT4
    Return

    .balign 4, 0
Contests_Movement_PlayerWalkToOfficialContestDoor:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Contests_Movement_PlayerWalkToLinkContestDoor:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Contests_Movement_PlayerWalkToPracticeContestDoor:
    WalkNormalEast
    WalkNormalNorth 3
    EndMovement

Contests_Movement_Unused:
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
Contests_Movement_PlayerFaceContestHall:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Contests_Movement_OfficialReceptionistWalkToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
Contests_Movement_LinkReceptionistWalkToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
Contests_Movement_PracticeReceptionistWalkToPlayer:
    Delay8 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Contests_Movement_DexterLookAround:
    Delay8 2
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
Contests_Movement_DexterLookWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
Contests_Movement_DexterLookNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
Contests_Movement_DexterLookEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
Contests_Movement_DexterLookSouth:
    WalkOnSpotNormalSouth
    EndMovement

Contests_ReceptionistPracticeContest:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, CONTEST_MODE_PRACTICE
    SetVar VAR_0x8004, CONTEST_RANK_NORMAL
    Message ContestCommon_Text_IntroductionPracticeContest
    GoTo Contests_PracticeContestMenu
    End


#define MENU_ENTRY_PRACTICE_JOIN 0
#define MENU_ENTRY_PRACTICE_INFO 1
#define MENU_ENTRY_PRACTICE_EXIT 2

Contests_PracticeContestMenu:
    Message ContestCommon_Text_JoinPracticeContest
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_Practice, MENU_ENTRY_PRACTICE_JOIN
    AddMenuEntryImm ContestCommon_Text_Info2, MENU_ENTRY_PRACTICE_INFO
    AddMenuEntryImm ContestCommon_Text_Exit2, MENU_ENTRY_PRACTICE_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_JOIN, Contests_PracticeContestCategoryMenu
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_INFO, Contests_PracticeContestInfo
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_EXIT, Contests_PracticeContestExit
    GoTo Contests_PracticeContestExit
    End


#define MENU_ENTRY_PRACTICE_VISUAL 0
#define MENU_ENTRY_PRACTICE_DANCE 1
#define MENU_ENTRY_PRACTICE_ACTING 2
#define MENU_ENTRY_PRACTICE_CATEGORY_CANCEL 3

Contests_PracticeContestCategoryMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_VisualPractice, MENU_ENTRY_PRACTICE_VISUAL
    AddMenuEntryImm ContestCommon_Text_DancePractice, MENU_ENTRY_PRACTICE_DANCE
    AddMenuEntryImm ContestCommon_Text_ActingPractice, MENU_ENTRY_PRACTICE_ACTING
    AddMenuEntryImm ContestCommon_Text_CancelPractice, MENU_ENTRY_PRACTICE_CATEGORY_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_VISUAL, Contests_PracticeContestVisual
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_DANCE, Contests_PracticeContestDance
    GoToIfEq VAR_0x8008, MENU_ENTRY_PRACTICE_ACTING, Contests_PracticeContestActing
    GoTo Contests_PracticeContestCategoryMenuExit
    End

Contests_PracticeContestVisual:
    SetVar VAR_MAP_LOCAL_4, FALSE
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_VISUAL
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_PracticeContestDance:
    SetVar VAR_MAP_LOCAL_4, TRUE
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_DANCE
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_PracticeContestActing:
    SetVar VAR_MAP_LOCAL_4, FALSE
    SetVar VAR_0x8007, CONTEST_COMPETITION_PRACTICE_ACTING
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_PracticeContestCategoryMenuExit:
    Message ContestCommon_Text_LookForwardToNextVisit3
    WaitButton
    GoTo Contests_ReceptionistsEnd
    End

Contests_Unused:
    Message ContestCommon_Text_Unused
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_Dummy169, 0
    AddMenuEntryImm ContestCommon_Text_Dummy170, 1
    AddMenuEntryImm ContestCommon_Text_Dummy171, 2
    AddMenuEntryImm ContestCommon_Text_Dummy172, 3
    AddMenuEntryImm ContestCommon_Text_Dummy173, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Contests_Unused2
    GoToIfEq VAR_0x8008, 1, Contests_Unused3
    GoToIfEq VAR_0x8008, 2, Contests_Unused4
    GoToIfEq VAR_0x8008, 3, Contests_Unused5
    GoTo Contests_Unused6
    End

Contests_Unused2:
    SetVar VAR_0x8004, 0
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_Unused3:
    SetVar VAR_0x8004, 1
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_Unused4:
    SetVar VAR_0x8004, 2
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_Unused5:
    SetVar VAR_0x8004, 3
    GoTo Contests_PracticeContestCategorySelected
    End

Contests_Unused6:
    Message ContestCommon_Text_Unused6
    WaitButton
    GoTo Contests_ReceptionistsEnd
    End

Contests_PracticeContestCategorySelected:
    GoToIfEq VAR_MAP_LOCAL_4, TRUE, Contests_PracticeContestRegisterMon
    GoTo Contests_PracticeContestTypeMenu

Contests_PracticeContestTypeMenu:
    Message ContestCommon_Text_ChallengeWhichContest
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_Cool, MENU_ENTRY_COOL
    AddMenuEntryImm ContestCommon_Text_Beauty, MENU_ENTRY_BEAUTY
    AddMenuEntryImm ContestCommon_Text_Cute, MENU_ENTRY_CUTE
    AddMenuEntryImm ContestCommon_Text_Smart, MENU_ENTRY_SMART
    AddMenuEntryImm ContestCommon_Text_Tough, MENU_ENTRY_TOUGH
    AddMenuEntryImm ContestCommon_Text_Exit3, MENU_ENTRY_TYPE_EXIT
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_COOL, Contests_PracticeContestCool
    GoToIfEq VAR_0x8008, MENU_ENTRY_BEAUTY, Contests_PracticeContestBeauty
    GoToIfEq VAR_0x8008, MENU_ENTRY_CUTE, Contests_PracticeContestCute
    GoToIfEq VAR_0x8008, MENU_ENTRY_SMART, Contests_PracticeContestSmart
    GoToIfEq VAR_0x8008, MENU_ENTRY_TOUGH, Contests_PracticeContestTough
    GoTo Contests_PracticeContestTypeOrRegisterExit
    End

Contests_PracticeContestCool:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo Contests_PracticeContestRegisterMon
    End

Contests_PracticeContestBeauty:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo Contests_PracticeContestRegisterMon
    End

Contests_PracticeContestCute:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo Contests_PracticeContestRegisterMon
    End

Contests_PracticeContestSmart:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo Contests_PracticeContestRegisterMon
    End

Contests_PracticeContestTough:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo Contests_PracticeContestRegisterMon
    End

Contests_PracticeContestTypeOrRegisterExit:
    Message ContestCommon_Text_LookForwardToNextVisit4
    WaitButton
    GoTo Contests_ReceptionistsEnd
    End

Contests_PracticeContestRegisterMon:
    Message ContestCommon_Text_EnterWhichPokemonPractice
    Message ContestCommon_Text_PleaseChoosePokemonPractice
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_RESULT, 0
Contests_PracticeContestTryRegisterMon:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, 0
    GetContestPartyMenuResult VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, Contests_PracticeContestRegisterMonDone
    SetMonSummary VAR_MAP_LOCAL_2
    GetMonPartySlot VAR_RESULT
    GoTo Contests_PracticeContestTryRegisterMon

Contests_PracticeContestRegisterMonDone:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, PARTY_SLOT_NONE, Contests_PracticeContestTypeOrRegisterExit
    GoTo Contests_StartContest
    End

#define MENU_ENTRY_INFO_PRACTICE 0
#define MENU_ENTRY_INFO_VISUAL 1
#define MENU_ENTRY_INFO_DANCE 2
#define MENU_ENTRY_INFO_ACTING 3
#define MENU_ENTRY_PRACTICE_INFO_CANCEL 4

Contests_PracticeContestInfo:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
Contests_PracticeContestInfoMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_Practice1, MENU_ENTRY_INFO_PRACTICE
    AddMenuEntryImm ContestCommon_Text_Visual, MENU_ENTRY_INFO_VISUAL
    AddMenuEntryImm ContestCommon_Text_Dance, MENU_ENTRY_INFO_DANCE
    AddMenuEntryImm ContestCommon_Text_Acting, MENU_ENTRY_INFO_ACTING
    AddMenuEntryImm ContestCommon_Text_Cancel, MENU_ENTRY_PRACTICE_INFO_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_INFO_PRACTICE, Contests_PracticeContestInfoPractice
    GoToIfEq VAR_0x8008, MENU_ENTRY_INFO_VISUAL, Contests_PracticeContestInfoVisualMenu
    GoToIfEq VAR_0x8008, MENU_ENTRY_INFO_DANCE, Contests_PracticeContestInfoDanceMenu
    GoToIfEq VAR_0x8008, MENU_ENTRY_INFO_ACTING, Contests_PracticeContestInfoActingMenu
    GoTo Contests_PracticeContestMenu
    End

#define MENU_ENTRY_VISUAL_INFO_OVERALL_FLOW 0
#define MENU_ENTRY_VISUAL_INFO_CONDITION_POINTS 1
#define MENU_ENTRY_VISUAL_INFO_DRESS_UP_POINTS 2
#define MENU_ENTRY_VISUAL_INFO_CANCEL 3

Contests_PracticeContestInfoVisualMenuReentry:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
Contests_PracticeContestInfoVisualMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_OverallFlowVisual, MENU_ENTRY_VISUAL_INFO_OVERALL_FLOW
    AddMenuEntryImm ContestCommon_Text_ConditionPoints, MENU_ENTRY_VISUAL_INFO_CONDITION_POINTS
    AddMenuEntryImm ContestCommon_Text_DressUpPoints, MENU_ENTRY_VISUAL_INFO_DRESS_UP_POINTS
    AddMenuEntryImm ContestCommon_Text_CancelVisual, MENU_ENTRY_VISUAL_INFO_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_VISUAL_INFO_OVERALL_FLOW, Contests_PracticeContestInfoVisualOverallFlow
    GoToIfEq VAR_0x8008, MENU_ENTRY_VISUAL_INFO_CONDITION_POINTS, Contests_PracticeContestInfoVisualConditionPoints
    GoToIfEq VAR_0x8008, MENU_ENTRY_VISUAL_INFO_DRESS_UP_POINTS, Contests_PracticeContestInfoVisualDressUp
    GoTo Contests_PracticeContestInfoVisualReturn
    End

Contests_PracticeContestInfoVisualOverallFlow:
    Message ContestCommon_Text_ExplainVisualOverallFlow
    GoTo Contests_PracticeContestInfoVisualMenuReentry
    End

Contests_PracticeContestInfoVisualConditionPoints:
    Message ContestCommon_Text_ExplainConditionPoints
    GoTo Contests_PracticeContestInfoVisualMenuReentry
    End

Contests_PracticeContestInfoVisualDressUp:
    Message ContestCommon_Text_ExplainDressUp
    GoTo Contests_PracticeContestInfoVisualMenuReentry
    End

Contests_PracticeContestInfoVisualReturn:
    GoTo Contests_PracticeContestInfoMenu
    End

#define MENU_ENTRY_DANCE_INFO_OVERALL_FLOW 0
#define MENU_ENTRY_DANCE_INFO_BACKUP_DANCER 1
#define MENU_ENTRY_DANCE_INFO_MAIN_DANCER 2
#define MENU_ENTRY_DANCE_INFO_PANEL 3
#define MENU_ENTRY_DANCE_INFO_CANCEL 4

Contests_PracticeContestInfoDanceMenuReentry:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
Contests_PracticeContestInfoDanceMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_OverallFlowDance, MENU_ENTRY_DANCE_INFO_OVERALL_FLOW
    AddMenuEntryImm ContestCommon_Text_BackupDancer, MENU_ENTRY_DANCE_INFO_BACKUP_DANCER
    AddMenuEntryImm ContestCommon_Text_MainDancer, MENU_ENTRY_DANCE_INFO_MAIN_DANCER
    AddMenuEntryImm ContestCommon_Text_Panel, MENU_ENTRY_DANCE_INFO_PANEL
    AddMenuEntryImm ContestCommon_Text_CancelDance, MENU_ENTRY_DANCE_INFO_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_DANCE_INFO_OVERALL_FLOW, Contests_PracticeContestInfoDanceOverallFlow
    GoToIfEq VAR_0x8008, MENU_ENTRY_DANCE_INFO_BACKUP_DANCER, Contests_PracticeContestInfoDanceBackupDancer
    GoToIfEq VAR_0x8008, MENU_ENTRY_DANCE_INFO_MAIN_DANCER, Contests_PracticeContestInfoDanceMainDancer
    GoToIfEq VAR_0x8008, MENU_ENTRY_DANCE_INFO_PANEL, Contests_PracticeContestInfoDancePanel
    GoTo Contests_PracticeContestInfoDanceReturn
    End

Contests_PracticeContestInfoDanceOverallFlow:
    Message ContestCommon_Text_ExplainDanceOverallFlow
    GoTo Contests_PracticeContestInfoDanceMenuReentry
    End

Contests_PracticeContestInfoDanceBackupDancer:
    Message ContestCommon_Text_ExplainBackupDancer
    GoTo Contests_PracticeContestInfoDanceMenuReentry
    End

Contests_PracticeContestInfoDanceMainDancer:
    Message ContestCommon_Text_ExplainMainDancer
    GoTo Contests_PracticeContestInfoDanceMenuReentry
    End

Contests_PracticeContestInfoDancePanel:
    Message ContestCommon_Text_ExplainDanceColorPanels
    GoTo Contests_PracticeContestInfoDanceMenuReentry
    End

Contests_PracticeContestInfoDanceReturn:
    GoTo Contests_PracticeContestInfoMenu
    End


#define MENU_ENTRY_ACTING_INFO_OVERALL_FLOW 0
#define MENU_ENTRY_ACTING_INFO_CONTEST_MOVES 1
#define MENU_ENTRY_ACTING_INFO_JUDGES 2
#define MENU_ENTRY_ACTING_INFO_VOLTAGE 3
#define MENU_ENTRY_ACTING_INFO_CANCEL 4

Contests_PracticeContestInfoActingMenuReentry:
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
Contests_PracticeContestInfoActingMenu:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm ContestCommon_Text_OverallFlowActing, MENU_ENTRY_ACTING_INFO_OVERALL_FLOW
    AddMenuEntryImm ContestCommon_Text_ContestMoves, MENU_ENTRY_ACTING_INFO_CONTEST_MOVES
    AddMenuEntryImm ContestCommon_Text_Judges, MENU_ENTRY_ACTING_INFO_JUDGES
    AddMenuEntryImm ContestCommon_Text_Voltage, MENU_ENTRY_ACTING_INFO_VOLTAGE
    AddMenuEntryImm ContestCommon_Text_CancelActing, MENU_ENTRY_ACTING_INFO_CANCEL
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, MENU_ENTRY_ACTING_INFO_OVERALL_FLOW, Contests_PracticeContestInfoActingOverallFlow
    GoToIfEq VAR_0x8008, MENU_ENTRY_ACTING_INFO_CONTEST_MOVES, Contests_PracticeContestInfoActingContestMoves
    GoToIfEq VAR_0x8008, MENU_ENTRY_ACTING_INFO_JUDGES, Contests_PracticeContestInfoActingJudges
    GoToIfEq VAR_0x8008, MENU_ENTRY_ACTING_INFO_VOLTAGE, Contests_PracticeContestInfoActingVoltage
    GoTo Contests_PracticeContestInfoActingReturn
    End

Contests_PracticeContestInfoActingOverallFlow:
    Message ContestCommon_Text_ExplainActingOverallFlow
    GoTo Contests_PracticeContestInfoActingMenuReentry
    End

Contests_PracticeContestInfoActingContestMoves:
    Message ContestCommon_Text_ExplainActingScoring
    GoTo Contests_PracticeContestInfoActingMenuReentry
    End

Contests_PracticeContestInfoActingJudges:
    Message ContestCommon_Text_ExplainActingJudges
    GoTo Contests_PracticeContestInfoActingMenuReentry
    End

Contests_PracticeContestInfoActingVoltage:
    Message ContestCommon_Text_ExplainVoltage
    GoTo Contests_PracticeContestInfoActingMenuReentry
    End

Contests_PracticeContestInfoActingReturn:
    GoTo Contests_PracticeContestInfoMenu
    End

Contests_PracticeContestInfoPractice:
    Message ContestCommon_Text_ExplainPracticeContest
    Message ContestCommon_Text_WhatWouldYouLikeToKnow2
    GoTo Contests_PracticeContestInfoMenu
    End

Contests_Unused7:
    Message ContestCommon_Text_LookForwardToNextVisit2
    GoTo Contests_ReceptionistsEnd
    End

Contests_PracticeContestExit:
    Message ContestCommon_Text_LookForwardToNextVisit1
    WaitButton
Contests_ReceptionistsEnd:
    CloseMessage
    ReleaseAll
    End

Contests_LinkContestRecordsDisplay:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ShowLinkContestRecords
    ReleaseAll
    End

    .balign 4, 0
