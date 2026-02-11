#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_jubilife_city.h"


    ScriptEntry JubilifeCity_OnTransition
    ScriptEntry JubilifeCity_TriggerFirstArrival
    ScriptEntry JubilifeCity_TriggerLookerBlockRoute203
    ScriptEntry JubilifeCity_TriggerTeamGalactic
    ScriptEntry JubilifeCity_Looker
    ScriptEntry JubilifeCity_SchoolKidM1
    ScriptEntry JubilifeCity_Twin
    ScriptEntry JubilifeCity_AceTrainerF
    ScriptEntry JubilifeCity_SchoolKidM2
    ScriptEntry JubilifeCity_AceTrainerM1
    ScriptEntry JubilifeCity_ExpertM1
    ScriptEntry JubilifeCity_ExpertM2
    ScriptEntry JubilifeCity_AceTrainerM3
    ScriptEntry JubilifeCity_Clown1
    ScriptEntry JubilifeCity_Clown2
    ScriptEntry JubilifeCity_Clown3
    ScriptEntry JubilifeCity_TriggerPoketchCampaign
    ScriptEntry JubilifeCity_PoketchCoPresident
    ScriptEntry JubilifeCity_TriggerGTSGreeterBlockPlayer
    ScriptEntry JubilifeCity_KidWithNDS1
    ScriptEntry JubilifeCity_KidWithNDS2
    ScriptEntry JubilifeCity_MapSign
    ScriptEntry JubilifeCity_LandmarkSignJubilifeCondominiums
    ScriptEntry JubilifeCity_LandmarkSignPoketchCompany
    ScriptEntry JubilifeCity_LandmarkSignTrainersSchool
    ScriptEntry JubilifeCity_LandmarkSignJubilifeTV
    ScriptEntry JubilifeCity_LandmarkSignGlobalTerminal
    ScriptEntry JubilifeCity_TriggerLookerPalPad
    ScriptEntryEnd

JubilifeCity_OnTransition:
    CallIfEq VAR_JUBILIFE_CITY_STATE, 0, JubilifeCity_SetLookerPositionFirstArrival
    CallIfGe VAR_JUBILIFE_CITY_STATE, 3, JubilifeCity_SetCounterpartPositionTeamGalactic
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, JubilifeCity_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, JubilifeCity_SetCounterpartGraphicsLucas
    End

JubilifeCity_SetLookerPositionFirstArrival:
    SetObjectEventPos LOCALID_LOOKER, 177, 774
    SetObjectEventDir LOCALID_LOOKER, DIR_SOUTH
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_SOUTH
    Return

JubilifeCity_SetCounterpartPositionTeamGalactic:
    SetObjectEventPos LOCALID_COUNTERPART, 176, 739
    SetObjectEventDir LOCALID_COUNTERPART, DIR_WEST
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_WEST
    Return

JubilifeCity_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

JubilifeCity_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

JubilifeCity_TriggerFirstArrival:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 173, JubilifeCity_FirstArrivalX173
    GoToIfEq VAR_0x8004, 174, JubilifeCity_FirstArrivalX174
    GoToIfEq VAR_0x8004, 175, JubilifeCity_FirstArrivalX175
    End

JubilifeCity_FirstArrivalX173:
    SetObjectEventPos LOCALID_COUNTERPART, 173, 788
    GoTo JubilifeCity_CounterpartWalkToPlayerFirstArrival
    End

JubilifeCity_FirstArrivalX174:
    SetObjectEventPos LOCALID_COUNTERPART, 174, 788
    GoTo JubilifeCity_CounterpartWalkToPlayerFirstArrival
    End

JubilifeCity_FirstArrivalX175:
    SetObjectEventPos LOCALID_COUNTERPART, 175, 788
    GoTo JubilifeCity_CounterpartWalkToPlayerFirstArrival
    End

JubilifeCity_CounterpartWalkToPlayerFirstArrival:
    ClearFlag FLAG_HIDE_JUBILIFE_CITY_COUNTERPART
    AddObject LOCALID_COUNTERPART
    LockObject LOCALID_COUNTERPART
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartNoticePlayer
    WaitMovement
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkToPlayerFirstArrival
    WaitMovement
    Common_SetCounterpartBGM
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, JubilifeCity_MeetLookerWithDawn
    GoToIfEq VAR_RESULT, GENDER_FEMALE, JubilifeCity_MeetLookerWithLucas
    End

JubilifeCity_MeetLookerWithDawn:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_DawnAreYouCatchingPokemon
    GetPartyCount VAR_RESULT
    BufferNumber 0, VAR_RESULT
    CallIfGe VAR_RESULT, 4, JubilifeCity_DawnAtLeastFourPokemon
    CallIfLe VAR_RESULT, 3, JubilifeCity_DawnLessThanFourPokemon
    BufferPlayerName 0
    BufferRivalName 1
    Message JubilifeCity_Text_DawnFollowMe
    Call JubilifeCity_PlayerAndCounterpartWalkNorth
    Message JubilifeCity_Text_DawnThatManWhatIsHeDoing
    CloseMessage
    Call JubilifeCity_LookerWalkAround
    Message JubilifeCity_Text_DawnUm
    Call JubilifeCity_LookerNoticePlayerAndCounterpart
    Message JubilifeCity_Text_DawnIWasJustMakingConversation
    Call JubilifeCity_IsTheSayingDontBeAThiefFamiliarToYou
    Call JubilifeCity_LookerGiveVSRecorderAndLeave
    Message JubilifeCity_Text_DawnWorkingForTheInternationPoliceMustBeHard
    CloseMessage
    WaitTime 30, VAR_RESULT
    BufferPlayerName 0
    Call JubilifeCity_CounterpartWalkToTrainersSchool
    Message JubilifeCity_Text_DawnHereItIsItsTheTrainersSchool
    CloseMessage
    BufferRivalName 1
    Call JubilifeCity_CounterpartWalkBackFromTrainersSchool
    Message JubilifeCity_Text_DawnISawYourFriendRivalGoInEarlier
    CloseMessage
    GoTo JubilifeCity_CounterpartLeave
    End

