#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_multi_battle_room.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_battle_tower_multi_battle_room.h"
#include "constants/map_object.h"


    ScriptEntry BattleTowerMultiBattleRoom_SetPlayerGraphics
    ScriptEntry BattleTowerMultiBattleRoom_SetPositions
    ScriptEntry BattleTowerMultiBattleRoom_Enter
    ScriptEntry BattleTowerMultiBattleRoom_ContinueMultiChallenge
    ScriptEntryEnd

BattleTowerMultiBattleRoom_SetPlayerGraphics:
    GoToIfEq VAR_UNK_0x40DE, 0, BattleTowerMultiBattleRoom_DontSetPlayerGraphics
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    GetCurNetID VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, BattleTowerMultiBattleRoom_SetPlayer2Graphics
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
BattleTowerMultiBattleRoom_DontSetPlayerGraphics:
    End

BattleTowerMultiBattleRoom_SetPlayer2Graphics:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PARTNER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

BattleTowerMultiBattleRoom_SetPositions:
    CallIfNe VAR_UNK_0x40DE, 0, BattleTowerMultiBattleRoom_HidePlayer
    GoToIfEq VAR_UNK_0x40DE, 3, BattleTowerMultiBattleRoom_SetPlayerPositionsForBattle
BattleTowerMultiBattleRoom_EndSetPositions:
    End

BattleTowerMultiBattleRoom_HidePlayer:
    HideObject LOCALID_PLAYER
    MoveCamera 8, 0, 0
    Return

BattleTowerMultiBattleRoom_SetPlayerPositionsForBattle:
    SetPosition BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, 5, 0, 5, 3
    SetPosition BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, 5, 0, 6, 3
    GoTo BattleTowerMultiBattleRoom_EndSetPositions
    End

BattleTowerMultiBattleRoom_RestorePokemon:
    Message BattleTowerMultiBattleRoom_Text_YourPokemonWillBeRestored
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    Return

BattleTowerMultiBattleRoom_EndChallenge:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_LINK_MULTI, BattleTowerMultiBattleRoom_EndLinkMultiChallenge
    WaitTime 30, VAR_RESULT
    SetVar VAR_UNK_0x40D8, 1
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerMultiBattleRoom_EndLinkMultiChallenge:
    WaitTime 30, VAR_RESULT
    SetVar VAR_UNK_0x40D8, 1
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 6
    FadeScreenOut
    WaitFadeScreen
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 8
    EndCommunication
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerMultiBattleRoom_Enter:
    LockAll
    SetVar VAR_UNK_0x40DE, 3
    Call BattleTowerMultiBattleRoom_ApplyPlayersEnterRoomMovement
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_LINK_MULTI, BattleTowerMultiBattleRoom_DoLinkMultiBattle
    GoTo BattleTowerMultiBattleRoom_DoMultiBattle
    End

BattleTowerMultiBattleRoom_ContinueMultiChallenge:
    LockAll
    SetVar VAR_UNK_0x40DE, 3
    Call BattleTowerMultiBattleRoom_ApplyPlayersEnterRoomMovement
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantFaceEachOther
    GoTo BattleTowerMultiBattleRoom_AskReadyForNextMultiBattle
    End

BattleTowerMultiBattleRoom_DoNextMultiBattle:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerMultiBattleRoom_SetOpponentGraphicsAndEnterRoom
    Call BattleTowerMultiBattleRoom_ApplyOpponent1WalkOnSpotSlowWestMovement
    PrintBattleTowerIntroMessage 0
    WaitABPress
    CloseMessage
    Call BattleTowerMultiBattleRoom_ApplyOpponent2WalkOnSpotSlowWestMovement
    PrintBattleTowerIntroMessage 1
    WaitABPress
    CloseMessage
    Call BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_DoNextLinkMultiBattle:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_OPPONENT_TEAMS, 0, 0
    Call BattleTowerMultiBattleRoom_SetOpponentGraphicsAndEnterRoom
    Call BattleTowerMultiBattleRoom_ApplyOpponent1WalkOnSpotSlowWestMovement
    PrintBattleTowerIntroMessage 0
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call BattleTowerMultiBattleRoom_ApplyOpponent2WalkOnSpotSlowWestMovement
    PrintBattleTowerIntroMessage 1
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 4
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecords:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS, 0, 0
    SetVar VAR_MAP_LOCAL_0, 0
    GoTo BattleTowerMultiBattleRoom_EndChallenge
    End

BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecordsAndJournal:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo BattleTowerMultiBattleRoom_EndChallenge
    End

BattleTowerMultiBattleRoom_SaveAndQuitMultiChallenge:
    SetVar VAR_UNK_0x40D8, 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_39, 0, 0
    FreeBattleTower
    Message BattleTowerMultiBattleRoom_Text_ThanksForParticipating
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_RESET_SYSTEM, 0, 0
    End

BattleTowerMultiBattleRoom_GoToEndChallengeAndUpdateGameRecords:
    GoTo BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecords
    End

BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_34, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    Return

BattleTowerMultiBattleRoom_DoMultiBattle:
    Call BattleTowerMultiBattleRoom_DoNextMultiBattle
    GoToIfEq VAR_0x8004, FALSE, BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecords
    Call BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers
    GoToIfEq VAR_RESULT, TRUE, BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecordsAndJournal
    Call BattleTowerMultiBattleRoom_OpponentsLeaveRoom
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther
    Call BattleTowerMultiBattleRoom_RestorePokemon
BattleTowerMultiBattleRoom_AskReadyForNextMultiBattle:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
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
    GoToIfEq VAR_0x8008, 0, BattleTowerMultiBattleRoom_GoToNextMultiBattle
    GoToIfEq VAR_0x8008, 1, BattleTowerMultiBattleRoom_AskSaveAndQuitMultiChallenge
    GoToIfEq VAR_0x8008, 2, BattleTowerMultiBattleRoom_AskCancelMultiChallenge
    GoTo BattleTowerMultiBattleRoom_GoToNextMultiBattle
    End

BattleTowerMultiBattleRoom_GoToNextMultiBattle:
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantsMoveBack
    GoTo BattleTowerMultiBattleRoom_DoMultiBattle
    End

BattleTowerMultiBattleRoom_AskSaveAndQuitMultiChallenge:
    Message BattleTowerMultiBattleRoom_Text_AskSaveAndQuit
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerMultiBattleRoom_SaveAndQuitMultiChallenge
    GoTo BattleTowerMultiBattleRoom_AskReadyForNextMultiBattle
    End

BattleTowerMultiBattleRoom_AskCancelMultiChallenge:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, BattleTowerMultiBattleRoom_GoToEndChallengeAndUpdateGameRecords
    GoTo BattleTowerMultiBattleRoom_AskReadyForNextMultiBattle
    End

BattleTowerMultiBattleRoom_DoLinkMultiBattle:
    Call BattleTowerMultiBattleRoom_DoNextLinkMultiBattle
    GoToIfEq VAR_0x8004, FALSE, BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecords
    Call BattleTowerMultiBattleRoom_HasDefeatedSevenTrainers
    GoToIfEq VAR_RESULT, TRUE, BattleTowerMultiBattleRoom_EndChallengeAndUpdateGameRecordsAndJournal
    Call BattleTowerMultiBattleRoom_OpponentsLeaveRoom
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther
    Call BattleTowerMultiBattleRoom_RestorePokemon
BattleTowerMultiBattleRoom_AskReadyForNextLinkMultiBattle:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message BattleTowerMultiBattleRoom_Text_AskReadyForNextPair
    InitGlobalTextListMenu 31, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 1
    ShowListMenu
    CloseMessage
    SetVar VAR_MAP_LOCAL_0, 0
    GoToIfEq VAR_RESULT, 1, BattleTowerMultiBattleRoom_AskCancelLinkMultiChallenge
BattleTowerMultiBattleRoom_HandleLinkMultiDecision:
    Message BattleTowerMultiBattleRoom_Text_AwaitingResponseFromFriend
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 5
    ScrCmd_1E1 2, VAR_MAP_LOCAL_0, VAR_RESULT
    ScrCmd_1E2 2, VAR_MAP_LOCAL_0
    CloseMessage
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, BattleTowerMultiBattleRoom_LinkMultiRetire
    Call BattleTowerMultiBattleRoom_PlayersAndAttendantsMoveBack
    GoTo BattleTowerMultiBattleRoom_DoLinkMultiBattle
    End

BattleTowerMultiBattleRoom_AskCancelLinkMultiChallenge:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, BattleTowerMultiBattleRoom_AskReadyForNextLinkMultiBattle
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo BattleTowerMultiBattleRoom_HandleLinkMultiDecision
    End

