    .include "macros/scrcmd.inc"

    .data

    .long _001E-.-4
    .long _004E-.-4
    .long _01B0-.-4
    .long _01C3-.-4
    .long _01EC-.-4
    .long _0203-.-4
    .long _021A-.-4
    .short 0xFD13

_001E:
    ScrCmd_14D 0x4000
    ScrCmd_011 0x4000, 0
    ScrCmd_01C 1, _003E
    ScrCmd_011 0x4000, 1
    ScrCmd_01C 1, _0046
    End

_003E:
    ScrCmd_028 0x4020, 97
    End

_0046:
    ScrCmd_028 0x4020, 0
    End

_004E:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_186 18, 0x14B, 0x8005
    ScrCmd_01A _008E
    ScrCmd_05E 18, _0194
    ScrCmd_05F
    ScrCmd_014 0x7F8
    ScrCmd_05E 18, _01A0
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0174
    ScrCmd_05F
    ScrCmd_016 _009C
    End

_008E:
    ScrCmd_01F 0x1CC
    ScrCmd_064 18
    ScrCmd_062 18
    ScrCmd_01B

_009C:
    ScrCmd_14D 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00B3
    ScrCmd_016 _00F1

_00B3:
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_044 30, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 137, 0xFF, 0
    ScrCmd_046 138, 0xFF, 1
    ScrCmd_047
    ScrCmd_02C 1
    ScrCmd_01A _012F
    ScrCmd_02C 2
    ScrCmd_01A _0145
    ScrCmd_02C 3
    ScrCmd_016 _0156

_00F1:
    ScrCmd_0CD 0
    ScrCmd_02C 4
    ScrCmd_044 30, 13, 0, 0, 0x800C
    ScrCmd_33A 1
    ScrCmd_046 137, 0xFF, 0
    ScrCmd_046 138, 0xFF, 1
    ScrCmd_047
    ScrCmd_02C 5
    ScrCmd_01A _012F
    ScrCmd_02C 6
    ScrCmd_01A _0145
    ScrCmd_02C 7
    ScrCmd_016 _0156

_012F:
    ScrCmd_01E 0x97F
    ScrCmd_028 0x8004, 0x1BB
    ScrCmd_028 0x8005, 1
    ScrCmd_014 0x7FC
    ScrCmd_01B

_0145:
    ScrCmd_028 0x8004, 6
    ScrCmd_014 0x7D9
    ScrCmd_0D7 1, 6
    ScrCmd_01B

_0156:
    ScrCmd_034
    ScrCmd_05E 18, _01A8
    ScrCmd_05F
    ScrCmd_065 18
    ScrCmd_014 0x7F9
    ScrCmd_028 0x408C, 1
    ScrCmd_061
    End

    .balign 4, 0
_0174:
    MoveAction_022
    EndMovement

    .byte 63
    .byte 0
    .byte 8
    .byte 0
    .byte 34
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
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0194:
    MoveAction_00F 3
    MoveAction_04B
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_00F 5
    EndMovement

    .balign 4, 0
_01A8:
    MoveAction_00E 8
    EndMovement

_01B0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01C3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 130
    ScrCmd_01C 1, _01E1
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01E1:
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01EC:
    ScrCmd_036 11, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_0203:
    ScrCmd_036 12, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_021A:
    ScrCmd_037 3, 0
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03A 13, 0x800C
    ScrCmd_014 0x7D0
    End

    .byte 0
