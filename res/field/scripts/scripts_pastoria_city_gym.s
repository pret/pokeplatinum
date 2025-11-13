#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_gym.h"


    ScriptEntry PastoriaGym_Init
    ScriptEntry PastoriaGym_BlueButton
    ScriptEntry PastoriaGym_GreenButton
    ScriptEntry PastoriaGym_YellowButton
    ScriptEntry PastoriaGym_Wake
    ScriptEntry PastoriaGym_GymGuide
    ScriptEntry PastoriaGym_GymStatue
    ScriptEntryEnd

PastoriaGym_Init:
    SetVar VAR_MAP_LOCAL_1, 0
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 0
    InitPersistedMapFeaturesForPastoriaGym
    End

PastoriaGym_BlueButton:
    PressPastoriaGymButton
    SetVar VAR_MAP_LOCAL_1, 1
    SetVar VAR_MAP_LOCAL_2, 0
    SetVar VAR_MAP_LOCAL_3, 0
    End

PastoriaGym_GreenButton:
    PressPastoriaGymButton
    SetVar VAR_MAP_LOCAL_1, 0
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_MAP_LOCAL_3, 0
    End

PastoriaGym_YellowButton:
    PressPastoriaGymButton
    SetVar VAR_MAP_LOCAL_1, 0
    SetVar VAR_MAP_LOCAL_2, 0
    SetVar VAR_MAP_LOCAL_3, 1
    End

PastoriaGym_Wake:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_FEN, PastoriaGym_WakeAlreadyHaveFenBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 122, 0, 0, 0
    Message PastoriaGym_Text_WakeIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_WAKE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, PastoriaGym_LostBattle
    Message PastoriaGym_Text_BeatWake
    BufferPlayerName 0
    Message PastoriaGym_Text_WakeReveiveFenBadge
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_FEN
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_FISHERMAN_ERICK
    SetTrainerFlag TRAINER_SAILOR_DAMIAN
    SetTrainerFlag TRAINER_FISHERMAN_WALTER
    SetTrainerFlag TRAINER_SAILOR_SAMSON
    SetTrainerFlag TRAINER_TUBER_JACKY
    SetTrainerFlag TRAINER_TUBER_CAITLYN
    SetVar VAR_PASTORIA_STATE, 3
    SetFlag FLAG_UNK_0x020C
    SetFlag FLAG_UNK_0x0156
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 122, TRAINER_LEADER_WAKE, 0, 0
    Message PastoriaGym_Text_WakeExplainFenBadge
    GoTo PastoriaGym_WakeTryGiveTm55
    End

PastoriaGym_WakeTryGiveTm55:
    SetVar VAR_0x8004, ITEM_TM55
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaGym_WakeCannotGiveTm55
    GiveItemQuantity
    SetFlag FLAG_OBTAINED_WAKE_TM55
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message PastoriaGym_Text_WakeExplainTM55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaGym_WakeCannotGiveTm55:
    MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

PastoriaGym_WakeAlreadyHaveFenBadge:
    GoToIfUnset FLAG_OBTAINED_WAKE_TM55, PastoriaGym_WakeTryGiveTm55
    Message PastoriaGym_Text_WakeAfterbadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaGym_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

PastoriaGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_FEN, PastoriaGym_GymGuideAfterBadge
    Message PastoriaGym_Text_GymGuideBeforebadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message PastoriaGym_Text_GymGuideAfterbadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_FEN, PastoriaGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message PastoriaGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PastoriaGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message PastoriaGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
