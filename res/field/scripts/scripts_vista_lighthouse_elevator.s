#include "macros/scrcmd.inc"


    ScriptEntry VistaLighthouseElevator_Init
    ScriptEntryEnd

VistaLighthouseElevator_Init:
    LockAll
    ApplyMovement LOCALID_PLAYER, VistaLighthouseElevator_WalkIn
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
    Warp MAP_HEADER_VISTA_LIGHTHOUSE, 0, 6, 10, 1
    FadeScreenIn
    WaitFadeScreen
    End

VistaLighthouseElevator_ElevatorDown:
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call VistaLighthouseElevator_ElevatorAnimation
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SUNYSHORE_CITY, 0, 0x376, 0x317, 1
    FadeScreenIn
    WaitFadeScreen
    End

VistaLighthouseElevator_ElevatorAnimation:
    WaitFanfare SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, VistaLighthouseElevator_WalkOut
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
VistaLighthouseElevator_WalkIn:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
VistaLighthouseElevator_WalkOut:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
