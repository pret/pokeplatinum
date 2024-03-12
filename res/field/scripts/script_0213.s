    .include "macros/scrcmd.inc"

    .data

    .long _0046-.-4
    .long _0108-.-4
    .long _051E-.-4
    .long _0544-.-4
    .long _0694-.-4
    .long _0696-.-4
    .long _0698-.-4
    .long _069A-.-4
    .long _069C-.-4
    .long _069E-.-4
    .long _06A0-.-4
    .long _06B4-.-4
    .long _005B-.-4
    .long _0075-.-4
    .long _005B-.-4
    .long _005B-.-4
    .long _0763-.-4
    .short 0xFD13

_0046:
    ScrCmd_011 0x40D5, 0
    ScrCmd_01D 5, _0055
    ScrCmd_002

_0055:
    ScrCmd_1B2 0xFF
    ScrCmd_01B

_005B:
    ScrCmd_028 0x4000, 13
    ScrCmd_028 0x4001, 5
    ScrCmd_028 0x4002, 2
    ScrCmd_016 _008F
    ScrCmd_002

_0075:
    ScrCmd_028 0x4000, 8
    ScrCmd_028 0x4001, 5
    ScrCmd_028 0x4002, 2
    ScrCmd_016 _008F
    ScrCmd_002

_008F:
    ScrCmd_060
    ScrCmd_168 0, 0, 0x4000, 0x4002, 77
    ScrCmd_01A _050B
    ScrCmd_1B1 0xFF
    ScrCmd_05E 0xFF, _00F0
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_05E 0xFF, _00F8
    ScrCmd_05F
    ScrCmd_168 0, 0, 0x4000, 0x4001, 77
    ScrCmd_01A _050B
    ScrCmd_05E 0xFF, _0100
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_01F 0x966
    ScrCmd_028 0x40D5, 0
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_00F0:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_00F8:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0100:
    .short 13, 2
    .short 0xFE, 0x00

_0108:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0755
    ScrCmd_02C 0
    ScrCmd_016 _012C
    ScrCmd_002

_012C:
    ScrCmd_02C 1
    ScrCmd_044 1, 1, 1, 1, 0x800C
    ScrCmd_046 163, 0xFF, 250
    ScrCmd_046 6, 0xFF, 0
    ScrCmd_046 7, 0xFF, 1
    ScrCmd_046 8, 0xFF, 2
    ScrCmd_046 164, 0xFF, 250
    ScrCmd_046 9, 0xFF, 3
    ScrCmd_046 10, 0xFF, 4
    ScrCmd_046 11, 0xFF, 5
    ScrCmd_047
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _01DE
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _01F2
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _021A
    ScrCmd_011 0x8008, 3
    ScrCmd_01C 1, _0242
    ScrCmd_011 0x8008, 4
    ScrCmd_01C 1, _01C8
    ScrCmd_016 _01D3
    ScrCmd_002

_01C8:
    ScrCmd_02C 2
    ScrCmd_016 _012C
    ScrCmd_002

_01D3:
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01DE:
    ScrCmd_028 0x8004, 1
    ScrCmd_016 _026A

    .byte 22
    .byte 0
    .byte 160
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_01F2:
    ScrCmd_028 0x8004, 2
    ScrCmd_19A 0x800C
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 0, _020F
    ScrCmd_016 _026A

_020F:
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_021A:
    ScrCmd_028 0x8004, 3
    ScrCmd_19A 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 0, _0237
    ScrCmd_016 _0290

_0237:
    ScrCmd_02C 126
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0242:
    ScrCmd_028 0x8004, 4
    ScrCmd_19A 0x800C
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 0, _025F
    ScrCmd_016 _0290

_025F:
    ScrCmd_02C 125
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_026A:
    ScrCmd_239 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0290
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0290
    ScrCmd_016 _01D3
    ScrCmd_002

_0290:
    ScrCmd_028 0x8005, 0
    ScrCmd_016 _02E4

    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 0
    .byte 0
    .byte 22
    .byte 0
    .byte 58
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 1
    .byte 0
    .byte 22
    .byte 0
    .byte 44
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 2
    .byte 0
    .byte 22
    .byte 0
    .byte 30
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 3
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 40
    .byte 0
    .byte 5
    .byte 128
    .byte 4
    .byte 0
    .byte 22
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_02E4:
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0305
    ScrCmd_016 _01D3
    ScrCmd_002

_0305:
    ScrCmd_011 0x8004, 1
    ScrCmd_01D 1, _037A
    ScrCmd_011 0x8004, 2
    ScrCmd_01D 1, _037A
    ScrCmd_011 0x8004, 3
    ScrCmd_01D 1, _037A
    ScrCmd_011 0x8004, 4
    ScrCmd_01D 1, _037F
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0384
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _03F7
    ScrCmd_016 _01D3
    ScrCmd_002

_037A:
    ScrCmd_02C 22
    ScrCmd_01B

_037F:
    ScrCmd_02C 43
    ScrCmd_01B

