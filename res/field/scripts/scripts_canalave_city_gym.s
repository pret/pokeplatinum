#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_gym.h"


    ScriptEntry CanalaveGym_Init
    ScriptEntry CanalaveGym_Byron
    ScriptEntry CanalaveGym_GymGuide
    ScriptEntry CanalaveGym_GymStatue
    ScriptEntryEnd

CanalaveGym_Init:
    InitPersistedMapFeaturesForCanalaveGym
    End

CanalaveGym_Byron:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_MINE, CanalaveGym_ByronAfterBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 35, 0, 0, 0
    Message CanalaveGym_Text_ByronIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_BYRON
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CanalaveGym_Lostbattle
    Message CanalaveGym_Text_BeatByron
    BufferPlayerName 0
    Message CanalaveGym_Text_ByronReceiveMineBadge
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_MINE
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_BLACK_BELT_DAVID
    SetTrainerFlag TRAINER_WORKER_JACKSON
    SetTrainerFlag TRAINER_WORKER_GARY
    SetTrainerFlag TRAINER_ACE_TRAINER_CESAR
    SetTrainerFlag TRAINER_ACE_TRAINER_BREANNA
    SetTrainerFlag TRAINER_BLACK_BELT_RICKY
    SetTrainerFlag TRAINER_WORKER_GERARDO
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 35, TRAINER_LEADER_BYRON, 0, 0
    ClearFlag FLAG_HIDE_CANALAVE_RIVAL
    ClearFlag FLAG_HIDE_CANALAVE_CITY_RIVAL
    ClearFlag FLAG_HIDE_CANALAVE_LIBRARY_RIVAL
    ClearFlag FLAG_HIDE_CANALAVE_LIBRARY_COUNTERPART
    ClearFlag FLAG_HIDE_CANALAVE_LIBRARY_ROWAN
    SetVar VAR_CANALAVE_STATE, 2
    SetFlag FLAG_HIDE_SANDGEM_TOWN_LAB_PROF_ROWAN
    Message CanalaveGym_Text_ByronExplainMineBadge
    GoTo CanalaveGym_ByronTryGiveTM91

CanalaveGym_ByronTryGiveTM91:
    SetVar VAR_0x8004, ITEM_TM91
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, CanalaveGym_ByronCannotGiveTM91
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_BYRON_TM91
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message CanalaveGym_Text_ByronExplainTM91
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveGym_ByronCannotGiveTM91:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

CanalaveGym_ByronAfterBadge:
    GoToIfUnset FLAG_OBTAINED_BYRON_TM91, CanalaveGym_ByronTryGiveTM91
    BufferRivalName 1
    Message CanalaveGym_Text_ByronAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveGym_Lostbattle:
    BlackOutFromBattle
    ReleaseAll
    End

CanalaveGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_MINE, CanalaveGym_GymGuideAfterBadge
    Message CanalaveGym_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message CanalaveGym_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_MINE, CanalaveGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message CanalaveGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

CanalaveGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message CanalaveGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
