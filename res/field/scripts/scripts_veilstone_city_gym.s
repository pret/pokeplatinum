#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_gym.h"

    .data

    ScriptEntry _001E
    ScriptEntry _0022
    ScriptEntry _011E
    ScriptEntry _0152
    ScriptEntry _0190
    ScriptEntry _01A1
    ScriptEntry _01B2
    ScriptEntryEnd

_001E:
    InitPersistedMapFeaturesForVeilstoneGym
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COBBLE, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _00FF
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 133, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_MAYLENE
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _0118
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_COBBLE
    ScrCmd_260 23
    SetTrainerFlag TRAINER_BLACK_BELT_COLBY
    SetTrainerFlag TRAINER_BLACK_BELT_DARREN
    SetTrainerFlag TRAINER_BLACK_BELT_RAFAEL
    SetTrainerFlag TRAINER_BLACK_BELT_JEFFERY
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 133, TRAINER_LEADER_MAYLENE, 0, 0
    SetFlag FLAG_UNK_0x01A3
    ClearFlag FLAG_UNK_0x01A8
    SetVar VAR_UNK_0x407D, 1
    SetVar 0x411A, 1
    Message 3
    GoTo _00B7
    End

_00B7:
    SetVar VAR_0x8004, ITEM_TM60
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _00F5
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x009D
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F5:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_00FF:
    GoToIfUnset FLAG_UNK_0x009D, _00B7
    BufferPlayerName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    BlackOutFromBattle
    ReleaseAll
    End

_011E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COBBLE, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _0144
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_COBBLE, VAR_0x800C
    GoToIfEq VAR_0x800C, 1, _017C
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017C:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0190:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
