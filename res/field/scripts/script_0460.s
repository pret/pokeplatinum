    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _001D-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_001D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVarToValue 0x800C, 1
    GoToIf 1, _0044
    ScrCmd_02C 2
    GoTo _004F
    End

_0044:
    ScrCmd_02C 3
    GoTo _004F
    End

_004F:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
