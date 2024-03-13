    .include "macros/scrcmd.inc"

    .data

    .long _00D8-.-4
    .long _049C-.-4
    .long _04AF-.-4
    .long _04C2-.-4
    .long _04D5-.-4
    .long _04E8-.-4
    .long _050E-.-4
    .long _0521-.-4
    .long _0585-.-4
    .long _059C-.-4
    .long _05B3-.-4
    .long _05CA-.-4
    .long _04FB-.-4
    .long _06F0-.-4
    .long _0066-.-4
    .long _07DC-.-4
    .long _07EF-.-4
    .long _0802-.-4
    .long _081F-.-4
    .long _0864-.-4
    .long _0877-.-4
    .long _088A-.-4
    .long _089D-.-4
    .long _08B0-.-4
    .long _083C-.-4
    .short 0xFD13

_0066:
    ScrCmd_011 0x4081, 1
    ScrCmd_01C 1, _0082
    ScrCmd_011 0x409E, 1
    ScrCmd_01C 4, _0098
    ScrCmd_002

_0082:
    ScrCmd_186 7, 0x28F, 0x1AA
    ScrCmd_188 7, 14
    ScrCmd_189 7, 0
    ScrCmd_002

_0098:
    ScrCmd_01E 0x1D3
    ScrCmd_002

    .byte 52
    .byte 2
    .byte 0
    .byte 64
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 6
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 134
    .byte 1
    .byte 7
    .byte 0
    .byte 146
    .byte 2
    .byte 174
    .byte 1
    .byte 136
    .byte 1
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 137
    .byte 1
    .byte 7
    .byte 0
    .byte 1
    .byte 0
    .byte 31
    .byte 0
    .byte 211
    .byte 1
    .byte 2
    .byte 0

_00D8:
    ScrCmd_060
    ScrCmd_32D
    ScrCmd_05E 7, _0340
    ScrCmd_05F
    ScrCmd_05E 0xFF, _03DC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_014 0x800
    ScrCmd_05E 0xFF, _03E4
    ScrCmd_05E 7, _0354
    ScrCmd_05F
    ScrCmd_014 0x801
    ScrCmd_028 0x4081, 1
    ScrCmd_32E
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02EE
    ScrCmd_01A _014E
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0306
    ScrCmd_01A _0198
    ScrCmd_061
    ScrCmd_002

_014E:
    ScrCmd_0CE 0
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _03F8
    ScrCmd_05E 7, _0370
    ScrCmd_05F
    ScrCmd_05E 25, _0448
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_05E 24, _0458
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_034
    ScrCmd_01A _030C
    ScrCmd_2A0 0x8004, 0x399, 0x39A
    ScrCmd_0EC 0x800C
    ScrCmd_01B

_0198:
    ScrCmd_05E 24, _0460
    ScrCmd_05F
    ScrCmd_02C 9
    ScrCmd_02C 10
    ScrCmd_05E 24, _0468
    ScrCmd_05F
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_065 25
    ScrCmd_065 24
    ScrCmd_065 29
    ScrCmd_065 28
    ScrCmd_065 27
    ScrCmd_065 30
    ScrCmd_065 31
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_05E 7, _0378
    ScrCmd_05E 0xFF, _0400
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 12
    ScrCmd_01F 0x1E3
    ScrCmd_064 26
    ScrCmd_04A 0x5DC
    ScrCmd_049 0x602
    ScrCmd_02B 13
    ScrCmd_05E 26, _03B4
    ScrCmd_05E 7, _0380
    ScrCmd_05E 0xFF, _0408
    ScrCmd_05F
    ScrCmd_05E 26, _03BC
    ScrCmd_05F
    ScrCmd_02C 14
    ScrCmd_034
    ScrCmd_0CE 0
    ScrCmd_02C 15
    ScrCmd_034
    ScrCmd_05E 7, _039C
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 16
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 26, _03D4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 26
    ScrCmd_04B 0x603
    ScrCmd_0CE 0
    ScrCmd_02C 18
    ScrCmd_02C 19
    ScrCmd_02C 20
    ScrCmd_034
    ScrCmd_05E 7, _03A4
    ScrCmd_05E 0xFF, _0428
    ScrCmd_05F
    ScrCmd_065 7
    ScrCmd_05E 8, _0478
    ScrCmd_05E 0xFF, _043C
    ScrCmd_05F
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_05E 8, _0484
    ScrCmd_05E 0xFF, _041C
    ScrCmd_05F
    ScrCmd_065 8
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _02E0
    ScrCmd_028 0x4081, 2
    ScrCmd_01B

_02E0:
    ScrCmd_065 22
    ScrCmd_065 23
    ScrCmd_01E 0x294
    ScrCmd_01B

_02EE:
    ScrCmd_05E 7, _03AC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0306:
    ScrCmd_0EB
    ScrCmd_061
    ScrCmd_002

