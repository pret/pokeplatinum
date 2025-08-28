#include "macros/scrcmd.inc"


    ScriptEntry BattleTowerElevator_Init
    ScriptEntry BattleTowerElevator_EnterBattleRoom
    ScriptEntry BattleTowerElevator_EnterMultiBattleRoom
    ScriptEntry BattleTowerElevator_EnterBattleSalon
    ScriptEntryEnd

BattleTowerElevator_Init:
    CallIfNe VAR_UNK_0x40DB, 0, _008A
    ScrCmd_1DD 43, 0, VAR_MAP_LOCAL_A
    Call _008E
    CallIfEq VAR_MAP_LOCAL_A, 2, _009E
    CallIfEq VAR_MAP_LOCAL_A, 3, _009E
    CallIfEq VAR_MAP_LOCAL_A, 0, _008E
    CallIfEq VAR_MAP_LOCAL_A, 1, _008E
    CallIfEq VAR_MAP_LOCAL_A, 4, _0096
    CallIfEq VAR_MAP_LOCAL_A, 5, _0096
    CallIfEq VAR_MAP_LOCAL_A, 6, _0096
    End

_008A:
    HidePoketch
    Return

_008E:
    SetVar VAR_OBJ_GFX_ID_A, 231
    Return

_0096:
    SetVar VAR_OBJ_GFX_ID_A, 235
    Return

_009E:
    SetVar VAR_OBJ_GFX_ID_A, 232
    Return

BattleTowerElevator_BattleRoomCheckWiFi:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_1DD 43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, BattleTowerElevator_WiFiBattleRoom
    GoToIfEq VAR_RESULT, 5, BattleTowerElevator_WiFiBattleRoom
    ScrCmd_1F8
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    End

BattleTowerElevator_MultiBattleRoom:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_2C4 6
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    End

BattleTowerElevator_BattleSalon:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 2, 1
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

BattleTowerElevator_ElevatorAnimation:
    Call BattleTowerElevator_PlayerEnter
    PlayElevatorAnimation VAR_MAP_LOCAL_0, 3
    Call BattleTowerElevator_Exit
    Return

BattleTowerElevator_EnterBattleRoom:
    LockAll
    SetVar VAR_MAP_LOCAL_0, ELEVATOR_DIR_UP
    Call BattleTowerElevator_ElevatorAnimation
    GoTo BattleTowerElevator_BattleRoomCheckWiFi
    End

BattleTowerElevator_EnterMultiBattleRoom:
    LockAll
    SetVar VAR_MAP_LOCAL_0, ELEVATOR_DIR_UP
    Call BattleTowerElevator_ElevatorAnimation
    GoTo BattleTowerElevator_MultiBattleRoom
    End

BattleTowerElevator_EnterBattleSalon:
    LockAll
    SetVar VAR_MAP_LOCAL_0, ELEVATOR_DIR_DOWN
    Call BattleTowerElevator_ElevatorAnimation
    GoTo BattleTowerElevator_BattleSalon
    End

BattleTowerElevator_PlayerEnter:
    ApplyMovement LOCALID_PLAYER, BattleTowerElevator_PlayerEnterMovement
    WaitMovement
    Return

BattleTowerElevator_Exit:
    ApplyMovement 0, BattleTowerElevator_GuideExitMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerElevator_PlayerExitMovement
    WaitMovement
    Return

BattleTowerElevator_UnusedMovement:
    WalkNormalNorth 2
    FaceEast
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerElevator_PlayerEnterMovement:
    WalkNormalNorth 2
    FaceSouth
    EndMovement

    .balign 4, 0
BattleTowerElevator_GuideExitMovement:
    WalkNormalSouth
    FaceWest
    WalkNormalWest
    FaceSouth
    WalkNormalSouth
    SetInvisible
    EndMovement

    .balign 4, 0
BattleTowerElevator_PlayerExitMovement:
    Delay8 2
    Delay2
    WalkNormalSouth 2
    SetInvisible
    EndMovement

BattleTowerElevator_WiFiBattleRoom:
    ScrCmd_1F8
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 19, 6, 0
    End

    .balign 4, 0
