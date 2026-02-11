#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_gym.h"


    ScriptEntry VeilstoneGym_Init
    ScriptEntry VeilstoneGym_Maylene
    ScriptEntry VeilstoneGym_GymGuide
    ScriptEntry VeilstoneGym_GymStatue
    ScriptEntry VeilstoneGym_LeftPoster
    ScriptEntry VeilstoneGym_RightPoster
    ScriptEntry VeilstoneGym_MiddlePoster
    ScriptEntryEnd

VeilstoneGym_Init:
    InitPersistedMapFeaturesForVeilstoneGym
    End

VeilstoneGym_Maylene:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COBBLE, VeilstoneGym_MayleneAfterBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 133, 0, 0, 0
    Message VeilstoneGym_Text_MayleneIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_MAYLENE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, VeilstoneGym_LostBattle
    Message VeilstoneGym_Text_BeatMaylene
    BufferPlayerName 0
    Message VeilstoneGym_Text_MayleneReceiveBadge
    PlaySound SEQ_BADGE
    WaitSound
    GiveBadge BADGE_ID_COBBLE
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_BLACK_BELT_COLBY
    SetTrainerFlag TRAINER_BLACK_BELT_DARREN
    SetTrainerFlag TRAINER_BLACK_BELT_RAFAEL
    SetTrainerFlag TRAINER_BLACK_BELT_JEFFERY
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 133, TRAINER_LEADER_MAYLENE, 0, 0
    SetFlag FLAG_HIDE_LOOKER_IN_GAME_CORNER
    ClearFlag FLAG_HIDE_VEILSTONE_COUNTERPART
    SetVar VAR_VEILSTONE_WAREHOUSE_GUARDS_FIGHTABLE, TRUE
    SetVar VAR_VEILSTONE_STATE, 1
    Message VeilstoneGym_Text_MayleneExplainBadge
    GoTo VeilstoneGym_MayleneTryGiveTM60
    End

VeilstoneGym_MayleneTryGiveTM60:
    SetVar VAR_0x8004, ITEM_TM60
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, VeilstoneGym_MayleneCannotGiveTM60
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_MAYLENE_TM60
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message VeilstoneGym_Text_MayleneExplainTM60
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_MayleneCannotGiveTM60:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_MayleneAfterBadge:
    GoToIfUnset FLAG_OBTAINED_MAYLENE_TM60, VeilstoneGym_MayleneTryGiveTM60
    BufferPlayerName 0
    Message VeilstoneGym_Text_MayleneAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

VeilstoneGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COBBLE, VeilstoneGym_GymGuideAfterbadge
    Message VeilstoneGym_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_GymGuideAfterbadge:
    BufferPlayerName 0
    Message VeilstoneGym_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_COBBLE, VeilstoneGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message VeilstoneGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message VeilstoneGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_LeftPoster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneGym_Text_GoodDeedEveryDay
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_RightPoster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneGym_Text_TreasureEveryEncounter
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneGym_MiddlePoster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message VeilstoneGym_Text_OneDayAtATime
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
