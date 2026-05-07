#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_multi_battle_room.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_tower_multi_battle_room.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerMultiBattleRoom_OnTransition
    ScriptEntry BattleTowerMultiBattleRoom_OnResume
    ScriptEntry BattleTowerMultiBattleRoom_OnFrameEnter
    ScriptEntry BattleTowerMultiBattleRoom_OnFrameContinueMultiChallenge
    ScriptEntryEnd

BattleTowerMultiBattleRoom_OnTransition:
    GoToIfEq VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 0, BattleTowerMultiBattleRoom_DontSetPlayerGraphics
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    GetCurNetID VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, BattleTowerMultiBattleRoom_SetPlayer2Graphics
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
BattleTowerMultiBattleRoom_DontSetPlayerGraphics:
    End

BattleTowerMultiBattleRoom_SetPlayer2Graphics:
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

BattleTowerMultiBattleRoom_OnResume:
    CallIfNe VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 0, BattleTowerMultiBattleRoom_HidePlayer
    GoToIfEq VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 3, BattleTowerMultiBattleRoom_SetPlayerPositionsForBattle
BattleTowerMultiBattleRoom_EndSetPositions:
    End

BattleTowerMultiBattleRoom_HidePlayer:
    HideObject LOCALID_PLAYER
    MoveCamera 8, 0, 0
    Return

BattleTowerMultiBattleRoom_SetPlayerPositionsForBattle:
    SetPosition LOCALID_LEADER, 5, 0, 5, DIR_EAST
    SetPosition LOCALID_PARTNER, 5, 0, 6, DIR_EAST
    GoTo BattleTowerMultiBattleRoom_EndSetPositions
    End

BattleTowerMultiBattleRoom_RestorePokemon:
    Message BattleTowerMultiBattleRoom_Text_YourPokemonWillBeRestored
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Return

BattleTowerMultiBattleRoom_WarpToLobby:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_LINK_MULTI, BattleTowerMultiBattleRoom_EndCommunicationWarpToLobby
    WaitTime 30, VAR_RESULT
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerMultiBattleRoom_EndCommunicationWarpToLobby:
    WaitTime 30, VAR_RESULT
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 6
    FadeScreenOut
    WaitFadeScreen
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 8
    EndCommunication
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerMultiBattleRoom_OnFrameEnter:
    LockAll
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 3
    Call BattleTowerMultiBattleRoom_PlayersEnter
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_LINK_MULTI, BattleTowerMultiBattleRoom_DoLinkMultiBattle
    GoTo BattleTowerMultiBattleRoom_DoMultiBattle
    End

BattleTowerMultiBattleRoom_OnFrameContinueMultiChallenge:
    LockAll
    SetVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 3
    Call BattleTowerMultiBattleRoom_PlayersEnter
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantFaceEachOther
    GoTo BattleTowerMultiBattleRoom_NextOpponentsMenu
    End

BattleTowerMultiBattleRoom_DoNextMultiBattle:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerMultiBattleRoom_OpponentsEnter
    Call BattleTowerMultiBattleRoom_Opponent1WalkOnSpotWest
    PrintBattleTowerIntroMessage 0
    WaitABPress
    CloseMessage
    Call BattleTowerMultiBattleRoom_Opponent2WalkOnSpotWest
    PrintBattleTowerIntroMessage 1
    WaitABPress
    CloseMessage
    Call BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther
    CallBattleTowerFunction BT_FUNC_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_DoNextLinkMultiBattle:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerMultiBattleRoom_OpponentsEnter
    Call BattleTowerMultiBattleRoom_Opponent1WalkOnSpotWest
    PrintBattleTowerIntroMessage 0
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call BattleTowerMultiBattleRoom_Opponent2WalkOnSpotWest
    PrintBattleTowerIntroMessage 1
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 4
    CallBattleTowerFunction BT_FUNC_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_EndChallenge:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0
    SetVar VAR_MAP_LOCAL_0, 0
    GoTo BattleTowerMultiBattleRoom_WarpToLobby
    End

BattleTowerMultiBattleRoom_EndChallengeWonRound:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo BattleTowerMultiBattleRoom_WarpToLobby
    End

BattleTowerMultiBattleRoom_SaveAndQuit:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, 0
    FreeBattleTower
    Message BattleTowerMultiBattleRoom_Text_ThanksForParticipating
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlaySE SEQ_SE_DP_SAVE
    WaitSE SEQ_SE_DP_SAVE
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BT_FUNC_RESET_SYSTEM, 0, 0
    End

