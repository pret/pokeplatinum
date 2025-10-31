#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_gym.h"


    ScriptEntry OreburghGym_Roark
    ScriptEntry OreburghGym_GymGuide
    ScriptEntry OreburghGym_GymStatue
    ScriptEntryEnd

OreburghGym_Roark:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COAL, OreburghGym_AlreadyHaveCoalBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, 47, 0, 0, 0
    Message OreburghGym_Text_RoarkIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_ROARK
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, OreburghGym_LostBattle
    Message OreburghGym_Text_BeatRoark
    BufferPlayerName 0
    Message OreburghGym_Text_RoarkReceiveCoalBadge
    PlaySound SEQ_BADGE
    WaitSound
    SetTrainerFlag TRAINER_YOUNGSTER_JONATHON
    SetTrainerFlag TRAINER_YOUNGSTER_DARIUS
    GiveBadge BADGE_ID_COAL
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_YOUNGSTER_JONATHON
    SetTrainerFlag TRAINER_YOUNGSTER_DARIUS
    SetFlag FLAG_POKECENTER_BASEMENT_AVAILABLE
    SetVar VAR_GTS_HAS_BADGES_CHECK_TEST, TRUE
    SetVar VAR_JUBILIFE_LOOKER_PALPAD, 1
    SetVar VAR_OREBURGH_STATE, 2
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, 47, TRAINER_LEADER_ROARK, 0, 0
    SetVar VAR_JUBILIFE_STATE, 3
    ClearFlag FLAG_JUBILIFE_COUNTERPART
    ClearFlag FLAG_JUBILIFE_ROWAN
    ClearFlag FLAG_JUBILIFE_GALACTIC_GRUNTS
    SetFlag FLAG_UNK_0x0198
    Message OreburghGym_Text_RoarkExplainCoalBadge
    GoTo OreburghGym_RoarkGiveTM76
    End

OreburghGym_RoarkGiveTM76:
    SetVar VAR_0x8004, ITEM_TM76
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghGym_RoarkGiveTM76BagFull
    CallCommonScript 0x7FC
    SetFlag FLAG_OBTAINED_ROARK_TM76
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message OreburghGym_Text_RoarkExplainStealthRock
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGym_RoarkGiveTM76BagFull:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

OreburghGym_AlreadyHaveCoalBadge:
    GoToIfUnset FLAG_OBTAINED_ROARK_TM76, OreburghGym_RoarkGiveTM76
    Message OreburghGym_Text_RoarkGymBeaten
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGym_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End

OreburghGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_COAL, OreburghGym_GymGuideAfterBadge
    Message OreburghGym_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message OreburghGym_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_COAL, OreburghGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message OreburghGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message OreburghGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
