#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_elevator.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry JubilifeTVElevator_TalkElevatorOperator
    ScriptEntryEnd

JubilifeTVElevator_TalkElevatorOperator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 0, JubilifeTVElevator_CurrentFloor4
    GoToIfEq VAR_0x8008, 1, JubilifeTVElevator_CurrentFloor3
    GoToIfEq VAR_0x8008, 2, JubilifeTVElevator_CurrentFloor2
    GoToIfEq VAR_0x8008, 3, JubilifeTVElevator_CurrentFloor1
    End

JubilifeTVElevator_CurrentFloor4:
    BufferFloorNumber 0, 4
    GoTo JubilifeTVElevator_SelectFloor
    End

JubilifeTVElevator_CurrentFloor3:
    BufferFloorNumber 0, 3
    GoTo JubilifeTVElevator_SelectFloor
    End

JubilifeTVElevator_CurrentFloor2:
    BufferFloorNumber 0, 2
    GoTo JubilifeTVElevator_SelectFloor
    End

JubilifeTVElevator_CurrentFloor1:
    BufferFloorNumber 0, 1
    GoTo JubilifeTVElevator_SelectFloor
    End

JubilifeTVElevator_SelectFloor:
    ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
    Message JubilifeTVElevator_Text_Hello
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_4F, 0
    AddMenuEntryImm MenuEntries_Text_3F, 1
    AddMenuEntryImm MenuEntries_Text_2F, 2
    AddMenuEntryImm MenuEntries_Text_1F, 3
    AddMenuEntryImm MenuEntries_Text_ElevatorExit, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, JubilifeTVElevator_SelectFloor4
    GoToIfEq VAR_0x8008, 1, JubilifeTVElevator_SelectFloor3
    GoToIfEq VAR_0x8008, 2, JubilifeTVElevator_SelectFloor2
    GoToIfEq VAR_0x8008, 3, JubilifeTVElevator_SelectFloor1
    GoTo JubilifeTVElevator_SelectNoFloor
    End

JubilifeTVElevator_SelectFloor1:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_JUBILIFE_TV_1F, 2, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 3, JubilifeTVElevator_SameFloorMessage
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 3, JubilifeTVElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 3, JubilifeTVElevator_GoingDownMessage
    Call JubilifeTVElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 3
    GoTo JubilifeTVElevator_HereWeAreMessage
    End

JubilifeTVElevator_SelectFloor2:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_JUBILIFE_TV_2F, 3, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 2, JubilifeTVElevator_SameFloorMessage
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 2, JubilifeTVElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 2, JubilifeTVElevator_GoingDownMessage
    Call JubilifeTVElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 2
    GoTo JubilifeTVElevator_HereWeAreMessage
    End

JubilifeTVElevator_SelectFloor3:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_JUBILIFE_TV_3F, 4, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 1, JubilifeTVElevator_SameFloorMessage
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 1, JubilifeTVElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 1, JubilifeTVElevator_GoingDownMessage
    Call JubilifeTVElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 1
    GoTo JubilifeTVElevator_HereWeAreMessage
    End

JubilifeTVElevator_SelectFloor4:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_JUBILIFE_TV_4F, 1, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 0, JubilifeTVElevator_SameFloorMessage
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 0, JubilifeTVElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 0, JubilifeTVElevator_GoingDownMessage
    Call JubilifeTVElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 0
    GoTo JubilifeTVElevator_HereWeAreMessage
    End

JubilifeTVElevator_GoingUpMessage:
    Message JubilifeTVElevator_Text_GoingUp
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Return

JubilifeTVElevator_GoingDownMessage:
    Message JubilifeTVElevator_Text_GoingDown
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Return

JubilifeTVElevator_ElevatorAnimation:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    CloseMessage
    ApplyMovement 0, JubilifeTVElevator_LookDown
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    Return

JubilifeTVElevator_HereWeAreMessage:
    Message JubilifeTVElevator_Text_HereWeAre
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTVElevator_SameFloorMessage:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    Message JubilifeTVElevator_Text_SameFloor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeTVElevator_SelectNoFloor:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    Message JubilifeTVElevator_Text_LookForward
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
JubilifeTVElevator_LookDown:
    WalkOnSpotNormalSouth
    EndMovement
