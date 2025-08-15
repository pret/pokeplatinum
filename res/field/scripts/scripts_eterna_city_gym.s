#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_gym.h"


    ScriptEntry _001E
    ScriptEntry _0022
    ScriptEntry _0056
    ScriptEntry _0094
    ScriptEntry _01C9
    ScriptEntry _021C
    ScriptEntry _027B
    ScriptEntryEnd

_001E:
    InitPersistedMapFeaturesForEternaGym
    End

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0048
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
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0080
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
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0161
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 67, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_GARDENIA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01C3
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_FOREST
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_AROMA_LADY_JENNA
    SetTrainerFlag TRAINER_AROMA_LADY_ANGELA
    SetTrainerFlag TRAINER_LASS_CAROLINE
    SetTrainerFlag TRAINER_BEAUTY_LINDSAY
    ClearFlag FLAG_UNK_0x01FC
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 67, TRAINER_LEADER_GARDENIA, 0, 0
    Message 3
    GoTo _0177
    End

_0119:
    SetVar VAR_0x8004, ITEM_TM86
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0157
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0074
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
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
    GoToIfUnset FLAG_UNK_0x0074, _0119
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0177:
    SetVar VAR_0x8004, ITEM_TM86
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _01B7
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0074
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
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
    GoToIfGe VAR_UNK_0x40AE, 1, _0211
    PlayTrainerEncounterBGM TRAINER_LASS_CAROLINE
    Message 6
    CloseMessage
    StartTrainerBattle TRAINER_LASS_CAROLINE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01C3
    Message 7
    WaitABXPadPress
    SetVar VAR_UNK_0x40AE, 1
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
    GoToIfGe VAR_UNK_0x40AE, 2, _0270
    PlayTrainerEncounterBGM TRAINER_AROMA_LADY_JENNA
    SetVar VAR_0x8007, 3
    Call _02DA
    Message 8
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_JENNA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01C3
    Message 9
    WaitABXPadPress
    SetVar VAR_UNK_0x40AE, 2
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
    GoToIfGe VAR_UNK_0x40AE, 3, _02CF
    PlayTrainerEncounterBGM TRAINER_AROMA_LADY_ANGELA
    SetVar VAR_0x8007, 4
    Call _02DA
    Message 10
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_ANGELA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _01C3
    Message 11
    WaitABXPadPress
    SetVar VAR_UNK_0x40AE, 3
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
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, 0, _0314
    CallIfEq VAR_RESULT, 1, _0322
    CallIfEq VAR_RESULT, 2, _0330
    CallIfEq VAR_RESULT, 3, _033E
    Return

_0314:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir VAR_0x8007, DIR_SOUTH
    Return

_0322:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir VAR_0x8007, DIR_NORTH
    Return

_0330:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_RIGHT
    SetObjectEventDir VAR_0x8007, DIR_EAST
    Return

_033E:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventDir VAR_0x8007, DIR_WEST
    Return
