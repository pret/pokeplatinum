    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _026C-.-4
    .long _022C-.-4
    .long _0038-.-4
    .long _0294-.-4
    .long _0304-.-4
    .long _0317-.-4
    .long _032A-.-4
    .long _033D-.-4
    .long _0350-.-4
    .long _0367-.-4
    .long _0378-.-4
    .short 0xFD13

_0032:
    ScrCmd_01E 0x980
    ScrCmd_002

_0038:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _006E
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0063
    ScrCmd_002

_0063:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_006E:
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_0E5 0x1A0, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0191
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00BC
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _00EC
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0114
    ScrCmd_002

_00BC:
    ScrCmd_05E 2, _0198
    ScrCmd_05E 0xFF, _01E0
    ScrCmd_05F
    ScrCmd_01A _013C
    ScrCmd_05E 3, _01B4
    ScrCmd_05E 0xFF, _0204
    ScrCmd_05F
    ScrCmd_016 _0166

_00EC:
    ScrCmd_05E 2, _0198
    ScrCmd_05E 0xFF, _01F0
    ScrCmd_05F
    ScrCmd_01A _013C
    ScrCmd_05E 3, _01C0
    ScrCmd_05F
    ScrCmd_016 _0166

_0114:
    ScrCmd_05E 2, _01A4
    ScrCmd_05E 0xFF, _01FC
    ScrCmd_05F
    ScrCmd_01A _013C
    ScrCmd_05E 3, _01D0
    ScrCmd_05F
    ScrCmd_016 _0166

_013C:
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_186 3, 0x1D2, 0x213
    ScrCmd_189 3, 0
    ScrCmd_188 3, 14
    ScrCmd_01F 0x1AC
    ScrCmd_064 3
    ScrCmd_062 3
    ScrCmd_01B

_0166:
    ScrCmd_02C 5
    ScrCmd_0CD 0
    ScrCmd_0D1 1, 0x1B7
    ScrCmd_04E 0x486
    ScrCmd_02C 6
    ScrCmd_04F
    ScrCmd_07C 0x1B7, 1, 0x800C
    ScrCmd_01E 166
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0191:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0198:
    .short 18, 3
    .short 17, 9
    .short 0xFE, 0x00

    .balign 4, 0
_01A4:
    .short 17, 2
    .short 18, 3
    .short 17, 7
    .short 0xFE, 0x00

    .balign 4, 0
_01B4:
    .short 12, 8
    .short 14, 2
    .short 0xFE, 0x00

    .balign 4, 0
_01C0:
    .short 12, 8
    .short 14, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01D0:
    .short 12, 8
    .short 14, 4
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01E0:
    .short 34, 1
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 63, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01FC:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0204:
    .short 63, 8
    .short 62, 1
    .short 35, 1
    .short 0xFE, 0x00

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 9
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_022C:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0264
    ScrCmd_05E 3, _025C
    ScrCmd_05F
    ScrCmd_01A _024A
    ScrCmd_061
    ScrCmd_002

_024A:
    ScrCmd_028 0x40F1, 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

    .balign 4, 0
_025C:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0264:
    .short 2, 1
    .short 0xFE, 0x00

_026C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 166
    ScrCmd_01C 1, _0289
    ScrCmd_01A _024A
    ScrCmd_061
    ScrCmd_002

_0289:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0294:
    ScrCmd_060
    ScrCmd_05E 0xFF, _02E0
    ScrCmd_05E 4, _02E8
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_05E 4, _02F4
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_05E 4, _02FC
    ScrCmd_05F
    ScrCmd_028 0x4074, 2
    ScrCmd_01E 0x299
    ScrCmd_003 12, 0x800C
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02E0:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 75, 1
    .short 14, 2
    .short 0xFE, 0x00

    .balign 4, 0
_02F4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02FC:
    .short 34, 1
    .short 0xFE, 0x00

_0304:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0317:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_032A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_033D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0350:
    ScrCmd_036 15, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0367:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0378:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
