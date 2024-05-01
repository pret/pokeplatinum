    .include "macros/scrcmd.inc"

    .data

    .long _001A-.-4
    .long _002D-.-4
    .long _0040-.-4
    .long _009C-.-4
    .long _00AF-.-4
    .long _00C0-.-4
    .short 0xFD13

_001A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_002D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0040:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x105
    ScrCmd_01C 1, _0087
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 0x120
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0092
    ScrCmd_014 0x7FC
    ScrCmd_01E 0x105
    ScrCmd_016 _0087
    End

_0087:
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0092:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_009C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00AF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_072 20, 2
    ScrCmd_016 _00D5

_00D5:
    ScrCmd_040 1, 1, 0, 1, 0x8000
    ScrCmd_042 219, 0
    ScrCmd_042 220, 1
    ScrCmd_042 221, 2
    ScrCmd_042 222, 3
    ScrCmd_043
    ScrCmd_029 0x8008, 0x8000
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0125
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0131
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _013D
    ScrCmd_02C 10
    ScrCmd_016 _028C

_0125:
    ScrCmd_028 0x8001, 30
    ScrCmd_016 _0191

_0131:
    ScrCmd_028 0x8001, 31
    ScrCmd_016 _0191

_013D:
    ScrCmd_028 0x8001, 32
    ScrCmd_016 _0191

_0149:
    ScrCmd_071 0x800C, 200
    ScrCmd_01B

_0153:
    ScrCmd_071 0x800C, 0x12C
    ScrCmd_01B

_015D:
    ScrCmd_071 0x800C, 0x15E
    ScrCmd_01B

_0167:
    ScrCmd_334 35, 200
    ScrCmd_070 200
    ScrCmd_01B

_0175:
    ScrCmd_334 35, 0x12C
    ScrCmd_070 0x12C
    ScrCmd_01B

_0183:
    ScrCmd_334 35, 0x15E
    ScrCmd_070 0x15E
    ScrCmd_01B

_0191:
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _0149
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _0153
    ScrCmd_011 0x8000, 2
    ScrCmd_01D 1, _015D
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0277
    ScrCmd_07D 0x8001, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0280
    ScrCmd_011 0x8000, 0
    ScrCmd_01D 1, _0167
    ScrCmd_011 0x8000, 1
    ScrCmd_01D 1, _0175
    ScrCmd_011 0x8000, 2
    ScrCmd_01D 1, _0183
    ScrCmd_074
    ScrCmd_0D1 0, 0x8001
    ScrCmd_049 0x617
    ScrCmd_0D1 0, 0x8001
    ScrCmd_02C 7
    ScrCmd_029 0x8004, 0x8001
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_1B7 0x800C, 64
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 5, _026E
    ScrCmd_07D 0x8001, 1, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0280
    ScrCmd_049 0x617
    ScrCmd_0D1 0, 0x8001
    ScrCmd_02C 8
    ScrCmd_029 0x8004, 0x8001
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_016 _026E

_026E:
    ScrCmd_02C 6
    ScrCmd_016 _00D5

_0277:
    ScrCmd_02C 9
    ScrCmd_016 _028C

_0280:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_028C:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

    .byte 0
    .byte 0
