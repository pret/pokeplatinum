    .include "macros/scrcmd.inc"

    .data

    .long _0039-.-4
    .long _0098-.-4
    .long _0155-.-4
    .long _0174-.-4
    .long _0193-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    ScrCmd_238 4, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0033
    ScrCmd_01F 0x210
    ScrCmd_002

_0033:
    ScrCmd_01E 0x210
    ScrCmd_002

_0039:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 141
    ScrCmd_01C 1, _0083
    ScrCmd_02C 0
    ScrCmd_028 0x8004, 0x1C1
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _008E
    ScrCmd_014 0x7FC
    ScrCmd_01E 141
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0083:
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_008E:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0098:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_247 0x8000
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 3
    ScrCmd_1B9 0x800C, 0x8000
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 4, _0108
    ScrCmd_011 0x800C, 200
    ScrCmd_01C 4, _0113
    ScrCmd_011 0x800C, 150
    ScrCmd_01C 4, _011E
    ScrCmd_011 0x800C, 100
    ScrCmd_01C 4, _0129
    ScrCmd_011 0x800C, 50
    ScrCmd_01C 4, _0134
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 4, _013F
    ScrCmd_016 _014A
    ScrCmd_002

_0108:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0113:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_011E:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0129:
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0134:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_013F:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_014A:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0155:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 54, 0
    ScrCmd_02C 11
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0174:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1AB, 0
    ScrCmd_02C 12
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0193:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 13
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0