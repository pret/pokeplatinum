    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _001E-.-4
    .long _0031-.-4
    .long _0044-.-4
    .short 0xFD13

_0012:
    SetVar 0x8007, 0
    ScrCmd_014 0x7D2
    End

_001E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0031:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 0xAA1, _00C0
    ScrCmd_02C 2
    ScrCmd_247 0x8000
    ScrCmd_1B9 0x800C, 0x8000
    GoToIfGe 0x800C, 150, _0084
    GoToIfGe 0x800C, 50, _00CB
    GoTo _00D6

_0084:
    ScrCmd_02C 3
    SetVar 0x8004, 3
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00B6
    ScrCmd_014 0x7FC
    SetFlag 0xAA1
    GoTo _00C0

_00B6:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_00C0:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CB:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00D6:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