JubilifeCity_DawnAtLeastFourPokemon:
    Message JubilifeCity_Text_DawnWowYouveAlreadyGotNumPokemonWithYou
    Return

JubilifeCity_DawnLessThanFourPokemon:
    Message JubilifeCity_Text_DawnIThinkYoudFeelALotSaferIfYouWereToCatchSomeMore
    Return

JubilifeCity_MeetLookerWithLucas:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_LucasHowManyPokemonhaveYouCaught
    GetPartyCount VAR_RESULT
    BufferNumber 0, VAR_RESULT
    CallIfGe VAR_RESULT, 4, JubilifeCity_LucasAtLeastFourPokemon
    CallIfLe VAR_RESULT, 3, JubilifeCity_LucasLessThanFourPokemon
    BufferPlayerName 0
    BufferRivalName 1
    Message JubilifeCity_Text_LucasFollowMe
    Call JubilifeCity_PlayerAndCounterpartWalkNorth
    Message JubilifeCity_Text_LucasThatGuyWhatsHeDoing
    CloseMessage
    Call JubilifeCity_LookerWalkAround
    Message JubilifeCity_Text_LucasUhExcuse
    Call JubilifeCity_LookerNoticePlayerAndCounterpart
    Message JubilifeCity_Text_LucasIWasJustMakingSmallTalk
    Call JubilifeCity_IsTheSayingDontBeAThiefFamiliarToYou
    Call JubilifeCity_LookerGiveVSRecorderAndLeave
    Message JubilifeCity_Text_LucasWorkingForTheInternationPoliceSoundsHard
    CloseMessage
    WaitTime 15, VAR_RESULT
    BufferPlayerName 0
    Call JubilifeCity_CounterpartWalkToTrainersSchool
    Message JubilifeCity_Text_LucasHereWeAreThisIsTheTrainersSchool
    CloseMessage
    BufferRivalName 1
    Call JubilifeCity_CounterpartWalkBackFromTrainersSchool
    Message JubilifeCity_Text_LucasYourPalRivalWentInEarier
    CloseMessage
    GoTo JubilifeCity_CounterpartLeave
    End

JubilifeCity_LucasAtLeastFourPokemon:
    Message JubilifeCity_Text_LucasWhoaYouAlreadyHaveNumPokemonWithYou
    Return

JubilifeCity_LucasLessThanFourPokemon:
    Message JubilifeCity_Text_LucasIThinkYouShouldCatchSomeMore
    Return

JubilifeCity_CounterpartLeave:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartLeaveFirstArrival
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchCounterpartLeave
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    SetVar VAR_JUBILIFE_CITY_STATE, 1
    ReleaseAll
    End

JubilifeCity_PlayerAndCounterpartWalkNorth:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 173, JubilifeCity_PlayerAndCounterpartWalkNorthX173
    GoToIfEq VAR_0x8004, 174, JubilifeCity_PlayerAndCounterpartWalkNorthX174
    GoToIfEq VAR_0x8004, 175, JubilifeCity_PlayerAndCounterpartWalkNorthX175
    End

JubilifeCity_PlayerAndCounterpartWalkNorthX173:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkNorthX173
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkNorthX173
    WaitMovement
    Return

JubilifeCity_PlayerAndCounterpartWalkNorthX174:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkNorthX174
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkNorthX174
    WaitMovement
    Return

JubilifeCity_PlayerAndCounterpartWalkNorthX175:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkNorthX175
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkNorthX175
    WaitMovement
    Return

JubilifeCity_LookerWalkAround:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkAround
    WaitMovement
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkEast
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkToLooker
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkToLooker
    WaitMovement
    Return

JubilifeCity_LookerNoticePlayerAndCounterpart:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerNoticePlayerAndCounterpart
    WaitMovement
    Common_SetLookerBGM
    Message JubilifeCity_Text_WHAAAT
    Message JubilifeCity_Text_HowDidYouUnmaskMe
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkOnSpotNorth
    WaitMovement
    Return

JubilifeCity_IsTheSayingDontBeAThiefFamiliarToYou:
    Message JubilifeCity_Text_IKnowBetterNotToBelieveThat
    Message JubilifeCity_Text_IsTheSayingDontBeAThiefFamiliarToYou
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeCity_TakingWhatBelongsToOthersIsWrong
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeCity_YouClaimToNotKnowIt
    End

JubilifeCity_TakingWhatBelongsToOthersIsWrong:
    Message JubilifeCity_Text_TakingWhatBelongsToOthersIsWrong
    Return

JubilifeCity_YouClaimToNotKnowIt:
    Message JubilifeCity_Text_YouClaimToNotKnowIt
    Return

JubilifeCity_LookerGiveVSRecorderAndLeave:
    Message JubilifeCity_Text_PerhapsYouCanMakeUseOfThis
    SetVar VAR_0x8004, ITEM_VS_RECORDER
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Message JubilifeCity_Text_ThatVsRecorderItIsANiftyDeviceForRecordingAMatch
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkWestEastSouth
    WaitMovement
    Message JubilifeCity_Text_YouMustInformMeOfAnyHappenings
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWatchLookerLeave
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchLookerLeave
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerLeaveFistArrival
    WaitMovement
    SetPosition LOCALID_LOOKER, 186, 0, 756, DIR_SOUTH
    SetObjectEventPos LOCALID_LOOKER, 186, 756
    Common_FadeToDefaultMusic4
    Return

JubilifeCity_CounterpartWalkToTrainersSchool:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkToTrainersSchool
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchCounterpartWalkToTrainersSchool
    WaitMovement
    Return

JubilifeCity_CounterpartWalkBackFromTrainersSchool:
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkBackFromTrainersSchool
    WaitMovement
    Return

    .balign 4, 0
