#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_gym.h"

    .data

    ScriptEntry _001E
    ScriptEntry _0034
    ScriptEntry _004A
    ScriptEntry _0060
    ScriptEntry _0076
    ScriptEntry _0171
    ScriptEntry _01A5
    ScriptEntryEnd

_001E:
    SetVar VAR_0x4001, 0
    SetVar VAR_0x4002, 1
    SetVar VAR_0x4003, 0
    InitPersistedMapFeaturesForPastoriaGym
    End

_0034:
    ScrCmd_170
    SetVar VAR_0x4001, 1
    SetVar VAR_0x4002, 0
    SetVar VAR_0x4003, 0
    End

_004A:
    ScrCmd_170
    SetVar VAR_0x4001, 0
    SetVar VAR_0x4002, 1
    SetVar VAR_0x4003, 0
    End

_0060:
    ScrCmd_170
    SetVar VAR_0x4001, 0
    SetVar VAR_0x4002, 0
    SetVar VAR_0x4003, 1
    End

_0076:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FEN, 0x800C
    GoToIfEq 0x800C, 1, _0155
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 122, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_WAKE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _016B
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_FEN
    ScrCmd_260 23
    SetTrainerFlag TRAINER_FISHERMAN_ERICK
    SetTrainerFlag TRAINER_SAILOR_DAMIAN
    SetTrainerFlag TRAINER_FISHERMAN_WALTER
    SetTrainerFlag TRAINER_SAILOR_SAMSON
    SetTrainerFlag TRAINER_TUBER_JACKY
    SetTrainerFlag TRAINER_TUBER_CAITLYN
    SetVar VAR_UNK_0x407C, 3
    SetFlag FLAG_UNK_0x020C
    SetFlag FLAG_UNK_0x0156
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 122, TRAINER_LEADER_WAKE, 0, 0
    Message 3
    GoTo _010D
    End

_010D:
    SetVar 0x8004, ITEM_TM55
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _014B
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x009C
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014B:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0155:
    GoToIfUnset FLAG_UNK_0x009C, _010D
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016B:
    BlackOutFromBattle
    ReleaseAll
    End

_0171:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FEN, 0x800C
    GoToIfEq 0x800C, 1, _0197
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    BufferPlayerName 0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_FEN, 0x800C
    GoToIfEq 0x800C, 1, _01CF
    BufferRivalName 0
    BufferRivalName 1
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CF:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
