    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ScrCmd_05E 0xFF, _008C
    ScrCmd_05E 6, _0064
    ScrCmd_05F
    ScrCmd_02C 0
    ScrCmd_034
    ScrCmd_05E 6, _0070
    ScrCmd_05E 0xFF, _009C
    ScrCmd_05F
    ScrCmd_02C 1
    ScrCmd_05E 6, _0078
    ScrCmd_05F
    ScrCmd_02C 2
    ScrCmd_034
    ScrCmd_05E 0xFF, _00B0
    ScrCmd_05E 6, _0080
    ScrCmd_05F
    ScrCmd_065 6
    SetVar 0x4096, 1
    ScrCmd_061
    End

    .balign 4, 0
_0064:
    MoveAction_00D 6
    MoveAction_022
    EndMovement

    .balign 4, 0
_0070:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0078:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_03F 3
    MoveAction_00E 10
    EndMovement

    .balign 4, 0
_008C:
    MoveAction_020
    MoveAction_03F 4
    MoveAction_023
    EndMovement

    .balign 4, 0
_009C:
    MoveAction_03F 3
    MoveAction_020
    MoveAction_03F
    MoveAction_023
    EndMovement

    .balign 4, 0
_00B0:
    MoveAction_00D
    MoveAction_020
    MoveAction_03F 2
    MoveAction_022
    EndMovement
