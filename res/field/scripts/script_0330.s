    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0075-.-4
    .long _0081-.-4
    .long _0012-.-4
    .short 0xFD13

_0012:
    ScrCmd_32B 0x4004
    CompareVarToValue 0x4004, 0
    GoToIf 1, _0061
    CompareVarToValue 0x4004, 1
    GoToIf 1, _006B
    End

_0032:
    ScrCmd_25B
    CompareVarToValue 0x4069, 0x122
    CallIf 5, _0079
    ScrCmd_32B 0x4004
    CompareVarToValue 0x4004, 0
    GoToIf 1, _0061
    CompareVarToValue 0x4004, 1
    GoToIf 1, _006B
    End

_0061:
    ScrCmd_18A 3, 17, 1
    End

_006B:
    ScrCmd_18A 2, 17, 1
    End

_0075:
    ScrCmd_25C
    End

_0079:
    ScrCmd_028 0x4069, 0
    Return

_0081:
    End

    .byte 0