BattleTowerMultiBattleRoom_CancelChallenge:
    GoTo BattleTowerMultiBattleRoom_EndChallenge
    End

BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers:
    CallBattleTowerFunction BT_FUNC_UNK_34, 0, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_DoMultiBattle:
    Call BattleTowerMultiBattleRoom_DoNextMultiBattle
    GoToIfEq VAR_0x8004, FALSE, BattleTowerMultiBattleRoom_EndChallenge
    Call BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers
    GoToIfEq VAR_RESULT, TRUE, BattleTowerMultiBattleRoom_EndChallengeWonRound
    Call BattleTowerMultiBattleRoom_OpponentsLeave
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther
    Call BattleTowerMultiBattleRoom_RestorePokemon
BattleTowerMultiBattleRoom_NextOpponentsMenu:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message BattleTowerMultiBattleRoom_Text_AskReadyForNextPair
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTowerMultiBattleRoom_KeepGoingMultiChallenge
    GoToIfEq VAR_0x8008, 1, BattleTowerMultiBattleRoom_AskSaveAndQuit
    GoToIfEq VAR_0x8008, 2, BattleTowerMultiBattleRoom_AskCancelChallenge
    GoTo BattleTowerMultiBattleRoom_KeepGoingMultiChallenge
    End

BattleTowerMultiBattleRoom_KeepGoingMultiChallenge:
    Call BattleTowerMultiBattleRoom_FaceNextOpponents
    GoTo BattleTowerMultiBattleRoom_DoMultiBattle
    End

BattleTowerMultiBattleRoom_AskSaveAndQuit:
    Message BattleTowerMultiBattleRoom_Text_AskSaveAndQuit
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerMultiBattleRoom_SaveAndQuit
    GoTo BattleTowerMultiBattleRoom_NextOpponentsMenu
    End

BattleTowerMultiBattleRoom_AskCancelChallenge:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerMultiBattleRoom_CancelChallenge
    GoTo BattleTowerMultiBattleRoom_NextOpponentsMenu
    End

BattleTowerMultiBattleRoom_DoLinkMultiBattle:
    Call BattleTowerMultiBattleRoom_DoNextLinkMultiBattle
    GoToIfEq VAR_0x8004, FALSE, BattleTowerMultiBattleRoom_EndChallenge
    Call BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers
    GoToIfEq VAR_RESULT, TRUE, BattleTowerMultiBattleRoom_EndChallengeWonRound
    Call BattleTowerMultiBattleRoom_OpponentsLeave
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther
    Call BattleTowerMultiBattleRoom_RestorePokemon
BattleTowerMultiBattleRoom_NextLinkOpponentsMenu:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message BattleTowerMultiBattleRoom_Text_AskReadyForNextPair
    InitGlobalTextListMenu 31, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 1
    ShowListMenu
    CloseMessage
    SetVar VAR_MAP_LOCAL_0, 0
    GoToIfEq VAR_RESULT, 1, BattleTowerMultiBattleRoom_AskCancelLinkChallenge
BattleTowerMultiBattleRoom_HandleLinkMultiDecision:
    Message BattleTowerMultiBattleRoom_Text_AwaitingResponseFromFriend
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 5
    ScrCmd_1E1 2, VAR_MAP_LOCAL_0, VAR_RESULT
    ScrCmd_1E2 2, VAR_MAP_LOCAL_0
    CloseMessage
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, BattleTowerMultiBattleRoom_LinkMultiRetire
    Call BattleTowerMultiBattleRoom_FaceNextOpponents
    GoTo BattleTowerMultiBattleRoom_DoLinkMultiBattle
    End

BattleTowerMultiBattleRoom_AskCancelLinkChallenge:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTowerMultiBattleRoom_NextLinkOpponentsMenu
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo BattleTowerMultiBattleRoom_HandleLinkMultiDecision
    End

BattleTowerMultiBattleRoom_LinkMultiRetire:
    Message BattleTowerMultiBattleRoom_Text_YouHaveChosenToRetire
    WaitTime 30, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 7
    CloseMessage
    GoTo BattleTowerMultiBattleRoom_CancelChallenge
    End

BattleTowerMultiBattleRoom_PlayersEnter:
    ApplyMovement LOCALID_LEADER, BattleTowerMultiBattleRoom_Movement_LeaderEnter
    ApplyMovement LOCALID_PARTNER, BattleTowerMultiBattleRoom_Movement_PartnerEnter
    WaitMovement
    Return

