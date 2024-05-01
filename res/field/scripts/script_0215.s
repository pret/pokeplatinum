    .include "macros/scrcmd.inc"

    .data

    .long _0016-.-4
    .long _00FC-.-4
    .long _011B-.-4
    .long _013A-.-4
    .long _0159-.-4
    .short 0xFD13

_0016:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    GoTo _0034

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 156
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0

_0034:
    ScrCmd_05E 0, _00D8
    ScrCmd_05F
    GoTo _0044

_0044:
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_29E 2, 0x8005
    ScrCmd_003 10, 0x800C
    ScrCmd_065 1
_0059:
    ScrCmd_003 1, 0x800C
    ScrCmd_011 0x8005, 0
    ScrCmd_01C 1, _0059
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_034
    GoTo _0091

    .byte 94
    .byte 0
    .byte 0
    .byte 0
    .byte 51
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 95
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 22
    .byte 0
    .byte 16
    .byte 0
    .byte 0
    .byte 0

_0091:
    ScrCmd_05E 0, _00C0
    ScrCmd_05F
    GoTo _00A1

_00A1:
    ScrCmd_065 0
    SetFlag 122
    SetFlag 0x17C
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00C0:
    MoveAction_00F 10
    EndMovement

    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 4
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00D8:
    MoveAction_03F 2
    MoveAction_023
    MoveAction_03F 4
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 32
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

_00FC:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 2
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_011B:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 3
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_013A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 66, 0
    ScrCmd_02C 4
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0159:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 5
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End
