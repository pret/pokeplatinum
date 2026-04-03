#include "macros/scrcmd.inc"
#include "res/text/bank/pal_park.h"
#include "res/field/events/events_pal_park.h"


    ScriptEntry PalPark_OnTransition
    ScriptEntry PalPark_OnFrameCountdown
    ScriptEntry PalPark_Trigger_CaughtAllPokemon
    ScriptEntry PalPark_RetireFromMenu
    ScriptEntry PalPark_Trigger_RetireFromGate
    ScriptEntry PalPark_Worker
    ScriptEntryEnd

PalPark_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_PAL_PARK
    End

PalPark_OnFrameCountdown:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    MessageInstant PalPark_Text_LetTheCountdownBegin
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Three
    PlaySE SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Two
    PlaySE SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_One
    PlaySE SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Start
    PlaySE SEQ_SE_DP_CON_016
    WaitTime 30, VAR_RESULT
    SetInCatchingShowFlag
    SetVar VAR_PAL_PARK_STATE, 1
    SetFlag FLAG_ALT_MUSIC_PAL_PARK
    PlayMusic SEQ_D_SAFARI
    CloseMessage
    ReleaseAll
    End

PalPark_Unused:
    SetInCatchingShowFlag
    SetVar VAR_PAL_PARK_STATE, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

PalPark_Trigger_CaughtAllPokemon:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    PlaySE SEQ_SE_DP_PINPON
    BufferPlayerName 0
    Message PalPark_Text_DingDongCongratulations
    PlayMusic SEQ_SILENCE_DUNGEON
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    CloseMessage
    ReleaseAll
    SetVar VAR_PAL_PARK_STATE, 1
    Call PalPark_ClearFlagAndWarpOut
    End

PalPark_RetireFromMenu:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message PalPark_Text_WouldYouLikeToRetire
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, PalPark_RetireFromMenu_WarpOut
    ReleaseAll
    End

PalPark_RetireFromMenu_WarpOut:
    SetVar VAR_PAL_PARK_STATE, 2
    ReleaseAll
    Call PalPark_ClearFlagAndWarpOut
    End

PalPark_Trigger_RetireFromGate:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Call PalPark_AskPlayerRetireFromCatchingShow
    CloseMessage
    GoToIfEq VAR_RESULT, FALSE, PalPark_PlayerWalkNorth
    SetVar VAR_PAL_PARK_STATE, 2
    ReleaseAll
    Call PalPark_ClearFlagAndWarpOut
    End

PalPark_PlayerWalkNorth:
    ApplyMovement LOCALID_PLAYER, PalPark_Movement_PlayerWalkNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PalPark_Movement_PlayerWalkNorth:
    WalkNormalNorth
    EndMovement

PalPark_Worker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call PalPark_AskPlayerRetireFromCatchingShow
    CloseMessage
    GoToIfEq VAR_RESULT, FALSE, PalPark_WorkerWalkOnSpotWest
    SetVar VAR_PAL_PARK_STATE, 2
    ReleaseAll
    Call PalPark_ClearFlagAndWarpOut
    End

PalPark_WorkerWalkOnSpotWest:
    ApplyMovement LOCALID_WORKER, PalPark_Movement_WorkerWalkOnSpotWest
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
PalPark_Movement_WorkerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

PalPark_AskPlayerRetireFromCatchingShow:
    Message PalPark_Text_RetireWithoutAllPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalPark_RetireFromCatchingShow
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_FEMALE, PalPark_NotRetireFromCatchingShow_Female
    BufferPlayerName 0
    Message PalPark_Text_ThatTheSpirit_Male
    WaitButton
    SetVar VAR_RESULT, FALSE
    Return

PalPark_NotRetireFromCatchingShow_Female:
    BufferPlayerName 0
    Message PalPark_Text_ThatTheSpirit_Female
    WaitButton
    SetVar VAR_RESULT, FALSE
    Return

PalPark_RetireFromCatchingShow:
    Message PalPark_Text_ImDisappointed
    SetVar VAR_RESULT, TRUE
    Return

PalPark_ClearFlagAndWarpOut:
    ClearInCatchingShowFlag
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK_LOBBY, 0, 7, 7, 1
    FadeScreenIn
    WaitFadeScreen
    Return

    .balign 4, 0
