#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_gym_leader_room.h"
#include "res/field/events/events_hearthome_city_gym_leader_room.h"


    ScriptEntry HearthomeGym_Fantina
    ScriptEntry HearthomeGym_Fantina_TryGiveTM65
    ScriptEntry HearthomeGym_Fantina_CannotGiveTM65
    ScriptEntry HearthomeGym_Fantina_AfterBadge
    ScriptEntry HearthomeGym_LostBattle
    ScriptEntry HearthomeGym_TryRemoveBollards
    ScriptEntryEnd

HearthomeGym_TryRemoveBollards:
    GoToIfSet FLAG_MAP_LOCAL, HearthomeGym_RemoveBollards
    End

HearthomeGym_RemoveBollards:
    SetFlag FLAG_HEARTHOME_GYM_BOLLARDS
    RemoveObject HEARTHOME_CITY_GYM_LEADER_ROOM_BOLLARD_2
    RemoveObject HEARTHOME_CITY_GYM_LEADER_ROOM_BOLLARD_1
    ClearFlag FLAG_MAP_LOCAL
    End

HearthomeGym_Fantina:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, HearthomeGym_Fantina_PrepareSpinFaceSouth
    GoToIfEq VAR_RESULT, DIR_SOUTH, HearthomeGym_Fantina_PrepareSpinFaceNorth
    GoToIfEq VAR_RESULT, DIR_WEST, HearthomeGym_Fantina_PrepareSpinFaceEast
    GoToIfEq VAR_RESULT, DIR_EAST, HearthomeGym_Fantina_PrepareSpinFaceWest
    End

HearthomeGym_Fantina_PrepareSpinFaceSouth:
    ApplyMovement HEARTHOME_CITY_GYM_LEADER_ROOM_FANTINA, HearthomeGym_Fantina_SpinFaceSouth
    WaitMovement
    GoTo HearthomeGym_Fantina_Main

HearthomeGym_Fantina_PrepareSpinFaceNorth:
    ApplyMovement HEARTHOME_CITY_GYM_LEADER_ROOM_FANTINA, HearthomeGym_Fantina_SpinFaceNorth
    WaitMovement
    GoTo HearthomeGym_Fantina_Main

HearthomeGym_Fantina_PrepareSpinFaceEast:
    ApplyMovement HEARTHOME_CITY_GYM_LEADER_ROOM_FANTINA, HearthomeGym_Fantina_SpinFaceEast
    WaitMovement
    GoTo HearthomeGym_Fantina_Main

HearthomeGym_Fantina_PrepareSpinFaceWest:
    ApplyMovement HEARTHOME_CITY_GYM_LEADER_ROOM_FANTINA, HearthomeGym_Fantina_SpinFaceWest
    WaitMovement
    GoTo HearthomeGym_Fantina_Main

HearthomeGym_Fantina_Main:
    CheckBadgeAcquired BADGE_ID_RELIC, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HearthomeGym_Fantina_AfterBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 91, 0, 0, 0
    Message HearthomeGym_Text_FantinaIntro
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartTrainerBattle TRAINER_LEADER_FANTINA
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeGym_LostBattle
    Message HearthomeGym_Text_BeatFantina
    BufferPlayerName 0
    Message HearthomeGym_Text_FantinaReceiveRelicBadge
    PlaySound SEQ_BADGE
    WaitSound
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
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 91, TRAINER_LEADER_FANTINA, 0, 0
    SetVar VAR_HEARTHOME_STATE, 1
    SetFlag FLAG_HEARTHOME_ROUTE_209_ROADBLOCK
    ClearFlag FLAG_HEARTHOME_ROUTE_209_GATE_RIVAL
    Message HearthomeGym_Text_FantinaExplainRelicBadge
    GoTo HearthomeGym_Fantina_TryGiveTM65

HearthomeGym_Fantina_TryGiveTM65:
    SetVar VAR_0x8004, ITEM_TM65
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, HearthomeGym_Fantina_CannotGiveTM65
    GiveItemQuantity
    SetFlag FLAG_OBTAINED_FANTINA_TM65
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message HearthomeGym_Fantina_ExplainTM65
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeGym_Fantina_CannotGiveTM65:
    MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

HearthomeGym_Fantina_AfterBadge:
    GoToIfUnset FLAG_OBTAINED_FANTINA_TM65, HearthomeGym_Fantina_TryGiveTM65
    Message HearthomeGym_Text_FantinaAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
HearthomeGym_Fantina_SpinFaceSouth:
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    EndMovement

    .balign 4, 0
HearthomeGym_Fantina_SpinFaceNorth:
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    EndMovement

    .balign 4, 0
HearthomeGym_Fantina_SpinFaceEast:
    FaceNorth 4
    FaceWest 4
    FaceSouth 4
    FaceEast 4
    FaceNorth 4
    FaceWest 4
    FaceSouth 4
    FaceEast 4
    EndMovement

    .balign 4, 0
HearthomeGym_Fantina_SpinFaceWest:
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    EndMovement

HearthomeGym_LostBattle:
    ClearFlag FLAG_HEARTHOME_GYM_BOLLARDS
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
