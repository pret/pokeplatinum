    .include "macros/scrcmd.inc"

    .data

    .long _000A-.-4
    .long _000A-.-4
    .short 0xFD13

_000A:
    ScrCmd_060
    ScrCmd_05E 0xFF, _016C
    ScrCmd_05F
    ScrCmd_186 0, 6, 14
    ClearFlag 0x23A
    ScrCmd_064 0
    ScrCmd_062 0
    ScrCmd_05E 0, _0138
    ScrCmd_05E 0xFF, _017C
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_186 1, 4, 14
    ClearFlag 0x23B
    ScrCmd_064 1
    ScrCmd_062 1
    ScrCmd_05E 1, _0114
    ScrCmd_05F
    ScrCmd_05E 0xFF, _0190
    ScrCmd_05F
    ScrCmd_0CD 0
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_05E 0, _0144
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_0CD 0
    ScrCmd_02C 3
    ScrCmd_05E 0, _0150
    ScrCmd_05F
    ScrCmd_02C 4
    ScrCmd_14D 0x800C
    CompareVarToValue 0x800C, 0
    GoToIf 1, _00B1
    CompareVarToValue 0x800C, 1
    GoToIf 1, _00BD
    End

_00B1:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    GoTo _00C9

_00BD:
    ScrCmd_0CD 0
    ScrCmd_02C 6
    GoTo _00C9

_00C9:
    ScrCmd_02C 7
    ScrCmd_034
    ScrCmd_05E 0, _0158
    ScrCmd_05E 1, _0120
    ScrCmd_05E 0xFF, _0198
    ScrCmd_05F
    ScrCmd_049 0x603
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_0BE 187, 0, 8, 15, 0
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ScrCmd_061
    End

    .balign 4, 0
_0114:
    MoveAction_00C 8
    MoveAction_023
    EndMovement

    .balign 4, 0
_0120:
    MoveAction_03F 3
    MoveAction_00C 2
    MoveAction_00F
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_00C 8
    MoveAction_022
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_022
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0150:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0158:
    MoveAction_00C 2
    MoveAction_00E
    MoveAction_00C 2
    MoveAction_045
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_00C 17
    MoveAction_03F
    MoveAction_021
    EndMovement

    .balign 4, 0
_017C:
    MoveAction_03F 6
    MoveAction_023
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0190:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0198:
    MoveAction_03F
    MoveAction_020
    MoveAction_03F 6
    MoveAction_00C 4
    EndMovement
