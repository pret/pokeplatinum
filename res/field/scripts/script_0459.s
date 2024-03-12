    .include "macros/scrcmd.inc"

    .data

    .long _0022-.-4
    .long _0078-.-4
    .long _0422-.-4
    .long _03FC-.-4
    .long _040F-.-4
    .long _0435-.-4
    .long _044C-.-4
    .long _0463-.-4
    .short 0xFD13

_0022:
    ScrCmd_020 0x104
    ScrCmd_01C 0, _002F
    ScrCmd_002

_002F:
    ScrCmd_15B 3, 0x4000
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0044
    ScrCmd_002

_0044:
    ScrCmd_020 0x103
    ScrCmd_01C 1, _0051
    ScrCmd_002

_0051:
    ScrCmd_020 0x118
    ScrCmd_01D 0, _0062
    ScrCmd_01F 0x21A
    ScrCmd_002

_0062:
    ScrCmd_186 30, 0x28E, 0x32C
    ScrCmd_189 30, 3
    ScrCmd_188 30, 17
    ScrCmd_01B

_0078:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x118
    ScrCmd_01C 1, _0133
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_068
    ScrCmd_05E 30, _0388
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_1BD 0x8004
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _00F1
    ScrCmd_011 0x8004, 3
    ScrCmd_01C 1, _00DF
    ScrCmd_016 _00C5
    ScrCmd_002

_00C5:
    ScrCmd_05E 30, _0390
    ScrCmd_05E 0xFF, _03F0
    ScrCmd_05F
    ScrCmd_016 _010B
    ScrCmd_002

_00DF:
    ScrCmd_05E 30, _0390
    ScrCmd_05F
    ScrCmd_016 _010B
    ScrCmd_002

_00F1:
    ScrCmd_05E 30, _0398
    ScrCmd_05E 0xFF, _03F0
    ScrCmd_05F
    ScrCmd_016 _010B
    ScrCmd_002

_010B:
    ScrCmd_01E 0x118
    ScrCmd_065 30
    ScrCmd_186 30, 0x2AB, 0x341
    ScrCmd_189 30, 3
    ScrCmd_188 30, 17
    ScrCmd_01F 0x21A
    ScrCmd_064 30
    ScrCmd_061
    ScrCmd_002

_0133:
    ScrCmd_1BD 0x8004
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_068
    ScrCmd_05E 30, _0388
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_1BD 0x8004
    ScrCmd_011 0x8004, 2
    ScrCmd_01C 1, _0180
    ScrCmd_016 _0166
    ScrCmd_002

_0166:
    ScrCmd_05E 0xFF, _03C0
    ScrCmd_05E 30, _03A4
    ScrCmd_05F
    ScrCmd_016 _019A
    ScrCmd_002

_0180:
    ScrCmd_05E 0xFF, _03C0
    ScrCmd_05E 30, _03B4
    ScrCmd_05F
    ScrCmd_016 _019A
    ScrCmd_002

_019A:
    ScrCmd_065 30
    ScrCmd_01E 0x104
    ScrCmd_01F 0x1E8
    ScrCmd_064 33
    ScrCmd_014 0x807
    ScrCmd_315 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _0261
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _0267
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _027B
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _028F
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _02A3
    ScrCmd_02C 4
    ScrCmd_05E 33, _0348
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _02B7
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _02CB
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _02DF
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _02F3
    ScrCmd_065 33
    ScrCmd_014 0x808
    ScrCmd_315 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _0261
    ScrCmd_01F 0x211
    ScrCmd_01F 0x21B
    ScrCmd_061
    ScrCmd_002

_0261:
    ScrCmd_049 0x639
    ScrCmd_01B

_0267:
    ScrCmd_05E 33, _0318
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    ScrCmd_01B

_027B:
    ScrCmd_05E 33, _0308
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    ScrCmd_01B

_028F:
    ScrCmd_05E 33, _0338
    ScrCmd_05E 0xFF, _03CC
    ScrCmd_05F
    ScrCmd_01B

_02A3:
    ScrCmd_05E 33, _0328
    ScrCmd_05E 0xFF, _03D8
    ScrCmd_05F
    ScrCmd_01B

_02B7:
    ScrCmd_05E 33, _035C
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05F
    ScrCmd_01B

_02CB:
    ScrCmd_05E 33, _0350
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05F
    ScrCmd_01B

_02DF:
    ScrCmd_05E 33, _037C
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05F
    ScrCmd_01B

_02F3:
    ScrCmd_05E 33, _0368
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0308:
    .short 19, 10
    .short 16, 2
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0318:
    .short 19, 10
    .short 16, 2
    .short 19, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0328:
    .short 19, 10
    .short 16, 3
    .short 19, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0338:
    .short 19, 10
    .short 16, 1
    .short 19, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0348:
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0350:
    .short 16, 1
    .short 19, 10
    .short 0xFE, 0x00

    .balign 4, 0
_035C:
    .short 16, 1
    .short 19, 10
    .short 0xFE, 0x00

    .balign 4, 0
_0368:
    .short 17, 1
    .short 19, 4
    .short 16, 1
    .short 19, 6
    .short 0xFE, 0x00

    .balign 4, 0
_037C:
    .short 16, 2
    .short 19, 10
    .short 0xFE, 0x00

    .balign 4, 0
_0388:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0390:
    .short 19, 10
    .short 0xFE, 0x00

    .balign 4, 0
_0398:
    .short 17, 2
    .short 19, 9
    .short 0xFE, 0x00

    .balign 4, 0
_03A4:
    .short 19, 4
    .short 16, 1
    .short 19, 6
    .short 0xFE, 0x00

    .balign 4, 0
_03B4:
    .short 16, 1
    .short 19, 10
    .short 0xFE, 0x00

    .balign 4, 0
_03C0:
    .short 63, 1
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03CC:
    .short 62, 10
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03D8:
    .short 62, 11
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03E4:
    .short 62, 3
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03F0:
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

_03FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_040F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0422:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0435:
    ScrCmd_036 10, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_044C:
    ScrCmd_036 11, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0463:
    ScrCmd_036 12, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

    .byte 0
    .byte 0