BattleTowerMultiBattleRoom_PlayersAndAttendantFaceEachOther:
    ApplyMovement LOCALID_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_Movement_AttendantApproachPlayer
    ApplyMovement LOCALID_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_Movement_AttendantApproachPlayer
    ApplyMovement LOCALID_LEADER, BattleTowerMultiBattleRoom_Movement_PlayerFaceAttendant
    ApplyMovement LOCALID_PARTNER, BattleTowerMultiBattleRoom_Movement_PlayerFaceAttendant
    WaitMovement
    Return

BattleTowerMultiBattleRoom_OpponentsEnter:
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 0, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_2, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 1, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_3, VAR_RESULT
    ClearFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    ClearFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    AddObject LOCALID_OPPONENT_1
    AddObject LOCALID_OPPONENT_2
    ApplyMovement LOCALID_OPPONENT_1, BattleTowerMultiBattleRoom_Movement_Opponent1EnterRoom
    ApplyMovement LOCALID_OPPONENT_2, BattleTowerMultiBattleRoom_Movement_Opponent2EnterRoom
    WaitMovement
    Return

BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther:
    ApplyMovement LOCALID_LEADER, BattleTowerMultiBattleRoom_Movement_PlayerApproachOpponent
    ApplyMovement LOCALID_PARTNER, BattleTowerMultiBattleRoom_Movement_PlayerApproachOpponent
    ApplyMovement LOCALID_OPPONENT_1, BattleTowerMultiBattleRoom_Movement_OpponentApproachPlayer
    ApplyMovement LOCALID_OPPONENT_2, BattleTowerMultiBattleRoom_Movement_OpponentApproachPlayer
    WaitMovement
    Return

BattleTowerMultiBattleRoom_Opponent1WalkOnSpotWest:
    ApplyMovement LOCALID_OPPONENT_1, BattleTowerMultiBattleRoom_Movement_OpponentWalkOnSpotWest
    WaitMovement
    Return

BattleTowerMultiBattleRoom_Opponent2WalkOnSpotWest:
    ApplyMovement LOCALID_OPPONENT_2, BattleTowerMultiBattleRoom_Movement_OpponentWalkOnSpotWest
    WaitMovement
    Return

BattleTowerMultiBattleRoom_OpponentsLeave:
    ApplyMovement LOCALID_OPPONENT_1, BattleTowerMultiBattleRoom_Movement_Opponent2LeaveRoom
    ApplyMovement LOCALID_OPPONENT_2, BattleTowerMultiBattleRoom_Movement_Opponent1LeaveRoom
    WaitMovement
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    RemoveObject LOCALID_OPPONENT_1
    RemoveObject LOCALID_OPPONENT_2
    Return

BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther:
    ApplyMovement LOCALID_LEADER, BattleTowerMultiBattleRoom_Movement_PlayerApproachAttendant
    ApplyMovement LOCALID_PARTNER, BattleTowerMultiBattleRoom_Movement_PlayerApproachAttendant
    ApplyMovement LOCALID_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_Movement_AttendantApproachPlayer
    ApplyMovement LOCALID_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_Movement_AttendantApproachPlayer
    WaitMovement
    Return

BattleTowerMultiBattleRoom_FaceNextOpponents:
    ApplyMovement LOCALID_LEADER, BattleTowerMultiBattleRoom_Movement_PlayerFaceEast
    ApplyMovement LOCALID_PARTNER, BattleTowerMultiBattleRoom_Movement_PlayerFaceEast
    ApplyMovement LOCALID_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_Movement_AttendantWalkBack
    ApplyMovement LOCALID_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_Movement_AttendantWalkBack
    WaitMovement
    Return

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_LeaderEnter:
    WalkNormalNorth
    WalkNormalWest 3
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_PartnerEnter:
    WalkNormalNorth
    WalkNormalWest 4
    WalkNormalNorth 2
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_Opponent1EnterRoom:
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_Opponent2EnterRoom:
    WalkNormalSouth
    WalkNormalEast 4
    WalkNormalSouth 2
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_PlayerApproachOpponent:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_OpponentApproachPlayer:
    WalkNormalWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_OpponentWalkOnSpotWest:
    WalkOnSpotSlowWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_Opponent2LeaveRoom:
    WalkNormalNorth 3
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_Opponent1LeaveRoom:
    WalkNormalNorth 2
    WalkNormalWest 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_PlayerApproachAttendant:
    WalkNormalWest
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_AttendantApproachPlayer:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_PlayerFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_AttendantWalkBack:
    FaceWest
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Movement_PlayerFaceAttendant:
    FaceWest
    EndMovement
