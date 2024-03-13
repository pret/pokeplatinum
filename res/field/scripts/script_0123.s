    .include "macros/scrcmd.inc"

    .data

    .long _005E-.-4
    .long _00B2-.-4
    .long _00C5-.-4
    .long _00D8-.-4
    .long _00EB-.-4
    .long _00FE-.-4
    .long _01D2-.-4
    .long _01E5-.-4
    .long _0204-.-4
    .long _012F-.-4
    .long _01AC-.-4
    .long _01BF-.-4
    .long _03E4-.-4
    .long _03FB-.-4
    .long _0410-.-4
    .long _0427-.-4
    .long _043E-.-4
    .long _04C8-.-4
    .long _05E0-.-4
    .long _09A8-.-4
    .long _07F8-.-4
    .long _0B90-.-4
    .long _0BF0-.-4
    .short 0xFD13

_005E:
    ScrCmd_028 0x40C7, 0
    ScrCmd_01E 0x17E
    ScrCmd_011 0x407C, 5
    ScrCmd_01D 1, _074D
    ScrCmd_011 0x407C, 4
    ScrCmd_01D 1, _0721
    ScrCmd_011 0x407C, 4
    ScrCmd_01D 1, _0737
    ScrCmd_020 0x102
    ScrCmd_01C 1, _009C
    ScrCmd_002

_009C:
    ScrCmd_186 21, 0x27D, 0x32C
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    ScrCmd_002

_00B2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00C5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00EB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_00FE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_15B 3, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0124
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0124:
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_012F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x128
    ScrCmd_01C 1, _0189
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01D 1, _0194
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01D 1, _019C
    ScrCmd_011 0x800C, 0x189
    ScrCmd_01D 1, _01A4
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 37
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7DF
    ScrCmd_01E 0x128
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0189:
    ScrCmd_02C 38
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0194:
    ScrCmd_028 0x8004, 93
    ScrCmd_01B

_019C:
    ScrCmd_028 0x8004, 94
    ScrCmd_01B

_01A4:
    ScrCmd_028 0x8004, 92
    ScrCmd_01B

_01AC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 39
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01BF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01D2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01E5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 36
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0204:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_020 0x102
    ScrCmd_01C 1, _0220
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0220:
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_034
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _025A
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _027A
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0292
    ScrCmd_016 _02B2
    ScrCmd_002

_025A:
    ScrCmd_028 0x8007, 2
    ScrCmd_05E 21, _0388
    ScrCmd_05E 0xFF, _02EC
    ScrCmd_05F
    ScrCmd_016 _02D2
    ScrCmd_002

_027A:
    ScrCmd_028 0x8007, 3
    ScrCmd_05E 21, _0398
    ScrCmd_05F
    ScrCmd_016 _02D2
    ScrCmd_002

_0292:
    ScrCmd_028 0x8007, 0
    ScrCmd_05E 21, _0398
    ScrCmd_05E 0xFF, _030C
    ScrCmd_05F
    ScrCmd_016 _02D2
    ScrCmd_002

_02B2:
    ScrCmd_028 0x8007, 1
    ScrCmd_05E 21, _0398
    ScrCmd_05E 0xFF, _0304
    ScrCmd_05F
    ScrCmd_016 _02D2
    ScrCmd_002

_02D2:
    ScrCmd_049 0x603
    ScrCmd_065 21
    ScrCmd_01E 0x103
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02EC:
    .short 33, 1
    .short 35, 1
    .short 0xFE, 0x00

    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0304:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_030C:
    .short 35, 1
    .short 0xFE, 0x00

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 19
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0388:
    .short 17, 1
    .short 19, 2
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0398:
    .short 19, 2
    .short 39, 1
    .short 0xFE, 0x00

    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 2
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 4
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 19
    .byte 0
    .byte 3
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_03E4:
    ScrCmd_036 41, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_03FB:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 42, 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0410:
    ScrCmd_036 43, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_0427:
    ScrCmd_036 44, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_043E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_011 0x407C, 5
    ScrCmd_01C 4, _04AE
    ScrCmd_011 0x407C, 4
    ScrCmd_01C 4, _0471
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_016 _04A6
    ScrCmd_002

