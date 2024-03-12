    .include "macros/scrcmd.inc"

    .data

    .long _0031-.-4
    .long _00FC-.-4
    .long _0154-.-4
    .long _021C-.-4
    .long _022F-.-4
    .long _001A-.-4
    .short 0xFD13

_001A:
    ScrCmd_011 0x4094, 2
    ScrCmd_01C 0, _0029
    ScrCmd_002

_0029:
    ScrCmd_028 0x4094, 0
    ScrCmd_002

_0031:
    ScrCmd_060
    ScrCmd_0C8 0
    ScrCmd_020 221
    ScrCmd_01D 0, _007D
    ScrCmd_020 221
    ScrCmd_01D 1, _00B7
    ScrCmd_0CD 0
    ScrCmd_04E 0x481
    ScrCmd_02C 1
    ScrCmd_04F
    ScrCmd_01E 221
    ScrCmd_028 0x4094, 1
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x403F, 0x263
    ScrCmd_161
    ScrCmd_06D 14, 48
    ScrCmd_061
    ScrCmd_002

    .byte 27
    .byte 0

_007D:
    ScrCmd_186 14, 42, 78
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ScrCmd_01F 0x1DA
    ScrCmd_064 14
    ScrCmd_05E 14, _00DC
    ScrCmd_05F
    ScrCmd_05E 0xFF, _00EC
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_01B

_00B7:
    ScrCmd_186 14, 42, 68
    ScrCmd_189 14, 0
    ScrCmd_188 14, 14
    ScrCmd_05E 14, _0144
    ScrCmd_05F
    ScrCmd_02C 3
    ScrCmd_01B

    .balign 4, 0
_00DC:
    .short 12, 8
    .short 0xFE, 0x00

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00EC:
    .short 33, 1
    .short 0xFE, 0x00

    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_00FC:
    ScrCmd_060
    ScrCmd_05E 14, _014C
    ScrCmd_05E 0xFF, _0134
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_028 0x4094, 0
    ScrCmd_162
    ScrCmd_06D 14, 15
    ScrCmd_05E 14, _013C
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0134:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_013C:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0144:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_014C:
    .short 33, 1
    .short 0xFE, 0x00

_0154:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_06D 14, 15
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0177
    ScrCmd_016 _0191
    ScrCmd_002

_0177:
    ScrCmd_05E 14, _01F0
    ScrCmd_05E 0xFF, _01E4
    ScrCmd_05F
    ScrCmd_016 _01AB
    ScrCmd_002

_0191:
    ScrCmd_05E 14, _01FC
    ScrCmd_05E 0xFF, _01E4
    ScrCmd_05F
    ScrCmd_016 _01AB
    ScrCmd_002

_01AB:
    ScrCmd_05E 14, _0204
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 14, _0214
    ScrCmd_05F
    ScrCmd_04B 0x5DC
    ScrCmd_049 0x603
    ScrCmd_065 14
    ScrCmd_04B 0x603
    ScrCmd_028 0x4094, 2
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01E4:
    .short 14, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 12, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01FC:
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0204:
    .short 32, 1
    .short 63, 2
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0214:
    .short 12, 1
    .short 0xFE, 0x00

_021C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_022F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
