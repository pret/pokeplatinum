    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0021-.-4
    .long _0034-.-4
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
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0034:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _006F
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _006F
    ScrCmd_02C 4
    GoTo _007A
    End

_006F:
    ScrCmd_02C 5
    GoTo _007A
    End

_007A:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
