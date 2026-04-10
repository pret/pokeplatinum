#include "macros/scrcmd.inc"
#include "res/text/bank/iron_island_b2f_left_room.h"
#include "res/text/bank/special_met_location_names.h"
#include "res/field/events/events_iron_island_b2f_left_room.h"


    ScriptEntry IronIslandB2FLeftRoom_OnTransition
    ScriptEntry IronIslandB2FLeftRoom_TriggerPlatformLift
    ScriptEntry IronIslandB2FLeftRoom_TriggerStartFollowingRiley
    ScriptEntry IronIslandB2FLeftRoom_TriggerPlayerLeaveRiley
    ScriptEntry IronIslandB2FLeftRoom_Unused5
    ScriptEntry IronIslandB2FLeftRoom_Unused6
    ScriptEntry IronIslandB2FLeftRoom_Unused7
    ScriptEntry IronIslandB2FLeftRoom_Riley
    ScriptEntry IronIslandB2FLeftRoom_TriggerGrunts
    ScriptEntryEnd

IronIslandB2FLeftRoom_OnTransition:
    InitPersistedMapFeaturesForPlatformLift
    GoToIfUnset FLAG_RECEIVED_RIOLU_EGG_FROM_RILEY, IronIslandB2FLeftRoom_TrySetRileyPositionAtExit
    End

IronIslandB2FLeftRoom_TrySetRileyPositionAtExit:
    GoToIfEq VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 2, IronIslandB2FLeftRoom_SetRileyPositionAtExit
    SetVar VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 0
    End

IronIslandB2FLeftRoom_SetRileyPositionAtExit:
    SetObjectEventPos LOCALID_RILEY, 19, 41
    SetObjectEventMovementType LOCALID_RILEY, MOVEMENT_TYPE_LOOK_EAST
    SetObjectEventDir LOCALID_RILEY, DIR_EAST
    End

IronIslandB2FLeftRoom_TriggerPlatformLift:
    TriggerPlatformLift
    End

IronIslandB2FLeftRoom_TriggerStartFollowingRiley:
    LockAll
    SetPlayerBike FALSE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 2, IronIslandB2FLeftRoom_RileyNoticeWalkToPlayer
    CallIfEq VAR_0x8005, 3, IronIslandB2FLeftRoom_RileyNoticeFacePlayer
    BufferPlayerName 0
    CallIfUnset FLAG_TALKED_TO_IRON_ISLAND_B2F_LEFT_ROOM_RILEY, IronIslandB2FLeftRoom_LetsTeamUp
    CallIfSet FLAG_TALKED_TO_IRON_ISLAND_B2F_LEFT_ROOM_RILEY, IronIslandB2FLeftRoom_HiLetsTeamUp
    BufferPlayerName 0
    PlayFanfare SEQ_GONIN
    Message IronIslandB2FLeftRoom_Text_DecidedToGoWithRiley
    WaitFanfare
    SetFlag FLAG_TALKED_TO_IRON_ISLAND_B2F_LEFT_ROOM_RILEY
    SetVar VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 1
    Message IronIslandB2FLeftRoom_Text_IllHealYourPokemon
    WaitButton
    CloseMessage
    SetVar VAR_PARTNER_TRAINER_ID, TRAINER_RILEY_IRON_ISLAND
    SetHasPartner
    SetMovementType LOCALID_RILEY, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

IronIslandB2FLeftRoom_RileyNoticeWalkToPlayer:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyNoticeWalkToPlayer
    WaitMovement
    Return

IronIslandB2FLeftRoom_RileyNoticeFacePlayer:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyNoticeFacePlayer
    WaitMovement
    Return

IronIslandB2FLeftRoom_LetsTeamUp:
    Message IronIslandB2FLeftRoom_Text_LetsTeamUp
    Return

IronIslandB2FLeftRoom_HiLetsTeamUp:
    Message IronIslandB2FLeftRoom_Text_HiLetsTeamUp
    Return

IronIslandB2FLeftRoom_TriggerPlayerLeaveRiley:
    LockAll
    ApplyMovement LOCALID_PLAYER, IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotWest
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyFaceEast
    WaitMovement
    Message IronIslandB2FLeftRoom_Text_GoodIfYouCameBack
    CloseMessage
    SetVar VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 0
    ClearHasPartner
    SetMovementType LOCALID_RILEY, MOVEMENT_TYPE_LOOK_WEST
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 2, IronIslandB2FLeftRoom_RileyWalkBackZ2
    CallIfEq VAR_0x8005, 3, IronIslandB2FLeftRoom_RileyWalkBackZ3
    ReleaseAll
    End

