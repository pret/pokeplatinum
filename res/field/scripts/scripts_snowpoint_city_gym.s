#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_gym.h"


    ScriptEntry SnowpointGym_Init
    ScriptEntry SnowpointGym_Candice
    ScriptEntry SnowpointGym_GymGuide
    ScriptEntry SnowpointGym_GymStatue
    ScriptEntryEnd

SnowpointGym_Init:
    GoToIfSet FLAG_UNK_0x00EB, _001F
    End

_001F:
    SetFlag FLAG_UNK_0x01F3
    End

SnowpointGym_Candice:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_ICICLE, SnowpointGym_CandiceAfterBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 167, 0, 0, 0
    Message SnowpointGym_Text_CandiceIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_CANDICE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SnowpointGym_LostBattle
    Message SnowpointGym_Text_BeatCandice
    BufferPlayerName 0
    Message SnowpointGym_Text_CandiceReceiveIciclebadge
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_ICICLE
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_ACE_TRAINER_SERGIO
    SetTrainerFlag TRAINER_ACE_TRAINER_ISAIAH
    SetTrainerFlag TRAINER_ACE_TRAINER_ANTON
    SetTrainerFlag TRAINER_ACE_TRAINER_SAVANNAH
    SetTrainerFlag TRAINER_ACE_TRAINER_ALICIA
    SetTrainerFlag TRAINER_ACE_TRAINER_BRENNA
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 167, TRAINER_LEADER_CANDICE, 0, 0
    SetFlag FLAG_HIDE_VEILSTONE_GALACTIC_GRUNTS
    Message SnowpointGym_Text_CandiceExplainIcicleBadge
    GoTo SnowpointGym_CandiceTryGiveTM72

SnowpointGym_CandiceTryGiveTM72:
    SetVar VAR_0x8004, ITEM_TM72
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, SnowpointGym_CandiceCannotGiveTM72
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_CANDICE_TM72
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message SnowpointGym_Text_CandiceExplainTM72
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointGym_CandiceCannotGiveTM72:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

SnowpointGym_CandiceAfterBadge:
    GoToIfUnset FLAG_OBTAINED_CANDICE_TM72, SnowpointGym_CandiceTryGiveTM72
    Message SnowpointGym_Text_CandiceAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointGym_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

SnowpointGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_ICICLE, SnowpointGym_GymGuideAfterBadge
    Message SnowpointGym_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message SnowpointGym_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_ICICLE, SnowpointGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message SnowpointGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message SnowpointGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
