    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0074-.-4
    .long _0156-.-4
    .long _0181-.-4
    .short 0xFD13

_0012:
    ScrCmd_011 0x40DE, 0
    ScrCmd_01C 1, _0054
    ScrCmd_01E 0x1EA
    ScrCmd_01E 0x1EB
    ScrCmd_207 0x4000
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0056
    ScrCmd_1DD 55, 0, 0x4000
    ScrCmd_029 0x4020, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    ScrCmd_029 0x4021, 0x4000
_0054:
    ScrCmd_002

_0056:
    ScrCmd_1DD 55, 0, 0x4000
    ScrCmd_029 0x4021, 0x4000
    ScrCmd_1DD 55, 1, 0x4000
    ScrCmd_029 0x4020, 0x4000
    ScrCmd_002

_0074:
    ScrCmd_011 0x40DE, 0
    ScrCmd_01D 5, _0090
    ScrCmd_011 0x40DE, 3
    ScrCmd_01C 1, _009E
_008E:
    ScrCmd_002

_0090:
    ScrCmd_1B2 0xFF
    ScrCmd_06B 8, 0, 0
    ScrCmd_01B

_009E:
    ScrCmd_187 2, 5, 0, 5, 3
    ScrCmd_187 3, 5, 0, 6, 3
    ScrCmd_016 _008E
    ScrCmd_002

_00BE:
    ScrCmd_02C 2
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    ScrCmd_01B

_00CB:
    ScrCmd_1DD 43, 0, 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0114
    ScrCmd_003 30, 0x800C
    ScrCmd_028 0x40D8, 1
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 0x146, 0, 7, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0114:
    ScrCmd_003 30, 0x800C
    ScrCmd_028 0x40D8, 1
    ScrCmd_136
    ScrCmd_135 6
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_136
    ScrCmd_135 8
    ScrCmd_150
    ScrCmd_0BE 0x146, 0, 7, 6, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    ScrCmd_002

_0156:
    ScrCmd_060
    ScrCmd_028 0x40DE, 3
    ScrCmd_01A _048D
    ScrCmd_1DD 43, 0, 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _039E
    ScrCmd_016 _02B0
    ScrCmd_002

_0181:
    ScrCmd_060
    ScrCmd_028 0x40DE, 3
    ScrCmd_01A _048D
    ScrCmd_01A _04A1
    ScrCmd_016 _02E8
    ScrCmd_002

_019D:
    ScrCmd_1DD 40, 0, 0
    ScrCmd_01A _04C5
    ScrCmd_01A _0529
    ScrCmd_1FE 0
    ScrCmd_030
    ScrCmd_034
    ScrCmd_01A _0535
    ScrCmd_1FE 1
    ScrCmd_030
    ScrCmd_034
    ScrCmd_01A _0505
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_01B

_01DF:
    ScrCmd_1DD 40, 0, 0
    ScrCmd_01A _04C5
    ScrCmd_01A _0529
    ScrCmd_1FE 0
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_01A _0535
    ScrCmd_1FE 1
    ScrCmd_003 30, 0x800C
    ScrCmd_034
    ScrCmd_01A _0505
    ScrCmd_136
    ScrCmd_135 4
    ScrCmd_1DD 42, 0, 0
    ScrCmd_0EC 0x800C
    ScrCmd_029 0x8004, 0x800C
    ScrCmd_01B

_022F:
    ScrCmd_1DD 37, 0, 0
    ScrCmd_028 0x4000, 0
    ScrCmd_016 _00CB
    ScrCmd_002

_0245:
    ScrCmd_1DD 38, 0, 0
    ScrCmd_028 0x4000, 1
    ScrCmd_016 _00CB
    ScrCmd_002

_025B:
    ScrCmd_028 0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    ScrCmd_02C 0
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_1DD 2, 0, 0
    ScrCmd_002

_0296:
    ScrCmd_016 _022F
    ScrCmd_002

_029E:
    ScrCmd_1DD 34, 0, 0x800C
    ScrCmd_1DD 35, 0, 0x800C
    ScrCmd_01B

_02B0:
    ScrCmd_01A _019D
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _022F
    ScrCmd_01A _029E
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0245
    ScrCmd_01A _0541
    ScrCmd_01A _0565
    ScrCmd_01A _00BE
_02E8:
    ScrCmd_1DD 33, 0, 0x8004
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 3
    ScrCmd_044 31, 11, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 147, 0xFF, 1
    ScrCmd_046 148, 0xFF, 2
    ScrCmd_047
    ScrCmd_034
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0354
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0362
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0380
    ScrCmd_016 _0354
    ScrCmd_002