_0471:
    ScrCmd_1BD 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0498
    ScrCmd_0CE 0
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_05E 26, _04C0
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

_0498:
    ScrCmd_0CE 0
    ScrCmd_02C 15
    ScrCmd_016 _04A6
    ScrCmd_002

_04A6:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04AE:
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_04C0:
    .short 33, 1
    .short 0xFE, 0x00

_04C8:
    ScrCmd_060
    ScrCmd_01F 0x1A9
    ScrCmd_186 26, 0x253, 0x333
    ScrCmd_188 26, 16
    ScrCmd_189 26, 2
    ScrCmd_064 26
    ScrCmd_05E 26, _05B0
    ScrCmd_05F
    ScrCmd_014 0x7FA
    ScrCmd_05E 26, _05C0
    ScrCmd_05E 0xFF, _05A4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 26, _05CC
    ScrCmd_05F
    ScrCmd_0DE 0x800C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _054B
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _0557
    ScrCmd_016 _053F

_053F:
    ScrCmd_0E5 0x1D9, 0
    ScrCmd_016 _0563

_054B:
    ScrCmd_0E5 0x1DA, 0
    ScrCmd_016 _0563

_0557:
    ScrCmd_0E5 0x1DB, 0
    ScrCmd_016 _0563

_0563:
    ScrCmd_0EC 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0597
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 26, _05D4
    ScrCmd_05F
    ScrCmd_065 26
    ScrCmd_028 0x407C, 2
    ScrCmd_061
    ScrCmd_002

_0597:
    ScrCmd_01E 0x1A9
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_05A4:
    .short 62, 13
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05B0:
    .short 17, 9
    .short 38, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05C0:
    .short 18, 4
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05CC:
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05D4:
    .short 19, 5
    .short 16, 9
    .short 0xFE, 0x00

_05E0:
    ScrCmd_060
    ScrCmd_01F 0x1A9
    ScrCmd_186 26, 0x253, 0x333
    ScrCmd_188 26, 15
    ScrCmd_189 26, 1
    ScrCmd_064 26
    ScrCmd_062 26
    ScrCmd_05E 26, _0798
    ScrCmd_05E 0xFF, _07CC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_168 18, 25, 13, 27, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_05E 0xFF, _07D8
    ScrCmd_05F
    ScrCmd_01F 0x1FB
    ScrCmd_186 27, 0x24D, 0x33B
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    ScrCmd_064 27
    ScrCmd_062 27
    ScrCmd_05E 27, _0764
    ScrCmd_05F
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01E 0x20F
    ScrCmd_05E 27, _076C
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_05E 26, _07A4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 9
    ScrCmd_05E 27, _077C
    ScrCmd_05F
    ScrCmd_02C 10
    ScrCmd_05E 27, _0784
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_0CE 0
    ScrCmd_02C 12
    ScrCmd_05E 27, _077C
    ScrCmd_05F
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_05E 0xFF, _07EC
    ScrCmd_05E 26, _07AC
    ScrCmd_05E 27, _078C
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_05E 26, _07C0
    ScrCmd_05F
    ScrCmd_01A _0737
    ScrCmd_01F 0x1FB
    ScrCmd_187 27, 0x263, 0, 0x32A, 0
    ScrCmd_01A _0721
    ScrCmd_01F 0x1A9
    ScrCmd_187 26, 0x260, 0, 0x32E, 1
    ScrCmd_028 0x407C, 4
    ScrCmd_061
    ScrCmd_002

_0721:
    ScrCmd_186 26, 0x260, 0x32E
    ScrCmd_189 26, 1
    ScrCmd_188 26, 15
    ScrCmd_01B