JubilifeCity_Movement_CounterpartNoticePlayer:
    WalkNormalSouth 4
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkToPlayerFirstArrival:
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkNorthX173:
    WalkNormalEast
    WalkNormalNorth 18
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkNorthX175:
    WalkNormalWest
    WalkNormalNorth 18
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkNorthX174:
    WalkNormalNorth 18
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartLeaveFirstArrival:
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkToLooker:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkToTrainersSchool:
    WalkNormalSouth
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkBackFromTrainersSchool:
    WalkNormalNorth
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWatchLookerLeave:
    WalkOnSpotNormalEast
    Delay8 4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkNorthX173:
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth 17
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkNorthX175:
    WalkNormalNorth
    WalkNormalWest
    WalkNormalNorth 17
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkNorthX174:
    WalkNormalNorth 18
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkToLooker:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchCounterpartWalkToTrainersSchool:
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchCounterpartLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchLookerLeave:
    Delay8
    WalkOnSpotNormalEast
    Delay8 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkAround:
    WalkOnSpotFastWest
    Delay8 2
    WalkOnSpotFastSouth
    Delay8
    WalkSlowWest
    WalkFastWest 5
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotFastNorth
    Delay8
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkEast:
    WalkSlowEast
    WalkFastEast 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerNoticePlayerAndCounterpart:
    WalkOnSpotFastSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkWestEastSouth:
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastEast
    Delay8 2
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerLeaveFistArrival:
    WalkFastEast 3
    WalkOnSpotFastWest
    Delay8
    WalkSlowNorth
    WalkFastNorth 7
    EndMovement

JubilifeCity_ExpertM2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COAL, JubilifeCity_HaveYouPaidAVisitToTheTVStation
    Message JubilifeCity_Text_JubilifeCitysBuiltOnLandTheyCarvedOutOfAMountain
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_HaveYouPaidAVisitToTheTVStation:
    Message JubilifeCity_Text_HaveYouPaidAVisitToTheTVStation
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_AceTrainerM3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_PastHereIsTheGlobalTerminal
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_TriggerGTSGreeterBlockPlayer:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 779, JubilifeCity_GTSGreeterBlockPlayerZ779
    GoToIfEq VAR_0x8005, 780, JubilifeCity_GTSGreeterBlockPlayerZ780
    GoToIfEq VAR_0x8005, 781, JubilifeCity_GTSGreeterBlockPlayerZ781
    End

JubilifeCity_GTSGreeterBlockPlayerZ779:
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterNoticePlayerZ779
    WaitMovement
    Message JubilifeCity_Text_TheGlobalTerminalIsOffLimitsIfYouDontHaveAGymBadge
    CloseMessage
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterWalkBackZ779
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerStepBackEast
    WaitMovement
    GoTo JubilifeCity_GTSGreeterBlockPlayerRelease
    End

JubilifeCity_GTSGreeterBlockPlayerZ780:
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterNoticePlayerZ780
    WaitMovement
    Message JubilifeCity_Text_TheGlobalTerminalIsOffLimitsIfYouDontHaveAGymBadge
    CloseMessage
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterWalkBackZ780
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerStepBackEast
    WaitMovement
    GoTo JubilifeCity_GTSGreeterBlockPlayerRelease
    End

JubilifeCity_GTSGreeterBlockPlayerZ781:
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterNoticePlayerZ781
    WaitMovement
    Message JubilifeCity_Text_TheGlobalTerminalIsOffLimitsIfYouDontHaveAGymBadge
    CloseMessage
    ApplyMovement LOCALID_ACE_TRAINER_M_3, JubilifeCity_Movement_GTSGreeterWalkBackZ781
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerStepBackEast
    WaitMovement
    GoTo JubilifeCity_GTSGreeterBlockPlayerRelease
    End

JubilifeCity_GTSGreeterBlockPlayerRelease:
    ReleaseAll
    End

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterNoticePlayerZ779:
    EmoteExclamationMark
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterNoticePlayerZ780:
    EmoteExclamationMark
    WalkNormalSouth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterNoticePlayerZ781:
    EmoteExclamationMark
    WalkNormalSouth 3
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterWalkBackZ779:
    WalkNormalEast
    Delay8 2
    WalkNormalWest
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterWalkBackZ780:
    WalkNormalEast
    Delay8 2
    WalkNormalWest
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GTSGreeterWalkBackZ781:
    WalkNormalEast
    Delay8 2
    WalkNormalWest
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerStepBackEast:
    WalkNormalEast
    EndMovement

JubilifeCity_TriggerLookerBlockRoute203:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 757, JubilifeCity_LookerWalkToPlayerZ757
    GoToIfEq VAR_0x8005, 758, JubilifeCity_LookerWalkToPlayerZ758
    GoToIfEq VAR_0x8005, 759, JubilifeCity_LookerWalkToPlayerZ759
    GoToIfEq VAR_0x8005, 760, JubilifeCity_LookerWalkToPlayerZ760
    End

JubilifeCity_LookerWalkToPlayerZ757:
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkOnSpotWest
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkToPlayerZ757
    WaitMovement
    GoTo JubilifeCity_LookerBlockPlayer
    End

JubilifeCity_LookerWalkToPlayerZ758:
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkOnSpotWest
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkToPlayerZ758
    WaitMovement
    GoTo JubilifeCity_LookerBlockPlayer
    End

JubilifeCity_LookerWalkToPlayerZ759:
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkOnSpotWest
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkToPlayerZ759
    WaitMovement
    GoTo JubilifeCity_LookerBlockPlayer
    End

JubilifeCity_LookerWalkToPlayerZ760:
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkOnSpotWest
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkToPlayerZ760
    WaitMovement
    GoTo JubilifeCity_LookerBlockPlayer
    End

JubilifeCity_LookerBlockPlayer:
    Call JubilifeCity_LookerBlockPlayerMessage
    CloseMessage
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkWestWithLooker
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkWestWithPlayer
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 757, JubilifeCity_LookerWalkBackZ757
    GoToIfEq VAR_0x8005, 758, JubilifeCity_LookerWalkBackZ758
    GoToIfEq VAR_0x8005, 759, JubilifeCity_LookerWalkBackZ759
    GoToIfEq VAR_0x8005, 760, JubilifeCity_LookerWalkBackZ760
    End

JubilifeCity_LookerBlockPlayerMessage:
    GoToIfUnset FLAG_TALKED_TO_TRAINERS_SCHOOL_RIVAL, JubilifeCity_HelloMyFriendHaveYouVisitedTheTrainersSchool
    GoToIfUnset FLAG_OBTAINED_POKETCH, JubilifeCity_TellMeHaveYouNotObtainedAPoketch
    Message JubilifeCity_Text_ItIsYouHaveYouNotObtainedAGymBadge
    Return

