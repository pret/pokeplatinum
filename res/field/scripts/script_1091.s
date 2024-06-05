    .include "macros/scrcmd.inc"

    .data

    .long _001C-.-4
    .long _0056-.-4
    .long _00A1-.-4
    .long _00B4-.-4
    .long _001A-.-4
    .long _00C5-.-4
    .short 0xFD13

_001A:
    End

_001C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0043
    ScrCmd_02C 1
    GoTo _004E
    End

_0043:
    ScrCmd_02C 2
    GoTo _004E
    End

_004E:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0056:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0x964, _007F
    GoToIfSet 0x9B8, _008E
    ScrCmd_02C 3
    GoTo _0099
    End

_007F:
    SetFlag 0x145
    ScrCmd_02C 5
    GoTo _0099
    End

_008E:
    ScrCmd_02C 4
    GoTo _0099
    End

_0099:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C5:
    ScrCmd_0CD 0
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
