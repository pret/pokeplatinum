#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0012
    ScriptEntry _0084
    .short 0xFD13

_000E:
    ScrCmd_2F2
    End

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfEq 0x4055, 5, _0084
    GetPlayer3DPos 0x8004, 0x8005, 0x8006
    GoToIfEq 0x8005, 232, _0059
    ApplyMovement 128, _00DC
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00E4
    WaitMovement
    GoTo _007A

_0059:
    ApplyMovement 128, _00F0
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 128, _00F8
    ApplyMovement 0xFF, _011C
    WaitMovement
_007A:
    SetVar 0x4055, 5
    ReleaseAll
    End

_0084:
    GetPlayer3DPos 0x8004, 0x8005, 0x8006
    GoToIfEq 0x8005, 231, _00B6
    GoToIfEq 0x8005, 232, _00C6
    ApplyMovement 128, _0104
    WaitMovement
    GoTo _00D0

_00B6:
    ApplyMovement 128, _010C
    WaitMovement
    GoTo _00D0

_00C6:
    ApplyMovement 128, _0114
    WaitMovement
_00D0:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00DC:
    MoveAction_001
    EndMovement

    .balign 4, 0
_00E4:
    MoveAction_06A
    MoveAction_002
    EndMovement

    .balign 4, 0
_00F0:
    MoveAction_003
    EndMovement

    .balign 4, 0
_00F8:
    MoveAction_06A
    MoveAction_002
    EndMovement

    .balign 4, 0
_0104:
    MoveAction_002
    EndMovement

    .balign 4, 0
_010C:
    MoveAction_003
    EndMovement

    .balign 4, 0
_0114:
    MoveAction_001
    EndMovement

    .balign 4, 0
_011C:
    MoveAction_06B
    MoveAction_000
    EndMovement
