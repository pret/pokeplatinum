#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_observatory_gate_1f.h"
#include "res/field/events/events_pastoria_city_observatory_gate_1f.h"


    ScriptEntry PastoriaCityObservatoryGate1F_CashierM
    ScriptEntry PastoriaCityObservatoryGate1F_TriggerTryStartSafariGame
    ScriptEntry PastoriaCityObservatoryGate1F_OnFrameTryExitEarly
    ScriptEntry PastoriaCityObservatoryGate1F_OnFrameGameEnded
    ScriptEntry PastoriaCityObservatoryGate1F_CashierF
    ScriptEntry PastoriaCityObservatoryGate1F_Cowgirl
    ScriptEntry PastoriaCityObservatoryGate1F_OnTransition
    ScriptEntryEnd

PastoriaCityObservatoryGate1F_OnTransition:
    End

PastoriaCityObservatoryGate1F_CashierM:
    End

PastoriaCityObservatoryGate1F_TriggerTryStartSafariGame:
    LockAll
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerWalkOnSpotWest
    WaitMovement
    GetPlayerMapPos VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1
    CallIfEq VAR_MAP_LOCAL_0, 5, PastoriaCityObservatoryGate1F_PlayerWalkWest
    ShowMoney 20, 2
    Message PastoriaCityObservatoryGate1F_Text_AskPlaySafariGame
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PastoriaCityObservatoryGate1F_CheckRoomForPokemon
    GoToIfEq VAR_RESULT, MENU_NO, PastoriaCityObservatoryGate1F_DontPlaySafariGame
    End

PastoriaCityObservatoryGate1F_CheckRoomForPokemon:
    GetPCBoxesFreeSlotCount VAR_RESULT
    GoToIfNe VAR_RESULT, 0, PastoriaCityObservatoryGate1F_TryStartSafariGame
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, PastoriaCityObservatoryGate1F_NoRoomForPokemon
PastoriaCityObservatoryGate1F_TryStartSafariGame:
    Message PastoriaCityObservatoryGate1F_Text_ThatWillBe500
    GoToIfNotEnoughMoney 500, PastoriaCityObservatoryGate1F_NotEnoughMoney
    PlaySE SEQ_SE_DP_REGI
    RemoveMoney 500
    UpdateMoneyDisplay
    Message PastoriaCityObservatoryGate1F_Text_HereAreSafariBalls
    BufferPlayerName 0
    Message PastoriaCityObservatoryGate1F_Text_PlayerReceived30SafariBalls
    Message PastoriaCityObservatoryGate1F_Text_OffYouGo
    CloseMessage
    HideMoney
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 4, PastoriaCityObservatoryGate1F_EnterGreatMarshX4
    GoToIfEq VAR_0x8004, 5, PastoriaCityObservatoryGate1F_EnterGreatMarshX5
    End

PastoriaCityObservatoryGate1F_EnterGreatMarshX4:
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerEnterGreatMarshX4
    WaitMovement
    GoTo PastoriaCityObservatoryGate1F_StartSafariGame

PastoriaCityObservatoryGate1F_EnterGreatMarshX5:
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerEnterGreatMarshX5
    WaitMovement
    GoTo PastoriaCityObservatoryGate1F_StartSafariGame

PastoriaCityObservatoryGate1F_StartSafariGame:
    SetVar VAR_SAFARI_GAME_STATE, 1
    StartSafariGame
    SetSpecialLocation MAP_HEADER_PASTORIA_CITY_OBSERVATORY_GATE_1F, 2, 5, 2, DIR_SOUTH
    PlaySE SEQ_SE_DP_KAIDAN2
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

PastoriaCityObservatoryGate1F_NotEnoughMoney:
    Message PastoriaCityObservatoryGate1F_Text_NotEnoughMoney
    CloseMessage
    HideMoney
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_DontPlaySafariGame:
    CloseMessage
    HideMoney
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_NoRoomForPokemon:
    HideMoney
    Message PastoriaCityObservatoryGate1F_Text_NoRoomForPokemon
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_PlayerWalkWest:
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerWalkWest
    WaitMovement
    Return

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerEnterGreatMarshX4:
    WalkOnSpotNormalNorth
    WalkNormalNorth 3
    WalkNormalEast
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerEnterGreatMarshX5:
    WalkOnSpotNormalNorth
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerWalkSouth:
    WalkNormalSouth
    EndMovement

