    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _0078-.-4
    .long _008B-.-4
    .long _009E-.-4
    .long _00B1-.-4
    .short 0xFD13

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_072 20, 2
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_034
    GoToIfEq 0x800C, 0, _003E
    ScrCmd_073
    ScrCmd_061
    End

_003E:
    ScrCmd_071 0x800C, 100
    GoToIfEq 0x800C, 0, _006B
    ScrCmd_070 100
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_073
    ScrCmd_206
    ScrCmd_061
    End

_006B:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0078:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_008B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
