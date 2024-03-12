    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _001C-.-4
    .long _007C-.-4
    .long _0108-.-4
    .long _02D5-.-4
    .short 0xFD13

_0016:
    ScrCmd_01E 0x9E7
    ScrCmd_002

_001C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0xAA0
    ScrCmd_01C 1, _0067
    ScrCmd_02C 0
    ScrCmd_1B7 0x8004, 26
    ScrCmd_026 0x8004, 149
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0072
    ScrCmd_01E 0xAA0
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0067:
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0072:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_007C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _00ED
    ScrCmd_134 7, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00FD
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00C7
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _00E2
    ScrCmd_002

_00C7:
    ScrCmd_02C 3
    ScrCmd_028 0x4000, 1
    ScrCmd_028 0x8004, 7
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00E2:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00ED:
    ScrCmd_0D7 0, 7
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00FD:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0108:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_072 20, 2
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 223, 0
    ScrCmd_042 224, 1
    ScrCmd_042 225, 2
    ScrCmd_042 226, 3
    ScrCmd_042 227, 4
    ScrCmd_043
    ScrCmd_029 0x8000, 0x800C
    ScrCmd_029 0x8008, 0x8000
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0245
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0251
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _025D
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0269
    ScrCmd_02C 9
    ScrCmd_016 _0229

_0180:
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _0275
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _027F
    ScrCmd_011 0x8000, 2
    ScrCmd_01D 1, _0289
    ScrCmd_011 0x8000, 3
    ScrCmd_01D 1, _0293
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _023C
    ScrCmd_07D 0x8001, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0233
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _029D
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _02AB
    ScrCmd_011 0x8000, 2
    ScrCmd_01D 1, _02B9
    ScrCmd_011 0x8000, 3
    ScrCmd_01D 1, _02C7
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_07B 0x8001, 1, 0x800C
    ScrCmd_0D1 0, 0x8001
    ScrCmd_02C 10
    ScrCmd_02C 8
    ScrCmd_016 _0229

_0229:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    ScrCmd_002

_0233:
    ScrCmd_02C 11
    ScrCmd_016 _0229

_023C:
    ScrCmd_02C 12
    ScrCmd_016 _0229

_0245:
    ScrCmd_028 0x8001, 95
    ScrCmd_016 _0180

_0251:
    ScrCmd_028 0x8001, 96
    ScrCmd_016 _0180

_025D:
    ScrCmd_028 0x8001, 97
    ScrCmd_016 _0180

_0269:
    ScrCmd_028 0x8001, 98
    ScrCmd_016 _0180

_0275:
    ScrCmd_071 0x800C, 200
    ScrCmd_01B

_027F:
    ScrCmd_071 0x800C, 200
    ScrCmd_01B

_0289:
    ScrCmd_071 0x800C, 200
    ScrCmd_01B

_0293:
    ScrCmd_071 0x800C, 200
    ScrCmd_01B

_029D:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    ScrCmd_01B

_02AB:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    ScrCmd_01B

_02B9:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    ScrCmd_01B

_02C7:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    ScrCmd_01B

_02D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_016 _02E8
    ScrCmd_002

_02E8:
    ScrCmd_02C 14
    ScrCmd_041 30, 7, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 19, 0
    ScrCmd_042 20, 1
    ScrCmd_042 21, 2
    ScrCmd_042 22, 3
    ScrCmd_042 23, 4
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _035B
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0366
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0371
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _037C
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _0387
    ScrCmd_016 _0387
    ScrCmd_002

_035B:
    ScrCmd_02C 15
    ScrCmd_016 _02E8
    ScrCmd_002

_0366:
    ScrCmd_02C 16
    ScrCmd_016 _02E8
    ScrCmd_002

_0371:
    ScrCmd_02C 17
    ScrCmd_016 _02E8
    ScrCmd_002

_037C:
    ScrCmd_02C 18
    ScrCmd_016 _02E8
    ScrCmd_002

_0387:
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
