    .include "macros/scrcmd.inc"

    .data

    .long _003B-.-4
    .long _0056-.-4
    .long _0012-.-4
    .long _0056-.-4
    .short 0xFD13

_0012:
    ScrCmd_28B 2, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0035
    ScrCmd_020 0x11E
    ScrCmd_01C 1, _0035
    ScrCmd_01F 0x24E
    ScrCmd_002

_0035:
    ScrCmd_01E 0x24E
    ScrCmd_002

_003B:
    ScrCmd_020 142
    ScrCmd_01C 1, _0048
    ScrCmd_002

_0048:
    ScrCmd_01E 0x24E
    ScrCmd_065 0
    ScrCmd_01F 142
    ScrCmd_002

_0056:
    ScrCmd_060
    ScrCmd_028 0x4118, 0
    ScrCmd_01A _00E9
    ScrCmd_01A _0104
    ScrCmd_04C 0x1ED, 0
    ScrCmd_04D
    ScrCmd_01A _016F
    ScrCmd_04C 0x1ED, 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01E 142
    ScrCmd_2BD 0x1ED, 80
    ScrCmd_01F 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00DF
    ScrCmd_2BC 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00D0
    ScrCmd_011 0x4056, 0
    ScrCmd_01D 1, _00C8
    ScrCmd_01E 0x11E
    ScrCmd_061
    ScrCmd_002

_00C8:
    ScrCmd_028 0x4056, 1
    ScrCmd_01B

_00D0:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01F 0x24E
    ScrCmd_061
    ScrCmd_002

_00DF:
    ScrCmd_01F 0x24E
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_00E9:
    ScrCmd_05E 0xFF, _00F8
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_00F8:
    .short 75, 1
    .short 65, 1
    .short 0xFE, 0x00

_0104:
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_029 0x8008, 0x8004
    ScrCmd_011 0x8008, 30
    ScrCmd_01C 1, _0139
    ScrCmd_011 0x8008, 31
    ScrCmd_01C 1, _014B
    ScrCmd_011 0x8008, 32
    ScrCmd_01C 1, _015D
_0137:
    ScrCmd_01B

_0139:
    ScrCmd_05E 0xFF, _017C
    ScrCmd_05F
    ScrCmd_016 _0137
    ScrCmd_002

_014B:
    ScrCmd_05E 0xFF, _018C
    ScrCmd_05F
    ScrCmd_016 _0137
    ScrCmd_002

_015D:
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    ScrCmd_016 _0137
    ScrCmd_002

_016F:
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_017C:
    .short 12, 4
    .short 15, 1
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_018C:
    .short 12, 4
    .short 0xFE, 0x00

    .balign 4, 0
_0194:
    .short 12, 4
    .short 14, 1
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01A4:
    .short 12, 2
    .short 0xFE, 0x00