JubilifeCity_HelloMyFriendHaveYouVisitedTheTrainersSchool:
    Message JubilifeCity_Text_HelloMyFriendHaveYouVisitedTheTrainersSchool
    Return

JubilifeCity_TellMeHaveYouNotObtainedAPoketch:
    Message JubilifeCity_Text_TellMeHaveYouNotObtainedAPoketch
    Return

JubilifeCity_LookerMessageDidntObtainPoketch:
    GoToIfUnset FLAG_TALKED_TO_TRAINERS_SCHOOL_RIVAL, JubilifeCity_ItIsYouHaveYouVisitedTheTrainersSchool
    GoToIfUnset FLAG_OBTAINED_POKETCH, JubilifeCity_ItIsYouHaveYouNotObtainedAPoketch
    Message JubilifeCity_Text_ItIsYouHaveYouNotObtainedAGymBadge
    Return

JubilifeCity_ItIsYouHaveYouVisitedTheTrainersSchool:
    Message JubilifeCity_Text_ItIsYouHaveYouVisitedTheTrainersSchool
    Return

JubilifeCity_ItIsYouHaveYouNotObtainedAPoketch:
    Message JubilifeCity_Text_ItIsYouHaveYouNotObtainedAPoketch
    Return

JubilifeCity_LookerWalkBackZ757:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkBackZ757
    WaitMovement
    GoTo JubilifeCity_Movement_LookerRelease
    End

JubilifeCity_LookerWalkBackZ758:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkBackZ758
    WaitMovement
    GoTo JubilifeCity_Movement_LookerRelease
    End

JubilifeCity_LookerWalkBackZ759:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkBackZ759
    WaitMovement
    GoTo JubilifeCity_Movement_LookerRelease
    End

JubilifeCity_LookerWalkBackZ760:
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkBackZ760
    WaitMovement
    GoTo JubilifeCity_Movement_LookerRelease
    End

JubilifeCity_Movement_LookerRelease:
    ReleaseAll
    End

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkOnSpotWest:
    Delay8 5
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerFaceWest:
    Delay8 5
    FaceWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkWestWithLooker:
    WalkNormalWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkToPlayerZ757:
    FaceSouth
    EmoteExclamationMark
    Delay16
    WalkNormalSouth
    WalkNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkToPlayerZ758:
    FaceSouth
    EmoteExclamationMark
    Delay16
    WalkNormalSouth 2
    WalkNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkToPlayerZ759:
    FaceSouth
    EmoteExclamationMark
    Delay16
    WalkNormalSouth 3
    WalkNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkToPlayerZ760:
    FaceSouth
    EmoteExclamationMark
    Delay16
    WalkNormalSouth 4
    WalkNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkWestWithPlayer:
    LockDir
    WalkNormalWest
    UnlockDir
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkBackZ757:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkBackZ758:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkBackZ759:
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkBackZ760:
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

JubilifeCity_Looker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_POKETCH, JubilifeCity_ItIsYouHaveYouNotObtainedAGymBadge
    Call JubilifeCity_LookerMessageDidntObtainPoketch
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerFaceSouth
    WaitMovement
    ReleaseAll
    End

JubilifeCity_ItIsYouHaveYouNotObtainedAGymBadge:
    Message JubilifeCity_Text_ItIsYouHaveYouNotObtainedAGymBadge
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerFaceSouth
    WaitMovement
    ReleaseAll
    End

JubilifeCity_CheckPalPad:
    CheckItem ITEM_PAL_PAD, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, JubilifeCity_ISeeThatYouHaveObtainedItAPalPadForYourself
    Message JubilifeCity_Text_TellMeHaveYouNotObtainedAPalPad
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkOnSpotWestEast
    WaitMovement
    Message JubilifeCity_Text_IShallTakeMyInvestigationElsewhere
    Return

JubilifeCity_ISeeThatYouHaveObtainedItAPalPadForYourself:
    Message JubilifeCity_Text_ISeeThatYouHaveObtainedItAPalPadForYourself
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkOnSpotWestEast
    WaitMovement
    Message JubilifeCity_Text_IShallTakeMyInvestigationElsewhere
    Return

    .balign 4, 0
JubilifeCity_Movement_LookerFaceSouth:
    FaceSouth
    EndMovement

JubilifeCity_TriggerTeamGalactic:
    LockAll
    ApplyMovement LOCALID_GRUNT_M_2, JubilifeCity_Movement_GruntWalkOnSpotEast
    WaitMovement
    Message JubilifeCity_Text_HandOverAllYourResearchFindings
    CloseMessage
    GetPlayerMapPos VAR_0x8000, VAR_0x8001
    GoToIfEq VAR_0x8000, 173, JubilifeCity_PlayerWalkToProfRowanX173
    GoToIfEq VAR_0x8000, 174, JubilifeCity_PlayerWalkToProfRowanX174
    GoToIfEq VAR_0x8000, 175, JubilifeCity_PlayerWalkToProfRowanX175
    End

JubilifeCity_PlayerWalkToProfRowanX173:
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanNoticePlayer
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkToProfRowanX173
    WaitMovement
    GoTo JubilifeCity_TeamGalacticBanter
    End

JubilifeCity_PlayerWalkToProfRowanX174:
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanNoticePlayer
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkToProfRowanX174
    WaitMovement
    GoTo JubilifeCity_TeamGalacticBanter
    End

JubilifeCity_PlayerWalkToProfRowanX175:
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanNoticePlayer
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkToProfRowanX175
    WaitMovement
    GoTo JubilifeCity_TeamGalacticBanter
    End

