    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _002F-.-4
    .long _0042-.-4
    .long _0055-.-4
    .short 0xFD13

_0012:
    ScrCmd_01E 0x9C2
    ScrCmd_01E 0x2C8
    ScrCmd_011 0x4056, 1
    ScrCmd_01D 1, _0029
    End

_0029:
    ScrCmd_01F 0x2C8
    ScrCmd_01B

_002F:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 1
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0055:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 165
    ScrCmd_01C 1, _012B
    ScrCmd_02C 2
    ScrCmd_016 _0073
    End

_0073:
    ScrCmd_028 0x8004, 0x12A
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _0114
    ScrCmd_014 0x7FC
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8005, 3
    ScrCmd_01C 1, _00CC
    ScrCmd_011 0x8005, 4
    ScrCmd_01C 1, _00DE
    ScrCmd_011 0x8005, 5
    ScrCmd_01C 1, _00F0
    End

_00CC:
    ScrCmd_05E 3, _0138
    ScrCmd_05F
    ScrCmd_016 _0102
    End

_00DE:
    ScrCmd_05E 3, _0144
    ScrCmd_05F
    ScrCmd_016 _0102
    End

_00F0:
    ScrCmd_05E 3, _0144
    ScrCmd_05F
    ScrCmd_016 _0102
    End

_0102:
    ScrCmd_049 0x603
    ScrCmd_065 3
    ScrCmd_028 0x4056, 2
    ScrCmd_061
    End

_0114:
    ScrCmd_01E 165
    ScrCmd_02C 3
    ScrCmd_016 _0123
    End

_0123:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_012B:
    ScrCmd_02C 4
    ScrCmd_016 _0073

    .byte 2
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0138:
    MoveAction_00E
    MoveAction_00C 3
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_00C 3
    EndMovement
