#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_leader_room.h"
#include "res/field/events/events_hearthome_city_dp_gym_leader_room.h"


    ScriptEntry HearthomeCityDPGymLeaderRoom_Fantina
    ScriptEntry HearthomeCityDPGymLeaderRoom_TryGiveTM65
    ScriptEntry HearthomeCityDPGymLeaderRoom_BagIsFull
    ScriptEntry HearthomeCityDPGymLeaderRoom_FantinaPostBattle
    ScriptEntry HearthomeCityDPGymLeaderRoom_BlackOut

HearthomeCityDPGymLeaderRoom_Fantina:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, HearthomeCityDPGymLeaderRoom_FantinaSpinNorth
    GoToIfEq VAR_RESULT, DIR_SOUTH, HearthomeCityDPGymLeaderRoom_FantinaSpinSouth
    GoToIfEq VAR_RESULT, DIR_WEST, HearthomeCityDPGymLeaderRoom_FantinaSpinWest
    GoToIfEq VAR_RESULT, DIR_EAST, HearthomeCityDPGymLeaderRoom_FantinaSpinEast
    End

HearthomeCityDPGymLeaderRoom_FantinaSpinNorth:
    ApplyMovement LOCALID_FANTINA, HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinNorth
    WaitMovement
    GoTo HearthomeCityDPGymLeaderRoom_FantinaBattle

HearthomeCityDPGymLeaderRoom_FantinaSpinSouth:
    ApplyMovement LOCALID_FANTINA, HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinSouth
    WaitMovement
    GoTo HearthomeCityDPGymLeaderRoom_FantinaBattle

HearthomeCityDPGymLeaderRoom_FantinaSpinWest:
    ApplyMovement LOCALID_FANTINA, HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinWest
    WaitMovement
    GoTo HearthomeCityDPGymLeaderRoom_FantinaBattle

HearthomeCityDPGymLeaderRoom_FantinaSpinEast:
    ApplyMovement LOCALID_FANTINA, HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinEast
    WaitMovement
    GoTo HearthomeCityDPGymLeaderRoom_FantinaBattle

HearthomeCityDPGymLeaderRoom_FantinaBattle:
    GoToIfBadgeAcquired BADGE_ID_RELIC, HearthomeCityDPGymLeaderRoom_FantinaPostBattle
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 100, 0, 0, 0
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_FANTINA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCityDPGymLeaderRoom_BlackOut
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy1
    BufferPlayerName 0
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy2
    PlayFanfare SEQ_BADGE
    WaitFanfare
    GiveBadge BADGE_ID_RELIC
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_CAMPER_DREW
    SetTrainerFlag TRAINER_ACE_TRAINER_ALLEN
    SetTrainerFlag TRAINER_ACE_TRAINER_CATHERINE
    SetTrainerFlag TRAINER_LASS_MOLLY
    SetTrainerFlag TRAINER_PICNICKER_CHEYENNE
    SetTrainerFlag TRAINER_SCHOOL_KID_CHANCE
    SetTrainerFlag TRAINER_SCHOOL_KID_MACKENZIE
    SetTrainerFlag TRAINER_YOUNGSTER_DONNY
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 100, TRAINER_LEADER_FANTINA, 0, 0
    SetVar VAR_HEARTHOME_STATE, 1
    SetFlag FLAG_HIDE_HEARTHOME_ROUTE_209_ROADBLOCK
    ClearFlag FLAG_HIDE_HEARTHOME_ROUTE_209_GATE_RIVAL
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy3
    GoTo HearthomeCityDPGymLeaderRoom_TryGiveTM65

HearthomeCityDPGymLeaderRoom_TryGiveTM65:
    SetVar VAR_0x8004, ITEM_TM65
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, HearthomeCityDPGymLeaderRoom_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_FANTINA_TM65
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy4
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymLeaderRoom_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

HearthomeCityDPGymLeaderRoom_FantinaPostBattle:
    GoToIfUnset FLAG_OBTAINED_FANTINA_TM65, HearthomeCityDPGymLeaderRoom_TryGiveTM65
    Message HearthomeCityDPGymLeaderRoom_Text_Dummy5
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinNorth:
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    EndMovement

    .balign 4, 0
HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinSouth:
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    EndMovement

    .balign 4, 0
HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinWest:
    FaceNorth 4
    FaceWest 4
    FaceSouth 4
    FaceEast 4
    EndMovement

    .balign 4, 0
HearthomeCityDPGymLeaderRoom_Movement_FantinaSpinEast:
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    EndMovement

HearthomeCityDPGymLeaderRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
