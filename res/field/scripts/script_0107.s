    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_05E 0xFF, _00B8
    ScrCmd_05F
    ScrCmd_11C 0x40CE
    SetVar 0x8008, 0x40CE
    CompareVarToValue 0x8008, 1
    GoToIf 1, _0038
    CompareVarToValue 0x8008, 0
    GoToIf 1, _006A
    End

_0038:
    SetVar 0x8004, 0
    Call _009C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 104, 0, 18, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_006A:
    SetVar 0x8004, 1
    Call _009C
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 103, 0, 18, 3, 1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_009C:
    ScrCmd_04B 0x5DC
    ScrCmd_23C 0x8004, 4
    ScrCmd_05E 0xFF, _00C4
    ScrCmd_05F
    ScrCmd_049 0x603
    Return

    .balign 4, 0
_00B8:
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_00D 2
    MoveAction_021
    EndMovement
