    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0036-.-4
    .long _01A0-.-4
    .long _0023-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0023:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 7
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_0036:
    ScrCmd_060
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_028 0x40A9, 2
    ScrCmd_186 5, 20, 25
    ScrCmd_188 5, 16
    ScrCmd_189 5, 2
    ScrCmd_01F 0x29F
    ScrCmd_064 5
    ScrCmd_05E 5, _0148
    ScrCmd_05F
    ScrCmd_014 0x807
    ScrCmd_011 0x8005, 24
    ScrCmd_01D 1, _0109
    ScrCmd_011 0x8005, 25
    ScrCmd_01D 1, _011D
    ScrCmd_011 0x8005, 26
    ScrCmd_01D 1, _0131
    ScrCmd_02C 0
    ScrCmd_05E 5, _0184
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_05E 5, _018C
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_028 0x8004, 68
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _00F2
    ScrCmd_014 0x7FC
    ScrCmd_01A _00E5
    ScrCmd_014 0x808
    ScrCmd_061
    ScrCmd_002

_00E5:
    ScrCmd_01E 0x160
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

_00F2:
    ScrCmd_01A _0100
    ScrCmd_014 0x808
    ScrCmd_061
    ScrCmd_002

_0100:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_01B

_0109:
    ScrCmd_05E 5, _015C
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    ScrCmd_01B

_011D:
    ScrCmd_05E 5, _016C
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    ScrCmd_01B

_0131:
    ScrCmd_05E 5, _0174
    ScrCmd_05E 0xFF, _0194
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_0148:
    MoveAction_012 4
    MoveAction_03F
    MoveAction_04B
    MoveAction_03F
    EndMovement

    .balign 4, 0
_015C:
    MoveAction_012 4
    MoveAction_010
    MoveAction_026
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_012 4
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_012 4
    MoveAction_011
    MoveAction_026
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_021
    EndMovement

    .balign 4, 0
_018C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_03F 4
    MoveAction_023
    EndMovement

_01A0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_020 0x160
    ScrCmd_01C 0, _01BE
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    ScrCmd_002

_01BE:
    ScrCmd_02C 5
    ScrCmd_028 0x8004, 68
    ScrCmd_028 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    ScrCmd_011 0x800C, 0
    ScrCmd_01C 1, _01F0
    ScrCmd_014 0x7FC
    ScrCmd_01A _00E5
    ScrCmd_061
    ScrCmd_002

_01F0:
    ScrCmd_01A _0100
    ScrCmd_061
    ScrCmd_002

    .byte 0
    .byte 0
