#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _0027
    .short 0xFD13

_000E:
    SetFlag 0x9E8
    End

_0014:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