JubilifeCity_TeamGalacticBanter:
    BufferPlayerName 0
    BufferCounterpartName 1
    Message JubilifeCity_Text_ThatsOreburghsGymBadgeISee
    ApplyMovement LOCALID_GRUNT_M_2, JubilifeCity_Movement_GruntWalkOnSpotEast
    WaitMovement
    Message JubilifeCity_Text_OhProfessorOfRowanMustYouBeSoDifficult
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanWalkOnSpotWest
    WaitMovement
    Message JubilifeCity_Text_WhyMustYouBeSuchANuisance
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanWalkOnSpotSouth
    WaitMovement
    Message JubilifeCity_Text_MyGoodnessYouCallYourselvesAdults
    ApplyMovement LOCALID_GRUNT_M_1, JubilifeCity_Movement_GruntWalkOnSpotFastEast
    ApplyMovement LOCALID_GRUNT_M_2, JubilifeCity_Movement_GruntWalkOnSpotFastEast
    WaitMovement
    Message JubilifeCity_Text_WeWillMakeYouRegretInsultingTeamGalactic
    Message JubilifeCity_Text_YouKidsGiveTheseThugsALessonInCivilityPlease
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkOnSpotSouth
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, JubilifeCity_DawnPlayerLetsBattleTogether
    GoToIfEq VAR_RESULT, GENDER_FEMALE, JubilifeCity_LucasPlayerJoinMeAndBattleTheseGuys
    End

JubilifeCity_DawnPlayerLetsBattleTogether:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_DawnPlayerLetsBattleTogether
    GoTo JubilifeCity_TeamGalacticBattle
    End

JubilifeCity_LucasPlayerJoinMeAndBattleTheseGuys:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_LucasPlayerJoinMeAndBattleTheseGuys
    GoTo JubilifeCity_TeamGalacticBattle
    End

JubilifeCity_TeamGalacticBattle:
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanWalkOnSpotWest2
    WaitMovement
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkToGrunt
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWalkToGrunt
    WaitMovement
    Call JubilifeCity_SetPlayerCounterpartPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_1, TRAINER_GALACTIC_GRUNT_JUBILIFE_CITY_2
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, JubilifeCity_BlackOut
    ApplyMovement LOCALID_GRUNT_M_2, JubilifeCity_Movement_GruntWalkOnSpotEast2
    WaitMovement
    Message JubilifeCity_Text_WeWillRetreatForNow
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, JubilifeCity_Movement_Grunt1Leave
    ApplyMovement LOCALID_GRUNT_M_2, JubilifeCity_Movement_Grunt2Leave
    WaitMovement
    RemoveObject LOCALID_GRUNT_M_1
    RemoveObject LOCALID_GRUNT_M_2
    SetFlag FLAG_HIDE_JUBILIFE_GALACTIC_GRUNTS
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanWalkOnSpotSouth2
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkToPlayerAfterGalacticBattle
    WaitMovement
    BufferPlayerName 0
    Message JubilifeCity_Text_ThatLotTheyCalledThemselvesTeamGalactic
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartWalkOnSpotSouth2
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, JubilifeCity_DawnTheProfessorStudiesTheEvolutionOfPokemonToo
    GoToIfEq VAR_RESULT, GENDER_FEMALE, JubilifeCity_LucasTheProfessorStudiesTheEvolutionOfPokemonToo
    End

JubilifeCity_SetPlayerCounterpartPartnerTeam:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, JubilifeCity_SetDawnPartnerTeam
    GoToIfEq VAR_RESULT, GENDER_FEMALE, JubilifeCity_SetLucasPartnerTeam
    End

JubilifeCity_SetDawnPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_DAWN_JUBILIFE_CITY_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, JubilifeCity_Return
    SetVar VAR_0x8004, TRAINER_DAWN_JUBILIFE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, JubilifeCity_Return
    SetVar VAR_0x8004, TRAINER_DAWN_JUBILIFE_CITY_TURTWIG
    Return

JubilifeCity_SetLucasPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_LUCAS_JUBILIFE_CITY_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, JubilifeCity_Return
    SetVar VAR_0x8004, TRAINER_LUCAS_JUBILIFE_CITY_PIPLUP
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, JubilifeCity_Return
    SetVar VAR_0x8004, TRAINER_LUCAS_JUBILIFE_CITY_TURTWIG
    Return

JubilifeCity_Return:
    Return

JubilifeCity_DawnTheProfessorStudiesTheEvolutionOfPokemonToo:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_DawnTheProfessorStudiesTheEvolutionOfPokemonToo
    GoTo JubilifeCity_CounterpartAndProfRowanLeave
    End

JubilifeCity_LucasTheProfessorStudiesTheEvolutionOfPokemonToo:
    BufferCounterpartName 0
    BufferPlayerName 1
    Message JubilifeCity_Text_LucasTheProfessorStudiesTheEvolutionOfPokemonToo
    GoTo JubilifeCity_CounterpartAndProfRowanLeave
    End

JubilifeCity_CounterpartAndProfRowanLeave:
    BufferPlayerName 0
    Message JubilifeCity_Text_WhyDontYouCollectAllTheGymBadgesOfSinnoh
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, JubilifeCity_Movement_CounterpartLeaveAfterGalacticBattle
    ApplyMovement LOCALID_PROF_ROWAN, JubilifeCity_Movement_ProfRowanLeave
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchCounterpartAndProfRowanLeave
    WaitMovement
    GoTo JubilifeCity_CollectorJubilifeTV
    End

JubilifeCity_CollectorJubilifeTV:
    RemoveObject LOCALID_COUNTERPART
    RemoveObject LOCALID_PROF_ROWAN
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_LAB_PROF_ROWAN
    SetVar VAR_JUBILIFE_CITY_STATE, 4
    SetVar VAR_JUBILIFE_LOOKER_PAL_PAD_STATE, 2
    SetVar VAR_OREBURGH_STATE, 3
    RemoveObject LOCALID_CLOWN_1
    RemoveObject LOCALID_CLOWN_2
    RemoveObject LOCALID_CLOWN_3
    SetObjectEventPos LOCALID_COLLECTOR, 174, 750
    SetObjectEventMovementType LOCALID_COLLECTOR, MOVEMENT_TYPE_LOOK_NORTH
    ClearFlag FLAG_HIDE_JUBILIFE_CITY_COLLECTOR
    AddObject LOCALID_COLLECTOR
    LockObject LOCALID_COLLECTOR
    ApplyMovement LOCALID_COLLECTOR, JubilifeCity_Movement_CollectorWalkToPlayer
    WaitMovement
    Message JubilifeCity_Text_OhThatWasVeryGood
    Call JubilifeCity_GiveFashionCaseAndAccessories
    Message JubilifeCity_Text_DressUpYourPokemonAndWatchTheirAppealGrow
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_COLLECTOR, JubilifeCity_Movement_CollectorLeave
    WaitMovement
    RemoveObject LOCALID_COLLECTOR
    ReleaseAll
    End