_0737:
    ScrCmd_186 27, 0x263, 0x32A
    ScrCmd_189 27, 0
    ScrCmd_188 27, 14
    ScrCmd_01B

_074D:
    ScrCmd_186 26, 0x263, 0x32A
    ScrCmd_189 26, 0
    ScrCmd_188 26, 14
    ScrCmd_01B

    .balign 4, 0
_0764:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_076C:
    .short 35, 1
    .short 63, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_077C:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0784:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_078C:
    .short 19, 6
    .short 16, 8
    .short 0xFE, 0x00

    .balign 4, 0
_0798:
    .short 17, 9
    .short 18, 5
    .short 0xFE, 0x00

    .balign 4, 0
_07A4:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07AC:
    .short 71, 1
    .short 17, 1
    .short 72, 1
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07C0:
    .short 19, 5
    .short 16, 8
    .short 0xFE, 0x00

    .balign 4, 0
_07CC:
    .short 62, 11
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07D8:
    .short 32, 1
    .short 63, 2
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07EC:
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

_07F8:
    ScrCmd_060
    ScrCmd_01A _086F
    ScrCmd_05E 27, _0B6C
    ScrCmd_05E 26, _0B08
    ScrCmd_05E 0xFF, _0AAC
    ScrCmd_05E 21, _0B44
    ScrCmd_05F
    ScrCmd_01A _08D9
    ScrCmd_05E 27, _0B74
    ScrCmd_05E 26, _0B3C
    ScrCmd_05E 0xFF, _0AC8
    ScrCmd_05E 21, _0B54
    ScrCmd_05F
    ScrCmd_01A _08FA
    ScrCmd_02C 23
    ScrCmd_05E 27, _0B80
    ScrCmd_05E 0xFF, _0AD4
    ScrCmd_05F
    ScrCmd_01A _091C
    ScrCmd_061
    ScrCmd_002

_086F:
    ScrCmd_05E 26, _0AE4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 0xFF, _0AA4
    ScrCmd_05E 27, _0B5C
    ScrCmd_05F
    ScrCmd_02C 18
    ScrCmd_05E 26, _0AF0
    ScrCmd_05F
    ScrCmd_049 0x65B
    ScrCmd_003 4, 0x800C
    ScrCmd_02C 19
    ScrCmd_04B 0x5DC
    ScrCmd_29F 1
    ScrCmd_034
    ScrCmd_01F 0x20C
    ScrCmd_186 21, 0x262, 0x328
    ScrCmd_189 21, 3
    ScrCmd_188 21, 17
    ScrCmd_064 21
    ScrCmd_062 21
    ScrCmd_01B

_08D9:
    ScrCmd_02C 20
    ScrCmd_05E 27, _0B6C
    ScrCmd_05F
    ScrCmd_02C 21
    ScrCmd_05E 21, _0B4C
    ScrCmd_05F
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_01B

_08FA:
    ScrCmd_065 21
    ScrCmd_01F 0x20C
    ScrCmd_186 21, 0x27D, 0x32C
    ScrCmd_188 21, 17
    ScrCmd_189 21, 3
    ScrCmd_064 21
    ScrCmd_01B

_091C:
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_05E 27, _0B88
    ScrCmd_05E 0xFF, _099C
    ScrCmd_05F
    ScrCmd_065 27
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x261
    ScrCmd_01D 1, _0981
    ScrCmd_011 0x8004, 0x263
    ScrCmd_01D 1, _098D
    ScrCmd_011 0x8004, 0x264
    ScrCmd_01D 1, _0981
    ScrCmd_01E 0x20D
    ScrCmd_028 0x407C, 5
    ScrCmd_01E 0x102
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

_0981:
    ScrCmd_05E 26, _0B1C
    ScrCmd_05F
    ScrCmd_01B

_098D:
    ScrCmd_05E 26, _0B28
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_099C:
    .short 63, 1
    .short 0, 1
    .short 0xFE, 0x00

