#include "macros/scrcmd.inc"


    ScriptEntry HearthomeCitySoutheastHouseElevator_Init
    ScriptEntryEnd

HearthomeCitySoutheastHouseElevator_Init:
    LockAll
    ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_WalkIn
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
    Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_2F, 0, 18, 3, 1
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCitySoutheastHouseElevator_ElevatorDown:
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call HearthomeCitySoutheastHouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_SOUTHEAST_HOUSE_1F, 0, 18, 3, 1
    FadeScreenIn
    WaitFadeScreen
    End

HearthomeCitySoutheastHouseElevator_ElevatorAnimation:
    WaitFanfare SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, HearthomeCitySoutheastHouseElevator_WalkOut
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
HearthomeCitySoutheastHouseElevator_WalkIn:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
HearthomeCitySoutheastHouseElevator_WalkOut:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
