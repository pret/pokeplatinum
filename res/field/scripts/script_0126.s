    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _001A-.-4
    .long _002D-.-4
    .short 0xFD13

_000E:
    SetVar 0x8007, 0
    ScrCmd_014 0x7D2
    End

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
