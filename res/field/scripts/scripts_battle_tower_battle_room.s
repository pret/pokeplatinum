#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_battle_room.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_tower_battle_room.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerBattleRoom_OnTransition
    ScriptEntry BattleTowerBattleRoom_OnFrameStartChallenge
    ScriptEntry BattleTowerBattleRoom_OnFrameResumeChallenge
    ScriptEntry BattleTowerBattleRoom_Unused4
    ScriptEntry BattleTowerBattleRoom_OnResume
    ScriptEntryEnd

BattleTowerBattleRoom_OnTransition:
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 0, BattleTowerBattleRoom_OnTransitionEnd
    SetFlag FLAG_HIDE_BATTLE_TOWER_BATTLE_ROOM_OPPONENT
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
BattleTowerBattleRoom_OnTransitionEnd:
    End

BattleTowerBattleRoom_OnResume:
    HideObject LOCALID_PLAYER
    GoToIfEq VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 3, BattleTowerBattleRoom_SetPlayerPositionForBattle
    End

BattleTowerBattleRoom_SetPlayerPositionForBattle:
    SetPosition LOCALID_BT_PLAYER, 5, 0, 6, DIR_EAST
    End

BattleTowerBattleRoom_Unused4:
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 0
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call BattleTowerBattleRoom_OpponentEnterAndBattle
    ReleaseAll
    End

BattleTowerBattleRoom_HealPokemon:
    Message BattleTowerBattleRoom_Text_HealPokemon
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Return

BattleTowerBattleRoom_WarpToLobbby:
    WaitTime 30, VAR_RESULT
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, BattleTowerBattleRoom_WarpToLobbbyWiFiAttendant
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, BattleTowerBattleRoom_WarpToLobbbyWiFiAttendant
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleRoom_WarpToLobbbyWiFiAttendant:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerBattleRoom_OnFrameStartChallenge:
    LockAll
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 3
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTowerBattleRoom_WarpToLobbby
    Call BattleTowerBattleRoom_PlayerEnter
    GoTo BattleTowerBattleRoom_Opponent
    End

BattleTowerBattleRoom_OnFrameResumeChallenge:
    LockAll
    SetVar VAR_BATTLE_TOWER_BATTLE_ROOM_LOAD_ACTION, 3
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, BattleTowerBattleRoom_WarpToLobbby
    Call BattleTowerBattleRoom_PlayerEnter
    Call BattleTowerBattleRoom_AttendantWalkToPlayer
    GoTo BattleTowerBattleRoom_NextOpponent
    End

BattleTowerBattleRoom_OpponentEnterAndBattle:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerBattleRoom_OpponentEnter
    PrintBattleTowerIntroMessage 0
    WaitABPress
    CloseMessage
    Call BattleTowerBattleRoom_PlayerOpponentApproachEachOther
    CallBattleTowerFunction BT_FUNC_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

BattleTowerBattleRoom_EndChallenge:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0
    GoTo BattleTowerBattleRoom_WarpToLobbby
    End

BattleTowerBattleRoom_EndChallengeWonRound:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0
    GoTo BattleTowerBattleRoom_WarpToLobbby
    End

BattleTowerBattleRoom_SaveAndQuit:
    SetVar VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, 0
    FreeBattleTower
    Message BattleTowerBattleRoom_Text_Saving
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

BattleTowerBattleRoom_CancelChallenge:
    GoTo BattleTowerBattleRoom_EndChallenge
    End

BattleTowerBattleRoom_CheckDefeatedSevenTrainers:
    CallBattleTowerFunction BT_FUNC_UNK_34, 0, VAR_RESULT
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    Return