PastoriaCityObservatoryGate1F_OnFrameTryExitEarly:
    LockAll
    Message PastoriaCityObservatoryGate1F_Text_AskExitGreatMarsh
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PastoriaCityObservatoryGate1F_ExitGreatMarsh
    GoToIfEq VAR_RESULT, MENU_NO, PastoriaCityObservatoryGate1F_ReturnToGreatMarsh
    End

PastoriaCityObservatoryGate1F_ExitGreatMarsh:
    Message PastoriaCityObservatoryGate1F_Text_ThanksForPlaying
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerExitGreatMarsh
    WaitMovement
    SetVar VAR_SAFARI_GAME_STATE, 0
    EndSafariGame
    GetCurrentSafariGameCaughtNum VAR_MAP_LOCAL_2
    GoToIfGe VAR_MAP_LOCAL_2, 5, PastoriaCityObservatoryGate1F_TryGiveMatchupchecker
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_TryGiveMatchupchecker:
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_OBSERVATORY_GATE_1F_MATCHUPCHECKER, PastoriaCityObservatoryGate1F_DontGiveMatchupChecker
    ApplyMovement LOCALID_COWGIRL, PastoriaCityObservatoryGate1F_Movement_CowgirlWalkToPlayer
    WaitMovement
    Message PastoriaCityObservatoryGate1F_Text_HereAppMatchupChecker
    SetVar VAR_0x8004, POKETCH_APPID_MATCHUPCHECKER
    Common_GivePoketchApp
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_OBSERVATORY_GATE_1F_MATCHUPCHECKER
    CloseMessage
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_DontGiveMatchupChecker:
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_ReturnToGreatMarsh:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerReturnToGreatMarsh
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerExitGreatMarsh:
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_PlayerReturnToGreatMarsh:
    FaceNorth
    WalkNormalNorth
    SetInvisible
    EndMovement

PastoriaCityObservatoryGate1F_OnFrameGameEnded:
    LockAll
    ApplyMovement LOCALID_PLAYER, PastoriaCityObservatoryGate1F_Movement_PlayerExitGreatMarsh
    WaitMovement
    SetVar VAR_SAFARI_GAME_STATE, 0
    GetCurrentSafariGameCaughtNum VAR_MAP_LOCAL_2
    GoToIfGe VAR_MAP_LOCAL_2, 5, PastoriaCityObservatoryGate1F_TryGiveMatchupchecker
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_CashierF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message PastoriaCityObservatoryGate1F_Text_IsThisFirstSafariGame
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PastoriaCityObservatoryGate1F_ExplainSafariGame
    GoToIfEq VAR_RESULT, MENU_NO, PastoriaCityObservatoryGate1F_EnjoySafariGame
    End

PastoriaCityObservatoryGate1F_ExplainSafariGame:
    Message PastoriaCityObservatoryGate1F_Text_ExplainSafariGame
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_EnjoySafariGame:
    Message PastoriaCityObservatoryGate1F_Text_EnjoySafariGame
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityObservatoryGate1F_Cowgirl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_OBSERVATORY_GATE_1F_MATCHUPCHECKER, PastoriaCityObservatoryGate1F_ExplainMatchupChecker
    Message PastoriaCityObservatoryGate1F_Text_CaptureFivePokemon
    GoTo PastoriaCityObservatoryGate1F_CowgirlEnd
    End

PastoriaCityObservatoryGate1F_ExplainMatchupChecker:
    Message PastoriaCityObservatoryGate1F_Text_ExplainMatchupChecker
    GoTo PastoriaCityObservatoryGate1F_CowgirlEnd
    End

PastoriaCityObservatoryGate1F_CowgirlEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
PastoriaCityObservatoryGate1F_Movement_CowgirlWalkToPlayer:
    WalkNormalEast 4
    WalkOnSpotNormalNorth
    EndMovement

PastoriaCityObservatoryGate1F_UnusedMovement:
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

PastoriaCityObservatoryGate1F_UnusedMovement2:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement
