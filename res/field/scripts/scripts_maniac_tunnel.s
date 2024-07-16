#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0010
    ScriptEntry _000A
    .short 0xFD13

_000A:
    SetFlag 0x9D8
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