_0384:
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0305
    ScrCmd_034
    ScrCmd_0F2 0x8004, 0x8005, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _03D3
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _03DD
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _03EA
    ScrCmd_016 _046A
    ScrCmd_002

_03D3:
    ScrCmd_150
    ScrCmd_016 _0305
    ScrCmd_002

_03DD:
    ScrCmd_150
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03EA:
    ScrCmd_150
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_03F7:
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0305
    ScrCmd_034
    ScrCmd_0F3 0x8004, 0x8005, 0, 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0446
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _0450
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _045D
    ScrCmd_016 _046A
    ScrCmd_002

_0446:
    ScrCmd_150
    ScrCmd_016 _0305
    ScrCmd_002

_0450:
    ScrCmd_150
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_045D:
    ScrCmd_150
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_046A:
    ScrCmd_028 0x40D5, 1
    ScrCmd_01E 0x966
    ScrCmd_02E 52
    ScrCmd_190 45
    ScrCmd_135 96
    ScrCmd_034
    ScrCmd_168 0, 0, 13, 5, 77
    ScrCmd_01A _050B
    ScrCmd_05E 0xFF, _0524
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_05E 0xFF, _0530
    ScrCmd_05F
    ScrCmd_168 0, 0, 13, 2, 77
    ScrCmd_01A _050B
    ScrCmd_05E 0xFF, _0538
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_011 0x8004, 4
    ScrCmd_01C 1, _04F3
    ScrCmd_207 0x800C
    ScrCmd_026 0x800C, 7
    ScrCmd_203 0x14C, 0, 0x800C, 11, 0
    ScrCmd_002

_04F3:
    ScrCmd_207 0x800C
    ScrCmd_026 0x800C, 6
    ScrCmd_203 0x14D, 0, 0x800C, 11, 0
    ScrCmd_002

_050B:
    ScrCmd_16B 77
    ScrCmd_169 77
    ScrCmd_01B

_0513:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    ScrCmd_01B

_051E:
    ScrCmd_0F6
    ScrCmd_151
    ScrCmd_002

    .balign 4, 0
_0524:
    .short 15, 1
    .short 12, 2
    .short 0xFE, 0x00

    .balign 4, 0
_0530:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0538:
    .short 12, 1
    .short 69, 1
    .short 0xFE, 0x00

_0544:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0755
    ScrCmd_016 _0565
    ScrCmd_002

_0565:
    ScrCmd_02C 57
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 41, 0
    ScrCmd_042 42, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _05CF
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _01D3
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _05B3
    ScrCmd_016 _01D3
    ScrCmd_002

_05B3:
    ScrCmd_02C 58
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05CF
    ScrCmd_016 _01D3
    ScrCmd_002

_05CF:
    ScrCmd_028 0x8004, 9
    ScrCmd_14E
    ScrCmd_02C 124
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01D3
    ScrCmd_31D 0x800C
    ScrCmd_011 0x800C, 0xFF
    ScrCmd_01C 1, _068E
    ScrCmd_028 0x40D5, 2
    ScrCmd_01E 0x966
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _062D
    ScrCmd_028 0x40D5, 0
    ScrCmd_01F 0x966
    ScrCmd_016 _01D3

_062D:
    ScrCmd_028 0x40D5, 2
    ScrCmd_01E 0x966
    ScrCmd_02C 63
    ScrCmd_034
    ScrCmd_168 0, 0, 8, 5, 77
    ScrCmd_01A _050B
    ScrCmd_05E 0xFF, _0524
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_05E 0xFF, _0530
    ScrCmd_05F
    ScrCmd_168 0, 0, 8, 2, 77
    ScrCmd_01A _050B
    ScrCmd_05E 0xFF, _0538
    ScrCmd_05F
    ScrCmd_01A _0513
    ScrCmd_061
    ScrCmd_153
    ScrCmd_002

_068E:
    ScrCmd_014 0x809
    ScrCmd_002

_0694:
    ScrCmd_002

_0696:
    ScrCmd_002

_0698:
    ScrCmd_002

_069A:
    ScrCmd_002

_069C:
    ScrCmd_002

_069E:
    ScrCmd_002

_06A0:
    ScrCmd_1F8
    ScrCmd_0A3
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_002

_06B4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_01E 170
    ScrCmd_02C 102
    ScrCmd_016 _06CB
    ScrCmd_002

_06CB:
    ScrCmd_02C 103
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 41, 0
    ScrCmd_042 42, 1
    ScrCmd_042 10, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0724
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _074A
    ScrCmd_011 0x8008, 2
    ScrCmd_01C 1, _0719
    ScrCmd_016 _074A
    ScrCmd_002

_0719:
    ScrCmd_02C 105
    ScrCmd_016 _06CB
    ScrCmd_002

_0724:
    ScrCmd_034
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_12B
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_016 _074A
    ScrCmd_002

_074A:
    ScrCmd_02C 104
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0755:
    ScrCmd_01A _076D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0763:
    ScrCmd_01A _076D
    ScrCmd_015
    ScrCmd_002

_076D:
    ScrCmd_02C 127
    ScrCmd_01B

    .byte 0
    .byte 0
