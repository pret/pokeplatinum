#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0021
    ScriptEntry _00C0
    ScriptEntry _000E
    .short 0xFD13

_000E:
    CallIfSet 0x121, _001B
    End

_001B:
    ClearFlag 0x278
    Return

_0021:
    LockAll
    ScrCmd_328 0
    ScrCmd_2B5 0x10A, 0x2FA, 0x2CA
    Message 0
    CloseMessage
    ApplyMovement 0, _00A0
    WaitMovement
    ApplyMovement 0xFF, _0098
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 0, _00B8
    WaitMovement
    BufferPlayerName 0
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar 0x40AA, 2
    SetVar 0x40A6, 2
    SetFlag 0x1C7
    ClearFlag 0x132
    SetFlag 0x28F
    SetFlag 0x295
    SetFlag 0x29F
    SetFlag 0x986
    ClearFlag 0x292
    SetFlag 0x15E
    SetFlag 0x295
    ReleaseAll
    End

    .balign 4, 0
_0098:
    MoveAction_022
    EndMovement

    .balign 4, 0
_00A0:
    MoveAction_026
    MoveAction_03F
    MoveAction_027
    MoveAction_03F 2
    MoveAction_024
    EndMovement

    .balign 4, 0
_00B8:
    MoveAction_023
    EndMovement

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40AA, 3, _00E0
    Message 3
    GoTo _00EB
    End

_00E0:
    Message 4
    GoTo _00EB
    End

_00EB:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
