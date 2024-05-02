    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _005D-.-4
    .long _007C-.-4
    .long _00A5-.-4
    .long _00B6-.-4
    .short 0xFD13

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 130
    GoToIf 1, _0052
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1C2
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    SetFlag 130
    ScrCmd_028 0x4114, 1
    ScrCmd_14C 9
    GoTo _0052
    End

_0052:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_005D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_007C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 129
    GoToIf 1, _009A
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009A:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00B6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
