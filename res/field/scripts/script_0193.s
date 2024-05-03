    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0029-.-4
    .long _0031-.-4
    .short 0xFD13

_000E:
    SetVar 0x4000, 0
    ScrCmd_25B
    ScrCmd_25D 0x4001
    CompareVarToValue 0x4001, 0
    GoToIf 1, _0029
    End

_0029:
    SetVar 0x4000, 1
    End

_0031:
    ScrCmd_25C
    SetVar 0x4000, 1
    End

    .byte 0
