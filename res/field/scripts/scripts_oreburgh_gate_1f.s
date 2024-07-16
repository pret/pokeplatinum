#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _007B
    .short 0xFD13

_000E:
    SetFlag 0x9CF
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 0, _003A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003A:
    GoToIfSet 147, _0064
    Message 0
    SetVar 0x8004, 0x1A9
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Call _006F
    GoTo _0064

_0064:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    SetFlag 147
    SetVar 0x4093, 2
    Return

_007B:
    LockAll
    ApplyMovement 10, _00C0
    ApplyMovement 0xFF, _00B4
    WaitMovement
    Message 0
    SetVar 0x8004, 0x1A9
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    Call _006F
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00B4:
    MoveAction_03F
    MoveAction_020
    EndMovement

    .balign 4, 0
_00C0:
    MoveAction_021
    MoveAction_04B
    MoveAction_00D
    EndMovement