IronIslandB2FLeftRoom_RileyWalkBackZ2:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkBackZ2
    WaitMovement
    Return

IronIslandB2FLeftRoom_RileyWalkBackZ3:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkBackZ3
    WaitMovement
    Return

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyFaceEast:
    FaceEast
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused:
    WalkNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyNoticeWalkToPlayer:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyNoticeFacePlayer:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkBackZ2:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkBackZ3:
    WalkNormalWest
    EndMovement

IronIslandB2FLeftRoom_Unused5:
    End

IronIslandB2FLeftRoom_TriggerGrunts:
    LockAll
    ClearHasPartner
    SetMovementType LOCALID_RILEY, MOVEMENT_TYPE_LOOK_WEST
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 40, IronIslandB2FLeftRoom_PlayerRileyWalkToGruntsZ40
    CallIfEq VAR_0x8005, 41, IronIslandB2FLeftRoom_PlayerRileyWalkToGruntsZ41
    Message IronIslandB2FLeftRoom_Text_YoureResponsible
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_WEST, IronIslandB2FLeftRoom_Movement_GruntMWestWalkOnSpotEast
    WaitMovement
    Message IronIslandB2FLeftRoom_Text_WellTakeAllPokemon
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotEast
    WaitMovement
    Message IronIslandB2FLeftRoom_Text_WereAbductingPokemon
    CloseMessage
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotWest
    WaitMovement
    BufferPlayerName 0
    Message IronIslandB2FLeftRoom_Text_WeCantLose
    CloseMessage
    SetHasPartner
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_IRON_ISLAND_1, TRAINER_GALACTIC_GRUNT_IRON_ISLAND_2
    ClearHasPartner
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, IronIslandB2FLeftRoom_BlackOut
    ApplyMovement LOCALID_GRUNT_M_WEST, IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotSouth
    WaitMovement
    Message IronIslandB2FLeftRoom_Text_LetsBeatItPartner
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_EAST, IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotNorth
    WaitMovement
    Message IronIslandB2FLeftRoom_Text_WeDontKnowBigPlan
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_GRUNT_M_WEST
    RemoveObject LOCALID_GRUNT_M_EAST
    FadeScreenIn
    WaitFadeScreen
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 40, IronIslandB2FLeftRoom_PlayerRileyFaceEachOtherZ40
    CallIfEq VAR_0x8005, 41, IronIslandB2FLeftRoom_PlayerRileyFaceEachOtherZ41
    Call IronIslandB2FLeftRoom_WouldYouTakeEgg
    ScrCmd_2B6 LOCALID_RILEY, 1
    ReleaseAll
    End

IronIslandB2FLeftRoom_PlayerRileyWalkToGruntsZ40:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkToGruntMSouth
    ApplyMovement LOCALID_PLAYER, IronIslandB2FLeftRoom_Movement_PlayerWalkToGruntMNorth
    WaitMovement
    Return

IronIslandB2FLeftRoom_PlayerRileyWalkToGruntsZ41:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkToGruntMNorth
    ApplyMovement LOCALID_PLAYER, IronIslandB2FLeftRoom_Movement_PlayerWalkToGruntMSouth
    WaitMovement
    Return

IronIslandB2FLeftRoom_UnusedMovement6:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_Unused6
    WaitMovement
    Return

IronIslandB2FLeftRoom_UnusedMovement7:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_Unused7
    WaitMovement
    Return

IronIslandB2FLeftRoom_PlayerRileyFaceEachOtherZ40:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotNorth
    ApplyMovement LOCALID_PLAYER, IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotSouth
    WaitMovement
    Return

IronIslandB2FLeftRoom_PlayerRileyFaceEachOtherZ41:
    ApplyMovement LOCALID_RILEY, IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Return

IronIslandB2FLeftRoom_WouldYouTakeEgg:
    Message IronIslandB2FLeftRoom_Text_WouldYouTakeEgg
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, IronIslandB2FLeftRoom_AcceptedEgg
    GoToIfEq VAR_RESULT, MENU_NO, IronIslandB2FLeftRoom_RefusedEgg
    End

IronIslandB2FLeftRoom_AcceptedEgg:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, IronIslandB2FLeftRoom_NoRoomToTakeEgg
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    Message IronIslandB2FLeftRoom_Text_ShowEggPokemonPlaces
    GiveEgg SPECIES_RIOLU, SPECIAL_METLOC_NAME_RILEY
    SetFlag FLAG_HIDE_IRON_ISLAND_B2F_LEFT_ROOM_RILEY
    ClearFlag FLAG_COULD_NOT_RECEIVE_RIOLU_EGG
    Call IronIslandB2FLeftRoom_SetFlagReceivedEgg
    Message IronIslandB2FLeftRoom_Text_LetsMeetAgain
    WaitButton
    CloseMessage
    Return

