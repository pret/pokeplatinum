    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _006E-.-4
    .long _00A9-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAAA
    ScrCmd_01C 1, _0059
    ScrCmd_02C 0
    ScrCmd_1B7 0x8004, 5
    ScrCmd_026 0x8004, 149
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0064
    SetFlag 0xAAA
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0059:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0064:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_006E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 128
    ScrCmd_01C 1, _009E
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0x1C0
    ScrCmd_028 0x8005, 1
    SetFlag 128
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_009E:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_257
    ScrCmd_061
    End

    .byte 0
