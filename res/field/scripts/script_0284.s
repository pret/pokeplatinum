    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _0014-.-4
    .short 0xFD13

_000A:
    SetFlag 0x9D2
    SetFlag 0x28E
    End

_0014:
    ScrCmd_060
    ScrCmd_05E 0, _0158
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 0, _0160
    ScrCmd_05F
    ScrCmd_0E5 0x39E, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _0168
    ScrCmd_05F
    ScrCmd_05E 4, _01BC
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 4, _01CC
    ScrCmd_05F
    ScrCmd_0E5 0x39F, 0
    ScrCmd_0EC 0x800C
    CompareVarToValue 0x800C, 0
    ScrCmd_01C 1, _0150
    ScrCmd_02C 3
    ScrCmd_034
    ScrCmd_003 15, 0x800C
    ScrCmd_05E 0, _0174
    ScrCmd_05E 4, _01F4
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_05E 4, _01D4
    ScrCmd_05F
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_05E 0, _017C
    ScrCmd_05F
    ScrCmd_02C 6
    ScrCmd_034
    ScrCmd_05E 0, _0190
    ScrCmd_05E 0xFF, _01A4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_05E 4, _01DC
    ScrCmd_05F
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 4, _01E4
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_04B 0x603
    ScrCmd_05E 14, _0200
    ScrCmd_05E 0xFF, _01B4
    ScrCmd_05F
    ScrCmd_02C 8
    ScrCmd_02C 9
    ScrCmd_034
    ScrCmd_05E 14, _0208
    ScrCmd_05E 15, _0210
    ScrCmd_05E 16, _021C
    ScrCmd_05F
    ScrCmd_065 14
    ScrCmd_065 0
    ScrCmd_065 4
    ScrCmd_065 15
    ScrCmd_065 16
    ScrCmd_028 0x40AD, 1
    ScrCmd_061
    End

_0150:
    ScrCmd_0EB
    ScrCmd_061
    End

    .balign 4, 0
_0158:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_00C
    MoveAction_021
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_04B
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_020
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F 2
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_00D 2
    MoveAction_03F
    MoveAction_00D
    MoveAction_045
    EndMovement

    .balign 4, 0
_01A4:
    MoveAction_03F 2
    MoveAction_00E
    MoveAction_023
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01BC:
    MoveAction_022
    MoveAction_03F 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_01D4:
    MoveAction_020
    EndMovement

    .balign 4, 0
_01DC:
    MoveAction_023
    EndMovement

    .balign 4, 0
_01E4:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0208:
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_00F
    MoveAction_00C 7
    EndMovement

    .balign 4, 0
_021C:
    MoveAction_03F
    MoveAction_00E
    MoveAction_00C 7
    EndMovement
