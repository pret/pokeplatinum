    .include "macros/scrcmd.inc"

    .data

    .long _0059-.-4
    .long _06A4-.-4
    .long _06DD-.-4
    .long _06EC-.-4
    .long _0760-.-4
    .long _0075-.-4
    .long _0788-.-4
    .long _079B-.-4
    .long _07AE-.-4
    .long _07C1-.-4
    .long _07D4-.-4
    .long _07E7-.-4
    .long _07FA-.-4
    .long _003A-.-4
    .short 0xFD13

_003A:
    ScrCmd_238 19, 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0053
    ScrCmd_01F 0x2C3
    ScrCmd_002

_0053:
    ScrCmd_01E 0x2C3
    ScrCmd_002

_0059:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 0
    ScrCmd_016 _0091
    ScrCmd_002

_0075:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_028 0x4003, 0
    ScrCmd_028 0x4004, 1
    ScrCmd_016 _0091
    ScrCmd_002

_0091:
    ScrCmd_313 0
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _0664
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0669
    ScrCmd_016 _00B7
    ScrCmd_002

_00B7:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _066E
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0686
    ScrCmd_042 41, 2
    ScrCmd_042 42, 3
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0152
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _017F
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0117
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _01AC
    ScrCmd_016 _0139
    ScrCmd_002

_0117:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _069A
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _069F
    ScrCmd_016 _00B7
    ScrCmd_002

_0139:
    ScrCmd_016 _0141
    ScrCmd_002

_0141:
    ScrCmd_028 0x40BC, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0152:
    ScrCmd_028 0x40BD, 0
    ScrCmd_2D2 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D9
    ScrCmd_016 _01FF
    ScrCmd_002

_017F:
    ScrCmd_028 0x40BD, 1
    ScrCmd_2D2 0, 3, 0x800C
    ScrCmd_0D5 0, 3
    ScrCmd_0D5 1, 3
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01D9
    ScrCmd_016 _01FF
    ScrCmd_002

_01AC:
    ScrCmd_028 0x40BD, 2
    ScrCmd_2D2 0, 2, 0x800C
    ScrCmd_0D5 0, 2
    ScrCmd_0D5 1, 2
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01EC
    ScrCmd_016 _01FF
    ScrCmd_002

_01D9:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 3, 0, 0
    ScrCmd_016 _0139
    ScrCmd_002

_01EC:
    ScrCmd_02C 8
    ScrCmd_1FF 9, 2, 0, 0
    ScrCmd_016 _0139
    ScrCmd_002

_01FF:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2D2 4, 0x40BD, 0x800C
    ScrCmd_2D4 0x4002, 0x4005, 0x4006
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_011 0x4002, 0xFF
    ScrCmd_01C 1, _0139
    ScrCmd_31E 0x4002, 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _05D5
    ScrCmd_31E 0x4005, 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _05D5
    ScrCmd_31E 0x4006, 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _05D5
    ScrCmd_198 0x4002, 0x4001
    ScrCmd_011 0x4001, 0
    ScrCmd_01C 1, _0139
    ScrCmd_016 _028F
    ScrCmd_002

_028F:
    ScrCmd_016 _0297
    ScrCmd_002

_0297:
    ScrCmd_011 0x40BD, 0
    ScrCmd_01D 1, _043C
    ScrCmd_011 0x40BD, 1
    ScrCmd_01D 1, _043C
    ScrCmd_028 0x4000, 0
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0139
    ScrCmd_011 0x40BD, 2
    ScrCmd_01C 1, _02E5
    ScrCmd_016 _049D
    ScrCmd_002

_02E5:
    ScrCmd_02C 43
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0329
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _037D
    ScrCmd_016 _0139
    ScrCmd_002

_0329:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02E5
    ScrCmd_034
    ScrCmd_0F2 31, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _036B
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0373
    ScrCmd_016 _03D1
    ScrCmd_002

_036B:
    ScrCmd_016 _02E5
    ScrCmd_002

_0373:
    ScrCmd_150
    ScrCmd_016 _02E5
    ScrCmd_002

_037D:
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02E5
    ScrCmd_034
    ScrCmd_0F3 31, 0, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03BF
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _03C7
    ScrCmd_016 _03D1
    ScrCmd_002

_03BF:
    ScrCmd_016 _02E5
    ScrCmd_002

_03C7:
    ScrCmd_150
    ScrCmd_016 _02E5
    ScrCmd_002

_03D1:
    ScrCmd_136
    ScrCmd_135 136
    ScrCmd_198 0x4002, 0x8000
    ScrCmd_198 0x4005, 0x8001
    ScrCmd_2D3 0x8000, 0x8001, 0x800C
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0444
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _045A
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0470
    ScrCmd_136
    ScrCmd_135 138
    ScrCmd_02C 45
    ScrCmd_011 0x40BD, 2
    ScrCmd_01D 1, _043C
    ScrCmd_01A _06CB
    ScrCmd_016 _049D
    ScrCmd_002

_043C:
    ScrCmd_028 0x40BC, 0xFF
    ScrCmd_01B

_0444:
    ScrCmd_01A _0493
    ScrCmd_0D0 0, 0x4002
    ScrCmd_02C 29
    ScrCmd_016 _048B
    ScrCmd_002

