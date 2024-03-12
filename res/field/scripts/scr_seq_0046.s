    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 1
    ScrCmd_01C 1, _0026
    ScrCmd_02C 0
    ScrCmd_01E 1
    ScrCmd_016 _0026

_0026:
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0049
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0130
    ScrCmd_002

_0049:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_016 _0054

_0054:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_191
    ScrCmd_193 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8002, 0xFF
    ScrCmd_01C 1, _0130
    ScrCmd_198 0x8002, 0x8001
    ScrCmd_011 0x8001, 0
    ScrCmd_01C 1, _011A
    ScrCmd_1C8 0x800C, 0x8002
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0125
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_1C6 0x8002
    ScrCmd_1C7 0x8001
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x8001, 0xFF
    ScrCmd_01C 1, _0049
    ScrCmd_1CB 0, 0x8002, 0x8001
    ScrCmd_02C 7
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0105
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0049
    ScrCmd_002

_0105:
    ScrCmd_1C9 0x8002, 0x8001
    ScrCmd_02C 8
    ScrCmd_04E 0x48D
    ScrCmd_04F
    ScrCmd_031
    ScrCmd_034
    ScrCmd_002

_011A:
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_016 _0054

_0125:
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_016 _0054

_0130:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
