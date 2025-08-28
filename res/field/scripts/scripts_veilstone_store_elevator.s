#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_elevator.h"
#include "res/text/bank/menu_entries.h"


    ScriptEntry VeilstoneStoreElevator_TalkElevatorOperator
    ScriptEntryEnd

VeilstoneStoreElevator_TalkElevatorOperator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 0, VeilstoneStoreElevator_CurrentFloor5
    GoToIfEq VAR_0x8008, 1, VeilstoneStoreElevator_CurrentFloor4
    GoToIfEq VAR_0x8008, 2, VeilstoneStoreElevator_CurrentFloor3
    GoToIfEq VAR_0x8008, 3, VeilstoneStoreElevator_CurrentFloor2
    GoToIfEq VAR_0x8008, 4, VeilstoneStoreElevator_CurrentFloor1
    GoToIfEq VAR_0x8008, 5, VeilstoneStoreElevator_CurrentFloorB1
    End

VeilstoneStoreElevator_CurrentFloor5:
    BufferFloorNumber 0, 5
    GoTo VeilstoneStoreElevator_SelectFloor

VeilstoneStoreElevator_CurrentFloor4:
    BufferFloorNumber 0, 4
    GoTo VeilstoneStoreElevator_SelectFloor

VeilstoneStoreElevator_CurrentFloor3:
    BufferFloorNumber 0, 3
    GoTo VeilstoneStoreElevator_SelectFloor

VeilstoneStoreElevator_CurrentFloor2:
    BufferFloorNumber 0, 2
    GoTo VeilstoneStoreElevator_SelectFloor

VeilstoneStoreElevator_CurrentFloor1:
    BufferFloorNumber 0, 1
    GoTo VeilstoneStoreElevator_SelectFloor

VeilstoneStoreElevator_CurrentFloorB1:
    BufferFloorNumber 0, 0
    GoTo VeilstoneStoreElevator_SelectFloor
    End

VeilstoneStoreElevator_SelectFloor:
    ShowCurrentFloor 20, 1, VAR_ELEVATOR_FLOORS_ABOVE
    Message VeilstoneStoreElevator_Text_Hello
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_5F, 0
    AddMenuEntryImm MenuEntries_Text_4F, 1
    AddMenuEntryImm MenuEntries_Text_3F, 2
    AddMenuEntryImm MenuEntries_Text_2F, 3
    AddMenuEntryImm MenuEntries_Text_1F, 4
    AddMenuEntryImm MenuEntries_Text_B1F, 5
    AddMenuEntryImm MenuEntries_Text_ElevatorExit, 6
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, VeilstoneStoreElevator_SelectFloor5
    GoToIfEq VAR_0x8008, 1, VeilstoneStoreElevator_SelectFloor4
    GoToIfEq VAR_0x8008, 2, VeilstoneStoreElevator_SelectFloor3
    GoToIfEq VAR_0x8008, 3, VeilstoneStoreElevator_SelectFloor2
    GoToIfEq VAR_0x8008, 4, VeilstoneStoreElevator_SelectFloor1
    GoToIfEq VAR_0x8008, 5, VeilstoneStoreElevator_SelectFloorB1
    GoTo VeilstoneStoreElevator_SelectNoFloor

VeilstoneStoreElevator_SelectFloorB1:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_B1F, 1, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 5, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 5, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 5, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 5
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_SelectFloor1:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_1F, 2, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 4, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 4, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 4, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 4
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_SelectFloor2:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_2F, 2, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 3, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 3, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 3, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 3
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_SelectFloor3:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_3F, 2, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 2, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 2, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 2, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 2
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_SelectFloor4:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_4F, 2, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 1, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 1, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 1, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 1
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_SelectFloor5:
    WaitTime 1, VAR_RESULT
    GetFloorsAbove VAR_ELEVATOR_FLOORS_ABOVE
    SetSpecialLocation MAP_HEADER_VEILSTONE_STORE_5F, 1, 18, 2, DIR_SOUTH
    GoToIfEq VAR_ELEVATOR_FLOORS_ABOVE, 0, VeilstoneStoreElevator_SelectCurrentFloor
    CallIfGt VAR_ELEVATOR_FLOORS_ABOVE, 0, VeilstoneStoreElevator_GoingUpMessage
    CallIfLt VAR_ELEVATOR_FLOORS_ABOVE, 0, VeilstoneStoreElevator_GoingDownMessage
    Call VeilstoneStoreElevator_ElevatorAnimation
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, 0
    GoTo VeilstoneStoreElevator_ElevatorArrived

VeilstoneStoreElevator_GoingUpMessage:
    Message VeilstoneStoreElevator_Text_GoingUp
    SetVar VAR_0x8004, ELEVATOR_DIR_UP
    Return

VeilstoneStoreElevator_GoingDownMessage:
    Message VeilstoneStoreElevator_Text_GoingDown
    SetVar VAR_0x8004, ELEVATOR_DIR_DOWN
    Return

VeilstoneStoreElevator_ElevatorAnimation:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    CloseMessage
    ApplyMovement 0, VeilstoneStoreElevator_LookDown
    WaitMovement
    WaitFanfare SEQ_SE_CONFIRM
    PlayElevatorAnimation VAR_0x8004, 4
    Return

VeilstoneStoreElevator_ElevatorArrived:
    SetVar VAR_0x8008, VAR_ELEVATOR_FLOORS_ABOVE
    GoToIfEq VAR_0x8008, 0, VeilstoneStoreElevator_ArrivedFloor5
    GoToIfEq VAR_0x8008, 1, VeilstoneStoreElevator_ArrivedFloor4
    GoToIfEq VAR_0x8008, 2, VeilstoneStoreElevator_ArrivedFloor3
    GoToIfEq VAR_0x8008, 3, VeilstoneStoreElevator_ArrivedFloor2
    GoToIfEq VAR_0x8008, 4, VeilstoneStoreElevator_ArrivedFloor1
    GoToIfEq VAR_0x8008, 5, VeilstoneStoreElevator_ArrivedFloorB1
    End

VeilstoneStoreElevator_ArrivedFloor5:
    Message VeilstoneStoreElevator_Text_Floor5
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ArrivedFloor4:
    Message VeilstoneStoreElevator_Text_Floor4
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ArrivedFloor3:
    Message VeilstoneStoreElevator_Text_Floor3
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ArrivedFloor2:
    Message VeilstoneStoreElevator_Text_Floor2
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ArrivedFloor1:
    Message VeilstoneStoreElevator_Text_Floor1
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ArrivedFloorB1:
    Message VeilstoneStoreElevator_Text_FloorB1
    GoTo VeilstoneStoreElevator_ElevatorDone
    End

VeilstoneStoreElevator_ElevatorDone:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreElevator_SelectCurrentFloor:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    Message VeilstoneStoreElevator_Text_SameFloor
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

VeilstoneStoreElevator_SelectNoFloor:
    SetVar VAR_ELEVATOR_FLOORS_ABOVE, -1
    WaitTime 1, VAR_RESULT
    Message VeilstoneStoreElevator_Text_LookForward
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
VeilstoneStoreElevator_LookDown:
    WalkOnSpotNormalSouth
    EndMovement
