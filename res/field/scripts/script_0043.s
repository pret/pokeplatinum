    .include "macros/scrcmd.inc"

    .data

    .long _0033-.-4
    .long _005C-.-4
    .long _0090-.-4
    .long _00A1-.-4
    .long _001A-.-4
    .long _00B2-.-4
    .short 0xFD13

_001A:
    SetFlag 0x2C9
    CompareVar 0x4056, 2
    CallIf 1, _002D
    End

_002D:
    ClearFlag 0x2C9
    Return

_0033:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 168
    GoToIf 1, _0051
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0051:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CompareVar 0x4056, 3
    GoToIf 4, _0082
    ScrCmd_02C 2
    GoTo _007A
    End

_007A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0082:
    ScrCmd_0CD 0
    ScrCmd_02C 13
    GoTo _007A
    End

_0090:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B2:
    ScrCmd_060
    ApplyMovement 1, _019C
    WaitMovement
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0104
    CompareVar 0x800C, 1
    GoToIf 1, _00E1
    End

_00E1:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0104
    CompareVar 0x800C, 1
    GoToIf 1, _00E1
    End

_0104:
    ScrCmd_02C 7
    ScrCmd_034
    ApplyMovement 1, _01B4
    WaitMovement
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0159
    CompareVar 0x800C, 1
    GoToIf 1, _0136
    End

_0136:
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0159
    CompareVar 0x800C, 1
    GoToIf 1, _0136
    End

_0159:
    ScrCmd_02C 10
    ScrCmd_034
    ApplyMovement 1, _01C4
    WaitMovement
    ScrCmd_02C 11
    ScrCmd_034
    ApplyMovement 1, _01CC
    WaitMovement
    ScrCmd_02C 12
    ScrCmd_034
    ApplyMovement 0xFF, _01E0
    ApplyMovement 1, _01D4
    WaitMovement
    ScrCmd_065 1
    SetVar 0x4056, 3
    ScrCmd_061
    End

    .balign 4, 0
_019C:
    MoveAction_023
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_021
    MoveAction_020
    MoveAction_023
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_022
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_03F 2
    MoveAction_00F 2
    EndMovement

    .balign 4, 0
_01E0:
    MoveAction_00D
    MoveAction_020
    EndMovement
