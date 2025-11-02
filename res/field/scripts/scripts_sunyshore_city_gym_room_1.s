#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_gym_room_1.h"


    ScriptEntry SunyshoreGymRoom1_Init
    ScriptEntry SunyshoreGymRoom1_Button
    ScriptEntry SunyshoreGymRoom1_GymGuide
    ScriptEntry SunyshoreGymRoom1_GymStatue
    ScriptEntryEnd

SunyshoreGymRoom1_Init:
    SetVar VAR_MAP_LOCAL_0, 0
    InitPersistedMapFeaturesForSunyshoreGym 0
    End

SunyshoreGymRoom1_Button:
    SunyshoreGymButton 0
    End

SunyshoreGymRoom1_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_BEACON, SunyshoreGymRoom1_GymGuideAfterbadge
    Message SunyshoreGymRoom1_Text_GymGuideBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom1_GymGuideAfterbadge:
    BufferPlayerName 0
    Message SunyshoreGymRoom1_Text_GymGuideAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom1_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_BEACON, SunyshoreGymRoom1_GymStatue_AfterBadge
    Message SunyshoreGymRoom1_Text_GymStatue_BeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom1_GymStatue_AfterBadge:
    GoToIfGe VAR_RIVAL_BEAT_SUNYSHORE_GYM, TRUE, SunyshoreGymRoom1_GymStatue_AfterRivalBadge
    BufferPlayerName 0
    BufferRivalName 1
    Message SunyshoreGymRoom1_Text_GymStatue_AfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SunyshoreGymRoom1_GymStatue_AfterRivalBadge:
    BufferPlayerName 0
    BufferRivalName 1
    Message SunyshoreGymRoom1_Text_GymStatue_AfterRivalBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
