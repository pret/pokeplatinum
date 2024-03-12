    .include "macros/scrcmd.inc"

    .data

    .long _002E-.-4
    .long _0064-.-4
    .long _017C-.-4
    .long _0214-.-4
    .long _08E0-.-4
    .long _0948-.-4
    .long _095E-.-4
    .long _09D8-.-4
    .long _09E9-.-4
    .long _09FA-.-4
    .long _00E0-.-4
    .short 0xFD13

_002E:
    ScrCmd_011 0x40A4, 3
    ScrCmd_01D 1, _0048
    ScrCmd_020 143
    ScrCmd_01D 1, _005E
    ScrCmd_002

_0048:
    ScrCmd_186 0, 2, 4
    ScrCmd_189 0, 0
    ScrCmd_188 0, 14
    ScrCmd_01B

_005E:
    ScrCmd_01E 0x1F1
    ScrCmd_01B

_0064:
    ScrCmd_060
    ScrCmd_05E 0xFF, _00A4
    ScrCmd_05E 0, _00B0
    ScrCmd_05F
    ScrCmd_01E 135
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0, _00CC
    ScrCmd_05F
    ScrCmd_028 0x40A4, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00A4:
    .short 62, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00B0:
    .short 32, 1
    .short 75, 1
    .short 63, 1
    .short 12, 1
    .short 15, 3
    .short 12, 3
    .short 0xFE, 0x00

    .balign 4, 0
_00CC:
    .short 13, 2
    .short 14, 3
    .short 13, 2
    .short 32, 1
    .short 0xFE, 0x00

_00E0:
    ScrCmd_060
    ScrCmd_028 0x410F, 2
    ScrCmd_020 0x15C
    ScrCmd_01C 1, _014B
    ScrCmd_020 0x15D
    ScrCmd_01C 0, _0110
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _014B
_0110:
    ScrCmd_05E 0xFF, _0164
    ScrCmd_05E 0, _0170
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_22D 2, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _014F
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _0158
    ScrCmd_031
    ScrCmd_034
_014B:
    ScrCmd_061
    ScrCmd_002

_014F:
    ScrCmd_01E 0x15C
    ScrCmd_02C 35
    ScrCmd_01B

_0158:
    ScrCmd_01E 0x15D
    ScrCmd_02C 36
    ScrCmd_01B

    .balign 4, 0
_0164:
    .short 62, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0170:
    .short 32, 1
    .short 75, 1
    .short 0xFE, 0x00

_017C:
    ScrCmd_060
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 0, _01D4
    ScrCmd_05E 0xFF, _01F8
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 7
    ScrCmd_15A
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_028 0x40A4, 4
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01D4:
    .short 14, 1
    .short 0, 1
    .short 63, 2
    .short 15, 3
    .short 13, 2
    .short 15, 3
    .short 13, 2
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_01F8:
    .short 63, 4
    .short 35, 1
    .short 63, 4
    .short 15, 3
    .short 13, 2
    .short 15, 1
    .short 0xFE, 0x00

_0214:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 2
    ScrCmd_01C 1, _02AF
    ScrCmd_011 0x40A4, 7
    ScrCmd_01C 4, _0792
    ScrCmd_011 0x40A4, 6
    ScrCmd_01C 1, _035E
    ScrCmd_020 144
    ScrCmd_01C 1, _036C
    ScrCmd_011 0x40A4, 5
    ScrCmd_01C 4, _0788
    ScrCmd_011 0x40A4, 4
    ScrCmd_01C 4, _0711
    ScrCmd_020 248
    ScrCmd_01C 1, _075A
    ScrCmd_011 0x40A4, 2
    ScrCmd_01C 4, _0768
    ScrCmd_020 135
    ScrCmd_01C 1, _077A
    ScrCmd_01E 135
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 205
    .byte 0
    .byte 0
    .byte 206
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 35
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_02AF:
    ScrCmd_011 0x40B2, 2
    ScrCmd_01C 4, _0300
    ScrCmd_016 _02C4
    ScrCmd_002

_02C4:
    ScrCmd_1B7 0x800C, 4
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _031B
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0329
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0337
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0345
    ScrCmd_002

_0300:
    ScrCmd_011 0x40AA, 2
    ScrCmd_01C 4, _02C4
    ScrCmd_0CD 0
    ScrCmd_02C 41
    ScrCmd_016 _0356
    ScrCmd_002

_031B:
    ScrCmd_0CD 0
    ScrCmd_02C 37
    ScrCmd_016 _0356
    ScrCmd_002

_0329:
    ScrCmd_0CD 0
    ScrCmd_02C 38
    ScrCmd_016 _0356
    ScrCmd_002

_0337:
    ScrCmd_0CD 0
    ScrCmd_02C 39
    ScrCmd_016 _0356
    ScrCmd_002

