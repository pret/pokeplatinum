#include "macros/scrcmd.inc"


    ScriptEntry HearthomeCitySoutheastHouseElevator_OnFrame_Init
    ScriptEntryEnd

HearthomeCitySoutheastHouseElevator_OnFrame_Init:
    LockAll
    ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkIn
    WaitMovement
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 1, HearthomeCitySoutheastHouseElevator_ElevatorUp
    GoToIfEq VAR_0x8008, 0, HearthomeCitySoutheastHouseElevator_ElevatorDown
    End

HearthomeCitySoutheastHouseElevator_ElevatorUp:
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Call HearthomeCitySoutheastHouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCitySoutheastHouseElevator_ElevatorDown:
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call HearthomeCitySoutheastHouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCitySoutheastHouseElevator_ElevatorAnimation:
    WaitSE SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkOut
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkIn:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
HearthomeCitySoutheastHouseElevator_Movement_PlayerWalkOut:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
