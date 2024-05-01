    .include "macros/scrcmd.inc"

    .data

    .long _000E-.-4
    .long _0101-.-4
    .long _0114-.-4
    .short 0xFD13

_000E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAAC
    ScrCmd_01C 1, _00D5
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00EB
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x4000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x4000, 0xFF
    ScrCmd_01C 1, _00EB
    ScrCmd_198 0x4000, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00E0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_049 0x662
    ScrCmd_04B 0x662
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_0D6 0, 0x4000
    ScrCmd_02C 4
    SetFlag 0xAAC
    ScrCmd_1BA 3, 0x4000
    ScrCmd_26C 0x8004
    ScrCmd_011 0x8004, 0xFFFF
    ScrCmd_01C 1, _00F6
    ScrCmd_02C 7
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FF
    GoTo _00F6

_00D5:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00E0:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00EB:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00F6:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0101:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0114:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A1, 0
    ScrCmd_02C 10
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