_0345:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_02C 40
    ScrCmd_016 _0356
    ScrCmd_002

_0356:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_035E:
    ScrCmd_0CD 0
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_036C:
    ScrCmd_01A _0688
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_028 0x8004, 0x1B1
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_1CC
    ScrCmd_02C 16
    ScrCmd_1BD 0x8007
    ScrCmd_011 0x8007, 1
    ScrCmd_01C 1, _03A6
    ScrCmd_016 _03B8
    ScrCmd_002

_03A6:
    ScrCmd_05E 0, _079C
    ScrCmd_05F
    ScrCmd_016 _03CA
    ScrCmd_002

_03B8:
    ScrCmd_05E 0, _07A4
    ScrCmd_05F
    ScrCmd_016 _03CA
    ScrCmd_002

_03CA:
    ScrCmd_02C 17
    ScrCmd_068
    ScrCmd_0CD 0
    ScrCmd_02C 18
    ScrCmd_034
    ScrCmd_049 0x605
    ScrCmd_01F 0x1F1
    ScrCmd_064 1
    ScrCmd_04B 0x605
    ScrCmd_05E 0, _07B4
    ScrCmd_05E 0xFF, _0864
    ScrCmd_05F
    ScrCmd_05E 1, _07FC
    ScrCmd_05F
    ScrCmd_011 0x8007, 0
    ScrCmd_01D 1, _0465
    ScrCmd_0CE 1
    ScrCmd_02C 19
    ScrCmd_05E 0, _07C0
    ScrCmd_05F
    ScrCmd_02C 20
    ScrCmd_0CE 1
    ScrCmd_02C 21
    ScrCmd_0CD 0
    ScrCmd_02C 22
    ScrCmd_011 0x8007, 0
    ScrCmd_01C 1, _0471
    ScrCmd_011 0x8007, 1
    ScrCmd_01C 1, _048B
    ScrCmd_011 0x8007, 2
    ScrCmd_01C 1, _04A5
    ScrCmd_011 0x8007, 3
    ScrCmd_01C 1, _04BF
    ScrCmd_002

_0465:
    ScrCmd_05E 0xFF, _086C
    ScrCmd_05F
    ScrCmd_01B

_0471:
    ScrCmd_05E 0, _07C8
    ScrCmd_05E 0xFF, _0874
    ScrCmd_05F
    ScrCmd_016 _04D9
    ScrCmd_002

_048B:
    ScrCmd_05E 0, _07D0
    ScrCmd_05E 0xFF, _087C
    ScrCmd_05F
    ScrCmd_016 _04D9
    ScrCmd_002

_04A5:
    ScrCmd_05E 0, _07D8
    ScrCmd_05E 0xFF, _0884
    ScrCmd_05F
    ScrCmd_016 _04D9
    ScrCmd_002

_04BF:
    ScrCmd_05E 0, _07E0
    ScrCmd_05E 0xFF, _088C
    ScrCmd_05F
    ScrCmd_016 _04D9
    ScrCmd_002

_04D9:
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_011 0x8007, 0
    ScrCmd_01C 1, _0514
    ScrCmd_011 0x8007, 1
    ScrCmd_01C 1, _052E
    ScrCmd_011 0x8007, 2
    ScrCmd_01C 1, _0548
    ScrCmd_011 0x8007, 3
    ScrCmd_01C 1, _0562
    ScrCmd_002

_0514:
    ScrCmd_05E 1, _0808
    ScrCmd_05E 0xFF, _0894
    ScrCmd_05F
    ScrCmd_016 _057C
    ScrCmd_002

_052E:
    ScrCmd_05E 1, _0810
    ScrCmd_05E 0xFF, _089C
    ScrCmd_05F
    ScrCmd_016 _057C
    ScrCmd_002

_0548:
    ScrCmd_05E 1, _081C
    ScrCmd_05E 0xFF, _08A8
    ScrCmd_05F
    ScrCmd_016 _057C
    ScrCmd_002

_0562:
    ScrCmd_05E 1, _0828
    ScrCmd_05E 0xFF, _08B4
    ScrCmd_05F
    ScrCmd_016 _057C
    ScrCmd_002

_057C:
    ScrCmd_0CD 0
    ScrCmd_0CE 1
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _059B
    ScrCmd_016 _05A6
    ScrCmd_002

_059B:
    ScrCmd_02C 24
    ScrCmd_016 _05B1
    ScrCmd_002

_05A6:
    ScrCmd_02C 25
    ScrCmd_016 _05B1
    ScrCmd_002