_0354:
    ScrCmd_01A _0589
    ScrCmd_016 _02B0
    ScrCmd_002

_0362:
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _025B
    ScrCmd_016 _02E8
    ScrCmd_002

_0380:
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_034
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0296
    ScrCmd_016 _02E8
    ScrCmd_002

_039E:
    ScrCmd_01A _01DF
    ScrCmd_011 0x8004, 0
    ScrCmd_01C 1, _022F
    ScrCmd_01A _029E
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0245
    ScrCmd_01A _0541
    ScrCmd_01A _0565
    ScrCmd_01A _00BE
_03D6:
    ScrCmd_1DD 33, 0, 0x8004
    ScrCmd_0D5 0, 0x8004
    ScrCmd_02C 3
    ScrCmd_044 31, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 146, 0xFF, 0
    ScrCmd_046 148, 0xFF, 1
    ScrCmd_047
    ScrCmd_034
    ScrCmd_028 0x4000, 0
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0452
_0418:
    ScrCmd_02C 12
    ScrCmd_136
    ScrCmd_135 5
    ScrCmd_1E1 2, 0x4000, 0x800C
    ScrCmd_1E2 2, 0x4000
    ScrCmd_034
    ScrCmd_029 0x8008, 0x4000
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _0474
    ScrCmd_01A _0589
    ScrCmd_016 _039E
    ScrCmd_002

_0452:
    ScrCmd_02C 5
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03D6
    ScrCmd_028 0x4000, 1
    ScrCmd_016 _0418
    ScrCmd_002

_0474:
    ScrCmd_02C 11
    ScrCmd_003 30, 0x800C
    ScrCmd_136
    ScrCmd_135 7
    ScrCmd_034
    ScrCmd_016 _0296
    ScrCmd_002

_048D:
    ScrCmd_05E 2, _05B0
    ScrCmd_05E 3, _05C4
    ScrCmd_05F
    ScrCmd_01B

_04A1:
    ScrCmd_05E 0, _0644
    ScrCmd_05E 1, _0644
    ScrCmd_05E 2, _0664
    ScrCmd_05E 3, _0664
    ScrCmd_05F
    ScrCmd_01B

_04C5:
    ScrCmd_1DD 41, 0, 0x800C
    ScrCmd_029 0x4022, 0x800C
    ScrCmd_1DD 41, 1, 0x800C
    ScrCmd_029 0x4023, 0x800C
    ScrCmd_01F 0x1EA
    ScrCmd_01F 0x1EB
    ScrCmd_064 5
    ScrCmd_064 4
    ScrCmd_05E 5, _05D8
    ScrCmd_05E 4, _05EC
    ScrCmd_05F
    ScrCmd_01B

_0505:
    ScrCmd_05E 2, _0600
    ScrCmd_05E 3, _0600
    ScrCmd_05E 5, _0608
    ScrCmd_05E 4, _0608
    ScrCmd_05F
    ScrCmd_01B

_0529:
    ScrCmd_05E 5, _0610
    ScrCmd_05F
    ScrCmd_01B

_0535:
    ScrCmd_05E 4, _0610
    ScrCmd_05F
    ScrCmd_01B

_0541:
    ScrCmd_05E 5, _0618
    ScrCmd_05E 4, _0628
    ScrCmd_05F
    ScrCmd_01E 0x1EA
    ScrCmd_01E 0x1EB
    ScrCmd_065 5
    ScrCmd_065 4
    ScrCmd_01B

_0565:
    ScrCmd_05E 2, _0638
    ScrCmd_05E 3, _0638
    ScrCmd_05E 0, _0644
    ScrCmd_05E 1, _0644
    ScrCmd_05F
    ScrCmd_01B

_0589:
    ScrCmd_05E 2, _064C
    ScrCmd_05E 3, _064C
    ScrCmd_05E 0, _0654
    ScrCmd_05E 1, _0654
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_05B0:
    .short 12, 1
    .short 14, 3
    .short 12, 3
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05C4:
    .short 12, 1
    .short 14, 4
    .short 12, 2
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05D8:
    .short 13, 1
    .short 15, 3
    .short 13, 3
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_05EC:
    .short 13, 1
    .short 15, 4
    .short 13, 2
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0600:
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0608:
    .short 14, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0610:
    .short 30, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0618:
    .short 12, 3
    .short 14, 2
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0628:
    .short 12, 2
    .short 14, 3
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0638:
    .short 14, 1
    .short 2, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0644:
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_064C:
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0654:
    .short 2, 1
    .short 14, 1
    .short 3, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0664:
    .short 2, 1
    .short 0xFE, 0x00
