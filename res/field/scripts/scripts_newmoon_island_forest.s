#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/newmoon_island_forest.h"
#include "res/field/events/events_newmoon_island_forest.h"


    ScriptEntry NewmoonIslandForest_OnTransition
    ScriptEntry NewmoonIslandForest_OnLoad
    ScriptEntry NewmoonIslandForest_Darkrai
    ScriptEntryEnd

NewmoonIslandForest_OnTransition:
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, NewmoonIslandForest_HideDarkrai
    CheckItem ITEM_MEMBER_CARD, 1, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, NewmoonIslandForest_HideDarkrai
    CheckDistributionEvent DISTRIBUTION_EVENT_DARKRAI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, NewmoonIslandForest_HideDarkrai
    GoToIfSet FLAG_CAUGHT_DARKRAI, NewmoonIslandForest_HideDarkrai
    ClearFlag FLAG_HIDE_NEWMOON_ISLAND_FOREST_DARKRAI
    End

NewmoonIslandForest_HideDarkrai:
    SetFlag FLAG_HIDE_NEWMOON_ISLAND_FOREST_DARKRAI
    End

NewmoonIslandForest_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, NewmoonIslandForest_RemoveDarkrai
    End

NewmoonIslandForest_RemoveDarkrai:
    SetFlag FLAG_HIDE_NEWMOON_ISLAND_FOREST_DARKRAI
    RemoveObject LOCALID_DARKRAI
    ClearFlag FLAG_MAP_LOCAL
    End

NewmoonIslandForest_Darkrai:
    LockAll
    PlaySE SEQ_SE_CONFIRM
    WaitSE SEQ_SE_CONFIRM
    Message NewmoonIslandForest_Text_Ellipses
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartLegendaryBattle SPECIES_DARKRAI, 50
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, NewmoonIslandForest_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, NewmoonIslandForest_DidNotCatchDarkrai
    SetFlag FLAG_CAUGHT_DARKRAI
NewmoonIslandForest_PostDarkraiBattle:
    SetFlag FLAG_HIDE_CANALAVE_CITY_HARBOR_INN_GYM_GUIDE
    GoToIfEq VAR_DARKRAI_EVENT_STATE, 2, NewmoonIslandForest_ReturnToHarborInn
    Message NewmoonIslandForest_Text_VoiceFromSomewhere2
    WaitButton
    CloseMessage
    ReleaseAll
    End

NewmoonIslandForest_DidNotCatchDarkrai:
    Message NewmoonIslandForest_Text_DarkraiMeltedAway
    CloseMessage
    GoTo NewmoonIslandForest_PostDarkraiBattle

NewmoonIslandForest_ReturnToHarborInn:
    Message NewmoonIslandForest_Text_VoiceFromSomewhere
    CloseMessage
    WaitTime 30, VAR_RESULT
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
    Warp MAP_HEADER_CANALAVE_CITY_HARBOR_INN, 0, 8, 6, DIR_SOUTH
    FadeScreenIn FADE_SCREEN_SPEED_SLOW
    WaitFadeScreen
    ReleaseAll
    End

NewmoonIslandForest_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