_09A8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_01A _086F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x263
    ScrCmd_01D 1, _0A31
    ScrCmd_011 0x8004, 0x264
    ScrCmd_01D 1, _0A55
    ScrCmd_01A _08D9
    ScrCmd_05E 0xFF, _0AC8
    ScrCmd_05E 27, _0B74
    ScrCmd_05E 26, _0B3C
    ScrCmd_05E 21, _0B54
    ScrCmd_05F
    ScrCmd_01A _08FA
    ScrCmd_02C 23
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x263
    ScrCmd_01D 1, _0A79
    ScrCmd_011 0x8004, 0x264
    ScrCmd_01D 1, _0A8D
    ScrCmd_01A _091C
    ScrCmd_061
    ScrCmd_002

_0A31:
    ScrCmd_05E 27, _0B6C
    ScrCmd_05E 0xFF, _0ABC
    ScrCmd_05E 26, _0B10
    ScrCmd_05E 21, _0B44
    ScrCmd_05F
    ScrCmd_01B

_0A55:
    ScrCmd_05E 27, _0B6C
    ScrCmd_05E 0xFF, _0ABC
    ScrCmd_05E 26, _0B10
    ScrCmd_05E 21, _0B44
    ScrCmd_05F
    ScrCmd_01B

_0A79:
    ScrCmd_05E 27, _0B80
    ScrCmd_05E 0xFF, _0AD4
    ScrCmd_05F
    ScrCmd_01B

_0A8D:
    ScrCmd_05E 27, _0B80
    ScrCmd_05E 0xFF, _0ADC
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0AA4:
    .short 0, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0AAC:
    .short 17, 1
    .short 19, 1
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0ABC:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0AC8:
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0AD4:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0ADC:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0AE4:
    .short 16, 3
    .short 19, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0AF0:
    .short 36, 1
    .short 0xFE, 0x00

    .byte 17
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 36
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B08:
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B10:
    .short 63, 1
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B1C:
    .short 19, 2
    .short 16, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B28:
    .short 19, 1
    .short 16, 1
    .short 19, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B3C:
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B44:
    .short 17, 4
    .short 0xFE, 0x00

    .balign 4, 0
_0B4C:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B54:
    .short 19, 12
    .short 0xFE, 0x00

    .balign 4, 0
_0B5C:
    .short 32, 1
    .short 0xFE, 0x00

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0B6C:
    .short 37, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B74:
    .short 63, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B80:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0B88:
    .short 12, 2
    .short 0xFE, 0x00

_0B90:
    ScrCmd_060
    ScrCmd_05E 0xFF, _0BC8
    ScrCmd_05E 26, _0BD8
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 26
    ScrCmd_034
    ScrCmd_05E 0xFF, _0BD0
    ScrCmd_05E 26, _0BE0
    ScrCmd_05F
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0BC8:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0BD0:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0BD8:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0BE0:
    .short 14, 1
    .short 15, 1
    .short 32, 1
    .short 0xFE, 0x00

_0BF0:
    ScrCmd_060
    ScrCmd_020 0x156
    ScrCmd_01C 1, _0C1E
    ScrCmd_028 0x40C7, 1
    ScrCmd_1B7 0x800C, 100
    ScrCmd_011 0x800C, 90
    ScrCmd_01C 4, _0C22
    ScrCmd_016 _0C1E
    ScrCmd_002

_0C1E:
    ScrCmd_061
    ScrCmd_002

_0C22:
    ScrCmd_01F 0x29D
    ScrCmd_064 28
    ScrCmd_05E 0xFF, _0C78
    ScrCmd_05E 28, _0C64
    ScrCmd_05F
    ScrCmd_04C 0x1C5, 0
    ScrCmd_04D
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 28, _0C70
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 28
    ScrCmd_04B 0x603
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0C64:
    .short 12, 7
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0C70:
    .short 12, 5
    .short 0xFE, 0x00

    .balign 4, 0
_0C78:
    .short 33, 1
    .short 0xFE, 0x00
