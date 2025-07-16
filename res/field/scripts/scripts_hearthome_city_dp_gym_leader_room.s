#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_dp_gym_leader_room.h"


    ScriptEntry _0014
    ScriptEntry _012B
    ScriptEntry _0169
    ScriptEntry _0173
    ScriptEntry _01DC

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0056
    GoToIfEq VAR_RESULT, 1, _0066
    GoToIfEq VAR_RESULT, 2, _0076
    GoToIfEq VAR_RESULT, 3, _0086
    End

_0056:
    ApplyMovement 0, _018C
    WaitMovement
    GoTo _0096

_0066:
    ApplyMovement 0, _01A0
    WaitMovement
    GoTo _0096

_0076:
    ApplyMovement 0, _01B4
    WaitMovement
    GoTo _0096

_0086:
    ApplyMovement 0, _01C8
    WaitMovement
    GoTo _0096

_0096:
    CheckBadgeAcquired BADGE_ID_RELIC, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0173
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 100, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_FANTINA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01DC
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_RELIC
    ScrCmd_260 23
    SetTrainerFlag TRAINER_CAMPER_DREW
    SetTrainerFlag TRAINER_ACE_TRAINER_ALLEN
    SetTrainerFlag TRAINER_ACE_TRAINER_CATHERINE
    SetTrainerFlag TRAINER_LASS_MOLLY
    SetTrainerFlag TRAINER_PICNICKER_CHEYENNE
    SetTrainerFlag TRAINER_SCHOOL_KID_CHANCE
    SetTrainerFlag TRAINER_SCHOOL_KID_MACKENZIE
    SetTrainerFlag TRAINER_YOUNGSTER_DONNY
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 100, TRAINER_LEADER_FANTINA, 0, 0
    SetVar VAR_UNK_0x407B, 1
    SetFlag FLAG_UNK_0x0206
    ClearFlag FLAG_UNK_0x0207
    Message 3
    GoTo _012B

_012B:
    SetVar VAR_0x8004, ITEM_TM65
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0169
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x007D
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0173:
    GoToIfUnset FLAG_UNK_0x007D, _012B
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_018C:
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    EndMovement

    .balign 4, 0
_01A0:
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    EndMovement

    .balign 4, 0
_01B4:
    FaceNorth 4
    FaceWest 4
    FaceSouth 4
    FaceEast 4
    EndMovement

    .balign 4, 0
_01C8:
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    EndMovement

_01DC:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
    .byte 0
