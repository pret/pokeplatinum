#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _0126
    ScriptEntry _015A
    .short 0xFD13

_0012:
    ScrCmd_173
    End

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_MINE, 0x800C
    GoToIfEq 0x800C, 1, _0107
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 35, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle trainer_leader_byron
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0120
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_MINE
    ScrCmd_260 23
    SetTrainerFlag trainer_black_belt_david
    SetTrainerFlag trainer_worker_jackson
    SetTrainerFlag trainer_worker_gary
    SetTrainerFlag trainer_ace_trainer_cesar
    SetTrainerFlag trainer_ace_trainer_breanna
    SetTrainerFlag trainer_black_belt_ricky
    SetTrainerFlag trainer_worker_gerardo
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 35, trainer_leader_byron, 0, 0
    ClearFlag 0x1B2
    ClearFlag 0x2CC
    ClearFlag 0x1B8
    ClearFlag 0x1B6
    ClearFlag 0x1B7
    SetVar 0x4078, 2
    SetFlag 0x198
    Message 3
    GoTo _00BF

_00BF:
    SetVar 0x8004, 0x1A2
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00FD
    CallCommonScript 0x7FC
    SetFlag 146
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FD:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0107:
    GoToIfUnset 146, _00BF
    BufferRivalName 1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0120:
    ScrCmd_0EB
    ReleaseAll
    End

_0126:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_MINE, 0x800C
    GoToIfEq 0x800C, 1, _014C
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014C:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_MINE, 0x800C
    GoToIfEq 0x800C, 1, _0184
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0184:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
