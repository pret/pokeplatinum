    .include "macros/scrcmd.inc"

    .data

    .long _0012-.-4
    .long _0023-.-4
    .long _003A-.-4
    .long _004D-.-4
    .short 0xFD13

_0012:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0023:
    ScrCmd_036 4, 1, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    ScrCmd_014 0x7D0
    End

_003A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_004D:
    ScrCmd_060
    ScrCmd_01F 0x297
    ScrCmd_064 15
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x12E
    ScrCmd_01D 1, _00CA
    ScrCmd_011 0x8004, 0x12F
    ScrCmd_01D 1, _00D6
    ScrCmd_0CD 0
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0xFF, _010C
    ScrCmd_05F
    ScrCmd_05E 15, _014C
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_069 0x8004, 0x8005
    ScrCmd_011 0x8004, 0x12E
    ScrCmd_01D 1, _00E2
    ScrCmd_011 0x8004, 0x12F
    ScrCmd_01D 1, _00F6
    ScrCmd_065 15
    ScrCmd_028 0x40A8, 1
    ScrCmd_01E 0x298
    ScrCmd_061
    End

_00CA:
    ScrCmd_05E 15, _0124
    ScrCmd_05F
    ScrCmd_01B

_00D6:
    ScrCmd_05E 15, _0138
    ScrCmd_05F
    ScrCmd_01B

_00E2:
    ScrCmd_05E 0xFF, _0114
    ScrCmd_05E 15, _0154
    ScrCmd_05F
    ScrCmd_01B

_00F6:
    ScrCmd_05E 0xFF, _0114
    ScrCmd_05E 15, _0168
    ScrCmd_05F
    ScrCmd_01B

    .balign 4, 0
_010C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0114:
    MoveAction_03F 2
    MoveAction_03E
    MoveAction_020
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_00C 4
    MoveAction_00E 3
    MoveAction_00C
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_00C 4
    MoveAction_00E 2
    MoveAction_00C
    MoveAction_04B
    EndMovement

    .balign 4, 0
_014C:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_00F
    MoveAction_00C 3
    MoveAction_00F 2
    MoveAction_00C 9
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_00E
    MoveAction_00C 3
    MoveAction_00F 3
    MoveAction_00C 9
    EndMovement
