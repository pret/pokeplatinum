    .include "macros/scrcmd.inc"

    .data

    .long _002D-.-4
    .long _0040-.-4
    .long _000E-.-4
    .short 0xFD13

_000E:
    ScrCmd_238 13, 0x4000
    GoToIfEq 0x4000, 0, _0027
    ClearFlag 0x219
    End

_0027:
    SetFlag 0x219
    End

_002D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0040:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
