#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_hearthome_city_dp_gym_leader_room.h"

    .data

    ScriptEntry _0014
    ScriptEntry _012B
    ScriptEntry _0169
    ScriptEntry _0173
    ScriptEntry _01DC

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1BD 0x800C
    GoToIfEq 0x800C, 0, _0056
    GoToIfEq 0x800C, 1, _0066
    GoToIfEq 0x800C, 2, _0076
    GoToIfEq 0x800C, 3, _0086
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
    CheckBadgeAcquired BADGE_ID_RELIC, 0x800C
    GoToIfEq 0x800C, 1, _0173
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 100, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle trainer_leader_fantina
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _01DC
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_RELIC
    ScrCmd_260 23
    SetTrainerFlag trainer_camper_drew
    SetTrainerFlag trainer_ace_trainer_allen
    SetTrainerFlag trainer_ace_trainer_catherine
    SetTrainerFlag trainer_lass_molly
    SetTrainerFlag trainer_picnicker_cheyenne
    SetTrainerFlag trainer_school_kid_chance
    SetTrainerFlag trainer_school_kid_mackenzie
    SetTrainerFlag trainer_youngster_donny
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 100, trainer_leader_fantina, 0, 0
    SetVar 0x407B, 1
    SetFlag 0x206
    ClearFlag 0x207
    Message 3
    GoTo _012B

_012B:
    SetVar 0x8004, 0x188
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0169
    CallCommonScript 0x7FC
    SetFlag 125
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
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
    GoToIfUnset 125, _012B
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_018C:
    MoveAction_002 4
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    MoveAction_000 4
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_000 4
    MoveAction_002 4
    MoveAction_001 4
    MoveAction_003 4
    EndMovement

    .balign 4, 0
_01C8:
    MoveAction_000 4
    MoveAction_003 4
    MoveAction_001 4
    MoveAction_002 4
    EndMovement

_01DC:
    ScrCmd_0EB
    ReleaseAll
    End

    .byte 0
    .byte 0
