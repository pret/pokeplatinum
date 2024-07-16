#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    LockAll
    ApplyMovement 0xFF, _008C
    ApplyMovement 6, _0064
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 6, _0070
    ApplyMovement 0xFF, _009C
    WaitMovement
    Message 1
    ApplyMovement 6, _0078
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement 0xFF, _00B0
    ApplyMovement 6, _0080
    WaitMovement
    ScrCmd_065 6
    SetVar 0x4096, 1
    ReleaseAll
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
