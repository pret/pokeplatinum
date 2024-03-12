    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _004E-.-4
    .long _006F-.-4
    .long _0418-.-4
    .long _044B-.-4
    .long _048A-.-4
    .long _048C-.-4
    .short 0xFD13

_001E:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _003E
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0046
    ScrCmd_002

_003E:
    ScrCmd_028 0x4020, 97
    ScrCmd_002

_0046:
    ScrCmd_028 0x4020, 0
    ScrCmd_002

_004E:
    ScrCmd_020 142
    ScrCmd_01C 1, _005B
    ScrCmd_002

_005B:
    ScrCmd_01E 0x18F
    ScrCmd_065 3
    ScrCmd_065 2
    ScrCmd_01F 142
    ScrCmd_002
    ScrCmd_002

_006F:
    ScrCmd_060
    ScrCmd_162
    ScrCmd_05E 5, _0298
    ScrCmd_05E 0xFF, _0368
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_066 46, 53
    ScrCmd_05E 241, _01B4
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_003 30, 0x800C
    ScrCmd_05E 4, _01E0
    ScrCmd_05E 241, _01C0
    ScrCmd_05F
    ScrCmd_067
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 5, _02A0
    ScrCmd_05E 0xFF, _0370
    ScrCmd_05F
    ScrCmd_05E 4, _01F0
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_065 4
    ScrCmd_003 50, 0x800C
    ScrCmd_05E 0xFF, _0378
    ScrCmd_05E 5, _02AC
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_05E 5, _02B8
    ScrCmd_05E 0xFF, _0380
    ScrCmd_05F
    ScrCmd_003 30, 0x800C
    ScrCmd_0CD 1
    ScrCmd_02C 4
    ScrCmd_04C 0x1E1, 0
    ScrCmd_02C 5
    ScrCmd_04D
    ScrCmd_034
    ScrCmd_05E 5, _02C0
    ScrCmd_05E 0xFF, _0388
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 5, _02F0
    ScrCmd_05F
    ScrCmd_0CE 0
    ScrCmd_0CD 1
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 5, _02E8
    ScrCmd_05F
    ScrCmd_003 15, 0x800C
    ScrCmd_0CD 1
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 5, _02F8
    ScrCmd_05E 0xFF, _039C
    ScrCmd_05F
    ScrCmd_01E 0x196
    ScrCmd_065 5
    ScrCmd_049 0x603
    ScrCmd_016 _01A1
    ScrCmd_002

_01A1:
    ScrCmd_028 0x4086, 4
    ScrCmd_028 0x4095, 1
    ScrCmd_061
    ScrCmd_002

    .balign 4, 0
_01B4:
    .short 63, 1
    .short 12, 9
    .short 0xFE, 0x00

    .balign 4, 0
_01C0:
    .short 13, 9
    .short 0xFE, 0x00

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
    .byte 63
    .byte 0
    .byte 2
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
_01E0:
    .short 13, 5
    .short 14, 1
    .short 13, 4
    .short 0xFE, 0x00

    .balign 4, 0
_01F0:
    .short 13, 3
    .short 69, 1
    .short 0xFE, 0x00

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
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
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 38
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 34
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
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0298:
    .short 16, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02A0:
    .short 15, 1
    .short 34, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02AC:
    .short 14, 1
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02B8:
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02C0:
    .short 75, 1
    .short 16, 3
    .short 63, 3
    .short 38, 1
    .short 63, 1
    .short 36, 1
    .short 63, 2
    .short 17, 3
    .short 38, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02E8:
    .short 75, 1
    .short 0xFE, 0x00

    .balign 4, 0
_02F0:
    .short 38, 4
    .short 0xFE, 0x00

    .balign 4, 0
_02F8:
    .short 17, 2
    .short 0xFE, 0x00

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 39
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
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 37
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0368:
    .short 12, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0370:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0378:
    .short 33, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0380:
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_0388:
    .short 63, 4
    .short 32, 1
    .short 63, 9
    .short 35, 1
    .short 0xFE, 0x00

    .balign 4, 0
_039C:
    .short 33, 1
    .short 0xFE, 0x00

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
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
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
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
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0418:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 184
    ScrCmd_01C 1, _043D
    ScrCmd_01E 184
    ScrCmd_0CD 0
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_043D:
    ScrCmd_0CD 0
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_044B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _046A
    ScrCmd_016 _0476

_046A:
    ScrCmd_0CD 0
    ScrCmd_02C 10
    ScrCmd_016 _0482

_0476:
    ScrCmd_0CD 0
    ScrCmd_02C 11
    ScrCmd_016 _0482

_0482:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_048A:
    ScrCmd_002

_048C:
    ScrCmd_002

    .byte 0
    .byte 0
