#include "macros/scrcmd.inc"


    ScriptEntry HearthomeCityNortheastHouseElevator_OnFrame_Init
    ScriptEntryEnd

HearthomeCityNortheastHouseElevator_OnFrame_Init:
    LockAll
    ApplyMovement LOCALID_PLAYER, HearthomeCityNortheastHouseElevator_Movement_PlayerWalkIn
    WaitMovement
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 1, HearthomeCityNortheastHouseElevator_ElevatorUp
    GoToIfEq VAR_0x8008, 0, HearthomeCityNortheastHouseElevator_ElevatorDown
    End

HearthomeCityNortheastHouseElevator_ElevatorUp:
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Call HearthomeCityNortheastHouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_2F, 0, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCityNortheastHouseElevator_ElevatorDown:
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call HearthomeCityNortheastHouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_1F, 0, 18, 3, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCityNortheastHouseElevator_ElevatorAnimation:
    WaitSE SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, HearthomeCityNortheastHouseElevator_Movement_PlayerWalkOut
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
HearthomeCityNortheastHouseElevator_Movement_PlayerWalkIn:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
HearthomeCityNortheastHouseElevator_Movement_PlayerWalkOut:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
