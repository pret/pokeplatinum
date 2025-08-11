#include "macros/scrcmd.inc"
#include "res/text/bank/pal_park.h"


    ScriptEntry _001A
    ScriptEntry PalPark_Trigger_Countdown
    ScriptEntry PalPark_Trigger_CaughtAllPokemon
    ScriptEntry PalPark_RetireFromMenu
    ScriptEntry PalPark_Trigger_RetireFromGate
    ScriptEntry PalPark_Worker
    ScriptEntryEnd

_001A:
    SetFlag FLAG_UNK_0x09CB
    End

PalPark_Trigger_Countdown:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    MessageInstant PalPark_Text_LetTheCountdownBegin
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Three
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Two
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_One
    PlayFanfare SEQ_SE_DP_DECIDE
    WaitTime 30, VAR_RESULT
    MessageInstant PalPark_Text_Start
    PlayFanfare SEQ_SE_DP_CON_016
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
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

PalPark_Trigger_CaughtAllPokemon:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayFanfare SEQ_SE_DP_PINPON
    BufferPlayerName 0
    Message PalPark_Text_DingDongCongratulations
    PlayMusic SEQ_SILENCE_DUNGEON
    PlaySound SEQ_FANFA4
    WaitSound
    CloseMessage
    ReleaseAll
    SetVar VAR_PAL_PARK_STATE, 1
    Call PalPark_ClearFlagAndWarpOut
    End

PalPark_RetireFromMenu:
    PlayFanfare SEQ_SE_CONFIRM
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Call PalPark_AskPlayerRetireFromCatchingShow
    CloseMessage
    GoToIfEq VAR_RESULT, FALSE, _0114
    SetVar VAR_PAL_PARK_STATE, 2
    ReleaseAll
    Call PalPark_ClearFlagAndWarpOut
    End

_0114:
    ApplyMovement LOCALID_PLAYER, _0124
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0124:
    WalkNormalNorth
    EndMovement

PalPark_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call PalPark_AskPlayerRetireFromCatchingShow
    CloseMessage
    GoToIfEq VAR_RESULT, FALSE, _0159
    SetVar VAR_PAL_PARK_STATE, 2
    ReleaseAll
    Call PalPark_ClearFlagAndWarpOut
    End

_0159:
    ApplyMovement 0, _0168
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0168:
    WalkOnSpotNormalWest
    EndMovement

PalPark_AskPlayerRetireFromCatchingShow:
    Message PalPark_Text_WouldYouLikeToRetireFromYourCatchingShow
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PalPark_RetireFromCatchingShow
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_FEMALE, PalPark_NotRetireFromCatchingShow_Female
    BufferPlayerName 0
    Message PalPark_Text_ThatTheSpirit_Male
    WaitABXPadPress
    SetVar VAR_RESULT, FALSE
    Return

PalPark_NotRetireFromCatchingShow_Female:
    BufferPlayerName 0
    Message PalPark_Text_ThatTheSpirit_Female
    WaitABXPadPress
    SetVar VAR_RESULT, FALSE
    Return

PalPark_RetireFromCatchingShow:
    Message PalPark_Text_ISeeImDisappointedThatYouDroppedOut
    SetVar VAR_RESULT, TRUE
    Return

PalPark_ClearFlagAndWarpOut:
    ClearInCatchingShowFlag
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_PAL_PARK_LOBBY, 0, 7, 7, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Return

    .balign 4, 0
