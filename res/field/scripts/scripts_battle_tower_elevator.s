#include "macros/scrcmd.inc"
#include "generated/object_events.h"


    ScriptEntry BattleTowerElevator_Init
    ScriptEntry BattleTowerElevator_EnterBattleRoom
    ScriptEntry BattleTowerElevator_EnterMultiBattleRoom
    ScriptEntry BattleTowerElevator_EnterBattleSalon
    ScriptEntryEnd

BattleTowerElevator_Init:
    CallIfNe VAR_UNK_0x40DB, 0, _008A
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_MAP_LOCAL_A
    Call BattleTowerElevator_SetSingleAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_MULTI, BattleTowerElevator_SetMultiAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_LINK_MULTI, BattleTowerElevator_SetMultiAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_SINGLE, BattleTowerElevator_SetSingleAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_DOUBLE, BattleTowerElevator_SetSingleAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_WIFI, BattleTowerElevator_SetWiFiPlazaAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_5, BattleTowerElevator_SetWiFiPlazaAttendantGraphics
    CallIfEq VAR_MAP_LOCAL_A, BATTLE_TOWER_MODE_6, BattleTowerElevator_SetWiFiPlazaAttendantGraphics
    End

_008A:
    HidePoketch
    Return

BattleTowerElevator_SetSingleAttendantGraphics:
    SetVar VAR_OBJ_GFX_ID_A, OBJ_EVENT_GFX_FRONTIER_SINGLE_ATTENDANT
    Return

BattleTowerElevator_SetWiFiPlazaAttendantGraphics:
    SetVar VAR_OBJ_GFX_ID_A, OBJ_EVENT_GFX_WIFI_PLAZA_ATTENDANT_F
    Return

BattleTowerElevator_SetMultiAttendantGraphics:
    SetVar VAR_OBJ_GFX_ID_A, OBJ_EVENT_GFX_FRONTIER_MULTI_ATTENDANT
    Return

BattleTowerElevator_BattleRoomCheckWiFi:
    FadeScreenOut
    WaitFadeScreen
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_WIFI, BattleTowerElevator_WiFiBattleRoom
    GoToIfEq VAR_RESULT, BATTLE_TOWER_MODE_5, BattleTowerElevator_WiFiBattleRoom
    WaitForTransition
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    End

BattleTowerElevator_MultiBattleRoom:
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
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
    WaitForTransition
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 19, 6, 0
    End

    .balign 4, 0
