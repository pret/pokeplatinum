#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_gym.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _0126
    ScriptEntry _015A
    ScriptEntryEnd

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
    StartTrainerBattle TRAINER_LEADER_BYRON
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0120
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_MINE
    ScrCmd_260 23
    SetTrainerFlag TRAINER_BLACK_BELT_DAVID
    SetTrainerFlag TRAINER_WORKER_JACKSON
    SetTrainerFlag TRAINER_WORKER_GARY
    SetTrainerFlag TRAINER_ACE_TRAINER_CESAR
    SetTrainerFlag TRAINER_ACE_TRAINER_BREANNA
    SetTrainerFlag TRAINER_BLACK_BELT_RICKY
    SetTrainerFlag TRAINER_WORKER_GERARDO
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 35, TRAINER_LEADER_BYRON, 0, 0
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
    BlackOutFromBattle
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
