#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x4095, 1, _002F
    GoTo _0021

_0021:
    BufferRivalName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002F:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
