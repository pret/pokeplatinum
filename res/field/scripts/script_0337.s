    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    CheckFlag 0x149
    ScrCmd_01C 1, _009C
    CheckFlag 0xAB0
    ScrCmd_01C 1, _009C
    ScrCmd_1B6 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 0, _009C
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0096
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04C 0x1DF, 0
    ScrCmd_04D
    SetFlag 0xAB0
    ScrCmd_124 0x1DF, 20
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00A7
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _008B
    SetFlag 0x149
    ScrCmd_061
    End

_008B:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0096:
    ScrCmd_034
    ScrCmd_061
    End

_009C:
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00A7:
    ScrCmd_0EB
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