JubilifeCity_GiveFashionCaseAndAccessories:
    SetVar VAR_0x8004, ITEM_FASHION_CASE
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_FASHION_CASE
    Call JubilifeCity_GiveRandomAccessoryFluff
    Call JubilifeCity_GiveRandomAccessoryFluff
    Call JubilifeCity_GiveRandomAccessoryFluff
    Call JubilifeCity_GiveRandomAccessoryFluff
    Call JubilifeCity_GiveRandomAccessoryFluff
    Call JubilifeCity_GiveRandomAccessoryFeatherOrMustache
    Call JubilifeCity_GiveRandomAccessoryFeatherOrMustache
    Call JubilifeCity_GiveRandomAccessoryFeatherOrMustache
    Call JubilifeCity_GiveRandomAccessoryFeatherOrMustache
    Call JubilifeCity_GiveRandomAccessoryFeatherOrMustache
    AddContestBackdrop 0
    SetVar VAR_MAP_LOCAL_1, 0x270F
    Call JubilifeCity_GiveRandomContestBackdrop
    Call JubilifeCity_GiveRandomContestBackdrop
    Return

JubilifeCity_GiveRandomAccessoryFluff:
    GetRandom VAR_RESULT, 6
    SetVar VAR_0x8004, ACCESSORY_WHITE_FLUFF
    AddVar VAR_0x8004, VAR_RESULT
    AddAccessory VAR_0x8004, 1
    Return

JubilifeCity_GiveRandomAccessoryFeatherOrMustache:
    GetRandom VAR_RESULT, 6
    SetVar VAR_0x8004, ACCESSORY_BLUE_FEATHER
    AddVar VAR_0x8004, VAR_RESULT
    AddAccessory VAR_0x8004, 1
    Return

JubilifeCity_GiveRandomContestBackdrop:
    GetRandom VAR_RESULT, 8
    GoToIfEq VAR_MAP_LOCAL_1, VAR_RESULT, JubilifeCity_GiveRandomContestBackdrop
    SetVar VAR_MAP_LOCAL_1, VAR_RESULT
    SetVar VAR_0x8004, 1
    AddVar VAR_0x8004, VAR_RESULT
    AddContestBackdrop VAR_0x8004
    Return

JubilifeCity_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
JubilifeCity_Movement_CollectorWalkToPlayer:
    WalkNormalNorth 8
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CollectorLeave:
    WalkNormalSouth 8
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkToProfRowanX173:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkToProfRowanX174:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkToProfRowanX175:
    Delay8 2
    WalkNormalNorth 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchCounterpartAndProfRowanLeave:
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

JubilifeCity_UnusedMovement:
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

JubilifeCity_UnusedMovement2:
    Delay8
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkToGrunt:
    WalkNormalWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkToPlayerAfterGalacticBattle:
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_CounterpartLeaveAfterGalacticBattle:
    WalkNormalEast
    WalkNormalSouth 9
    EndMovement

JubilifeCity_UnusedMovement3:
    WalkNormalEast
    WalkNormalSouth 9
    EndMovement

JubilifeCity_UnusedMovement4:
    WalkNormalWest
    WalkOnSpotNormalEast
    WalkNormalEast
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GruntWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GruntWalkOnSpotFastEast:
    WalkOnSpotFastEast 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_Grunt1Leave:
    WalkFastNorth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_Grunt2Leave:
    WalkFastNorth 10
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_GruntWalkOnSpotEast2:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanWalkOnSpotWest:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanLeave:
    WalkNormalSouth 9
    EndMovement

JubilifeCity_UnusedMovement5:
    WalkNormalSouth 9
    EndMovement

JubilifeCity_UnusedMovement6:
    WalkOnSpotNormalWest
    WalkNormalWest
    WalkNormalSouth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanWalkOnSpotSouth2:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_ProfRowanWalkOnSpotWest2:
    WalkOnSpotNormalWest
    EndMovement

JubilifeCity_UnusedMovement7:
    WalkOnSpotNormalWest
    EndMovement

JubilifeCity_UnusedMovement8:
    WalkOnSpotNormalWest
    EndMovement

JubilifeCity_UnusedMovement9:
    WalkOnSpotNormalWest
    EndMovement

JubilifeCity_UnusedMovement10:
    WalkOnSpotNormalWest
    EndMovement

JubilifeCity_UnusedMovement11:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWalkToGrunt:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

JubilifeCity_SchoolKidM1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_CanYouTellMeWhatTypeOfPokemonYouLike
    InitGlobalTextListMenu 29, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_TypePreferenceFire, 0
    AddListMenuEntry MenuEntries_Text_TypePreferenceWater, 1
    AddListMenuEntry MenuEntries_Text_TypePreferenceGrass, 2
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, JubilifeCity_TheFireTypeYouMustHaveAFieryPersonality
    GoToIfEq VAR_0x8008, 1, JubilifeCity_APersonThatLikesTheWaterTypeMustBeSomewhatCool
    Message JubilifeCity_Text_YouChoseTheGrassTypeNoWonderYouLookSoCalm
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_TheFireTypeYouMustHaveAFieryPersonality:
    Message JubilifeCity_Text_TheFireTypeYouMustHaveAFieryPersonality
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_APersonThatLikesTheWaterTypeMustBeSomewhatCool:
    Message JubilifeCity_Text_APersonThatLikesTheWaterTypeMustBeSomewhatCool
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_DidYouSeeMeOnTV
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_AceTrainerM1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_HiyaWheredYouComeFrom
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_AceTrainerF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_WhenYouWalkWithYourPokemonTheyGraduallyGrowFriendlier
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_ExpertM1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_HelloTrainerDoYouKnowMuchAboutPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeCity_AhISeeYouAreKnowledgeable
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeCity_OhYoureNotKnowledgeable
    End

