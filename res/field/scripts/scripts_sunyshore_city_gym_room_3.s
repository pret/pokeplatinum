#include "macros/scrcmd.inc"
#include "constants/sunyshore_gym_buttons.h"
#include "res/text/bank/sunyshore_city_gym_room_3.h"


    ScriptEntry SunyshoreGymRoom3_Init
    ScriptEntry SunyshoreGymRoom3_TopButtons
    ScriptEntry SunyshoreGymRoom3_BottomButtons
    ScriptEntry SunyshoreGymRoom3_Volkner
    ScriptEntryEnd

SunyshoreGymRoom3_Init:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 2
    End

SunyshoreGymRoom3_TopButtons:
    PressSunyshoreGymButton SUNYSHORE_GYM_BUTTON_NORMAL
    End

SunyshoreGymRoom3_BottomButtons:
    PressSunyshoreGymButton SUNYSHORE_GYM_BUTTON_DOUBLE
    End

SunyshoreGymRoom3_Volkner:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_BEACON, SunyshoreGymRoom3_VolknerAlreadyHaveBeaconBadge
    CreateJournalEvent LOCATION_EVENT_GYM_WAS_TOO_TOUGH, MAP_HEADER_SUNYSHORE_CITY_GYM_ROOM_3
    Message SunyshoreGymRoom3_Text_VolknerIntro
    CloseMessage
    StartTrainerBattle TRAINER_LEADER_VOLKNER
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SunyshoreGymRoom3_LostBattle
    Message SunyshoreGymRoom3_Text_BeatVolkner
    BufferPlayerName 0
    Message SunyshoreGymRoom3_Text_VolknerReceiveBeaconBadge
    PlayFanfare SEQ_BADGE
    WaitFanfare
    GiveBadge BADGE_ID_BEACON
    IncrementTrainerScore2 TRAINER_SCORE_EVENT_BADGE_EARNED
    SetTrainerFlag TRAINER_ACE_TRAINER_ZACHERY
    SetTrainerFlag TRAINER_ACE_TRAINER_DESTINY
    SetTrainerFlag TRAINER_GUITARIST_JERRY
    SetTrainerFlag TRAINER_GUITARIST_PRESTON
    SetTrainerFlag TRAINER_GUITARIST_LONNIE
    SetTrainerFlag TRAINER_POKE_KID_MEGHAN
    SetTrainerFlag TRAINER_SCHOOL_KID_FORREST
    SetTrainerFlag TRAINER_SCHOOL_KID_TIERA
    SetVar VAR_SUNYSHORE_CITY_STATE, 2
    // BUG: TRAINER_LEADER_ROARK should be TRAINER_LEADER_VOLKNER
    CreateJournalEvent LOCATION_EVENT_BEAT_GYM_LEADER, MAP_HEADER_SUNYSHORE_CITY_GYM_ROOM_3, TRAINER_LEADER_ROARK
    Message SunyshoreGymRoom3_Text_VolknerExplainBeaconBadge
    GoTo SunyshoreGymRoom3_VolknerTryGiveTM57

SunyshoreGymRoom3_VolknerTryGiveTM57:
    SetVar VAR_0x8004, ITEM_TM57
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, SunyshoreGymRoom3_VolknerCannotGiveTM57
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_VOLKNER_TM57
    BufferItemName 0, VAR_0x8004
    BufferTMHMMoveName 1, VAR_0x8004
    Message SunyshoreGymRoom3_Text_VolknerExplainTM57
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom3_VolknerCannotGiveTM57:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom3_VolknerAlreadyHaveBeaconBadge:
    GoToIfUnset FLAG_RECEIVED_VOLKNER_TM57, SunyshoreGymRoom3_VolknerTryGiveTM57
    Message SunyshoreGymRoom3_Text_Afterbadge
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom3_LostBattle:
    BlackOutFromBattle
    ReleaseAll
    End
