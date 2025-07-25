#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_gym_room_3.h"


    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0027
    ScriptEntryEnd

_0012:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 2
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 2
    End

_0027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0104
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 156, 0, 0, 0
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_VOLKNER
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _011A
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_BEACON
    ScrCmd_260 23
    SetTrainerFlag TRAINER_ACE_TRAINER_ZACHERY
    SetTrainerFlag TRAINER_ACE_TRAINER_DESTINY
    SetTrainerFlag TRAINER_GUITARIST_JERRY
    SetTrainerFlag TRAINER_GUITARIST_PRESTON
    SetTrainerFlag TRAINER_GUITARIST_LONNIE
    SetTrainerFlag TRAINER_POKE_KID_MEGHAN
    SetTrainerFlag TRAINER_SCHOOL_KID_FORREST
    SetTrainerFlag TRAINER_SCHOOL_KID_TIERA
    SetVar VAR_UNK_0x407E, 2
    // BUG: TRAINER_LEADER_ROARK should be TRAINER_LEADER_VOLKNER
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 156, TRAINER_LEADER_ROARK, 0, 0
    Message 3
    GoTo _00BC

_00BC:
    SetVar VAR_0x8004, ITEM_TM57
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _00FA
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x00B6
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FA:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0104:
    GoToIfUnset FLAG_UNK_0x00B6, _00BC
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011A:
    BlackOutFromBattle
    ReleaseAll
    End