JubilifeCity_AhISeeYouAreKnowledgeable:
    Message JubilifeCity_Text_AhISeeYouAreKnowledgeable
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_OhYoureNotKnowledgeable:
    Message JubilifeCity_Text_OhYoureNotKnowledgeable
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_SchoolKidM2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_AtMostYouCanHaveSixPokemonWithYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_MapSign:
    ShowMapSign JubilifeCity_Text_MapSign
    End

JubilifeCity_LandmarkSignJubilifeCondominiums:
    ShowLandmarkSign JubilifeCity_Text_JubilifeCondominiumsTenantsWanted
    End

JubilifeCity_LandmarkSignPoketchCompany:
    ShowLandmarkSign JubilifeCity_Text_ThePoketchCompanyPokemonWatchesForTheWorld
    End

JubilifeCity_LandmarkSignTrainersSchool:
    ShowLandmarkSign JubilifeCity_Text_TrainersSchoolTheFirstStepForTrainers
    End

JubilifeCity_LandmarkSignJubilifeTV:
    ShowLandmarkSign JubilifeCity_Text_JubilifeTVTheFunAndGamesTVStation
    End

JubilifeCity_LandmarkSignGlobalTerminal:
    ShowLandmarkSign JubilifeCity_Text_TheGlobalTerminalYourGatewayToTheWholeWorld
    End

JubilifeCity_TriggerPoketchCampaign:
    LockAll
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentNoticePlayer
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerFaceNorthPoketchCoPresident
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 172, JubilifeCity_PoketchCoPresidentWalkToPlayerX172
    CallIfEq VAR_0x8004, 173, JubilifeCity_PoketchCoPresidentWalkToPlayerX173
    CallIfEq VAR_0x8004, 174, JubilifeCity_PoketchCoPresidentWalkToPlayerX174
    CallIfEq VAR_0x8004, 175, JubilifeCity_PoketchCoPresidentWalkToPlayerX175
    CallIfEq VAR_0x8004, 176, JubilifeCity_PoketchCoPresidentWalkToPlayerX176
    Message JubilifeCity_Text_YouCallYourselfAPokemonTrainerAndYetYouHaveNoPoketch
    SetVar VAR_POKETCH_CAMPAIGN_STATE, 2
    Message JubilifeCity_Text_AllYouHaveToDoIsFindThreeClownsInJubilifeCity
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_PoketchCoPresidentWalkToPlayerX172:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX172
    WaitMovement
    Return

JubilifeCity_PoketchCoPresidentWalkToPlayerX173:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX173
    WaitMovement
    Return

JubilifeCity_PoketchCoPresidentWalkToPlayerX174:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX174
    WaitMovement
    Return

JubilifeCity_PoketchCoPresidentWalkToPlayerX175:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX175
    WaitMovement
    Return

JubilifeCity_PoketchCoPresidentWalkToPlayerX176:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX176
    WaitMovement
    Return

    .balign 4, 0
JubilifeCity_Movement_PlayerFaceNorthPoketchCoPresident:
    FaceNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX172:
    WalkNormalSouth 2
    WalkNormalWest 2
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX173:
    WalkNormalSouth 2
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX174:
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX175:
    WalkNormalSouth 2
    WalkNormalEast
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentWalkToPlayerX176:
    WalkNormalSouth 2
    WalkNormalEast 2
    WalkNormalSouth 2
    EndMovement

JubilifeCity_PoketchCoPresident:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, 0
    Call JubilifeCity_SetObtainedCouponsCount
    GoToIfEq VAR_0x8004, 3, JubilifeCity_GivePoketch
    Message JubilifeCity_Text_CollectACouponFromEachClownThenComeSeeMeOK
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_SetObtainedCouponsCount:
    CallIfSet FLAG_OBTAINED_COUPON_1, JubilifeCity_IncreaseObtainedCouponsCount
    CallIfSet FLAG_OBTAINED_COUPON_2, JubilifeCity_IncreaseObtainedCouponsCount
    CallIfSet FLAG_OBTAINED_COUPON_3, JubilifeCity_IncreaseObtainedCouponsCount
    Return

JubilifeCity_IncreaseObtainedCouponsCount:
    AddVar VAR_0x8004, 1
    Return

JubilifeCity_GivePoketch:
    Message JubilifeCity_Text_InReturnForTheseCouponsIPresentYouThisPokemonWatch
    RemoveItem ITEM_COUPON_1, 1, VAR_RESULT
    RemoveItem ITEM_COUPON_2, 1, VAR_RESULT
    RemoveItem ITEM_COUPON_3, 1, VAR_RESULT
    ScrCmd_131
    SetVar VAR_JUBILIFE_CITY_STATE, 2
    RegisterPoketchApp POKETCH_APPID_DIGITALWATCH
    RegisterPoketchApp POKETCH_APPID_CALCULATOR
    RegisterPoketchApp POKETCH_APPID_PEDOMETER
    RegisterPoketchApp POKETCH_APPID_PARTYSTATUS
    BufferPlayerName 0
    Message JubilifeCity_Text_PlayerReceivedAPoketch
    PlaySound SEQ_FANFA4
    WaitSound
    Message JubilifeCity_Text_YouCanAddAppsToYourPoketch
    CloseMessage
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, JubilifeCity_PoketchCoPresidentLeaveNorthWestEast
    GoToIfEq VAR_RESULT, DIR_SOUTH, JubilifeCity_PoketchCoPresidentLeaveSouth
    GoToIfEq VAR_RESULT, DIR_WEST, JubilifeCity_PoketchCoPresidentLeaveNorthWestEast
    GoToIfEq VAR_RESULT, DIR_EAST, JubilifeCity_PoketchCoPresidentLeaveNorthWestEast
    End

JubilifeCity_PoketchCoPresidentLeaveNorthWestEast:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentLeaveNorthWestEast
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchPoketchCoPresidentLeaveNorthWestEast
    WaitMovement
    GoTo JubilifeCity_RemovePoketchCoPresident
    End

JubilifeCity_PoketchCoPresidentLeaveSouth:
    ApplyMovement LOCALID_POKETCH_CO_PRESIDENT, JubilifeCity_Movement_PoketchCoPresidentLeaveSouth
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerWatchPoketchCoPresidentLeaveSouth
    WaitMovement
    GoTo JubilifeCity_RemovePoketchCoPresident
    End