BattleTowerBattleRoom_Opponent:
    Call BattleTowerBattleRoom_OpponentEnterAndBattle
    GoToIfEq VAR_0x8004, FALSE, BattleTowerBattleRoom_EndChallenge
    Call BattleTowerBattleRoom_CheckDefeatedSevenTrainers
    GoToIfEq VAR_RESULT, TRUE, BattleTowerBattleRoom_EndChallengeWonRound
    Call BattleTowerBattleRoom_OpponentLeave
    Call BattleTowerBattleRoom_PlayerWalkToAttendant
    Call BattleTowerBattleRoom_HealPokemon
    GoTo BattleTowerBattleRoom_NextOpponent
    End

BattleTowerBattleRoom_NextOpponentMenu:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message BattleTowerBattleRoom_Text_AreYouReady
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTowerBattleRoom_KeepGoing
    GoToIfEq VAR_0x8008, 1, BattleTowerBattleRoom_AskSaveAndQuit
    GoToIfEq VAR_0x8008, 2, BattleTowerBattleRoom_AskCancelChallenge
    GoTo BattleTowerBattleRoom_KeepGoing
    End

BattleTowerBattleRoom_KeepGoing:
    Call BattleTowerBattleRoom_FaceNextOpponent
    GoTo BattleTowerBattleRoom_Opponent
    End

BattleTowerBattleRoom_AskSaveAndQuit:
    Message BattleTowerBattleRoom_Text_SaveAndQuit
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleRoom_SaveAndQuit
    GoTo BattleTowerBattleRoom_NextOpponentMenu
    End

BattleTowerBattleRoom_AskCancelChallenge:
    Message BattleTowerBattleRoom_Text_CancelQuestion
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerBattleRoom_CancelChallenge
    GoTo BattleTowerBattleRoom_NextOpponentMenu
    End

BattleTowerBattleRoom_NextOpponent:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfNe VAR_RESULT, BATTLE_TOWER_MODE_SINGLE, BattleTowerBattleRoom_NextOpponentMenu
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 20, BattleTowerBattleRoom_TowerTycoonMenu
    GoToIfEq VAR_RESULT, 48, BattleTowerBattleRoom_TowerTycoonMenu
    GoTo BattleTowerBattleRoom_NextOpponentMenu
    End

BattleTowerBattleRoom_TowerTycoonMenu:
    Message BattleTowerBattleRoom_Text_TowerTycoonApproaching
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, BattleTowerBattleRoom_TowerTycoonKeepGoing
    GoToIfEq VAR_0x8008, 1, BattleTowerBattleRoom_AskSaveAndQuit
    GoToIfEq VAR_0x8008, 2, BattleTowerBattleRoom_AskCancelChallenge
    GoTo BattleTowerBattleRoom_TowerTycoonKeepGoing
    End

BattleTowerBattleRoom_TowerTycoonKeepGoing:
    Call BattleTowerBattleRoom_FaceNextOpponent
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerBattleRoom_PalmerEnter
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, BattleTowerBattleRoom_PalmerIntroGold
    BufferPlayerName 0
    BufferRivalName 1
    Message BattleTowerBattleRoom_Text_PalmerIntro
BattleTowerBattleRoom_BattlePalmer:
    CloseMessage
    Call BattleTowerBattleRoom_PlayerOpponentApproachEachOther
    CallBattleTowerFunction BT_FUNC_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_0x8004, FALSE, BattleTowerBattleRoom_EndChallenge
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, BattleTowerBattleRoom_BeatPalmerGold
    Message BattleTowerBattleRoom_Text_BeatPalmer
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 1, 0
BattleTowerBattleRoom_BeatPalmer:
    CloseMessage
    Call BattleTowerBattleRoom_CheckDefeatedSevenTrainers
    GoTo BattleTowerBattleRoom_EndChallengeWonRound
    End

BattleTowerBattleRoom_PalmerIntroGold:
    Message BattleTowerBattleRoom_Text_PalmerIntroGold
    GoTo BattleTowerBattleRoom_BattlePalmer
    End

BattleTowerBattleRoom_BeatPalmerGold:
    Message BattleTowerBattleRoom_Text_BeatPalmerGold
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 2, 0
    GoTo BattleTowerBattleRoom_BeatPalmer
    End

