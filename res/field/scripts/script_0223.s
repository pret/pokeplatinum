    .include "macros/scrcmd.inc"

    .data

    .long _0006-.-4
    .short 0xFD13

_0006:
    ScrCmd_060
    ApplyMovement 0xFF, _008C
    ApplyMovement 6, _0064
    WaitMovement
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 6, _0070
    ApplyMovement 0xFF, _009C
    WaitMovement
    ScrCmd_02C 1
    ApplyMovement 6, _0078
    WaitMovement
    ScrCmd_02C 2
    ScrCmd_034
    ApplyMovement 0xFF, _00B0
    ApplyMovement 6, _0080
    WaitMovement
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