IronIslandB2FLeftRoom_NoRoomToTakeEgg:
    SetFlag FLAG_COULD_NOT_RECEIVE_RIOLU_EGG
    SetVar VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 2
    Message IronIslandB2FLeftRoom_Text_NoRoomToTakeEgg
    WaitButton
    CloseMessage
    Return

IronIslandB2FLeftRoom_RefusedEgg:
    Message IronIslandB2FLeftRoom_Text_AcceptItAsToken
    GoTo IronIslandB2FLeftRoom_WouldYouTakeEgg
    End

IronIslandB2FLeftRoom_SetFlagReceivedEgg:
    SetFlag FLAG_RECEIVED_RIOLU_EGG_FROM_RILEY
    SetVar VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 2
    Return

IronIslandB2FLeftRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_GruntMWestWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_GruntMEastWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused2:
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused3:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused4:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused5:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkToGruntMSouth:
    WalkOnSpotNormalWest
    WalkNormalSouth
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkToGruntMNorth:
    WalkOnSpotNormalWest
    WalkNormalNorth
    WalkNormalWest 2
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused6:
    WalkNormalSouth
    WalkNormalWest
    EndMovement

IronIslandB2FLeftRoom_Movement_Unused7:
    WalkNormalNorth
    WalkNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_RileyWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_PlayerWalkToGruntMNorth:
    Delay8 2
    WalkOnSpotNormalSouth
    Delay8
    Delay2
    WalkNormalWest
    EndMovement

    .balign 4, 0
IronIslandB2FLeftRoom_Movement_PlayerWalkToGruntMSouth:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay8
    Delay2
    WalkNormalWest
    EndMovement

IronIslandB2FLeftRoom_Unused6:
    End

IronIslandB2FLeftRoom_Unused7:
    End

IronIslandB2FLeftRoom_Riley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_COULD_NOT_RECEIVE_RIOLU_EGG, IronIslandB2FLeftRoom_TryGiveEgg
    GoToIfEq VAR_IRON_ISLAND_B2F_LEFT_ROOM_FOLLOWER_RILEY_STATE, 2, IronIslandB2FLeftRoom_LetsMeetAgain
    GoToIfGe VAR_FOLLOWER_RILEY_TIMES_TALKED, 4, IronIslandB2FLeftRoom_WhatsGoingOnHere
    GoToIfEq VAR_FOLLOWER_RILEY_TIMES_TALKED, 3, IronIslandB2FLeftRoom_ImagineSteelVsSteel
    GoToIfEq VAR_FOLLOWER_RILEY_TIMES_TALKED, 2, IronIslandB2FLeftRoom_HaveYouMetByron
    GoToIfEq VAR_FOLLOWER_RILEY_TIMES_TALKED, 1, IronIslandB2FLeftRoom_SteelOresPlayedOut
    BufferPlayerName 0
    Message IronIslandB2FLeftRoom_Text_IdAgree
    GoTo IronIslandB2FLeftRoom_RileyEnd
    End

IronIslandB2FLeftRoom_SteelOresPlayedOut:
    Message IronIslandB2FLeftRoom_Text_SteelOresPlayedOut
    GoTo IronIslandB2FLeftRoom_RileyEnd
    End

IronIslandB2FLeftRoom_HaveYouMetByron:
    Message IronIslandB2FLeftRoom_Text_HaveYouMetByron
    GoTo IronIslandB2FLeftRoom_RileyEnd
    End

IronIslandB2FLeftRoom_ImagineSteelVsSteel:
    Message IronIslandB2FLeftRoom_Text_ImagineSteelVsSteel
    GoTo IronIslandB2FLeftRoom_RileyEnd
    End

IronIslandB2FLeftRoom_WhatsGoingOnHere:
    Message IronIslandB2FLeftRoom_Text_WhatsGoingOnHere
    WaitButton
    CloseMessage
    ReleaseAll
    End

IronIslandB2FLeftRoom_RileyEnd:
    AddVar VAR_FOLLOWER_RILEY_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

IronIslandB2FLeftRoom_TryGiveEgg:
    Call IronIslandB2FLeftRoom_WouldYouTakeEgg
    ScrCmd_2B6 LOCALID_RILEY, 1
    ReleaseAll
    End

IronIslandB2FLeftRoom_LetsMeetAgain:
    Message IronIslandB2FLeftRoom_Text_LetsMeetAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
