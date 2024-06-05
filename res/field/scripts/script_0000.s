    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0021-.-4
    .long _0046-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0021:
    ScrCmd_060
    ScrCmd_02C 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0046
    GoToIfEq 0x800C, 1, _0059
    End

_0046:
    ScrCmd_0A2
    ScrCmd_02C 12
    ScrCmd_135 94
    ScrCmd_034
    ScrCmd_2BB
    ScrCmd_204
    ScrCmd_061
    End

_0059:
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
