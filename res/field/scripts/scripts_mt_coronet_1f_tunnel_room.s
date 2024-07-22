#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 16, _0024
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_0024:
    MoveAction_000
    EndMovement
