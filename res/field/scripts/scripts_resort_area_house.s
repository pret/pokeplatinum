#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0034
    ScriptEntry _0047
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _002C
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_002C:
    MoveAction_020
    EndMovement

_0034:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0047:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_14D 0x800C
    GoToIfEq 0x800C, 0, _006F
    GoToIfEq 0x800C, 1, _007A
    End

_006F:
    Message 3
    GoTo _0085
    End

_007A:
    Message 4
    GoTo _0085
    End

_0085:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
