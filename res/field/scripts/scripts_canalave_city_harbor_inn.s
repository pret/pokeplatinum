#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/canalave_city_harbor_inn.h"
#include "res/field/events/events_canalave_city_harbor_inn.h"

    ScriptEntry CanalaveCityHarborInn_OnTransition
    ScriptEntry CanalaveCityHarborInn_OnFrameSleep
    ScriptEntry CanalaveCityHarborInn_OnFrameAwaken
    ScriptEntryEnd

CanalaveCityHarborInn_OnTransition:
    SetFlag FLAG_HIDE_CANALAVE_CITY_HARBOR_INN_GYM_GUIDE
    GoToIfUnset FLAG_CAUGHT_DARKRAI, CanalaveCityHarborInn_CheckGameCompleted
    End

CanalaveCityHarborInn_CheckGameCompleted:
    GoToIfSet FLAG_GAME_COMPLETED, CanalaveCityHarborInn_CheckNationalDexEnabled
    End

CanalaveCityHarborInn_CheckNationalDexEnabled:
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TRUE, CanalaveCityHarborInn_CheckMemberCard
    End

CanalaveCityHarborInn_CheckMemberCard:
    CheckItem ITEM_MEMBER_CARD, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TRUE, CanalaveCityHarborInn_CheckDistributionEventDarkrai
    End

CanalaveCityHarborInn_CheckDistributionEventDarkrai:
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, TRUE, CanalaveCityWestHouse_CheckWokeUpLittleBoy
    End

CanalaveCityWestHouse_CheckWokeUpLittleBoy:
    GoToIfSet FLAG_WOKE_UP_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY, CanalaveCityWestHouse_TryStartDarkraiEvent
    End

CanalaveCityWestHouse_TryStartDarkraiEvent:
    GoToIfGe VAR_DARKRAI_EVENT_STATE, 2, CanalaveCityHarborInn_OnTransitionEnd
    ClearFlag FLAG_HIDE_CANALAVE_CITY_HARBOR_INN_GYM_GUIDE
    SetVar VAR_DARKRAI_EVENT_STATE, 1
    End

CanalaveCityHarborInn_OnTransitionEnd:
    End

CanalaveCityHarborInn_OnFrameSleep:
    LockAll
    WaitTime 30, VAR_RESULT
    Message CanalaveCityHarborInn_Text_ReservationForYou
    CloseMessage
    ApplyMovement LOCALID_GYM_GUIDE, CanalaveCityHarborInn_Movement_GymGuideWalkToBed
    ApplyMovement LOCALID_PLAYER, CanalaveCityHarborInn_Movement_PlayerLayDownOnBed
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferPlayerName 0
    Message CanalaveCityHarborInn_Text_PlayerLayDown
    CloseMessage
    PlaySE SEQ_SE_DP_MAZYO2
    SetFlag FLAG_TRAVELED_TO_NEWMOON_ISLAND
    SetFlag FLAG_HIDE_CANALAVE_CITY_HARBOR_INN_GYM_GUIDE
    SetVar VAR_DARKRAI_EVENT_STATE, 2
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    FadeScreenIn FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    FadeScreenIn FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    FadeScreenOut FADE_SCREEN_SPEED_SLOW
    WaitFadeScreen
    WaitTime 120, VAR_RESULT
    Warp MAP_HEADER_NEWMOON_ISLAND, 0, 152, 277, DIR_SOUTH
    FadeScreenIn FADE_SCREEN_SPEED_SLOW
    WaitFadeScreen
    ReleaseAll
    End

    .balign 4, 0
CanalaveCityHarborInn_Movement_PlayerLayDownOnBed:
    WalkNormalNorth
    WalkNormalEast 3
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
CanalaveCityHarborInn_Movement_GymGuideWalkToBed:
    WalkNormalEast 3
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

CanalaveCityHarborInn_OnFrameAwaken:
    LockAll
    Call CanalaveCityHarborInn_ResetOrFinishDarkraiEvent
    ScrCmd_2B5 MAP_HEADER_CANALAVE_CITY, 58, 714
    PlayFanfare SEQ_ASA
    WaitFanfare
    BufferPlayerName 0
    Message CanalaveCityHarborInn_Text_PlayerAwakened
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveCityHarborInn_ResetOrFinishDarkraiEvent:
    GoToIfSet FLAG_CAUGHT_DARKRAI, CanalaveCityHarborInn_FinishDarkraiEvent
    SetVar VAR_DARKRAI_EVENT_STATE, 0
    Return

CanalaveCityHarborInn_FinishDarkraiEvent:
    SetVar VAR_DARKRAI_EVENT_STATE, 3
    Return

    .balign 4, 0