BattleTowerBattleRoom_PlayerEnter:
    ApplyMovement LOCALID_BT_PLAYER, BattleTowerBattleRoom_Movement_PlayerEnter
    WaitMovement
    Return

BattleTowerBattleRoom_AttendantWalkToPlayer:
    ApplyMovement LOCALID_ATTENDANT, BattleTowerBattleRoom_Movement_AttendantWalkEast
    ApplyMovement LOCALID_BT_PLAYER, BattleTowerBattleRoom_Movement_PlayerFaceWest
    WaitMovement
    Return

BattleTowerBattleRoom_OpponentEnter:
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 0, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_1, VAR_RESULT
    ClearFlag FLAG_HIDE_BATTLE_TOWER_BATTLE_ROOM_OPPONENT
    AddObject LOCALID_OPPONENT
    ApplyMovement LOCALID_OPPONENT, BattleTowerBattleRoom_Movement_OpponentEnter
    WaitMovement
    Return

BattleTowerBattleRoom_PlayerOpponentApproachEachOther:
    ApplyMovement LOCALID_BT_PLAYER, BattleTowerBattleRoom_Movement_PlayerWalkEast
    ApplyMovement LOCALID_OPPONENT, BattleTowerBattleRoom_Movement_OpponentWalkWest
    WaitMovement
    Return

BattleTowerBattleRoom_OpponentLeave:
    ApplyMovement LOCALID_OPPONENT, BattleTowerBattleRoom_Movement_OpponentLeave
    WaitMovement
    SetFlag FLAG_HIDE_BATTLE_TOWER_BATTLE_ROOM_OPPONENT
    RemoveObject LOCALID_OPPONENT
    Return

BattleTowerBattleRoom_PlayerWalkToAttendant:
    ApplyMovement LOCALID_BT_PLAYER, BattleTowerBattleRoom_Movement_PlayerWalkToAttendant
    ApplyMovement LOCALID_ATTENDANT, BattleTowerBattleRoom_Movement_AttendantWalkEast
    WaitMovement
    Return

BattleTowerBattleRoom_FaceNextOpponent:
    ApplyMovement LOCALID_BT_PLAYER, BattleTowerBattleRoom_Movement_PlayerFaceEast
    ApplyMovement LOCALID_ATTENDANT, BattleTowerBattleRoom_Movement_AttendantWalkBack
    WaitMovement
    Return

BattleTowerBattleRoom_PalmerEnter:
    SetVar VAR_OBJ_GFX_ID_1, OBJ_EVENT_GFX_PALMER
    ClearFlag FLAG_HIDE_BATTLE_TOWER_BATTLE_ROOM_OPPONENT
    AddObject LOCALID_OPPONENT
    ApplyMovement LOCALID_OPPONENT, BattleTowerBattleRoom_Movement_PalmerEnter
    WaitMovement
    Return

BattleTowerBattleRoom_UnusedMovement:
    Delay4
    FaceWest
    WalkNormalWest 5
    FaceNorth
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PlayerEnter:
    Delay4
    WalkNormalNorth
    FaceWest
    WalkNormalWest 3
    FaceNorth
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_OpponentEnter:
    WalkNormalSouth
    FaceEast
    WalkNormalEast 3
    FaceSouth
    WalkNormalSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PlayerWalkEast:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_OpponentWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_OpponentLeave:
    FaceEast
    WalkNormalEast
    FaceNorth
    WalkNormalNorth 3
    FaceWest
    WalkNormalWest 3
    FaceNorth
    WalkNormalNorth
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PlayerWalkToAttendant:
    WalkNormalWest
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_AttendantWalkEast:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PlayerFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_AttendantWalkBack:
    FaceWest
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PlayerFaceWest:
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerBattleRoom_Movement_PalmerEnter:
    WalkSlowSouth
    FaceEast
    WalkSlowEast 3
    FaceSouth
    WalkSlowSouth 3
    FaceWest
    EndMovement