_05B1:
    ScrCmd_028 0x8004, 0x1CB
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01E 143
    ScrCmd_02C 27
    ScrCmd_0CE 1
    ScrCmd_02C 26
    ScrCmd_034
    ScrCmd_011 0x8007, 0
    ScrCmd_01C 1, _0606
    ScrCmd_011 0x8007, 1
    ScrCmd_01C 1, _0620
    ScrCmd_011 0x8007, 2
    ScrCmd_01C 1, _0642
    ScrCmd_011 0x8007, 3
    ScrCmd_01C 1, _065C
    ScrCmd_002

_0606:
    ScrCmd_05E 1, _0830
    ScrCmd_05E 0xFF, _08BC
    ScrCmd_05F
    ScrCmd_016 _0676
    ScrCmd_002

_0620:
    ScrCmd_05E 1, _083C
    ScrCmd_05E 0xFF, _08C4
    ScrCmd_05E 0, _07E8
    ScrCmd_05F
    ScrCmd_016 _0676
    ScrCmd_002

_0642:
    ScrCmd_05E 1, _0848
    ScrCmd_05E 0, _07F4
    ScrCmd_05F
    ScrCmd_016 _0676
    ScrCmd_002

_065C:
    ScrCmd_05E 1, _0858
    ScrCmd_05E 0xFF, _08D8
    ScrCmd_05F
    ScrCmd_016 _0676
    ScrCmd_002

_0676:
    ScrCmd_049 0x603
    ScrCmd_065 1
    ScrCmd_028 0x40A4, 6
    ScrCmd_061
    ScrCmd_002

_0688:
    ScrCmd_0CD 0
    ScrCmd_1B6 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01D 1, _06F8
    ScrCmd_011 0x800C, 1
    ScrCmd_01D 1, _06FD
    ScrCmd_011 0x800C, 2
    ScrCmd_01D 1, _0702
    ScrCmd_011 0x800C, 3
    ScrCmd_01D 1, _0707
    ScrCmd_011 0x800C, 4
    ScrCmd_01D 1, _070C
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_01E 2
    ScrCmd_01B

_06F8:
    ScrCmd_02C 11
    ScrCmd_01B

_06FD:
    ScrCmd_02C 12
    ScrCmd_01B

_0702:
    ScrCmd_02C 12
    ScrCmd_01B

_0707:
    ScrCmd_02C 13
    ScrCmd_01B

_070C:
    ScrCmd_02C 14
    ScrCmd_01B

_0711:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 206
    .byte 0
    .byte 0
    .byte 205
    .byte 0
    .byte 1
    .byte 44
    .byte 0
    .byte 6
    .byte 52
    .byte 0
    .byte 3
    .byte 0
    .byte 30
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 7
    .byte 95
    .byte 1
    .byte 123
    .byte 0
    .byte 17
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 205
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 8
    .byte 78
    .byte 0
    .byte 134
    .byte 4
    .byte 79
    .byte 0
    .byte 44
    .byte 0
    .byte 9
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 40
    .byte 0
    .byte 164
    .byte 64
    .byte 4
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_075A:
    ScrCmd_0CE 0
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0768:
    ScrCmd_01E 248
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_077A:
    ScrCmd_0CE 0
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0788:
    ScrCmd_01A _0688
    ScrCmd_061
    ScrCmd_002

_0792:
    ScrCmd_01A _0688
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_079C:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07A4:
    .short 32, 1
    .short 0xFE, 0x00

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_07B4:
    .short 33, 1
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07C0:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07C8:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07D0:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07D8:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07E0:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07E8:
    .short 63, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07F4:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_07FC:
    .short 12, 1
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0808:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0810:
    .short 12, 2
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_081C:
    .short 15, 2
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0828:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0830:
    .short 13, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_083C:
    .short 13, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0848:
    .short 14, 2
    .short 13, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0858:
    .short 13, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0864:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_086C:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0874:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_087C:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0884:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_088C:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0894:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_089C:
    .short 63, 2
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08A8:
    .short 63, 2
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08B4:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08BC:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_08C4:
    .short 33, 1
    .short 0xFE, 0x00

    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D8:
    .short 33, 1
    .short 0xFE, 0x00

_08E0:
    ScrCmd_060
    ScrCmd_016 _08EA
    ScrCmd_002

_08EA:
    ScrCmd_05E 0xFF, _0918
    ScrCmd_05E 0, _0930
    ScrCmd_05F
    ScrCmd_016 _0904
    ScrCmd_002

_0904:
    ScrCmd_028 0x40A4, 2
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_0918:
    .short 63, 2
    .short 32, 1
    .short 0xFE, 0x00

    .byte 62
    .byte 0
    .byte 2
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
_0930:
    .short 33, 1
    .short 0xFE, 0x00

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0948:
    ScrCmd_0CE 1
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_095E:
    ScrCmd_1B6 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _09A5
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _09B6
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _09B6
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _09C7
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _09C7
    ScrCmd_002

_09A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_09B6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_09C7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_09D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_09E9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_09FA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
