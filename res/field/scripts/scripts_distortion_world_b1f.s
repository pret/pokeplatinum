#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0012
    ScriptEntry _004B
    .short 0xFD13

_000E:
    ScrCmd_2F2
    End

_0012:
    LockAll
    ApplyMovement 0xFF, _0078
    ApplyMovement 128, _00A8
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00B4
    ApplyMovement 0xFF, _0080
    WaitMovement
    ScrCmd_312 128
    SetVar 0x4055, 3
    ReleaseAll
    End

_004B:
    LockAll
    ScrCmd_04C 0x1E1, 0
    Message 1
    CloseMessage
    ScrCmd_04D
    ScrCmd_311 129
    ApplyMovement 0xFF, _0090
    ApplyMovement 129, _00D8
    WaitMovement
    ScrCmd_312 129
    ReleaseAll
    End

    .balign 4, 0
_0078:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_041
    MoveAction_03F
    MoveAction_022
    EndMovement

    .balign 4, 0
_0090:
    MoveAction_002
    MoveAction_03C 8
    MoveAction_042
    MoveAction_041
    MoveAction_020
    EndMovement

    .balign 4, 0
_00A8:
    MoveAction_041 3
    MoveAction_021
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_00E
    MoveAction_00D 2
    MoveAction_022
    MoveAction_041
    MoveAction_077 2
    MoveAction_076
    MoveAction_077
    MoveAction_041
    EndMovement

    .balign 4, 0
_00D8:
    MoveAction_041 3
    MoveAction_008
    MoveAction_00C
    MoveAction_010
    MoveAction_014 8
    EndMovement
