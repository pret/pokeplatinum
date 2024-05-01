    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _002E-.-4
    .short 0xFD13

_000A:
    ScrCmd_292 10, 0x4000
    CompareVarToValue 0x4000, 1
    GoToIf 1, _0022
    SetFlag 0x27B
    End

_0022:
    ClearFlag 0x27B
    ScrCmd_028 0x4110, 1
    End

_002E:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0054
    ScrCmd_05E 0, _0064
    ScrCmd_05F
    SetFlag 0x27B
    ScrCmd_065 0
    ScrCmd_028 0x4110, 0
    ScrCmd_061
    End

    .balign 4, 0
_0054:
    MoveAction_00C
    MoveAction_042
    MoveAction_002
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_03F
    MoveAction_002
    MoveAction_041
    MoveAction_049
    MoveAction_00E 10
    MoveAction_04A
    MoveAction_045
    EndMovement
