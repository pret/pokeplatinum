    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0015-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9D0
    ScrCmd_270 0, 1
    End

_0015:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_07E 0x1C5, 1, 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0052
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_034
    CompareVarToValue 0x800C, 0
    GoToIf 1, _005D
    GoTo _0098

_0052:
    ScrCmd_02C 0
    ScrCmd_034
    GoTo _005D

_005D:
    Call _00A3
    CompareVarToValue 0x8004, 1
    CallIf 1, _00BD
    CompareVarToValue 0x8004, 3
    CallIf 1, _00D7
    CompareVarToValue 0x8004, 0
    CallIf 1, _00F1
    ScrCmd_23D 0, 2, 33, 44, 0x2EE
    ScrCmd_061
    End

_0098:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A3:
    ScrCmd_05E 0, _010C
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0, _0118
    ScrCmd_05F
    Return

_00BD:
    ScrCmd_05E 0xFF, _0120
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _0118
    ScrCmd_05F
    Return

_00D7:
    ScrCmd_05E 0xFF, _0130
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _0118
    ScrCmd_05F
    Return

_00F1:
    ScrCmd_05E 0xFF, _013C
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _0118
    ScrCmd_05F
    Return

    .balign 4, 0
_010C:
    MoveAction_00F
    MoveAction_040
    EndMovement

    .balign 4, 0
_0118:
    MoveAction_045
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_00D
    MoveAction_00F 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_0130:
    MoveAction_00F 2
    MoveAction_040
    EndMovement

    .balign 4, 0
_013C:
    MoveAction_00C
    MoveAction_00F 2
    MoveAction_040
    EndMovement
