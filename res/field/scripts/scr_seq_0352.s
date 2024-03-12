    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _00C7-.-4
    .long _00CB-.-4
    .long _013B-.-4
    .long _01D0-.-4
    .long _0230-.-4
    .long _030C-.-4
    .short 0xFD13

_001E:
    ScrCmd_020 186
    ScrCmd_01D 1, _009D
    ScrCmd_020 186
    ScrCmd_01D 0, _0087
    ScrCmd_011 0x4097, 0
    ScrCmd_01D 1, _0071
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0061
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0069
    ScrCmd_002

_0061:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_0069:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_0071:
    ScrCmd_186 5, 46, 50
    ScrCmd_188 5, 14
    ScrCmd_189 5, 0
    ScrCmd_01B

_0087:
    ScrCmd_186 5, 46, 51
    ScrCmd_188 5, 15
    ScrCmd_189 5, 1
    ScrCmd_01B

_009D:
    ScrCmd_186 5, 50, 37
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ScrCmd_186 6, 50, 39
    ScrCmd_188 6, 16
    ScrCmd_189 6, 2
    ScrCmd_01B

_00C7:
    ScrCmd_002
    ScrCmd_002

_00CB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 186
    ScrCmd_01C 1, _0128
    ScrCmd_05E 5, _01C8
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0104
    ScrCmd_016 _0112
    ScrCmd_002

_0104:
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_016 _0120
    ScrCmd_002

_0112:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_016 _0120
    ScrCmd_002

_0120:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0128:
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_013B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 186
    ScrCmd_01C 1, _018B
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0167
    ScrCmd_016 _0175
    ScrCmd_002

_0167:
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_016 _0183
    ScrCmd_002

_0175:
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_016 _0183
    ScrCmd_002

_0183:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_018B:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01A4
    ScrCmd_016 _01B2
    ScrCmd_002

_01A4:
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_016 _01C0
    ScrCmd_002

_01B2:
    ScrCmd_0CD 0
    ScrCmd_02C 16
    ScrCmd_016 _01C0
    ScrCmd_002

_01C0:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01C8:
    .short 35, 1
    .short 0xFE, 0x00

_01D0:
    ScrCmd_060
    ScrCmd_05E 5, _0220
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01F5
    ScrCmd_016 _0203
    ScrCmd_002

_01F5:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_016 _0211
    ScrCmd_002

_0203:
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_016 _0211
    ScrCmd_002

_0211:
    ScrCmd_028 0x4097, 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0220:
    .short 33, 1
    .short 75, 1
    .short 13, 1
    .short 0xFE, 0x00

_0230:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_05E 6, _02F4
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_0E5 0x195, 0
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _02DB
    ScrCmd_02C 10
    ScrCmd_02C 11
    ScrCmd_02C 12
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 7
    ScrCmd_065 8
    ScrCmd_065 0
    ScrCmd_065 1
    ScrCmd_065 2
    ScrCmd_065 3
    ScrCmd_01E 0x98E
    ScrCmd_05E 6, _02FC
    ScrCmd_05E 0xFF, _0304
    ScrCmd_05F
    ScrCmd_187 5, 53, 1, 39, 3
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01E 0x29A
    ScrCmd_01E 186
    ScrCmd_01F 0x1BA
    ScrCmd_028 0x40D3, 1
    ScrCmd_0CE 0
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_02DB:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02F4:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02FC:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0304:
    .short 34, 1
    .short 0xFE, 0x00

_030C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
