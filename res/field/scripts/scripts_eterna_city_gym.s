#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_gym.h"

    .data

    ScriptEntry _001E
    ScriptEntry _0022
    ScriptEntry _0056
    ScriptEntry _0094
    ScriptEntry _01C9
    ScriptEntry _021C
    ScriptEntry _027B
    ScriptEntryEnd

_001E:
    ScrCmd_2C9
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FOREST, 0x800C
    GoToIfEq 0x800C, 1, _0048
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    BufferPlayerName 0
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_FOREST, 0x800C
    GoToIfEq 0x800C, 1, _0080
    BufferRivalName 0
    BufferRivalName 1
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0080:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0094:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FOREST, 0x800C
    GoToIfEq 0x800C, 1, _0161
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 67, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_GARDENIA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _01C3
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_FOREST
    ScrCmd_260 23
    SetTrainerFlag TRAINER_AROMA_LADY_JENNA
    SetTrainerFlag TRAINER_AROMA_LADY_ANGELA
    SetTrainerFlag TRAINER_LASS_CAROLINE
    SetTrainerFlag TRAINER_BEAUTY_LINDSAY
    ClearFlag 0x1FC
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 67, TRAINER_LEADER_GARDENIA, 0, 0
    Message 3
    GoTo _0177
    End

_0119:
    SetVar 0x8004, 0x19D
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0157
    CallCommonScript 0x7FC
    SetFlag 116
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0157:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0161:
    GoToIfUnset 116, _0119
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0177:
    SetVar 0x8004, 0x19D
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _01B7
    CallCommonScript 0x7FC
    SetFlag 116
    BufferItemName 0, 0x8004
    BufferTMHMMoveName 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    ScrCmd_2CA
    End

_01B7:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    ScrCmd_2CA
    End

_01C3:
    BlackOutFromBattle
    ReleaseAll
    End

_01C9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40AE, 1, _0211
    ScrCmd_0EA TRAINER_LASS_CAROLINE
    Message 6
    CloseMessage
    StartTrainerBattle TRAINER_LASS_CAROLINE
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _01C3
    Message 7
    WaitABXPadPress
    SetVar 0x40AE, 1
    CloseMessage
    ReleaseAll
    ScrCmd_2CA
    End

_0211:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40AE, 2, _0270
    ScrCmd_0EA TRAINER_AROMA_LADY_JENNA
    SetVar 0x8007, 3
    Call _02DA
    Message 8
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_JENNA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _01C3
    Message 9
    WaitABXPadPress
    SetVar 0x40AE, 2
    CloseMessage
    ReleaseAll
    ScrCmd_2CA
    End

_0270:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_027B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40AE, 3, _02CF
    ScrCmd_0EA TRAINER_AROMA_LADY_ANGELA
    SetVar 0x8007, 4
    Call _02DA
    Message 10
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_ANGELA
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _01C3
    Message 11
    WaitABXPadPress
    SetVar 0x40AE, 3
    CloseMessage
    ReleaseAll
    ScrCmd_2CA
    End

_02CF:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DA:
    GetPlayerDir 0x800C
    CallIfEq 0x800C, 0, _0314
    CallIfEq 0x800C, 1, _0322
    CallIfEq 0x800C, 2, _0330
    CallIfEq 0x800C, 3, _033E
    Return

_0314:
    ScrCmd_188 0x8007, 15
    ScrCmd_189 0x8007, 1
    Return

_0322:
    ScrCmd_188 0x8007, 14
    ScrCmd_189 0x8007, 0
    Return

_0330:
    ScrCmd_188 0x8007, 17
    ScrCmd_189 0x8007, 3
    Return

_033E:
    ScrCmd_188 0x8007, 16
    ScrCmd_189 0x8007, 2
    Return
