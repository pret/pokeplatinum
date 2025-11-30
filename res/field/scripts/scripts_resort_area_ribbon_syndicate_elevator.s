#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_ribbon_syndicate_elevator.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry ResortAreaRibbonSyndicateElevator_TalkElevatorOperator
    ScriptEntryEnd

ResortAreaRibbonSyndicateElevator_TalkElevatorOperator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 0, ResortAreaRibbonSyndicateElevator_CurrentFloor2
    GoToIfEq VAR_0x8008, 1, ResortAreaRibbonSyndicateElevator_CurrentFloor1
    End

ResortAreaRibbonSyndicateElevator_CurrentFloor2:
    BufferFloorNumber 0, 2
    GoTo ResortAreaRibbonSyndicateElevator_SelectFloor

ResortAreaRibbonSyndicateElevator_CurrentFloor1:
    BufferFloorNumber 0, 1
    GoTo ResortAreaRibbonSyndicateElevator_SelectFloor

ResortAreaRibbonSyndicateElevator_SelectFloor:
    ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
    Message ResortAreaRibbonSyndicateElevator_Text_Hello
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_2F, 0
    AddMenuEntryImm MenuEntries_Text_1F, 1
    AddMenuEntryImm MenuEntries_Text_ElevatorExit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, ResortAreaRibbonSyndicateElevator_SelectFloor2
    GoToIfEq VAR_0x8008, 1, ResortAreaRibbonSyndicateElevator_SelectFloor1
    GoTo ResortAreaRibbonSyndicateElevator_SameFloorMessage

ResortAreaRibbonSyndicateElevator_SelectFloor2:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_2F, 0, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 0, ResortAreaRibbonSyndicateElevator_SelectCurrentFloor
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Call ResortAreaRibbonSyndicateElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 0
    GoTo ResortAreaRibbonSyndicateElevator_HereWeAreMessage

ResortAreaRibbonSyndicateElevator_SelectFloor1:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_RESORT_AREA_RIBBON_SYNDICATE_1F, 1, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 1, ResortAreaRibbonSyndicateElevator_SelectCurrentFloor
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Call ResortAreaRibbonSyndicateElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 1
    GoTo ResortAreaRibbonSyndicateElevator_HereWeAreMessage

ResortAreaRibbonSyndicateElevator_ElevatorAnimation:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    CallIfEq VAR_0x8004, ELEVATOR_DIR_DOWN, ResortAreaRibbonSyndicateElevator_GoingDownMessage
    CallIfEq VAR_0x8004, ELEVATOR_DIR_UP, ResortAreaRibbonSyndicateElevator_GoingUpMessage
    CloseMessage
    ApplyMovement 0, ResortAreaRibbonSyndicateElevator_LookDown
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    Return

ResortAreaRibbonSyndicateElevator_GoingDownMessage:
    Message ResortAreaRibbonSyndicateElevator_Text_GoingDown
    Return

ResortAreaRibbonSyndicateElevator_GoingUpMessage:
    Message ResortAreaRibbonSyndicateElevator_Text_GoingUp
    Return

ResortAreaRibbonSyndicateElevator_HereWeAreMessage:
    Message ResortAreaRibbonSyndicateElevator_Text_HereWeAre
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicateElevator_SameFloorMessage:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    CloseMessage
    ReleaseAll
    End

ResortAreaRibbonSyndicateElevator_SelectCurrentFloor:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    Message ResortAreaRibbonSyndicateElevator_Text_SameFloor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
ResortAreaRibbonSyndicateElevator_LookDown:
    WalkOnSpotNormalSouth
    EndMovement
