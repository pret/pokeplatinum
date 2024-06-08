    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0033
    ScriptEntry _005C
    ScriptEntry _0090
    ScriptEntry _00A1
    ScriptEntry _001A
    ScriptEntry _00B2
    .short 0xFD13

_001A:
    SetFlag 0x2C9
    CallIfEq 0x4056, 2, _002D
    End

_002D:
    ClearFlag 0x2C9
    Return

_0033:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 168, _0051
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
    GoToIfGe 0x4056, 3, _0082
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
    GoToIfEq 0x800C, 0, _0104
    GoToIfEq 0x800C, 1, _00E1
    End

_00E1:
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0104
    GoToIfEq 0x800C, 1, _00E1
    End

_0104:
    ScrCmd_02C 7
    ScrCmd_034
    ApplyMovement 1, _01B4
    WaitMovement
    ScrCmd_02C 8
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0159
    GoToIfEq 0x800C, 1, _0136
    End

_0136:
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0159
    GoToIfEq 0x800C, 1, _0136
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
