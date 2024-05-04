    .include "macros/scrcmd.inc"

    .data

    .long _0077-.-4
    .long _000E-.-4
    .long _0043-.-4
    .short 0xFD13

_000E:
    CompareVarToValue 0x406A, 0x122
    CallIf 5, _003B
    ScrCmd_32B 0x4001
    CompareVarToValue 0x4001, 0
    GoToIf 1, _0063
    CompareVarToValue 0x4001, 1
    GoToIf 1, _006D
    End

_003B:
    SetVar 0x406A, 0
    Return

_0043:
    ScrCmd_32B 0x4001
    CompareVarToValue 0x4001, 0
    GoToIf 1, _0063
    CompareVarToValue 0x4001, 1
    GoToIf 1, _006D
    End

_0063:
    ScrCmd_18A 3, 17, 16
    End

_006D:
    ScrCmd_18A 2, 17, 16
    End

_0077:
    End

    .byte 0
    .byte 0
    .byte 0
