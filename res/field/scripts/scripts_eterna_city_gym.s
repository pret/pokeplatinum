#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_gym.h"
#include "res/field/events/events_eterna_city_gym.h"


    ScriptEntry EternaGym_InitFeatures
    ScriptEntry EternaGym_GymGuide
    ScriptEntry EternaGym_GymStatue
    ScriptEntry EternaGym_Gardenia
    ScriptEntry EternaGym_LassCaroline
    ScriptEntry EternaGym_AromaLadyJenna
    ScriptEntry EternaGym_AromaLadyAngela
    ScriptEntryEnd

EternaGym_InitFeatures:
    InitPersistedMapFeaturesForEternaGym
    End

EternaGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_FOREST, EternaGym_GymGuideAfterBadge
    Message EternaGym_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message EternaGym_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_FOREST, EternaGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message EternaGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message EternaGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_Gardenia:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_FOREST, EternaGym_Gardenia_AlreadyHaveForestbadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 67, 0, 0, 0
    Message EternaGym_Text_GardeniaIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_GARDENIA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaGym_LostBattle
    Message EternaGym_Text_BeatGardenia
    BufferPlayerName 0
    Message EternaGym_Text_GardeniaReceiveForestBadge
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
    Message EternaGym_Text_GardeniaExplainForestBadge
    GoTo EternaGym_GardeniaGiveTM86
    End

EternaGym_GardeniaTryGiveTM86Again:
    SetVar VAR_0x8004, ITEM_TM86
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaGym_GardeniaGiveTM86BagFullAgain
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_GARDENIA_TM86
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message EternaGym_Text_GardeniaExplainGrassKnot
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GardeniaGiveTM86BagFullAgain:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

EternaGym_Gardenia_AlreadyHaveForestbadge:
    GoToIfUnset FLAG_OBTAINED_GARDENIA_TM86, EternaGym_GardeniaTryGiveTM86Again
    Message EternaGym_Text_GardeniaGymBeaten
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GardeniaGiveTM86:
    SetVar VAR_0x8004, ITEM_TM86
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, EternaGym_GardeniaGiveTM86BagFull
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_GARDENIA_TM86
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message EternaGym_Text_GardeniaExplainGrassKnot
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    AdvanceEternaGymClock
    End

EternaGym_GardeniaGiveTM86BagFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    AdvanceEternaGymClock
    End

EternaGym_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

EternaGym_LassCaroline:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_ETERNA_GYM_TRAINERS_BEATEN, 1, EternaGym_LassCarolineBeaten
    PlayTrainerEncounterBGM TRAINER_LASS_CAROLINE
    Message EternaGym_Text_LassCarolineBeforeBattle
    CloseMessage
    StartTrainerBattle TRAINER_LASS_CAROLINE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaGym_LostBattle
    Message EternaGym_Text_LassCarolineAfterBattle
    WaitABXPadPress
    SetVar VAR_ETERNA_GYM_TRAINERS_BEATEN, 1
    CloseMessage
    ReleaseAll
    AdvanceEternaGymClock
    End

EternaGym_LassCarolineBeaten:
    Message EternaGym_Text_LassCarolineAfterBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_AromaLadyJenna:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_ETERNA_GYM_TRAINERS_BEATEN, 2, EternaGym_AromaLadyJennaBeaten
    PlayTrainerEncounterBGM TRAINER_AROMA_LADY_JENNA
    SetVar VAR_0x8007, ETERNA_CITY_GYM_AROMA_LADY_JENNA
    Call EternaGym_LookTowardsPlayer
    Message EternaGym_Text_AromaLadyJennaBeforeBattle
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_JENNA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaGym_LostBattle
    Message EternaGym_Text_AromaLadyJennaAfterBattle
    WaitABXPadPress
    SetVar VAR_ETERNA_GYM_TRAINERS_BEATEN, 2
    CloseMessage
    ReleaseAll
    AdvanceEternaGymClock
    End

EternaGym_AromaLadyJennaBeaten:
    Message EternaGym_Text_AromaLadyJennaAfterBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_AromaLadyAngela:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_ETERNA_GYM_TRAINERS_BEATEN, 3, EternaGym_AromaLadyAngelaBeaten
    PlayTrainerEncounterBGM TRAINER_AROMA_LADY_ANGELA
    SetVar VAR_0x8007, ETERNA_CITY_GYM_AROMA_LADY_ANGELA
    Call EternaGym_LookTowardsPlayer
    Message EternaGym_Text_AromaLadyAngelaBeforeBattle
    CloseMessage
    StartTrainerBattle TRAINER_AROMA_LADY_ANGELA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, EternaGym_LostBattle
    Message EternaGym_Text_AromaLadyAngelaAfterBattle
    WaitABXPadPress
    SetVar VAR_ETERNA_GYM_TRAINERS_BEATEN, 3
    CloseMessage
    ReleaseAll
    AdvanceEternaGymClock
    End

EternaGym_AromaLadyAngelaBeaten:
    Message EternaGym_Text_AromaLadyAngelaAfterBattle
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_LookTowardsPlayer:
    GetPlayerDir VAR_RESULT
    CallIfEq VAR_RESULT, DIR_NORTH, EternaGym_FaceSouth
    CallIfEq VAR_RESULT, DIR_SOUTH, EternaGym_FaceNorth
    CallIfEq VAR_RESULT, DIR_WEST, EternaGym_FaceEast
    CallIfEq VAR_RESULT, DIR_EAST, EternaGym_FaceWest
    Return

EternaGym_FaceSouth:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir VAR_0x8007, DIR_SOUTH
    Return

EternaGym_FaceNorth:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir VAR_0x8007, DIR_NORTH
    Return

EternaGym_FaceEast:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_EAST
    SetObjectEventDir VAR_0x8007, DIR_EAST
    Return

EternaGym_FaceWest:
    SetObjectEventMovementType VAR_0x8007, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir VAR_0x8007, DIR_WEST
    Return
