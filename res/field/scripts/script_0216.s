    .include "macros/scrcmd.inc"

    .data

    .long _0024-.-4
    .long _008A-.-4
    .long _00CF-.-4
    .long _0150-.-4
    .long _01A8-.-4
    .long _01BF-.-4
    .long _0022-.-4
    .long _0201-.-4
    .short 0xFD13

_0022:
    ScrCmd_002

_0024:
    ScrCmd_011 0x40CF, 2
    ScrCmd_01D 1, _0082
    ScrCmd_020 0x10F
    ScrCmd_01D 1, _00BB
    ScrCmd_020 0x10F
    ScrCmd_01D 0, _00C5
    ScrCmd_011 0x4089, 2
    ScrCmd_01C 0, _007C
    ScrCmd_020 0xAA8
    ScrCmd_01C 1, _007C
    ScrCmd_234 0x4000
    ScrCmd_011 0x4000, 5
    ScrCmd_01C 5, _007C
    ScrCmd_016 _0076

_0076:
    ScrCmd_01F 0x20B
    ScrCmd_002

_007C:
    ScrCmd_01E 0x20B
    ScrCmd_002

_0082:
    ScrCmd_028 0x40CF, 3
    ScrCmd_01B

_008A:
    ScrCmd_020 0x10F
    ScrCmd_01D 1, _00BB
    ScrCmd_020 0x10F
    ScrCmd_01D 0, _00C5
    ScrCmd_020 142
    ScrCmd_01C 1, _00AD
    ScrCmd_002

_00AD:
    ScrCmd_01E 0x20B
    ScrCmd_065 4
    ScrCmd_01F 142
    ScrCmd_002

_00BB:
    ScrCmd_18B 1, 243, 0x28A
    ScrCmd_01B

_00C5:
    ScrCmd_18A 0, 243, 0x28A
    ScrCmd_01B

_00CF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_0E5 0x34B, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0133
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _013C
    ScrCmd_05F
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_02C 4
    ScrCmd_065 0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0133:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_013C:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0144:
    .short 12, 1
    .short 69, 1
    .short 0xFE, 0x00

_0150:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 159
    ScrCmd_01C 1, _016C
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_016C:
    ScrCmd_0D1 0, 0x1B6
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01A2
    ScrCmd_01E 0x10F
    ScrCmd_01A _00BB
    ScrCmd_18A 0, 243, 0x28E
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01A2:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01A8:
    ScrCmd_036 9, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_01BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04C 0x1A9, 0
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_01E 142
    ScrCmd_2BD 0x1A9, 15
    ScrCmd_01F 142
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01FB
    ScrCmd_01E 0xAA8
    ScrCmd_061
    ScrCmd_002

_01FB:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_0201:
    ScrCmd_060
    ScrCmd_05E 6, _02D8
    ScrCmd_05E 0xFF, _02AC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _02BC
    ScrCmd_05E 6, _02EC
    ScrCmd_05F
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 6, _0300
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_003 120, 0x800C
    ScrCmd_168 7, 20, 19, 14, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 6, _0310
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_05E 6, _031C
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 0xFF, _02C8
    ScrCmd_05E 6, _0324
    ScrCmd_05F
    ScrCmd_065 6
    ScrCmd_028 0x411E, 2
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02AC:
    .short 63, 5
    .short 62, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02BC:
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C8:
    .short 63, 1
    .short 34, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02D8:
    .short 75, 1
    .short 63, 1
    .short 16, 4
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02EC:
    .short 63, 1
    .short 62, 1
    .short 15, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0300:
    .short 12, 1
    .short 69, 1
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0310:
    .short 70, 1
    .short 17, 1
    .short 0xFE, 0x00

    .balign 4, 0
_031C:
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0324:
    .short 18, 1
    .short 17, 1
    .short 17, 6
    .short 18, 9
    .short 0xFE, 0x00
