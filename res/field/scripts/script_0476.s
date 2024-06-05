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
    CompareVar 0x800C, 0
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
    SetVar 0x4105, 1
    ScrCmd_061
    End

_006A:
    ScrCmd_069 0x8005, 0x8006
    CompareVar 0x8006, 5
    GoToIf 1, _00AC
    CompareVar 0x8006, 6
    GoToIf 1, _00B8
    CompareVar 0x8006, 7
    GoToIf 1, _00C4
    CompareVar 0x8006, 8
    GoToIf 1, _00D0
    GoTo _00DC
    End

_00AC:
    ApplyMovement 1, _0168
    WaitMovement
    Return

_00B8:
    ApplyMovement 1, _017C
    WaitMovement
    Return

_00C4:
    ApplyMovement 1, _0190
    WaitMovement
    Return

_00D0:
    ApplyMovement 1, _019C
    WaitMovement
    Return

_00DC:
    ApplyMovement 1, _01B0
    WaitMovement
    Return

_00E8:
    ScrCmd_069 0x8005, 0x8006
    CompareVar 0x8006, 5
    GoToIf 1, _012A
    CompareVar 0x8006, 6
    GoToIf 1, _0136
    CompareVar 0x8006, 7
    GoToIf 1, _0142
    CompareVar 0x8006, 8
    GoToIf 1, _014E
    GoTo _015A
    End

_012A:
    ApplyMovement 1, _01C4
    WaitMovement
    Return

_0136:
    ApplyMovement 1, _01D0
    WaitMovement
    Return

_0142:
    ApplyMovement 1, _01DC
    WaitMovement
    Return

_014E:
    ApplyMovement 1, _01F0
    WaitMovement
    Return

_015A:
    ApplyMovement 1, _01FC
    WaitMovement
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
