    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _00B4-.-4
    .long _0047-.-4
    .long _0174-.-4
    .long _0187-.-4
    .long _019A-.-4
    .long _01AD-.-4
    .long _01C0-.-4
    .long _01EB-.-4
    .long _01FE-.-4
    .long _0215-.-4
    .long _022A-.-4
    .short 0xFD13

_0032:
    ScrCmd_011 0x407F, 1
    ScrCmd_01C 4, _0041
    ScrCmd_002

_0041:
    ScrCmd_01E 0x1F3
    ScrCmd_002

_0047:
    ScrCmd_060
    ScrCmd_05E 6, _009C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0088
    ScrCmd_016 _0072
    ScrCmd_002

_0072:
    ScrCmd_05E 6, _00A4
    ScrCmd_05E 0xFF, _00AC
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_0088:
    ScrCmd_020 0x964
    ScrCmd_01C 0, _0072
    ScrCmd_016 _0111

    .balign 4, 0
_009C:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00A4:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00AC:
    .short 13, 1
    .short 0xFE, 0x00

_00B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00DF
    ScrCmd_016 _00D4

_00D4:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00DF:
    ScrCmd_020 0x964
    ScrCmd_01C 0, _00D4
    ScrCmd_011 0x407F, 0
    ScrCmd_01C 1, _0102
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0102:
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01A _011B
    ScrCmd_061
    ScrCmd_002

_0111:
    ScrCmd_01A _011B
    ScrCmd_061
    ScrCmd_002

_011B:
    ScrCmd_003 30, 0x800C
    ScrCmd_01F 0x1F3
    ScrCmd_064 7
    ScrCmd_05E 7, _016C
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 0xFF, _0164
    ScrCmd_05E 6, _015C
    ScrCmd_05F
    ScrCmd_028 0x407F, 1
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

    .balign 4, 0
_015C:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0164:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_016C:
    .short 12, 7
    .short 0xFE, 0x00

_0174:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0187:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_019A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x407F, 1
    ScrCmd_01C 4, _01E0
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01E0:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01EB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01FE:
    ScrCmd_036 18, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0215:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 19, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_022A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x964
    ScrCmd_01C 0, _0260
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0276
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _026B
    ScrCmd_002

_0260:
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_026B:
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0276:
    ScrCmd_020 0x157
    ScrCmd_01D 0, _02A0
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_01A _035C
    ScrCmd_01A _0376
    ScrCmd_23D 2, 3, 188, 0x26F, 0x1B2
    ScrCmd_061
    ScrCmd_002

_02A0:
    ScrCmd_01F 0x256
    ScrCmd_064 10
    ScrCmd_062 10
    ScrCmd_034
    ScrCmd_05E 10, _0320
    ScrCmd_05F
    ScrCmd_02C 15
    ScrCmd_05E 0xFF, _030C
    ScrCmd_05F
    ScrCmd_034
    ScrCmd_05E 10, _0334
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_05E 10, _033C
    ScrCmd_05F
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 10, _0348
    ScrCmd_05F
    ScrCmd_065 10
    ScrCmd_05E 0xFF, _0318
    ScrCmd_05F
    ScrCmd_01E 0x157
    ScrCmd_01B

    .balign 4, 0
_030C:
    .short 75, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0318:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0320:
    .short 14, 4
    .short 13, 2
    .short 14, 6
    .short 13, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0334:
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_033C:
    .short 14, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0348:
    .short 12, 2
    .short 15, 3
    .short 12, 2
    .short 15, 7
    .short 0xFE, 0x00

_035C:
    ScrCmd_05E 8, _0390
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 8, _039C
    ScrCmd_05F
    ScrCmd_01B

_0376:
    ScrCmd_05E 0xFF, _03A4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0390:
    .short 1, 1
    .short 64, 1
    .short 0xFE, 0x00

    .balign 4, 0
_039C:
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03A4:
    .short 13, 1
    .short 64, 1
    .short 0xFE, 0x00