JubilifeCity_RemovePoketchCoPresident:
    RemoveObject LOCALID_POKETCH_CO_PRESIDENT
    SetFlag FLAG_OBTAINED_POKETCH
    ClearFlag FLAG_HIDE_POKETCH_CO_1F_POKETCH_CO_PRESIDENT
    RemoveObject LOCALID_LOOKER
    SetFlag FLAG_HIDE_JUBILIFE_CITY_LOOKER
    ReleaseAll
    End

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentLeaveSouth:
    WalkNormalWest
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PoketchCoPresidentLeaveNorthWestEast:
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchPoketchCoPresidentLeaveSouth:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_PlayerWatchPoketchCoPresidentLeaveNorthWestEast:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

JubilifeCity_Clown1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_COUPON_1, JubilifeCity_Clown1ObtainedCoupon
    Message JubilifeCity_Text_DoesAPokemonGrowByDefeatingOthersAndGainingExpPoints
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeCity_Clown1CorrectAnswer
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeCity_Clown1WrongAnswer
    End

JubilifeCity_Clown1CorrectAnswer:
    PlayFanfare SEQ_SE_DP_PINPON
    Message JubilifeCity_Text_DingDingYoureAbsolutelyCorrect1
    Message JubilifeCity_Text_PokemonGrowStrongerByDefeatingOtherPokemonInBattle
    Message JubilifeCity_Text_HereYouGoYourPoketchCoupon1
    SetVar VAR_0x8004, ITEM_COUPON_1
    SetVar VAR_0x8005, 1
    SetFlag FLAG_OBTAINED_COUPON_1
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown1WrongAnswer:
    PlayFanfare SEQ_SE_DP_BOX03
    Message JubilifeCity_Text_BzzzztThatsTheWrongAnswer1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown1ObtainedCoupon:
    Message JubilifeCity_Text_PokemonGrowStrongerThroughBattling
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_OBTAINED_COUPON_2, JubilifeCity_Clown2ObtainedCoupon
    Message JubilifeCity_Text_AskJustLikePokemonTypesTheMovesOfPokemonAlsoHaveTypes
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeCity_Clown2CorrectAnswer
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeCity_Clown2WrongAnswer
    End

JubilifeCity_Clown2CorrectAnswer:
    PlayFanfare SEQ_SE_DP_PINPON
    Message JubilifeCity_Text_DingDingYoureAbsolutelyCorrect2
    Message JubilifeCity_Text_IfThePokemonsTypeMatchesItsMovesTypeThatMoveIsMadeMuchMorePowerful
    Message JubilifeCity_Text_HereYouGoYourPoketchCoupon2
    SetVar VAR_0x8004, ITEM_COUPON_2
    SetVar VAR_0x8005, 1
    SetFlag FLAG_OBTAINED_COUPON_2
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown2WrongAnswer:
    PlayFanfare SEQ_SE_DP_BOX03
    Message JubilifeCity_Text_BzzzztThatsTheWrongAnswer2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown2ObtainedCoupon:
    Message JubilifeCity_Text_IfThePokemonsTypeMatchesItsMovesTypeThatMoveIsMadeMuchMorePowerful2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfLt VAR_POKETCH_CAMPAIGN_STATE, 2, JubilifeCity_YouShouldStickAround
    GoToIfSet FLAG_OBTAINED_COUPON_3, JubilifeCity_Clown3ObtainedCoupon
    Message JubilifeCity_Text_CanAPokemonHoldAnItem
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeCity_Clown3CorrectAnswer
    GoToIfEq VAR_RESULT, MENU_NO, JubilifeCity_Clown3WrongAnswer
    End

JubilifeCity_Clown3CorrectAnswer:
    PlayFanfare SEQ_SE_DP_PINPON
    Message JubilifeCity_Text_DingDingYoureAbsolutelyCorrect3
    Message JubilifeCity_Text_APokemonMayHoldASingleItem
    Message JubilifeCity_Text_HereYouGoYourPoketchCoupon3
    SetPosition LOCALID_POKETCH_CO_PRESIDENT, 174, 1, 771, DIR_SOUTH
    SetVar VAR_0x8004, ITEM_COUPON_3
    SetVar VAR_0x8005, 1
    SetFlag FLAG_OBTAINED_COUPON_3
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown3WrongAnswer:
    PlayFanfare SEQ_SE_DP_BOX03
    Message JubilifeCity_Text_BzzzztThatsTheWrongAnswer3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_Clown3ObtainedCoupon:
    Message JubilifeCity_Text_APokemonMayHoldASingleItem2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_YouShouldStickAround:
    Message JubilifeCity_Text_YouShouldStickAround
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_KidWithNDS1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_Text_ImTradingPokemonWithMyBuddy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_KidWithNDS2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCity_TextIMadeMyPokemonHoldAnItemBeforeTradingIt
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCity_TriggerLookerPalPad:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetObjectEventPos LOCALID_LOOKER, 179, VAR_0x8005
    SetObjectEventDir LOCALID_LOOKER, DIR_EAST
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_EAST
    ClearFlag FLAG_HIDE_JUBILIFE_CITY_LOOKER
    AddObject LOCALID_LOOKER
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerNoticePlayer
    WaitMovement
    Common_SetLookerBGM
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerWalkToPlayer
    ApplyMovement LOCALID_PLAYER, JubilifeCity_Movement_PlayerFaceWest
    WaitMovement
    Call JubilifeCity_CheckPalPad
    CloseMessage
    ApplyMovement LOCALID_LOOKER, JubilifeCity_Movement_LookerLeavePalPad
    WaitMovement
    RemoveObject LOCALID_LOOKER
    Common_FadeToDefaultMusic4
    SetVar VAR_JUBILIFE_LOOKER_PAL_PAD_STATE, 2
    ReleaseAll
    End

    .balign 4, 0
JubilifeCity_Movement_LookerNoticePlayer:
    WalkSlowEast 2
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkToPlayer:
    WalkFastEast 6
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerLeavePalPad:
    WalkSlowWest
    WalkFastWest 8
    EndMovement

    .balign 4, 0
JubilifeCity_Movement_LookerWalkOnSpotWestEast:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement
