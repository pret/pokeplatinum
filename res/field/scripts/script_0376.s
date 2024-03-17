    .include "macros/scrcmd.inc"

    .data

    .long _0059-.-4
    .long _05B0-.-4
    .long _05E9-.-4
    .long _05FA-.-4
    .long _066E-.-4
    .long _0075-.-4
    .long _0698-.-4
    .long _06AB-.-4
    .long _06BE-.-4
    .long _06D1-.-4
    .long _06E4-.-4
    .long _06F7-.-4
    .long _070A-.-4
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
    ScrCmd_01D 1, _0570
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0575
    ScrCmd_016 _00B7
    ScrCmd_002

_00B7:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _057A
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _0592
    ScrCmd_042 19, 2
    ScrCmd_042 20, 3
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0152
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0160
    ScrCmd_011 0x800C, 2
    ScrCmd_01C 1, _0117
    ScrCmd_011 0x800C, 4
    ScrCmd_01C 1, _016E
    ScrCmd_016 _0139
    ScrCmd_002

_0117:
    ScrCmd_011 0x4004, 0
    ScrCmd_01D 1, _05A6
    ScrCmd_011 0x4004, 1
    ScrCmd_01D 1, _05AB
    ScrCmd_016 _00B7
    ScrCmd_002

_0139:
    ScrCmd_016 _0141
    ScrCmd_002

_0141:
    ScrCmd_028 0x40B7, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0152:
    ScrCmd_028 0x40B8, 0
    ScrCmd_016 _017C
    ScrCmd_002

_0160:
    ScrCmd_028 0x40B8, 1
    ScrCmd_016 _017C
    ScrCmd_002

_016E:
    ScrCmd_028 0x40B8, 2
    ScrCmd_016 _017C
    ScrCmd_002

_017C:
    ScrCmd_02C 7
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 21, 0
    ScrCmd_042 22, 1
    ScrCmd_042 23, 2
    ScrCmd_043
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01BA
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _01C8
    ScrCmd_016 _0139
    ScrCmd_002

_01BA:
    ScrCmd_028 0x40B9, 0
    ScrCmd_016 _01D6
    ScrCmd_002

_01C8:
    ScrCmd_028 0x40B9, 1
    ScrCmd_016 _01D6
    ScrCmd_002

_01D6:
    ScrCmd_016 _01DE
    ScrCmd_002

_01DE:
    ScrCmd_011 0x40B8, 0
    ScrCmd_01D 1, _0386
    ScrCmd_011 0x40B8, 1
    ScrCmd_01D 1, _0386
    ScrCmd_028 0x4000, 0
    ScrCmd_14E
    ScrCmd_014 0x7D6
    ScrCmd_029 0x800C, 0x4000
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0139
    ScrCmd_011 0x40B8, 2
    ScrCmd_01C 1, _022C
    ScrCmd_016 _038E
    ScrCmd_002

_022C:
    ScrCmd_02C 24
    ScrCmd_040 30, 1, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 13, 0
    ScrCmd_042 14, 1
    ScrCmd_042 5, 2
    ScrCmd_043
    ScrCmd_029 0x8008, 0x800C
    ScrCmd_011 0x8008, 0
    ScrCmd_01C 1, _0270
    ScrCmd_011 0x8008, 1
    ScrCmd_01C 1, _02EC
    ScrCmd_016 _0139
    ScrCmd_002

_0270:
    ScrCmd_02C 25
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _022C
    ScrCmd_034
    ScrCmd_011 0x40B9, 0
    ScrCmd_01D 1, _02C2
    ScrCmd_011 0x40B9, 1
    ScrCmd_01D 1, _02CE
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _02DA
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _02E2
    ScrCmd_016 _0368
    ScrCmd_002

_02C2:
    ScrCmd_0F2 27, 0, 0, 0x800C
    ScrCmd_01B

_02CE:
    ScrCmd_0F2 28, 0, 0, 0x800C
    ScrCmd_01B

_02DA:
    ScrCmd_016 _022C
    ScrCmd_002

_02E2:
    ScrCmd_150
    ScrCmd_016 _022C
    ScrCmd_002

_02EC:
    ScrCmd_02C 25
    ScrCmd_03E 0x800C
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _022C
    ScrCmd_034
    ScrCmd_011 0x40B9, 0
    ScrCmd_01D 1, _033E
    ScrCmd_011 0x40B9, 1
    ScrCmd_01D 1, _034A
    ScrCmd_011 0x800C, 1
    ScrCmd_01C 1, _0356
    ScrCmd_011 0x800C, 3
    ScrCmd_01C 1, _035E
    ScrCmd_016 _0368
    ScrCmd_002

_033E:
    ScrCmd_0F3 27, 0, 0, 0x800C
    ScrCmd_01B

_034A:
    ScrCmd_0F3 28, 0, 0, 0x800C
    ScrCmd_01B

_0356:
    ScrCmd_016 _022C
    ScrCmd_002

_035E:
    ScrCmd_150
    ScrCmd_016 _022C
    ScrCmd_002

_0368:
    ScrCmd_02C 26
    ScrCmd_011 0x40B8, 2
    ScrCmd_01D 1, _0386
    ScrCmd_01A _05D7
    ScrCmd_016 _038E
    ScrCmd_002

_0386:
    ScrCmd_028 0x40B7, 0xFF
    ScrCmd_01B

_038E:
    ScrCmd_011 0x40B8, 0
    ScrCmd_01D 1, _042E
    ScrCmd_011 0x40B8, 1
    ScrCmd_01D 1, _0449
    ScrCmd_011 0x40B8, 2
    ScrCmd_01D 1, _0464
    ScrCmd_049 0x603
    ScrCmd_016 _03C1
    ScrCmd_002

_03C1:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_011 0x40B8, 0
    ScrCmd_01D 1, _048A
    ScrCmd_011 0x40B8, 1
    ScrCmd_01D 1, _049E
    ScrCmd_011 0x40B8, 2
    ScrCmd_01D 1, _04B2
    ScrCmd_1E5 58
    ScrCmd_1CD 37, 0, 0, 0, 0
    ScrCmd_1F8
    ScrCmd_2C4 3
    ScrCmd_011 0x40B8, 2
    ScrCmd_01D 1, _042A
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_313 1
    ScrCmd_002

_042A:
    ScrCmd_150
    ScrCmd_01B

_042E:
    ScrCmd_02C 9
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _04C8
    ScrCmd_05E 0x800D, _04F0
    ScrCmd_05F
    ScrCmd_01B

_0449:
    ScrCmd_02C 9
    ScrCmd_030
    ScrCmd_034
    ScrCmd_05E 0xFF, _04C8
    ScrCmd_05E 0x800D, _04F0
    ScrCmd_05F
    ScrCmd_01B

_0464:
    ScrCmd_02E 9
    ScrCmd_003 15, 0x800C
    ScrCmd_136
    ScrCmd_135 169
    ScrCmd_034
    ScrCmd_05E 0xFF, _04DC
    ScrCmd_05E 0x800D, _0504
    ScrCmd_05F
    ScrCmd_01B

_048A:
    ScrCmd_05E 0xFF, _0518
    ScrCmd_05E 0x800D, _0548
    ScrCmd_05F
    ScrCmd_01B

_049E:
    ScrCmd_05E 0xFF, _0518
    ScrCmd_05E 0x800D, _0548
    ScrCmd_05F
    ScrCmd_01B

_04B2:
    ScrCmd_05E 0xFF, _0530
    ScrCmd_05E 0x800D, _055C
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_04C8:
    MoveAction_00C 3
    MoveAction_00F
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_04DC:
    MoveAction_00C 3
    MoveAction_00E
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_04F0:
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0504:
    MoveAction_00C 2
    MoveAction_00E
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_0518:
    MoveAction_015 3
    MoveAction_016
    MoveAction_015 4
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0530:
    MoveAction_015 3
    MoveAction_017
    MoveAction_015 4
    MoveAction_000
    MoveAction_046
    EndMovement

    .balign 4, 0
_0548:
    MoveAction_015 2
    MoveAction_016
    MoveAction_015 4
    MoveAction_046
    EndMovement

    .balign 4, 0
_055C:
    MoveAction_015 2
    MoveAction_017
    MoveAction_015 4
    MoveAction_046
    EndMovement

_0570:
    ScrCmd_02C 0
    ScrCmd_01B

_0575:
    ScrCmd_02C 3
    ScrCmd_01B

_057A:
    ScrCmd_041 31, 9, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 16, 0
    ScrCmd_042 17, 1
    ScrCmd_02C 1
    ScrCmd_01B

_0592:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 18, 4
    ScrCmd_02C 4
    ScrCmd_01B

_05A6:
    ScrCmd_02C 2
    ScrCmd_01B

_05AB:
    ScrCmd_02C 5
    ScrCmd_01B

_05B0:
    ScrCmd_313 0
    ScrCmd_028 0x4003, 1
    ScrCmd_028 0x40B7, 0
    ScrCmd_02C 11
    ScrCmd_01A _0386
    ScrCmd_01A _05D7
    ScrCmd_016 _038E
    ScrCmd_002

_05D7:
    ScrCmd_18D
    ScrCmd_12D 0x800C
    ScrCmd_18E
    ScrCmd_049 0x61B
    ScrCmd_04B 0x61B
    ScrCmd_01B

_05E9:
    ScrCmd_02C 12
    ScrCmd_2C5 0x40B8, 0x40B9
    ScrCmd_016 _0139
    ScrCmd_002

_05FA:
    ScrCmd_011 0x40B8, 0
    ScrCmd_01D 1, _0636
    ScrCmd_011 0x40B8, 1
    ScrCmd_01D 1, _0636
    ScrCmd_011 0x4050, 1
    ScrCmd_01D 1, _063C
    ScrCmd_011 0x4050, 3
    ScrCmd_01D 1, _0653
    ScrCmd_016 _0139
    ScrCmd_002

_0636:
    ScrCmd_30A 38
    ScrCmd_01B

_063C:
    ScrCmd_02C 13
    ScrCmd_0CD 0
    ScrCmd_02C 15
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4050, 2
    ScrCmd_01B

_0653:
    ScrCmd_02C 13
    ScrCmd_0CD 0
    ScrCmd_02C 14
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_028 0x4050, 4
    ScrCmd_014 0x806
    ScrCmd_01B

_066E:
    ScrCmd_016 _0139

    .byte 2
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

_0698:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 27
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06AB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06BE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06D1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06E4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_06F7:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_070A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
    .byte 0
