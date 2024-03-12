    .include "macros/scrcmd.inc"

    .data

    .long _0032-.-4
    .long _0062-.-4
    .long _03E8-.-4
    .long _0411-.-4
    .long _043A-.-4
    .long _047C-.-4
    .long _04BE-.-4
    .long _0500-.-4
    .long _056A-.-4
    .long _05D4-.-4
    .long _0616-.-4
    .long _06A2-.-4
    .short 0xFD13

_0032:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _0052
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _005A
    ScrCmd_002

_0052:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_005A:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_0062:
    ScrCmd_060
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 4, _0364
    ScrCmd_05E 0xFF, _0310
    ScrCmd_05F
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ScrCmd_05E 241, _0340
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 4, _0350
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 2
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 4, _035C
    ScrCmd_05F
    ScrCmd_003 10, 0x800C
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_034
    ScrCmd_05E 2, _02C8
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 2, _02D4
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_0CE 0
    ScrCmd_02C 7
    ScrCmd_02C 8
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0116
    ScrCmd_016 _0124
    ScrCmd_002

_0116:
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_016 _0132
    ScrCmd_002

_0124:
    ScrCmd_0CD 0
    ScrCmd_02C 10
    ScrCmd_016 _0132
    ScrCmd_002

_0132:
    ScrCmd_02C 11
    ScrCmd_034
    ScrCmd_05E 2, _02E0
    ScrCmd_05E 3, _03D8
    ScrCmd_05F
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0162
    ScrCmd_016 _0173
    ScrCmd_002

_0162:
    ScrCmd_02C 12
    ScrCmd_0CF 0
    ScrCmd_02C 13
    ScrCmd_016 _0184
    ScrCmd_002

_0173:
    ScrCmd_02C 14
    ScrCmd_0CF 0
    ScrCmd_02C 15
    ScrCmd_016 _0184
    ScrCmd_002

_0184:
    ScrCmd_034
    ScrCmd_05E 2, _02E8
    ScrCmd_05E 3, _03E0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_05E 4, _039C
    ScrCmd_05F
    ScrCmd_02C 17
    ScrCmd_034
    ScrCmd_05E 4, _03A4
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 18
    ScrCmd_04B 0x5DC
    ScrCmd_02B 19
    ScrCmd_29F 1
    ScrCmd_02C 20
    ScrCmd_0CE 0
    ScrCmd_02C 21
    ScrCmd_034
    ScrCmd_05E 4, _03AC
    ScrCmd_05E 0xFF, _0330
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_067
    ScrCmd_310
    ScrCmd_0A1
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_066 0x8004, 0x8005
    ScrCmd_05E 241, _0340
    ScrCmd_05F
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_02C 22
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 4, _03B4
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 23
    ScrCmd_05E 0xFF, _0338
    ScrCmd_05F
    ScrCmd_02C 24
    ScrCmd_034
    ScrCmd_05E 3, _03BC
    ScrCmd_05E 4, _0388
    ScrCmd_05E 2, _02F0
    ScrCmd_05E 241, _0348
    ScrCmd_05F
    ScrCmd_065 4
    ScrCmd_065 3
    ScrCmd_067
    ScrCmd_05E 0xFF, _02C0
    ScrCmd_05F
    ScrCmd_02C 25
    ScrCmd_034
    ScrCmd_04A 0x5DC
    ScrCmd_05E 2, _0308
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 2
    ScrCmd_04A 0x603
    ScrCmd_028 0x4078, 4
    ScrCmd_028 0x40B2, 2
    ScrCmd_01E 168
    ScrCmd_01E 0x1AE
    ScrCmd_01F 0x1B3
    ScrCmd_01F 0x1B5
    ScrCmd_01F 0x1B2
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_02C0:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C8:
    .short 11, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02D4:
    .short 14, 1
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E0:
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02F0:
    .short 15, 1
    .short 12, 4
    .short 14, 5
    .short 12, 3
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0308:
    .short 15, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0310:
    .short 63, 3
    .short 33, 1
    .short 13, 2
    .short 15, 1
    .short 13, 1
    .short 15, 2
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0330:
    .short 32, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0338:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0340:
    .short 11, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0348:
    .short 10, 3
    .short 0xFE, 0x00

    .balign 4, 0
_0350:
    .short 16, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_035C:
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0364:
    .short 13, 1
    .short 15, 2
    .short 32, 1
    .short 13, 1
    .short 15, 1
    .short 13, 1
    .short 15, 3
    .short 13, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0388:
    .short 18, 4
    .short 16, 3
    .short 19, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_039C:
    .short 39, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03A4:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03AC:
    .short 16, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03B4:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03BC:
    .short 14, 1
    .short 12, 5
    .short 14, 2
    .short 12, 2
    .short 15, 1
    .short 69, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03D8:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_03E0:
    .short 32, 1
    .short 0xFE, 0x00

_03E8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _0406
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0406:
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0411:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 168
    ScrCmd_01C 1, _042F
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_042F:
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_043A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 30
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0471
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0463
    ScrCmd_002

_0463:
    ScrCmd_0CD 0
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0471:
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_047C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 33
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04B3
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04A5
    ScrCmd_002

_04A5:
    ScrCmd_0CD 0
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04B3:
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04BE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 36
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _04F5
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _04E7
    ScrCmd_002

_04E7:
    ScrCmd_0CD 0
    ScrCmd_02C 37
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_04F5:
    ScrCmd_02C 38
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0500:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 39
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0537
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0529
    ScrCmd_002

_0529:
    ScrCmd_0CD 0
    ScrCmd_02C 40
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0537:
    ScrCmd_02C 41
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0529
    ScrCmd_02C 42
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0529
    ScrCmd_02C 43
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_056A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _05A1
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0593
    ScrCmd_002

_0593:
    ScrCmd_0CD 0
    ScrCmd_02C 45
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05A1:
    ScrCmd_02C 46
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0593
    ScrCmd_02C 47
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0593
    ScrCmd_02C 48
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_05D4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 49
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _060B
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _05FD
    ScrCmd_002

_05FD:
    ScrCmd_0CD 0
    ScrCmd_02C 50
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_060B:
    ScrCmd_02C 51
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0616:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 52
    ScrCmd_02C 53
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_29D 0x103, 0
    ScrCmd_29D 0x104, 1
    ScrCmd_29D 0x105, 2
    ScrCmd_29D 0x106, 3
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0673
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _067E
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0689
    ScrCmd_016 _0694
    ScrCmd_002

_0673:
    ScrCmd_02C 55
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_067E:
    ScrCmd_02C 56
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0689:
    ScrCmd_02C 57
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0694:
    ScrCmd_0CD 0
    ScrCmd_02C 54
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06A2:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 58
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
