    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _006E-.-4
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 124
    ScrCmd_01C 1, _0054
    ScrCmd_0D1 0, 238
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 238
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0064
    ScrCmd_01E 124
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_0054:
    ScrCmd_0D1 0, 238
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
    ScrCmd_04B 0x5DC
    ScrCmd_04C 54, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
