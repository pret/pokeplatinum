    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0025-.-4
    .short 0xFD13

_000A:
    ScrCmd_020 142
    ScrCmd_01C 1, _0017
    ScrCmd_002

_0017:
    ScrCmd_01E 0x243
    ScrCmd_065 0
    ScrCmd_01F 142
    ScrCmd_002

_0025:
    ScrCmd_060
    ScrCmd_049 0x5DC
    ScrCmd_04B 0x5DC
    ScrCmd_020 0x11A
    ScrCmd_01C 1, _0081
    ScrCmd_26B 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0073
    ScrCmd_01E 0x11A
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_063 0
    ScrCmd_269 0, 8, 90, 3, 0
    ScrCmd_062 0
    ScrCmd_016 _0081
    ScrCmd_002

_0073:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0081:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_04C 0x1E6, 0
    ScrCmd_04D
    ScrCmd_01E 142
    ScrCmd_2BD 0x1E6, 1
    ScrCmd_01F 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00D1
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00C6
    ScrCmd_01E 0x11B
    ScrCmd_061
    ScrCmd_002

_00C6:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00D1:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .byte 0