_030C:
    ScrCmd_0DE 0x800C
    ScrCmd_028 0x8004, 0x39D
    ScrCmd_011 0x800C, 0x186
    ScrCmd_01C 1, _033E
    ScrCmd_028 0x8004, 0x39C
    ScrCmd_011 0x800C, 0x183
    ScrCmd_01C 1, _033E
    ScrCmd_028 0x8004, 0x39B
    ScrCmd_01B

_033E:
    ScrCmd_01B

    .balign 4, 0
_0340:
    .short 34, 1
    .short 75, 1
    .short 0xFE, 0x00

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0354:
    .short 15, 17
    .short 12, 2
    .short 15, 9
    .short 12, 6
    .short 15, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0370:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0378:
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0380:
    .short 0, 1
    .short 71, 1
    .short 17, 2
    .short 72, 1
    .short 0xFE, 0x00

    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_039C:
    .short 16, 2
    .short 0xFE, 0x00

    .balign 4, 0
_03A4:
    .short 17, 8
    .short 0xFE, 0x00

    .balign 4, 0
_03AC:
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03B4:
    .short 17, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03BC:
    .short 34, 1
    .short 63, 1
    .short 35, 1
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03D4:
    .short 16, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03DC:
    .short 15, 4
    .short 0xFE, 0x00

    .balign 4, 0
_03E4:
    .short 15, 18
    .short 12, 2
    .short 15, 9
    .short 12, 6
    .short 0xFE, 0x00

    .balign 4, 0
_03F8:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0400:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0408:
    .short 63, 1
    .short 37, 1
    .short 62, 1
    .short 36, 1
    .short 0xFE, 0x00

    .balign 4, 0
_041C:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0428:
    .short 33, 1
    .short 0xFE, 0x00

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_043C:
    .short 63, 2
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0448:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0450:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0458:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0460:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0468:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0470:
    .short 1, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0478:
    .short 12, 1
    .short 14, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0484:
    .short 13, 8
    .short 0xFE, 0x00

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_049C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04AF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04C2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04D5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 36
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04FB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_050E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0521:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D1 0, 0x1BF
    ScrCmd_020 107
    ScrCmd_01C 1, _057A
    ScrCmd_02C 42
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _056F
    ScrCmd_02C 43
    ScrCmd_028 0x8004, 0x1BF
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 107
    ScrCmd_02C 44
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_056F:
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_057A:
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0585:
    ScrCmd_036 47, 0, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_059C:
    ScrCmd_036 48, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_05B3:
    ScrCmd_036 49, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    ScrCmd_002

_05CA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_068
    ScrCmd_1BD 0x8004
    ScrCmd_02C 38
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0606
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05FB
    ScrCmd_002

_05FB:
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0606:
    ScrCmd_02C 39
    ScrCmd_034
    ScrCmd_01A _0646
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0660
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _067A
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _0694
    ScrCmd_23D 1, 0, 165, 0x164, 246
    ScrCmd_061
    ScrCmd_002

_0646:
    ScrCmd_05E 18, _06B0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 18, _06BC
    ScrCmd_05F
    ScrCmd_01B

_0660:
    ScrCmd_05E 0xFF, _06C4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _06BC
    ScrCmd_05F
    ScrCmd_01B

_067A:
    ScrCmd_05E 0xFF, _06D0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _06BC
    ScrCmd_05F
    ScrCmd_01B

_0694:
    ScrCmd_05E 0xFF, _06E0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_05E 0xFF, _06BC
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_06B0:
    .short 1, 1
    .short 64, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06BC:
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06C4:
    .short 13, 1
    .short 64, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06D0:
    .short 15, 1
    .short 1, 1
    .short 64, 1
    .short 0xFE, 0x00

    .balign 4, 0
_06E0:
    .short 14, 1
    .short 1, 1
    .short 64, 1
    .short 0xFE, 0x00

_06F0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_05E 7, _07A0
    ScrCmd_05F
    ScrCmd_1BD 0x8004
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _076E
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _077A
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _0786
    ScrCmd_011 0x8004, 0
    ScrCmd_01D 1, _0792
    ScrCmd_0CE 0
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02EE
    ScrCmd_01A _014E
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0306
    ScrCmd_01A _0198
    ScrCmd_061
    ScrCmd_002

_076E:
    ScrCmd_05E 0xFF, _07A8
    ScrCmd_05F
    ScrCmd_01B

_077A:
    ScrCmd_05E 0xFF, _07B0
    ScrCmd_05F
    ScrCmd_01B

_0786:
    ScrCmd_05E 0xFF, _07C0
    ScrCmd_05F
    ScrCmd_01B

_0792:
    ScrCmd_05E 0xFF, _07D0
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_07A0:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07A8:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07B0:
    .short 13, 1
    .short 14, 2
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07C0:
    .short 14, 1
    .short 13, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07D0:
    .short 14, 1
    .short 12, 1
    .short 0xFE, 0x00

_07DC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07EF:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0802:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_05E 25, _0450
    ScrCmd_05F
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_081F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_05E 24, _0470
    ScrCmd_05F
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_083C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_05E 8, _085C
    ScrCmd_05F
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_085C:
    .short 34, 1
    .short 0xFE, 0x00

_0864:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0877:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 25
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_088A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_089D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_08B0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
