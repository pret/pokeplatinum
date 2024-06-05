    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoToIfSet 144, _00B0
    GoToIfGe 0x4095, 1, _0082
    GoToIfSet 110, _0090
    GoToIfSet 234, _009E
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _005C
    GoToIfEq 0x800C, 1, _006B
    End

_005C:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    GoTo _007A

_006B:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 1
    GoTo _007A

_007A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0082:
    ScrCmd_0CE 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0090:
    ScrCmd_0CE 1
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009E:
    SetFlag 110
    ScrCmd_0CE 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B0:
    ScrCmd_0CE 1
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
