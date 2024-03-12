    .include "macros/scrcmd.inc"

    .data

    .long _004F-.-4
    .long _0062-.-4
    .long _0093-.-4
    .long _00A6-.-4
    .long _00B9-.-4
    .long _00CC-.-4
    .long _0123-.-4
    .long _013A-.-4
    .long _0151-.-4
    .long _0034-.-4
    .long _0032-.-4
    .long _0168-.-4
    .short 0xFD13

_0032:
    ScrCmd_002

_0034:
    ScrCmd_1BF 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 5, _0047
    ScrCmd_002

_0047:
    ScrCmd_189 3, 3
    ScrCmd_002

_004F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0062:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 4, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0088
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0088:
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0093:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00A6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00B9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00CC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_134 9, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0118
    ScrCmd_11E 0x800C
    ScrCmd_011 0x800C, 50
    ScrCmd_01C 0, _010D
    ScrCmd_02C 10
    ScrCmd_028 0x8004, 9
    ScrCmd_014 0x7D9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_010D:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0118:
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0123:
    ScrCmd_036 12, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_013A:
    ScrCmd_036 13, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0151:
    ScrCmd_036 14, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0168:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0218
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_186 18, 0x8004, 0x295
    ScrCmd_01F 0x21E
    ScrCmd_064 18
    ScrCmd_062 18
    ScrCmd_05E 0xFF, _0228
    ScrCmd_05E 18, _01E8
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 18, _01F0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ScrCmd_05E 18, _0208
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 18, _0210
    ScrCmd_05F
    ScrCmd_065 18
    ScrCmd_014 0x7FB
    ScrCmd_028 0x4073, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01E8:
    .short 17, 7
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 38, 1
    .short 63, 1
    .short 39, 1
    .short 63, 1
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0208:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0210:
    .short 16, 7
    .short 0xFE, 0x00

    .balign 4, 0
_0218:
    .short 63, 1
    .short 75, 1
    .short 63, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0228:
    .short 0, 1
    .short 0xFE, 0x00
