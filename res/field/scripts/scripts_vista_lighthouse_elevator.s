#include "macros/scrcmd.inc"


    ScriptEntry VistaLighthouseElevator_OnFrame_Init
    ScriptEntryEnd

VistaLighthouseElevator_OnFrame_Init:
    LockAll
    ApplyMovement LOCALID_PLAYER, VistaLighthouseElevator_Movement_PlayerWalkIn
    WaitMovement
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 1, VistaLighthouseElevator_ElevatorUp
    GoToIfEq VAR_0x8008, 0, VistaLighthouseElevator_ElevatorDown
    End

VistaLighthouseElevator_ElevatorUp:
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Call VistaLighthouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VISTA_LIGHTHOUSE, 6, 10, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

VistaLighthouseElevator_ElevatorDown:
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call VistaLighthouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SUNYSHORE_CITY, 886, 791, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

VistaLighthouseElevator_ElevatorAnimation:
    WaitSE SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, VistaLighthouseElevator_Movement_PlayerWalkOut
    WaitMovement
    PlaySE SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
VistaLighthouseElevator_Movement_PlayerWalkIn:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VistaLighthouseElevator_Movement_PlayerWalkOut:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
