    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0021-.-4
    .long _005C-.-4
    .short 0xFD13

_000E:
    CallIfSet 254, _001B
    End

_001B:
    ClearFlag 0x1D1
    Return

_0021:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_134 8, 0x800C
    GoToIfEq 0x800C, 1, _0051
    ScrCmd_02C 0
    SetVar 0x8004, 8
    ScrCmd_014 0x7D9
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
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
