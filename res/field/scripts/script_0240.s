    .include "macros/scrcmd.inc"

    .data

    .long _0077-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_01A _0012
    End

_0012:
    ScrCmd_166 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0075
    ScrCmd_22D 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0075
    ScrCmd_07E 0x1C7, 1, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0075
    ScrCmd_28B 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0075
    ScrCmd_020 0x11E
    ScrCmd_01C 1, _0075
    ScrCmd_028 0x4118, 1
    ScrCmd_016 _0075
    End

_0075:
    ScrCmd_01B

_0077:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_011 0x40C5, 1
    ScrCmd_01C 4, _00F4
    ScrCmd_020 209
    ScrCmd_01C 1, _00F4
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0101
    ScrCmd_04C 0x1E4, 0
    ScrCmd_02C 1
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_2BD 0x1E4, 70
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00E8
    ScrCmd_028 0x40C5, 1
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _00EE
    ScrCmd_061
    End

_00E8:
    ScrCmd_0EB
    ScrCmd_061
    End

_00EE:
    ScrCmd_01E 209
    ScrCmd_01B

_00F4:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_016 _0101
    End

_0101:
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
