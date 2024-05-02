    .include "macros/scrcmd.inc"

    .data

    .long _0024-.-4
    .long _002A-.-4
    .long _0192-.-4
    .long _01A5-.-4
    .long _01B8-.-4
    .long _01CB-.-4
    .long _01DE-.-4
    .long _01F1-.-4
    .long _01F1-.-4

_0024:
    GoTo _0044

_002A:
    GoTo _0030

_0030:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_035
    ScrCmd_2D8 0
    ScrCmd_061
    End

_0044:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_035
    ScrCmd_2D8 1
    ScrCmd_061
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 104
    .byte 0
    .byte 148
    .byte 2
    .byte 21
    .byte 1
    .byte 44
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 1
    .byte 26
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 254
    .byte 0xFF
    .byte 28
    .byte 0
    .byte 1
    .byte 135
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 64
    .byte 28
    .byte 0
    .byte 1
    .byte 122
    .byte 0
    .byte 0
    .byte 0
    .byte 41
    .byte 0
    .byte 3
    .byte 64
    .byte 12
    .byte 128
    .byte 155
    .byte 2
    .byte 0
    .byte 64
    .byte 3
    .byte 64
    .byte 0
    .byte 128
    .byte 1
    .byte 128
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 0
    .byte 0
    .byte 29
    .byte 0
    .byte 1
    .byte 106
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 1
    .byte 0
    .byte 29
    .byte 0
    .byte 1
    .byte 103
    .byte 0
    .byte 0
    .byte 0
    .byte 62
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 162
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 154
    .byte 2
    .byte 1
    .byte 128
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 82
    .byte 0
    .byte 0
    .byte 0
    .byte 125
    .byte 0
    .byte 0
    .byte 128
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 70
    .byte 0
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 3
    .byte 123
    .byte 0
    .byte 0
    .byte 128
    .byte 1
    .byte 0
    .byte 12
    .byte 128
    .byte 153
    .byte 2
    .byte 1
    .byte 128
    .byte 150
    .byte 2
    .byte 22
    .byte 0
    .byte 99
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 44
    .byte 0
    .byte 6
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 149
    .byte 2
    .byte 97
    .byte 0
    .byte 2
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 2
    .byte 27
    .byte 0
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 211
    .byte 0
    .byte 1
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 7
    .byte 27
    .byte 0
    .byte 44
    .byte 0
    .byte 4
    .byte 22
    .byte 0
    .byte 52
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 44
    .byte 0
    .byte 5
    .byte 22
    .byte 0
    .byte 38
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 40
    .byte 0
    .byte 8
    .byte 128
    .byte 0
    .byte 0
    .byte 40
    .byte 0
    .byte 9
    .byte 128
    .byte 0
    .byte 0
    .byte 68
    .byte 0
    .byte 1
    .byte 1
    .byte 0
    .byte 1
    .byte 12
    .byte 128
    .byte 155
    .byte 2
    .byte 0
    .byte 64
    .byte 8
    .byte 128
    .byte 0
    .byte 128
    .byte 1
    .byte 128
    .byte 209
    .byte 0
    .byte 0
    .byte 0
    .byte 128
    .byte 128
    .byte 2
    .byte 1
    .byte 1
    .byte 128
    .byte 1
    .byte 3
    .byte 70
    .byte 0
    .byte 231
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 8
    .byte 128
    .byte 38
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 0
    .byte 18
    .byte 0
    .byte 8
    .byte 128
    .byte 1
    .byte 64
    .byte 28
    .byte 0
    .byte 0
    .byte 207
    .byte 0xFF
    .byte 0xFF
    .byte 0xFF
    .byte 70
    .byte 0
    .byte 232
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 8
    .byte 128
    .byte 71
    .byte 0
    .byte 27
    .byte 0

_0192:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01A5:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01B8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01CB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01DE:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_01F1:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 11
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