_045A:
    ScrCmd_01A _0493
    ScrCmd_0D0 0, 0x4005
    ScrCmd_02C 29
    ScrCmd_016 _048B
    ScrCmd_002

_0470:
    ScrCmd_01A _0493
    ScrCmd_0D0 0, 0x4002
    ScrCmd_0D0 1, 0x4005
    ScrCmd_02C 30
    ScrCmd_016 _048B
    ScrCmd_002

_048B:
    ScrCmd_016 _0139
    ScrCmd_002

_0493:
    ScrCmd_136
    ScrCmd_135 139
    ScrCmd_150
    ScrCmd_01B

_049D:
    ScrCmd_011 0x40BD, 0
    ScrCmd_01D 1, _053D
    ScrCmd_011 0x40BD, 1
    ScrCmd_01D 1, _0558
    ScrCmd_011 0x40BD, 2
    ScrCmd_01D 1, _0573
    ScrCmd_049 0x603
    ScrCmd_016 _04D0
    ScrCmd_002

_04D0:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_011 0x40BD, 0
    ScrCmd_01D 1, _0599
    ScrCmd_011 0x40BD, 1
    ScrCmd_01D 1, _05AD
    ScrCmd_011 0x40BD, 2
    ScrCmd_01D 1, _05C1
    ScrCmd_1E5 58
    ScrCmd_1CD 38, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 11
    ScrCmd_011 0x40BD, 2
    ScrCmd_01D 1, _0539
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_313 1
    ScrCmd_002

_0539:
    ScrCmd_150
    ScrCmd_01B

_053D:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05E4
    ScrCmd_05E 0x800D, _0604
    ScrCmd_05F
    ScrCmd_01B

_0558:
    ScrCmd_02C 32
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _05E4
    ScrCmd_05E 0x800D, _0604
    ScrCmd_05F
    ScrCmd_01B

_0573:
    ScrCmd_02E 32
    ScrCmd_003 10, 0x800C
    ScrCmd_136
    ScrCmd_135 137
    ScrCmd_034
    ScrCmd_05E 0xFF, _05F0
    ScrCmd_05E 0x800D, _0610
    ScrCmd_05F
    ScrCmd_01B

_0599:
    ScrCmd_05E 0xFF, _0624
    ScrCmd_05E 0x800D, _0648
    ScrCmd_05F
    ScrCmd_01B

_05AD:
    ScrCmd_05E 0xFF, _0624
    ScrCmd_05E 0x800D, _0648
    ScrCmd_05F
    ScrCmd_01B

_05C1:
    ScrCmd_05E 0xFF, _0634
    ScrCmd_05E 0x800D, _0654
    ScrCmd_05F
    ScrCmd_01B

_05D5:
    ScrCmd_028 0x40BC, 0
    ScrCmd_014 0x809
    ScrCmd_002

    .balign 4, 0
_05E4:
    .short 14, 6
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05F0:
    .short 14, 3
    .short 12, 1
    .short 14, 3
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0604:
    .short 14, 5
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0610:
    .short 14, 2
    .short 12, 1
    .short 14, 3
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0624:
    .short 23, 6
    .short 70, 1
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0634:
    .short 23, 6
    .short 21, 1
    .short 70, 1
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0648:
    .short 23, 5
    .short 70, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0654:
    .short 21, 1
    .short 23, 5
    .short 70, 1
    .short 0xFE, 0x00

_0664:
    ScrCmd_02C 0
    ScrCmd_01B

_0669:
    ScrCmd_02C 3
    ScrCmd_01B

_066E:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_02C 1
    ScrCmd_01B

_0686:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 40, 4
    ScrCmd_02C 4
    ScrCmd_01B

_069A:
    ScrCmd_02C 2
    ScrCmd_01B

_069F:
    ScrCmd_02C 5
    ScrCmd_01B

_06A4:
    ScrCmd_313 0
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x40BC, 0
    ScrCmd_02C 33
    ScrCmd_01A _043C
    ScrCmd_01A _06CB
    ScrCmd_016 _049D
    ScrCmd_002

_06CB:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_01B

_06DD:
    ScrCmd_02C 34
    ScrCmd_2D5 0x40BD
    ScrCmd_016 _0139
    ScrCmd_002

_06EC:
    ScrCmd_011 0x40BD, 0
    ScrCmd_01D 1, _0728
    ScrCmd_011 0x40BD, 1
    ScrCmd_01D 1, _0728
    ScrCmd_011 0x4052, 1
    ScrCmd_01D 1, _072E
    ScrCmd_011 0x4052, 3
    ScrCmd_01D 1, _0745
    ScrCmd_016 _0139
    ScrCmd_002

_0728:
    ScrCmd_30A 39
    ScrCmd_01B

_072E:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 37
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4052, 2
    ScrCmd_01B

_0745:
    ScrCmd_02C 35
    ScrCmd_0CD 0
    ScrCmd_02C 36
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4052, 4
    ScrCmd_014 0x806
    ScrCmd_01B

_0760:
    ScrCmd_016 _0139

    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 2
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0788:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 46
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_079B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 47
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07AE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07C1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 49
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07E7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_07FA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 52
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