BattleTowerMultiBattleRoom_LinkMultiRetire:
    Message BattleTowerMultiBattleRoom_Text_YouHaveChosenToRetire
    WaitTime 30, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 7
    CloseMessage
    GoTo BattleTowerMultiBattleRoom_GoToEndChallengeAndUpdateGameRecords
    End

BattleTowerMultiBattleRoom_ApplyPlayersEnterRoomMovement:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, BattleTowerMultiBattleRoom_LeaderEnterRoomMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, BattleTowerMultiBattleRoom_PartnerEnterRoomMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_PlayersAndAttendantFaceEachOther:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_AttendantApproachPlayerMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_AttendantApproachPlayerMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, BattleTowerMultiBattleRoom_PlayerFaceAttendantMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, BattleTowerMultiBattleRoom_PlayerFaceAttendantMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_SetOpponentGraphicsAndEnterRoom:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_OPPONENT_OBJECT_ID, 0, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_2, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_OPPONENT_OBJECT_ID, 1, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_3, VAR_RESULT
    ClearFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    ClearFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    AddObject BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1
    AddObject BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1, BattleTowerMultiBattleRoom_Opponent1EnterRoomMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2, BattleTowerMultiBattleRoom_Opponent2EnterRoomMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_PlayersAndOpponentsApproachEachOther:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, BattleTowerMultiBattleRoom_PlayerApproachOpponentMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, BattleTowerMultiBattleRoom_PlayerApproachOpponentMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1, BattleTowerMultiBattleRoom_OpponentApproachPlayerMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2, BattleTowerMultiBattleRoom_OpponentApproachPlayerMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_ApplyOpponent1WalkOnSpotSlowWestMovement:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1, BattleTowerMultiBattleRoom_WalkOnSpotSlowWestMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_ApplyOpponent2WalkOnSpotSlowWestMovement:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2, BattleTowerMultiBattleRoom_WalkOnSpotSlowWestMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_OpponentsLeaveRoom:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1, BattleTowerMultiBattleRoom_Opponent2LeaveRoomMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2, BattleTowerMultiBattleRoom_Opponent1LeaveRoomMovement
    WaitMovement
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_1
    SetFlag FLAG_HIDE_MULTI_BATTLE_ROOM_OPPONENT_2
    RemoveObject BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_1
    RemoveObject BATTLE_TOWER_MULTI_BATTLE_ROOM_OPPONENT_2
    Return

BattleTowerMultiBattleRoom_PlayersAndAttendantApproachEachOther:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, BattleTowerMultiBattleRoom_PlayerApproachAttendantMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, BattleTowerMultiBattleRoom_PlayerApproachAttendantMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_AttendantApproachPlayerMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_AttendantApproachPlayerMovement
    WaitMovement
    Return

BattleTowerMultiBattleRoom_PlayersAndAttendantsMoveBack:
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_LEADER, BattleTowerMultiBattleRoom_PlayersMoveBackEastMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_PARTNER, BattleTowerMultiBattleRoom_PlayersMoveBackEastMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_NORTH, BattleTowerMultiBattleRoom_AttendantsMoveBackWestMovement
    ApplyMovement BATTLE_TOWER_MULTI_BATTLE_ROOM_ATTENDANT_SOUTH, BattleTowerMultiBattleRoom_AttendantsMoveBackWestMovement
    WaitMovement
    Return

    .balign 4, 0
BattleTowerMultiBattleRoom_LeaderEnterRoomMovement:
    WalkNormalNorth
    WalkNormalWest 3
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_PartnerEnterRoomMovement:
    WalkNormalNorth
    WalkNormalWest 4
    WalkNormalNorth 2
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Opponent1EnterRoomMovement:
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Opponent2EnterRoomMovement:
    WalkNormalSouth
    WalkNormalEast 4
    WalkNormalSouth 2
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_PlayerApproachOpponentMovement:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_OpponentApproachPlayerMovement:
    WalkNormalWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_WalkOnSpotSlowWestMovement:
    WalkOnSpotSlowWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Opponent2LeaveRoomMovement:
    WalkNormalNorth 3
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_Opponent1LeaveRoomMovement:
    WalkNormalNorth 2
    WalkNormalWest 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_PlayerApproachAttendantMovement:
    WalkNormalWest
    FaceWest
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_AttendantApproachPlayerMovement:
    WalkNormalEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_PlayersMoveBackEastMovement:
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_AttendantsMoveBackWestMovement:
    FaceWest
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
BattleTowerMultiBattleRoom_PlayerFaceAttendantMovement:
    FaceWest
    EndMovement
