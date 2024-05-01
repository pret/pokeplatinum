    .include "macros/scrcmd.inc"

    .data

    .long _0208-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_060
    Call _006A
    ScrCmd_0CD 0
    ScrCmd_0CF 1
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _0031
    GoTo _003C
    End

_0031:
    ScrCmd_02C 2
    GoTo _0047
    End

_003C:
    ScrCmd_02C 3
    GoTo _0047
    End

_0047:
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_22C
    Call _00E8
    ScrCmd_049 0x603
    SetFlag 0x21C
    ScrCmd_065 1
    ScrCmd_028 0x4105, 1
    ScrCmd_061
    End

_006A:
    ScrCmd_069 0x8005, 0x8006
    CompareVarToValue 0x8006, 5
    GoToIf 1, _00AC
    CompareVarToValue 0x8006, 6
    GoToIf 1, _00B8
    CompareVarToValue 0x8006, 7
    GoToIf 1, _00C4
    CompareVarToValue 0x8006, 8
    GoToIf 1, _00D0
    GoTo _00DC
    End

_00AC:
    ScrCmd_05E 1, _0168
    ScrCmd_05F
    Return

_00B8:
    ScrCmd_05E 1, _017C
    ScrCmd_05F
    Return

_00C4:
    ScrCmd_05E 1, _0190
    ScrCmd_05F
    Return

_00D0:
    ScrCmd_05E 1, _019C
    ScrCmd_05F
    Return

_00DC:
    ScrCmd_05E 1, _01B0
    ScrCmd_05F
    Return

_00E8:
    ScrCmd_069 0x8005, 0x8006
    CompareVarToValue 0x8006, 5
    GoToIf 1, _012A
    CompareVarToValue 0x8006, 6
    GoToIf 1, _0136
    CompareVarToValue 0x8006, 7
    GoToIf 1, _0142
    CompareVarToValue 0x8006, 8
    GoToIf 1, _014E
    GoTo _015A
    End

_012A:
    ScrCmd_05E 1, _01C4
    ScrCmd_05F
    Return

_0136:
    ScrCmd_05E 1, _01D0
    ScrCmd_05F
    Return

_0142:
    ScrCmd_05E 1, _01DC
    ScrCmd_05F
    Return

_014E:
    ScrCmd_05E 1, _01F0
    ScrCmd_05F
    Return

_015A:
    ScrCmd_05E 1, _01FC
    ScrCmd_05F
    Return

    .balign 4, 0
_0168:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_04B
    MoveAction_00F
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00D
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B0:
    MoveAction_04B
    MoveAction_00F
    MoveAction_00D 2
    MoveAction_023
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_00D 2
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01D0:
    MoveAction_00D
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_00C
    MoveAction_00F 3
    MoveAction_00D
    MoveAction_00F
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_00C
    MoveAction_00F 4
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_00C 2
    MoveAction_00F 4
    EndMovement

_0208:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
