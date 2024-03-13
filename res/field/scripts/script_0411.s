    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _00AB-.-4
    .long _004C-.-4
    .long _009D-.-4
    .short 0xFD13

_0012:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0031
    ScrCmd_016 _003E
    ScrCmd_002

_0031:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_003E:
    ScrCmd_01A _00E8
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_004C:
    ScrCmd_0CD 0
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _0086
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _008B
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0090
    ScrCmd_016 _009D
    ScrCmd_002

_0086:
    ScrCmd_02C 18
    ScrCmd_01B

_008B:
    ScrCmd_02C 19
    ScrCmd_01B

_0090:
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_009D:
    ScrCmd_01A _0126
    ScrCmd_034
    ScrCmd_061
    ScrCmd_015
    ScrCmd_002

_00AB:
    ScrCmd_01A _00B5
    ScrCmd_015
    ScrCmd_002

_00B5:
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00D6
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00DF
    ScrCmd_002

_00D6:
    ScrCmd_02C 43
    ScrCmd_016 _00E8

_00DF:
    ScrCmd_02C 44
    ScrCmd_016 _0126

_00E8:
    ScrCmd_020 0x9BA
    ScrCmd_01C 0, _0104
    ScrCmd_1E8 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _0120
_0104:
    ScrCmd_11E 0x8004
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 1
    ScrCmd_123 0, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02D 0x800C
    ScrCmd_030
    ScrCmd_01B

_0120:
    ScrCmd_01E 0x110
    ScrCmd_01B

_0126:
    ScrCmd_121 0x8004
    ScrCmd_14D 0x8005
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 20
    ScrCmd_123 1, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02D 0x800C
    ScrCmd_030
    ScrCmd_01B

    .byte 0
    .byte 0
